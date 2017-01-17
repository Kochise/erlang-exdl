%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_oglblit_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_OGLBLIT).

  -define(OGL_Init,             ?EXDL_OGLBLIT_HRL     + 0).
  -define(OGL_FreeTexture,      ?OGL_Init             + 1).
  -define(OGL_Flip,             ?OGL_FreeTexture      + 1).
  -define(OGL_Clear,            ?OGL_Flip             + 1).
  -define(OGL_Blit,             ?OGL_Clear            + 1).
  -define(OGL_FromSurface,      ?OGL_Blit             + 1).
  -define(OGL_FromSurfaceFree,  ?OGL_FromSurface      + 1).

  %% EXDL_OGLBLIT C SRC ENUM CHECK
  -define(_ENUM_EXDL_OGLBLIT,   ?OGL_FromSurfaceFree  + 1).

-else. % COMPILE_OGLBLIT

  -define(_ENUM_EXDL_OGLBLIT,   ?EXDL_OGLBLIT_HRL).

-endif. % COMPILE_OGLBLIT
