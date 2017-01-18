%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_events.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_events).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ pumpEvents/0
         , peepEvents/4
         , pollEvent/1
         , waitEvent/1
         , eventState/2
         ]
       ).

%% 2- INCLUDE

-include("exdl_events.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       pumpEvents
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_PumpEvents(void)

pumpEvents()
 -> cast
    ( ?SDL_PumpEvents
    , [
      ]
    )
.

%% Func:       peepEvents
%% Args:       Events, Numevents, Action, Mask
%% Returns:    Exdl
%% C-API func: int SDL_PeepEvents(SDL_Event* events, int numevents, SDL_eventaction action, Uint32 mask)

peepEvents(Events, Numevents, Action, Mask)
 -> case
      call
      ( ?SDL_PeepEvents
      , <<Events:?_PTR
        , Numevents:?Int
        , Action:?SDL_eventaction
        , Mask:?Uint32
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

%% Func:       pollEvent
%% Args:       Event
%% Returns:    Exdl
%% C-API func: int SDL_PollEvent(SDL_Event* event)

pollEvent(Event)
 -> case
      call
      ( ?SDL_PollEvent
      , <<Event:?_PTR
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

%% Func:       waitEvent
%% Args:       Event
%% Returns:    Exdl
%% C-API func: int SDL_WaitEvent(SDL_Event* event)

waitEvent(Event)
 -> case
      call
      ( ?SDL_WaitEvent
      , <<Event:?_PTR
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

%% Func:       eventState
%% Args:       Type, State
%% Returns:    Exdl
%% C-API func: Uint8 SDL_EventState(Uint8 type, int state)

eventState(Type, State)
 -> case
      call
      ( ?SDL_EventState
      , <<Type:?Uint8
        , State:?Int
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

