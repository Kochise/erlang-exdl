%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_gen.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_gen).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ init/1
         , initSubSystem/1
         , quitSubSystem/1
         , wasInit/1
         , quit/0
         ]
       ).

%% 2- INCLUDE

-include("exdl_gen.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       init
%% Args:       Flags
%% Returns:    Exdl
%% C-API func: int SDL_Init(Uint32 flags)

init(Flags)
 -> case
      call
      ( ?SDL_Init
      , <<Flags:?Uint32
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

%% Func:       initSubSystem
%% Args:       Flags
%% Returns:    Exdl
%% C-API func: int SDL_InitSubSystem(Uint32 flags)

initSubSystem(Flags)
 -> case
      call
      ( ?SDL_InitSubSystem
      , <<Flags:?Uint32
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

%% Func:       quitSubSystem
%% Args:       Flags
%% Returns:    ok
%% C-API func: void SDL_QuitSubSystem(Uint32 flags)

quitSubSystem(Flags)
 -> cast
    ( ?SDL_QuitSubSystem
    , <<Flags:?Uint32
      >>
    )
.

%% Func:       wasInit
%% Args:       Flags
%% Returns:    Exdl
%% C-API func: Uint32 SDL_WasInit(Uint32 flags)

wasInit(Flags)
 -> case
      call
      ( ?SDL_WasInit
      , <<Flags:?Uint32
        >>
      )
    of
      <<Exdl:?Uint32
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       quit
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_Quit(void)

quit()
 -> cast
    ( ?SDL_Quit
    , [
      ]
    )
.

