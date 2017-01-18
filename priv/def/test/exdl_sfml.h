/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_sfml.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_RTF

  enum
  , _ENUM_EXDL_RTF
  };



#else // COMPILE_RTF
  enum { _ENUM_EXDL_RTF = EXDL_RTF_H };
#endif // COMPILE_RTF

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
