/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_ttf.c,v 1.0 2008/12/29 14:45:38 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_TTF

#include <string.h>
#include <stdlib.h>

EXDL_API(ettf_linked_Version)
{
  /* const SDL_version* TTF_Linked_Version(void) */

  /* exp : This works similar to SDL_Linked_Version and SDL VERSION. */
  /*       Using these you can compare the runtime version to the version that you */
  /*       compiled with. */
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

  /* exp : This function tells SDL ttf whether UNICODE (Uint16 per character) text */
  /*       is generally byteswapped. A UNICODE BOM NATIVE or UNICODE BOM SWAPPED */
  /*       character in a string will temporarily override this setting for the */
  /*       remainder of that string, however this setting will be restored for the */
  /*       next one. The default mode is non-swapped, native endianess of the CPU. */
  /* inp : swapped = if non-zero then UNICODE data is byte swapped relative to the */
  /*                 CPU’s native endianess. if zero, then do not swap UNICODE data, */
  /*                 use the CPU’s native endianess. */
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

  /* exp : Initialize the truetype font API. */
  /*       This must be called before using other functions in this library, */
  /*       excepting TTF_WasInit. */
  /*       SDL does not have to be initialized before this call. */
  /* ret : 0 on success, -1 on errors */

  CATCH_RESULT(int)

    TTF_Init
    (
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_openFont)
{
  /* TTF_Font* TTF_OpenFont(const char* file, int ptsize) */

  /* exp : Load file for use as a font, at ptsize size. This is actually */
  /*       TTF_OpenFontIndex(file, ptsize, 0). This can load TTF and FON files. */
  /* inp : file   = File name to load font from. */
  /* inp : ptsize = Point size (based on 72DPI) to load font as. This basically */
  /*                translates to pixel height. */
  /* ret : a pointer to the font as a TTF_Font. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,  ptsize)
    STACK_FMT_DATA(char, file[])
  STACK_FMT_END()

  CATCH_RESULT(TTF_Font*)

    TTF_OpenFont
    ( STACK_GET_ADDR(file)
    , STACK_GET_DATA(ptsize)
    );

  THROW_POINTER()
}

EXDL_API(ettf_openFontIndex)
{
  /* TTF_Font* TTF_OpenFontIndex(const char* file, int ptsize, long index) */

  /* exp : Load file, face index, for use as a font, at ptsize size. This is actually */
  /*       TTF_OpenFontIndexRW(SDL_RWFromFile(file), ptsize, index), but checks that */
  /*       the RWops it creates is not NULL. This can load TTF and FON files. */
  /* inp : file   = File name to load font from.
  /* inp : ptsize = Point size (based on 72DPI) to load font as. This basically */
  /*                translates to pixel height. */
  /* inp : index  = choose a font face from a multiple font face containing file. */
  /*                The first face is always index 0. */
  /* ret : a pointer to the font as a TTF_Font. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,  ptsize)
    STACK_FMT_DATA(long, index)
    STACK_FMT_DATA(char, file[])
  STACK_FMT_END()

  CATCH_RESULT(TTF_Font*)

    TTF_OpenFontIndex
    ( STACK_GET_ADDR(file)
    , STACK_GET_DATA(ptsize)
    , STACK_GET_DATA(index)
    );

  THROW_POINTER()
}

EXDL_API(ettf_openFontRW)
{
  /* TTF_Font* TTF_OpenFontRW(SDL_RWops* src, int freesrc, int ptsize) */

  /* exp : Load src for use as a font, at ptsize size. This is actually */
  /*       TTF_OpenFontIndexRW(src,freesrc, ptsize, 0) This can load TTF and FON */
  /*       formats. Using SDL_RWops is not covered here, but they enable you to */
  /*       load from almost any source. */
  /* inp : src     = The source SDL RWops as a pointer. The font is loaded from this. */
  /*               > src is not checked for NULL, so be careful. */
  /* inp : freesrc = A non-zero value mean is will automatically close/free the src for you. */
  /* inp : ptsize  = Point size (based on 72DPI) to load font as. This basically */
  /*                 translates to pixel height. */
  /* ret : a pointer to the font as a TTF_Font. NULL is returned on errors. */

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

  /* exp : Load src, face index, for use as a font, at ptsize size. This can load */
  /*       TTF and FON formats. Using SDL_RWops is not covered here, but they enable */
  /*       you to load from almost any source. */
  /* inp : src     = The source SDL RWops as a pointer. The font is loaded from this. */
  /*               > src is not checked for NULL, so be careful. */
  /* inp : freesrc = A non-zero value mean is will automatically close/free the src for you. */
  /* inp : ptsize  = Point size (based on 72DPI) to load font as. This basically */
  /*                 translates to pixel height. */
  /* inp : index   = choose a font face from a multiple font face containing file. */
  /*                 The first face is always index 0. */
  /* ret : a pointer to the font as a TTF_Font. NULL is returned on errors. */

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

  /* exp : Get the rendering style of the loaded font. */
  /* inp : font = The loaded font to get the style of */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* ret : The style as a bitmask composed of the following masks: */
  /*       TTF STYLE BOLD | TTF STYLE ITALIC | TTF STYLE UNDERLINE */
  /*       If no style is set then TTF STYLE NORMAL is returned. */

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

  /* exp : Set the rendering style of the loaded font. */
  /*     > This will flush the internal cache of previously rendered glyphs, even if */
  /*       there is no change in style, so it may be best to check the current style */
  /*       using TTF GetFontStyle first. */
  /* inp : font  = The loaded font to get the style of */
  /*             > Passing a NULL font into this function will cause a segfault. */
  /* inp : style = A bitmask of the desired style composed from the TTF_STYLE_* */
  /*               defined values */
  /*             > I’ve seen that combining TTF STYLE UNDERLINE with anything can */
  /*               cause a segfault, other combinations may also do this. Some brave */
  /*               soul may find the cause of this and fix it... */

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

  /* exp : Get the maximum pixel height of all glyphs of the loaded font. You may */
  /*       use this height for rendering text as close together vertically as possible, */
  /*       though adding at least one pixel height to it will space it so they can’t */
  /*       touch. Remember that SDL ttf doesn’t handle multiline printing, so you are */
  /*       responsible for line spacing, see the TTF FontLineSkip as well. */
  /* inp : font = The loaded font to get the max height of */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* ret : The maximum pixel height of all glyphs in the font. */

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

  /* exp : Get the maximum pixel ascent of all glyphs of the loaded font. This can */
  /*       also be interpreted as the distance from the top of the font to the baseline. */
  /*       It could be used when drawing an individual glyph relative to a top point, */
  /*       by combining it with the glyph’s maxy metric to resolve the top of the */
  /*       rectangle used when blitting the glyph on the screen. */
  /*     > rect.y = top + TTF_FontAscent(font) - glyph_metric.maxy; */
  /* inp : font = The loaded font to get the ascent (height above baseline) of */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* ret : The maximum pixel ascent of all glyphs in the font. */

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

  /* exp : Get the maximum pixel descent of all glyphs of the loaded font. This can */
  /*       also be interpreted as the distance from the baseline to the bottom of the */
  /*       font. It could be used when drawing an individual glyph relative to a bottom */
  /*       point, by combining it with the glyph’s maxy metric to resolve the top of */
  /*       the rectangle used when blitting the glyph on the screen. */
  /*     > rect.y = bottom - TTF_FontDescent(font) - glyph_metric.maxy; */
  /* inp : font = The loaded font to get the descent (height below baseline) of */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* ret : The maximum pixel height of all glyphs in the font. */

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

  /* exp : Get the reccomended pixel height of a rendered line of text of the loaded */
  /*       font. This is usually larger than the TTF FontHeight of the font. */
  /* inp : font = The loaded font to get the line skip height of */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* ret : The maximum pixel height of all glyphs in the font. */

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

  /* exp : Get the number of faces ("sub-fonts") available in the loaded font. This */
  /*       is a count of the number of specific fonts (based on size and style and ???) */
  /*       contained in the font itself. It seems to be a useless fact to know, since */
  /*       it can’t be applied in any other SDL ttf functions. */
  /* inp : font = The loaded font to get the number of available faces from. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* ret : The number of faces in the font. */

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

  /* exp : Test if the current font face of the loaded font is a fixed width font. */
  /*       Fixed width fonts are monospace, meaning every character that exists in */
  /*       the font is the same width, thus you can assume that a rendered string’s */
  /*       width is going to be the result of a simple calculation: */
  /*     > glyph_width * string_length */
  /* inp : font = The loaded font to get the fixed width status of. */
  /*     > Passing a NULL font into this function will cause a segfault. */
  /* ret : >0 if font is a fixed width font. 0 if not a fixed width font. */

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

  /* exp : Get the current font face family name from the loaded font. This function */
  /*       may return a NULL pointer, in which case the information is not available. */
  /* inp : font = The loaded font to get the current face family name of. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* ret : The current family name of of the face of the font, or NULL perhaps. */

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

  /* exp : Get the current font face style name from the loaded font. This function */
  /*       may return a NULL pointer, in which case the information is not available. */
  /* inp : font = The loaded font to get the current face style name of. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* ret : The current style name of of the face of the font, or NULL perhaps. */

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

  /* exp : Get desired glyph metrics of the UNICODE chargiven in ch from the loaded font. */
  /* inp : font = The loaded font from which to get the glyph metrics of ch from */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : ch      = the UNICODE char of which to get the glyph metrics for */
  /* inp : minx    = pointer to int to store the retuned minimum X offset into, */
  /*                 or NULL when no return value desired. */
  /* inp : maxx    = pointer to int to store the retuned maximum X offset into, */
  /*                 or NULL when no return value desired. */
  /* inp : miny    = pointer to int to store the retuned minimum Y offset into, */
  /*                 or NULL when no return value desired. */
  /* inp : maxy    = pointer to int to store the retuned maximum Y offset into, */
  /*                 or NULL when no return value desired. */
  /* inp : advance = pointer to int to store the retuned advance offset into, */
  /*                 or NULL when no return value desired. */
  /* ret : 0 on success, with all non-NULL parameters set to the glyph metric as */
  /*       appropriate. -1 on errors, such as when the glyph named by ch does not */
  /*       exist in the font. */

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

  /* exp : Calculate the resulting surface size of the LATIN1 encoded text rendered */
  /*       using font. No actual rendering it done, however correct kerning is done */
  /*       to getthe actual width. The height returned in w is the same as you can */
  /*       get using TTF FontHeight. */
  /* inp : font = The loaded font to use to calculate the size of the string with. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The LATIN1 null terminated string to size up. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : w    = pointer to int in which to fill the text width, or NULL for no */
  /*              desired return value. */
  /* inp : h    = pointer to int in which to fill the text height, or NULL for no */
  /*              desired return value. */
  /* ret : 0 on success with the ints pointed to by w and h set as appropriate, */
  /*       if they are not NULL. -1 is returned on errors, such as a glyph in the */
  /*       string not being found. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_LPTR(int*,      w)
    STACK_FMT_LPTR(int*,      h)
    STACK_FMT_DATA(char,      text[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_SizeText
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(w)
    , STACK_GET_DATA(h)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_sizeUTF8)
{
  /* int TTF_SizeUTF8(TTF_Font* font, const char* text, int* w, int* h) */

  /* exp : Calculate the resulting surface size of the UTF8 encoded text rendered */
  /*       using font. No actual rendering it done, however correct kerning is done */
  /*       to getthe actual width. The height returned in w is the same as you can */
  /*       get using TTF FontHeight. */
  /* inp : font = The loaded font to use to calculate the size of the string with. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The UTF8 null terminated string to size up. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : w    = pointer to int in which to fill the text width, or NULL for no */
  /*              desired return value. */
  /* inp : h    = pointer to int in which to fill the text height, or NULL for no */
  /*              desired return value. */
  /* ret : 0 on success with the ints pointed to by w and h set as appropriate, */
  /*       if they are not NULL. -1 is returned on errors, such as a glyph in the */
  /*       string not being found. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_LPTR(int*,      w)
    STACK_FMT_LPTR(int*,      h)
    STACK_FMT_DATA(char,      text[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_SizeUTF8
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(w)
    , STACK_GET_DATA(h)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_sizeUNICODE)
{
  /* int TTF_SizeUNICODE(TTF_Font* font, const Uint16* text, int* w, int* h) */

  /* exp : Calculate the resulting surface size of the UNICODE encoded text rendered */
  /*       using font. No actual rendering it done, however correct kerning is done */
  /*       to getthe actual width. The height returned in w is the same as you can */
  /*       get using TTF FontHeight. */
  /* inp : font = The loaded font to use to calculate the size of the string with. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The UNICODE null terminated string to size up. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : w    = pointer to int in which to fill the text width, or NULL for no */
  /*              desired return value. */
  /* inp : h    = pointer to int in which to fill the text height, or NULL for no */
  /*              desired return value. */
  /* ret : 0 on success with the ints pointed to by w and h set as appropriate, */
  /*       if they are not NULL. -1 is returned on errors, such as a glyph in the */
  /*       string not being found. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_LPTR(int*,      w)
    STACK_FMT_LPTR(int*,      h)
    STACK_FMT_DATA(Uint16,    text[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    TTF_SizeUNICODE
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(w)
    , STACK_GET_DATA(h)
    );

  THROW_RESULT(int)
}

EXDL_API(ettf_renderText_Solid)
{
  /* SDL_Surface* TTF_RenderText_Solid(TTF_Font* font, const char* text, SDL_Color fg) */

  /* exp : Render the LATIN1 encoded text using font with fg color onto a new surface, */
  /*       using the Solid mode (see Render). The caller (you!) is responsible for */
  /*       freeing any returned surface. */
  /* inp : font = Font to render the text with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The LATIN1 null terminated string to render. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : fg   = The color to render the text in. This becomes colormap index 1. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_DATA(SDL_Color, fg)
    STACK_FMT_DATA(char,      text[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderText_Solid
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUTF8_Solid)
{
  /* SDL_Surface* TTF_RenderUTF8_Solid(TTF_Font* font, const char* text, SDL_Color fg) */

  /* exp : Render the UTF8 encoded text using font with fg color onto a new surface, */
  /*       using the Solid mode (see Render). The caller (you!) is responsible for */
  /*       freeing any returned surface. */
  /* inp : font = Font to render the text with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The UTF8 null terminated string to render. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : fg   = The color to render the text in. This becomes colormap index 1. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_DATA(SDL_Color, fg)
    STACK_FMT_DATA(char,      text[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUTF8_Solid
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUNICODE_Solid)
{
  /* SDL_Surface* TTF_RenderUNICODE_Solid(TTF_Font* font, const Uint16* text, SDL_Color fg) */

  /* exp : Render the UNICODE encoded text using font with fg color onto a new surface, */
  /*       using the Solid mode (see Render). The caller (you!) is responsible for */
  /*       freeing any returned surface. */
  /* inp : font = Font to render the text with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The UNICODE null terminated string to render. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : fg   = The color to render the text in. This becomes colormap index 1. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*, font)
    STACK_FMT_DATA(SDL_Color, fg)
    STACK_FMT_DATA(Uint16,    text[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUNICODE_Solid
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderGlyph_Solid)
{
  /* SDL_Surface* TTF_RenderGlyph_Solid(TTF_Font* font, Uint16 ch, SDL_Color fg) */

  /* exp : Render the glyph for the UNICODE ch using font with fg color onto a new */
  /*       surface, using the Solid mode (see Render). The caller (you!) is */
  /*       responsible for freeing any returned surface. */
  /* inp : font = Font to render the glyph with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : ch   = The UNICODE character to render. */
  /* inp : fg   = The color to render the glyph in. This becomes colormap index 1. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors, such as when */
  /*       the glyph not available in the font.. */

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

  /* exp : Render the LATIN1 encoded text using font with fg color onto a new surface */
  /*       filled with the bg color, using the Shaded mode (see Render). The caller */
  /*       (you!) is responsible for freeing any returned surface. */
  /* inp : font = Font to render the text with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The LATIN1 null terminated string to render. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : fg   = The color to render the text in. This becomes colormap index 1. */
  /* inp : bg   = The color to render the background box in. This becomes colormap index 0. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_DATA(SDL_Color,   fg)
    STACK_FMT_DATA(SDL_Color,   bg)
    STACK_FMT_DATA(char,        text[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderText_Shaded
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(fg)
    , STACK_GET_DATA(bg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUTF8_Shaded)
{
  /* SDL_Surface* TTF_RenderUTF8_Shaded(TTF_Font* font, const char* text, SDL_Color fg, SDL_Color bg) */

  /* exp : Render the UTF8 encoded text using font with fg color onto a new surface */
  /*       filled with the bg color, using the Shaded mode (see Render). The caller */
  /*       (you!) is responsible for freeing any returned surface. */
  /* inp : font = Font to render the text with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The UTF8 null terminated string to render. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : fg   = The color to render the text in. This becomes colormap index 1. */
  /* inp : bg   = The color to render the background box in. This becomes colormap index 0. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_DATA(SDL_Color,   fg)
    STACK_FMT_DATA(SDL_Color,   bg)
    STACK_FMT_DATA(char,        text[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUTF8_Shaded
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(fg)
    , STACK_GET_DATA(bg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUNICODE_Shaded)
{
  /* SDL_Surface* TTF_RenderUNICODE_Shaded(TTF_Font* font, const Uint16* text, SDL_Color fg, SDL_Color bg) */

  /* exp : Render the UNICODE encoded text using font with fg color onto a new surface */
  /*       filled with the bg color, using the Shaded mode (see Render). The caller */
  /*       (you!) is responsible for freeing any returned surface. */
  /* inp : font = Font to render the text with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The UNICODE null terminated string to render. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : fg   = The color to render the text in. This becomes colormap index 1. */
  /* inp : bg   = The color to render the background box in. This becomes colormap index 0. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,     font)
    STACK_FMT_DATA(SDL_Color,     fg)
    STACK_FMT_DATA(SDL_Color,     bg)
    STACK_FMT_DATA(Uint16,        text[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUNICODE_Shaded
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(fg)
    , STACK_GET_DATA(bg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderGlyph_Shaded)
{
  /* SDL_Surface* TTF_RenderGlyph_Shaded(TTF_Font* font, Uint16 ch, SDL_Color fg, SDL_Color bg) */

  /* exp : Render the glyph for the UNICODE ch using font with fg color onto a new surface */
  /*       filled with the bg color, using the Shaded mode (see Render). The caller */
  /*       (you!) is responsible for freeing any returned surface. */
  /* inp : font = Font to render the text with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : ch   = The UNICODE character to render. */
  /* inp : fg   = The color to render the glyph in. This becomes colormap index 1. */
  /* inp : bg   = The color to render the background box in. This becomes colormap index 0. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors, such as when */
  /*       the glyph not available in the font. */

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

  /* exp : Render the LATIN1 encoded text using font with fg color onto a new */
  /*       surface, using the Blended mode (see Render). The caller (you!) is */
  /*       responsible for freeing any returned surface. */
  /* inp : font = Font to render the text with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The LATIN1 null terminated string to render. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : fg   = The color to render the text in. Pixels are blended between */
  /*              transparent and this color to draw the sntialiased glyphs. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_DATA(SDL_Color,   fg)
    STACK_FMT_DATA(char,        text)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderText_Blended
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUTF8_Blended)
{
  /* SDL_Surface* TTF_RenderUTF8_Blended(TTF_Font* font, const char* text, SDL_Color fg) */

  /* exp : Render the UTF8 encoded text using font with fg color onto a new */
  /*       surface, using the Blended mode (see Render). The caller (you!) is */
  /*       responsible for freeing any returned surface. */
  /* inp : font = Font to render the text with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The UTF8 null terminated string to render. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : fg   = The color to render the text in. Pixels are blended between */
  /*              transparent and this color to draw the sntialiased glyphs. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,   font)
    STACK_FMT_DATA(SDL_Color,   fg)
    STACK_FMT_DATA(char,        text)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUTF8_Blended
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderUNICODE_Blended)
{
  /* SDL_Surface* TTF_RenderUNICODE_Blended(TTF_Font* font, const Uint16* text, SDL_Color fg) */

  /* exp : Render the UNICODE encoded text using font with fg color onto a new */
  /*       surface, using the Blended mode (see Render). The caller (you!) is */
  /*       responsible for freeing any returned surface. */
  /* inp : font = Font to render the text with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : text = The UNICODE null terminated string to render. */
  /*            > Passing a NULL text into this function will result in undefined behavior. */
  /* inp : fg   = The color to render the text in. Pixels are blended between */
  /*              transparent and this color to draw the sntialiased glyphs. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(TTF_Font*,     font)
    STACK_FMT_DATA(SDL_Color,     fg)
    STACK_FMT_DATA(Uint16,        text[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    TTF_RenderUNICODE_Blended
    ( STACK_GET_DATA(font)
    , STACK_GET_ADDR(text)
    , STACK_GET_DATA(fg)
    );

  THROW_POINTER()
}

EXDL_API(ettf_renderGlyph_Blended)
{
  /* SDL_Surface* TTF_RenderGlyph_Blended(TTF_Font* font, Uint16 ch, SDL_Color fg) */

  /* exp : Render the glyph for the UNICODE ch using font with fg color onto a new */
  /*       surface, using the Blended mode (see Render). The caller (you!) is */
  /*       responsible for freeing any returned surface. */
  /* inp : font = Font to render the glyph with. A NULL pointer is not checked. */
  /*            > Passing a NULL font into this function will cause a segfault. */
  /* inp : ch   = The UNICODE character to render. */
  /* inp : fg   = The color to render the glyph in. Pixels are blended between */
  /*              transparent and this color to draw the antialiased glyphs. */
  /* ret : a pointer to a new SDL Surface. NULL is returned on errors, such as */
  /*       when the glyph not available in the font. */

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

  /* exp : Free the memory used by font, and free font itself as well. Do not use */
  /*       font after this without loading a new font to it. */
  /* inp : font = Pointer to the TTF Font to free. */

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

  /* exp : Shutdown and cleanup the truetype font API. */
  /*       After calling this the SDL ttf functions should not be used, excepting */
  /*       TTF_WasInit. You may, of course, use TTF_Init to use the functionality again. */

  TTF_Quit
  (
  );
}

EXDL_API(ettf_wasInit)
{
  /* int TTF_WasInit(void) */

  /* exp : Query the initilization status of the truetype font API. */
  /*       You may, of course, use this before TTF_Init to avoid initilizing twice */
  /*       in a row. Or use this to determine if you need to call TTF_Quit. */

  CATCH_RESULT(int)

    TTF_WasInit
    (
    );

  THROW_RESULT(int)
}

#endif // COMPILE_TTF
