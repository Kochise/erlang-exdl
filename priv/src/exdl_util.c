/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_util.c,v 1.4 2005/06/29 14:45:39 dgud Exp $
 */

/* 
 * Some useful extra functions   
 */

#include "exdl.h"

#ifdef COMPILE_GL

EXDL_API(copySdlImage2GLArray)
{
  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Surface*, image)
    STACK_FMT_DATA(Uint8,        type)
  STACK_FMT_END()

  Uint8*       rowhi;
  Uint8*       rowlo;
  GLubyte*     mem;
  
  int          i;
  int          j;
  int          k;

  Uint8        rs;
  Uint8        bs;
  Uint8        gs;
  Uint8        as;

  if(sd->next_bin == 1)
  {
    mem = (GLubyte *) sd->bin[0].base;

#if SDL_BYTEORDER == SDL_BIG_ENDIAN
    rs = 2 - *STACK_GET_ADDR(image)->format->Rshift >> 3;
    gs = 2 - *STACK_GET_ADDR(image)->format->Gshift >> 3;
    bs = 2 - *STACK_GET_ADDR(image)->format->Bshift >> 3;
    as = 2 - *STACK_GET_ADDR(image)->format->Ashift >> 3;     
#else
    rs = *STACK_GET_ADDR(image)->format->Rshift >> 3;
    gs = *STACK_GET_ADDR(image)->format->Gshift >> 3;
    bs = *STACK_GET_ADDR(image)->format->Bshift >> 3;
    as = *STACK_GET_ADDR(image)->format->Ashift >> 3;     
#endif

    /* GL surfaces are upsidedown (according to SDL examples)?? */
    k     = 0;
    rowhi = (Uint8*) STACK_GET_ADDR(image)->pixels;

    rowlo
    = rowhi
    + (*STACK_GET_ADDR(image)->h - 1)
    *  *STACK_GET_ADDR(image)->pitch
    ;
 
    for
    ( i  = 0
    ; i <  STACK_GET_ADDR(image)->h
    ; i += 1
    )
    {
      for
      ( j  = 0
      ; j <  STACK_GET_ADDR(image)->w
      ; j += 1
      )
      {
        switch(*STACK_GET_ADDR(image)->format->BytesPerPixel)
        {
          case 1:
            mem[k++] = STACK_GET_ADDR(image)->format->palette->colors[rowlo[j]].r;
            mem[k++] = STACK_GET_ADDR(image)->format->palette->colors[rowlo[j]].g;
            mem[k++] = STACK_GET_ADDR(image)->format->palette->colors[rowlo[j]].b;
            if(4 == STACK_GET_DATA(type))
              mem[k++] = 0;         
            break;   
          case 3:
            mem[k++] = rowlo[j*3 + rs];
            mem[k++] = rowlo[j*3 + gs];
            mem[k++] = rowlo[j*3 + bs];
            if(4 == STACK_GET_DATA(type))
              mem[k++] = 0; 
            break;
          case 4:
            mem[k++] = rowlo[j*4 + rs];
            mem[k++] = rowlo[j*4 + gs];
            mem[k++] = rowlo[j*4 + bs];
            if(4 == STACK_GET_DATA(type))
              mem[k++] = rowlo[j*4 + as];
            break;
          }
      }

      rowlo -= *STACK_GET_ADDR(image)->pitch;
    }

/*
    fprintf
    ( stderr
    , "i %d, j %d k%d\n\r"
    , i
    , j
    , k
    );
*/

    { /* Isolate RESULT */
      CATCH_RESULT(int)

        TRUE;

      THROW_RESULT(int)
    }
  
    exdl_free_binaries(sd);
  }
}

EXDL_API(mygl_alloc)
{
  unsigned size;

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(unsigned, size)
  STACK_FMT_END()

  /* buff will change below, let's save the data */
  size = STACK_GET_DATA(size);

  buff = exdl_getbuff
  ( sd
  , size
  );

  exdl_send
  ( sd
  , size
  );
}

EXDL_API(mygl_write)
{
  if(sd->next_bin == 1)
  {
    memcpy
    ( sd->bin[0].base
    , buff
    , len
    );
  }
  else if(sd->next_bin == 2)
  {
    memcpy
    ( sd->bin[0].base
    , sd->bin[1].base
    , sd->bin[1].size
    );
  }
  
  exdl_free_binaries(sd);
}

#endif // COMPILE_GL
