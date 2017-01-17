%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_events_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-define(SDL_PumpEvents,     ?EXDL_EVENTS_HRL + 0).
-define(SDL_PeepEvents,     ?SDL_PumpEvents  + 1).
-define(SDL_PollEvent,      ?SDL_PeepEvents  + 1).
-define(SDL_WaitEvent,      ?SDL_PollEvent   + 1).
-define(SDL_EventState,     ?SDL_WaitEvent   + 1).

%% EXDL_EVENTS C SRC ENUM CHECK
-define(_ENUM_EXDL_EVENTS,  ?SDL_EventState  + 1).
