%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_active.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_active).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ getAppState/0
         ]
       ).

%% 2- INCLUDE

-include("exdl_active.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

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

