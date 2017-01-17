%%
%%  Copyright (c) 2010 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_error.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_error).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ getError/0
         , clearError/0
         ]
       ).

%% 2- INCLUDE

-include("exdl_error.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       getError
%% Args:       none
%% Returns:    Exdl
%% C-API func: char* SDL_GetError(void)

getError()
 -> case
      call
      ( ?SDL_GetError
      , [
        ]
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

%% Func:       clearError
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_ClearError(void)

clearError()
 -> cast
    ( ?SDL_ClearError
    , [
      ]
    )
.

