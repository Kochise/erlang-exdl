/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_spec.c,v 1.2 2005/06/29 14:45:39 dgud Exp $
 */

#include "exdl.h"

EXDL_API(esdl_getSurface)
{
  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Surface*, screen)
  STACK_FMT_END()

/*
  if(NULL == STACK_GET_DATA(screen))
  {
    error();
  }
*/

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(Uint32,           flags)
    FRAME_FMT_DATA(SDL_PixelFormat*, format)
    FRAME_FMT_DATA(int,              w)
    FRAME_FMT_DATA(int,              h)
    FRAME_FMT_DATA(Uint16,           pitch)
    FRAME_FMT_DATA(void*,            pixels)
    FRAME_FMT_DATA(int,              offset)
  FRAME_FMT_END()

    FRAME_SET_DATA(flags)  = STACK_GET_DATA(screen)->flags;
    FRAME_SET_DATA(format) = STACK_GET_DATA(screen)->format;
    FRAME_SET_DATA(w)      = STACK_GET_DATA(screen)->w;
    FRAME_SET_DATA(h)      = STACK_GET_DATA(screen)->h;
    FRAME_SET_DATA(pitch)  = STACK_GET_DATA(screen)->pitch;
    FRAME_SET_DATA(pixels) = STACK_GET_DATA(screen)->pixels;
    FRAME_SET_DATA(offset) = STACK_GET_DATA(screen)->offset;

  THROW_FRAME()
}

EXDL_API(esdl_getPalette)
{
  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Surface*, screen)
  STACK_FMT_END()

/*
  if(NULL == STACK_GET_DATA(screen))
  {
    error();
  }
*/
  
  int index
  = (STACK_GET_DATA(screen)->format->palette == NULL)
  ? 0
  : STACK_GET_DATA(screen)->format->palette->ncolors
  ;

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int,       ncolors)
    FRAME_FMT_DATA(SDL_Color, colors[])
  FRAME_FMT_SIZE(index * sizeof(SDL_Color))

    FRAME_SET_DATA(ncolors) = index;

    memcpy
    ( FRAME_GET_ADDR(colors)
    , STACK_GET_DATA(screen)->format->palette->colors
    , index * sizeof(SDL_Color)
    );

  THROW_FRAME()
}

EXDL_API(esdl_getPixelFormat)
{
  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Surface*, screen)
  STACK_FMT_END()

/*
  if
  (
       (NULL == STACK_GET_DATA(screen))
    || (NULL == STACK_GET_DATA(screen)->format)
  {
    error();
  }
*/

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(SDL_PixelFormat, format)
  FRAME_FMT_END()

    FRAME_SET_DATA(format) = *STACK_GET_DATA(screen)->format;

  THROW_FRAME()
}

EXDL_API(esdl_getPixels)
{
  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Surface*, screen)
    STACK_FMT_DATA(Sint16,       x)
    STACK_FMT_DATA(Sint16,       y)
    STACK_FMT_DATA(Uint16,       w)
    STACK_FMT_DATA(Uint16,       h)
  STACK_FMT_END()

/*
  if
  (
       (NULL == STACK_GET_DATA(screen)) 
    || (NULL == STACK_GET_DATA(screen)->pixels)
  {
    error();
  }
*/

  int rowi
  = STACK_GET_DATA(w)
  ;
  
  int rowl
  = STACK_GET_DATA(h)
  * STACK_GET_DATA(screen)->format->BytesPerPixel
  ;
  
  int rows
  = rowi
  * rowl
  ;

  Uint8* rowp
  = (Uint8*)            STACK_GET_DATA(screen)->pixels
  + STACK_GET_DATA(y) * STACK_GET_DATA(screen)->pitch
  + STACK_GET_DATA(x) * STACK_GET_DATA(screen)->format->BytesPerPixel
  ;

  { /* Isolate FRAME creation upon 'rows' assignation */
    FRAME_FMT_BEGIN()
      FRAME_FMT_DATA(Uint8, pixels[])
    FRAME_FMT_SIZE(rows)

    { /* Isolate the mess for lazy compilers */
      Uint8* dst
      = FRAME_GET_ADDR(pixels)
      ;

      for
      (
      ; rowi >  0
      ; rowi -= 1
      )
      {
        memcpy
        ( dst
        , rowp
        , rowl
        );
    
        dst  += rowl;
        rowp += STACK_GET_DATA(screen)->pitch;
      }
    }

    THROW_FRAME()
  }
}
