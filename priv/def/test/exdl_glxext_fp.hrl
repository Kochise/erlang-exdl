%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_glxext_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_GLXEXT).

%% GLX_VERSION_1_3

  -define(glXGetFBConfigs,                    ?EXDL_GLXEXT_HRL                    + 0).
  -define(glXChooseFBConfig,                  ?glXGetFBConfigs                    + 1).
  -define(glXGetFBConfigAttrib,               ?glXChooseFBConfig                  + 1).
  -define(glXGetVisualFromFBConfig,           ?glXGetFBConfigAttrib               + 1).
  -define(glXCreateWindow,                    ?glXGetVisualFromFBConfig           + 1).
  -define(glXDestroyWindow,                   ?glXCreateWindow                    + 1).
  -define(glXCreatePixmap,                    ?glXDestroyWindow                   + 1).
  -define(glXDestroyPixmap,                   ?glXCreatePixmap                    + 1).
  -define(glXCreatePbuffer,                   ?glXDestroyPixmap                   + 1).
  -define(glXDestroyPbuffer,                  ?glXCreatePbuffer                   + 1).
  -define(glXQueryDrawable,                   ?glXDestroyPbuffer                  + 1).
  -define(glXCreateNewContext,                ?glXQueryDrawable                   + 1).
  -define(glXMakeContextCurrent,              ?glXCreateNewContext                + 1).
  -define(glXGetCurrentReadDrawable,          ?glXMakeContextCurrent              + 1).
  -define(glXGetCurrentDisplay,               ?glXGetCurrentReadDrawable          + 1).
  -define(glXQueryContext,                    ?glXGetCurrentDisplay               + 1).
  -define(glXSelectEvent,                     ?glXQueryContext                    + 1).
  -define(glXGetSelectedEvent,                ?glXSelectEvent                     + 1).

%% GLX_VERSION_1_4

  -define(glXGetProcAddress,                  ?glXGetSelectedEvent                + 1).

%% GLX_ARB_get_proc_address

  -define(glXGetProcAddressARB,               ?glXGetProcAddress                  + 1).

%% GLX_ARB_multisample


%% GLX_ARB_fbconfig_float


%% GLX_ARB_framebuffer_sRGB


%% GLX_ARB_create_context

  -define(glXCreateContextAttribsARB,         ?glXGetProcAddressARB               + 1).

%% GLX_ARB_create_context_profile


%% GLX_ARB_create_context_robustness


%% GLX_SGIS_multisample


%% GLX_EXT_visual_info


%% GLX_SGI_swap_control

  -define(glXSwapIntervalSGI,                 ?glXCreateContextAttribsARB         + 1).

%% GLX_SGI_video_sync

  -define(glXGetVideoSyncSGI,                 ?glXSwapIntervalSGI                 + 1).
  -define(glXWaitVideoSyncSGI,                ?glXGetVideoSyncSGI                 + 1).

%% GLX_SGI_make_current_read

  -define(glXMakeCurrentReadSGI,              ?glXWaitVideoSyncSGI                + 1).
  -define(glXGetCurrentReadDrawableSGI,       ?glXMakeCurrentReadSGI              + 1).

%% GLX_SGIX_video_source

  -define(glXCreateGLXVideoSourceSGIX,        ?glXGetCurrentReadDrawableSGI       + 1).
  -define(glXDestroyGLXVideoSourceSGIX,       ?glXCreateGLXVideoSourceSGIX        + 1).

%% GLX_EXT_import_context

  -define(glXGetCurrentDisplayEXT,            ?glXDestroyGLXVideoSourceSGIX       + 1).
  -define(glXQueryContextInfoEXT,             ?glXGetCurrentDisplayEXT            + 1).
  -define(glXGetContextIDEXT,                 ?glXQueryContextInfoEXT             + 1).
  -define(glXImportContextEXT,                ?glXGetContextIDEXT                 + 1).
  -define(glXFreeContextEXT,                  ?glXImportContextEXT                + 1).

