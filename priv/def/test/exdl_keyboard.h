/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_keyboard.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

  enum
  { SDL_EnableUNICODE_ENUM = EXDL_KEYBOARD_H
  , SDL_EnableKeyRepeat_ENUM
  , SDL_GetKeyRepeat_ENUM
  , SDL_GetKeyState_ENUM
  , SDL_GetModState_ENUM
  , SDL_SetModState_ENUM
  , SDL_GetKeyName_ENUM
  , _ENUM_EXDL_KEYBOARD
  };


EXDL_API(ekbd_enableUNICODE);
EXDL_API(ekbd_enableKeyRepeat);
EXDL_API(ekbd_getKeyRepeat);
EXDL_API(ekbd_getKeyState);
EXDL_API(ekbd_getModState);
EXDL_API(ekbd_setModState);
EXDL_API(ekbd_getKeyName);


  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
