%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_keyboard.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_keyboard).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ enableUNICODE/1
         , enableKeyRepeat/2
         , getKeyRepeat/0
         , getKeyState/1
         , getModState/0
         , setModState/1
         , getKeyName/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_keyboard.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       enableUNICODE
%% Args:       Enable
%% Returns:    Exdl
%% C-API func: int SDL_EnableUNICODE(int enable)

enableUNICODE(Enable)
 -> case
      call
      ( ?SDL_EnableUNICODE
      , <<Enable:?Int
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

%% Func:       enableKeyRepeat
%% Args:       Delay, Interval
%% Returns:    Exdl
%% C-API func: int SDL_EnableKeyRepeat(int delay, int interval)

enableKeyRepeat(Delay, Interval)
 -> case
      call
      ( ?SDL_EnableKeyRepeat
      , <<Delay:?Int
        , Interval:?Int
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

%% Func:       getKeyRepeat
%% Args:       none
%% Returns:    { Delay, Interval }
%% C-API func: void SDL_GetKeyRepeat(int* delay, int* interval)

getKeyRepeat()
 -> case
      call
      ( ?SDL_GetKeyRepeat
      , [
        ]
      )
    of
      <<Delay:?Int
      , Interval:?Int
      >>
        -> { Delay, Interval }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getKeyState
%% Args:       Numkeys
%% Returns:    Exdl
%% C-API func: Uint8* SDL_GetKeyState(int* numkeys)

getKeyState(Numkeys)
 -> case
      call
      ( ?SDL_GetKeyState
      , <<Numkeys:?_PTR
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

%% Func:       getModState
%% Args:       none
%% Returns:    Exdl
%% C-API func: SDLMod SDL_GetModState(void)

getModState()
 -> case
      call
      ( ?SDL_GetModState
      , [
        ]
      )
    of
      <<Exdl:?SDLMod
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       setModState
%% Args:       Modstate
%% Returns:    ok
%% C-API func: void SDL_SetModState(SDLMod modstate)

setModState(Modstate)
 -> cast
    ( ?SDL_SetModState
    , <<Modstate:?SDLMod
      >>
    )
.

%% Func:       getKeyName
%% Args:       Key
%% Returns:    Exdl
%% C-API func: char* SDL_GetKeyName(SDLKey key)

getKeyName(Key)
 -> case
      call
      ( ?SDL_GetKeyName
      , <<Key:?SDLKey
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

