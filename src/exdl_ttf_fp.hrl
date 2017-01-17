%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_ttf_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_TTF).

  -define(TTF_Linked_Version,         ?EXDL_TTF_HRL               + 0).
  -define(TTF_ByteSwappedUNICODE,     ?TTF_Linked_Version         + 1).
  -define(TTF_Init,                   ?TTF_ByteSwappedUNICODE     + 1).
  -define(TTF_OpenFont,               ?TTF_Init                   + 1).
  -define(TTF_OpenFontIndex,          ?TTF_OpenFont               + 1).
  -define(TTF_OpenFontRW,             ?TTF_OpenFontIndex          + 1).
  -define(TTF_OpenFontIndexRW,        ?TTF_OpenFontRW             + 1).
  -define(TTF_GetFontStyle,           ?TTF_OpenFontIndexRW        + 1).
  -define(TTF_SetFontStyle,           ?TTF_GetFontStyle           + 1).
  -define(TTF_FontHeight,             ?TTF_SetFontStyle           + 1).
  -define(TTF_FontAscent,             ?TTF_FontHeight             + 1).
  -define(TTF_FontDescent,            ?TTF_FontAscent             + 1).
  -define(TTF_FontLineSkip,           ?TTF_FontDescent            + 1).
  -define(TTF_FontFaces,              ?TTF_FontLineSkip           + 1).
  -define(TTF_FontFaceIsFixedWidth,   ?TTF_FontFaces              + 1).
  -define(TTF_FontFaceFamilyName,     ?TTF_FontFaceIsFixedWidth   + 1).
  -define(TTF_FontFaceStyleName,      ?TTF_FontFaceFamilyName     + 1).
  -define(TTF_GlyphMetrics,           ?TTF_FontFaceStyleName      + 1).
  -define(TTF_SizeText,               ?TTF_GlyphMetrics           + 1).
  -define(TTF_SizeUTF8,               ?TTF_SizeText               + 1).
  -define(TTF_SizeUNICODE,            ?TTF_SizeUTF8               + 1).
  -define(TTF_RenderText_Solid,       ?TTF_SizeUNICODE            + 1).
  -define(TTF_RenderUTF8_Solid,       ?TTF_RenderText_Solid       + 1).
  -define(TTF_RenderUNICODE_Solid,    ?TTF_RenderUTF8_Solid       + 1).
  -define(TTF_RenderGlyph_Solid,      ?TTF_RenderUNICODE_Solid    + 1).
  -define(TTF_RenderText_Shaded,      ?TTF_RenderGlyph_Solid      + 1).
  -define(TTF_RenderUTF8_Shaded,      ?TTF_RenderText_Shaded      + 1).
  -define(TTF_RenderUNICODE_Shaded,   ?TTF_RenderUTF8_Shaded      + 1).
  -define(TTF_RenderGlyph_Shaded,     ?TTF_RenderUNICODE_Shaded   + 1).
  -define(TTF_RenderText_Blended,     ?TTF_RenderGlyph_Shaded     + 1).
  -define(TTF_RenderUTF8_Blended,     ?TTF_RenderText_Blended     + 1).
  -define(TTF_RenderUNICODE_Blended,  ?TTF_RenderUTF8_Blended     + 1).
  -define(TTF_RenderGlyph_Blended,    ?TTF_RenderUNICODE_Blended  + 1).
  -define(TTF_CloseFont,              ?TTF_RenderGlyph_Blended    + 1).
  -define(TTF_Quit,                   ?TTF_CloseFont              + 1).
  -define(TTF_WasInit,                ?TTF_Quit                   + 1).

  %% EXDL_TTF C SRC ENUM CHECK
  -define(_ENUM_EXDL_TTF,             ?TTF_WasInit                + 1).

-else. % COMPILE_TTF

  -define(_ENUM_EXDL_TTF,           ?EXDL_TTF_HRL).

-endif. % COMPILE_TTF
