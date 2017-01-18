/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_alext.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_ALEXT

  enum
/* loki */
  { alcGetAudioChannel_LOKI_ENUM = EXDL_ALEXT_H
  , alcSetAudioChannel_LOKI_ENUM
// void alBombOnError_LOKI(void);
  , alBufferi_LOKI_ENUM
  , alBufferDataWithCallback_LOKI_ENUM
  , alBufferWriteData_LOKI_ENUM
  , alGenStreamingBuffers_LOKI_ENUM
  , alBufferAppendData_LOKI_ENUM
  , alBufferAppendWriteData_LOKI_ENUM
/* binary compatibility */
// ALsizei alBufferAppendData(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq);
/* Capture api */
  , alCaptureInit_EXT_ENUM
  , alCaptureDestroy_EXT_ENUM
  , alCaptureStart_EXT_ENUM
  , alCaptureStop_EXT_ENUM
/* Non-blocking device read */
  , alCaptureGetData_EXT_ENUM
/* custom loaders */
  , alutLoadVorbis_LOKI_ENUM
  , alutLoadMP3_LOKI_ENUM
  , _ENUM_EXDL_ALEXT
  };


/* loki */
typedef ALfloat   (APIENTRY* EXDLALCGETAUDIOCHANNELPROC)        (ALuint channel);
typedef void      (APIENTRY* EXDLALCSETAUDIOCHANNELPROC)        (ALuint channel, ALfloat volume);
// void alBombOnError_LOKI(void);
typedef void      (APIENTRY* EXDLALBUFFERIPROC)                 (ALuint bid, ALenum param, ALint value);
typedef void      (APIENTRY* EXDLALBUFFERDATAWITHCALLBACKPROC)  (ALuint bid, int (*Callback) (ALuint, ALuint, ALshort*, ALenum, ALint, ALint));
typedef void      (APIENTRY* EXDLALBUFFERWRITEDATAPROC)         (ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq, ALenum internalFormat);
typedef void      (APIENTRY* EXDLALGENSTREAMINGBUFFERSPROC)     (ALsizei n, ALuint* samples);
typedef ALsizei   (APIENTRY* EXDLALBUFFERAPPENDDATAPROC)        (ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq);
typedef ALsizei   (APIENTRY* EXDLALBUFFERAPPENDWRITEDATAPROC)   (ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq, ALenum internalFormat);
/* binary compatibility */
// ALsizei alBufferAppendData(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq);
/* Capture api */
typedef ALboolean (APIENTRY* EXDLALCAPTUREINITPROC)             (ALenum format, ALuint rate, ALsizei bufferSize);
typedef ALboolean (APIENTRY* EXDLALCAPTUREDESTROYPROC)          (void);
typedef ALboolean (APIENTRY* EXDLALCAPTURESTARTPROC)            (void);
typedef ALboolean (APIENTRY* EXDLALCAPTURESTOPPROC)             (void);
/* Non-blocking device read */
typedef ALsizei   (APIENTRY* EXDLALCAPTUREGETDATAPROC)          (ALvoid* data, ALsizei n, ALenum format, ALuint rate);
/* custom loaders */
typedef ALboolean (APIENTRY* EXDLALUTLOADVORBISPROC)            (ALuint bid, const ALvoid* data, ALint size);
typedef ALboolean (APIENTRY* EXDLALUTLOADMP3PROC)               (ALuint bid, ALvoid* data, ALint size);


/* loki */
EXDL_EXTERN EXDLALCGETAUDIOCHANNELPROC        exdl_alcGetAudioChannel_LOKI;
EXDL_EXTERN EXDLALCSETAUDIOCHANNELPROC        exdl_alcSetAudioChannel_LOKI;
// void alBombOnError_LOKI(void);
EXDL_EXTERN EXDLALBUFFERIPROC                 exdl_alBufferi_LOKI;
EXDL_EXTERN EXDLALBUFFERDATAWITHCALLBACKPROC  exdl_alBufferDataWithCallback_LOKI;
EXDL_EXTERN EXDLALBUFFERWRITEDATAPROC         exdl_alBufferWriteData_LOKI;
EXDL_EXTERN EXDLALGENSTREAMINGBUFFERSPROC     exdl_alGenStreamingBuffers_LOKI;
EXDL_EXTERN EXDLALBUFFERAPPENDDATAPROC        exdl_alBufferAppendData_LOKI;
EXDL_EXTERN EXDLALBUFFERAPPENDWRITEDATAPROC   exdl_alBufferAppendWriteData_LOKI;
/* binary compatibility */
// ALsizei alBufferAppendData(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq);
/* Capture api */
EXDL_EXTERN EXDLALCAPTUREINITPROC             exdl_alCaptureInit_EXT;
EXDL_EXTERN EXDLALCAPTUREDESTROYPROC          exdl_alCaptureDestroy_EXT;
EXDL_EXTERN EXDLALCAPTURESTARTPROC            exdl_alCaptureStart_EXT;
EXDL_EXTERN EXDLALCAPTURESTOPPROC             exdl_alCaptureStop_EXT;
/* Non-blocking device read */
EXDL_EXTERN EXDLALCAPTUREGETDATAPROC          exdl_alCaptureGetData_EXT;
/* custom loaders */
EXDL_EXTERN EXDLALUTLOADVORBISPROC            exdl_alutLoadVorbis_LOKI;
EXDL_EXTERN EXDLALUTLOADMP3PROC               exdl_alutLoadMP3_LOKI;


/* loki */
EXDL_API(ealc_getAudioChannel_LOKI);
EXDL_API(ealc_setAudioChannel_LOKI);
// void alBombOnError_LOKI(void);
EXDL_API(eal_bufferi_LOKI);
EXDL_API(eal_bufferDataWithCallback_LOKI);
EXDL_API(eal_bufferWriteData_LOKI);
EXDL_API(eal_genStreamingBuffers_LOKI);
EXDL_API(eal_bufferAppendData_LOKI);
EXDL_API(eal_bufferAppendWriteData_LOKI);
/* binary compatibility */
// ALsizei alBufferAppendData(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq);
/* Capture api */
EXDL_API(eal_captureInit_EXT);
EXDL_API(eal_captureDestroy_EXT);
EXDL_API(eal_captureStart_EXT);
EXDL_API(eal_captureStop_EXT);
/* Non-blocking device read */
EXDL_API(eal_captureGetData_EXT);
/* custom loaders */
EXDL_API(ealut_loadVorbis_LOKI);
EXDL_API(ealut_loadMP3_LOKI);

#else // COMPILE_ALEXT
  enum { _ENUM_EXDL_ALEXT = EXDL_ALEXT_H };
#endif // COMPILE_ALEXT

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
