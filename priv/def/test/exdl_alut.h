/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_alut.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_ALUT

  enum
  { alutInit_ENUM = EXDL_ALUT_H
  , alutInitWithoutContext_ENUM
  , alutExit_ENUM
  , alutGetError_ENUM
  , alutGetErrorString_ENUM
  , alutCreateBufferFromFile_ENUM
  , alutCreateBufferFromFileImage_ENUM
  , alutCreateBufferHelloWorld_ENUM
  , alutCreateBufferWaveform_ENUM
  , alutLoadMemoryFromFile_ENUM
  , alutLoadMemoryFromFileImage_ENUM
  , alutLoadMemoryHelloWorld_ENUM
  , alutLoadMemoryWaveform_ENUM
  , alutGetMIMETypes_ENUM
  , alutGetMajorVersion_ENUM
  , alutGetMinorVersion_ENUM
  , alutSleep_ENUM
  , _ENUM_EXDL_ALUT
  };


EXDL_API(ealut_init);
EXDL_API(ealut_initWithoutContext);
EXDL_API(ealut_exit);
EXDL_API(ealut_getError);
EXDL_API(ealut_getErrorString);
EXDL_API(ealut_createBufferFromFile);
EXDL_API(ealut_createBufferFromFileImage);
EXDL_API(ealut_createBufferHelloWorld);
EXDL_API(ealut_createBufferWaveform);
EXDL_API(ealut_loadMemoryFromFile);
EXDL_API(ealut_loadMemoryFromFileImage);
EXDL_API(ealut_loadMemoryHelloWorld);
EXDL_API(ealut_loadMemoryWaveform);
EXDL_API(ealut_getMIMETypes);
EXDL_API(ealut_getMajorVersion);
EXDL_API(ealut_getMinorVersion);
EXDL_API(ealut_sleep);

#else // COMPILE_ALUT
  enum { _ENUM_EXDL_ALUT = EXDL_ALUT_H };
#endif // COMPILE_ALUT

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
