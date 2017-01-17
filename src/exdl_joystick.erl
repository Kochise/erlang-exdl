%%
%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_joystick.erl,v 1.2 2005/06/29 14:45:39 dgud Exp $
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
         , getBall/2
         , getButton/2
         , close/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_util.hrl").

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
%% Returns:    Number of joysticks
%% C-API func: int SDL_NumJoysticks(void)
%% Desc:       Count the number of joysticks attached to the system 

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
%% Args:       Deviceindex
%% Returns:    Name (List)
%% C-API func: const char* SDL_JoystickName(int device_index)
%% Desc:       Get the implementation dependent name of a joystick.
%%             This can be called before any joysticks are opened.
%%             If no name can be found, this function returns NULL.

name(DeviceIndex)
 -> Name
    = call
      ( ?SDL_JoystickName
      , <<DeviceIndex:?Int
        >>
      )
  , binary_to_list
    ( Name
    )
.

%% Func:       open
%% Args:       DeviceIndex
%% Returns:    Joystick or exits
%% C-API func: SDL_Joystick* SDL_JoystickOpen(int device_index);
%% Desc:       Open a joystick for use - the index passed as an argument refers to
%%             the N'th joystick on the system.  This index is the value which will
%%             identify this joystick in future joystick events.
%%             This function returns a joystick identifier, or NULL if an error occurred.

open(DeviceIndex)
 -> <<ID:?_PTR
    >>
    = call
      ( ?SDL_JoystickOpen
      , [ DeviceIndex
        ]
      )
  , ID
.

%% Func:       opened
%% Args:       DeviceIndex
%% Returns:    true or false
%% C-API func: int SDL_JoystickOpened(int device_index);
%% Desc:       Returns true if the joystick has been opened, or false if it has not. 

opened(DeviceIndex)
 -> <<Bool:8
    >>
    = call
      ( ?SDL_JoystickOpened
      , <<DeviceIndex:?Int
        >>
      )
  , Bool == 1
.

%% Func:       index
%% Args:       Joystick
%% Returns:    index
%% C-API func: int SDL_JoystickIndex(SDL_Joystick* joystick);
%% Desc:       Get the device index of an opened joystick.

index(Joystick)
 -> <<Index:8
    >>
    = call
      ( ?SDL_JoystickIndex
      , <<Joystick:?_PTR
        >>
      )
  , Index
.

%% Func:       numAxes
%% Args:       Joystick
%% Returns:    no of axes
%% C-API func: int SDL_JoystickNumAxes(SDL_Joystick* joystick);
%% Desc:       Get the number of general axis controls on a joystick

numAxes(Joystick)
 -> <<Axes:8
    >>
    = call
      ( ?SDL_JoystickNumAxes
      , <<Joystick:?_PTR
        >>
      )
  , Axes
.

%% Func:       numBalls
%% Args:       Joystick
%% Returns:    no of balls
%% C-API func: int SDL_JoystickNumBalls(SDL_Joystick* joystick);
%% Desc:       Get the number of trackballs on a joystick,
%%             joystick trackballs have only relative motion events associated
%%             with them and their state cannot be polled.

numBalls(Joystick)
 -> <<Balls:8
    >>
    = call
      ( ?SDL_JoystickNumBalls
      , <<Joystick:?_PTR
        >>
      )
  , Balls
.

%% Func:       numHats
%% Args:       Joystick
%% Returns:    no of Hats
%% C-API func: int SDL_JoystickNumHats(SDL_Joystick* joystick);
%% Desc:       Get the number of POV hats on a joystick

numHats(Joystick)
 -> <<Hats:8
    >>
    = call
      ( ?SDL_JoystickNumHats
      , <<Joystick:?_PTR
        >>
      )
  , Hats
.

%% Func:       numButtons
%% Args:       Joystick
%% Returns:    no of Buttons
%% C-API func: int SDL_JoystickNumButtons(SDL_Joystick* joystick);
%% Desc:       Get the number of buttons on a joystick

numButtons(Joystick)
 -> <<Buttons:8
    >>
    = call
      ( ?SDL_JoystickNumButtons
      , <<Joystick:?_PTR
        >>
      )
  , Buttons
.

%% Func:       update
%% Args:       none
%% Returns:    none
%% C-API func: void SDL_JoystickUpdate(void);
%% Desc:       Update the current state of the open joysticks.
%%             This is called automatically by the event loop if any joystick
%%             events are enabled.

update()
 -> cast
    ( ?SDL_JoystickUpdate
    , [
      ]
    )
.

%% Func:       getAxis
%% Args:       Joystick, Axis
%% Returns:    State (Int range: -32768 to 32767)
%% C-API func: Sint16 SDL_JoystickGetAxis(SDL_Joystick* joystick, int axis);
%% Desc:       Get the current state of an axis control on a joystick
%%             The state is a value ranging from -32768 to 32767.
%%             The axis indices start at index 0.

getAxis(Joystick, Axis)
 -> <<State:32
    >>
    = call
      ( ?SDL_JoystickGetAxis
      , <<Joystick:32
        , Axis:8
        >>
      )
  , State
.

%% Func:       getHat
%% Args:       Joystick, Hat
%% Returns:    HatState 
%% C-API func: Uint8 SDL_JoystickGetHat(SDL_Joystick* joystick, int hat);
%% Desc:       Get the current state of a POV hat on a joystick
%%             The return value is one of the following positions in sdl_joystick.hrl
%%             The hat indices start at index 0.

getHat(Joystick, Hat)
 -> <<State:8
    >>
    = call
      ( ?SDL_JoystickGetHat
      , <<Joystick:32
        , Hat:8
        >>
      )
  , State
.

%% Func:       getBall
%% Args:       Joystick, Ball
%% Returns:    {DX, DY} or badarg
%% C-API func: int SDL_JoystickGetBall(SDL_Joystick* joystick, int ball, int* dx, int* dy);
%% Desc:       Get the ball axis change since the last poll
%%             This returns 0, or -1 if you passed it invalid parameters.
%%             The ball indices start at index 0.

getBall(Joystick, Ball)
 -> case
      call
      ( ?SDL_JoystickGetBall
      , <<Joystick:32
        , Ball:16
        >>
      )
    of
      <<Dx:32
      , Dy:32
      >>
        -> {Dx, Dy}
    ; Res
        -> {badarg, Res}
    end
.

%% Func:       getButton
%% Args:       Joystick, Button
%% Returns:    State
%% C-API func: Uint8 SDL_JoystickGetButton(SDL_Joystick* joystick, int button);
%% Desc:       Get the current state of a button on a joystick
%%             The button indices start at index 0.

getButton(Joystick, Button)
 -> <<State:8
    >>
    = call
      ( ?SDL_JoystickGetButton
      , <<Joystick:32
        , Button:8
        >>
      )
  , State
.

%% Func:       close
%% Args:       Joystick
%% Returns:    none
%% C-API func: void SDL_JoystickClose(SDL_Joystick* joystick);
%% Desc:       Close a joystick previously opened with SDL_JoystickOpen()

close(Joystick)
 -> cast
    ( ?SDL_JoystickClose
    , <<Joystick:32
      >>
    )
.
