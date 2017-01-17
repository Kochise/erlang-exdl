%%
%%  Copyright (c) 2010 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_glxext.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_glxext).

-include("exdl.hrl").

-ifdef(COMPILE_GLXEXT).

%% 1- EXPORT

%-compile(export_all).

%% GLX_VERSION_1_3

-export( [ xGetFBConfigs/3
         , xChooseFBConfig/4
         , xGetFBConfigAttrib/4
         , xGetVisualFromFBConfig/2
         , xCreateWindow/4
         , xDestroyWindow/2
         , xCreatePixmap/4
         , xDestroyPixmap/2
         , xCreatePbuffer/3
         , xDestroyPbuffer/2
         , xQueryDrawable/4
         , xCreateNewContext/5
         , xMakeContextCurrent/4
         , xGetCurrentReadDrawable/0
         , xGetCurrentDisplay/0
         , xQueryContext/4
         , xSelectEvent/3
         , xGetSelectedEvent/2
         ]
       ).

%% GLX_VERSION_1_4

-export( [ xGetProcAddress/1
         ]
       ).

%% GLX_ARB_get_proc_address

-export( [ xGetProcAddressARB/1
         ]
       ).

%% GLX_ARB_multisample

%% GLX_ARB_fbconfig_float

%% GLX_ARB_framebuffer_sRGB

%% GLX_ARB_create_context

-export( [ xCreateContextAttribsARB/5
         ]
       ).

%% GLX_ARB_create_context_profile

%% GLX_ARB_create_context_robustness

%% GLX_SGIS_multisample

%% GLX_EXT_visual_info

%% GLX_SGI_swap_control

-export( [ xSwapIntervalSGI/1
         ]
       ).

%% GLX_SGI_video_sync

-export( [ xGetVideoSyncSGI/1
         , xWaitVideoSyncSGI/3
         ]
       ).

%% GLX_SGI_make_current_read

-export( [ xMakeCurrentReadSGI/4
         , xGetCurrentReadDrawableSGI/0
         ]
       ).

%% GLX_SGIX_video_source

-export( [ xCreateGLXVideoSourceSGIX/6
         , xDestroyGLXVideoSourceSGIX/2
         ]
       ).

%% GLX_EXT_import_context

-export( [ xGetCurrentDisplayEXT/0
         , xQueryContextInfoEXT/4
         , xGetContextIDEXT/1
         , xImportContextEXT/2
         , xFreeContextEXT/2
         ]
       ).

%% GLX_SGIX_fbconfig

-export( [ xGetFBConfigAttribSGIX/4
         , xChooseFBConfigSGIX/4
         , xCreateGLXPixmapWithConfigSGIX/3
         , xCreateContextWithConfigSGIX/5
         , xGetVisualFromFBConfigSGIX/2
         , xGetFBConfigFromVisualSGIX/2
         ]
       ).

%% GLX_SGIX_pbuffer

-export( [ xCreateGLXPbufferSGIX/5
         , xDestroyGLXPbufferSGIX/2
         , xQueryGLXPbufferSGIX/4
         , xSelectEventSGIX/3
         , xGetSelectedEventSGIX/2
         ]
       ).

%% GLX_SGI_cushion

-export( [ xCushionSGI/3
         ]
       ).

%% GLX_SGIX_video_resize

-export( [ xBindChannelToWindowSGIX/4
         , xChannelRectSGIX/7
         , xQueryChannelRectSGIX/7
         , xQueryChannelDeltasSGIX/7
         , xChannelRectSyncSGIX/4
         ]
       ).

%% GLX_SGIX_dmbuffer

-export( [ xAssociateDMPbufferSGIX/4
         ]
       ).

%% GLX_SGIX_swap_group

-export( [ xJoinSwapGroupSGIX/3
         ]
       ).

%% GLX_SGIX_swap_barrier

-export( [ xBindSwapBarrierSGIX/3
         , xQueryMaxSwapBarriersSGIX/3
         ]
       ).

%% GLX_SUN_get_transparent_index

-export( [ xGetTransparentIndexSUN/4
         ]
       ).

%% GLX_MESA_copy_sub_buffer

-export( [ xCopySubBufferMESA/6
         ]
       ).

%% GLX_MESA_pixmap_colormap

-export( [ xCreateGLXPixmapMESA/4
         ]
       ).

%% GLX_MESA_release_buffers

-export( [ xReleaseBuffersMESA/2
         ]
       ).

%% GLX_MESA_set_3dfx_mode

-export( [ xSet3DfxModeMESA/1
         ]
       ).

%% GLX_OML_sync_control

-export( [ xGetSyncValuesOML/5
         , xGetMscRateOML/4
         , xSwapBuffersMscOML/5
         , xWaitForMscOML/8
         , xWaitForSbcOML/6
         , xQueryHyperpipeNetworkSGIX/2
         , xHyperpipeConfigSGIX/5
         , xQueryHyperpipeConfigSGIX/3
         , xDestroyHyperpipeConfigSGIX/2
         , xBindHyperpipeSGIX/2
         , xQueryHyperpipeBestAttribSGIX/6
         , xHyperpipeAttribSGIX/5
         , xQueryHyperpipeAttribSGIX/5
         ]
       ).

%% GLX_MESA_agp_offset

-export( [ xGetAGPOffsetMESA/1
         ]
       ).

%% GLX_EXT_texture_from_pixmap

-export( [ xBindTexImageEXT/4
         , xReleaseTexImageEXT/3
         ]
       ).

%% GLX_NV_present_video

-export( [ xEnumerateVideoDevicesNV/3
         , xBindVideoDeviceNV/4
         ]
       ).

%% GLX_NV_video_output

-export( [ xGetVideoDeviceNV/4
         , xReleaseVideoDeviceNV/3
         , xBindVideoImageNV/4
         , xReleaseVideoImageNV/2
         , xSendPbufferToVideoNV/5
         , xGetVideoInfoNV/5
         ]
       ).

%% GLX_NV_swap_group

-export( [ xJoinSwapGroupNV/3
         , xBindSwapBarrierNV/3
         , xQuerySwapGroupNV/4
         , xQueryMaxSwapGroupsNV/4
         , xQueryFrameCountNV/3
         , xResetFrameCountNV/2
         ]
       ).

%% GLX_NV_video_capture

-export( [ xBindVideoCaptureDeviceNV/3
         , xEnumerateVideoCaptureDevicesNV/3
         , xLockVideoCaptureDeviceNV/2
         , xQueryVideoCaptureDeviceNV/4
         , xReleaseVideoCaptureDeviceNV/2
         ]
       ).

%% GLX_EXT_swap_control

-export( [ xSwapIntervalEXT/3
         ]
       ).

%% GLX_NV_copy_image

-export( [ xCopyImageSubDataNV/18
         ]
       ).

%% GLX_INTEL_swap_event

%% GLX_NV_multisample_coverage

%% GLX_EXT_swap_control_tear

%% 2- INCLUDE