%% GLX_SGIX_fbconfig

  -define(glXGetFBConfigAttribSGIX,           ?glXFreeContextEXT                  + 1).
  -define(glXChooseFBConfigSGIX,              ?glXGetFBConfigAttribSGIX           + 1).
  -define(glXCreateGLXPixmapWithConfigSGIX,   ?glXChooseFBConfigSGIX              + 1).
  -define(glXCreateContextWithConfigSGIX,     ?glXCreateGLXPixmapWithConfigSGIX   + 1).
  -define(glXGetVisualFromFBConfigSGIX,       ?glXCreateContextWithConfigSGIX     + 1).
  -define(glXGetFBConfigFromVisualSGIX,       ?glXGetVisualFromFBConfigSGIX       + 1).

%% GLX_SGIX_pbuffer

  -define(glXCreateGLXPbufferSGIX,            ?glXGetFBConfigFromVisualSGIX       + 1).
  -define(glXDestroyGLXPbufferSGIX,           ?glXCreateGLXPbufferSGIX            + 1).
  -define(glXQueryGLXPbufferSGIX,             ?glXDestroyGLXPbufferSGIX           + 1).
  -define(glXSelectEventSGIX,                 ?glXQueryGLXPbufferSGIX             + 1).
  -define(glXGetSelectedEventSGIX,            ?glXSelectEventSGIX                 + 1).

%% GLX_SGI_cushion

  -define(glXCushionSGI,                      ?glXGetSelectedEventSGIX            + 1).

%% GLX_SGIX_video_resize

  -define(glXBindChannelToWindowSGIX,         ?glXCushionSGI                      + 1).
  -define(glXChannelRectSGIX,                 ?glXBindChannelToWindowSGIX         + 1).
  -define(glXQueryChannelRectSGIX,            ?glXChannelRectSGIX                 + 1).
  -define(glXQueryChannelDeltasSGIX,          ?glXQueryChannelRectSGIX            + 1).
  -define(glXChannelRectSyncSGIX,             ?glXQueryChannelDeltasSGIX          + 1).

%% GLX_SGIX_dmbuffer

  -define(glXAssociateDMPbufferSGIX,          ?glXChannelRectSyncSGIX             + 1).

%% GLX_SGIX_swap_group

  -define(glXJoinSwapGroupSGIX,               ?glXAssociateDMPbufferSGIX          + 1).

%% GLX_SGIX_swap_barrier

  -define(glXBindSwapBarrierSGIX,             ?glXJoinSwapGroupSGIX               + 1).
  -define(glXQueryMaxSwapBarriersSGIX,        ?glXBindSwapBarrierSGIX             + 1).

%% GLX_SUN_get_transparent_index

  -define(glXGetTransparentIndexSUN,          ?glXQueryMaxSwapBarriersSGIX        + 1).

%% GLX_MESA_copy_sub_buffer

  -define(glXCopySubBufferMESA,               ?glXGetTransparentIndexSUN          + 1).

%% GLX_MESA_pixmap_colormap

  -define(glXCreateGLXPixmapMESA,             ?glXCopySubBufferMESA               + 1).

%% GLX_MESA_release_buffers

  -define(glXReleaseBuffersMESA,              ?glXCreateGLXPixmapMESA             + 1).

%% GLX_MESA_set_3dfx_mode

  -define(glXSet3DfxModeMESA,                 ?glXReleaseBuffersMESA              + 1).

%% GLX_OML_sync_control

  -define(glXGetSyncValuesOML,                ?glXSet3DfxModeMESA                 + 1).
  -define(glXGetMscRateOML,                   ?glXGetSyncValuesOML                + 1).
  -define(glXSwapBuffersMscOML,               ?glXGetMscRateOML                   + 1).
  -define(glXWaitForMscOML,                   ?glXSwapBuffersMscOML               + 1).
  -define(glXWaitForSbcOML,                   ?glXWaitForMscOML                   + 1).
  -define(glXQueryHyperpipeNetworkSGIX,       ?glXWaitForSbcOML                   + 1).
  -define(glXHyperpipeConfigSGIX,             ?glXQueryHyperpipeNetworkSGIX       + 1).
  -define(glXQueryHyperpipeConfigSGIX,        ?glXHyperpipeConfigSGIX             + 1).
  -define(glXDestroyHyperpipeConfigSGIX,      ?glXQueryHyperpipeConfigSGIX        + 1).
  -define(glXBindHyperpipeSGIX,               ?glXDestroyHyperpipeConfigSGIX      + 1).
  -define(glXQueryHyperpipeBestAttribSGIX,    ?glXBindHyperpipeSGIX               + 1).
  -define(glXHyperpipeAttribSGIX,             ?glXQueryHyperpipeBestAttribSGIX    + 1).
  -define(glXQueryHyperpipeAttribSGIX,        ?glXHyperpipeAttribSGIX             + 1).

