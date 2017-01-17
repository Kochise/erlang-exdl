%%
%%  Copyright (c) 2010 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_error_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-define(SDL_GetError,      ?EXDL_ERROR_HRL + 0).
-define(SDL_ClearError,    ?SDL_GetError   + 1).

%% EXDL_ERROR C SRC ENUM CHECK
-define(_ENUM_EXDL_ERROR,  ?SDL_ClearError + 1).
