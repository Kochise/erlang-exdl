/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_video.h,v 1.2 2004/10/25 09:17:43 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

  enum
  { SDL_VideoInit_ENUM = EXDL_VIDEO_H
  , SDL_VideoQuit_ENUM
  , SDL_VideoDriverName_ENUM
  , SDL_GetVideoSurface_ENUM
  , SDL_GetVideoInfo_ENUM
  , SDL_VideoModeOK_ENUM
  , SDL_ListModes_ENUM
  , SDL_SetVideoMode_ENUM
  , SDL_UpdateRects_ENUM
  , SDL_UpdateRect_ENUM
  , SDL_Flip_ENUM
  , SDL_SetGamma_ENUM
  , SDL_SetGammaRamp_ENUM
  , SDL_GetGammaRamp_ENUM
  , SDL_SetColors_ENUM
  , SDL_SetPalette_ENUM
  , SDL_MapRGB_ENUM
  , SDL_MapRGBA_ENUM
  , SDL_GetRGB_ENUM
  , SDL_GetRGBA_ENUM
  , SDL_CreateRGBSurface_ENUM
  , SDL_CreateRGBSurfaceFrom_ENUM
  , SDL_FreeSurface_ENUM
  , SDL_LockSurface_ENUM
  , SDL_UnlockSurface_ENUM
  , SDL_LoadBMP_RW_ENUM
  , SDL_LoadBMP_ENUM /* */
  , SDL_SaveBMP_RW_ENUM
  , SDL_SaveBMP_ENUM /* */
  , SDL_SetColorKey_ENUM
  , SDL_SetAlpha_ENUM
  , SDL_SetClipRect_ENUM
  , SDL_GetClipRect_ENUM
  , SDL_ConvertSurface_ENUM
  , SDL_UpperBlit_ENUM
  , SDL_LowerBlit_ENUM
  , SDL_FillRect_ENUM
  , SDL_DisplayFormat_ENUM
  , SDL_DisplayFormatAlpha_ENUM
  , SDL_CreateYUVOverlay_ENUM
  , SDL_LockYUVOverlay_ENUM
  , SDL_UnlockYUVOverlay_ENUM
  , SDL_DisplayYUVOverlay_ENUM
  , SDL_FreeYUVOverlay_ENUM
  , SDL_GL_LoadLibrary_ENUM
  , SDL_GL_GetProcAddress_ENUM
  , SDL_GL_SetAttribute_ENUM
  , SDL_GL_GetAttribute_ENUM
  , SDL_GL_SwapBuffers_ENUM
  , SDL_GL_UpdateRects_ENUM
  , SDL_GL_Lock_ENUM
  , SDL_GL_Unlock_ENUM
  , SDL_WM_SetCaption_ENUM
  , SDL_WM_GetCaption_ENUM
  , SDL_WM_SetIcon_ENUM
  , SDL_WM_IconifyWindow_ENUM
  , SDL_WM_ToggleFullScreen_ENUM
  , SDL_WM_GrabInput_ENUM
  , SDL_SoftStretch_ENUM
/* Internal */
  , SDL_GetWMInfo_ENUM
  , SDL_WM_IsMaximized_ENUM
/* EXDL SPECial functions in exdl_spec.c */
  , EXDL_getSurface_ENUM
  , EXDL_getPalette_ENUM
  , EXDL_getPixelFormat_ENUM
  , EXDL_getPixels_ENUM
  , _ENUM_EXDL_VIDEO
  };


EXDL_API(evdo_videoInit);
EXDL_API(evdo_videoQuit);
EXDL_API(evdo_videoDriverName);
EXDL_API(evdo_getVideoSurface);
EXDL_API(evdo_getVideoInfo);
EXDL_API(evdo_videoModeOK);
EXDL_API(evdo_listModes);
EXDL_API(evdo_setVideoMode);
EXDL_API(evdo_updateRects);
EXDL_API(evdo_updateRect);
EXDL_API(evdo_flip);
EXDL_API(evdo_setGamma);
EXDL_API(evdo_setGammaRamp);
EXDL_API(evdo_getGammaRamp);
EXDL_API(evdo_setColors);
EXDL_API(evdo_setPalette);
EXDL_API(evdo_mapRGB);
EXDL_API(evdo_mapRGBA);
EXDL_API(evdo_getRGB);
EXDL_API(evdo_getRGBA);
EXDL_API(evdo_createRGBSurface);
EXDL_API(evdo_createRGBSurfaceFrom);
EXDL_API(evdo_freeSurface);
EXDL_API(evdo_lockSurface);
EXDL_API(evdo_unlockSurface);
EXDL_API(evdo_loadBMP_RW);
EXDL_API(evdo_loadBMP);
EXDL_API(evdo_saveBMP_RW);
EXDL_API(evdo_saveBMP);
EXDL_API(evdo_setColorKey);
EXDL_API(evdo_setAlpha);
EXDL_API(evdo_setClipRect);
EXDL_API(evdo_getClipRect);
EXDL_API(evdo_convertSurface);
EXDL_API(evdo_upperBlit);
EXDL_API(evdo_lowerBlit);
EXDL_API(evdo_fillRect);
EXDL_API(evdo_displayFormat);
EXDL_API(evdo_displayFormatAlpha);
EXDL_API(evdo_createYUVOverlay);
EXDL_API(evdo_lockYUVOverlay);
EXDL_API(evdo_unlockYUVOverlay);
EXDL_API(evdo_displayYUVOverlay);
EXDL_API(evdo_freeYUVOverlay);
EXDL_API(evdo_gl_LoadLibrary);
EXDL_API(evdo_gl_GetProcAddress);
EXDL_API(evdo_gl_SetAttribute);
EXDL_API(evdo_gl_GetAttribute);
EXDL_API(evdo_gl_SwapBuffers);
EXDL_API(evdo_gl_UpdateRects);
EXDL_API(evdo_gl_Lock);
EXDL_API(evdo_gl_Unlock);
EXDL_API(evdo_wm_SetCaption);
EXDL_API(evdo_wm_GetCaption);
EXDL_API(evdo_wm_SetIcon);
EXDL_API(evdo_wm_IconifyWindow);
EXDL_API(evdo_wm_ToggleFullScreen);
EXDL_API(evdo_wm_GrabInput);
EXDL_API(evdo_softStretch);
/* Internal */
EXDL_API(evdo_getWMInfo);
EXDL_API(evdo_wm_IsMaximized);
/* EXDL SPECial functions in exdl_spec.c */
EXDL_API(esdl_getSurface);
EXDL_API(esdl_getPalette);
EXDL_API(esdl_getPixelFormat);
EXDL_API(esdl_getPixels);

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