-include("exdl_glxext.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% GLX_VERSION_1_3

%% Func:       xGetFBConfigs
%% Args:       Dpy, Screen, Nelements
%% Returns:    Exdl
%% C-API func: GLXFBConfig* glXGetFBConfigs(Display* dpy, int screen, int* nelements)

xGetFBConfigs(Dpy, Screen, Nelements)
 -> case
      call
      ( ?glXGetFBConfigs
      , <<Dpy:?_PTR
        , Screen:?Int
        , Nelements:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xChooseFBConfig
%% Args:       Dpy, Screen, AttribList, Nelements
%% Returns:    Exdl
%% C-API func: GLXFBConfig* glXChooseFBConfig(Display* dpy, int screen, const int* attrib_list, int* nelements)

xChooseFBConfig(Dpy, Screen, AttribList, Nelements)
 -> case
      call
      ( ?glXChooseFBConfig
      , <<Dpy:?_PTR
        , Screen:?Int
        , AttribList:?_PTR
        , Nelements:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xGetFBConfigAttrib
%% Args:       Dpy, Config, Attribute, Value
%% Returns:    Exdl
%% C-API func: int glXGetFBConfigAttrib(Display* dpy, GLXFBConfig config, int attribute, int* value)

xGetFBConfigAttrib(Dpy, Config, Attribute, Value)
 -> case
      call
      ( ?glXGetFBConfigAttrib
      , <<Dpy:?_PTR
        , Config:?GLXFBConfig
        , Attribute:?Int
        , Value:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xGetVisualFromFBConfig
%% Args:       Dpy, Config
%% Returns:    Exdl
%% C-API func: XVisualInfo* glXGetVisualFromFBConfig(Display* dpy, GLXFBConfig config)

xGetVisualFromFBConfig(Dpy, Config)
 -> case
      call
      ( ?glXGetVisualFromFBConfig
      , <<Dpy:?_PTR
        , Config:?GLXFBConfig
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xCreateWindow
%% Args:       Dpy, Config, Win, AttribList
%% Returns:    Exdl
%% C-API func: GLXWindow glXCreateWindow(Display* dpy, GLXFBConfig config, Window win, const int* attrib_list)

xCreateWindow(Dpy, Config, Win, AttribList)
 -> case
      call
      ( ?glXCreateWindow
      , <<Dpy:?_PTR
        , Config:?GLXFBConfig
        , Win:?Window
        , AttribList:?_PTR
        >>
      )
    of
      <<Exdl:?GLXWindow
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xDestroyWindow
%% Args:       Dpy, Win
%% Returns:    ok
%% C-API func: void glXDestroyWindow(Display* dpy, GLXWindow win)

xDestroyWindow(Dpy, Win)
 -> cast
    ( ?glXDestroyWindow
    , <<Dpy:?_PTR
      , Win:?GLXWindow
      >>
    )
.

%% Func:       xCreatePixmap
%% Args:       Dpy, Config, Pixmap, AttribList
%% Returns:    Exdl
%% C-API func: GLXPixmap glXCreatePixmap(Display* dpy, GLXFBConfig config, Pixmap pixmap, const int* attrib_list)

xCreatePixmap(Dpy, Config, Pixmap, AttribList)
 -> case
      call
      ( ?glXCreatePixmap
      , <<Dpy:?_PTR
        , Config:?GLXFBConfig
        , Pixmap:?Pixmap
        , AttribList:?_PTR
        >>
      )
    of
      <<Exdl:?GLXPixmap
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xDestroyPixmap
%% Args:       Dpy, Pixmap
%% Returns:    ok
%% C-API func: void glXDestroyPixmap(Display* dpy, GLXPixmap pixmap)

xDestroyPixmap(Dpy, Pixmap)
 -> cast
    ( ?glXDestroyPixmap
    , <<Dpy:?_PTR
      , Pixmap:?GLXPixmap
      >>
    )
.

%% Func:       xCreatePbuffer
%% Args:       Dpy, Config, AttribList
%% Returns:    Exdl
%% C-API func: GLXPbuffer glXCreatePbuffer(Display* dpy, GLXFBConfig config, const int* attrib_list)

xCreatePbuffer(Dpy, Config, AttribList)
 -> case
      call
      ( ?glXCreatePbuffer
      , <<Dpy:?_PTR
        , Config:?GLXFBConfig
        , AttribList:?_PTR
        >>
      )
    of
      <<Exdl:?GLXPbuffer
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xDestroyPbuffer
%% Args:       Dpy, Pbuf
%% Returns:    ok
%% C-API func: void glXDestroyPbuffer(Display* dpy, GLXPbuffer pbuf)

xDestroyPbuffer(Dpy, Pbuf)
 -> cast
    ( ?glXDestroyPbuffer
    , <<Dpy:?_PTR
      , Pbuf:?GLXPbuffer
      >>
    )
.

%% Func:       xQueryDrawable
%% Args:       Dpy, Draw, Attribute, Value
%% Returns:    ok
%% C-API func: void glXQueryDrawable(Display* dpy, GLXDrawable draw, int attribute, unsigned int* value)

xQueryDrawable(Dpy, Draw, Attribute, Value)
 -> cast
    ( ?glXQueryDrawable
    , <<Dpy:?_PTR
      , Draw:?GLXDrawable
      , Attribute:?Int
      , Value:?_PTR
      >>
    )
.

%% Func:       xCreateNewContext
%% Args:       Dpy, Config, RenderType, ShareList, Direct
%% Returns:    Exdl
%% C-API func: GLXContext glXCreateNewContext(Display* dpy, GLXFBConfig config, int render_type, GLXContext share_list, Bool direct)

xCreateNewContext(Dpy, Config, RenderType, ShareList, Direct)
 -> case
      call
      ( ?glXCreateNewContext
      , <<Dpy:?_PTR
        , Config:?GLXFBConfig
        , RenderType:?Int
        , ShareList:?GLXContext
        , Direct:?Bool
        >>
      )
    of
      <<Exdl:?GLXContext
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xMakeContextCurrent
%% Args:       Dpy, Draw, Read, Ctx
%% Returns:    Exdl
%% C-API func: Bool glXMakeContextCurrent(Display* dpy, GLXDrawable draw, GLXDrawable read, GLXContext ctx)

xMakeContextCurrent(Dpy, Draw, Read, Ctx)
 -> case
      call
      ( ?glXMakeContextCurrent
      , <<Dpy:?_PTR
        , Draw:?GLXDrawable
        , Read:?GLXDrawable
        , Ctx:?GLXContext
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xGetCurrentReadDrawable
%% Args:       none
%% Returns:    Exdl
%% C-API func: GLXDrawable glXGetCurrentReadDrawable(void)

xGetCurrentReadDrawable()
 -> case
      call
      ( ?glXGetCurrentReadDrawable
      , [
        ]
      )
    of
      <<Exdl:?GLXDrawable
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xGetCurrentDisplay
%% Args:       none
%% Returns:    Exdl
%% C-API func: Display* glXGetCurrentDisplay(void)

xGetCurrentDisplay()
 -> case
      call
      ( ?glXGetCurrentDisplay
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQueryContext
%% Args:       Dpy, Ctx, Attribute, Value
%% Returns:    Exdl
%% C-API func: int glXQueryContext(Display* dpy, GLXContext ctx, int attribute, int* value)

xQueryContext(Dpy, Ctx, Attribute, Value)
 -> case
      call
      ( ?glXQueryContext
      , <<Dpy:?_PTR
        , Ctx:?GLXContext
        , Attribute:?Int
        , Value:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xSelectEvent
%% Args:       Dpy, Draw, EventMask
%% Returns:    ok
%% C-API func: void glXSelectEvent(Display* dpy, GLXDrawable draw, unsigned long event_mask)

xSelectEvent(Dpy, Draw, EventMask)
 -> cast
    ( ?glXSelectEvent
    , <<Dpy:?_PTR
      , Draw:?GLXDrawable
      , EventMask:?Ulong
      >>
    )
.

%% Func:       xGetSelectedEvent
%% Args:       Dpy, Draw
%% Returns:    { Event_mask }
%% C-API func: void glXGetSelectedEvent(Display* dpy, GLXDrawable draw, unsigned long* event_mask)

xGetSelectedEvent(Dpy, Draw)
 -> case
      call
      ( ?glXGetSelectedEvent
      , <<Dpy:?_PTR
        , Draw:?GLXDrawable
        >>
      )
    of
      <<Event_mask:?_PTR
      >>
        -> { Event_mask }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_VERSION_1_4

%% Func:       xGetProcAddress
%% Args:       ProcName
%% Returns:    Exdl
%% C-API func: __GLXextFuncPtr glXGetProcAddress(const GLubyte* procName)

xGetProcAddress(ProcName)
 -> case
      call
      ( ?glXGetProcAddress
      , <<ProcName:?_PTR
        >>
      )
    of
      <<Exdl:?__GLXextFuncPtr
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_ARB_get_proc_address

%% Func:       xGetProcAddressARB
%% Args:       ProcName
%% Returns:    Exdl
%% C-API func: __GLXextFuncPtr glXGetProcAddressARB(const GLubyte* procName)

xGetProcAddressARB(ProcName)
 -> case
      call
      ( ?glXGetProcAddressARB
      , <<ProcName:?_PTR
        >>
      )
    of
      <<Exdl:?__GLXextFuncPtr
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_ARB_multisample

%% GLX_ARB_fbconfig_float

%% GLX_ARB_framebuffer_sRGB

%% GLX_ARB_create_context

%% Func:       xCreateContextAttribsARB
%% Args:       Dpy, Config, ShareContext, Direct, AttribList
%% Returns:    Exdl
%% C-API func: GLXContext glXCreateContextAttribsARB(Display* dpy, GLXFBConfig config, GLXContext share_context, Bool direct, const int* attrib_list)

xCreateContextAttribsARB(Dpy, Config, ShareContext, Direct, AttribList)
 -> case
      call
      ( ?glXCreateContextAttribsARB
      , <<Dpy:?_PTR
        , Config:?GLXFBConfig
        , ShareContext:?GLXContext
        , Direct:?Bool
        , AttribList:?_PTR
        >>
      )
    of
      <<Exdl:?GLXContext
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_ARB_create_context_profile

%% GLX_ARB_create_context_robustness

%% GLX_SGIS_multisample

%% GLX_EXT_visual_info

%% GLX_SGI_swap_control

%% Func:       xSwapIntervalSGI
%% Args:       Interval
%% Returns:    Exdl
%% C-API func: int glXSwapIntervalSGI(int interval)

xSwapIntervalSGI(Interval)
 -> case
      call
      ( ?glXSwapIntervalSGI
      , <<Interval:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_SGI_video_sync

%% Func:       xGetVideoSyncSGI
%% Args:       Count
%% Returns:    Exdl
%% C-API func: int glXGetVideoSyncSGI(unsigned int* count)

xGetVideoSyncSGI(Count)
 -> case
      call
      ( ?glXGetVideoSyncSGI
      , <<Count:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xWaitVideoSyncSGI
%% Args:       Divisor, Remainder, Count
%% Returns:    Exdl
%% C-API func: int glXWaitVideoSyncSGI(int divisor, int remainder, unsigned int* count)

xWaitVideoSyncSGI(Divisor, Remainder, Count)
 -> case
      call
      ( ?glXWaitVideoSyncSGI
      , <<Divisor:?Int
        , Remainder:?Int
        , Count:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_SGI_make_current_read

%% Func:       xMakeCurrentReadSGI
%% Args:       Dpy, Draw, Read, Ctx
%% Returns:    Exdl
%% C-API func: Bool glXMakeCurrentReadSGI(Display* dpy, GLXDrawable draw, GLXDrawable read, GLXContext ctx)

xMakeCurrentReadSGI(Dpy, Draw, Read, Ctx)
 -> case
      call
      ( ?glXMakeCurrentReadSGI
      , <<Dpy:?_PTR
        , Draw:?GLXDrawable
        , Read:?GLXDrawable
        , Ctx:?GLXContext
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xGetCurrentReadDrawableSGI
%% Args:       none
%% Returns:    Exdl
%% C-API func: GLXDrawable glXGetCurrentReadDrawableSGI(void)

xGetCurrentReadDrawableSGI()
 -> case
      call
      ( ?glXGetCurrentReadDrawableSGI
      , [
        ]
      )
    of
      <<Exdl:?GLXDrawable
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_SGIX_video_source

%% Func:       xCreateGLXVideoSourceSGIX
%% Args:       Display, Screen, Server, Path, NodeClass, DrainNode
%% Returns:    Exdl
%% C-API func: GLXVideoSourceSGIX glXCreateGLXVideoSourceSGIX(Display* display, int screen, VLServer server, VLPath path, int nodeClass, VLNode drainNode)

xCreateGLXVideoSourceSGIX(Display, Screen, Server, Path, NodeClass, DrainNode)
 -> case
      call
      ( ?glXCreateGLXVideoSourceSGIX
      , <<Display:?_PTR
        , Screen:?Int
        , Server:?VLServer
        , Path:?VLPath
        , NodeClass:?Int
        , DrainNode:?VLNode
        >>
      )
    of
      <<Exdl:?GLXVideoSourceSGIX
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xDestroyGLXVideoSourceSGIX
%% Args:       Dpy, Glxvideosource
%% Returns:    ok
%% C-API func: void glXDestroyGLXVideoSourceSGIX(Display* dpy, GLXVideoSourceSGIX glxvideosource)

xDestroyGLXVideoSourceSGIX(Dpy, Glxvideosource)
 -> cast
    ( ?glXDestroyGLXVideoSourceSGIX
    , <<Dpy:?_PTR
      , Glxvideosource:?GLXVideoSourceSGIX
      >>
    )
.

%% GLX_EXT_import_context

%% Func:       xGetCurrentDisplayEXT
%% Args:       none
%% Returns:    Exdl
%% C-API func: Display* glXGetCurrentDisplayEXT(void)

xGetCurrentDisplayEXT()
 -> case
      call
      ( ?glXGetCurrentDisplayEXT
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQueryContextInfoEXT
%% Args:       Dpy, Context, Attribute, Value
%% Returns:    Exdl
%% C-API func: int glXQueryContextInfoEXT(Display* dpy, GLXContext context, int attribute, int* value)

xQueryContextInfoEXT(Dpy, Context, Attribute, Value)
 -> case
      call
      ( ?glXQueryContextInfoEXT
      , <<Dpy:?_PTR
        , Context:?GLXContext
        , Attribute:?Int
        , Value:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xGetContextIDEXT
%% Args:       Context
%% Returns:    Exdl
%% C-API func: GLXContextID glXGetContextIDEXT(const GLXContext context)

xGetContextIDEXT(Context)
 -> case
      call
      ( ?glXGetContextIDEXT
      , <<Context:?GLXContext
        >>
      )
    of
      <<Exdl:?GLXContextID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xImportContextEXT
%% Args:       Dpy, ContextID
%% Returns:    Exdl
%% C-API func: GLXContext glXImportContextEXT(Display* dpy, GLXContextID contextID)

xImportContextEXT(Dpy, ContextID)
 -> case
      call
      ( ?glXImportContextEXT
      , <<Dpy:?_PTR
        , ContextID:?GLXContextID
        >>
      )
    of
      <<Exdl:?GLXContext
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xFreeContextEXT
%% Args:       Dpy, Context
%% Returns:    ok
%% C-API func: void glXFreeContextEXT(Display* dpy, GLXContext context)

xFreeContextEXT(Dpy, Context)
 -> cast
    ( ?glXFreeContextEXT
    , <<Dpy:?_PTR
      , Context:?GLXContext
      >>
    )
.

%% GLX_SGIX_fbconfig

%% Func:       xGetFBConfigAttribSGIX
%% Args:       Dpy, Config, Attribute, Value
%% Returns:    Exdl
%% C-API func: int glXGetFBConfigAttribSGIX(Display* dpy, GLXFBConfigSGIX config, int attribute, int* value)

xGetFBConfigAttribSGIX(Dpy, Config, Attribute, Value)
 -> case
      call
      ( ?glXGetFBConfigAttribSGIX
      , <<Dpy:?_PTR
        , Config:?GLXFBConfigSGIX
        , Attribute:?Int
        , Value:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xChooseFBConfigSGIX
%% Args:       Dpy, Screen, AttribList, Nelements
%% Returns:    Exdl
%% C-API func: GLXFBConfigSGIX* glXChooseFBConfigSGIX(Display* dpy, int screen, int* attrib_list, int* nelements)

xChooseFBConfigSGIX(Dpy, Screen, AttribList, Nelements)
 -> case
      call
      ( ?glXChooseFBConfigSGIX
      , <<Dpy:?_PTR
        , Screen:?Int
        , AttribList:?_PTR
        , Nelements:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xCreateGLXPixmapWithConfigSGIX
%% Args:       Dpy, Config, Pixmap
%% Returns:    Exdl
%% C-API func: GLXPixmap glXCreateGLXPixmapWithConfigSGIX(Display* dpy, GLXFBConfigSGIX config, Pixmap pixmap)

xCreateGLXPixmapWithConfigSGIX(Dpy, Config, Pixmap)
 -> case
      call
      ( ?glXCreateGLXPixmapWithConfigSGIX
      , <<Dpy:?_PTR
        , Config:?GLXFBConfigSGIX
        , Pixmap:?Pixmap
        >>
      )
    of
      <<Exdl:?GLXPixmap
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xCreateContextWithConfigSGIX
%% Args:       Dpy, Config, RenderType, ShareList, Direct
%% Returns:    Exdl
%% C-API func: GLXContext glXCreateContextWithConfigSGIX(Display* dpy, GLXFBConfigSGIX config, int render_type, GLXContext share_list, Bool direct)

xCreateContextWithConfigSGIX(Dpy, Config, RenderType, ShareList, Direct)
 -> case
      call
      ( ?glXCreateContextWithConfigSGIX
      , <<Dpy:?_PTR
        , Config:?GLXFBConfigSGIX
        , RenderType:?Int
        , ShareList:?GLXContext
        , Direct:?Bool
        >>
      )
    of
      <<Exdl:?GLXContext
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xGetVisualFromFBConfigSGIX
%% Args:       Dpy, Config
%% Returns:    Exdl
%% C-API func: XVisualInfo* glXGetVisualFromFBConfigSGIX(Display* dpy, GLXFBConfigSGIX config)

xGetVisualFromFBConfigSGIX(Dpy, Config)
 -> case
      call
      ( ?glXGetVisualFromFBConfigSGIX
      , <<Dpy:?_PTR
        , Config:?GLXFBConfigSGIX
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xGetFBConfigFromVisualSGIX
%% Args:       Dpy, Vis
%% Returns:    Exdl
%% C-API func: GLXFBConfigSGIX glXGetFBConfigFromVisualSGIX(Display* dpy, XVisualInfo* vis)

xGetFBConfigFromVisualSGIX(Dpy, Vis)
 -> case
      call
      ( ?glXGetFBConfigFromVisualSGIX
      , <<Dpy:?_PTR
        , Vis:?_PTR
        >>
      )
    of
      <<Exdl:?GLXFBConfigSGIX
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_SGIX_pbuffer

%% Func:       xCreateGLXPbufferSGIX
%% Args:       Dpy, Config, Width, Height, AttribList
%% Returns:    Exdl
%% C-API func: GLXPbufferSGIX glXCreateGLXPbufferSGIX(Display* dpy, GLXFBConfigSGIX config, unsigned int width, unsigned int height, int* attrib_list)

xCreateGLXPbufferSGIX(Dpy, Config, Width, Height, AttribList)
 -> case
      call
      ( ?glXCreateGLXPbufferSGIX
      , <<Dpy:?_PTR
        , Config:?GLXFBConfigSGIX
        , Width:?Uint
        , Height:?Uint
        , AttribList:?_PTR
        >>
      )
    of
      <<Exdl:?GLXPbufferSGIX
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xDestroyGLXPbufferSGIX
%% Args:       Dpy, Pbuf
%% Returns:    ok
%% C-API func: void glXDestroyGLXPbufferSGIX(Display* dpy, GLXPbufferSGIX pbuf)

xDestroyGLXPbufferSGIX(Dpy, Pbuf)
 -> cast
    ( ?glXDestroyGLXPbufferSGIX
    , <<Dpy:?_PTR
      , Pbuf:?GLXPbufferSGIX
      >>
    )
.

%% Func:       xQueryGLXPbufferSGIX
%% Args:       Dpy, Pbuf, Attribute, Value
%% Returns:    Exdl
%% C-API func: int glXQueryGLXPbufferSGIX(Display* dpy, GLXPbufferSGIX pbuf, int attribute, unsigned int* value)

xQueryGLXPbufferSGIX(Dpy, Pbuf, Attribute, Value)
 -> case
      call
      ( ?glXQueryGLXPbufferSGIX
      , <<Dpy:?_PTR
        , Pbuf:?GLXPbufferSGIX
        , Attribute:?Int
        , Value:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xSelectEventSGIX
%% Args:       Dpy, Drawable, Mask
%% Returns:    ok
%% C-API func: void glXSelectEventSGIX(Display* dpy, GLXDrawable drawable, unsigned long mask)

xSelectEventSGIX(Dpy, Drawable, Mask)
 -> cast
    ( ?glXSelectEventSGIX
    , <<Dpy:?_PTR
      , Drawable:?GLXDrawable
      , Mask:?Ulong
      >>
    )
.

%% Func:       xGetSelectedEventSGIX
%% Args:       Dpy, Drawable
%% Returns:    { Mask }
%% C-API func: void glXGetSelectedEventSGIX(Display* dpy, GLXDrawable drawable, unsigned long* mask)

xGetSelectedEventSGIX(Dpy, Drawable)
 -> case
      call
      ( ?glXGetSelectedEventSGIX
      , <<Dpy:?_PTR
        , Drawable:?GLXDrawable
        >>
      )
    of
      <<Mask:?_PTR
      >>
        -> { Mask }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_SGI_cushion

%% Func:       xCushionSGI
%% Args:       Dpy, Window, Cushion
%% Returns:    ok
%% C-API func: void glXCushionSGI(Display* dpy, Window window, float cushion)

xCushionSGI(Dpy, Window, Cushion)
 -> cast
    ( ?glXCushionSGI
    , <<Dpy:?_PTR
      , Window:?Window
      , Cushion:?Float
      >>
    )
.

%% GLX_SGIX_video_resize

%% Func:       xBindChannelToWindowSGIX
%% Args:       Display, Screen, Channel, Window
%% Returns:    Exdl
%% C-API func: int glXBindChannelToWindowSGIX(Display* display, int screen, int channel, Window window)

xBindChannelToWindowSGIX(Display, Screen, Channel, Window)
 -> case
      call
      ( ?glXBindChannelToWindowSGIX
      , <<Display:?_PTR
        , Screen:?Int
        , Channel:?Int
        , Window:?Window
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xChannelRectSGIX
%% Args:       Display, Screen, Channel, X, Y, W, H
%% Returns:    Exdl
%% C-API func: int glXChannelRectSGIX(Display* display, int screen, int channel, int x, int y, int w, int h)

xChannelRectSGIX(Display, Screen, Channel, X, Y, W, H)
 -> case
      call
      ( ?glXChannelRectSGIX
      , <<Display:?_PTR
        , Screen:?Int
        , Channel:?Int
        , X:?Int
        , Y:?Int
        , W:?Int
        , H:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQueryChannelRectSGIX
%% Args:       Display, Screen, Channel, Dx, Dy, Dw, Dh
%% Returns:    Exdl
%% C-API func: int glXQueryChannelRectSGIX(Display* display, int screen, int channel, int* dx, int* dy, int* dw, int* dh)

xQueryChannelRectSGIX(Display, Screen, Channel, Dx, Dy, Dw, Dh)
 -> case
      call
      ( ?glXQueryChannelRectSGIX
      , <<Display:?_PTR
        , Screen:?Int
        , Channel:?Int
        , Dx:?_PTR
        , Dy:?_PTR
        , Dw:?_PTR
        , Dh:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQueryChannelDeltasSGIX
%% Args:       Display, Screen, Channel, X, Y, W, H
%% Returns:    Exdl
%% C-API func: int glXQueryChannelDeltasSGIX(Display* display, int screen, int channel, int* x, int* y, int* w, int* h)

xQueryChannelDeltasSGIX(Display, Screen, Channel, X, Y, W, H)
 -> case
      call
      ( ?glXQueryChannelDeltasSGIX
      , <<Display:?_PTR
        , Screen:?Int
        , Channel:?Int
        , X:?_PTR
        , Y:?_PTR
        , W:?_PTR
        , H:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xChannelRectSyncSGIX
%% Args:       Display, Screen, Channel, Synctype
%% Returns:    Exdl
%% C-API func: int glXChannelRectSyncSGIX(Display* display, int screen, int channel, GLenum synctype)

xChannelRectSyncSGIX(Display, Screen, Channel, Synctype)
 -> case
      call
      ( ?glXChannelRectSyncSGIX
      , <<Display:?_PTR
        , Screen:?Int
        , Channel:?Int
        , Synctype:?GLenum
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_SGIX_dmbuffer

%% Func:       xAssociateDMPbufferSGIX
%% Args:       Dpy, Pbuffer, Params, Dmbuffer
%% Returns:    Exdl
%% C-API func: Bool glXAssociateDMPbufferSGIX(Display* dpy, GLXPbufferSGIX pbuffer, DMparams* params, DMbuffer dmbuffer)

xAssociateDMPbufferSGIX(Dpy, Pbuffer, Params, Dmbuffer)
 -> case
      call
      ( ?glXAssociateDMPbufferSGIX
      , <<Dpy:?_PTR
        , Pbuffer:?GLXPbufferSGIX
        , Params:?_PTR
        , Dmbuffer:?DMbuffer
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_SGIX_swap_group

%% Func:       xJoinSwapGroupSGIX
%% Args:       Dpy, Drawable, Member
%% Returns:    ok
%% C-API func: void glXJoinSwapGroupSGIX(Display* dpy, GLXDrawable drawable, GLXDrawable member)

xJoinSwapGroupSGIX(Dpy, Drawable, Member)
 -> cast
    ( ?glXJoinSwapGroupSGIX
    , <<Dpy:?_PTR
      , Drawable:?GLXDrawable
      , Member:?GLXDrawable
      >>
    )
.

%% GLX_SGIX_swap_barrier

%% Func:       xBindSwapBarrierSGIX
%% Args:       Dpy, Drawable, Barrier
%% Returns:    ok
%% C-API func: void glXBindSwapBarrierSGIX(Display* dpy, GLXDrawable drawable, int barrier)

xBindSwapBarrierSGIX(Dpy, Drawable, Barrier)
 -> cast
    ( ?glXBindSwapBarrierSGIX
    , <<Dpy:?_PTR
      , Drawable:?GLXDrawable
      , Barrier:?Int
      >>
    )
.

%% Func:       xQueryMaxSwapBarriersSGIX
%% Args:       Dpy, Screen, Max
%% Returns:    Exdl
%% C-API func: Bool glXQueryMaxSwapBarriersSGIX(Display* dpy, int screen, int* max)

xQueryMaxSwapBarriersSGIX(Dpy, Screen, Max)
 -> case
      call
      ( ?glXQueryMaxSwapBarriersSGIX
      , <<Dpy:?_PTR
        , Screen:?Int
        , Max:?_PTR
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_SUN_get_transparent_index

%% Func:       xGetTransparentIndexSUN
%% Args:       Dpy, Overlay, Underlay, PTransparentIndex
%% Returns:    Exdl
%% C-API func: Status glXGetTransparentIndexSUN(Display* dpy, Window overlay, Window underlay, long* pTransparentIndex)

xGetTransparentIndexSUN(Dpy, Overlay, Underlay, PTransparentIndex)
 -> case
      call
      ( ?glXGetTransparentIndexSUN
      , <<Dpy:?_PTR
        , Overlay:?Window
        , Underlay:?Window
        , PTransparentIndex:?_PTR
        >>
      )
    of
      <<Exdl:?Status
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_MESA_copy_sub_buffer

%% Func:       xCopySubBufferMESA
%% Args:       Dpy, Drawable, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glXCopySubBufferMESA(Display* dpy, GLXDrawable drawable, int x, int y, int width, int height)

xCopySubBufferMESA(Dpy, Drawable, X, Y, Width, Height)
 -> cast
    ( ?glXCopySubBufferMESA
    , <<Dpy:?_PTR
      , Drawable:?GLXDrawable
      , X:?Int
      , Y:?Int
      , Width:?Int
      , Height:?Int
      >>
    )
.

%% GLX_MESA_pixmap_colormap

%% Func:       xCreateGLXPixmapMESA
%% Args:       Dpy, Visual, Pixmap, Cmap
%% Returns:    Exdl
%% C-API func: GLXPixmap glXCreateGLXPixmapMESA(Display* dpy, XVisualInfo* visual, Pixmap pixmap, Colormap cmap)

xCreateGLXPixmapMESA(Dpy, Visual, Pixmap, Cmap)
 -> case
      call
      ( ?glXCreateGLXPixmapMESA
      , <<Dpy:?_PTR
        , Visual:?_PTR
        , Pixmap:?Pixmap
        , Cmap:?Colormap
        >>
      )
    of
      <<Exdl:?GLXPixmap
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_MESA_release_buffers

%% Func:       xReleaseBuffersMESA
%% Args:       Dpy, Drawable
%% Returns:    Exdl
%% C-API func: Bool glXReleaseBuffersMESA(Display* dpy, GLXDrawable drawable)

xReleaseBuffersMESA(Dpy, Drawable)
 -> case
      call
      ( ?glXReleaseBuffersMESA
      , <<Dpy:?_PTR
        , Drawable:?GLXDrawable
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_MESA_set_3dfx_mode

%% Func:       xSet3DfxModeMESA
%% Args:       Mode
%% Returns:    Exdl
%% C-API func: Bool glXSet3DfxModeMESA(int mode)

xSet3DfxModeMESA(Mode)
 -> case
      call
      ( ?glXSet3DfxModeMESA
      , <<Mode:?Int
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_OML_sync_control

%% Func:       xGetSyncValuesOML
%% Args:       Dpy, Drawable, Ust, Msc, Sbc
%% Returns:    Exdl
%% C-API func: Bool glXGetSyncValuesOML(Display* dpy, GLXDrawable drawable, int64_t* ust, int64_t* msc, int64_t* sbc)

xGetSyncValuesOML(Dpy, Drawable, Ust, Msc, Sbc)
 -> case
      call
      ( ?glXGetSyncValuesOML
      , <<Dpy:?_PTR
        , Drawable:?GLXDrawable
        , Ust:?_PTR
        , Msc:?_PTR
        , Sbc:?_PTR
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xGetMscRateOML
%% Args:       Dpy, Drawable, Numerator, Denominator
%% Returns:    Exdl
%% C-API func: Bool glXGetMscRateOML(Display* dpy, GLXDrawable drawable, int32_t* numerator, int32_t* denominator)

xGetMscRateOML(Dpy, Drawable, Numerator, Denominator)
 -> case
      call
      ( ?glXGetMscRateOML
      , <<Dpy:?_PTR
        , Drawable:?GLXDrawable
        , Numerator:?_PTR
        , Denominator:?_PTR
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xSwapBuffersMscOML
%% Args:       Dpy, Drawable, TargetMsc, Divisor, Remainder
%% Returns:    Exdl
%% C-API func: int64_t glXSwapBuffersMscOML(Display* dpy, GLXDrawable drawable, int64_t target_msc, int64_t divisor, int64_t remainder)

xSwapBuffersMscOML(Dpy, Drawable, TargetMsc, Divisor, Remainder)
 -> case
      call
      ( ?glXSwapBuffersMscOML
      , <<Dpy:?_PTR
        , Drawable:?GLXDrawable
        , TargetMsc:?Int64_t
        , Divisor:?Int64_t
        , Remainder:?Int64_t
        >>
      )
    of
      <<Exdl:?Int64_t
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xWaitForMscOML
%% Args:       Dpy, Drawable, TargetMsc, Divisor, Remainder, Ust, Msc, Sbc
%% Returns:    Exdl
%% C-API func: Bool glXWaitForMscOML(Display* dpy, GLXDrawable drawable, int64_t target_msc, int64_t divisor, int64_t remainder, int64_t* ust, int64_t* msc, int64_t* sbc)

xWaitForMscOML(Dpy, Drawable, TargetMsc, Divisor, Remainder, Ust, Msc, Sbc)
 -> case
      call
      ( ?glXWaitForMscOML
      , <<Dpy:?_PTR
        , Drawable:?GLXDrawable
        , TargetMsc:?Int64_t
        , Divisor:?Int64_t
        , Remainder:?Int64_t
        , Ust:?_PTR
        , Msc:?_PTR
        , Sbc:?_PTR
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xWaitForSbcOML
%% Args:       Dpy, Drawable, TargetSbc, Ust, Msc, Sbc
%% Returns:    Exdl
%% C-API func: Bool glXWaitForSbcOML(Display* dpy, GLXDrawable drawable, int64_t target_sbc, int64_t* ust, int64_t* msc, int64_t* sbc)

xWaitForSbcOML(Dpy, Drawable, TargetSbc, Ust, Msc, Sbc)
 -> case
      call
      ( ?glXWaitForSbcOML
      , <<Dpy:?_PTR
        , Drawable:?GLXDrawable
        , TargetSbc:?Int64_t
        , Ust:?_PTR
        , Msc:?_PTR
        , Sbc:?_PTR
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQueryHyperpipeNetworkSGIX
%% Args:       Dpy, Npipes
%% Returns:    Exdl
%% C-API func: GLXHyperpipeNetworkSGIX* glXQueryHyperpipeNetworkSGIX(Display* dpy, int* npipes)

xQueryHyperpipeNetworkSGIX(Dpy, Npipes)
 -> case
      call
      ( ?glXQueryHyperpipeNetworkSGIX
      , <<Dpy:?_PTR
        , Npipes:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xHyperpipeConfigSGIX
%% Args:       Dpy, NetworkId, Npipes, Cfg, HpId
%% Returns:    Exdl
%% C-API func: int glXHyperpipeConfigSGIX(Display* dpy, int networkId, int npipes, GLXHyperpipeConfigSGIX* cfg, int* hpId)

xHyperpipeConfigSGIX(Dpy, NetworkId, Npipes, Cfg, HpId)
 -> case
      call
      ( ?glXHyperpipeConfigSGIX
      , <<Dpy:?_PTR
        , NetworkId:?Int
        , Npipes:?Int
        , Cfg:?_PTR
        , HpId:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQueryHyperpipeConfigSGIX
%% Args:       Dpy, HpId, Npipes
%% Returns:    Exdl
%% C-API func: GLXHyperpipeConfigSGIX* glXQueryHyperpipeConfigSGIX(Display* dpy, int hpId, int* npipes)

xQueryHyperpipeConfigSGIX(Dpy, HpId, Npipes)
 -> case
      call
      ( ?glXQueryHyperpipeConfigSGIX
      , <<Dpy:?_PTR
        , HpId:?Int
        , Npipes:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xDestroyHyperpipeConfigSGIX
%% Args:       Dpy, HpId
%% Returns:    Exdl
%% C-API func: int glXDestroyHyperpipeConfigSGIX(Display* dpy, int hpId)

xDestroyHyperpipeConfigSGIX(Dpy, HpId)
 -> case
      call
      ( ?glXDestroyHyperpipeConfigSGIX
      , <<Dpy:?_PTR
        , HpId:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xBindHyperpipeSGIX
%% Args:       Dpy, HpId
%% Returns:    Exdl
%% C-API func: int glXBindHyperpipeSGIX(Display* dpy, int hpId)

xBindHyperpipeSGIX(Dpy, HpId)
 -> case
      call
      ( ?glXBindHyperpipeSGIX
      , <<Dpy:?_PTR
        , HpId:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQueryHyperpipeBestAttribSGIX
%% Args:       Dpy, TimeSlice, Attrib, Size, AttribList, ReturnAttribList
%% Returns:    Exdl
%% C-API func: int glXQueryHyperpipeBestAttribSGIX(Display* dpy, int timeSlice, int attrib, int size, void* attribList, void* returnAttribList)

xQueryHyperpipeBestAttribSGIX(Dpy, TimeSlice, Attrib, Size, AttribList, ReturnAttribList)
 -> case
      call
      ( ?glXQueryHyperpipeBestAttribSGIX
      , <<Dpy:?_PTR
        , TimeSlice:?Int
        , Attrib:?Int
        , Size:?Int
        , AttribList:?_PTR
        , ReturnAttribList:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xHyperpipeAttribSGIX
%% Args:       Dpy, TimeSlice, Attrib, Size, AttribList
%% Returns:    Exdl
%% C-API func: int glXHyperpipeAttribSGIX(Display* dpy, int timeSlice, int attrib, int size, void* attribList)

xHyperpipeAttribSGIX(Dpy, TimeSlice, Attrib, Size, AttribList)
 -> case
      call
      ( ?glXHyperpipeAttribSGIX
      , <<Dpy:?_PTR
        , TimeSlice:?Int
        , Attrib:?Int
        , Size:?Int
        , AttribList:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQueryHyperpipeAttribSGIX
%% Args:       Dpy, TimeSlice, Attrib, Size, ReturnAttribList
%% Returns:    Exdl
%% C-API func: int glXQueryHyperpipeAttribSGIX(Display* dpy, int timeSlice, int attrib, int size, void* returnAttribList)

xQueryHyperpipeAttribSGIX(Dpy, TimeSlice, Attrib, Size, ReturnAttribList)
 -> case
      call
      ( ?glXQueryHyperpipeAttribSGIX
      , <<Dpy:?_PTR
        , TimeSlice:?Int
        , Attrib:?Int
        , Size:?Int
        , ReturnAttribList:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_MESA_agp_offset

%% Func:       xGetAGPOffsetMESA
%% Args:       Pointer
%% Returns:    Exdl
%% C-API func: unsigned int glXGetAGPOffsetMESA(const void* pointer)

xGetAGPOffsetMESA(Pointer)
 -> case
      call
      ( ?glXGetAGPOffsetMESA
      , <<Pointer:?_PTR
        >>
      )
    of
      <<Exdl:?Uint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_EXT_texture_from_pixmap

%% Func:       xBindTexImageEXT
%% Args:       Dpy, Drawable, Buffer, AttribList
%% Returns:    ok
%% C-API func: void glXBindTexImageEXT(Display* dpy, GLXDrawable drawable, int buffer, const int* attrib_list)

xBindTexImageEXT(Dpy, Drawable, Buffer, AttribList)
 -> cast
    ( ?glXBindTexImageEXT
    , <<Dpy:?_PTR
      , Drawable:?GLXDrawable
      , Buffer:?Int
      , AttribList:?_PTR
      >>
    )
.

%% Func:       xReleaseTexImageEXT
%% Args:       Dpy, Drawable, Buffer
%% Returns:    ok
%% C-API func: void glXReleaseTexImageEXT(Display* dpy, GLXDrawable drawable, int buffer)

xReleaseTexImageEXT(Dpy, Drawable, Buffer)
 -> cast
    ( ?glXReleaseTexImageEXT
    , <<Dpy:?_PTR
      , Drawable:?GLXDrawable
      , Buffer:?Int
      >>
    )
.

%% GLX_NV_present_video

%% Func:       xEnumerateVideoDevicesNV
%% Args:       Dpy, Screen, Nelements
%% Returns:    Exdl
%% C-API func: unsigned int* glXEnumerateVideoDevicesNV(Display* dpy, int screen, int* nelements)

xEnumerateVideoDevicesNV(Dpy, Screen, Nelements)
 -> case
      call
      ( ?glXEnumerateVideoDevicesNV
      , <<Dpy:?_PTR
        , Screen:?Int
        , Nelements:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xBindVideoDeviceNV
%% Args:       Dpy, VideoSlot, VideoDevice, AttribList
%% Returns:    Exdl
%% C-API func: int glXBindVideoDeviceNV(Display* dpy, unsigned int video_slot, unsigned int video_device, const int* attrib_list)

xBindVideoDeviceNV(Dpy, VideoSlot, VideoDevice, AttribList)
 -> case
      call
      ( ?glXBindVideoDeviceNV
      , <<Dpy:?_PTR
        , VideoSlot:?Uint
        , VideoDevice:?Uint
        , AttribList:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_NV_video_output

%% Func:       xGetVideoDeviceNV
%% Args:       Dpy, Screen, NumVideoDevices, PVideoDevice
%% Returns:    Exdl
%% C-API func: int glXGetVideoDeviceNV(Display* dpy, int screen, int numVideoDevices, GLXVideoDeviceNV* pVideoDevice)

xGetVideoDeviceNV(Dpy, Screen, NumVideoDevices, PVideoDevice)
 -> case
      call
      ( ?glXGetVideoDeviceNV
      , <<Dpy:?_PTR
        , Screen:?Int
        , NumVideoDevices:?Int
        , PVideoDevice:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xReleaseVideoDeviceNV
%% Args:       Dpy, Screen, VideoDevice
%% Returns:    Exdl
%% C-API func: int glXReleaseVideoDeviceNV(Display* dpy, int screen, GLXVideoDeviceNV VideoDevice)

xReleaseVideoDeviceNV(Dpy, Screen, VideoDevice)
 -> case
      call
      ( ?glXReleaseVideoDeviceNV
      , <<Dpy:?_PTR
        , Screen:?Int
        , VideoDevice:?GLXVideoDeviceNV
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xBindVideoImageNV
%% Args:       Dpy, VideoDevice, Pbuf, IVideoBuffer
%% Returns:    Exdl
%% C-API func: int glXBindVideoImageNV(Display* dpy, GLXVideoDeviceNV VideoDevice, GLXPbuffer pbuf, int iVideoBuffer)

xBindVideoImageNV(Dpy, VideoDevice, Pbuf, IVideoBuffer)
 -> case
      call
      ( ?glXBindVideoImageNV
      , <<Dpy:?_PTR
        , VideoDevice:?GLXVideoDeviceNV
        , Pbuf:?GLXPbuffer
        , IVideoBuffer:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xReleaseVideoImageNV
%% Args:       Dpy, Pbuf
%% Returns:    Exdl
%% C-API func: int glXReleaseVideoImageNV(Display* dpy, GLXPbuffer pbuf)

xReleaseVideoImageNV(Dpy, Pbuf)
 -> case
      call
      ( ?glXReleaseVideoImageNV
      , <<Dpy:?_PTR
        , Pbuf:?GLXPbuffer
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xSendPbufferToVideoNV
%% Args:       Dpy, Pbuf, IBufferType, PulCounterPbuffer, BBlock
%% Returns:    Exdl
%% C-API func: int glXSendPbufferToVideoNV(Display* dpy, GLXPbuffer pbuf, int iBufferType, unsigned long* pulCounterPbuffer, GLboolean bBlock)

xSendPbufferToVideoNV(Dpy, Pbuf, IBufferType, PulCounterPbuffer, BBlock)
 -> case
      call
      ( ?glXSendPbufferToVideoNV
      , <<Dpy:?_PTR
        , Pbuf:?GLXPbuffer
        , IBufferType:?Int
        , PulCounterPbuffer:?_PTR
        , BBlock:?GLboolean
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xGetVideoInfoNV
%% Args:       Dpy, Screen, VideoDevice, PulCounterOutputPbuffer, PulCounterOutputVideo
%% Returns:    Exdl
%% C-API func: int glXGetVideoInfoNV(Display* dpy, int screen, GLXVideoDeviceNV VideoDevice, unsigned long* pulCounterOutputPbuffer, unsigned long* pulCounterOutputVideo)

xGetVideoInfoNV(Dpy, Screen, VideoDevice, PulCounterOutputPbuffer, PulCounterOutputVideo)
 -> case
      call
      ( ?glXGetVideoInfoNV
      , <<Dpy:?_PTR
        , Screen:?Int
        , VideoDevice:?GLXVideoDeviceNV
        , PulCounterOutputPbuffer:?_PTR
        , PulCounterOutputVideo:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_NV_swap_group

%% Func:       xJoinSwapGroupNV
%% Args:       Dpy, Drawable, Group
%% Returns:    Exdl
%% C-API func: Bool glXJoinSwapGroupNV(Display* dpy, GLXDrawable drawable, GLuint group)

xJoinSwapGroupNV(Dpy, Drawable, Group)
 -> case
      call
      ( ?glXJoinSwapGroupNV
      , <<Dpy:?_PTR
        , Drawable:?GLXDrawable
        , Group:?GLuint
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xBindSwapBarrierNV
%% Args:       Dpy, Group, Barrier
%% Returns:    Exdl
%% C-API func: Bool glXBindSwapBarrierNV(Display* dpy, GLuint group, GLuint barrier)

xBindSwapBarrierNV(Dpy, Group, Barrier)
 -> case
      call
      ( ?glXBindSwapBarrierNV
      , <<Dpy:?_PTR
        , Group:?GLuint
        , Barrier:?GLuint
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQuerySwapGroupNV
%% Args:       Dpy, Drawable, Group, Barrier
%% Returns:    Exdl
%% C-API func: Bool glXQuerySwapGroupNV(Display* dpy, GLXDrawable drawable, GLuint* group, GLuint* barrier)

xQuerySwapGroupNV(Dpy, Drawable, Group, Barrier)
 -> case
      call
      ( ?glXQuerySwapGroupNV
      , <<Dpy:?_PTR
        , Drawable:?GLXDrawable
        , Group:?_PTR
        , Barrier:?_PTR
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQueryMaxSwapGroupsNV
%% Args:       Dpy, Screen, MaxGroups, MaxBarriers
%% Returns:    Exdl
%% C-API func: Bool glXQueryMaxSwapGroupsNV(Display* dpy, int screen, GLuint* maxGroups, GLuint* maxBarriers)

xQueryMaxSwapGroupsNV(Dpy, Screen, MaxGroups, MaxBarriers)
 -> case
      call
      ( ?glXQueryMaxSwapGroupsNV
      , <<Dpy:?_PTR
        , Screen:?Int
        , MaxGroups:?_PTR
        , MaxBarriers:?_PTR
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xQueryFrameCountNV
%% Args:       Dpy, Screen, Count
%% Returns:    Exdl
%% C-API func: Bool glXQueryFrameCountNV(Display* dpy, int screen, GLuint* count)

xQueryFrameCountNV(Dpy, Screen, Count)
 -> case
      call
      ( ?glXQueryFrameCountNV
      , <<Dpy:?_PTR
        , Screen:?Int
        , Count:?_PTR
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xResetFrameCountNV
%% Args:       Dpy, Screen
%% Returns:    Exdl
%% C-API func: Bool glXResetFrameCountNV(Display* dpy, int screen)

xResetFrameCountNV(Dpy, Screen)
 -> case
      call
      ( ?glXResetFrameCountNV
      , <<Dpy:?_PTR
        , Screen:?Int
        >>
      )
    of
      <<Exdl:?Bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_NV_video_capture

%% Func:       xBindVideoCaptureDeviceNV
%% Args:       Dpy, VideoCaptureSlot, Device
%% Returns:    Exdl
%% C-API func: int glXBindVideoCaptureDeviceNV(Display* dpy, unsigned int video_capture_slot, GLXVideoCaptureDeviceNV device)

xBindVideoCaptureDeviceNV(Dpy, VideoCaptureSlot, Device)
 -> case
      call
      ( ?glXBindVideoCaptureDeviceNV
      , <<Dpy:?_PTR
        , VideoCaptureSlot:?Uint
        , Device:?GLXVideoCaptureDeviceNV
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xEnumerateVideoCaptureDevicesNV
%% Args:       Dpy, Screen, Nelements
%% Returns:    Exdl
%% C-API func: GLXVideoCaptureDeviceNV* glXEnumerateVideoCaptureDevicesNV(Display* dpy, int screen, int* nelements)

xEnumerateVideoCaptureDevicesNV(Dpy, Screen, Nelements)
 -> case
      call
      ( ?glXEnumerateVideoCaptureDevicesNV
      , <<Dpy:?_PTR
        , Screen:?Int
        , Nelements:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xLockVideoCaptureDeviceNV
%% Args:       Dpy, Device
%% Returns:    ok
%% C-API func: void glXLockVideoCaptureDeviceNV(Display* dpy, GLXVideoCaptureDeviceNV device)

xLockVideoCaptureDeviceNV(Dpy, Device)
 -> cast
    ( ?glXLockVideoCaptureDeviceNV
    , <<Dpy:?_PTR
      , Device:?GLXVideoCaptureDeviceNV
      >>
    )
.

%% Func:       xQueryVideoCaptureDeviceNV
%% Args:       Dpy, Device, Attribute, Value
%% Returns:    Exdl
%% C-API func: int glXQueryVideoCaptureDeviceNV(Display* dpy, GLXVideoCaptureDeviceNV device, int attribute, int* value)

xQueryVideoCaptureDeviceNV(Dpy, Device, Attribute, Value)
 -> case
      call
      ( ?glXQueryVideoCaptureDeviceNV
      , <<Dpy:?_PTR
        , Device:?GLXVideoCaptureDeviceNV
        , Attribute:?Int
        , Value:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       xReleaseVideoCaptureDeviceNV
%% Args:       Dpy, Device
%% Returns:    ok
%% C-API func: void glXReleaseVideoCaptureDeviceNV(Display* dpy, GLXVideoCaptureDeviceNV device)

xReleaseVideoCaptureDeviceNV(Dpy, Device)
 -> cast
    ( ?glXReleaseVideoCaptureDeviceNV
    , <<Dpy:?_PTR
      , Device:?GLXVideoCaptureDeviceNV
      >>
    )
.

%% GLX_EXT_swap_control

%% Func:       xSwapIntervalEXT
%% Args:       Dpy, Drawable, Interval
%% Returns:    Exdl
%% C-API func: int glXSwapIntervalEXT(Display* dpy, GLXDrawable drawable, int interval)

xSwapIntervalEXT(Dpy, Drawable, Interval)
 -> case
      call
      ( ?glXSwapIntervalEXT
      , <<Dpy:?_PTR
        , Drawable:?GLXDrawable
        , Interval:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GLX_NV_copy_image

%% Func:       xCopyImageSubDataNV
%% Args:       Dpy, SrcCtx, SrcName, SrcTarget, SrcLevel, SrcX, SrcY, SrcZ, DstCtx, DstName, DstTarget, DstLevel, DstX, DstY, DstZ, Width, Height, Depth
%% Returns:    ok
%% C-API func: void glXCopyImageSubDataNV(Display* dpy, GLXContext srcCtx, GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLXContext dstCtx, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth)

xCopyImageSubDataNV(Dpy, SrcCtx, SrcName, SrcTarget, SrcLevel, SrcX, SrcY, SrcZ, DstCtx, DstName, DstTarget, DstLevel, DstX, DstY, DstZ, Width, Height, Depth)
 -> cast
    ( ?glXCopyImageSubDataNV
    , <<Dpy:?_PTR
      , SrcCtx:?GLXContext
      , SrcName:?GLuint
      , SrcTarget:?GLenum
      , SrcLevel:?GLint
      , SrcX:?GLint
      , SrcY:?GLint
      , SrcZ:?GLint
      , DstCtx:?GLXContext
      , DstName:?GLuint
      , DstTarget:?GLenum
      , DstLevel:?GLint
      , DstX:?GLint
      , DstY:?GLint
      , DstZ:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      >>
    )
.

%% GLX_INTEL_swap_event

%% GLX_NV_multisample_coverage

%% GLX_EXT_swap_control_tear

-endif. % COMPILE_GLXEXT
