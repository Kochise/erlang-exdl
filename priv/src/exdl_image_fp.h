/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_image_fp.h,v 1.0 2008/12/25 09:17:43 kochise Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_IMAGE

{ IMG_Linked_Version_ENUM,    "IMG_Linked_Version",    eimg_linked_Version },
{ IMG_Init_ENUM,              "IMG_Init",              eimg_init },
{ IMG_Quit_ENUM,              "IMG_Quit",              eimg_quit },
{ IMG_LoadTyped_RW_ENUM,      "IMG_LoadTyped_RW",      eimg_loadTyped_RW },
{ IMG_Load_ENUM,              "IMG_Load",              eimg_load },
{ IMG_Load_RW_ENUM,           "IMG_Load_RW",           eimg_load_RW },
{ IMG_InvertAlpha_ENUM,       "IMG_InvertAlpha",       eimg_invertAlpha },
{ IMG_isICO_ENUM,             "IMG_isICO",             eimg_isICO },
{ IMG_isCUR_ENUM,             "IMG_isCUR",             eimg_isCUR },
{ IMG_isBMP_ENUM,             "IMG_isBMP",             eimg_isBMP },
{ IMG_isGIF_ENUM,             "IMG_isGIF",             eimg_isGIF },
{ IMG_isJPG_ENUM,             "IMG_isJPG",             eimg_isJPG },
{ IMG_isLBM_ENUM,             "IMG_isLBM",             eimg_isLBM },
{ IMG_isPCX_ENUM,             "IMG_isPCX",             eimg_isPCX },
{ IMG_isPNG_ENUM,             "IMG_isPNG",             eimg_isPNG },
{ IMG_isPNM_ENUM,             "IMG_isPNM",             eimg_isPNM },
{ IMG_isTIF_ENUM,             "IMG_isTIF",             eimg_isTIF },
{ IMG_isXCF_ENUM,             "IMG_isXCF",             eimg_isXCF },
{ IMG_isXPM_ENUM,             "IMG_isXPM",             eimg_isXPM },
{ IMG_isXV_ENUM,              "IMG_isXV",              eimg_isXV },
{ IMG_LoadICO_RW_ENUM,        "IMG_LoadICO_RW",        eimg_loadICO_RW },
{ IMG_LoadCUR_RW_ENUM,        "IMG_LoadCUR_RW",        eimg_loadCUR_RW },
{ IMG_LoadBMP_RW_ENUM,        "IMG_LoadBMP_RW",        eimg_loadBMP_RW },
{ IMG_LoadGIF_RW_ENUM,        "IMG_LoadGIF_RW",        eimg_loadGIF_RW },
{ IMG_LoadJPG_RW_ENUM,        "IMG_LoadJPG_RW",        eimg_loadJPG_RW },
{ IMG_LoadLBM_RW_ENUM,        "IMG_LoadLBM_RW",        eimg_loadLBM_RW },
{ IMG_LoadPCX_RW_ENUM,        "IMG_LoadPCX_RW",        eimg_loadPCX_RW },
{ IMG_LoadPNG_RW_ENUM,        "IMG_LoadPNG_RW",        eimg_loadPNG_RW },
{ IMG_LoadPNM_RW_ENUM,        "IMG_LoadPNM_RW",        eimg_loadPNM_RW },
{ IMG_LoadTGA_RW_ENUM,        "IMG_LoadTGA_RW",        eimg_loadTGA_RW },
{ IMG_LoadTIF_RW_ENUM,        "IMG_LoadTIF_RW",        eimg_loadTIF_RW },
{ IMG_LoadXCF_RW_ENUM,        "IMG_LoadXCF_RW",        eimg_loadXCF_RW },
{ IMG_LoadXPM_RW_ENUM,        "IMG_LoadXPM_RW",        eimg_loadXPM_RW },
{ IMG_LoadXV_RW_ENUM,         "IMG_LoadXV_RW",         eimg_loadXV_RW },
{ IMG_ReadXPMFromArray_ENUM,  "IMG_ReadXPMFromArray",  eimg_readXPMFromArray },

#endif // COMPILE_IMAGE
