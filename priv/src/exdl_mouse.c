/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_mouse.c,v 1.2 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

EXDL_API(emou_getMouseState)
{
  /* Uint8 SDL_GetMouseState(int* x, int* y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(Uint8, status)
    FRAME_FMT_DATA(int,   x)
    FRAME_FMT_DATA(int,   y)
  FRAME_FMT_END()

  FRAME_SET_DATA(status) =
//  CATCH_RESULT(Uint8)

    SDL_GetMouseState
    ( FRAME_GET_ADDR(x)
    , FRAME_GET_ADDR(y)
    );

  THROW_FRAME()
}

EXDL_API(emou_getRelativeMouseState)
{
  /* Uint8 SDL_GetRelativeMouseState(int* x, int* y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(Uint8, status)
    FRAME_FMT_DATA(int,   x)
    FRAME_FMT_DATA(int,   y)
  FRAME_FMT_END()

  FRAME_SET_DATA(status) =
//  CATCH_RESULT(Uint8)

    SDL_GetRelativeMouseState
    ( FRAME_GET_ADDR(x)
    , FRAME_GET_ADDR(y)
    );

  THROW_FRAME()
}

EXDL_API(emou_warpMouse)
{
  /* void SDL_WarpMouse(Uint16 x, Uint16 y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint16, x)
    STACK_FMT_DATA(Uint16, y)
  STACK_FMT_END()

    SDL_WarpMouse
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(emou_createCursor)
{
  /* SDL_Cursor* SDL_CreateCursor(Uint8* data, Uint8* mask, int w, int h, int hot_x, int hot_y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,   w)
    STACK_FMT_DATA(int,   h)
    STACK_FMT_DATA(int,   hotx)
    STACK_FMT_DATA(int,   hoty)
    STACK_FMT_DATA(int,   ds)
    STACK_FMT_DATA(Uint8, data[1]) /* fake size */
    STACK_FMT_DATA(Uint8, mask[1])
  STACK_FMT_END()

  CATCH_RESULT(SDL_Cursor*)

    SDL_CreateCursor
    ( STACK_GET_ADDR(data)
    , STACK_GET_ADDR(data)
    + STACK_GET_DATA(ds) /* mask */
    , STACK_GET_DATA(w)
    , STACK_GET_DATA(h)
    , STACK_GET_DATA(hotx)
    , STACK_GET_DATA(hoty)
    );

  THROW_POINTER()
}

EXDL_API(emou_setCursor)
{
  /* void SDL_SetCursor(SDL_Cursor* cursor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Cursor, cursor[])
  STACK_FMT_END()

    SDL_SetCursor
    ( STACK_GET_ADDR(cursor)
    );
}

EXDL_API(emou_getCursor)
{
  /* SDL_Cursor* SDL_GetCursor(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(SDL_Cursor*)

    SDL_GetCursor
    (
    );

  THROW_POINTER()
}

EXDL_API(emou_freeCursor)
{
  /* void SDL_FreeCursor(SDL_Cursor* cursor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Cursor, cursor[])
  STACK_FMT_END()

    SDL_FreeCursor
    ( STACK_GET_ADDR(cursor)
    );
}

EXDL_API(emou_showCursor)
{
  /* int SDL_ShowCursor(int toggle) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, toggle)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_ShowCursor
    ( STACK_GET_DATA(toggle)
    );

  THROW_RESULT(int)
}

