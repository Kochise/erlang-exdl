/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_ttf.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_TTF

EXDL_API(ettf_linked_Version)
{
  /* const SDL_version* TTF_Linked_Version(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(const SDL_version*)

    TTF_Linked_Version
    (
    );

  THROW_POINTER()
}

EXDL_API(ettf_byteSwappedUNICODE)
{
  /* void TTF_ByteSwappedUNICODE(int swapped) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, swapped)
  STACK_FMT_END()

    TTF_ByteSwappedUNICODE
    ( STACK_GET_DATA(swapped)
    );
}

EXDL_API(ettf_init)
{
  /* int TTF_Init(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    TTF_Init
    (
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_openFont)
{
  /* TTF_Font* TTF_OpenFont(const char* file, int ptsize) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(char*, file)
    STACK_FMT_DATA(int,   ptsize)
  STACK_FMT_END()

  CATCH_RESULT(TTF_Font*)

    TTF_OpenFont
    ( STACK_GET_DATA(file)
    , STACK_GET_DATA(ptsize)
    );

  THROW_POINTER()
}

EXDL_API(ettf_openFontIndex)
{
  /* TTF_Font* TTF_OpenFontIndex(const char* file, int ptsize, long index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(char*, file)
    STACK_FMT_DATA(int,   ptsize)
    STACK_FMT_DATA(long,  index)
  STACK_FMT_END()

  CATCH_RESULT(TTF_Font*)

    TTF_OpenFontIndex
    ( STACK_GET_DATA(file)
    , STACK_GET_DATA(ptsize)
    , STACK_GET_DATA(index)
    );

  THROW_POINTER()
}

EXDL_API(ettf_openFontRW)
{
  /* TTF_Font* TTF_OpenFontRW(SDL_RWops* src, int freesrc, int ptsize) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_RWops*, src)
    STACK_FMT_DATA(int,        freesrc)
    STACK_FMT_DATA(int,        ptsize)
  STACK_FMT_END()

  CATCH_RESULT(TTF_Font*)

    TTF_OpenFontRW
    ( STACK_GET_DATA(src)
    , STACK_GET_DATA(freesrc)
    , STACK_GET_DATA(ptsize)
    );

  THROW_POINTER()
}

EXDL_API(ettf_openFontIndexRW)
{
  /* TTF_Font* TTF_OpenFontIndexRW(SDL_RWops* src, int freesrc, int ptsize, long index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_RWops*, src)
    STACK_FMT_DATA(int,        freesrc)
    STACK_FMT_DATA(int,        ptsize)
    STACK_FMT_DATA(long,       index)
  STACK_FMT_END()

  CATCH_RESULT(TTF_Font*)

    TTF_OpenFontIndexRW
    ( STACK_GET_DATA(src)
    , STACK_GET_DATA(freesrc)
    , STACK_GET_DATA(ptsize)
    , STACK_GET_DATA(index)
    );

  THROW_POINTER()
}

EXDL_API(ettf_getFontStyle)
{
  /* int TTF_GetFontStyle(const TTF_Font* font) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TTF_Font, font[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_GetFontStyle
    ( STACK_GET_ADDR(font)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_setFontStyle)
{
  /* void TTF_SetFontStyle(TTF_Font* font, int style) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_DATA(int,       style)
  STACK_FMT_END()

    TTF_SetFontStyle
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(style)
    );
}

EXDL_API(ettf_fontHeight)
{
  /* int TTF_FontHeight(const TTF_Font* font) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TTF_Font, font[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_FontHeight
    ( STACK_GET_ADDR(font)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_fontAscent)
{
  /* int TTF_FontAscent(const TTF_Font* font) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TTF_Font, font[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_FontAscent
    ( STACK_GET_ADDR(font)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_fontDescent)
{
  /* int TTF_FontDescent(const TTF_Font* font) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TTF_Font, font[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_FontDescent
    ( STACK_GET_ADDR(font)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_fontLineSkip)
{
  /* int TTF_FontLineSkip(const TTF_Font* font) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TTF_Font, font[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_FontLineSkip
    ( STACK_GET_ADDR(font)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_fontFaces)
{
  /* long TTF_FontFaces(const TTF_Font* font) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TTF_Font, font[])
  STACK_FMT_END()

  CATCH_RESULT(long)

    TTF_FontFaces
    ( STACK_GET_ADDR(font)
    );

  THROW_RESULT(long)
}

EXDL_API(ettf_fontFaceIsFixedWidth)
{
  /* int TTF_FontFaceIsFixedWidth(const TTF_Font* font) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TTF_Font, font[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_FontFaceIsFixedWidth
    ( STACK_GET_ADDR(font)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_fontFaceFamilyName)
{
  /* char* TTF_FontFaceFamilyName(const TTF_Font* font) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TTF_Font, font[])
  STACK_FMT_END()

  CATCH_RESULT(char*)

    TTF_FontFaceFamilyName
    ( STACK_GET_ADDR(font)
    );

  THROW_STRING()
}

EXDL_API(ettf_fontFaceStyleName)
{
  /* char* TTF_FontFaceStyleName(const TTF_Font* font) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TTF_Font, font[])
  STACK_FMT_END()

  CATCH_RESULT(char*)

    TTF_FontFaceStyleName
    ( STACK_GET_ADDR(font)
    );

  THROW_STRING()
}

EXDL_API(ettf_glyphMetrics)
{
  /* int TTF_GlyphMetrics(TTF_Font* font, Uint16 ch, int* minx, int* maxx, int* miny, int* maxy, int* advance) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_DATA(Uint16,    ch)
    STACK_FMT_LPTR(int*,      minx)
    STACK_FMT_LPTR(int*,      maxx)
    STACK_FMT_LPTR(int*,      miny)
    STACK_FMT_LPTR(int*,      maxy)
    STACK_FMT_DATA(int,       advance[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_GlyphMetrics
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(ch)
    , STACK_GET_DATA(minx)
    , STACK_GET_DATA(maxx)
    , STACK_GET_DATA(miny)
    , STACK_GET_DATA(maxy)
    , STACK_GET_ADDR(advance)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_sizeText)
{
  /* int TTF_SizeText(TTF_Font* font, const char* text, int* w, int* h) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_LPTR(char*,       text)
    STACK_FMT_LPTR(int*,        w)
    STACK_FMT_DATA(int,         h[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_SizeText
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(w)
    , STACK_GET_ADDR(h)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_sizeUTF8)
{
  /* int TTF_SizeUTF8(TTF_Font* font, const char* text, int* w, int* h) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_LPTR(char*,       text)
    STACK_FMT_LPTR(int*,        w)
    STACK_FMT_DATA(int,         h[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_SizeUTF8
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(w)
    , STACK_GET_ADDR(h)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_sizeUNICODE)
{
  /* int TTF_SizeUNICODE(TTF_Font* font, const Uint16* text, int* w, int* h) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,     font)
    STACK_FMT_LPTR(Uint16*,       text)
    STACK_FMT_LPTR(int*,          w)
    STACK_FMT_DATA(int,           h[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_SizeUNICODE
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(w)
    , STACK_GET_ADDR(h)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_renderText_Solid)
{
  /* SDL_Surface* TTF_RenderText_Solid(TTF_Font* font, const char* text, SDL_Color fg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_LPTR(char*,       text)
    STACK_FMT_DATA(SDL_Color,   fg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderText_Solid
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUTF8_Solid)
{
  /* SDL_Surface* TTF_RenderUTF8_Solid(TTF_Font* font, const char* text, SDL_Color fg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_LPTR(char*,       text)
    STACK_FMT_DATA(SDL_Color,   fg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUTF8_Solid
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUNICODE_Solid)
{
  /* SDL_Surface* TTF_RenderUNICODE_Solid(TTF_Font* font, const Uint16* text, SDL_Color fg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,     font)
    STACK_FMT_LPTR(Uint16*,       text)
    STACK_FMT_DATA(SDL_Color,     fg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUNICODE_Solid
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderGlyph_Solid)
{
  /* SDL_Surface* TTF_RenderGlyph_Solid(TTF_Font* font, Uint16 ch, SDL_Color fg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_DATA(Uint16,    ch)
    STACK_FMT_DATA(SDL_Color, fg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderGlyph_Solid
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(ch)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderText_Shaded)
{
  /* SDL_Surface* TTF_RenderText_Shaded(TTF_Font* font, const char* text, SDL_Color fg, SDL_Color bg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_LPTR(char*,       text)
    STACK_FMT_DATA(SDL_Color,   fg)
    STACK_FMT_DATA(SDL_Color,   bg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderText_Shaded
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(fg)
    , STACK_GET_DATA(bg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUTF8_Shaded)
{
  /* SDL_Surface* TTF_RenderUTF8_Shaded(TTF_Font* font, const char* text, SDL_Color fg, SDL_Color bg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_LPTR(char*,       text)
    STACK_FMT_DATA(SDL_Color,   fg)
    STACK_FMT_DATA(SDL_Color,   bg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUTF8_Shaded
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(fg)
    , STACK_GET_DATA(bg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUNICODE_Shaded)
{
  /* SDL_Surface* TTF_RenderUNICODE_Shaded(TTF_Font* font, const Uint16* text, SDL_Color fg, SDL_Color bg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,     font)
    STACK_FMT_LPTR(Uint16*,       text)
    STACK_FMT_DATA(SDL_Color,     fg)
    STACK_FMT_DATA(SDL_Color,     bg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUNICODE_Shaded
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(fg)
    , STACK_GET_DATA(bg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderGlyph_Shaded)
{
  /* SDL_Surface* TTF_RenderGlyph_Shaded(TTF_Font* font, Uint16 ch, SDL_Color fg, SDL_Color bg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_DATA(Uint16,    ch)
    STACK_FMT_DATA(SDL_Color, fg)
    STACK_FMT_DATA(SDL_Color, bg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderGlyph_Shaded
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(ch)
    , STACK_GET_DATA(fg)
    , STACK_GET_DATA(bg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderText_Blended)
{
  /* SDL_Surface* TTF_RenderText_Blended(TTF_Font* font, const char* text, SDL_Color fg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_LPTR(char*,       text)
    STACK_FMT_DATA(SDL_Color,   fg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderText_Blended
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUTF8_Blended)
{
  /* SDL_Surface* TTF_RenderUTF8_Blended(TTF_Font* font, const char* text, SDL_Color fg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_LPTR(char*,       text)
    STACK_FMT_DATA(SDL_Color,   fg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUTF8_Blended
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUNICODE_Blended)
{
  /* SDL_Surface* TTF_RenderUNICODE_Blended(TTF_Font* font, const Uint16* text, SDL_Color fg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,     font)
    STACK_FMT_LPTR(Uint16*,       text)
    STACK_FMT_DATA(SDL_Color,     fg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUNICODE_Blended
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderGlyph_Blended)
{
  /* SDL_Surface* TTF_RenderGlyph_Blended(TTF_Font* font, Uint16 ch, SDL_Color fg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_DATA(Uint16,    ch)
    STACK_FMT_DATA(SDL_Color, fg)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderGlyph_Blended
    ( STACK_GET_DATA(font)
    , STACK_GET_DATA(ch)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_closeFont)
{
  /* void TTF_CloseFont(TTF_Font* font) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TTF_Font, font[])
  STACK_FMT_END()

    TTF_CloseFont
    ( STACK_GET_ADDR(font)
    );
}

EXDL_API(ettf_quit)
{
  /* void TTF_Quit(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  TTF_Quit
  (
  );
}

EXDL_API(ettf_wasInit)
{
  /* int TTF_WasInit(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    TTF_WasInit
    (
    );

  THROW_RESULT(int)
}

#endif // COMPILE_TTF
