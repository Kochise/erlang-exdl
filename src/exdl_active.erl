%%
%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_active.erl,v 1.1 2004/03/30 07:46:20 bjorng Exp $
%%

-module(exdl_active).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ quitRequested/0
         , getAppState/0
         ]
       ).

%% 2- INCLUDE

-include("exdl_events.hrl").

-include("exdl_active.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       quitRequested
%% Args:       none
%% Returns:    true | false
%% C-API func: SDL_QuitRequested()

quitRequested()
 -> exdl_events:pumpEvents
    (
    )
  , case
      exdl_events:peepEvents
      ( 0
      , ?SDL_PEEKEVENT
      , ?SDL_QUITMASK
      )
    of
      []
        -> false
    ; _ 
        -> true
    end
.

%% Func:       getAppState
%% Args:       none
%% Returns:    Exdl
%% C-API func: Uint8 SDL_GetAppState(void)

getAppState()
 -> case
      call
      ( ?SDL_GetAppState
      , [
        ]
      )
    of
      <<Exdl:?Uint8
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

