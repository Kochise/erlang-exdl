%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_video_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

  -define(SDL_VideoInit,             ?EXDL_VIDEO_HRL            + 0).
  -define(SDL_VideoQuit,             ?SDL_VideoInit             + 1).
  -define(SDL_VideoDriverName,       ?SDL_VideoQuit             + 1).
  -define(SDL_GetVideoSurface,       ?SDL_VideoDriverName       + 1).
  -define(SDL_GetVideoInfo,          ?SDL_GetVideoSurface       + 1).
  -define(SDL_VideoModeOK,           ?SDL_GetVideoInfo          + 1).
  -define(SDL_ListModes,             ?SDL_VideoModeOK           + 1).
  -define(SDL_SetVideoMode,          ?SDL_ListModes             + 1).
  -define(SDL_UpdateRects,           ?SDL_SetVideoMode          + 1).
  -define(SDL_UpdateRect,            ?SDL_UpdateRects           + 1).
  -define(SDL_Flip,                  ?SDL_UpdateRect            + 1).
  -define(SDL_SetGamma,              ?SDL_Flip                  + 1).
  -define(SDL_SetGammaRamp,          ?SDL_SetGamma              + 1).
  -define(SDL_GetGammaRamp,          ?SDL_SetGammaRamp          + 1).
  -define(SDL_SetColors,             ?SDL_GetGammaRamp          + 1).
  -define(SDL_SetPalette,            ?SDL_SetColors             + 1).
  -define(SDL_MapRGB,                ?SDL_SetPalette            + 1).
  -define(SDL_MapRGBA,               ?SDL_MapRGB                + 1).
  -define(SDL_GetRGB,                ?SDL_MapRGBA               + 1).
  -define(SDL_GetRGBA,               ?SDL_GetRGB                + 1).
  -define(SDL_CreateRGBSurface,      ?SDL_GetRGBA               + 1).
  -define(SDL_CreateRGBSurfaceFrom,  ?SDL_CreateRGBSurface      + 1).
  -define(SDL_FreeSurface,           ?SDL_CreateRGBSurfaceFrom  + 1).
  -define(SDL_LockSurface,           ?SDL_FreeSurface           + 1).
  -define(SDL_UnlockSurface,         ?SDL_LockSurface           + 1).
  -define(SDL_LoadBMP_RW,            ?SDL_UnlockSurface         + 1).
  -define(SDL_SaveBMP_RW,            ?SDL_LoadBMP_RW            + 1).
  -define(SDL_SetColorKey,           ?SDL_SaveBMP_RW            + 1).
  -define(SDL_SetAlpha,              ?SDL_SetColorKey           + 1).
  -define(SDL_SetClipRect,           ?SDL_SetAlpha              + 1).
  -define(SDL_GetClipRect,           ?SDL_SetClipRect           + 1).
  -define(SDL_ConvertSurface,        ?SDL_GetClipRect           + 1).
  -define(SDL_UpperBlit,             ?SDL_ConvertSurface        + 1).
  -define(SDL_LowerBlit,             ?SDL_UpperBlit             + 1).
  -define(SDL_FillRect,              ?SDL_LowerBlit             + 1).
  -define(SDL_DisplayFormat,         ?SDL_FillRect              + 1).
  -define(SDL_DisplayFormatAlpha,    ?SDL_DisplayFormat         + 1).
  -define(SDL_CreateYUVOverlay,      ?SDL_DisplayFormatAlpha    + 1).
  -define(SDL_LockYUVOverlay,        ?SDL_CreateYUVOverlay      + 1).
  -define(SDL_UnlockYUVOverlay,      ?SDL_LockYUVOverlay        + 1).
  -define(SDL_DisplayYUVOverlay,     ?SDL_UnlockYUVOverlay      + 1).
  -define(SDL_FreeYUVOverlay,        ?SDL_DisplayYUVOverlay     + 1).
  -define(SDL_GL_LoadLibrary,        ?SDL_FreeYUVOverlay        + 1).
  -define(SDL_GL_GetProcAddress,     ?SDL_GL_LoadLibrary        + 1).
  -define(SDL_GL_SetAttribute,       ?SDL_GL_GetProcAddress     + 1).
  -define(SDL_GL_GetAttribute,       ?SDL_GL_SetAttribute       + 1).
  -define(SDL_GL_SwapBuffers,        ?SDL_GL_GetAttribute       + 1).
  -define(SDL_GL_UpdateRects,        ?SDL_GL_SwapBuffers        + 1).
  -define(SDL_GL_Lock,               ?SDL_GL_UpdateRects        + 1).
  -define(SDL_GL_Unlock,             ?SDL_GL_Lock               + 1).
  -define(SDL_WM_SetCaption,         ?SDL_GL_Unlock             + 1).
  -define(SDL_WM_GetCaption,         ?SDL_WM_SetCaption         + 1).
  -define(SDL_WM_SetIcon,            ?SDL_WM_GetCaption         + 1).
  -define(SDL_WM_IconifyWindow,      ?SDL_WM_SetIcon            + 1).
  -define(SDL_WM_ToggleFullScreen,   ?SDL_WM_IconifyWindow      + 1).
  -define(SDL_WM_GrabInput,          ?SDL_WM_ToggleFullScreen   + 1).
  -define(SDL_SoftStretch,           ?SDL_WM_GrabInput          + 1).
  -define(SDL_GetWMInfo,             ?SDL_SoftStretch           + 1).
  -define(SDL_WM_IsMaximized,        ?SDL_GetWMInfo             + 1).

  %% EXDL_VIDEO C SRC ENUM CHECK
  -define(_ENUM_EXDL_VIDEO,          ?SDL_WM_IsMaximized        + 1).

