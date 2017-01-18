%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_active_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

  -define(SDL_GetAppState,    ?EXDL_ACTIVE_HRL    + 0).

  %% EXDL_ACTIVE C SRC ENUM CHECK
  -define(_ENUM_EXDL_ACTIVE,  ?SDL_GetAppState    + 1).

