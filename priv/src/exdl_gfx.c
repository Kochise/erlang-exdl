/*
 *   Copyright(c) 2009 David Koch
 *
 *   See the file "license.terms" for information on usage and redistribution
 *   of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *      $Id: exdl_gfx.c,v 1.0 2009/07/16 14:45:38 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_GFX

/* SDL_framerate */

EXDL_API(egfx_initFramerate)
{
  /* void SDL_initFramerate(FPSmanager* manager) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(FPSmanager, manager[])
  STACK_FMT_END()

    SDL_initFramerate
    ( STACK_GET_ADDR(manager)
    );
}

EXDL_API(egfx_setFramerate)
{
  /* int SDL_setFramerate(FPSmanager* manager, int rate) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(FPSmanager*, manager)
    STACK_FMT_DATA(int,         rate)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_setFramerate
    ( STACK_GET_DATA(manager)
   ,  STACK_GET_DATA(rate)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_getFramerate)
{
  /* int SDL_getFramerate(FPSmanager* manager) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(FPSmanager, manager[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_getFramerate
    ( STACK_GET_ADDR(manager)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_framerateDelay)
{
  /* void SDL_framerateDelay(FPSmanager* manager) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(FPSmanager, manager[])
  STACK_FMT_END()

    SDL_framerateDelay
    ( STACK_GET_ADDR(manager)
    );
}

/* SDL_gfxBlitFunc */

EXDL_API(egfx_gfxBlitRGBA)
{
  /* int SDL_gfxBlitRGBA(SDL_Surface* src, SDL_Rect* srcrect, SDL_Surface* dst, SDL_Rect* dstrect) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, src)
    STACK_FMT_LPTR(SDL_Rect*,    srcrect)
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(SDL_Rect,     dstrect[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_gfxBlitRGBA
    ( STACK_GET_DATA(src)
   ,  STACK_GET_DATA(srcrect)
   ,  STACK_GET_DATA(dst)
   ,  STACK_GET_ADDR(dstrect)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_gfxSetAlpha)
{
  /* int SDL_gfxSetAlpha(SDL_Surface* src, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, src)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_gfxSetAlpha
    ( STACK_GET_DATA(src)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

/* SDL_gfxPrimitives */

EXDL_API(egfx_color)
{
  /* int pixelColor(SDL_Surface* dst, Sint16 x, Sint16 y, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    pixelColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int pixelRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    pixelRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int hlineColor(SDL_Surface* dst, Sint16 x1, Sint16 x2, Sint16 y, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    hlineColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int hlineRGBA(SDL_Surface* dst, Sint16 x1, Sint16 x2, Sint16 y, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    hlineRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int vlineColor(SDL_Surface* dst, Sint16 x, Sint16 y1, Sint16 y2, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    vlineColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int vlineRGBA(SDL_Surface* dst, Sint16 x, Sint16 y1, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    vlineRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int rectangleColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    rectangleColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int rectangleRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    rectangleRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int boxColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    boxColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int boxRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    boxRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int lineColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    lineColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int lineRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    lineRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int aalineColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    aalineColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int aalineRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    aalineRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int circleColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 r, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       r)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    circleColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int circleRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rad)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    circleRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rad)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int arcColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 r, Sint16 start, Sint16 end, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       r)
    STACK_FMT_DATA(Sint16,       start)
    STACK_FMT_DATA(Sint16,       end)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    arcColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(start)
   ,  STACK_GET_DATA(end)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int arcRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rad)
    STACK_FMT_DATA(Sint16,       start)
    STACK_FMT_DATA(Sint16,       end)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    arcRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rad)
   ,  STACK_GET_DATA(start)
   ,  STACK_GET_DATA(end)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int aacircleColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 r, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       r)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    aacircleColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int aacircleRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rad)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    aacircleRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rad)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_circleColor)
{
  /* int filledCircleColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 r, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       r)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledCircleColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_circleRGBA)
{
  /* int filledCircleRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rad)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledCircleRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rad)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int ellipseColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rx)
    STACK_FMT_DATA(Sint16,       ry)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    ellipseColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rx)
   ,  STACK_GET_DATA(ry)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int ellipseRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rx)
    STACK_FMT_DATA(Sint16,       ry)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    ellipseRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rx)
   ,  STACK_GET_DATA(ry)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int aaellipseColor(SDL_Surface* dst, Sint16 xc, Sint16 yc, Sint16 rx, Sint16 ry, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       xc)
    STACK_FMT_DATA(Sint16,       yc)
    STACK_FMT_DATA(Sint16,       rx)
    STACK_FMT_DATA(Sint16,       ry)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    aaellipseColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(xc)
   ,  STACK_GET_DATA(yc)
   ,  STACK_GET_DATA(rx)
   ,  STACK_GET_DATA(ry)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int aaellipseRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rx)
    STACK_FMT_DATA(Sint16,       ry)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    aaellipseRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rx)
   ,  STACK_GET_DATA(ry)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_ellipseColor)
{
  /* int filledEllipseColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rx)
    STACK_FMT_DATA(Sint16,       ry)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledEllipseColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rx)
   ,  STACK_GET_DATA(ry)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_ellipseRGBA)
{
  /* int filledEllipseRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rx)
    STACK_FMT_DATA(Sint16,       ry)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledEllipseRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rx)
   ,  STACK_GET_DATA(ry)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int pieColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rad)
    STACK_FMT_DATA(Sint16,       start)
    STACK_FMT_DATA(Sint16,       end)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    pieColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rad)
   ,  STACK_GET_DATA(start)
   ,  STACK_GET_DATA(end)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int pieRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rad)
    STACK_FMT_DATA(Sint16,       start)
    STACK_FMT_DATA(Sint16,       end)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    pieRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rad)
   ,  STACK_GET_DATA(start)
   ,  STACK_GET_DATA(end)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_pieColor)
{
  /* int filledPieColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rad)
    STACK_FMT_DATA(Sint16,       start)
    STACK_FMT_DATA(Sint16,       end)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledPieColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rad)
   ,  STACK_GET_DATA(start)
   ,  STACK_GET_DATA(end)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_pieRGBA)
{
  /* int filledPieRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Sint16,       rad)
    STACK_FMT_DATA(Sint16,       start)
    STACK_FMT_DATA(Sint16,       end)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledPieRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(rad)
   ,  STACK_GET_DATA(start)
   ,  STACK_GET_DATA(end)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int trigonColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Sint16,       x3)
    STACK_FMT_DATA(Sint16,       y3)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    trigonColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(x3)
   ,  STACK_GET_DATA(y3)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int trigonRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Sint16,       x3)
    STACK_FMT_DATA(Sint16,       y3)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    trigonRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(x3)
   ,  STACK_GET_DATA(y3)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int aatrigonColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Sint16,       x3)
    STACK_FMT_DATA(Sint16,       y3)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    aatrigonColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(x3)
   ,  STACK_GET_DATA(y3)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int aatrigonRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Sint16,       x3)
    STACK_FMT_DATA(Sint16,       y3)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    aatrigonRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(x3)
   ,  STACK_GET_DATA(y3)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_trigonColor)
{
  /* int filledTrigonColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Sint16,       x3)
    STACK_FMT_DATA(Sint16,       y3)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledTrigonColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(x3)
   ,  STACK_GET_DATA(y3)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_trigonRGBA)
{
  /* int filledTrigonRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x1)
    STACK_FMT_DATA(Sint16,       y1)
    STACK_FMT_DATA(Sint16,       x2)
    STACK_FMT_DATA(Sint16,       y2)
    STACK_FMT_DATA(Sint16,       x3)
    STACK_FMT_DATA(Sint16,       y3)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledTrigonRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x1)
   ,  STACK_GET_DATA(y1)
   ,  STACK_GET_DATA(x2)
   ,  STACK_GET_DATA(y2)
   ,  STACK_GET_DATA(x3)
   ,  STACK_GET_DATA(y3)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int polygonColor(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_DATA(Uint32,        color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    polygonColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int polygonRGBA(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_DATA(Uint8,         r)
    STACK_FMT_DATA(Uint8,         g)
    STACK_FMT_DATA(Uint8,         b)
    STACK_FMT_DATA(Uint8,         a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    polygonRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int aapolygonColor(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_DATA(Uint32,        color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    aapolygonColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int aapolygonRGBA(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_DATA(Uint8,         r)
    STACK_FMT_DATA(Uint8,         g)
    STACK_FMT_DATA(Uint8,         b)
    STACK_FMT_DATA(Uint8,         a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    aapolygonRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_polygonColor)
{
  /* int filledPolygonColor(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_DATA(Uint32,        color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledPolygonColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_polygonRGBA)
{
  /* int filledPolygonRGBA(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_DATA(Uint8,         r)
    STACK_FMT_DATA(Uint8,         g)
    STACK_FMT_DATA(Uint8,         b)
    STACK_FMT_DATA(Uint8,         a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledPolygonRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_polygon)
{
  /* int texturedPolygon(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, SDL_Surface* texture,int texture_dx,int texture_dy) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_LPTR(SDL_Surface*,  texture)
    STACK_FMT_DATA(int,           texture_dx)
    STACK_FMT_DATA(int,           texture_dy)
  STACK_FMT_END()

  CATCH_RESULT(int)

    texturedPolygon
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(texture)
   ,  STACK_GET_DATA(texture_dx)
   ,  STACK_GET_DATA(texture_dy)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_polygonColorMT)
{
  /* int filledPolygonColorMT(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint32 color, int** polyInts, int* polyAllocated) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_DATA(Uint32,        color)
    STACK_FMT_LPTR(int**,         polyInts)
    STACK_FMT_DATA(int,           polyAllocated[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledPolygonColorMT
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(color)
   ,  STACK_GET_DATA(polyInts)
   ,  STACK_GET_ADDR(polyAllocated)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_polygonRGBAMT)
{
  /* int filledPolygonRGBAMT(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a, int** polyInts, int* polyAllocated) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_DATA(Uint8,         r)
    STACK_FMT_DATA(Uint8,         g)
    STACK_FMT_DATA(Uint8,         b)
    STACK_FMT_DATA(Uint8,         a)
    STACK_FMT_LPTR(int**,         polyInts)
    STACK_FMT_DATA(int,           polyAllocated[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    filledPolygonRGBAMT
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
   ,  STACK_GET_DATA(polyInts)
   ,  STACK_GET_ADDR(polyAllocated)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_polygonMT)
{
  /* int texturedPolygonMT(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, SDL_Surface* texture,int texture_dx,int texture_dy, int** polyInts, int* polyAllocated) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_LPTR(SDL_Surface*,  texture)
    STACK_FMT_DATA(int,           texture_dx)
    STACK_FMT_DATA(int,           texture_dy)
    STACK_FMT_LPTR(int**,         polyInts)
    STACK_FMT_DATA(int,           polyAllocated[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    texturedPolygonMT
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(texture)
   ,  STACK_GET_DATA(texture_dx)
   ,  STACK_GET_DATA(texture_dy)
   ,  STACK_GET_DATA(polyInts)
   ,  STACK_GET_ADDR(polyAllocated)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int bezierColor(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, int s, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_DATA(int,           s)
    STACK_FMT_DATA(Uint32,        color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    bezierColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(s)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int bezierRGBA(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, int s, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*,  dst)
    STACK_FMT_LPTR(Sint16*,       vx)
    STACK_FMT_LPTR(Sint16*,       vy)
    STACK_FMT_DATA(int,           n)
    STACK_FMT_DATA(int,           s)
    STACK_FMT_DATA(Uint8,         r)
    STACK_FMT_DATA(Uint8,         g)
    STACK_FMT_DATA(Uint8,         b)
    STACK_FMT_DATA(Uint8,         a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    bezierRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(vx)
   ,  STACK_GET_DATA(vy)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(s)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int characterColor(SDL_Surface* dst, Sint16 x, Sint16 y, char c, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(char,         c)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    characterColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(c)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int characterRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, char c, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(char,         c)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    characterRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(c)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_color)
{
  /* int stringColor(SDL_Surface* dst, Sint16 x, Sint16 y, const char* c, Uint32 color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_LPTR(char*,        c)
    STACK_FMT_DATA(Uint32,       color)
  STACK_FMT_END()

  CATCH_RESULT(int)

    stringColor
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(c)
   ,  STACK_GET_DATA(color)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_rGBA)
{
  /* int stringRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, const char* c, Uint8 r, Uint8 g, Uint8 b, Uint8 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, dst)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_LPTR(char*,        c)
    STACK_FMT_DATA(Uint8,        r)
    STACK_FMT_DATA(Uint8,        g)
    STACK_FMT_DATA(Uint8,        b)
    STACK_FMT_DATA(Uint8,        a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    stringRGBA
    ( STACK_GET_DATA(dst)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(c)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(g)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_primitivesSetFont)
{
  /* void gfxPrimitivesSetFont(const void* fontdata, int cw, int ch) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(void*, fontdata)
    STACK_FMT_DATA(int,   cw)
    STACK_FMT_DATA(int,   ch)
  STACK_FMT_END()

    gfxPrimitivesSetFont
    ( STACK_GET_DATA(fontdata)
   ,  STACK_GET_DATA(cw)
   ,  STACK_GET_DATA(ch)
    );
}

/* SDL_imageFilter */

EXDL_API(egfx_imageFilterMMXdetect)
{
  /* int SDL_imageFilterMMXdetect(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    SDL_imageFilterMMXdetect
    (
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterMMXoff)
{
  /* void SDL_imageFilterMMXoff(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_imageFilterMMXoff
  (
  );
}

EXDL_API(egfx_imageFilterMMXon)
{
  /* void SDL_imageFilterMMXon(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_imageFilterMMXon
  (
  );
}

EXDL_API(egfx_imageFilterAdd)
{
  /* int SDL_imageFilterAdd(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterAdd
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterMean)
{
  /* int SDL_imageFilterMean(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterMean
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterSub)
{
  /* int SDL_imageFilterSub(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterSub
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterAbsDiff)
{
  /* int SDL_imageFilterAbsDiff(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterAbsDiff
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterMult)
{
  /* int SDL_imageFilterMult(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterMult
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterMultNor)
{
  /* int SDL_imageFilterMultNor(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterMultNor
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterMultDivby2)
{
  /* int SDL_imageFilterMultDivby2(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterMultDivby2
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterMultDivby4)
{
  /* int SDL_imageFilterMultDivby4(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterMultDivby4
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterBitAnd)
{
  /* int SDL_imageFilterBitAnd(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterBitAnd
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterBitOr)
{
  /* int SDL_imageFilterBitOr(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterBitOr
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterDiv)
{
  /* int SDL_imageFilterDiv(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Src2)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterDiv
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Src2)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterBitNegation)
{
  /* int SDL_imageFilterBitNegation(unsigned char* Src1, unsigned char* Dest, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterBitNegation
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterAddByte)
{
  /* int SDL_imageFilterAddByte(unsigned char* Src1, unsigned char* Dest, int length, unsigned char C) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  C)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterAddByte
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(C)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterAddUint)
{
  /* int SDL_imageFilterAddUint(unsigned char* Src1, unsigned char* Dest, int length, unsigned int C) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned int,   C)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterAddUint
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(C)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterAddByteToHalf)
{
  /* int SDL_imageFilterAddByteToHalf(unsigned char* Src1, unsigned char* Dest, int length, unsigned char C) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  C)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterAddByteToHalf
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(C)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterSubByte)
{
  /* int SDL_imageFilterSubByte(unsigned char* Src1, unsigned char* Dest, int length, unsigned char C) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  C)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterSubByte
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(C)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterSubUint)
{
  /* int SDL_imageFilterSubUint(unsigned char* Src1, unsigned char* Dest, int length, unsigned int C) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned int,   C)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterSubUint
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(C)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterShiftRight)
{
  /* int SDL_imageFilterShiftRight(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  N)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterShiftRight
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(N)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterShiftRightUint)
{
  /* int SDL_imageFilterShiftRightUint(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  N)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterShiftRightUint
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(N)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterMultByByte)
{
  /* int SDL_imageFilterMultByByte(unsigned char* Src1, unsigned char* Dest, int length, unsigned char C) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  C)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterMultByByte
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(C)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterShiftRightAndMultByByte)
{
  /* int SDL_imageFilterShiftRightAndMultByByte(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N, unsigned char C) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  N)
    STACK_FMT_DATA(unsigned char,  C)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterShiftRightAndMultByByte
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(N)
   ,  STACK_GET_DATA(C)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterShiftLeftByte)
{
  /* int SDL_imageFilterShiftLeftByte(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  N)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterShiftLeftByte
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(N)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterShiftLeftUint)
{
  /* int SDL_imageFilterShiftLeftUint(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  N)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterShiftLeftUint
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(N)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterShiftLeft)
{
  /* int SDL_imageFilterShiftLeft(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  N)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterShiftLeft
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(N)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterBinarizeUsingThreshold)
{
  /* int SDL_imageFilterBinarizeUsingThreshold(unsigned char* Src1, unsigned char* Dest, int length, unsigned char T) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  T)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterBinarizeUsingThreshold
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(T)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterClipToRange)
{
  /* int SDL_imageFilterClipToRange(unsigned char* Src1, unsigned char* Dest, int length, unsigned char Tmin, unsigned char Tmax) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(unsigned char,  Tmin)
    STACK_FMT_DATA(unsigned char,  Tmax)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterClipToRange
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(Tmin)
   ,  STACK_GET_DATA(Tmax)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterNormalizeLinear)
{
  /* int SDL_imageFilterNormalizeLinear(unsigned char* Src1, unsigned char* Dest, int length, int Cmin, int Cmax, int Nmin, int Nmax) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src1)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            length)
    STACK_FMT_DATA(int,            Cmin)
    STACK_FMT_DATA(int,            Cmax)
    STACK_FMT_DATA(int,            Nmin)
    STACK_FMT_DATA(int,            Nmax)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterNormalizeLinear
    ( STACK_GET_DATA(Src1)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(length)
   ,  STACK_GET_DATA(Cmin)
   ,  STACK_GET_DATA(Cmax)
   ,  STACK_GET_DATA(Nmin)
   ,  STACK_GET_DATA(Nmax)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterConvolveKernel3x3Divide)
{
  /* int SDL_imageFilterConvolveKernel3x3Divide(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char Divisor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            rows)
    STACK_FMT_DATA(int,            columns)
    STACK_FMT_LPTR(signed short*,  Kernel)
    STACK_FMT_DATA(unsigned char,  Divisor)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterConvolveKernel3x3Divide
    ( STACK_GET_DATA(Src)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(rows)
   ,  STACK_GET_DATA(columns)
   ,  STACK_GET_DATA(Kernel)
   ,  STACK_GET_DATA(Divisor)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterConvolveKernel5x5Divide)
{
  /* int SDL_imageFilterConvolveKernel5x5Divide(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char Divisor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            rows)
    STACK_FMT_DATA(int,            columns)
    STACK_FMT_LPTR(signed short*,  Kernel)
    STACK_FMT_DATA(unsigned char,  Divisor)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterConvolveKernel5x5Divide
    ( STACK_GET_DATA(Src)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(rows)
   ,  STACK_GET_DATA(columns)
   ,  STACK_GET_DATA(Kernel)
   ,  STACK_GET_DATA(Divisor)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterConvolveKernel7x7Divide)
{
  /* int SDL_imageFilterConvolveKernel7x7Divide(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char Divisor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            rows)
    STACK_FMT_DATA(int,            columns)
    STACK_FMT_LPTR(signed short*,  Kernel)
    STACK_FMT_DATA(unsigned char,  Divisor)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterConvolveKernel7x7Divide
    ( STACK_GET_DATA(Src)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(rows)
   ,  STACK_GET_DATA(columns)
   ,  STACK_GET_DATA(Kernel)
   ,  STACK_GET_DATA(Divisor)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterConvolveKernel9x9Divide)
{
  /* int SDL_imageFilterConvolveKernel9x9Divide(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char Divisor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            rows)
    STACK_FMT_DATA(int,            columns)
    STACK_FMT_LPTR(signed short*,  Kernel)
    STACK_FMT_DATA(unsigned char,  Divisor)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterConvolveKernel9x9Divide
    ( STACK_GET_DATA(Src)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(rows)
   ,  STACK_GET_DATA(columns)
   ,  STACK_GET_DATA(Kernel)
   ,  STACK_GET_DATA(Divisor)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterConvolveKernel3x3ShiftRight)
{
  /* int SDL_imageFilterConvolveKernel3x3ShiftRight(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char NRightShift) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            rows)
    STACK_FMT_DATA(int,            columns)
    STACK_FMT_LPTR(signed short*,  Kernel)
    STACK_FMT_DATA(unsigned char,  NRightShift)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterConvolveKernel3x3ShiftRight
    ( STACK_GET_DATA(Src)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(rows)
   ,  STACK_GET_DATA(columns)
   ,  STACK_GET_DATA(Kernel)
   ,  STACK_GET_DATA(NRightShift)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterConvolveKernel5x5ShiftRight)
{
  /* int SDL_imageFilterConvolveKernel5x5ShiftRight(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char NRightShift) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            rows)
    STACK_FMT_DATA(int,            columns)
    STACK_FMT_LPTR(signed short*,  Kernel)
    STACK_FMT_DATA(unsigned char,  NRightShift)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterConvolveKernel5x5ShiftRight
    ( STACK_GET_DATA(Src)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(rows)
   ,  STACK_GET_DATA(columns)
   ,  STACK_GET_DATA(Kernel)
   ,  STACK_GET_DATA(NRightShift)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterConvolveKernel7x7ShiftRight)
{
  /* int SDL_imageFilterConvolveKernel7x7ShiftRight(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char NRightShift) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            rows)
    STACK_FMT_DATA(int,            columns)
    STACK_FMT_LPTR(signed short*,  Kernel)
    STACK_FMT_DATA(unsigned char,  NRightShift)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterConvolveKernel7x7ShiftRight
    ( STACK_GET_DATA(Src)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(rows)
   ,  STACK_GET_DATA(columns)
   ,  STACK_GET_DATA(Kernel)
   ,  STACK_GET_DATA(NRightShift)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterConvolveKernel9x9ShiftRight)
{
  /* int SDL_imageFilterConvolveKernel9x9ShiftRight(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char NRightShift) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            rows)
    STACK_FMT_DATA(int,            columns)
    STACK_FMT_LPTR(signed short*,  Kernel)
    STACK_FMT_DATA(unsigned char,  NRightShift)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterConvolveKernel9x9ShiftRight
    ( STACK_GET_DATA(Src)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(rows)
   ,  STACK_GET_DATA(columns)
   ,  STACK_GET_DATA(Kernel)
   ,  STACK_GET_DATA(NRightShift)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterSobelX)
{
  /* int SDL_imageFilterSobelX(unsigned char* Src, unsigned char* Dest, int rows, int columns) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            rows)
    STACK_FMT_DATA(int,            columns)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterSobelX
    ( STACK_GET_DATA(Src)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(rows)
   ,  STACK_GET_DATA(columns)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterSobelXShiftRight)
{
  /* int SDL_imageFilterSobelXShiftRight(unsigned char* Src, unsigned char* Dest, int rows, int columns, unsigned char NRightShift) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned char*, Src)
    STACK_FMT_LPTR(unsigned char*, Dest)
    STACK_FMT_DATA(int,            rows)
    STACK_FMT_DATA(int,            columns)
    STACK_FMT_DATA(unsigned char,  NRightShift)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_imageFilterSobelXShiftRight
    ( STACK_GET_DATA(Src)
   ,  STACK_GET_DATA(Dest)
   ,  STACK_GET_DATA(rows)
   ,  STACK_GET_DATA(columns)
   ,  STACK_GET_DATA(NRightShift)
    );

  THROW_RESULT(int)
}

EXDL_API(egfx_imageFilterAlignStack)
{
  /* void SDL_imageFilterAlignStack(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_imageFilterAlignStack
  (
  );
}

EXDL_API(egfx_imageFilterRestoreStack)
{
  /* void SDL_imageFilterRestoreStack(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_imageFilterRestoreStack
  (
  );
}

/* SDL_rotozoom */

EXDL_API(egfx_surface)
{
  /* SDL_Surface* rotozoomSurface(SDL_Surface* src, double angle, double zoom, int smooth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, src)
    STACK_FMT_DATA(double,       angle)
    STACK_FMT_DATA(double,       zoom)
    STACK_FMT_DATA(int,          smooth)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    rotozoomSurface
    ( STACK_GET_DATA(src)
   ,  STACK_GET_DATA(angle)
   ,  STACK_GET_DATA(zoom)
   ,  STACK_GET_DATA(smooth)
    );

  THROW_POINTER()
}

EXDL_API(egfx_surfaceXY)
{
  /* SDL_Surface* rotozoomSurfaceXY(SDL_Surface* src, double angle, double zoomx, double zoomy, int smooth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, src)
    STACK_FMT_DATA(double,       angle)
    STACK_FMT_DATA(double,       zoomx)
    STACK_FMT_DATA(double,       zoomy)
    STACK_FMT_DATA(int,          smooth)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    rotozoomSurfaceXY
    ( STACK_GET_DATA(src)
   ,  STACK_GET_DATA(angle)
   ,  STACK_GET_DATA(zoomx)
   ,  STACK_GET_DATA(zoomy)
   ,  STACK_GET_DATA(smooth)
    );

  THROW_POINTER()
}

EXDL_API(egfx_surfaceSize)
{
  /* void rotozoomSurfaceSize(int width, int height, double angle, double zoom, int* dstwidth, int* dstheight) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,    width)
    STACK_FMT_DATA(int,    height)
    STACK_FMT_DATA(double, angle)
    STACK_FMT_DATA(double, zoom)
    STACK_FMT_LPTR(int*,   dstwidth)
    STACK_FMT_DATA(int,    dstheight[])
  STACK_FMT_END()

    rotozoomSurfaceSize
    ( STACK_GET_DATA(width)
   ,  STACK_GET_DATA(height)
   ,  STACK_GET_DATA(angle)
   ,  STACK_GET_DATA(zoom)
   ,  STACK_GET_DATA(dstwidth)
   ,  STACK_GET_ADDR(dstheight)
    );
}

EXDL_API(egfx_surfaceSizeXY)
{
  /* void rotozoomSurfaceSizeXY(int width, int height, double angle, double zoomx, double zoomy, int* dstwidth, int* dstheight) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,    width)
    STACK_FMT_DATA(int,    height)
    STACK_FMT_DATA(double, angle)
    STACK_FMT_DATA(double, zoomx)
    STACK_FMT_DATA(double, zoomy)
    STACK_FMT_LPTR(int*,   dstwidth)
    STACK_FMT_DATA(int,    dstheight[])
  STACK_FMT_END()

    rotozoomSurfaceSizeXY
    ( STACK_GET_DATA(width)
   ,  STACK_GET_DATA(height)
   ,  STACK_GET_DATA(angle)
   ,  STACK_GET_DATA(zoomx)
   ,  STACK_GET_DATA(zoomy)
   ,  STACK_GET_DATA(dstwidth)
   ,  STACK_GET_ADDR(dstheight)
    );
}

EXDL_API(egfx_surface)
{
  /* SDL_Surface* zoomSurface(SDL_Surface* src, double zoomx, double zoomy, int smooth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, src)
    STACK_FMT_DATA(double,       zoomx)
    STACK_FMT_DATA(double,       zoomy)
    STACK_FMT_DATA(int,          smooth)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    zoomSurface
    ( STACK_GET_DATA(src)
   ,  STACK_GET_DATA(zoomx)
   ,  STACK_GET_DATA(zoomy)
   ,  STACK_GET_DATA(smooth)
    );

  THROW_POINTER()
}

EXDL_API(egfx_surfaceSize)
{
  /* void zoomSurfaceSize(int width, int height, double zoomx, double zoomy, int* dstwidth, int* dstheight) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,    width)
    STACK_FMT_DATA(int,    height)
    STACK_FMT_DATA(double, zoomx)
    STACK_FMT_DATA(double, zoomy)
    STACK_FMT_LPTR(int*,   dstwidth)
    STACK_FMT_DATA(int,    dstheight[])
  STACK_FMT_END()

    zoomSurfaceSize
    ( STACK_GET_DATA(width)
   ,  STACK_GET_DATA(height)
   ,  STACK_GET_DATA(zoomx)
   ,  STACK_GET_DATA(zoomy)
   ,  STACK_GET_DATA(dstwidth)
   ,  STACK_GET_ADDR(dstheight)
    );
}

EXDL_API(egfx_surface)
{
  /* SDL_Surface* shrinkSurface(SDL_Surface* src, int factorx, int factory) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, src)
    STACK_FMT_DATA(int,          factorx)
    STACK_FMT_DATA(int,          factory)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    shrinkSurface
    ( STACK_GET_DATA(src)
   ,  STACK_GET_DATA(factorx)
   ,  STACK_GET_DATA(factory)
    );

  THROW_POINTER()
}

EXDL_API(egfx_surface90Degrees)
{
  /* SDL_Surface* rotateSurface90Degrees(SDL_Surface* pSurf, int numClockwiseTurns) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Surface*, pSurf)
    STACK_FMT_DATA(int,          numClockwiseTurns)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    rotateSurface90Degrees
    ( STACK_GET_DATA(pSurf)
   ,  STACK_GET_DATA(numClockwiseTurns)
    );

  THROW_POINTER()
}

#endif // COMPILE_GFX
