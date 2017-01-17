%%
%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_keyboard.erl,v 1.1 2004/03/30 07:46:20 bjorng Exp $
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

%% Func:       getKeyState
%% Args:       none
%% Returns:    A tuple continaing the state of each key(i.e. state of each Key) 
%% C-API func: Uint8* SDL_GetKeyState(int* numkeys);

getKeyState()
 -> Res
    = call
      ( ?SDL_GetKeyState
      , [
        ]
      )
  , list_to_tuple
    ( binary_to_list
      ( Res
      )
    )
.

%% Func:       enableUNICODE
%% Args:       true | false
%% Returns:    Previous Setting (true | False)
%% C-API func: int SDL_EnableUNICODE(int enable);
%% Desc:

enableUNICODE(Bool)
 -> B
    = if
        Bool == true
          -> 1
      ; true
          -> 0
      end
  , <<Res:8
    >>
    = call
      ( ?SDL_EnableUNICODE
      , [ B
        ]
      )
  , Res
.

%% Func:       enableKeyRepeat
%% Args:       Delay, Interval
%% Returns:    true | false (if failure)
%% C-API func: int SDL_EnableKeyRepeat(int delay, int interval);
%% Desc:

enableKeyRepeat(Delay, Interval)
 -> <<Res:8
    >>
    = call
      ( ?SDL_EnableKeyRepeat
      , << Delay:16
        , Interval:16
        >>
      )
  , Res =:= 0
.

%% Func:       getKeyState
%% Args:       Numkeys
%% Returns:    Exdl
%% C-API func: Uint8* SDL_GetKeyState(int* numkeys)

getKeyName(Key)
 -> binary_to_list
    ( call
      ( ?SDL_GetKeyName
      , << Key:16
        >>
      )
    )
.

%% Func:       getModState
%% Args:       none
%% Returns:    Exdl (see KMOD_* in sdl_keyboard.hrl)
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
%% Args:       ModState (see KMOD_* in sdl_keyboard.hrl)
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

