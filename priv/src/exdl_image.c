/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_image.c,v 1.0 2008/12/29 14:45:38 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_IMAGE

#include <string.h>
#include <stdlib.h>

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
  /* inp : src     = The source SDL RWops as a pointer. The image is loaded from this. */
  /* inp : freesrc = A non-zero value mean is will automatically close/free the src for you. */
  /* inp : type    = A string that indicates which format type to interpret the image as. */
  /*       Here is a list of the currently recognized strings (case is not important): */
  /* "TGA" - "BMP" - "PNM" - "XPM" - "XCF" - "PCX" - "GIF" - "JPG" - "TIF" - "LBM" - "PNG" */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors. */

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
  /* inp : file = Image file name to load a surface from. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on */ 
  /*       errors, such as no support built for the image, or a file reading error. */

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
  /* inp : src     = The source SDL RWops as a pointer. The image is loaded from this. */
  /* inp : freesrc = A non-zero value mean is will automatically close/free the src for you. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors. */

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
  /* inp : src = */
  /* ret : 1 if the image is a ICO and the ICO format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a CUR and the CUR format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a BMP and the BMP format support is compiled into SDL_image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a GIF and the GIF format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a JPG and the JPG format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a LBM and the LBM format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a PCX and the PCX format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a PNG and the PNG format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a PNM and the PNM format support is compiled into SDL_image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a TIF and the TIF format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a XCF and the XCF format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a XPM and the XPM format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = */
  /* ret : 1 if the image is a XV and the XV format support is compiled into SDL image. */
  /*       0 is returned otherwise. */

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
  /* inp : src = The source SDL RWops as a pointer. The ICO image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if ICO is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The CUR image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if CUR is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The BMP image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if BMP is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The GIF image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if GIF is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The JPG image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if JPG is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The LBM image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if LBM is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The PCX image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if PCX is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The PNG image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if PNG is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The PNM image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if PNM is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The TGA image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if TGA is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The TIF image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if TIF is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The XCF image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if XCF is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The XPM image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if XPM is not supported, or a read error. */

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
  /* inp : src = The source SDL RWops as a pointer. The XV image is loaded from this. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if XV is not supported, or a read error. */

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
  /* inp : xpm = The source xpm data. The XPM image is loaded from this. XPM files are C */
  /*             header files that define a char **variable, that variable name is what */ 
  /*             you use here. */
  /* ret : a pointer to the image as a new SDL_Surface. NULL is returned on errors, like */
  /*       if XPM is not supported, or a read error. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char**, xpm)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Surface*)

    IMG_ReadXPMFromArray
    ( STACK_GET_DATA(xpm)
    );

  THROW_POINTER()
}

#endif // COMPILE_IMAGE
