/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_joystick_fp.h,v 1.2 2004/10/25 09:17:43 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

{ SDL_NumJoysticks_ENUM,        "SDL_NumJoysticks",        ejoy_numJoysticks },
{ SDL_JoystickName_ENUM,        "SDL_JoystickName",        ejoy_name },
{ SDL_JoystickOpen_ENUM,        "SDL_JoystickOpen",        ejoy_open },
{ SDL_JoystickOpened_ENUM,      "SDL_JoystickOpened",      ejoy_opened },
{ SDL_JoystickIndex_ENUM,       "SDL_JoystickIndex",       ejoy_index },
{ SDL_JoystickNumAxes_ENUM,     "SDL_JoystickNumAxes",     ejoy_numAxes },
{ SDL_JoystickNumBalls_ENUM,    "SDL_JoystickNumBalls",    ejoy_numBalls },
{ SDL_JoystickNumHats_ENUM,     "SDL_JoystickNumHats",     ejoy_numHats },
{ SDL_JoystickNumButtons_ENUM,  "SDL_JoystickNumButtons",  ejoy_numButtons },
{ SDL_JoystickUpdate_ENUM,      "SDL_JoystickUpdate",      ejoy_update },
{ SDL_JoystickEventState_ENUM,  "SDL_JoystickEventState",  ejoy_eventState },
{ SDL_JoystickGetAxis_ENUM,     "SDL_JoystickGetAxis",     ejoy_getAxis },
{ SDL_JoystickGetHat_ENUM,      "SDL_JoystickGetHat",      ejoy_getHat },
{ SDL_JoystickGetBall_ENUM,     "SDL_JoystickGetBall",     ejoy_getBall },
{ SDL_JoystickGetButton_ENUM,   "SDL_JoystickGetButton",   ejoy_getButton },
{ SDL_JoystickClose_ENUM,       "SDL_JoystickClose",       ejoy_close },
