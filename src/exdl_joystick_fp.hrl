%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_joystick_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-define(SDL_NumJoysticks,        ?EXDL_JOYSTICK_HRL       + 0).
-define(SDL_JoystickName,        ?SDL_NumJoysticks        + 1).
-define(SDL_JoystickOpen,        ?SDL_JoystickName        + 1).
-define(SDL_JoystickOpened,      ?SDL_JoystickOpen        + 1).
-define(SDL_JoystickIndex,       ?SDL_JoystickOpened      + 1).
-define(SDL_JoystickNumAxes,     ?SDL_JoystickIndex       + 1).
-define(SDL_JoystickNumBalls,    ?SDL_JoystickNumAxes     + 1).
-define(SDL_JoystickNumHats,     ?SDL_JoystickNumBalls    + 1).
-define(SDL_JoystickNumButtons,  ?SDL_JoystickNumHats     + 1).
-define(SDL_JoystickUpdate,      ?SDL_JoystickNumButtons  + 1).
-define(SDL_JoystickEventState,  ?SDL_JoystickUpdate      + 1).
-define(SDL_JoystickGetAxis,     ?SDL_JoystickEventState  + 1).
-define(SDL_JoystickGetHat,      ?SDL_JoystickGetAxis     + 1).
-define(SDL_JoystickGetBall,     ?SDL_JoystickGetHat      + 1).
-define(SDL_JoystickGetButton,   ?SDL_JoystickGetBall     + 1).
-define(SDL_JoystickClose,       ?SDL_JoystickGetButton   + 1).

%% EXDL_JOYSTICK C SRC ENUM CHECK
-define(_ENUM_EXDL_JOYSTICK,     ?SDL_JoystickClose       + 1).
