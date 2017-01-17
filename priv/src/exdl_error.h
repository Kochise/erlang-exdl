/*
 *  Copyright (c) 2010 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_error.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

  enum
  { SDL_GetError_ENUM = EXDL_ERROR_H
  , SDL_ClearError_ENUM
  , _ENUM_EXDL_ERROR
  };


EXDL_API(eerr_getError);
EXDL_API(eerr_clearError);

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
