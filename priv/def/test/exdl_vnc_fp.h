/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_vnc_fp.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_VNC

{ vncConnect_ENUM,             "vncConnect",             evnc_connect },
{ vncBlitFramebuffer_ENUM,     "vncBlitFramebuffer",     evnc_blitFramebuffer },
{ vncBlitCursor_ENUM,          "vncBlitCursor",          evnc_blitCursor },
{ vncCursorHotspot_ENUM,       "vncCursorHotspot",       evnc_cursorHotspot },
{ vncClientKeyevent_ENUM,      "vncClientKeyevent",      evnc_clientKeyevent },
{ vncClientPointerevent_ENUM,  "vncClientPointerevent",  evnc_clientPointerevent },
{ vncDisconnect_ENUM,          "vncDisconnect",          evnc_disconnect },

#endif // COMPILE_VNC
