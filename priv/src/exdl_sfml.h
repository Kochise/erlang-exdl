/*  
 *  Copyright (c) 2010 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_sfml.h,v 1.0 2010/11/04 07:49:22 kochise Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_SFML

  enum
  { _ENUM_EXDL_SFML = EXDL_SFML_H
  };



#else // COMPILE_SFML

  enum { _ENUM_EXDL_SFML = EXDL_SFML_H };

#endif // COMPILE_SFML

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
