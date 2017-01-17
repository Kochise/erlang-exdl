%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_image_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_IMAGE).

  -define(IMG_Linked_Version,    ?EXDL_IMAGE_HRL        + 0).
  -define(IMG_Init,              ?IMG_Linked_Version    + 1).
  -define(IMG_Quit,              ?IMG_Init              + 1).
  -define(IMG_LoadTyped_RW,      ?IMG_Quit              + 1).
  -define(IMG_Load,              ?IMG_LoadTyped_RW      + 1).
  -define(IMG_Load_RW,           ?IMG_Load              + 1).
  -define(IMG_InvertAlpha,       ?IMG_Load_RW           + 1).
  -define(IMG_isICO,             ?IMG_InvertAlpha       + 1).
  -define(IMG_isCUR,             ?IMG_isICO             + 1).
  -define(IMG_isBMP,             ?IMG_isCUR             + 1).
  -define(IMG_isGIF,             ?IMG_isBMP             + 1).
  -define(IMG_isJPG,             ?IMG_isGIF             + 1).
  -define(IMG_isLBM,             ?IMG_isJPG             + 1).
  -define(IMG_isPCX,             ?IMG_isLBM             + 1).
  -define(IMG_isPNG,             ?IMG_isPCX             + 1).
  -define(IMG_isPNM,             ?IMG_isPNG             + 1).
  -define(IMG_isTIF,             ?IMG_isPNM             + 1).
  -define(IMG_isXCF,             ?IMG_isTIF             + 1).
  -define(IMG_isXPM,             ?IMG_isXCF             + 1).
  -define(IMG_isXV,              ?IMG_isXPM             + 1).
  -define(IMG_LoadICO_RW,        ?IMG_isXV              + 1).
  -define(IMG_LoadCUR_RW,        ?IMG_LoadICO_RW        + 1).
  -define(IMG_LoadBMP_RW,        ?IMG_LoadCUR_RW        + 1).
  -define(IMG_LoadGIF_RW,        ?IMG_LoadBMP_RW        + 1).
  -define(IMG_LoadJPG_RW,        ?IMG_LoadGIF_RW        + 1).
  -define(IMG_LoadLBM_RW,        ?IMG_LoadJPG_RW        + 1).
  -define(IMG_LoadPCX_RW,        ?IMG_LoadLBM_RW        + 1).
  -define(IMG_LoadPNG_RW,        ?IMG_LoadPCX_RW        + 1).
  -define(IMG_LoadPNM_RW,        ?IMG_LoadPNG_RW        + 1).
  -define(IMG_LoadTGA_RW,        ?IMG_LoadPNM_RW        + 1).
  -define(IMG_LoadTIF_RW,        ?IMG_LoadTGA_RW        + 1).
  -define(IMG_LoadXCF_RW,        ?IMG_LoadTIF_RW        + 1).
  -define(IMG_LoadXPM_RW,        ?IMG_LoadXCF_RW        + 1).
  -define(IMG_LoadXV_RW,         ?IMG_LoadXPM_RW        + 1).
  -define(IMG_ReadXPMFromArray,  ?IMG_LoadXV_RW         + 1).

  %% EXDL_IMAGE C SRC ENUM CHECK
  -define(_ENUM_EXDL_IMAGE,      ?IMG_ReadXPMFromArray  + 1).

-else. % COMPILE_IMAGE

  -define(_ENUM_EXDL_IMAGE,      ?EXDL_IMAGE_HRL).

-endif. % COMPILE_IMAGE