%% GLX_MESA_agp_offset

  -define(glXGetAGPOffsetMESA,                ?glXQueryHyperpipeAttribSGIX        + 1).

%% GLX_EXT_texture_from_pixmap

  -define(glXBindTexImageEXT,                 ?glXGetAGPOffsetMESA                + 1).
  -define(glXReleaseTexImageEXT,              ?glXBindTexImageEXT                 + 1).

%% GLX_NV_present_video

  -define(glXEnumerateVideoDevicesNV,         ?glXReleaseTexImageEXT              + 1).
  -define(glXBindVideoDeviceNV,               ?glXEnumerateVideoDevicesNV         + 1).

%% GLX_NV_video_output

  -define(glXGetVideoDeviceNV,                ?glXBindVideoDeviceNV               + 1).
  -define(glXReleaseVideoDeviceNV,            ?glXGetVideoDeviceNV                + 1).
  -define(glXBindVideoImageNV,                ?glXReleaseVideoDeviceNV            + 1).
  -define(glXReleaseVideoImageNV,             ?glXBindVideoImageNV                + 1).
  -define(glXSendPbufferToVideoNV,            ?glXReleaseVideoImageNV             + 1).
  -define(glXGetVideoInfoNV,                  ?glXSendPbufferToVideoNV            + 1).

%% GLX_NV_swap_group

  -define(glXJoinSwapGroupNV,                 ?glXGetVideoInfoNV                  + 1).
  -define(glXBindSwapBarrierNV,               ?glXJoinSwapGroupNV                 + 1).
  -define(glXQuerySwapGroupNV,                ?glXBindSwapBarrierNV               + 1).
  -define(glXQueryMaxSwapGroupsNV,            ?glXQuerySwapGroupNV                + 1).
  -define(glXQueryFrameCountNV,               ?glXQueryMaxSwapGroupsNV            + 1).
  -define(glXResetFrameCountNV,               ?glXQueryFrameCountNV               + 1).

%% GLX_NV_video_capture

  -define(glXBindVideoCaptureDeviceNV,        ?glXResetFrameCountNV               + 1).
  -define(glXEnumerateVideoCaptureDevicesNV,  ?glXBindVideoCaptureDeviceNV        + 1).
  -define(glXLockVideoCaptureDeviceNV,        ?glXEnumerateVideoCaptureDevicesNV  + 1).
  -define(glXQueryVideoCaptureDeviceNV,       ?glXLockVideoCaptureDeviceNV        + 1).
  -define(glXReleaseVideoCaptureDeviceNV,     ?glXQueryVideoCaptureDeviceNV       + 1).

%% GLX_EXT_swap_control

  -define(glXSwapIntervalEXT,                 ?glXReleaseVideoCaptureDeviceNV     + 1).

%% GLX_NV_copy_image

  -define(glXCopyImageSubDataNV,              ?glXSwapIntervalEXT                 + 1).

%% GLX_INTEL_swap_event


%% GLX_NV_multisample_coverage


%% GLX_EXT_swap_control_tear


  %% EXDL_GLXEXT C SRC ENUM CHECK
  -define(_ENUM_EXDL_GLXEXT,                  ?glXCopyImageSubDataNV              + 1).

-else. % COMPILE_GLXEXT

  -define(_ENUM_EXDL_GLXEXT,                  ?EXDL_GLXEXT_HRL).

-endif. % COMPILE_GLXEXT
