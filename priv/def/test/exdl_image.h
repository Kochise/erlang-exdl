/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_image.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_IMAGE

  enum
  { IMG_Linked_Version_ENUM = EXDL_IMAGE_H
  , IMG_Init_ENUM
  , IMG_Quit_ENUM
  , IMG_LoadTyped_RW_ENUM
  , IMG_Load_ENUM
  , IMG_Load_RW_ENUM
  , IMG_InvertAlpha_ENUM
  , IMG_isICO_ENUM
  , IMG_isCUR_ENUM
  , IMG_isBMP_ENUM
  , IMG_isGIF_ENUM
  , IMG_isJPG_ENUM
  , IMG_isLBM_ENUM
  , IMG_isPCX_ENUM
  , IMG_isPNG_ENUM
  , IMG_isPNM_ENUM
  , IMG_isTIF_ENUM
  , IMG_isXCF_ENUM
  , IMG_isXPM_ENUM
  , IMG_isXV_ENUM
  , IMG_LoadICO_RW_ENUM
  , IMG_LoadCUR_RW_ENUM
  , IMG_LoadBMP_RW_ENUM
  , IMG_LoadGIF_RW_ENUM
  , IMG_LoadJPG_RW_ENUM
  , IMG_LoadLBM_RW_ENUM
  , IMG_LoadPCX_RW_ENUM
  , IMG_LoadPNG_RW_ENUM
  , IMG_LoadPNM_RW_ENUM
  , IMG_LoadTGA_RW_ENUM
  , IMG_LoadTIF_RW_ENUM
  , IMG_LoadXCF_RW_ENUM
  , IMG_LoadXPM_RW_ENUM
  , IMG_LoadXV_RW_ENUM
  , IMG_ReadXPMFromArray_ENUM
  , _ENUM_EXDL_IMAGE
  };


EXDL_API(eimg_linked_Version);
EXDL_API(eimg_init);
EXDL_API(eimg_quit);
EXDL_API(eimg_loadTyped_RW);
EXDL_API(eimg_load);
EXDL_API(eimg_load_RW);
EXDL_API(eimg_invertAlpha);
EXDL_API(eimg_isICO);
EXDL_API(eimg_isCUR);
EXDL_API(eimg_isBMP);
EXDL_API(eimg_isGIF);
EXDL_API(eimg_isJPG);
EXDL_API(eimg_isLBM);
EXDL_API(eimg_isPCX);
EXDL_API(eimg_isPNG);
EXDL_API(eimg_isPNM);
EXDL_API(eimg_isTIF);
EXDL_API(eimg_isXCF);
EXDL_API(eimg_isXPM);
EXDL_API(eimg_isXV);
EXDL_API(eimg_loadICO_RW);
EXDL_API(eimg_loadCUR_RW);
EXDL_API(eimg_loadBMP_RW);
EXDL_API(eimg_loadGIF_RW);
EXDL_API(eimg_loadJPG_RW);
EXDL_API(eimg_loadLBM_RW);
EXDL_API(eimg_loadPCX_RW);
EXDL_API(eimg_loadPNG_RW);
EXDL_API(eimg_loadPNM_RW);
EXDL_API(eimg_loadTGA_RW);
EXDL_API(eimg_loadTIF_RW);
EXDL_API(eimg_loadXCF_RW);
EXDL_API(eimg_loadXPM_RW);
EXDL_API(eimg_loadXV_RW);
EXDL_API(eimg_readXPMFromArray);

#else // COMPILE_IMAGE
  enum { _ENUM_EXDL_IMAGE = EXDL_IMAGE_H };
#endif // COMPILE_IMAGE

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
