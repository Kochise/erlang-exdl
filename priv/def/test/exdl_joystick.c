/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_joystick.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

EXDL_API(ejoy_numJoysticks)
{
  /* int SDL_NumJoysticks(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    SDL_NumJoysticks
    (
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_name)
{
  /* const char* SDL_JoystickName(int device_index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, device_index)
  STACK_FMT_END()

  CATCH_RESULT(const char*)

    SDL_JoystickName
    ( STACK_GET_DATA(device_index)
    );

  THROW_STRING()
}

EXDL_API(ejoy_open)
{
  /* SDL_Joystick* SDL_JoystickOpen(int device_index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, device_index)
  STACK_FMT_END()

  CATCH_RESULT(SDL_Joystick*)

    SDL_JoystickOpen
    ( STACK_GET_DATA(device_index)
    );

  THROW_POINTER()
}

EXDL_API(ejoy_opened)
{
  /* int SDL_JoystickOpened(int device_index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, device_index)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickOpened
    ( STACK_GET_DATA(device_index)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_index)
{
  /* int SDL_JoystickIndex(SDL_Joystick* joystick) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick, joystick[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickIndex
    ( STACK_GET_ADDR(joystick)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_numAxes)
{
  /* int SDL_JoystickNumAxes(SDL_Joystick* joystick) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick, joystick[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickNumAxes
    ( STACK_GET_ADDR(joystick)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_numBalls)
{
  /* int SDL_JoystickNumBalls(SDL_Joystick* joystick) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick, joystick[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickNumBalls
    ( STACK_GET_ADDR(joystick)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_numHats)
{
  /* int SDL_JoystickNumHats(SDL_Joystick* joystick) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick, joystick[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickNumHats
    ( STACK_GET_ADDR(joystick)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_numButtons)
{
  /* int SDL_JoystickNumButtons(SDL_Joystick* joystick) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick, joystick[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickNumButtons
    ( STACK_GET_ADDR(joystick)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_update)
{
  /* void SDL_JoystickUpdate(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_JoystickUpdate
  (
  );
}

EXDL_API(ejoy_eventState)
{
  /* int SDL_JoystickEventState(int state) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, state)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickEventState
    ( STACK_GET_DATA(state)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_getAxis)
{
  /* Sint16 SDL_JoystickGetAxis(SDL_Joystick* joystick, int axis) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Joystick*, joystick)
    STACK_FMT_DATA(int,           axis)
  STACK_FMT_END()

  CATCH_RESULT(Sint16)

    SDL_JoystickGetAxis
    ( STACK_GET_DATA(joystick)
    , STACK_GET_DATA(axis)
    );

  THROW_RESULT(Sint16)
}

EXDL_API(ejoy_getHat)
{
  /* Uint8 SDL_JoystickGetHat(SDL_Joystick* joystick, int hat) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Joystick*, joystick)
    STACK_FMT_DATA(int,           hat)
  STACK_FMT_END()

  CATCH_RESULT(Uint8)

    SDL_JoystickGetHat
    ( STACK_GET_DATA(joystick)
    , STACK_GET_DATA(hat)
    );

  THROW_RESULT(Uint8)
}

EXDL_API(ejoy_getBall)
{
  /* int SDL_JoystickGetBall(SDL_Joystick* joystick, int ball, int* dx, int* dy) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Joystick*, joystick)
    STACK_FMT_DATA(int,           ball)
    STACK_FMT_LPTR(int*,          dx)
    STACK_FMT_LPTR(int*,          dy)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int, exdl)
  FRAME_FMT_END()

  FRAME_SET_DATA(exdl) =

    SDL_JoystickGetBall
    ( STACK_GET_DATA(joystick)
    , STACK_GET_DATA(ball)
    , STACK_GET_DATA(dx)
    , STACK_GET_DATA(dy)
    );

  THROW_FRAME()
}

EXDL_API(ejoy_getButton)
{
  /* Uint8 SDL_JoystickGetButton(SDL_Joystick* joystick, int button) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Joystick*, joystick)
    STACK_FMT_DATA(int,           button)
  STACK_FMT_END()

  CATCH_RESULT(Uint8)

    SDL_JoystickGetButton
    ( STACK_GET_DATA(joystick)
    , STACK_GET_DATA(button)
    );

  THROW_RESULT(Uint8)
}

EXDL_API(ejoy_close)
{
  /* void SDL_JoystickClose(SDL_Joystick* joystick) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick, joystick[])
  STACK_FMT_END()

    SDL_JoystickClose
    ( STACK_GET_ADDR(joystick)
    );
}

