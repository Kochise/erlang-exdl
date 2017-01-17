/*
 *  Copyright (c) 2010 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_glxext.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_GLXEXT

/* GLX_VERSION_1_3 */

EXDL_API(eglx_xGetFBConfigs)
{
  /* GLXFBConfig* glXGetFBConfigs(Display* dpy, int screen, int* nelements) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_LPTR(int*,     nelements)
  STACK_FMT_END()

  CATCH_RESULT(GLXFBConfig*)

    glXGetFBConfigs
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(nelements)
    );

  THROW_POINTER()
}

EXDL_API(eglx_xChooseFBConfig)
{
  /* GLXFBConfig* glXChooseFBConfig(Display* dpy, int screen, const int* attrib_list, int* nelements) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,   dpy)
    STACK_FMT_DATA(int,        screen)
    STACK_FMT_LPTR(int*,       attrib_list)
    STACK_FMT_DATA(int,        nelements[])
  STACK_FMT_END()

  CATCH_RESULT(GLXFBConfig*)

    glXChooseFBConfig
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(attrib_list)
    , STACK_GET_ADDR(nelements)
    );

  THROW_POINTER()
}

EXDL_API(eglx_xGetFBConfigAttrib)
{
  /* int glXGetFBConfigAttrib(Display* dpy, GLXFBConfig config, int attribute, int* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXFBConfig, config)
    STACK_FMT_DATA(int,         attribute)
    STACK_FMT_LPTR(int*,        value)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int, exdl)
  FRAME_FMT_END()

  FRAME_SET_DATA(exdl) =

    glXGetFBConfigAttrib
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    , STACK_GET_DATA(attribute)
    , STACK_GET_DATA(value)
    );

  THROW_FRAME()
}

EXDL_API(eglx_xGetVisualFromFBConfig)
{
  /* XVisualInfo* glXGetVisualFromFBConfig(Display* dpy, GLXFBConfig config) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXFBConfig, config)
  STACK_FMT_END()

  CATCH_RESULT(XVisualInfo*)

    glXGetVisualFromFBConfig
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    );

  THROW_POINTER()
}

EXDL_API(eglx_xCreateWindow)
{
  /* GLXWindow glXCreateWindow(Display* dpy, GLXFBConfig config, Window win, const int* attrib_list) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXFBConfig, config)
    STACK_FMT_DATA(Window,      win)
    STACK_FMT_DATA(int,         attrib_list[])
  STACK_FMT_END()

  CATCH_RESULT(GLXWindow)

    glXCreateWindow
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    , STACK_GET_DATA(win)
    , STACK_GET_ADDR(attrib_list)
    );

  THROW_RESULT(GLXWindow)
}

EXDL_API(eglx_xDestroyWindow)
{
  /* void glXDestroyWindow(Display* dpy, GLXWindow win) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,  dpy)
    STACK_FMT_DATA(GLXWindow, win)
  STACK_FMT_END()

    glXDestroyWindow
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(win)
    );
}

EXDL_API(eglx_xCreatePixmap)
{
  /* GLXPixmap glXCreatePixmap(Display* dpy, GLXFBConfig config, Pixmap pixmap, const int* attrib_list) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXFBConfig, config)
    STACK_FMT_DATA(Pixmap,      pixmap)
    STACK_FMT_DATA(int,         attrib_list[])
  STACK_FMT_END()

  CATCH_RESULT(GLXPixmap)

    glXCreatePixmap
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    , STACK_GET_DATA(pixmap)
    , STACK_GET_ADDR(attrib_list)
    );

  THROW_RESULT(GLXPixmap)
}

EXDL_API(eglx_xDestroyPixmap)
{
  /* void glXDestroyPixmap(Display* dpy, GLXPixmap pixmap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,  dpy)
    STACK_FMT_DATA(GLXPixmap, pixmap)
  STACK_FMT_END()

    glXDestroyPixmap
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(pixmap)
    );
}

EXDL_API(eglx_xCreatePbuffer)
{
  /* GLXPbuffer glXCreatePbuffer(Display* dpy, GLXFBConfig config, const int* attrib_list) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXFBConfig, config)
    STACK_FMT_DATA(int,         attrib_list[])
  STACK_FMT_END()

  CATCH_RESULT(GLXPbuffer)

    glXCreatePbuffer
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    , STACK_GET_ADDR(attrib_list)
    );

  THROW_RESULT(GLXPbuffer)
}

EXDL_API(eglx_xDestroyPbuffer)
{
  /* void glXDestroyPbuffer(Display* dpy, GLXPbuffer pbuf) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,   dpy)
    STACK_FMT_DATA(GLXPbuffer, pbuf)
  STACK_FMT_END()

    glXDestroyPbuffer
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(pbuf)
    );
}

EXDL_API(eglx_xQueryDrawable)
{
  /* void glXQueryDrawable(Display* dpy, GLXDrawable draw, int attribute, unsigned int* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,      dpy)
    STACK_FMT_DATA(GLXDrawable,   draw)
    STACK_FMT_DATA(int,           attribute)
    STACK_FMT_DATA(unsigned int,  value[])
  STACK_FMT_END()

    glXQueryDrawable
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(draw)
    , STACK_GET_DATA(attribute)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglx_xCreateNewContext)
{
  /* GLXContext glXCreateNewContext(Display* dpy, GLXFBConfig config, int render_type, GLXContext share_list, Bool direct) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXFBConfig, config)
    STACK_FMT_DATA(int,         render_type)
    STACK_FMT_DATA(GLXContext,  share_list)
    STACK_FMT_DATA(Bool,        direct)
  STACK_FMT_END()

  CATCH_RESULT(GLXContext)

    glXCreateNewContext
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    , STACK_GET_DATA(render_type)
    , STACK_GET_DATA(share_list)
    , STACK_GET_DATA(direct)
    );

  THROW_RESULT(GLXContext)
}

EXDL_API(eglx_xMakeContextCurrent)
{
  /* Bool glXMakeContextCurrent(Display* dpy, GLXDrawable draw, GLXDrawable read, GLXContext ctx) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, draw)
    STACK_FMT_DATA(GLXDrawable, read)
    STACK_FMT_DATA(GLXContext,  ctx)
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXMakeContextCurrent
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(draw)
    , STACK_GET_DATA(read)
    , STACK_GET_DATA(ctx)
    );

  THROW_RESULT(Bool)
}

EXDL_API(eglx_xGetCurrentReadDrawable)
{
  /* GLXDrawable glXGetCurrentReadDrawable(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(GLXDrawable)

    glXGetCurrentReadDrawable
    (
    );

  THROW_RESULT(GLXDrawable)
}

EXDL_API(eglx_xGetCurrentDisplay)
{
  /* Display* glXGetCurrentDisplay(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(Display*)

    glXGetCurrentDisplay
    (
    );

  THROW_POINTER()
}

EXDL_API(eglx_xQueryContext)
{
  /* int glXQueryContext(Display* dpy, GLXContext ctx, int attribute, int* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,   dpy)
    STACK_FMT_DATA(GLXContext, ctx)
    STACK_FMT_DATA(int,        attribute)
    STACK_FMT_DATA(int,        value[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXQueryContext
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(ctx)
    , STACK_GET_DATA(attribute)
    , STACK_GET_ADDR(value)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xSelectEvent)
{
  /* void glXSelectEvent(Display* dpy, GLXDrawable draw, unsigned long event_mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,      dpy)
    STACK_FMT_DATA(GLXDrawable,   draw)
    STACK_FMT_DATA(unsigned long, event_mask)
  STACK_FMT_END()

    glXSelectEvent
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(draw)
    , STACK_GET_DATA(event_mask)
    );
}

EXDL_API(eglx_xGetSelectedEvent)
{
  /* void glXGetSelectedEvent(Display* dpy, GLXDrawable draw, unsigned long* event_mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,       dpy)
    STACK_FMT_DATA(GLXDrawable,    draw)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(unsigned long, event_mask)
  FRAME_FMT_END()

    glXGetSelectedEvent
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(draw)
    , FRAME_GET_ADDR(event_mask)
    );

  THROW_FRAME()
}

/* GLX_VERSION_1_4 */

EXDL_API(eglx_xGetProcAddress)
{
  /* __GLXextFuncPtr glXGetProcAddress(const GLubyte* procName) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLubyte, procName[])
  STACK_FMT_END()

  CATCH_RESULT(__GLXextFuncPtr)

    glXGetProcAddress
    ( STACK_GET_ADDR(procName)
    );

  THROW_RESULT(__GLXextFuncPtr)
}

/* GLX_ARB_get_proc_address */

EXDL_API(eglx_xGetProcAddressARB)
{
  /* __GLXextFuncPtr glXGetProcAddressARB(const GLubyte* procName) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLubyte, procName[])
  STACK_FMT_END()

  CATCH_RESULT(__GLXextFuncPtr)

    glXGetProcAddressARB
    ( STACK_GET_ADDR(procName)
    );

  THROW_RESULT(__GLXextFuncPtr)
}

/* GLX_ARB_multisample */

/* GLX_ARB_fbconfig_float */

/* GLX_ARB_framebuffer_sRGB */

/* GLX_ARB_create_context */

EXDL_API(eglx_xCreateContextAttribsARB)
{
  /* GLXContext glXCreateContextAttribsARB(Display* dpy, GLXFBConfig config, GLXContext share_context, Bool direct, const int* attrib_list) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXFBConfig, config)
    STACK_FMT_DATA(GLXContext,  share_context)
    STACK_FMT_DATA(Bool,        direct)
    STACK_FMT_DATA(int,         attrib_list[])
  STACK_FMT_END()

  CATCH_RESULT(GLXContext)

    glXCreateContextAttribsARB
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    , STACK_GET_DATA(share_context)
    , STACK_GET_DATA(direct)
    , STACK_GET_ADDR(attrib_list)
    );

  THROW_RESULT(GLXContext)
}

/* GLX_ARB_create_context_profile */

/* GLX_ARB_create_context_robustness */

/* GLX_SGIS_multisample */

/* GLX_EXT_visual_info */

/* GLX_SGI_swap_control */

EXDL_API(eglx_xSwapIntervalSGI)
{
  /* int glXSwapIntervalSGI(int interval) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, interval)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXSwapIntervalSGI
    ( STACK_GET_DATA(interval)
    );

  THROW_RESULT(int)
}

/* GLX_SGI_video_sync */

EXDL_API(eglx_xGetVideoSyncSGI)
{
  /* int glXGetVideoSyncSGI(unsigned int* count) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(unsigned int*, count)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXGetVideoSyncSGI
    ( STACK_GET_DATA(count)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xWaitVideoSyncSGI)
{
  /* int glXWaitVideoSyncSGI(int divisor, int remainder, unsigned int* count) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,           divisor)
    STACK_FMT_DATA(int,           remainder)
    STACK_FMT_DATA(unsigned int,  count[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXWaitVideoSyncSGI
    ( STACK_GET_DATA(divisor)
    , STACK_GET_DATA(remainder)
    , STACK_GET_ADDR(count)
    );

  THROW_RESULT(int)
}

/* GLX_SGI_make_current_read */

EXDL_API(eglx_xMakeCurrentReadSGI)
{
  /* Bool glXMakeCurrentReadSGI(Display* dpy, GLXDrawable draw, GLXDrawable read, GLXContext ctx) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, draw)
    STACK_FMT_DATA(GLXDrawable, read)
    STACK_FMT_DATA(GLXContext,  ctx)
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXMakeCurrentReadSGI
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(draw)
    , STACK_GET_DATA(read)
    , STACK_GET_DATA(ctx)
    );

  THROW_RESULT(Bool)
}

EXDL_API(eglx_xGetCurrentReadDrawableSGI)
{
  /* GLXDrawable glXGetCurrentReadDrawableSGI(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(GLXDrawable)

    glXGetCurrentReadDrawableSGI
    (
    );

  THROW_RESULT(GLXDrawable)
}

/* GLX_SGIX_video_source */

EXDL_API(eglx_xCreateGLXVideoSourceSGIX)
{
  /* GLXVideoSourceSGIX glXCreateGLXVideoSourceSGIX(Display* display, int screen, VLServer server, VLPath path, int nodeClass, VLNode drainNode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, display)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_DATA(VLServer, server)
    STACK_FMT_DATA(VLPath,   path)
    STACK_FMT_DATA(int,      nodeClass)
    STACK_FMT_DATA(VLNode,   drainNode)
  STACK_FMT_END()

  CATCH_RESULT(GLXVideoSourceSGIX)

    glXCreateGLXVideoSourceSGIX
    ( STACK_GET_DATA(display)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(server)
    , STACK_GET_DATA(path)
    , STACK_GET_DATA(nodeClass)
    , STACK_GET_DATA(drainNode)
    );

  THROW_RESULT(GLXVideoSourceSGIX)
}

EXDL_API(eglx_xDestroyGLXVideoSourceSGIX)
{
  /* void glXDestroyGLXVideoSourceSGIX(Display* dpy, GLXVideoSourceSGIX glxvideosource) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,           dpy)
    STACK_FMT_DATA(GLXVideoSourceSGIX, glxvideosource)
  STACK_FMT_END()

    glXDestroyGLXVideoSourceSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(glxvideosource)
    );
}

/* GLX_EXT_import_context */

EXDL_API(eglx_xGetCurrentDisplayEXT)
{
  /* Display* glXGetCurrentDisplayEXT(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(Display*)

    glXGetCurrentDisplayEXT
    (
    );

  THROW_POINTER()
}

EXDL_API(eglx_xQueryContextInfoEXT)
{
  /* int glXQueryContextInfoEXT(Display* dpy, GLXContext context, int attribute, int* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,   dpy)
    STACK_FMT_DATA(GLXContext, context)
    STACK_FMT_DATA(int,        attribute)
    STACK_FMT_DATA(int,        value[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXQueryContextInfoEXT
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(context)
    , STACK_GET_DATA(attribute)
    , STACK_GET_ADDR(value)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xGetContextIDEXT)
{
  /* GLXContextID glXGetContextIDEXT(const GLXContext context) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLXContext, context)
  STACK_FMT_END()

  CATCH_RESULT(GLXContextID)

    glXGetContextIDEXT
    ( STACK_GET_DATA(context)
    );

  THROW_RESULT(GLXContextID)
}

EXDL_API(eglx_xImportContextEXT)
{
  /* GLXContext glXImportContextEXT(Display* dpy, GLXContextID contextID) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,     dpy)
    STACK_FMT_DATA(GLXContextID, contextID)
  STACK_FMT_END()

  CATCH_RESULT(GLXContext)

    glXImportContextEXT
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(contextID)
    );

  THROW_RESULT(GLXContext)
}

EXDL_API(eglx_xFreeContextEXT)
{
  /* void glXFreeContextEXT(Display* dpy, GLXContext context) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,   dpy)
    STACK_FMT_DATA(GLXContext, context)
  STACK_FMT_END()

    glXFreeContextEXT
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(context)
    );
}

/* GLX_SGIX_fbconfig */

EXDL_API(eglx_xGetFBConfigAttribSGIX)
{
  /* int glXGetFBConfigAttribSGIX(Display* dpy, GLXFBConfigSGIX config, int attribute, int* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,        dpy)
    STACK_FMT_DATA(GLXFBConfigSGIX, config)
    STACK_FMT_DATA(int,             attribute)
    STACK_FMT_LPTR(int*,            value)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int, exdl)
  FRAME_FMT_END()

  FRAME_SET_DATA(exdl) =

    glXGetFBConfigAttribSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    , STACK_GET_DATA(attribute)
    , STACK_GET_DATA(value)
    );

  THROW_FRAME()
}

EXDL_API(eglx_xChooseFBConfigSGIX)
{
  /* GLXFBConfigSGIX* glXChooseFBConfigSGIX(Display* dpy, int screen, int* attrib_list, int* nelements) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_LPTR(int*,     attrib_list)
    STACK_FMT_DATA(int,      nelements[])
  STACK_FMT_END()

  CATCH_RESULT(GLXFBConfigSGIX*)

    glXChooseFBConfigSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(attrib_list)
    , STACK_GET_ADDR(nelements)
    );

  THROW_POINTER()
}

EXDL_API(eglx_xCreateGLXPixmapWithConfigSGIX)
{
  /* GLXPixmap glXCreateGLXPixmapWithConfigSGIX(Display* dpy, GLXFBConfigSGIX config, Pixmap pixmap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,        dpy)
    STACK_FMT_DATA(GLXFBConfigSGIX, config)
    STACK_FMT_DATA(Pixmap,          pixmap)
  STACK_FMT_END()

  CATCH_RESULT(GLXPixmap)

    glXCreateGLXPixmapWithConfigSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    , STACK_GET_DATA(pixmap)
    );

  THROW_RESULT(GLXPixmap)
}

EXDL_API(eglx_xCreateContextWithConfigSGIX)
{
  /* GLXContext glXCreateContextWithConfigSGIX(Display* dpy, GLXFBConfigSGIX config, int render_type, GLXContext share_list, Bool direct) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,        dpy)
    STACK_FMT_DATA(GLXFBConfigSGIX, config)
    STACK_FMT_DATA(int,             render_type)
    STACK_FMT_DATA(GLXContext,      share_list)
    STACK_FMT_DATA(Bool,            direct)
  STACK_FMT_END()

  CATCH_RESULT(GLXContext)

    glXCreateContextWithConfigSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    , STACK_GET_DATA(render_type)
    , STACK_GET_DATA(share_list)
    , STACK_GET_DATA(direct)
    );

  THROW_RESULT(GLXContext)
}

EXDL_API(eglx_xGetVisualFromFBConfigSGIX)
{
  /* XVisualInfo* glXGetVisualFromFBConfigSGIX(Display* dpy, GLXFBConfigSGIX config) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,        dpy)
    STACK_FMT_DATA(GLXFBConfigSGIX, config)
  STACK_FMT_END()

  CATCH_RESULT(XVisualInfo*)

    glXGetVisualFromFBConfigSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    );

  THROW_POINTER()
}

EXDL_API(eglx_xGetFBConfigFromVisualSGIX)
{
  /* GLXFBConfigSGIX glXGetFBConfigFromVisualSGIX(Display* dpy, XVisualInfo* vis) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,     dpy)
    STACK_FMT_LPTR(XVisualInfo*, vis)
  STACK_FMT_END()

  CATCH_RESULT(GLXFBConfigSGIX)

    glXGetFBConfigFromVisualSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(vis)
    );

  THROW_RESULT(GLXFBConfigSGIX)
}

/* GLX_SGIX_pbuffer */

EXDL_API(eglx_xCreateGLXPbufferSGIX)
{
  /* GLXPbufferSGIX glXCreateGLXPbufferSGIX(Display* dpy, GLXFBConfigSGIX config, unsigned int width, unsigned int height, int* attrib_list) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,        dpy)
    STACK_FMT_DATA(GLXFBConfigSGIX, config)
    STACK_FMT_DATA(unsigned int,    width)
    STACK_FMT_DATA(unsigned int,    height)
    STACK_FMT_DATA(int,             attrib_list[])
  STACK_FMT_END()

  CATCH_RESULT(GLXPbufferSGIX)

    glXCreateGLXPbufferSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(config)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_ADDR(attrib_list)
    );

  THROW_RESULT(GLXPbufferSGIX)
}

EXDL_API(eglx_xDestroyGLXPbufferSGIX)
{
  /* void glXDestroyGLXPbufferSGIX(Display* dpy, GLXPbufferSGIX pbuf) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,       dpy)
    STACK_FMT_DATA(GLXPbufferSGIX, pbuf)
  STACK_FMT_END()

    glXDestroyGLXPbufferSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(pbuf)
    );
}

EXDL_API(eglx_xQueryGLXPbufferSGIX)
{
  /* int glXQueryGLXPbufferSGIX(Display* dpy, GLXPbufferSGIX pbuf, int attribute, unsigned int* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,       dpy)
    STACK_FMT_DATA(GLXPbufferSGIX, pbuf)
    STACK_FMT_DATA(int,            attribute)
    STACK_FMT_DATA(unsigned int,   value[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXQueryGLXPbufferSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(pbuf)
    , STACK_GET_DATA(attribute)
    , STACK_GET_ADDR(value)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xSelectEventSGIX)
{
  /* void glXSelectEventSGIX(Display* dpy, GLXDrawable drawable, unsigned long mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,      dpy)
    STACK_FMT_DATA(GLXDrawable,   drawable)
    STACK_FMT_DATA(unsigned long, mask)
  STACK_FMT_END()

    glXSelectEventSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(mask)
    );
}

EXDL_API(eglx_xGetSelectedEventSGIX)
{
  /* void glXGetSelectedEventSGIX(Display* dpy, GLXDrawable drawable, unsigned long* mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(unsigned long, mask)
  FRAME_FMT_END()

    glXGetSelectedEventSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , FRAME_GET_ADDR(mask)
    );

  THROW_FRAME()
}

/* GLX_SGI_cushion */

EXDL_API(eglx_xCushionSGI)
{
  /* void glXCushionSGI(Display* dpy, Window window, float cushion) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(Window,   window)
    STACK_FMT_DATA(float,    cushion)
  STACK_FMT_END()

    glXCushionSGI
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(window)
    , STACK_GET_DATA(cushion)
    );
}

/* GLX_SGIX_video_resize */

EXDL_API(eglx_xBindChannelToWindowSGIX)
{
  /* int glXBindChannelToWindowSGIX(Display* display, int screen, int channel, Window window) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, display)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_DATA(int,      channel)
    STACK_FMT_DATA(Window,   window)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXBindChannelToWindowSGIX
    ( STACK_GET_DATA(display)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(channel)
    , STACK_GET_DATA(window)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xChannelRectSGIX)
{
  /* int glXChannelRectSGIX(Display* display, int screen, int channel, int x, int y, int w, int h) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, display)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_DATA(int,      channel)
    STACK_FMT_DATA(int,      x)
    STACK_FMT_DATA(int,      y)
    STACK_FMT_DATA(int,      w)
    STACK_FMT_DATA(int,      h)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXChannelRectSGIX
    ( STACK_GET_DATA(display)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(channel)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(w)
    , STACK_GET_DATA(h)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xQueryChannelRectSGIX)
{
  /* int glXQueryChannelRectSGIX(Display* display, int screen, int channel, int* dx, int* dy, int* dw, int* dh) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, display)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_DATA(int,      channel)
    STACK_FMT_LPTR(int*,     dx)
    STACK_FMT_LPTR(int*,     dy)
    STACK_FMT_LPTR(int*,     dw)
    STACK_FMT_DATA(int,      dh[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXQueryChannelRectSGIX
    ( STACK_GET_DATA(display)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(channel)
    , STACK_GET_DATA(dx)
    , STACK_GET_DATA(dy)
    , STACK_GET_DATA(dw)
    , STACK_GET_ADDR(dh)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xQueryChannelDeltasSGIX)
{
  /* int glXQueryChannelDeltasSGIX(Display* display, int screen, int channel, int* x, int* y, int* w, int* h) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, display)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_DATA(int,      channel)
    STACK_FMT_LPTR(int*,     x)
    STACK_FMT_LPTR(int*,     y)
    STACK_FMT_LPTR(int*,     w)
    STACK_FMT_DATA(int,      h[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXQueryChannelDeltasSGIX
    ( STACK_GET_DATA(display)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(channel)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(w)
    , STACK_GET_ADDR(h)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xChannelRectSyncSGIX)
{
  /* int glXChannelRectSyncSGIX(Display* display, int screen, int channel, GLenum synctype) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, display)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_DATA(int,      channel)
    STACK_FMT_DATA(GLenum,   synctype)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXChannelRectSyncSGIX
    ( STACK_GET_DATA(display)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(channel)
    , STACK_GET_DATA(synctype)
    );

  THROW_RESULT(int)
}

/* GLX_SGIX_dmbuffer */

EXDL_API(eglx_xAssociateDMPbufferSGIX)
{
  /* Bool glXAssociateDMPbufferSGIX(Display* dpy, GLXPbufferSGIX pbuffer, DMparams* params, DMbuffer dmbuffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,       dpy)
    STACK_FMT_DATA(GLXPbufferSGIX, pbuffer)
    STACK_FMT_LPTR(DMparams*,      params)
    STACK_FMT_DATA(DMbuffer,       dmbuffer)
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXAssociateDMPbufferSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(pbuffer)
    , STACK_GET_DATA(params)
    , STACK_GET_DATA(dmbuffer)
    );

  THROW_RESULT(Bool)
}

/* GLX_SGIX_swap_group */

EXDL_API(eglx_xJoinSwapGroupSGIX)
{
  /* void glXJoinSwapGroupSGIX(Display* dpy, GLXDrawable drawable, GLXDrawable member) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_DATA(GLXDrawable, member)
  STACK_FMT_END()

    glXJoinSwapGroupSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(member)
    );
}

/* GLX_SGIX_swap_barrier */

EXDL_API(eglx_xBindSwapBarrierSGIX)
{
  /* void glXBindSwapBarrierSGIX(Display* dpy, GLXDrawable drawable, int barrier) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_DATA(int,         barrier)
  STACK_FMT_END()

    glXBindSwapBarrierSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(barrier)
    );
}

EXDL_API(eglx_xQueryMaxSwapBarriersSGIX)
{
  /* Bool glXQueryMaxSwapBarriersSGIX(Display* dpy, int screen, int* max) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_DATA(int,      max[])
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXQueryMaxSwapBarriersSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_ADDR(max)
    );

  THROW_RESULT(Bool)
}

/* GLX_SUN_get_transparent_index */

EXDL_API(eglx_xGetTransparentIndexSUN)
{
  /* Status glXGetTransparentIndexSUN(Display* dpy, Window overlay, Window underlay, long* pTransparentIndex) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(Window,   overlay)
    STACK_FMT_DATA(Window,   underlay)
    STACK_FMT_LPTR(long*,    pTransparentIndex)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(Status, exdl)
  FRAME_FMT_END()

  FRAME_SET_DATA(exdl) =

    glXGetTransparentIndexSUN
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(overlay)
    , STACK_GET_DATA(underlay)
    , STACK_GET_DATA(pTransparentIndex)
    );

  THROW_FRAME()
}

/* GLX_MESA_copy_sub_buffer */

EXDL_API(eglx_xCopySubBufferMESA)
{
  /* void glXCopySubBufferMESA(Display* dpy, GLXDrawable drawable, int x, int y, int width, int height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_DATA(int,         x)
    STACK_FMT_DATA(int,         y)
    STACK_FMT_DATA(int,         width)
    STACK_FMT_DATA(int,         height)
  STACK_FMT_END()

    glXCopySubBufferMESA
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

/* GLX_MESA_pixmap_colormap */

EXDL_API(eglx_xCreateGLXPixmapMESA)
{
  /* GLXPixmap glXCreateGLXPixmapMESA(Display* dpy, XVisualInfo* visual, Pixmap pixmap, Colormap cmap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,     dpy)
    STACK_FMT_LPTR(XVisualInfo*, visual)
    STACK_FMT_DATA(Pixmap,       pixmap)
    STACK_FMT_DATA(Colormap,     cmap)
  STACK_FMT_END()

  CATCH_RESULT(GLXPixmap)

    glXCreateGLXPixmapMESA
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(visual)
    , STACK_GET_DATA(pixmap)
    , STACK_GET_DATA(cmap)
    );

  THROW_RESULT(GLXPixmap)
}

/* GLX_MESA_release_buffers */

EXDL_API(eglx_xReleaseBuffersMESA)
{
  /* Bool glXReleaseBuffersMESA(Display* dpy, GLXDrawable drawable) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXReleaseBuffersMESA
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    );

  THROW_RESULT(Bool)
}

/* GLX_MESA_set_3dfx_mode */

EXDL_API(eglx_xSet3DfxModeMESA)
{
  /* Bool glXSet3DfxModeMESA(int mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, mode)
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXSet3DfxModeMESA
    ( STACK_GET_DATA(mode)
    );

  THROW_RESULT(Bool)
}

/* GLX_OML_sync_control */

EXDL_API(eglx_xGetSyncValuesOML)
{
  /* Bool glXGetSyncValuesOML(Display* dpy, GLXDrawable drawable, int64_t* ust, int64_t* msc, int64_t* sbc) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_LPTR(int64_t*,    ust)
    STACK_FMT_LPTR(int64_t*,    msc)
    STACK_FMT_LPTR(int64_t*,    sbc)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(Bool, exdl)
  FRAME_FMT_END()

  FRAME_SET_DATA(exdl) =

    glXGetSyncValuesOML
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(ust)
    , STACK_GET_DATA(msc)
    , STACK_GET_DATA(sbc)
    );

  THROW_FRAME()
}

EXDL_API(eglx_xGetMscRateOML)
{
  /* Bool glXGetMscRateOML(Display* dpy, GLXDrawable drawable, int32_t* numerator, int32_t* denominator) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_LPTR(int32_t*,    numerator)
    STACK_FMT_LPTR(int32_t*,    denominator)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(Bool, exdl)
  FRAME_FMT_END()

  FRAME_SET_DATA(exdl) =

    glXGetMscRateOML
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(numerator)
    , STACK_GET_DATA(denominator)
    );

  THROW_FRAME()
}

EXDL_API(eglx_xSwapBuffersMscOML)
{
  /* int64_t glXSwapBuffersMscOML(Display* dpy, GLXDrawable drawable, int64_t target_msc, int64_t divisor, int64_t remainder) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_DATA(int64_t,     target_msc)
    STACK_FMT_DATA(int64_t,     divisor)
    STACK_FMT_DATA(int64_t,     remainder)
  STACK_FMT_END()

  CATCH_RESULT(int64_t)

    glXSwapBuffersMscOML
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(target_msc)
    , STACK_GET_DATA(divisor)
    , STACK_GET_DATA(remainder)
    );

  THROW_RESULT(int64_t)
}

EXDL_API(eglx_xWaitForMscOML)
{
  /* Bool glXWaitForMscOML(Display* dpy, GLXDrawable drawable, int64_t target_msc, int64_t divisor, int64_t remainder, int64_t* ust, int64_t* msc, int64_t* sbc) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_DATA(int64_t,     target_msc)
    STACK_FMT_DATA(int64_t,     divisor)
    STACK_FMT_DATA(int64_t,     remainder)
    STACK_FMT_LPTR(int64_t*,    ust)
    STACK_FMT_LPTR(int64_t*,    msc)
    STACK_FMT_DATA(int64_t,     sbc[])
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXWaitForMscOML
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(target_msc)
    , STACK_GET_DATA(divisor)
    , STACK_GET_DATA(remainder)
    , STACK_GET_DATA(ust)
    , STACK_GET_DATA(msc)
    , STACK_GET_ADDR(sbc)
    );

  THROW_RESULT(Bool)
}

EXDL_API(eglx_xWaitForSbcOML)
{
  /* Bool glXWaitForSbcOML(Display* dpy, GLXDrawable drawable, int64_t target_sbc, int64_t* ust, int64_t* msc, int64_t* sbc) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_DATA(int64_t,     target_sbc)
    STACK_FMT_LPTR(int64_t*,    ust)
    STACK_FMT_LPTR(int64_t*,    msc)
    STACK_FMT_DATA(int64_t,     sbc[])
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXWaitForSbcOML
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(target_sbc)
    , STACK_GET_DATA(ust)
    , STACK_GET_DATA(msc)
    , STACK_GET_ADDR(sbc)
    );

  THROW_RESULT(Bool)
}

EXDL_API(eglx_xQueryHyperpipeNetworkSGIX)
{
  /* GLXHyperpipeNetworkSGIX* glXQueryHyperpipeNetworkSGIX(Display* dpy, int* npipes) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      npipes[])
  STACK_FMT_END()

  CATCH_RESULT(GLXHyperpipeNetworkSGIX*)

    glXQueryHyperpipeNetworkSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_ADDR(npipes)
    );

  THROW_POINTER()
}

EXDL_API(eglx_xHyperpipeConfigSGIX)
{
  /* int glXHyperpipeConfigSGIX(Display* dpy, int networkId, int npipes, GLXHyperpipeConfigSGIX* cfg, int* hpId) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,                dpy)
    STACK_FMT_DATA(int,                     networkId)
    STACK_FMT_DATA(int,                     npipes)
    STACK_FMT_LPTR(GLXHyperpipeConfigSGIX*, cfg)
    STACK_FMT_DATA(int,                     hpId[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXHyperpipeConfigSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(networkId)
    , STACK_GET_DATA(npipes)
    , STACK_GET_DATA(cfg)
    , STACK_GET_ADDR(hpId)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xQueryHyperpipeConfigSGIX)
{
  /* GLXHyperpipeConfigSGIX* glXQueryHyperpipeConfigSGIX(Display* dpy, int hpId, int* npipes) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      hpId)
    STACK_FMT_DATA(int,      npipes[])
  STACK_FMT_END()

  CATCH_RESULT(GLXHyperpipeConfigSGIX*)

    glXQueryHyperpipeConfigSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(hpId)
    , STACK_GET_ADDR(npipes)
    );

  THROW_POINTER()
}

EXDL_API(eglx_xDestroyHyperpipeConfigSGIX)
{
  /* int glXDestroyHyperpipeConfigSGIX(Display* dpy, int hpId) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      hpId)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXDestroyHyperpipeConfigSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(hpId)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xBindHyperpipeSGIX)
{
  /* int glXBindHyperpipeSGIX(Display* dpy, int hpId) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      hpId)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXBindHyperpipeSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(hpId)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xQueryHyperpipeBestAttribSGIX)
{
  /* int glXQueryHyperpipeBestAttribSGIX(Display* dpy, int timeSlice, int attrib, int size, void* attribList, void* returnAttribList) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      timeSlice)
    STACK_FMT_DATA(int,      attrib)
    STACK_FMT_DATA(int,      size)
    STACK_FMT_LPTR(void*,    attribList)
    STACK_FMT_DATA(void,     returnAttribList[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXQueryHyperpipeBestAttribSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(timeSlice)
    , STACK_GET_DATA(attrib)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(attribList)
    , STACK_GET_ADDR(returnAttribList)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xHyperpipeAttribSGIX)
{
  /* int glXHyperpipeAttribSGIX(Display* dpy, int timeSlice, int attrib, int size, void* attribList) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      timeSlice)
    STACK_FMT_DATA(int,      attrib)
    STACK_FMT_DATA(int,      size)
    STACK_FMT_DATA(void,     attribList[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXHyperpipeAttribSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(timeSlice)
    , STACK_GET_DATA(attrib)
    , STACK_GET_DATA(size)
    , STACK_GET_ADDR(attribList)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xQueryHyperpipeAttribSGIX)
{
  /* int glXQueryHyperpipeAttribSGIX(Display* dpy, int timeSlice, int attrib, int size, void* returnAttribList) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      timeSlice)
    STACK_FMT_DATA(int,      attrib)
    STACK_FMT_DATA(int,      size)
    STACK_FMT_DATA(void,     returnAttribList[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXQueryHyperpipeAttribSGIX
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(timeSlice)
    , STACK_GET_DATA(attrib)
    , STACK_GET_DATA(size)
    , STACK_GET_ADDR(returnAttribList)
    );

  THROW_RESULT(int)
}

/* GLX_MESA_agp_offset */

EXDL_API(eglx_xGetAGPOffsetMESA)
{
  /* unsigned int glXGetAGPOffsetMESA(const void* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(void, pointer[])
  STACK_FMT_END()

  CATCH_RESULT(unsigned int)

    glXGetAGPOffsetMESA
    ( STACK_GET_ADDR(pointer)
    );

  THROW_RESULT(unsigned int)
}

/* GLX_EXT_texture_from_pixmap */

EXDL_API(eglx_xBindTexImageEXT)
{
  /* void glXBindTexImageEXT(Display* dpy, GLXDrawable drawable, int buffer, const int* attrib_list) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_DATA(int,         buffer)
    STACK_FMT_DATA(int,         attrib_list[])
  STACK_FMT_END()

    glXBindTexImageEXT
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(buffer)
    , STACK_GET_ADDR(attrib_list)
    );
}

EXDL_API(eglx_xReleaseTexImageEXT)
{
  /* void glXReleaseTexImageEXT(Display* dpy, GLXDrawable drawable, int buffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_DATA(int,         buffer)
  STACK_FMT_END()

    glXReleaseTexImageEXT
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(buffer)
    );
}

/* GLX_NV_present_video */

EXDL_API(eglx_xEnumerateVideoDevicesNV)
{
  /* unsigned int* glXEnumerateVideoDevicesNV(Display* dpy, int screen, int* nelements) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_DATA(int,      nelements[])
  STACK_FMT_END()

  CATCH_RESULT(unsigned int*)

    glXEnumerateVideoDevicesNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_ADDR(nelements)
    );

  THROW_POINTER()
}

EXDL_API(eglx_xBindVideoDeviceNV)
{
  /* int glXBindVideoDeviceNV(Display* dpy, unsigned int video_slot, unsigned int video_device, const int* attrib_list) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,     dpy)
    STACK_FMT_DATA(unsigned int, video_slot)
    STACK_FMT_DATA(unsigned int, video_device)
    STACK_FMT_DATA(int,          attrib_list[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXBindVideoDeviceNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(video_slot)
    , STACK_GET_DATA(video_device)
    , STACK_GET_ADDR(attrib_list)
    );

  THROW_RESULT(int)
}

/* GLX_NV_video_output */

EXDL_API(eglx_xGetVideoDeviceNV)
{
  /* int glXGetVideoDeviceNV(Display* dpy, int screen, int numVideoDevices, GLXVideoDeviceNV* pVideoDevice) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,          dpy)
    STACK_FMT_DATA(int,               screen)
    STACK_FMT_DATA(int,               numVideoDevices)
    STACK_FMT_LPTR(GLXVideoDeviceNV*, pVideoDevice)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int, exdl)
  FRAME_FMT_END()

  FRAME_SET_DATA(exdl) =

    glXGetVideoDeviceNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(numVideoDevices)
    , STACK_GET_DATA(pVideoDevice)
    );

  THROW_FRAME()
}

EXDL_API(eglx_xReleaseVideoDeviceNV)
{
  /* int glXReleaseVideoDeviceNV(Display* dpy, int screen, GLXVideoDeviceNV VideoDevice) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,         dpy)
    STACK_FMT_DATA(int,              screen)
    STACK_FMT_DATA(GLXVideoDeviceNV, VideoDevice)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXReleaseVideoDeviceNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(VideoDevice)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xBindVideoImageNV)
{
  /* int glXBindVideoImageNV(Display* dpy, GLXVideoDeviceNV VideoDevice, GLXPbuffer pbuf, int iVideoBuffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,         dpy)
    STACK_FMT_DATA(GLXVideoDeviceNV, VideoDevice)
    STACK_FMT_DATA(GLXPbuffer,       pbuf)
    STACK_FMT_DATA(int,              iVideoBuffer)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXBindVideoImageNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(VideoDevice)
    , STACK_GET_DATA(pbuf)
    , STACK_GET_DATA(iVideoBuffer)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xReleaseVideoImageNV)
{
  /* int glXReleaseVideoImageNV(Display* dpy, GLXPbuffer pbuf) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,   dpy)
    STACK_FMT_DATA(GLXPbuffer, pbuf)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXReleaseVideoImageNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(pbuf)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xSendPbufferToVideoNV)
{
  /* int glXSendPbufferToVideoNV(Display* dpy, GLXPbuffer pbuf, int iBufferType, unsigned long* pulCounterPbuffer, GLboolean bBlock) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,       dpy)
    STACK_FMT_DATA(GLXPbuffer,     pbuf)
    STACK_FMT_DATA(int,            iBufferType)
    STACK_FMT_LPTR(unsigned long*, pulCounterPbuffer)
    STACK_FMT_DATA(GLboolean,      bBlock)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXSendPbufferToVideoNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(pbuf)
    , STACK_GET_DATA(iBufferType)
    , STACK_GET_DATA(pulCounterPbuffer)
    , STACK_GET_DATA(bBlock)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xGetVideoInfoNV)
{
  /* int glXGetVideoInfoNV(Display* dpy, int screen, GLXVideoDeviceNV VideoDevice, unsigned long* pulCounterOutputPbuffer, unsigned long* pulCounterOutputVideo) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,         dpy)
    STACK_FMT_DATA(int,              screen)
    STACK_FMT_DATA(GLXVideoDeviceNV, VideoDevice)
    STACK_FMT_LPTR(unsigned long*,   pulCounterOutputPbuffer)
    STACK_FMT_LPTR(unsigned long*,   pulCounterOutputVideo)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int, exdl)
  FRAME_FMT_END()

  FRAME_SET_DATA(exdl) =

    glXGetVideoInfoNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(VideoDevice)
    , STACK_GET_DATA(pulCounterOutputPbuffer)
    , STACK_GET_DATA(pulCounterOutputVideo)
    );

  THROW_FRAME()
}

/* GLX_NV_swap_group */

EXDL_API(eglx_xJoinSwapGroupNV)
{
  /* Bool glXJoinSwapGroupNV(Display* dpy, GLXDrawable drawable, GLuint group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_DATA(GLuint,      group)
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXJoinSwapGroupNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(group)
    );

  THROW_RESULT(Bool)
}

EXDL_API(eglx_xBindSwapBarrierNV)
{
  /* Bool glXBindSwapBarrierNV(Display* dpy, GLuint group, GLuint barrier) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(GLuint,   group)
    STACK_FMT_DATA(GLuint,   barrier)
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXBindSwapBarrierNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(group)
    , STACK_GET_DATA(barrier)
    );

  THROW_RESULT(Bool)
}

EXDL_API(eglx_xQuerySwapGroupNV)
{
  /* Bool glXQuerySwapGroupNV(Display* dpy, GLXDrawable drawable, GLuint* group, GLuint* barrier) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_LPTR(GLuint*,     group)
    STACK_FMT_DATA(GLuint,      barrier[])
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXQuerySwapGroupNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(group)
    , STACK_GET_ADDR(barrier)
    );

  THROW_RESULT(Bool)
}

EXDL_API(eglx_xQueryMaxSwapGroupsNV)
{
  /* Bool glXQueryMaxSwapGroupsNV(Display* dpy, int screen, GLuint* maxGroups, GLuint* maxBarriers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_LPTR(GLuint*,  maxGroups)
    STACK_FMT_DATA(GLuint,   maxBarriers[])
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXQueryMaxSwapGroupsNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_DATA(maxGroups)
    , STACK_GET_ADDR(maxBarriers)
    );

  THROW_RESULT(Bool)
}

EXDL_API(eglx_xQueryFrameCountNV)
{
  /* Bool glXQueryFrameCountNV(Display* dpy, int screen, GLuint* count) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_DATA(GLuint,   count[])
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXQueryFrameCountNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_ADDR(count)
    );

  THROW_RESULT(Bool)
}

EXDL_API(eglx_xResetFrameCountNV)
{
  /* Bool glXResetFrameCountNV(Display* dpy, int screen) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      screen)
  STACK_FMT_END()

  CATCH_RESULT(Bool)

    glXResetFrameCountNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    );

  THROW_RESULT(Bool)
}

/* GLX_NV_video_capture */

EXDL_API(eglx_xBindVideoCaptureDeviceNV)
{
  /* int glXBindVideoCaptureDeviceNV(Display* dpy, unsigned int video_capture_slot, GLXVideoCaptureDeviceNV device) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,                dpy)
    STACK_FMT_DATA(unsigned int,            video_capture_slot)
    STACK_FMT_DATA(GLXVideoCaptureDeviceNV, device)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXBindVideoCaptureDeviceNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(video_capture_slot)
    , STACK_GET_DATA(device)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xEnumerateVideoCaptureDevicesNV)
{
  /* GLXVideoCaptureDeviceNV* glXEnumerateVideoCaptureDevicesNV(Display* dpy, int screen, int* nelements) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*, dpy)
    STACK_FMT_DATA(int,      screen)
    STACK_FMT_DATA(int,      nelements[])
  STACK_FMT_END()

  CATCH_RESULT(GLXVideoCaptureDeviceNV*)

    glXEnumerateVideoCaptureDevicesNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(screen)
    , STACK_GET_ADDR(nelements)
    );

  THROW_POINTER()
}

EXDL_API(eglx_xLockVideoCaptureDeviceNV)
{
  /* void glXLockVideoCaptureDeviceNV(Display* dpy, GLXVideoCaptureDeviceNV device) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,                dpy)
    STACK_FMT_DATA(GLXVideoCaptureDeviceNV, device)
  STACK_FMT_END()

    glXLockVideoCaptureDeviceNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(device)
    );
}

EXDL_API(eglx_xQueryVideoCaptureDeviceNV)
{
  /* int glXQueryVideoCaptureDeviceNV(Display* dpy, GLXVideoCaptureDeviceNV device, int attribute, int* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,                dpy)
    STACK_FMT_DATA(GLXVideoCaptureDeviceNV, device)
    STACK_FMT_DATA(int,                     attribute)
    STACK_FMT_DATA(int,                     value[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXQueryVideoCaptureDeviceNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(device)
    , STACK_GET_DATA(attribute)
    , STACK_GET_ADDR(value)
    );

  THROW_RESULT(int)
}

EXDL_API(eglx_xReleaseVideoCaptureDeviceNV)
{
  /* void glXReleaseVideoCaptureDeviceNV(Display* dpy, GLXVideoCaptureDeviceNV device) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,                dpy)
    STACK_FMT_DATA(GLXVideoCaptureDeviceNV, device)
  STACK_FMT_END()

    glXReleaseVideoCaptureDeviceNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(device)
    );
}

/* GLX_EXT_swap_control */

EXDL_API(eglx_xSwapIntervalEXT)
{
  /* int glXSwapIntervalEXT(Display* dpy, GLXDrawable drawable, int interval) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,    dpy)
    STACK_FMT_DATA(GLXDrawable, drawable)
    STACK_FMT_DATA(int,         interval)
  STACK_FMT_END()

  CATCH_RESULT(int)

    glXSwapIntervalEXT
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(drawable)
    , STACK_GET_DATA(interval)
    );

  THROW_RESULT(int)
}

/* GLX_NV_copy_image */

EXDL_API(eglx_xCopyImageSubDataNV)
{
  /* void glXCopyImageSubDataNV(Display* dpy, GLXContext srcCtx, GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLXContext dstCtx, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Display*,   dpy)
    STACK_FMT_DATA(GLXContext, srcCtx)
    STACK_FMT_DATA(GLuint,     srcName)
    STACK_FMT_DATA(GLenum,     srcTarget)
    STACK_FMT_DATA(GLint,      srcLevel)
    STACK_FMT_DATA(GLint,      srcX)
    STACK_FMT_DATA(GLint,      srcY)
    STACK_FMT_DATA(GLint,      srcZ)
    STACK_FMT_DATA(GLXContext, dstCtx)
    STACK_FMT_DATA(GLuint,     dstName)
    STACK_FMT_DATA(GLenum,     dstTarget)
    STACK_FMT_DATA(GLint,      dstLevel)
    STACK_FMT_DATA(GLint,      dstX)
    STACK_FMT_DATA(GLint,      dstY)
    STACK_FMT_DATA(GLint,      dstZ)
    STACK_FMT_DATA(GLsizei,    width)
    STACK_FMT_DATA(GLsizei,    height)
    STACK_FMT_DATA(GLsizei,    depth)
  STACK_FMT_END()

    glXCopyImageSubDataNV
    ( STACK_GET_DATA(dpy)
    , STACK_GET_DATA(srcCtx)
    , STACK_GET_DATA(srcName)
    , STACK_GET_DATA(srcTarget)
    , STACK_GET_DATA(srcLevel)
    , STACK_GET_DATA(srcX)
    , STACK_GET_DATA(srcY)
    , STACK_GET_DATA(srcZ)
    , STACK_GET_DATA(dstCtx)
    , STACK_GET_DATA(dstName)
    , STACK_GET_DATA(dstTarget)
    , STACK_GET_DATA(dstLevel)
    , STACK_GET_DATA(dstX)
    , STACK_GET_DATA(dstY)
    , STACK_GET_DATA(dstZ)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    );
}

/* GLX_INTEL_swap_event */

/* GLX_NV_multisample_coverage */

/* GLX_EXT_swap_control_tear */

#endif // COMPILE_GLXEXT
