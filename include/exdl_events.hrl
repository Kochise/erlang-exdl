%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_events.hrl,v 1.1 2004/03/30 07:50:46 bjorng Exp $
%%

%%%----------------------------------------------------------------------
%%% File    : exdl_events.hrl
%%% Author  : Dan Gudmundsson <dgud@erix.ericsson.se>
%%% Purpose : Event definitions
%%% Created : 7 Jul 2000 by Dan Gudmundsson <dgud@erix.ericsson.se>
%%% Modified: 7 Nov 2008 by David Koch <david.koch@libertysurf.fr>
%%%----------------------------------------------------------------------

-define(SDL_QUERY,       -1). % Arg to eventState function
-define(SDL_IGNORE,      0).
-define(SDL_DISABLE,     0).
-define(SDL_ENABLE,      1).

%%% SDL_eventaction

-define(SDL_ADDEVENT,    0). % Arg to peepEvents function
-define(SDL_PEEKEVENT,   1).
-define(SDL_GETEVENT,    2).

-define(SDL_RELEASED,    0).
-define(SDL_PRESSED,     1).

-define(SDL_ALL_HOTKEYS, 16#FFFFFFFF).

%% Events (are defined by the following records)

-record( active  %% SDL_ActiveEvent
       , { gain  %% Whether given states were gained or lost (1/0)
         , state %% A mask of the focus states
         }
       ).

-record( keyboard  %% SDL_KeyboardEvent
       , { which   %% The keyboard device index 
         , state   %% SDL_PRESSED or SDL_RELEASED 
         , scancode %% hardware specific scancode
         , sym     %% SDL virtual keysym      see sdl_keyboard.hrl 
         , mod     %% current key modifiers   see sdl_keyboard.hrl
         , unicode %% translated character 
         }
       ).

-record( mousemotion %% SDL_MouseMotionEvent
       , { which   %% The mouse device index 
         , state   %% The current button state 
         , mod = 0 %% Current key modifiers    
         , x
         , y       %% The X/Y coordinates of the mouse 
         , xrel    %% The relative motion in the X direction 
         , yrel    %% The relative motion in the Y direction
         }
       ). 

-record( mousebutton %% SDL_MouseButtonEvent
       , { which   %% The mouse device index 
         , button  %% The mouse button index 
         , state   %% SDL_PRESSED or SDL_RELEASED 
         , mod = 0 %% Current key modifiers    
         , x       %% The X/Y coordinates of the mouse at press time 
         , y
         }
       ).

-record( joyaxis   %% SDL_JoyAxisEvent
       , { which   %% the joystick device index 
         , axis    %% The joystick axis index 
         , value   %% The axis value (range: -32768 to 32767)
         }
       ). 

-record( joyball   %% SDL_JoyBallEvent
       , { which   %% The joystick device index 
         , ball    %% The joystick trackball index 
         , xrel    %% The relative motion in the X direction 
         , yrel    %% The relative motion in the Y direction 
         }
       ).

%%%    8=SDL_HAT_LEFTUP     1=SDL_HAT_UP         2=SDL_HAT_RIGHTUP
%%%    7=SDL_HAT_LEFT       0=SDL_HAT_CENTERED   3=SDL_HAT_RIGHT
%%%    6=SDL_HAT_LEFTDOWN   5=SDL_HAT_DOWN       4=SDL_HAT_RIGHTDOWN

-record( joyhat     %% SDL_JoyHatEvent
       , { which   %% The joystick device index 
         , hat     %% The joystick hat index 
         , value   %% The hat position value:
         }
       ).

-record( joybutton %% SDL_JoyButtonEvent
       , { which   %% The joystick device index 
         , button  %% The joystick button index 
         , state   %% SDL_PRESSED or SDL_RELEASED 
         }
       ).

-record( resize    %% SDL_ResizeEvent
       , { w       %% New width 
         , h       %% New height 
         }
       ).

-record( expose    %% SDL_ExposeEvent The "screen redraw" event
       , {
         }
       ).

-record( quit      %% SDL_QuitEvent
       , {
         }
       ).

%-record( userevent  %% SDL_UserEvent (SDL_USEREVENT through SDL_NUMEVENTS-1)
%       , int   code   User defined event code 
%       , void* data1  User defined data pointer 
%       , void* data2  User defined data pointer 

%-record( syswme %% SDL_SysWMEvent
%       , { msg % SDL_SysWMmsg* ref
%         }
%       ).

%%%

%% EVENT TYPES and their masks

-define(SDL_NOEVENT,             0).  % No (new) event
-define(SDL_ACTIVEEVENT,         1).  % Application loses/gains visibility 
-define(SDL_KEYDOWN,             2).  % Keys pressed 
-define(SDL_KEYUP,               3).  % Keys released 
-define(SDL_MOUSEMOTION,         4).  % Mouse moved 
-define(SDL_MOUSEBUTTONDOWN,     5).  % Mouse button pressed 
-define(SDL_MOUSEBUTTONUP,       6).  % Mouse button released 
-define(SDL_JOYAXISMOTION,       7).  % Joystick axis motion 
-define(SDL_JOYBALLMOTION,       8).  % Joystick trackball motion 
-define(SDL_JOYHATMOTION,        9).  % Joystick hat position change 
-define(SDL_JOYBUTTONDOWN,       10). % Joystick button pressed 
-define(SDL_JOYBUTTONUP,         11). % Joystick button released 
-define(SDL_QUIT,                12). % User-requested quit 
-define(SDL_SYSWMEVENT,          13). % System specific event 
-define(SDL_EVENT_RESERVEDA,     14). % Reserved for future use.. 
-define(SDL_EVENT_RESERVEDB,     15). % Reserved for future use.. 
-define(SDL_VIDEORESIZE,         16). % User resized video mode 
-define(SDL_VIDEOEXPOSE,         17). % User resized video mode 
-define(SDL_EVENT_RESERVED2,     18). % Reserved for future use..
-define(SDL_EVENT_RESERVED3,     19). % Reserved for future use..
-define(SDL_EVENT_RESERVED4,     20). % Reserved for future use..
-define(SDL_EVENT_RESERVED5,     21). % Reserved for future use..
-define(SDL_EVENT_RESERVED6,     22). % Reserved for future use..
-define(SDL_EVENT_RESERVED7,     23). % Reserved for future use..
%% Events SDL_USEREVENT through SDL_MAXEVENTS-1 are for your use
-define(SDL_USEREVENT,           24).
-define(SDL_NUMEVENTS,           32).

%% Predefined event masks

-define(SDL_ACTIVEEVENTMASK,     (1 bsl ?SDL_ACTIVEEVENT)).

-define(SDL_KEYDOWNMASK,         (1 bsl ?SDL_KEYDOWN)).
-define(SDL_KEYUPMASK,           (1 bsl ?SDL_KEYUP)).
-define( SDL_KEYEVENTMASK
       , (   ?SDL_KEYDOWNMASK 
         bor ?SDL_KEYUPMASK
         )
       ).

-define(SDL_MOUSEMOTIONMASK,     (1 bsl ?SDL_MOUSEMOTION)).
-define(SDL_MOUSEBUTTONDOWNMASK, (1 bsl ?SDL_MOUSEBUTTONDOWN)).
-define(SDL_MOUSEBUTTONUPMASK,   (1 bsl ?SDL_MOUSEBUTTONUP)).
-define( SDL_MOUSEBUTTONMASK
       , (   ?SDL_MOUSEBUTTONDOWNMASK
         bor ?SDL_MOUSEBUTTONUPMASK
         )
       ).
-define( SDL_MOUSEEVENTMASK
       , (   ?SDL_MOUSEMOTIONMASK
         bor ?SDL_MOUSEBUTTONDOWNMASK
         bor ?SDL_MOUSEBUTTONUPMASK
         )
       ).

-define(SDL_JOYAXISMOTIONMASK,   (1 bsl ?SDL_JOYAXISMOTION)).
-define(SDL_JOYBALLMOTIONMASK,   (1 bsl ?SDL_JOYBALLMOTION)).
-define(SDL_JOYHATMOTIONMASK,    (1 bsl ?SDL_JOYHATMOTION)).
-define(SDL_JOYBUTTONDOWNMASK,   (1 bsl ?SDL_JOYBUTTONDOWN)).
-define(SDL_JOYBUTTONUPMASK,     (1 bsl ?SDL_JOYBUTTONUP)).
-define( SDL_JOYBUTTONMASK
       , (   ?SDL_JOYBUTTONDOWNMASK
         bor ?SDL_JOYBUTTONUPMASK
         )
       ).
-define( SDL_JOYEVENTMASK
       , (   ?SDL_JOYAXISMOTIONMASK
         bor ?SDL_JOYBALLMOTIONMASK
         bor ?SDL_JOYHATMOTIONMASK
         bor ?SDL_JOYBUTTONDOWNMASK
         bor ?SDL_JOYBUTTONUPMASK
         )
       ).

-define(SDL_VIDEORESIZEMASK,     (1 bsl ?SDL_VIDEORESIZE)).
-define(SDL_VIDEOEXPOSEMASK,     (1 bsl ?SDL_VIDEOEXPOSE)).

-define(SDL_QUITMASK,            (1 bsl ?SDL_QUIT)).

-define(SDL_SYSWMEVENTMASK,      (1 bsl ?SDL_SYSWMEVENT)).

-define(SDL_ALLEVENTS,           16#FFFFFFFF).

