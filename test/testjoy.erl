%%  Copyright (c) 2001 Dan Gudmundsson
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.

%%%----------------------------------------------------------------------
%%% File    : testjoy.erl
%%% Author  :  <dgud@erix.ericsson.se>
%%% Purpose : Test joystick handling 
%%% Created : 20 Apr 2001 by  <dgud@erix.ericsson.se>
%%%----------------------------------------------------------------------

-module(testjoy).

-author('dgud@erix.ericsson.se').

-include("exdl.hrl").
-include("exdl_events.hrl").
-include("exdl_gl.hrl").
-include("exdl_joystick.hrl").
-include("exdl_keyboard.hrl").
-include("exdl_video.hrl").

-compile(export_all).
%%-export([Function/Arity, ...]).

-define(W, 640).
-define(H, 480).

-define( CUBE
       , { { 10.0,  10.0, -10.0} %1
         , { 10.0, -10.0, -10.0} %2
         , {-10.0, -10.0, -10.0}
         , {-10.0,  10.0, -10.0} %4
         , {-10.0,  10.0,  10.0}
         , { 10.0,  10.0,  10.0} %6
         , { 10.0, -10.0,  10.0}
         , {-10.0, -10.0,  10.0} %8
         }
       ).

go()
 -> go([])
.

go(Flags)
 -> init
    ( Flags
    )
  , Nr
    = exdl_joystick:numJoysticks
      (
      )
  , io:format
    ( "Found ~p joysticks ~n"
    , [ Nr
      ]
    )
  , if 
      Nr > 0
        -> ok
    ; true
        -> exit
           ( no_josticks_found
           )
    end
  , PrintName
    = fun(Index)
        -> io:format
           ( "Joystick ~p: ~s~n"
           , [ Index
             , exdl_joystick:name
               ( Index
               )
             ]
           )
      end
  , for(PrintName, Nr - 1)
  , JoyI
    = case
        lists:keysearch
        ( joystick
        , 1
        , Flags
        )
      of 
        { value
        , { joystick
          , N
          }
        } when N < Nr
      , N >= 0
          -> N
      ; _
          -> 0
      end
  , Joy
    = exdl_joystick:open(JoyI)
%%  ,  exdl_util:debug(19)
  , io:format
    ( "Testing joystick ~p: ~n"
    , [ JoyI
      ]
    )
  , io:format
    ( "Number of axis ~p: ~n"
    , [ exdl_joystick:numAxes(Joy)
      ]
    )
  , io:format
    ( "Number of balls ~p: ~n"
    , [ exdl_joystick:numBalls(Joy)
      ]
    )
  , io:format
    ( "Number of hats ~p: ~n"
    , [ exdl_joystick:numHats(Joy)
      ]
    )
  , io:format
    ( "Number of buttons ~p: ~n"
    , [ exdl_joystick:numButtons(Joy)
      ]
    )
  , init_video
    ( Flags
    )
  , Res
    = ( catch
          test
          ( Joy
          , { 0.0
            , 0.0
            , 0.0
            }
          , [
            ]
          )
      )
  , io:format
    ( "~p ~n"
    , [ Res
      ]
    )
  , exdl_joystick:close
    ( Joy
    )
  , exdl:quit
    (
    )
.

test(Joy, Pos, Buttons)
 -> { _
    , Evs
    }
    = exdl_events:peepEvents
      ( sune
      , 10
      , ?SDL_GETEVENT
      , 16#FFFF
      )
  , { Npos = {NX, NY, NZ}
    , Nbuttons
    }
    = check_joy
      ( Evs
      , Pos
      , Buttons
      )
%%  , io:format("Pressed buttons ~p ~n", [Nbuttons])
  , exdl_gl:loadIdentity
    (
    )
  , exdl_gl:clear
    (     ?GL_COLOR_BUFFER_BIT
      bor ?GL_DEPTH_BUFFER_BIT
    )
  , drawButtons
    ( Nbuttons
    )
  , exdl_gl:loadIdentity
    (
    )
  , exdl_gl:translatef
    ( -5.0
    , -5.0
    , -50.0
    )
  , draw_cube
    (
    )
  , exdl_gl:color3f
    ( 0.0
    , 0.0
    , 1.0
    )
  , exdl_gl:translatef
    ( NX
    , NY
    , NZ
    )

