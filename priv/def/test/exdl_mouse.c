/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_mouse.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

EXDL_API(emou_getMouseState)
{
  /* Uint8 SDL_GetMouseState(int* x, int* y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(int*, x)
    STACK_FMT_LPTR(int*, y)
  STACK_FMT_END()

  CATCH_RESULT(Uint8)

    SDL_GetMouseState
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );

  THROW_RESULT(Uint8)
}

EXDL_API(emou_getRelativeMouseState)
{
  /* Uint8 SDL_GetRelativeMouseState(int* x, int* y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(int*, x)
    STACK_FMT_LPTR(int*, y)
  STACK_FMT_END()

  CATCH_RESULT(Uint8)

    SDL_GetRelativeMouseState
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );

  THROW_RESULT(Uint8)
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
    STACK_FMT_LPTR(Uint8*, data)
    STACK_FMT_LPTR(Uint8*, mask)
    STACK_FMT_DATA(int,    w)
    STACK_FMT_DATA(int,    h)
    STACK_FMT_DATA(int,    hot_x)
    STACK_FMT_DATA(int,    hot_y)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Cursor*)

    SDL_CreateCursor
    ( STACK_GET_DATA(data)
    , STACK_GET_DATA(mask)
    , STACK_GET_DATA(w)
    , STACK_GET_DATA(h)
    , STACK_GET_DATA(hot_x)
    , STACK_GET_DATA(hot_y)
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

