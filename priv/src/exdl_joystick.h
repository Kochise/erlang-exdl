/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_joystick.h,v 1.1 2004/03/30 07:49:22 bjorng Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

  enum
  { SDL_NumJoysticks_ENUM = EXDL_JOYSTICK_H
  , SDL_JoystickName_ENUM
  , SDL_JoystickOpen_ENUM
  , SDL_JoystickOpened_ENUM
  , SDL_JoystickIndex_ENUM
  , SDL_JoystickNumAxes_ENUM
  , SDL_JoystickNumBalls_ENUM
  , SDL_JoystickNumHats_ENUM
  , SDL_JoystickNumButtons_ENUM
  , SDL_JoystickUpdate_ENUM
  , SDL_JoystickEventState_ENUM
  , SDL_JoystickGetAxis_ENUM
  , SDL_JoystickGetHat_ENUM
  , SDL_JoystickGetBall_ENUM
  , SDL_JoystickGetButton_ENUM
  , SDL_JoystickClose_ENUM
  , _ENUM_EXDL_JOYSTICK
  };


EXDL_API(ejoy_numJoysticks);
EXDL_API(ejoy_name);
EXDL_API(ejoy_open);
EXDL_API(ejoy_opened);
EXDL_API(ejoy_index);
EXDL_API(ejoy_numAxes);
EXDL_API(ejoy_numBalls);
EXDL_API(ejoy_numHats);
EXDL_API(ejoy_numButtons);
EXDL_API(ejoy_update);
EXDL_API(ejoy_eventState);
EXDL_API(ejoy_getAxis);
EXDL_API(ejoy_getHat);
EXDL_API(ejoy_getBall);
EXDL_API(ejoy_getButton);
EXDL_API(ejoy_close);

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