% Draw Cross

  , exdl_gl:'begin'
    ( ?GL_LINES
    )
  , exdl_gl:vertex3f
    ( -1.0
    ,  0.0
    ,  0.0
    )
  , exdl_gl:vertex3f
    ( 1.0
    , 0.0
    , 0.0
    )
  , exdl_gl:vertex3f
    (  0.0
    , -1.0
    ,  0.0
    )
  , exdl_gl:vertex3f
    ( 0.0
    , 1.0
    , 0.0
    )
  , exdl_gl:'end'
    (
    )
  , exdl_gl:swapBuffers
    (
    )

  , case
      { exdl_gl:getError()
      , exdl:getError()
      }
    of
      { 0
      , ""
      }
        -> ok
    ; { GL
      , SDL
      } -> io:format
           ( "Errors Reported ~p ~s~n"
           , [ GL
             , SDL
             ]
           )
    end
  , timer:sleep
    ( 5
    )
  , test
    ( Joy
    , Npos
    , Nbuttons
    )
.

drawButtons([])
 -> ok
; drawButtons([H|R])
 -> Size = 1.0
  , X1   = Size * H
  , X2   = X1 + Size
  , Y1   = 5.0
  , Y2   = Y1 * 2
  , exdl_gl:'begin'
    ( ?GL_QUADS
    )
  , exdl_gl:vertex3f
    ( X1 - 10
    , Y1
    , -20.0
    )
  , exdl_gl:vertex3f
    ( X1 - 10
    , Y2
    , -20.0
    )
  , exdl_gl:vertex3f
    ( X2 - 10
    , Y2
    , -20.0
    )
  , exdl_gl:vertex3f
    ( X2 - 10
    , Y1
    , -20.0
    )
  , exdl_gl:'end'
    (
    )

  , drawButtons
    ( R
    )
.

check_joy([], Pos, B)
 -> { Pos
    , B
    }
; check_joy([Ev | R], Pos = {X, Y, Z}, B)
 -> case
      Ev
    of
      JA
        when is_record(JA, joyaxis)
        -> NewA = 10 / 32767 * JA#joyaxis.value
%%         , io:format("Got ~p ~n", [JA])
         , case
             JA#joyaxis.axis
           of
             0
               -> check_joy
                  ( R
                  , { NewA
                    , Y
                    , Z
                    }
                  , B
                  )
           ; 1
               -> check_joy
                  ( R
                  , { X
                    , -NewA
                    , Z
                    }
                  , B
                  )
           ; 3
               -> check_joy
                  ( R
                  , { X
                    , Y
                    , -NewA
                    }
                  , B
                  )
           ; _ %% Ignore
               -> check_joy
                  ( R
                  , Pos
                  , B
                  )
           end
    ; JB
        when is_record(JB, joybutton)
        -> Butt
           = JB#joybutton.button
%%         , io:format("Button ~w changed ~n", [Butt])
         , case
             JB#joybutton.state
           of
             ?SDL_PRESSED
               -> check_joy
                  ( R
                  , Pos
                  , [ Butt | B
                    ]
                  )
           ; ?SDL_RELEASED
               -> check_joy
                  ( R
                  , Pos
                  , lists:delete
                    ( Butt
                    , B
                    )
                  )
           end
    ;  #quit{}
        -> throw(quit)
    ; no_event
        -> check_joy
           ( R
           , Pos
           , B
           )
    ; Quit
        when is_record(Quit, keyboard)
        -> if
             Quit#keyboard.sym == ?SDLK_ESCAPE
               -> throw
                  ( quit
                  )
           ; Quit#keyboard.sym == ?SDLK_q
               -> throw
                  ( quit
                  )
           ; true
               -> io:format
                  ( "Got event ~p~n"
                  , [ Quit
                    ]
                  )
                , check_joy
                  ( R
                  , Pos
                  , B
                  )
           end
    ; Event
        -> io:format
           ( "Got ~p ~n"
           , [ Event
             ]
           )
         , check_joy
           ( R
           , Pos
           , B
           )
    end
.

