/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_glxext.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_GLXEXT

  enum
/* GLX_VERSION_1_3 */
  { glXGetFBConfigs_ENUM = EXDL_GLXEXT_H
  , glXChooseFBConfig_ENUM
  , glXGetFBConfigAttrib_ENUM
  , glXGetVisualFromFBConfig_ENUM
  , glXCreateWindow_ENUM
  , glXDestroyWindow_ENUM
  , glXCreatePixmap_ENUM
  , glXDestroyPixmap_ENUM
  , glXCreatePbuffer_ENUM
  , glXDestroyPbuffer_ENUM
  , glXQueryDrawable_ENUM
  , glXCreateNewContext_ENUM
  , glXMakeContextCurrent_ENUM
  , glXGetCurrentReadDrawable_ENUM
  , glXGetCurrentDisplay_ENUM
  , glXQueryContext_ENUM
  , glXSelectEvent_ENUM
  , glXGetSelectedEvent_ENUM
/* GLX_VERSION_1_4 */
  , glXGetProcAddress_ENUM
/* GLX_ARB_get_proc_address */
  , glXGetProcAddressARB_ENUM
/* GLX_ARB_multisample */
/* GLX_ARB_fbconfig_float */
/* GLX_ARB_framebuffer_sRGB */
/* GLX_ARB_create_context */
  , glXCreateContextAttribsARB_ENUM
/* GLX_ARB_create_context_profile */
/* GLX_ARB_create_context_robustness */
/* GLX_SGIS_multisample */
/* GLX_EXT_visual_info */
/* GLX_SGI_swap_control */
  , glXSwapIntervalSGI_ENUM
/* GLX_SGI_video_sync */
  , glXGetVideoSyncSGI_ENUM
  , glXWaitVideoSyncSGI_ENUM
/* GLX_SGI_make_current_read */
  , glXMakeCurrentReadSGI_ENUM
  , glXGetCurrentReadDrawableSGI_ENUM
/* GLX_SGIX_video_source */
  , glXCreateGLXVideoSourceSGIX_ENUM
  , glXDestroyGLXVideoSourceSGIX_ENUM
/* GLX_EXT_import_context */
  , glXGetCurrentDisplayEXT_ENUM
  , glXQueryContextInfoEXT_ENUM
  , glXGetContextIDEXT_ENUM
  , glXImportContextEXT_ENUM
  , glXFreeContextEXT_ENUM
/* GLX_SGIX_fbconfig */
  , glXGetFBConfigAttribSGIX_ENUM
  , glXChooseFBConfigSGIX_ENUM
  , glXCreateGLXPixmapWithConfigSGIX_ENUM
  , glXCreateContextWithConfigSGIX_ENUM
  , glXGetVisualFromFBConfigSGIX_ENUM
  , glXGetFBConfigFromVisualSGIX_ENUM
/* GLX_SGIX_pbuffer */
  , glXCreateGLXPbufferSGIX_ENUM
  , glXDestroyGLXPbufferSGIX_ENUM
  , glXQueryGLXPbufferSGIX_ENUM
  , glXSelectEventSGIX_ENUM
  , glXGetSelectedEventSGIX_ENUM
/* GLX_SGI_cushion */
  , glXCushionSGI_ENUM
/* GLX_SGIX_video_resize */
  , glXBindChannelToWindowSGIX_ENUM
  , glXChannelRectSGIX_ENUM
  , glXQueryChannelRectSGIX_ENUM
  , glXQueryChannelDeltasSGIX_ENUM
  , glXChannelRectSyncSGIX_ENUM
/* GLX_SGIX_dmbuffer */
  , glXAssociateDMPbufferSGIX_ENUM
/* GLX_SGIX_swap_group */
  , glXJoinSwapGroupSGIX_ENUM
/* GLX_SGIX_swap_barrier */
  , glXBindSwapBarrierSGIX_ENUM
  , glXQueryMaxSwapBarriersSGIX_ENUM
/* GLX_SUN_get_transparent_index */
  , glXGetTransparentIndexSUN_ENUM
/* GLX_MESA_copy_sub_buffer */
  , glXCopySubBufferMESA_ENUM
/* GLX_MESA_pixmap_colormap */
  , glXCreateGLXPixmapMESA_ENUM
/* GLX_MESA_release_buffers */
  , glXReleaseBuffersMESA_ENUM
/* GLX_MESA_set_3dfx_mode */
  , glXSet3DfxModeMESA_ENUM
/* GLX_OML_sync_control */
  , glXGetSyncValuesOML_ENUM
  , glXGetMscRateOML_ENUM
  , glXSwapBuffersMscOML_ENUM
  , glXWaitForMscOML_ENUM
  , glXWaitForSbcOML_ENUM
  , glXQueryHyperpipeNetworkSGIX_ENUM
  , glXHyperpipeConfigSGIX_ENUM
  , glXQueryHyperpipeConfigSGIX_ENUM
  , glXDestroyHyperpipeConfigSGIX_ENUM
  , glXBindHyperpipeSGIX_ENUM
  , glXQueryHyperpipeBestAttribSGIX_ENUM
  , glXHyperpipeAttribSGIX_ENUM
  , glXQueryHyperpipeAttribSGIX_ENUM
/* GLX_MESA_agp_offset */
  , glXGetAGPOffsetMESA_ENUM
/* GLX_EXT_texture_from_pixmap */
  , glXBindTexImageEXT_ENUM
  , glXReleaseTexImageEXT_ENUM
/* GLX_NV_present_video */
  , glXEnumerateVideoDevicesNV_ENUM
  , glXBindVideoDeviceNV_ENUM
/* GLX_NV_video_output */
  , glXGetVideoDeviceNV_ENUM
  , glXReleaseVideoDeviceNV_ENUM
  , glXBindVideoImageNV_ENUM
  , glXReleaseVideoImageNV_ENUM
  , glXSendPbufferToVideoNV_ENUM
  , glXGetVideoInfoNV_ENUM
/* GLX_NV_swap_group */
  , glXJoinSwapGroupNV_ENUM
  , glXBindSwapBarrierNV_ENUM
  , glXQuerySwapGroupNV_ENUM
  , glXQueryMaxSwapGroupsNV_ENUM
  , glXQueryFrameCountNV_ENUM
  , glXResetFrameCountNV_ENUM
/* GLX_NV_video_capture */
  , glXBindVideoCaptureDeviceNV_ENUM
  , glXEnumerateVideoCaptureDevicesNV_ENUM
  , glXLockVideoCaptureDeviceNV_ENUM
  , glXQueryVideoCaptureDeviceNV_ENUM
  , glXReleaseVideoCaptureDeviceNV_ENUM
/* GLX_EXT_swap_control */
  , glXSwapIntervalEXT_ENUM
/* GLX_NV_copy_image */
  , glXCopyImageSubDataNV_ENUM
/* GLX_INTEL_swap_event */
/* GLX_NV_multisample_coverage */
/* GLX_EXT_swap_control_tear */
  , _ENUM_EXDL_GLXEXT
  };


