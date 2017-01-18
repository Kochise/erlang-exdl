/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_gen.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

  enum
  { SDL_Init_ENUM = EXDL_GEN_H
  , SDL_InitSubSystem_ENUM
  , SDL_QuitSubSystem_ENUM
  , SDL_WasInit_ENUM
  , SDL_Quit_ENUM
  , _ENUM_EXDL_GEN
  };


EXDL_API(egen_init);
EXDL_API(egen_initSubSystem);
EXDL_API(egen_quitSubSystem);
EXDL_API(egen_wasInit);
EXDL_API(egen_quit);


  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
