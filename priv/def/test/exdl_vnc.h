/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_vnc.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_VNC

  enum
  { vncConnect_ENUM = EXDL_VNC_H
  , vncBlitFramebuffer_ENUM
  , vncBlitCursor_ENUM
  , vncCursorHotspot_ENUM
  , vncClientKeyevent_ENUM
  , vncClientPointerevent_ENUM
  , vncDisconnect_ENUM
  , _ENUM_EXDL_VNC
  };


EXDL_API(evnc_connect);
EXDL_API(evnc_blitFramebuffer);
EXDL_API(evnc_blitCursor);
EXDL_API(evnc_cursorHotspot);
EXDL_API(evnc_clientKeyevent);
EXDL_API(evnc_clientPointerevent);
EXDL_API(evnc_disconnect);

#else // COMPILE_VNC
  enum { _ENUM_EXDL_VNC = EXDL_VNC_H };
#endif // COMPILE_VNC

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
