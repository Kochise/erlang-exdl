/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_oglblit.c,v 1.0 2008/12/29 14:45:38 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_OGLBLIT

#include <string.h>
#include <stdlib.h>

EXDL_API(eglblt_init)
{
  /* int OGL_Init(int w, int h, int bpp, Uint32 flags) */

  /* exp : Initializes SDL with OpenGL with the given width, height, color depth */
  /*       and flags. Note that OGL_Init does not return a pointer to the screen */
  /*       surface. You can't do much with the screen surface in OpenGL mode, but */
  /*       if you need it you could use the SDL-function SDL_GetVideoSurface() to */
  /*       get a pointer to it. */
  /* inp : w     = Desired width of the screen */
  /* inp : h     = Desired height of the screen */
  /* inp : bpp   = Desired bit depth of the screen */
  /* inp : flags = SDL_Surface flags, passed along to SDL_SetVideoMode. SDL_OPENGL */
  /*               is automatically added. Passing 0 is ok. */
  /* ret : 0 if it is successful and -1 if it encounters an error. */

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

  /* exp : Frees a OGL_Texture structure created with OGL_FromSurface. */
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

  /* exp : Flips the OpenGL buffers, updates the screen. */
  /* inp :  */
  /* ret :  */

  OGL_Flip
  (
  );
}

EXDL_API(eglblt_clear)
{
  /* void OGL_Clear() */

  /* exp : Clears the screen. */
  /* inp :  */
  /* ret :  */

  OGL_Clear
  (
  );
}

EXDL_API(eglblt_blit)
{
  /* void OGL_Blit(OGL_Texture* texture, SDL_Rect* clipping, int x, int y, GLfloat vZoom, GLfloat hZoom, GLfloat rotation) */

  /* exp : Blits an OGL_Texture to the screen. Note that blits are texture centered. */
  /*       So a blit of a 32 x 32 sized texture on position 64, 64 would result in a */
  /*       destination rectangle of x = 48, y = 48, w = 32, h = 32. This to make */
  /*       positioning more logical when zooming and rotating the texture. */
  /* inp : texture  = A pointer to the OGL_Texture you wish to blit to the screen. */
  /* inp : clipping = The area of the source texture you wish to blit. If NULL is */
  /*                  passed the whole texture will be used. */
  /* inp : x        = Horizontal target position of the blit. */
  /* inp : y        = Vertical target position of the blit. */
  /* inp : vZoom    = Vertical zoom of the resulting blit (0.5 = half the size, */
  /*                  2.0 = double the size). */
  /* inp : hZoom    = Horizontal zoom of the resulting blit. */
  /* inp : rotation = Rotation of the resulting blit in radians. */

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

  /* exp : Creates an OGL_Texture from an SDL_Surface. Should work on any surface */
  /*       in terms of color bit depth, color space and size as long as SDL can */
  /*       handle it. To avoid intermediary blits during conversion it is however */
  /*       most efficient to use RGB or RGBA surfaces with power of two width and height. */
  /* inp : surface = An SDL_Surface to convert to an OGL_Texture. */
  /* ret : A pointer to the new OGL_Texture, or NULL if it fails. Use SDL_GetError() */
  /*       to fetch any error messages. */

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
