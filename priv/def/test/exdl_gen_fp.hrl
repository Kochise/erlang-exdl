%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_gen_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

  -define(SDL_Init,           ?EXDL_GEN_HRL       + 0).
  -define(SDL_InitSubSystem,  ?SDL_Init           + 1).
  -define(SDL_QuitSubSystem,  ?SDL_InitSubSystem  + 1).
  -define(SDL_WasInit,        ?SDL_QuitSubSystem  + 1).
  -define(SDL_Quit,           ?SDL_WasInit        + 1).

  %% EXDL_GEN C SRC ENUM CHECK
  -define(_ENUM_EXDL_GEN,     ?SDL_Quit           + 1).

