/*  
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_ttf.h,v 1.1 2008/12/30 07:49:22 kochise Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_TTF

  enum
  { TTF_Linked_Version_ENUM = EXDL_TTF_H
  , TTF_ByteSwappedUNICODE_ENUM
  , TTF_Init_ENUM
  , TTF_OpenFont_ENUM
  , TTF_OpenFontIndex_ENUM
  , TTF_OpenFontRW_ENUM
  , TTF_OpenFontIndexRW_ENUM
  , TTF_GetFontStyle_ENUM
  , TTF_SetFontStyle_ENUM
  , TTF_FontHeight_ENUM
  , TTF_FontAscent_ENUM
  , TTF_FontDescent_ENUM
  , TTF_FontLineSkip_ENUM
  , TTF_FontFaces_ENUM
  , TTF_FontFaceIsFixedWidth_ENUM
  , TTF_FontFaceFamilyName_ENUM
  , TTF_FontFaceStyleName_ENUM
  , TTF_GlyphMetrics_ENUM
  , TTF_SizeText_ENUM
  , TTF_SizeUTF8_ENUM
  , TTF_SizeUNICODE_ENUM
  , TTF_RenderText_Solid_ENUM
  , TTF_RenderUTF8_Solid_ENUM
  , TTF_RenderUNICODE_Solid_ENUM
  , TTF_RenderGlyph_Solid_ENUM
  , TTF_RenderText_Shaded_ENUM
  , TTF_RenderUTF8_Shaded_ENUM
  , TTF_RenderUNICODE_Shaded_ENUM
  , TTF_RenderGlyph_Shaded_ENUM
  , TTF_RenderText_Blended_ENUM
  , TTF_RenderUTF8_Blended_ENUM
  , TTF_RenderUNICODE_Blended_ENUM
  , TTF_RenderGlyph_Blended_ENUM
  , TTF_CloseFont_ENUM
  , TTF_Quit_ENUM
  , TTF_WasInit_ENUM
  , _ENUM_EXDL_TTF
  };


EXDL_API(ettf_linked_Version);
EXDL_API(ettf_byteSwappedUNICODE);
EXDL_API(ettf_init);
EXDL_API(ettf_openFont);
EXDL_API(ettf_openFontIndex);
EXDL_API(ettf_openFontRW);
EXDL_API(ettf_openFontIndexRW);
EXDL_API(ettf_getFontStyle);
EXDL_API(ettf_setFontStyle);
EXDL_API(ettf_fontHeight);
EXDL_API(ettf_fontAscent);
EXDL_API(ettf_fontDescent);
EXDL_API(ettf_fontLineSkip);
EXDL_API(ettf_fontFaces);
EXDL_API(ettf_fontFaceIsFixedWidth);
EXDL_API(ettf_fontFaceFamilyName);
EXDL_API(ettf_fontFaceStyleName);
EXDL_API(ettf_glyphMetrics);
EXDL_API(ettf_sizeText);
EXDL_API(ettf_sizeUTF8);
EXDL_API(ettf_sizeUNICODE);
EXDL_API(ettf_renderText_Solid);
EXDL_API(ettf_renderUTF8_Solid);
EXDL_API(ettf_renderUNICODE_Solid);
EXDL_API(ettf_renderGlyph_Solid);
EXDL_API(ettf_renderText_Shaded);
EXDL_API(ettf_renderUTF8_Shaded);
EXDL_API(ettf_renderUNICODE_Shaded);
EXDL_API(ettf_renderGlyph_Shaded);
EXDL_API(ettf_renderText_Blended);
EXDL_API(ettf_renderUTF8_Blended);
EXDL_API(ettf_renderUNICODE_Blended);
EXDL_API(ettf_renderGlyph_Blended);
EXDL_API(ettf_closeFont);
EXDL_API(ettf_quit);
EXDL_API(ettf_wasInit);

#else // COMPILE_TTF

  enum { _ENUM_EXDL_TTF = EXDL_TTF_H };

#endif // COMPILE_TTF

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
