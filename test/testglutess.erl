%%  Copyright (c) 2001 Dan Gudmundsson
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: testglutess.erl,v 1.2 2005/06/29 14:45:39 dgud Exp $
%%

%%%----------------------------------------------------------------------
%%% File    : testgl.erl
%%% Author  : Dan Gudmundsson <dgud@erix.ericsson.se>
%%% Purpose : 
%%% Created : 11 Sep 2000 by Dan Gudmundsson <dgud@erix.ericsson.se>
%%%----------------------------------------------------------------------

-module(testglutess).

-author('dgud@erix.ericsson.se').

-include("exdl.hrl").
-include("exdl_events.hrl").
-include("exdl_gl.hrl").
-include("exdl_glu.hrl").
-include("exdl_keyboard.hrl").
-include("exdl_video.hrl").

-export( [ go/0
         , go/1
         , drawBox/2
         ]
       ).

-define(W, 640).
-define(H, 480).

go()
 -> go
    (     ?SDL_INIT_VIDEO
      bor ?SDL_INIT_ERLDRIVER
      bor ?SDL_INIT_NOPARACHUTE
    )
.

go(Config)
 -> exdl:init
    ( Config
    )
  , exdl_util:debug
    ( 1
    )
  , exdl_video:gl_setAttribute
    ( ?SDL_GL_DOUBLEBUFFER
    , 1
    )
  , _
    = exdl_video:setVideoMode
      ( ?W
      , ?H
      , 16
      , ?SDL_OPENGL
      )
  , exdl_events:eventState
    ( ?SDL_ALLEVENTS
    , ?SDL_IGNORE
    )
  , exdl_events:eventState
    ( ?SDL_KEYDOWN
    , ?SDL_ENABLE
    )
  , exdl_events:eventState
    ( ?SDL_QUIT
    , ?SDL_ENABLE
    )
  , initWin
    (
    )
    
  , Cube
    = [ {  1  ,  1,  -0.5 }
      , {  0.5,  0,  -0.5 }
      , {  1  ,  0,  -0.5 }
      , {  1  , -1,  -0.5 }
      , {  0  ,  0,  -0.5 }
      , { -1  ,  0  , 0   }
      , { -1  ,  1  , 0   }
      , { -0.5,  0.5, 0   }
      , {  0  , -0.5, 0   }
      ]
      
  , { Time
    , N
    }
    = timer:tc
      ( ?MODULE
      , drawBox
      , [ Cube
        , 0
        ]
      )
  , erlang:display
    ( N
    )
  , Secs
    = Time / 1000000
  , exdl:quit
    (
    )
  , erlang:display
    ( round(N/Secs)
    )
  , N
.

initWin()
 -> exdl_gl:viewport
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
  , exdl_gl:ortho
    (  -2.0
      , 2.0
    ,  -2.0
      , 2.0
    , -20.0
    ,  20.0
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
    ( 0.0
    , 0.0
    , 0.0
    , 1.0
    )
.

drawBox(Cube, N)
 -> exdl_gl:clear
    ( ?GL_COLOR_BUFFER_BIT bor ?GL_DEPTH_BUFFER_BIT
    )
  , exdl_gl:color3f
    ( 1
    , 1
    , 1
    )

  , Tess
    = exdl_glu:newTess
      (
      )

  , exdl_glu:tessCallback
    ( Tess
    , ?GLU_TESS_BEGIN
    , ?EXDL_TESSCB_GLBEGIN
    )
  , exdl_glu:tessCallback
    ( Tess
    , ?GLU_TESS_END
    , ?EXDL_TESSCB_GLEND
    )
  , exdl_glu:tessCallback
    ( Tess
    , ?GLU_TESS_VERTEX
    , ?EXDL_TESSCB_GLVERTEX
    )
  , exdl_glu:tessCallback
    ( Tess
    , ?GLU_TESS_VERTEX_DATA
    , ?EXDL_TESSCB_VERTEX_DATA
    )
  , exdl_glu:tessCallback
    ( Tess
    , ?GLU_TESS_ERROR
    , ?EXDL_TESSCB_ERROR_PRINT
    )
  , exdl_glu:tessCallback
    ( Tess
    , ?GLU_TESS_COMBINE
    , ?EXDL_TESSCB_COMBINE
    )

  , exdl_glu:tessBeginPolygon
    ( Tess
    )
  , exdl_glu:tessBeginContour
    ( Tess
    )
  , exdl_glu:tessNormal
    ( Tess
    , 0
    , 0
    , -1
    )
  , lists:foreach
    ( fun(V)
        -> exdl_glu:tessVertex
           ( Tess
           , V
           , [ { color
               , myabs(V)
               }
             ]
           )
      end
    , Cube
    )
  , exdl_glu:tessEndContour
    ( Tess
    )
  , exdl_glu:tessEndPolygon
    ( Tess
    )
    
  , exdl_gl:disable
    ( ?GL_DEPTH_TEST
    )

  , exdl_gl:color3f
    ( 1
    , 0
    , 0
    )
  , exdl_glu:tessProperty
    ( Tess
    , ?GLU_TESS_BOUNDARY_ONLY
    , ?GL_TRUE
    )
  , exdl_glu:tessBeginPolygon
    ( Tess
    )
  , exdl_glu:tessBeginContour
    ( Tess
    )
  , exdl_glu:tessNormal
    ( Tess
    , 0
    , 0
    , -1
    )
  , lists:foreach
    ( fun(V)
        -> exdl_glu:tessVertex
           ( Tess
           , V
           )
      end
    , Cube
    )
  , exdl_glu:tessEndContour
    ( Tess
    )
  , exdl_glu:tessEndPolygon
    ( Tess
    )

  , ?GL_TRUE
    = round
      ( exdl_glu:getTessProperty
        ( Tess
        , ?GLU_TESS_BOUNDARY_ONLY
        )
      )
  , exdl_glu:deleteTess
    ( Tess
    )
    
  , case
      { exdl_gl:getError()
      , exdl:getError()
      }
    of
      { 0, "" }
        -> ok
    ; { GL, SDL }
        -> io:format
           ( "Errors Reported ~p ~s~n"
           , [ GL
             , SDL
             ]
           )
    end
  , exdl_gl:swapBuffers
    (
    )
  , case
      check_event()
    of
      ok
        -> drawBox
           ( Cube
           , N + 1
           )
    ; quit
        -> N
    end
.

myabs({R,G,B})
 -> { abs(R)
    , abs(G)
    , abs(B)
    }
.
         
check_event()
 -> case
      exdl_events:pollEvent()
    of
      #quit{}
        -> quit
    ; no_event
        -> ok
    ; Quit
        when is_record(Quit, keyboard)
        -> if 
             Quit#keyboard.sym == ?SDLK_ESCAPE
               -> quit
           ; Quit#keyboard.sym == ?SDLK_q
               -> quit
           ; true
               -> io:format
                  ( "Got event ~p~n"
                  , [ Quit
                    ]
                  )
                , ok
           end
    ; { 0, [] }
        -> io:format
           ( "."
           , [
             ]
           )
         , ok
    ; { NE, Evs }
        -> io:format
           ( "Got ~p events: ~p~n"
           , [ NE
             , Evs
             ]
           )
         , ok
    ; Event
        -> io:format
           ( "Got event ~p~n"
           , [ Event
             ]
           )
         , ok
    end
.
    
