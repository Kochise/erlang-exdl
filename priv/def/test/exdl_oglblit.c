/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_oglblit.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_OGLBLIT

EXDL_API(eglblt_init)
{
  /* int OGL_Init(int w, int h, int bpp, Uint32 flags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,    w)
    STACK_FMT_DATA(int,    h)
    STACK_FMT_DATA(int,    bpp)
    STACK_FMT_DATA(Uint32, flags)
  STACK_FMT_END()

  CATCH_RESULT(int)

    OGL_Init
    ( STACK_GET_DATA(w)
    , STACK_GET_DATA(h)
    , STACK_GET_DATA(bpp)
    , STACK_GET_DATA(flags)
    );

  THROW_RESULT(int)
}

EXDL_API(eglblt_freeTexture)
{
  /* void OGL_FreeTexture(OGL_Texture* texture) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(OGL_Texture, texture[])
  STACK_FMT_END()

    OGL_FreeTexture
    ( STACK_GET_ADDR(texture)
    );
}

EXDL_API(eglblt_flip)
{
  /* void OGL_Flip() */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  OGL_Flip
  (
  );
}

EXDL_API(eglblt_clear)
{
  /* void OGL_Clear() */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  OGL_Clear
  (
  );
}

EXDL_API(eglblt_blit)
{
  /* void OGL_Blit(OGL_Texture* texture, SDL_Rect* clipping, int x, int y, GLfloat vZoom, GLfloat hZoom, GLfloat rotation) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(OGL_Texture*, texture)
    STACK_FMT_LPTR(SDL_Rect*,    clipping)
    STACK_FMT_DATA(int,          x)
    STACK_FMT_DATA(int,          y)
    STACK_FMT_DATA(GLfloat,      vZoom)
    STACK_FMT_DATA(GLfloat,      hZoom)
    STACK_FMT_DATA(GLfloat,      rotation)
  STACK_FMT_END()

    OGL_Blit
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(clipping)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(vZoom)
    , STACK_GET_DATA(hZoom)
    , STACK_GET_DATA(rotation)
    );
}

EXDL_API(eglblt_fromSurface)
{
  /* OGL_Texture* OGL_FromSurface(SDL_Surface* surface) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Surface, surface[])
  STACK_FMT_END()

  CATCH_RESULT(OGL_Texture*)

    OGL_FromSurface
    ( STACK_GET_ADDR(surface)
    );

  THROW_POINTER()
}

EXDL_API(eglblt_fromSurfaceFree)
{
  /* OGL_Texture* OGL_FromSurfaceFree(SDL_Surface* surface) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Surface, surface[])
  STACK_FMT_END()

  CATCH_RESULT(OGL_Texture*)

    OGL_FromSurfaceFree
    ( STACK_GET_ADDR(surface)
    );

  THROW_POINTER()
}

#endif // COMPILE_OGLBLIT
