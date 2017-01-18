/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_alc.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_ALC

  enum
/* Context Management */
  { alcCreateContext_ENUM = EXDL_ALC_H
  , alcMakeContextCurrent_ENUM
  , alcProcessContext_ENUM
  , alcSuspendContext_ENUM
  , alcDestroyContext_ENUM
  , alcGetCurrentContext_ENUM
  , alcGetContextsDevice_ENUM
/* Device Management */
  , alcOpenDevice_ENUM
  , alcCloseDevice_ENUM
/* Error support */
  , alcGetError_ENUM
/* Extension support */
  , alcIsExtensionPresent_ENUM
  , alcGetProcAddress_ENUM
  , alcGetEnumValue_ENUM
/* Query functions */
  , alcGetString_ENUM
  , alcGetIntegerv_ENUM
/* Capture functions */
  , alcCaptureOpenDevice_ENUM
  , alcCaptureCloseDevice_ENUM
  , alcCaptureStart_ENUM
  , alcCaptureStop_ENUM
  , alcCaptureSamples_ENUM
  , _ENUM_EXDL_ALC
  };


/* Context Management */
EXDL_API(ealc_createContext);
EXDL_API(ealc_makeContextCurrent);
EXDL_API(ealc_processContext);
EXDL_API(ealc_suspendContext);
EXDL_API(ealc_destroyContext);
EXDL_API(ealc_getCurrentContext);
EXDL_API(ealc_getContextsDevice);
/* Device Management */
EXDL_API(ealc_openDevice);
EXDL_API(ealc_closeDevice);
/* Error support */
EXDL_API(ealc_getError);
/* Extension support */
EXDL_API(ealc_isExtensionPresent);
EXDL_API(ealc_getProcAddress);
EXDL_API(ealc_getEnumValue);
/* Query functions */
EXDL_API(ealc_getString);
EXDL_API(ealc_getIntegerv);
/* Capture functions */
EXDL_API(ealc_captureOpenDevice);
EXDL_API(ealc_captureCloseDevice);
EXDL_API(ealc_captureStart);
EXDL_API(ealc_captureStop);
EXDL_API(ealc_captureSamples);

#else // COMPILE_ALC
  enum { _ENUM_EXDL_ALC = EXDL_ALC_H };
#endif // COMPILE_ALC

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
