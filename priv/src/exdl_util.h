/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_util.h,v 1.3 2006/06/26 12:10:01 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif

#ifdef COMPILE_GL

    #ifdef _MSC_VER
      #define BUGGY_COMPILER
    #else // _MSC_VER
      #undef BUGGY_COMPILER
    #endif // _MSC_VER

  #ifndef BUGGY_COMPILER
    enum
    { SDL_UTIL_copySdlImage2GLArray_ENUM = EXDL_UTIL_H
    , SDL_UTIL_Debug_ENUM
    , mygl_alloc_ENUM
    , mygl_write_ENUM
    , _ENUM_EXDL_UTIL
    };
  #else // BUGGY_COMPILER
    // Yeah, Microsoft's compiler cannot handle the enum list above, go figure
    #define SDL_UTIL_copySdlImage2GLArray_ENUM  EXDL_UTIL_H
    #define SDL_UTIL_Debug_ENUM                 SDL_UTIL_copySdlImage2GLArray_ENUM + 1
    /*  MY GL memory handling funcs */
    #define mygl_alloc_ENUM                     SDL_UTIL_Debug_ENUM                + 1
    #define mygl_write_ENUM                     mygl_alloc_ENUM                    + 1
    #define _ENUM_EXDL_UTIL                     mygl_write_ENUM                    + 1
  #endif // BUGGY_COMPILER


  EXDL_API(copySdlImage2GLArray);
  EXDL_API(exdl_util_debug);
  /*  MY GL memory handling funcs */
  EXDL_API(mygl_alloc);
  EXDL_API(mygl_write);

#else // COMPILE_GL

  enum { _ENUM_EXDL_UTIL = EXDL_UTIL_H };

#endif // COMPILE_GL

  #ifdef __cplusplus
  }
  #endif 
