/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_joystick.c,v 1.2 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#include <sdl\SDL_joystick.h>

EXDL_API(ejoy_numJoysticks)
{
  /* int SDL_NumJoysticks(void) */

  /* exp : Counts the number of joysticks attached to the system. */
  /* inp :  */
  /* ret : the number of attached joysticks */

  CATCH_RESULT(int)

    SDL_NumJoysticks
    (
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_name)
{
  /* const char* SDL_JoystickName(int device_index) */

  /* exp : Get the implementation dependent name of joystick. */
  /* inp : index = the N'th joystick on the system. */
  /* ret : a char pointer to the joystick name. */

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

  /* exp : Opens a joystick for use within SDL. */
  /*     > A joystick must be opened before it game be used */
  /* inp : index = the N'th joystick in the system. */
  /* ret : a SDL_Joystick structure on success. NULL on failure. */

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

  /* exp : Determines whether a joystick has already been opened within the application */
  /* inp : index = the N'th joystick on the system. */
  /* ret : 1 if the joystick has been opened, or 0 if it has not. */

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

  /* exp : Returns the index of a given SDL_Joystick structure. */
  /* inp : joystick = SDL_Joystick structure. */
  /* ret : Index number of the joystick. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick*, joystick)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickIndex
    ( STACK_GET_DATA(joystick)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_numAxes)
{
  /* int SDL_JoystickNumAxes(SDL_Joystick* joystick) */

  /* exp : Return the number of axes available from a previously opened SDL_Joystick. */
  /* inp : joystick = SDL_Joystick structure. */
  /* ret : Number of axes. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick*, joystick)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickNumAxes
    ( STACK_GET_DATA(joystick)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_numBalls)
{
  /* int SDL_JoystickNumBalls(SDL_Joystick* joystick) */

  /* exp : Return the number of trackballs available from a previously opened SDL_Joystick. */
  /* inp : joystick = SDL_Joystick structure. */
  /* ret : Number of trackballs. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick*, joystick)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickNumBalls
    ( STACK_GET_DATA(joystick)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_numHats)
{
  /* int SDL_JoystickNumHats(SDL_Joystick* joystick) */

  /* exp : Return the number of hats available from a previously opened SDL_Joystick. */
  /* inp : joystick = SDL_Joystick structure. */
  /* ret : Number of hats. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick*, joystick)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickNumHats
    ( STACK_GET_DATA(joystick)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_numButtons)
{
  /* int SDL_JoystickNumButtons(SDL_Joystick* joystick) */

  /* exp : Return the number of buttons available from a previously opened SDL_Joystick. */
  /* inp : joystick = SDL_Joystick structure. */
  /* ret : Number of buttons. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick*, joystick)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_JoystickNumButtons
    ( STACK_GET_DATA(joystick)
    );

  THROW_RESULT(int)
}

EXDL_API(ejoy_update)
{
  /* void SDL_JoystickUpdate(void) */

  /* exp : Updates the state(position, buttons, etc.) of all open joysticks. */
  /*       If joystick events have been enabled with SDL_JoystickEventState */
  /*       then this is called automatically in the event loop. */
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

  /* exp : SDL_JoystickGetAxis returns the current state of the given axis on the */
  /*       given joystick. On most modern joysticks the X axis is usually */
  /*       represented by axis 0 and the Y axis by axis 1. The value returned by */
  /*       SDL_JoystickGetAxis is a signed integer (-32768 to 32768) representing */
  /*       the current position of the axis, it maybe necessary to impose certain */
  /*       tolerances on these values to account for jitter. It is worth noting */
  /*       that some joysticks use axes 2 and 3 for extra buttons.*/
  /* inp :  */
  /* ret : a 16-bit signed integer representing the current position of the axis. */

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

  /* exp : SDL_JoystickGetHat returns the current state of the given hat on the given joystick. */
  /* inp :  */
  /* ret : The current state is returned as a Uint8 which is defined as an OR'd */
  /*       combination of one or more of the following */
  /*       SDL_HAT_CENTERED | SDL_HAT_UP | SDL_HAT_RIGHT | SDL_HAT_DOWN | SDL_HAT_LEFT */
  /*       SDL_HAT_RIGHTUP | SDL_HAT_RIGHTDOWN | SDL_HAT_LEFTUP | SDL_HAT_LEFTDOWN */

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

  /* exp : Get the ball axis change. */
  /*     > Trackballs can only return relative motion since the last call to */
  /*       SDL_JoystickGetBall, these motion deltas a placed into dx and dy. */
  /* inp :  */
  /* ret : 0 on success or -1 on failure */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Joystick*, joystick)
    STACK_FMT_DATA(int,           ball)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int, status)
    FRAME_FMT_DATA(int, dx)
    FRAME_FMT_DATA(int, dy)
  FRAME_FMT_END()

  FRAME_SET_DATA(status) =
//  CATCH_RESULT(int)

    SDL_JoystickGetBall
    ( STACK_GET_DATA(joystick)
    , STACK_GET_DATA(ball)
    , FRAME_GET_ADDR(dx)
    , FRAME_GET_ADDR(dy)
    );

  THROW_FRAME()
}

EXDL_API(ejoy_getButton)
{
  /* Uint8 SDL_JoystickGetButton(SDL_Joystick* joystick, int button) */

  /* exp : SDL_JoystickGetButton returns the current state of the given */
  /*       button on the given joystick. */
  /* inp :  */
  /* ret : 1 if the button is pressed. Otherwise, 0. */

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

  /* exp : Close a joystick that was previously opened with SDL_JoystickOpen. */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Joystick*, joystick)
  STACK_FMT_END()

    SDL_JoystickClose
    ( STACK_GET_DATA(joystick)
    );
}