draw_cube()
 -> exdl_gl:'begin'
    ( ?GL_LINES
    )

  , exdl_gl:color3f
    ( 1.0
    , 0.0
    , 0.0
    )

  , exdl_gl:vertex3fv(element(1, ?CUBE))
  , exdl_gl:vertex3fv(element(2, ?CUBE))
  , exdl_gl:vertex3fv(element(2, ?CUBE))
  , exdl_gl:vertex3fv(element(3, ?CUBE))
  , exdl_gl:vertex3fv(element(3, ?CUBE))
  , exdl_gl:vertex3fv(element(4, ?CUBE))
    
  , exdl_gl:vertex3fv(element(4, ?CUBE))
  , exdl_gl:vertex3fv(element(5, ?CUBE))
  , exdl_gl:vertex3fv(element(5, ?CUBE))
  , exdl_gl:vertex3fv(element(8, ?CUBE))
  , exdl_gl:vertex3fv(element(8, ?CUBE))
  , exdl_gl:vertex3fv(element(3, ?CUBE))
    
  , exdl_gl:vertex3fv(element(1, ?CUBE))
  , exdl_gl:vertex3fv(element(6, ?CUBE))
  , exdl_gl:vertex3fv(element(6, ?CUBE))
  , exdl_gl:vertex3fv(element(7, ?CUBE))
  , exdl_gl:vertex3fv(element(7, ?CUBE))
  , exdl_gl:vertex3fv(element(2, ?CUBE))
    
  , exdl_gl:vertex3fv(element(6, ?CUBE))
  , exdl_gl:vertex3fv(element(5, ?CUBE))
  , exdl_gl:vertex3fv(element(5, ?CUBE))
  , exdl_gl:vertex3fv(element(8, ?CUBE))
  , exdl_gl:vertex3fv(element(8, ?CUBE))
  , exdl_gl:vertex3fv(element(7, ?CUBE))
    
  , exdl_gl:vertex3fv(element(6, ?CUBE))
  , exdl_gl:vertex3fv(element(1, ?CUBE))
  , exdl_gl:vertex3fv(element(1, ?CUBE))
  , exdl_gl:vertex3fv(element(4, ?CUBE))
  , exdl_gl:vertex3fv(element(4, ?CUBE))
  , exdl_gl:vertex3fv(element(5, ?CUBE))
    
  , exdl_gl:vertex3fv(element(7, ?CUBE))
  , exdl_gl:vertex3fv(element(2, ?CUBE))
  , exdl_gl:vertex3fv(element(3, ?CUBE))
  , exdl_gl:vertex3fv(element(8, ?CUBE))

  , exdl_gl:'end'
    (
    )
.

for(_, N)
  when N < 0
 -> ok
; for(Fun, N)
 -> Fun
    ( N
    )
  , for
    ( Fun
    , N - 1
    )
.

init()
 -> init
    (     ?SDL_INIT_JOYSTICK
      bor ?SDL_INIT_VIDEO
      bor ?SDL_INIT_ERLDRIVER
    )
.

init(Config)
 -> _ = 
      exdl:init
      ( Config
      )
  , ok
.

init_video(Config)
 -> Flags
    = case
        lists:member
        ( fullscreen
        , Config
        )
      of 
        true
          -> ?SDL_OPENGL bor ?SDL_FULLSCREEN
      ; _
          -> ?SDL_OPENGL
      end
  , exdl_video:setVideoMode
    ( ?W
    , ?H
    , 16
    , Flags
    )
  , exdl_gl:viewport
    ( 0
    , 0
    , ?W
    , ?H
    )
  , exdl_gl:matrixMode
    ( ?GL_PROJECTION
    )
  , exdl_gl:loadIdentity
    (
    )
  , exdl_glu:perspective
    ( 40.0
    , ?W / ?H
    , 10.0
    , 80.0
    )
  , exdl_gl:matrixMode
    ( ?GL_MODELVIEW
    )
  , exdl_gl:loadIdentity
    (
    )
  , exdl_gl:enable
    ( ?GL_DEPTH_TEST
    )
  , exdl_gl:depthFunc
    ( ?GL_LESS
    )
  , exdl_gl:clearColor
    ( 0.9
    , 0.9
    , 0.9
    , 0.0
    )
.