/* GLX_VERSION_1_3 */
EXDL_API(eglx_xGetFBConfigs);
EXDL_API(eglx_xChooseFBConfig);
EXDL_API(eglx_xGetFBConfigAttrib);
EXDL_API(eglx_xGetVisualFromFBConfig);
EXDL_API(eglx_xCreateWindow);
EXDL_API(eglx_xDestroyWindow);
EXDL_API(eglx_xCreatePixmap);
EXDL_API(eglx_xDestroyPixmap);
EXDL_API(eglx_xCreatePbuffer);
EXDL_API(eglx_xDestroyPbuffer);
EXDL_API(eglx_xQueryDrawable);
EXDL_API(eglx_xCreateNewContext);
EXDL_API(eglx_xMakeContextCurrent);
EXDL_API(eglx_xGetCurrentReadDrawable);
EXDL_API(eglx_xGetCurrentDisplay);
EXDL_API(eglx_xQueryContext);
EXDL_API(eglx_xSelectEvent);
EXDL_API(eglx_xGetSelectedEvent);
/* GLX_VERSION_1_4 */
EXDL_API(eglx_xGetProcAddress);
/* GLX_ARB_get_proc_address */
EXDL_API(eglx_xGetProcAddressARB);
/* GLX_ARB_multisample */
/* GLX_ARB_fbconfig_float */
/* GLX_ARB_framebuffer_sRGB */
/* GLX_ARB_create_context */
EXDL_API(eglx_xCreateContextAttribsARB);
/* GLX_ARB_create_context_profile */
/* GLX_ARB_create_context_robustness */
/* GLX_SGIS_multisample */
/* GLX_EXT_visual_info */
/* GLX_SGI_swap_control */
EXDL_API(eglx_xSwapIntervalSGI);
/* GLX_SGI_video_sync */
EXDL_API(eglx_xGetVideoSyncSGI);
EXDL_API(eglx_xWaitVideoSyncSGI);
/* GLX_SGI_make_current_read */
EXDL_API(eglx_xMakeCurrentReadSGI);
EXDL_API(eglx_xGetCurrentReadDrawableSGI);
/* GLX_SGIX_video_source */
EXDL_API(eglx_xCreateGLXVideoSourceSGIX);
EXDL_API(eglx_xDestroyGLXVideoSourceSGIX);
/* GLX_EXT_import_context */
EXDL_API(eglx_xGetCurrentDisplayEXT);
EXDL_API(eglx_xQueryContextInfoEXT);
EXDL_API(eglx_xGetContextIDEXT);
EXDL_API(eglx_xImportContextEXT);
EXDL_API(eglx_xFreeContextEXT);
/* GLX_SGIX_fbconfig */
EXDL_API(eglx_xGetFBConfigAttribSGIX);
EXDL_API(eglx_xChooseFBConfigSGIX);
EXDL_API(eglx_xCreateGLXPixmapWithConfigSGIX);
EXDL_API(eglx_xCreateContextWithConfigSGIX);
EXDL_API(eglx_xGetVisualFromFBConfigSGIX);
EXDL_API(eglx_xGetFBConfigFromVisualSGIX);
/* GLX_SGIX_pbuffer */
EXDL_API(eglx_xCreateGLXPbufferSGIX);
EXDL_API(eglx_xDestroyGLXPbufferSGIX);
EXDL_API(eglx_xQueryGLXPbufferSGIX);
EXDL_API(eglx_xSelectEventSGIX);
EXDL_API(eglx_xGetSelectedEventSGIX);
/* GLX_SGI_cushion */
EXDL_API(eglx_xCushionSGI);
/* GLX_SGIX_video_resize */
EXDL_API(eglx_xBindChannelToWindowSGIX);
EXDL_API(eglx_xChannelRectSGIX);
EXDL_API(eglx_xQueryChannelRectSGIX);
EXDL_API(eglx_xQueryChannelDeltasSGIX);
EXDL_API(eglx_xChannelRectSyncSGIX);
/* GLX_SGIX_dmbuffer */
EXDL_API(eglx_xAssociateDMPbufferSGIX);
/* GLX_SGIX_swap_group */
EXDL_API(eglx_xJoinSwapGroupSGIX);
/* GLX_SGIX_swap_barrier */
EXDL_API(eglx_xBindSwapBarrierSGIX);
EXDL_API(eglx_xQueryMaxSwapBarriersSGIX);
/* GLX_SUN_get_transparent_index */
EXDL_API(eglx_xGetTransparentIndexSUN);
/* GLX_MESA_copy_sub_buffer */
EXDL_API(eglx_xCopySubBufferMESA);
/* GLX_MESA_pixmap_colormap */
EXDL_API(eglx_xCreateGLXPixmapMESA);
/* GLX_MESA_release_buffers */
EXDL_API(eglx_xReleaseBuffersMESA);
/* GLX_MESA_set_3dfx_mode */
EXDL_API(eglx_xSet3DfxModeMESA);
/* GLX_OML_sync_control */
EXDL_API(eglx_xGetSyncValuesOML);
EXDL_API(eglx_xGetMscRateOML);
EXDL_API(eglx_xSwapBuffersMscOML);
EXDL_API(eglx_xWaitForMscOML);
EXDL_API(eglx_xWaitForSbcOML);
EXDL_API(eglx_xQueryHyperpipeNetworkSGIX);
EXDL_API(eglx_xHyperpipeConfigSGIX);
EXDL_API(eglx_xQueryHyperpipeConfigSGIX);
EXDL_API(eglx_xDestroyHyperpipeConfigSGIX);
EXDL_API(eglx_xBindHyperpipeSGIX);
EXDL_API(eglx_xQueryHyperpipeBestAttribSGIX);
EXDL_API(eglx_xHyperpipeAttribSGIX);
EXDL_API(eglx_xQueryHyperpipeAttribSGIX);
/* GLX_MESA_agp_offset */
EXDL_API(eglx_xGetAGPOffsetMESA);
/* GLX_EXT_texture_from_pixmap */
EXDL_API(eglx_xBindTexImageEXT);
EXDL_API(eglx_xReleaseTexImageEXT);
/* GLX_NV_present_video */
EXDL_API(eglx_xEnumerateVideoDevicesNV);
EXDL_API(eglx_xBindVideoDeviceNV);
/* GLX_NV_video_output */
EXDL_API(eglx_xGetVideoDeviceNV);
EXDL_API(eglx_xReleaseVideoDeviceNV);
EXDL_API(eglx_xBindVideoImageNV);
EXDL_API(eglx_xReleaseVideoImageNV);
EXDL_API(eglx_xSendPbufferToVideoNV);
EXDL_API(eglx_xGetVideoInfoNV);
/* GLX_NV_swap_group */
EXDL_API(eglx_xJoinSwapGroupNV);
EXDL_API(eglx_xBindSwapBarrierNV);
EXDL_API(eglx_xQuerySwapGroupNV);
EXDL_API(eglx_xQueryMaxSwapGroupsNV);
EXDL_API(eglx_xQueryFrameCountNV);
EXDL_API(eglx_xResetFrameCountNV);
/* GLX_NV_video_capture */
EXDL_API(eglx_xBindVideoCaptureDeviceNV);
EXDL_API(eglx_xEnumerateVideoCaptureDevicesNV);
EXDL_API(eglx_xLockVideoCaptureDeviceNV);
EXDL_API(eglx_xQueryVideoCaptureDeviceNV);
EXDL_API(eglx_xReleaseVideoCaptureDeviceNV);
/* GLX_EXT_swap_control */
EXDL_API(eglx_xSwapIntervalEXT);
/* GLX_NV_copy_image */
EXDL_API(eglx_xCopyImageSubDataNV);
/* GLX_INTEL_swap_event */
/* GLX_NV_multisample_coverage */
/* GLX_EXT_swap_control_tear */

#else // COMPILE_GLXEXT
  enum { _ENUM_EXDL_GLXEXT = EXDL_GLXEXT_H };
#endif // COMPILE_GLXEXT

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
