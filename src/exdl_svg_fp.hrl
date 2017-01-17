%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_svg_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_SVG).

  -define(SVG_Load,             ?EXDL_SVG_HRL         + 0).
  -define(SVG_LoadBuffer,       ?SVG_Load             + 1).
  -define(SVG_SetOffset,        ?SVG_LoadBuffer       + 1).
  -define(SVG_SetScale,         ?SVG_SetOffset        + 1).
  -define(SVG_RenderToSurface,  ?SVG_SetScale         + 1).
  -define(SVG_Free,             ?SVG_RenderToSurface  + 1).
  -define(SVG_Set_Flags,        ?SVG_Free             + 1).
  -define(SVG_Width,            ?SVG_Set_Flags        + 1).
  -define(SVG_Height,           ?SVG_Width            + 1).
  -define(SVG_Version,          ?SVG_Height           + 1).
  -define(SVG_SetClipping,      ?SVG_Version          + 1).

  %% EXDL_SVG C SRC ENUM CHECK
  -define(_ENUM_EXDL_SVG,       ?SVG_SetClipping      + 1).

-else. % COMPILE_SVG

  -define(_ENUM_EXDL_SVG,       ?EXDL_SVG_HRL).

-endif. % COMPILE_SVG
