/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_svg.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_SVG

EXDL_API(esvg_load)
{
  /* SDL_svg_context* SVG_Load(const char* FileName) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char, FileName[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_svg_context*)

    SVG_Load
    ( STACK_GET_ADDR(FileName)
    );

  THROW_POINTER()
}

EXDL_API(esvg_loadBuffer)
{
  /* SDL_svg_context* SVG_LoadBuffer(char* data, int len) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(char*, data)
    STACK_FMT_DATA(int,   len)
  STACK_FMT_END()

  CATCH_RESULT(SDL_svg_context*)

    SVG_LoadBuffer
    ( STACK_GET_DATA(data)
    , STACK_GET_DATA(len)
    );

  THROW_POINTER()
}

EXDL_API(esvg_setOffset)
{
  /* int SVG_SetOffset(SDL_svg_context* Source, double aOffsetX, double aOffsetY) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_svg_context*, Source)
    STACK_FMT_DATA(double,           aOffsetX)
    STACK_FMT_DATA(double,           aOffsetY)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SVG_SetOffset
    ( STACK_GET_DATA(Source)
    , STACK_GET_DATA(aOffsetX)
    , STACK_GET_DATA(aOffsetY)
    );

  THROW_RESULT(int)
}

EXDL_API(esvg_setScale)
{
  /* int SVG_SetScale(SDL_svg_context* Source, double aScaleX, double aScaleY) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_svg_context*, Source)
    STACK_FMT_DATA(double,           aScaleX)
    STACK_FMT_DATA(double,           aScaleY)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SVG_SetScale
    ( STACK_GET_DATA(Source)
    , STACK_GET_DATA(aScaleX)
    , STACK_GET_DATA(aScaleY)
    );

  THROW_RESULT(int)
}

EXDL_API(esvg_renderToSurface)
{
  /* int SVG_RenderToSurface(SDL_svg_context* Source, int X, int Y, SDL_Surface* Target) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_svg_context*, Source)
    STACK_FMT_DATA(int,              X)
    STACK_FMT_DATA(int,              Y)
    STACK_FMT_DATA(SDL_Surface,      Target[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SVG_RenderToSurface
    ( STACK_GET_DATA(Source)
    , STACK_GET_DATA(X)
    , STACK_GET_DATA(Y)
    , STACK_GET_ADDR(Target)
    );

  THROW_RESULT(int)
}

EXDL_API(esvg_free)
{
  /* void SVG_Free(SDL_svg_context* Source) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_svg_context, Source[])
  STACK_FMT_END()

    SVG_Free
    ( STACK_GET_ADDR(Source)
    );
}

EXDL_API(esvg_set_Flags)
{
  /* void SVG_Set_Flags(SDL_svg_context* c, unsigned long flags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_svg_context*, c)
    STACK_FMT_DATA(unsigned long,    flags)
  STACK_FMT_END()

    SVG_Set_Flags
    ( STACK_GET_DATA(c)
    , STACK_GET_DATA(flags)
    );
}

EXDL_API(esvg_width)
{
  /* float SVG_Width(SDL_svg_context* c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_svg_context, c[])
  STACK_FMT_END()

  CATCH_RESULT(float)

    SVG_Width
    ( STACK_GET_ADDR(c)
    );

  THROW_RESULT(float)
}

EXDL_API(esvg_height)
{
  /* float SVG_Height(SDL_svg_context* c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_svg_context, c[])
  STACK_FMT_END()

  CATCH_RESULT(float)

    SVG_Height
    ( STACK_GET_ADDR(c)
    );

  THROW_RESULT(float)
}

EXDL_API(esvg_version)
{
  /* int SVG_Version(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    SVG_Version
    (
    );

  THROW_RESULT(int)
}

EXDL_API(esvg_setClipping)
{
  /* void SVG_SetClipping(SDL_svg_context* c, int minx, int miny, int maxx, int maxy) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_svg_context*, c)
    STACK_FMT_DATA(int,              minx)
    STACK_FMT_DATA(int,              miny)
    STACK_FMT_DATA(int,              maxx)
    STACK_FMT_DATA(int,              maxy)
  STACK_FMT_END()

    SVG_SetClipping
    ( STACK_GET_DATA(c)
    , STACK_GET_DATA(minx)
    , STACK_GET_DATA(miny)
    , STACK_GET_DATA(maxx)
    , STACK_GET_DATA(maxy)
    );
}

#endif // COMPILE_SVG
