/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_ttf_fp.h,v 1.0 2008/12/25 09:17:43 kochise Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_TTF

{ TTF_Linked_Version_ENUM,         "TTF_Linked_Version",         ettf_linked_Version },
{ TTF_ByteSwappedUNICODE_ENUM,     "TTF_ByteSwappedUNICODE",     ettf_byteSwappedUNICODE },
{ TTF_Init_ENUM,                   "TTF_Init",                   ettf_init },
{ TTF_OpenFont_ENUM,               "TTF_OpenFont",               ettf_openFont },
{ TTF_OpenFontIndex_ENUM,          "TTF_OpenFontIndex",          ettf_openFontIndex },
{ TTF_OpenFontRW_ENUM,             "TTF_OpenFontRW",             ettf_openFontRW },
{ TTF_OpenFontIndexRW_ENUM,        "TTF_OpenFontIndexRW",        ettf_openFontIndexRW },
{ TTF_GetFontStyle_ENUM,           "TTF_GetFontStyle",           ettf_getFontStyle },
{ TTF_SetFontStyle_ENUM,           "TTF_SetFontStyle",           ettf_setFontStyle },
{ TTF_FontHeight_ENUM,             "TTF_FontHeight",             ettf_fontHeight },
{ TTF_FontAscent_ENUM,             "TTF_FontAscent",             ettf_fontAscent },
{ TTF_FontDescent_ENUM,            "TTF_FontDescent",            ettf_fontDescent },
{ TTF_FontLineSkip_ENUM,           "TTF_FontLineSkip",           ettf_fontLineSkip },
{ TTF_FontFaces_ENUM,              "TTF_FontFaces",              ettf_fontFaces },
{ TTF_FontFaceIsFixedWidth_ENUM,   "TTF_FontFaceIsFixedWidth",   ettf_fontFaceIsFixedWidth },
{ TTF_FontFaceFamilyName_ENUM,     "TTF_FontFaceFamilyName",     ettf_fontFaceFamilyName },
{ TTF_FontFaceStyleName_ENUM,      "TTF_FontFaceStyleName",      ettf_fontFaceStyleName },
{ TTF_GlyphMetrics_ENUM,           "TTF_GlyphMetrics",           ettf_glyphMetrics },
{ TTF_SizeText_ENUM,               "TTF_SizeText",               ettf_sizeText },
{ TTF_SizeUTF8_ENUM,               "TTF_SizeUTF8",               ettf_sizeUTF8 },
{ TTF_SizeUNICODE_ENUM,            "TTF_SizeUNICODE",            ettf_sizeUNICODE },
{ TTF_RenderText_Solid_ENUM,       "TTF_RenderText_Solid",       ettf_renderText_Solid },
{ TTF_RenderUTF8_Solid_ENUM,       "TTF_RenderUTF8_Solid",       ettf_renderUTF8_Solid },
{ TTF_RenderUNICODE_Solid_ENUM,    "TTF_RenderUNICODE_Solid",    ettf_renderUNICODE_Solid },
{ TTF_RenderGlyph_Solid_ENUM,      "TTF_RenderGlyph_Solid",      ettf_renderGlyph_Solid },
{ TTF_RenderText_Shaded_ENUM,      "TTF_RenderText_Shaded",      ettf_renderText_Shaded },
{ TTF_RenderUTF8_Shaded_ENUM,      "TTF_RenderUTF8_Shaded",      ettf_renderUTF8_Shaded },
{ TTF_RenderUNICODE_Shaded_ENUM,   "TTF_RenderUNICODE_Shaded",   ettf_renderUNICODE_Shaded },
{ TTF_RenderGlyph_Shaded_ENUM,     "TTF_RenderGlyph_Shaded",     ettf_renderGlyph_Shaded },
{ TTF_RenderText_Blended_ENUM,     "TTF_RenderText_Blended",     ettf_renderText_Blended },
{ TTF_RenderUTF8_Blended_ENUM,     "TTF_RenderUTF8_Blended",     ettf_renderUTF8_Blended },
{ TTF_RenderUNICODE_Blended_ENUM,  "TTF_RenderUNICODE_Blended",  ettf_renderUNICODE_Blended },
{ TTF_RenderGlyph_Blended_ENUM,    "TTF_RenderGlyph_Blended",    ettf_renderGlyph_Blended },
{ TTF_CloseFont_ENUM,              "TTF_CloseFont",              ettf_closeFont },
{ TTF_Quit_ENUM,                   "TTF_Quit",                   ettf_quit },
{ TTF_WasInit_ENUM,                "TTF_WasInit",                ettf_wasInit },

#endif // COMPILE_TTF
