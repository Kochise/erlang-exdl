/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_vnc.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_VNC

EXDL_API(evnc_connect)
{
  /* int vncConnect(tSDL_vnc* vnc, char* host, int port, char* mode, char* password, int framerate) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(tSDL_vnc, vnc[])
  STACK_FMT_END()

    vncDisconnect
    ( STACK_GET_ADDR(vnc)
    );
}

#endif // COMPILE_VNC
