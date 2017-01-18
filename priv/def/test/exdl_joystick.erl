%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_joystick.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_joystick).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ numJoysticks/0
         , name/1
         , open/1
         , opened/1
         , index/1
         , numAxes/1
         , numBalls/1
         , numHats/1
         , numButtons/1
         , update/0
         , eventState/1
         , getAxis/2
         , getHat/2
         , getBall/4
         , getButton/2
         , close/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_joystick.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       numJoysticks
%% Args:       none
%% Returns:    Exdl
%% C-API func: int SDL_NumJoysticks(void)

numJoysticks()
 -> case
      call
      ( ?SDL_NumJoysticks
      , [
        ]
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       name
%% Args:       DeviceIndex
%% Returns:    Exdl
%% C-API func: const char* SDL_JoystickName(int device_index)

name(DeviceIndex)
 -> case
      call
      ( ?SDL_JoystickName
      , <<DeviceIndex:?Int
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?String
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       open
%% Args:       DeviceIndex
%% Returns:    Exdl
%% C-API func: SDL_Joystick* SDL_JoystickOpen(int device_index)

open(DeviceIndex)
 -> case
      call
      ( ?SDL_JoystickOpen
      , <<DeviceIndex:?Int
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       opened
%% Args:       DeviceIndex
%% Returns:    Exdl
%% C-API func: int SDL_JoystickOpened(int device_index)

opened(DeviceIndex)
 -> case
      call
      ( ?SDL_JoystickOpened
      , <<DeviceIndex:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       index
%% Args:       Joystick
%% Returns:    Exdl
%% C-API func: int SDL_JoystickIndex(SDL_Joystick* joystick)

index(Joystick)
 -> case
      call
      ( ?SDL_JoystickIndex
      , <<Joystick:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       numAxes
%% Args:       Joystick
%% Returns:    Exdl
%% C-API func: int SDL_JoystickNumAxes(SDL_Joystick* joystick)

numAxes(Joystick)
 -> case
      call
      ( ?SDL_JoystickNumAxes
      , <<Joystick:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       numBalls
%% Args:       Joystick
%% Returns:    Exdl
%% C-API func: int SDL_JoystickNumBalls(SDL_Joystick* joystick)

numBalls(Joystick)
 -> case
      call
      ( ?SDL_JoystickNumBalls
      , <<Joystick:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       numHats
%% Args:       Joystick
%% Returns:    Exdl
%% C-API func: int SDL_JoystickNumHats(SDL_Joystick* joystick)

numHats(Joystick)
 -> case
      call
      ( ?SDL_JoystickNumHats
      , <<Joystick:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       numButtons
%% Args:       Joystick
%% Returns:    Exdl
%% C-API func: int SDL_JoystickNumButtons(SDL_Joystick* joystick)

numButtons(Joystick)
 -> case
      call
      ( ?SDL_JoystickNumButtons
      , <<Joystick:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       update
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_JoystickUpdate(void)

update()
 -> cast
    ( ?SDL_JoystickUpdate
    , [
      ]
    )
.

%% Func:       eventState
%% Args:       State
%% Returns:    Exdl
%% C-API func: int SDL_JoystickEventState(int state)

eventState(State)
 -> case
      call
      ( ?SDL_JoystickEventState
      , <<State:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getAxis
%% Args:       Joystick, Axis
%% Returns:    Exdl
%% C-API func: Sint16 SDL_JoystickGetAxis(SDL_Joystick* joystick, int axis)

getAxis(Joystick, Axis)
 -> case
      call
      ( ?SDL_JoystickGetAxis
      , <<Joystick:?_PTR
        , Axis:?Int
        >>
      )
    of
      <<Exdl:?Sint16
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getHat
%% Args:       Joystick, Hat
%% Returns:    Exdl
%% C-API func: Uint8 SDL_JoystickGetHat(SDL_Joystick* joystick, int hat)

getHat(Joystick, Hat)
 -> case
      call
      ( ?SDL_JoystickGetHat
      , <<Joystick:?_PTR
        , Hat:?Int
        >>
      )
    of
      <<Exdl:?Uint8
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getBall
%% Args:       Joystick, Ball, Dx, Dy
%% Returns:    Exdl
%% C-API func: int SDL_JoystickGetBall(SDL_Joystick* joystick, int ball, int* dx, int* dy)

getBall(Joystick, Ball, Dx, Dy)
 -> case
      call
      ( ?SDL_JoystickGetBall
      , <<Joystick:?_PTR
        , Ball:?Int
        , Dx:?_PTR
        , Dy:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getButton
%% Args:       Joystick, Button
%% Returns:    Exdl
%% C-API func: Uint8 SDL_JoystickGetButton(SDL_Joystick* joystick, int button)

getButton(Joystick, Button)
 -> case
      call
      ( ?SDL_JoystickGetButton
      , <<Joystick:?_PTR
        , Button:?Int
        >>
      )
    of
      <<Exdl:?Uint8
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       close
%% Args:       Joystick
%% Returns:    ok
%% C-API func: void SDL_JoystickClose(SDL_Joystick* joystick)

close(Joystick)
 -> cast
    ( ?SDL_JoystickClose
    , <<Joystick:?_PTR
      >>
    )
.

