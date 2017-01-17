%%
%%  Copyright (c) 2010 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_cdrom_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-define(SDL_CDNumDrives,   ?EXDL_CDROM_HRL    + 0).
-define(SDL_CDName,        ?SDL_CDNumDrives   + 1).
-define(SDL_CDOpen,        ?SDL_CDName        + 1).
-define(SDL_CDStatus,      ?SDL_CDOpen        + 1).
-define(SDL_CDPlayTracks,  ?SDL_CDStatus      + 1).
-define(SDL_CDPlay,        ?SDL_CDPlayTracks  + 1).
-define(SDL_CDPause,       ?SDL_CDPlay        + 1).
-define(SDL_CDResume,      ?SDL_CDPause       + 1).
-define(SDL_CDStop,        ?SDL_CDResume      + 1).
-define(SDL_CDEject,       ?SDL_CDStop        + 1).
-define(SDL_CDClose,       ?SDL_CDEject       + 1).

%% EXDL_CDROM C SRC ENUM CHECK
-define(_ENUM_EXDL_CDROM,  ?SDL_CDClose       + 1).
