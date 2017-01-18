/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_util.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_TTF

  enum
  , _ENUM_EXDL_TTF
  };



#else // COMPILE_TTF
  enum { _ENUM_EXDL_TTF = EXDL_TTF_H };
#endif // COMPILE_TTF

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
