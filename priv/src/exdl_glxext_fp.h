/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_glxext_fp.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_GLXEXT

/* GLX_VERSION_1_3 */
{ glXGetFBConfigs_ENUM,                    "glXGetFBConfigs",                    eglx_xGetFBConfigs },
{ glXChooseFBConfig_ENUM,                  "glXChooseFBConfig",                  eglx_xChooseFBConfig },
{ glXGetFBConfigAttrib_ENUM,               "glXGetFBConfigAttrib",               eglx_xGetFBConfigAttrib },
{ glXGetVisualFromFBConfig_ENUM,           "glXGetVisualFromFBConfig",           eglx_xGetVisualFromFBConfig },
{ glXCreateWindow_ENUM,                    "glXCreateWindow",                    eglx_xCreateWindow },
{ glXDestroyWindow_ENUM,                   "glXDestroyWindow",                   eglx_xDestroyWindow },
{ glXCreatePixmap_ENUM,                    "glXCreatePixmap",                    eglx_xCreatePixmap },
{ glXDestroyPixmap_ENUM,                   "glXDestroyPixmap",                   eglx_xDestroyPixmap },
{ glXCreatePbuffer_ENUM,                   "glXCreatePbuffer",                   eglx_xCreatePbuffer },
{ glXDestroyPbuffer_ENUM,                  "glXDestroyPbuffer",                  eglx_xDestroyPbuffer },
{ glXQueryDrawable_ENUM,                   "glXQueryDrawable",                   eglx_xQueryDrawable },
{ glXCreateNewContext_ENUM,                "glXCreateNewContext",                eglx_xCreateNewContext },
{ glXMakeContextCurrent_ENUM,              "glXMakeContextCurrent",              eglx_xMakeContextCurrent },
{ glXGetCurrentReadDrawable_ENUM,          "glXGetCurrentReadDrawable",          eglx_xGetCurrentReadDrawable },
{ glXGetCurrentDisplay_ENUM,               "glXGetCurrentDisplay",               eglx_xGetCurrentDisplay },
{ glXQueryContext_ENUM,                    "glXQueryContext",                    eglx_xQueryContext },
{ glXSelectEvent_ENUM,                     "glXSelectEvent",                     eglx_xSelectEvent },
{ glXGetSelectedEvent_ENUM,                "glXGetSelectedEvent",                eglx_xGetSelectedEvent },
/* GLX_VERSION_1_4 */
{ glXGetProcAddress_ENUM,                  "glXGetProcAddress",                  eglx_xGetProcAddress },
/* GLX_ARB_get_proc_address */
{ glXGetProcAddressARB_ENUM,               "glXGetProcAddressARB",               eglx_xGetProcAddressARB },
/* GLX_ARB_multisample */
/* GLX_ARB_fbconfig_float */
/* GLX_ARB_framebuffer_sRGB */
/* GLX_ARB_create_context */
{ glXCreateContextAttribsARB_ENUM,         "glXCreateContextAttribsARB",         eglx_xCreateContextAttribsARB },
/* GLX_ARB_create_context_profile */
/* GLX_ARB_create_context_robustness */
/* GLX_SGIS_multisample */
/* GLX_EXT_visual_info */
/* GLX_SGI_swap_control */
{ glXSwapIntervalSGI_ENUM,                 "glXSwapIntervalSGI",                 eglx_xSwapIntervalSGI },
/* GLX_SGI_video_sync */
{ glXGetVideoSyncSGI_ENUM,                 "glXGetVideoSyncSGI",                 eglx_xGetVideoSyncSGI },
{ glXWaitVideoSyncSGI_ENUM,                "glXWaitVideoSyncSGI",                eglx_xWaitVideoSyncSGI },
/* GLX_SGI_make_current_read */
{ glXMakeCurrentReadSGI_ENUM,              "glXMakeCurrentReadSGI",              eglx_xMakeCurrentReadSGI },
{ glXGetCurrentReadDrawableSGI_ENUM,       "glXGetCurrentReadDrawableSGI",       eglx_xGetCurrentReadDrawableSGI },
/* GLX_SGIX_video_source */
{ glXCreateGLXVideoSourceSGIX_ENUM,        "glXCreateGLXVideoSourceSGIX",        eglx_xCreateGLXVideoSourceSGIX },
{ glXDestroyGLXVideoSourceSGIX_ENUM,       "glXDestroyGLXVideoSourceSGIX",       eglx_xDestroyGLXVideoSourceSGIX },
/* GLX_EXT_import_context */
{ glXGetCurrentDisplayEXT_ENUM,            "glXGetCurrentDisplayEXT",            eglx_xGetCurrentDisplayEXT },
{ glXQueryContextInfoEXT_ENUM,             "glXQueryContextInfoEXT",             eglx_xQueryContextInfoEXT },
{ glXGetContextIDEXT_ENUM,                 "glXGetContextIDEXT",                 eglx_xGetContextIDEXT },
{ glXImportContextEXT_ENUM,                "glXImportContextEXT",                eglx_xImportContextEXT },
{ glXFreeContextEXT_ENUM,                  "glXFreeContextEXT",                  eglx_xFreeContextEXT },
/* GLX_SGIX_fbconfig */
{ glXGetFBConfigAttribSGIX_ENUM,           "glXGetFBConfigAttribSGIX",           eglx_xGetFBConfigAttribSGIX },
{ glXChooseFBConfigSGIX_ENUM,              "glXChooseFBConfigSGIX",              eglx_xChooseFBConfigSGIX },
{ glXCreateGLXPixmapWithConfigSGIX_ENUM,   "glXCreateGLXPixmapWithConfigSGIX",   eglx_xCreateGLXPixmapWithConfigSGIX },
{ glXCreateContextWithConfigSGIX_ENUM,     "glXCreateContextWithConfigSGIX",     eglx_xCreateContextWithConfigSGIX },
{ glXGetVisualFromFBConfigSGIX_ENUM,       "glXGetVisualFromFBConfigSGIX",       eglx_xGetVisualFromFBConfigSGIX },
{ glXGetFBConfigFromVisualSGIX_ENUM,       "glXGetFBConfigFromVisualSGIX",       eglx_xGetFBConfigFromVisualSGIX },
/* GLX_SGIX_pbuffer */
{ glXCreateGLXPbufferSGIX_ENUM,            "glXCreateGLXPbufferSGIX",            eglx_xCreateGLXPbufferSGIX },
{ glXDestroyGLXPbufferSGIX_ENUM,           "glXDestroyGLXPbufferSGIX",           eglx_xDestroyGLXPbufferSGIX },
{ glXQueryGLXPbufferSGIX_ENUM,             "glXQueryGLXPbufferSGIX",             eglx_xQueryGLXPbufferSGIX },
{ glXSelectEventSGIX_ENUM,                 "glXSelectEventSGIX",                 eglx_xSelectEventSGIX },
{ glXGetSelectedEventSGIX_ENUM,            "glXGetSelectedEventSGIX",            eglx_xGetSelectedEventSGIX },
/* GLX_SGI_cushion */
{ glXCushionSGI_ENUM,                      "glXCushionSGI",                      eglx_xCushionSGI },
/* GLX_SGIX_video_resize */
{ glXBindChannelToWindowSGIX_ENUM,         "glXBindChannelToWindowSGIX",         eglx_xBindChannelToWindowSGIX },
{ glXChannelRectSGIX_ENUM,                 "glXChannelRectSGIX",                 eglx_xChannelRectSGIX },
{ glXQueryChannelRectSGIX_ENUM,            "glXQueryChannelRectSGIX",            eglx_xQueryChannelRectSGIX },
{ glXQueryChannelDeltasSGIX_ENUM,          "glXQueryChannelDeltasSGIX",          eglx_xQueryChannelDeltasSGIX },
{ glXChannelRectSyncSGIX_ENUM,             "glXChannelRectSyncSGIX",             eglx_xChannelRectSyncSGIX },
/* GLX_SGIX_dmbuffer */
{ glXAssociateDMPbufferSGIX_ENUM,          "glXAssociateDMPbufferSGIX",          eglx_xAssociateDMPbufferSGIX },
/* GLX_SGIX_swap_group */
{ glXJoinSwapGroupSGIX_ENUM,               "glXJoinSwapGroupSGIX",               eglx_xJoinSwapGroupSGIX },
/* GLX_SGIX_swap_barrier */
{ glXBindSwapBarrierSGIX_ENUM,             "glXBindSwapBarrierSGIX",             eglx_xBindSwapBarrierSGIX },
{ glXQueryMaxSwapBarriersSGIX_ENUM,        "glXQueryMaxSwapBarriersSGIX",        eglx_xQueryMaxSwapBarriersSGIX },
/* GLX_SUN_get_transparent_index */
{ glXGetTransparentIndexSUN_ENUM,          "glXGetTransparentIndexSUN",          eglx_xGetTransparentIndexSUN },
/* GLX_MESA_copy_sub_buffer */
{ glXCopySubBufferMESA_ENUM,               "glXCopySubBufferMESA",               eglx_xCopySubBufferMESA },
/* GLX_MESA_pixmap_colormap */
{ glXCreateGLXPixmapMESA_ENUM,             "glXCreateGLXPixmapMESA",             eglx_xCreateGLXPixmapMESA },
/* GLX_MESA_release_buffers */
{ glXReleaseBuffersMESA_ENUM,              "glXReleaseBuffersMESA",              eglx_xReleaseBuffersMESA },
/* GLX_MESA_set_3dfx_mode */
{ glXSet3DfxModeMESA_ENUM,                 "glXSet3DfxModeMESA",                 eglx_xSet3DfxModeMESA },
/* GLX_OML_sync_control */
{ glXGetSyncValuesOML_ENUM,                "glXGetSyncValuesOML",                eglx_xGetSyncValuesOML },
{ glXGetMscRateOML_ENUM,                   "glXGetMscRateOML",                   eglx_xGetMscRateOML },
{ glXSwapBuffersMscOML_ENUM,               "glXSwapBuffersMscOML",               eglx_xSwapBuffersMscOML },
{ glXWaitForMscOML_ENUM,                   "glXWaitForMscOML",                   eglx_xWaitForMscOML },
{ glXWaitForSbcOML_ENUM,                   "glXWaitForSbcOML",                   eglx_xWaitForSbcOML },
{ glXQueryHyperpipeNetworkSGIX_ENUM,       "glXQueryHyperpipeNetworkSGIX",       eglx_xQueryHyperpipeNetworkSGIX },
{ glXHyperpipeConfigSGIX_ENUM,             "glXHyperpipeConfigSGIX",             eglx_xHyperpipeConfigSGIX },
{ glXQueryHyperpipeConfigSGIX_ENUM,        "glXQueryHyperpipeConfigSGIX",        eglx_xQueryHyperpipeConfigSGIX },
{ glXDestroyHyperpipeConfigSGIX_ENUM,      "glXDestroyHyperpipeConfigSGIX",      eglx_xDestroyHyperpipeConfigSGIX },
{ glXBindHyperpipeSGIX_ENUM,               "glXBindHyperpipeSGIX",               eglx_xBindHyperpipeSGIX },
{ glXQueryHyperpipeBestAttribSGIX_ENUM,    "glXQueryHyperpipeBestAttribSGIX",    eglx_xQueryHyperpipeBestAttribSGIX },
{ glXHyperpipeAttribSGIX_ENUM,             "glXHyperpipeAttribSGIX",             eglx_xHyperpipeAttribSGIX },
{ glXQueryHyperpipeAttribSGIX_ENUM,        "glXQueryHyperpipeAttribSGIX",        eglx_xQueryHyperpipeAttribSGIX },
/* GLX_MESA_agp_offset */
{ glXGetAGPOffsetMESA_ENUM,                "glXGetAGPOffsetMESA",                eglx_xGetAGPOffsetMESA },
/* GLX_EXT_texture_from_pixmap */
{ glXBindTexImageEXT_ENUM,                 "glXBindTexImageEXT",                 eglx_xBindTexImageEXT },
{ glXReleaseTexImageEXT_ENUM,              "glXReleaseTexImageEXT",              eglx_xReleaseTexImageEXT },
/* GLX_NV_present_video */
{ glXEnumerateVideoDevicesNV_ENUM,         "glXEnumerateVideoDevicesNV",         eglx_xEnumerateVideoDevicesNV },
{ glXBindVideoDeviceNV_ENUM,               "glXBindVideoDeviceNV",               eglx_xBindVideoDeviceNV },
/* GLX_NV_video_output */
{ glXGetVideoDeviceNV_ENUM,                "glXGetVideoDeviceNV",                eglx_xGetVideoDeviceNV },
{ glXReleaseVideoDeviceNV_ENUM,            "glXReleaseVideoDeviceNV",            eglx_xReleaseVideoDeviceNV },
{ glXBindVideoImageNV_ENUM,                "glXBindVideoImageNV",                eglx_xBindVideoImageNV },
{ glXReleaseVideoImageNV_ENUM,             "glXReleaseVideoImageNV",             eglx_xReleaseVideoImageNV },
{ glXSendPbufferToVideoNV_ENUM,            "glXSendPbufferToVideoNV",            eglx_xSendPbufferToVideoNV },
{ glXGetVideoInfoNV_ENUM,                  "glXGetVideoInfoNV",                  eglx_xGetVideoInfoNV },
/* GLX_NV_swap_group */
{ glXJoinSwapGroupNV_ENUM,                 "glXJoinSwapGroupNV",                 eglx_xJoinSwapGroupNV },
{ glXBindSwapBarrierNV_ENUM,               "glXBindSwapBarrierNV",               eglx_xBindSwapBarrierNV },
{ glXQuerySwapGroupNV_ENUM,                "glXQuerySwapGroupNV",                eglx_xQuerySwapGroupNV },
{ glXQueryMaxSwapGroupsNV_ENUM,            "glXQueryMaxSwapGroupsNV",            eglx_xQueryMaxSwapGroupsNV },
{ glXQueryFrameCountNV_ENUM,               "glXQueryFrameCountNV",               eglx_xQueryFrameCountNV },
{ glXResetFrameCountNV_ENUM,               "glXResetFrameCountNV",               eglx_xResetFrameCountNV },
/* GLX_NV_video_capture */
{ glXBindVideoCaptureDeviceNV_ENUM,        "glXBindVideoCaptureDeviceNV",        eglx_xBindVideoCaptureDeviceNV },
{ glXEnumerateVideoCaptureDevicesNV_ENUM,  "glXEnumerateVideoCaptureDevicesNV",  eglx_xEnumerateVideoCaptureDevicesNV },
{ glXLockVideoCaptureDeviceNV_ENUM,        "glXLockVideoCaptureDeviceNV",        eglx_xLockVideoCaptureDeviceNV },
{ glXQueryVideoCaptureDeviceNV_ENUM,       "glXQueryVideoCaptureDeviceNV",       eglx_xQueryVideoCaptureDeviceNV },
{ glXReleaseVideoCaptureDeviceNV_ENUM,     "glXReleaseVideoCaptureDeviceNV",     eglx_xReleaseVideoCaptureDeviceNV },
/* GLX_EXT_swap_control */
{ glXSwapIntervalEXT_ENUM,                 "glXSwapIntervalEXT",                 eglx_xSwapIntervalEXT },
/* GLX_NV_copy_image */
{ glXCopyImageSubDataNV_ENUM,              "glXCopyImageSubDataNV",              eglx_xCopyImageSubDataNV },
/* GLX_INTEL_swap_event */
/* GLX_NV_multisample_coverage */
/* GLX_EXT_swap_control_tear */

#endif // COMPILE_GLXEXT
