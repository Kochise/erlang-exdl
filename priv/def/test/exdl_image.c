/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_image.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_IMAGE

EXDL_API(eimg_linked_Version)
{
  /* const SDL_version* IMG_Linked_Version(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(const SDL_version*)

    IMG_Linked_Version
    (
    );

  THROW_POINTER()
}

EXDL_API(eimg_init)
{
  /* int IMG_Init(int flags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, flags)
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_Init
    ( STACK_GET_DATA(flags)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_quit)
{
  /* void IMG_Quit(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  IMG_Quit
  (
  );
}

EXDL_API(eimg_loadTyped_RW)
{
  /* SDL_Surface* IMG_LoadTyped_RW(SDL_RWops* src, int freesrc, char* type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_RWops*, src)
    STACK_FMT_DATA(int,        freesrc)
    STACK_FMT_DATA(char,       type[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadTyped_RW
    ( STACK_GET_DATA(src)
    , STACK_GET_DATA(freesrc)
    , STACK_GET_ADDR(type)
    );

  THROW_POINTER()
}

EXDL_API(eimg_load)
{
  /* SDL_Surface* IMG_Load(const char* file) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char, file[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_Load
    ( STACK_GET_ADDR(file)
    );

  THROW_POINTER()
}

EXDL_API(eimg_load_RW)
{
  /* SDL_Surface* IMG_Load_RW(SDL_RWops* src, int freesrc) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_RWops*, src)
    STACK_FMT_DATA(int,        freesrc)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_Load_RW
    ( STACK_GET_DATA(src)
    , STACK_GET_DATA(freesrc)
    );

  THROW_POINTER()
}

EXDL_API(eimg_invertAlpha)
{
  /* int IMG_InvertAlpha(int on) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, on)
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_InvertAlpha
    ( STACK_GET_DATA(on)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isICO)
{
  /* int IMG_isICO(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isICO
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isCUR)
{
  /* int IMG_isCUR(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isCUR
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isBMP)
{
  /* int IMG_isBMP(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isBMP
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isGIF)
{
  /* int IMG_isGIF(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isGIF
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isJPG)
{
  /* int IMG_isJPG(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isJPG
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isLBM)
{
  /* int IMG_isLBM(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isLBM
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isPCX)
{
  /* int IMG_isPCX(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isPCX
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isPNG)
{
  /* int IMG_isPNG(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isPNG
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isPNM)
{
  /* int IMG_isPNM(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isPNM
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isTIF)
{
  /* int IMG_isTIF(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isTIF
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isXCF)
{
  /* int IMG_isXCF(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isXCF
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isXPM)
{
  /* int IMG_isXPM(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isXPM
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_isXV)
{
  /* int IMG_isXV(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    IMG_isXV
    ( STACK_GET_ADDR(src)
    );

  THROW_RESULT(int)
}

EXDL_API(eimg_loadICO_RW)
{
  /* SDL_Surface* IMG_LoadICO_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadICO_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadCUR_RW)
{
  /* SDL_Surface* IMG_LoadCUR_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadCUR_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadBMP_RW)
{
  /* SDL_Surface* IMG_LoadBMP_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadBMP_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadGIF_RW)
{
  /* SDL_Surface* IMG_LoadGIF_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadGIF_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadJPG_RW)
{
  /* SDL_Surface* IMG_LoadJPG_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadJPG_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadLBM_RW)
{
  /* SDL_Surface* IMG_LoadLBM_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadLBM_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadPCX_RW)
{
  /* SDL_Surface* IMG_LoadPCX_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadPCX_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadPNG_RW)
{
  /* SDL_Surface* IMG_LoadPNG_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadPNG_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadPNM_RW)
{
  /* SDL_Surface* IMG_LoadPNM_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadPNM_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadTGA_RW)
{
  /* SDL_Surface* IMG_LoadTGA_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadTGA_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadTIF_RW)
{
  /* SDL_Surface* IMG_LoadTIF_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadTIF_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadXCF_RW)
{
  /* SDL_Surface* IMG_LoadXCF_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadXCF_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadXPM_RW)
{
  /* SDL_Surface* IMG_LoadXPM_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadXPM_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_loadXV_RW)
{
  /* SDL_Surface* IMG_LoadXV_RW(SDL_RWops* src) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, src[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_LoadXV_RW
    ( STACK_GET_ADDR(src)
    );

  THROW_POINTER()
}

EXDL_API(eimg_readXPMFromArray)
{
  /* SDL_Surface* IMG_ReadXPMFromArray(char** xpm) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char , xpm[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_ReadXPMFromArray
    ( STACK_GET_ADDR(xpm)
    );

  THROW_POINTER()
}

#endif // COMPILE_IMAGE
