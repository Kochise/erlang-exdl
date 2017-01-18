/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_keyboard.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

EXDL_API(ekbd_enableUNICODE)
{
  /* int SDL_EnableUNICODE(int enable) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, enable)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_EnableUNICODE
    ( STACK_GET_DATA(enable)
    );

  THROW_RESULT(int)
}

EXDL_API(ekbd_enableKeyRepeat)
{
  /* int SDL_EnableKeyRepeat(int delay, int interval) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, delay)
    STACK_FMT_DATA(int, interval)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_EnableKeyRepeat
    ( STACK_GET_DATA(delay)
    , STACK_GET_DATA(interval)
    );

  THROW_RESULT(int)
}

EXDL_API(ekbd_getKeyRepeat)
{
  /* void SDL_GetKeyRepeat(int* delay, int* interval) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int, delay)
    FRAME_FMT_DATA(int, interval)
  FRAME_FMT_END()

    SDL_GetKeyRepeat
    ( FRAME_GET_ADDR(delay)
    , FRAME_GET_ADDR(interval)
    );
}

EXDL_API(ekbd_getKeyState)
{
  /* Uint8* SDL_GetKeyState(int* numkeys) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(int*, numkeys)
  STACK_FMT_END()

  CATCH_RESULT(Uint8*)

    SDL_GetKeyState
    ( STACK_GET_DATA(numkeys)
    );

  THROW_POINTER()
}

EXDL_API(ekbd_getModState)
{
  /* SDLMod SDL_GetModState(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(SDLMod)

    SDL_GetModState
    (
    );

  THROW_RESULT(SDLMod)
}

EXDL_API(ekbd_setModState)
{
  /* void SDL_SetModState(SDLMod modstate) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDLMod, modstate)
  STACK_FMT_END()

    SDL_SetModState
    ( STACK_GET_DATA(modstate)
    );
}

EXDL_API(ekbd_getKeyName)
{
  /* char* SDL_GetKeyName(SDLKey key) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDLKey, key)
  STACK_FMT_END()

  CATCH_RESULT(char*)

    SDL_GetKeyName
    ( STACK_GET_DATA(key)
    );

  THROW_STRING()
}

