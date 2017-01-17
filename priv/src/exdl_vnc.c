/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_vnc.c,v 1.6 2008/12/29 14:45:38 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_VNC

#include <string.h>
#include <stdlib.h>

EXDL_API(evnc_connect)
{
  /* int vncConnect(tSDL_vnc* vnc, char* host, int port, char* mode, char* password, int framerate) */

  /* exp : Connect to VNC server */
  /*       This call will establish a connection to the VNC server requesting a 32bit transfer. */
  /*       framerate is the rate in which update requests are send to the server. */
  /* inp : vnc  = pointer to tSDL_vnc structure */
  /* inp : host = hostname or hostip */
  /* inp : port = port */
  /* inp : mode = submode,submode,... */
  /*         submode = raw | copyrect | rre | corre(broken) | hextile | */
  /*                   zrle(unimplemented) | cursor | desktop(unimplemented) */
  /* inp : password = text */
  /* inp : framerate = 1 to 100 */
  /* ret : 1 if connection was established, 0 otherwise. */


  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(tSDL_vnc*, vnc)
    STACK_FMT_LPTR(char*,     host)
    STACK_FMT_DATA(int,       port)
    STACK_FMT_LPTR(char*,     mode)
    STACK_FMT_LPTR(char*,     password)
    STACK_FMT_DATA(int,       framerate)
  STACK_FMT_END()

  CATCH_RESULT(int)

    vncConnect
    ( STACK_GET_DATA(vnc)
    , STACK_GET_DATA(host)
    , STACK_GET_DATA(port)
    , STACK_GET_DATA(mode)
    , STACK_GET_DATA(password)
    , STACK_GET_DATA(framerate)
    );

  THROW_RESULT(int)
}

EXDL_API(evnc_blitFramebuffer)
{
  /* int vncBlitFramebuffer(tSDL_vnc* vnc, SDL_Surface* target, SDL_Rect* urec) */

  /* exp : Blit current framebuffer to target */
  /*       Only blits if framebuffer exists and was updated. */
  /*       Updated region is stored in urec if it is not NULL. */
  /*       Framebuffer is a RGB surface. */
  /* inp : vnc    = pointer to tSDL_vnc structure */
  /* inp : target = target surface to blit framebuffer to */
  /* inp : urec   = pointer to SDL_Rect structure to receive updated area, can be NULL */
  /* ret : 1 if the blit occured, 0 otherwise. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(tSDL_vnc*,    vnc)
    STACK_FMT_LPTR(SDL_Surface*, target)
    STACK_FMT_DATA(SDL_Rect,     urec[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    vncBlitFramebuffer
    ( STACK_GET_DATA(vnc)
    , STACK_GET_DATA(target)
    , STACK_GET_ADDR(urec)
    );

  THROW_RESULT(int)
}

EXDL_API(evnc_blitCursor)
{
  /* int vncBlitCursor(tSDL_vnc* vnc, SDL_Surface* target, SDL_Rect* trec) */

  /* exp : Blit current cursor to target */
  /*       Blitting is at the trec position. */
  /*       Cursor image is a 32x32 RGBA image (with A set). */
  /* inp : vnc    = pointer to tSDL_vnc structure */
  /* inp : target = target surface to blit cursor to */
  /* inp : trec   = pointer to SDL_Rect structure to receive updated area, can be NULL */
  /* ret : 1 if blit occured, 0 otherwise */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(tSDL_vnc*,    vnc)
    STACK_FMT_LPTR(SDL_Surface*, target)
    STACK_FMT_DATA(SDL_Rect,     trec[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    vncBlitCursor
    ( STACK_GET_DATA(vnc)
    , STACK_GET_DATA(target)
    , STACK_GET_ADDR(trec)
    );

  THROW_RESULT(int)
}

EXDL_API(evnc_cursorHotspot)
{
  /* SDL_Rect vncCursorHotspot(tSDL_vnc* vnc) */

  /* exp : Return cursor hotspot location */
  /*       In the returned parameter, only .x and .y are used. */
  /* inp : vnc = pointer to tSDL_vnc structure */
  /* ret : cursor hotspot location */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(tSDL_vnc, vnc[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Rect)

    vncCursorHotspot
    ( STACK_GET_ADDR(vnc)
    );

  THROW_RESULT(SDL_Rect)
}

EXDL_API(evnc_clientKeyevent)
{
  /* int vncClientKeyevent(tSDL_vnc* vnc, unsigned char downflag, unsigned int key) */

  /* exp : Send keyboard events to server */
  /*       The client is responsible for key-code conversions into the VNC format. */
  /* inp : vnc      = pointer to tSDL_vnc structure */
  /* inp : downflag = 1 for key is down, 0 for key is up */
  /* inp : key      = VNC keycode (basically X11/keysymdef.h plus some special codes) */
  /* ret : */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(tSDL_vnc*,     vnc)
    STACK_FMT_DATA(unsigned char, downflag)
    STACK_FMT_DATA(unsigned int,  key)
  STACK_FMT_END()

  CATCH_RESULT(int)

    vncClientKeyevent
    ( STACK_GET_DATA(vnc)
    , STACK_GET_DATA(downflag)
    , STACK_GET_DATA(key)
    );

  THROW_RESULT(int)
}

EXDL_API(evnc_clientPointerevent)
{
  /* int vncClientPointerevent(tSDL_vnc* vnc, unsigned char buttonmask, unsigned short x, unsigned short y) */

  /* exp : Send pointer events to server */
  /* inp : vnc        = pointer to tSDL_vnc structure */
  /* inp : buttonmask = VNC mousebutton bitmask 1=left, 2=middle, 4=right, 8/16=wheel */
  /* inp : x,y        = mouse position */
  /* ret : */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(tSDL_vnc*,      vnc)
    STACK_FMT_DATA(unsigned char,  buttonmask)
    STACK_FMT_DATA(unsigned short, x)
    STACK_FMT_DATA(unsigned short, y)
  STACK_FMT_END()

  CATCH_RESULT(int)

    vncClientPointerevent
    ( STACK_GET_DATA(vnc)
    , STACK_GET_DATA(buttonmask)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );

  THROW_RESULT(int)
}

EXDL_API(evnc_disconnect)
{
  /* void vncDisconnect(tSDL_vnc* vnc) */

  /* exp : Disconnect from vnc server */
  /*       Closes socket connection and kills client thread. */
  /* inp : vnc = pointer to tSDL_vnc structure */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(tSDL_vnc, vnc[])
  STACK_FMT_END()

    vncDisconnect
    ( STACK_GET_ADDR(vnc)
    );
}

#endif // COMPILE_VNC
