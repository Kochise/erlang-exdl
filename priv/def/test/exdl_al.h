/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_al.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_AL

  enum
/* Renderer State management */
  { alEnable_ENUM = EXDL_AL_H
  , alDisable_ENUM
  , alIsEnabled_ENUM
/* State retrieval */
  , alGetString_ENUM
  , alGetBooleanv_ENUM
  , alGetIntegerv_ENUM
  , alGetFloatv_ENUM
  , alGetDoublev_ENUM
  , alGetBoolean_ENUM
  , alGetInteger_ENUM
  , alGetFloat_ENUM
  , alGetDouble_ENUM
/* Error support */
  , alGetError_ENUM
/* Extension support */
  , alIsExtensionPresent_ENUM
  , alGetProcAddress_ENUM
  , alGetEnumValue_ENUM
/* Set Listener parameters */
  , alListenerf_ENUM
  , alListener3f_ENUM
  , alListenerfv_ENUM
  , alListeneri_ENUM
  , alListener3i_ENUM
  , alListeneriv_ENUM
/* Get Listener parameters */
  , alGetListenerf_ENUM
  , alGetListener3f_ENUM
  , alGetListenerfv_ENUM
  , alGetListeneri_ENUM
  , alGetListener3i_ENUM
  , alGetListeneriv_ENUM
/* Create Source objects */
  , alGenSources_ENUM
  , alDeleteSources_ENUM
  , alIsSource_ENUM
/* Set Source parameters */
  , alSourcef_ENUM
  , alSource3f_ENUM
  , alSourcefv_ENUM
  , alSourcei_ENUM
  , alSource3i_ENUM
  , alSourceiv_ENUM
/* Get Source parameters */
  , alGetSourcef_ENUM
  , alGetSource3f_ENUM
  , alGetSourcefv_ENUM
  , alGetSourcei_ENUM
  , alGetSource3i_ENUM
  , alGetSourceiv_ENUM
/* Source vector based playback calls */
  , alSourcePlayv_ENUM
  , alSourceStopv_ENUM
  , alSourceRewindv_ENUM
  , alSourcePausev_ENUM
/* Source based playback calls */
  , alSourcePlay_ENUM
  , alSourceStop_ENUM
  , alSourceRewind_ENUM
  , alSourcePause_ENUM
/* Source Queuing  */
  , alSourceQueueBuffers_ENUM
  , alSourceUnqueueBuffers_ENUM
/* Create Buffer objects */
  , alGenBuffers_ENUM
  , alDeleteBuffers_ENUM
  , alIsBuffer_ENUM
  , alBufferData_ENUM
/* Set Buffer parameters */
  , alBufferf_ENUM
  , alBuffer3f_ENUM
  , alBufferfv_ENUM
  , alBufferi_ENUM
  , alBuffer3i_ENUM
  , alBufferiv_ENUM
/* Get Buffer parameters */
  , alGetBufferf_ENUM
  , alGetBuffer3f_ENUM
  , alGetBufferfv_ENUM
  , alGetBufferi_ENUM
  , alGetBuffer3i_ENUM
  , alGetBufferiv_ENUM
/* Global Parameters */
  , alDopplerFactor_ENUM
  , alDopplerVelocity_ENUM
  , alSpeedOfSound_ENUM
  , alDistanceModel_ENUM
  , _ENUM_EXDL_AL
  };


/* Renderer State management */
EXDL_API(eal_enable);
EXDL_API(eal_disable);
EXDL_API(eal_isEnabled);
/* State retrieval */
EXDL_API(eal_getString);
EXDL_API(eal_getBooleanv);
EXDL_API(eal_getIntegerv);
EXDL_API(eal_getFloatv);
EXDL_API(eal_getDoublev);
EXDL_API(eal_getBoolean);
EXDL_API(eal_getInteger);
EXDL_API(eal_getFloat);
EXDL_API(eal_getDouble);
/* Error support */
EXDL_API(eal_getError);
/* Extension support */
EXDL_API(eal_isExtensionPresent);
EXDL_API(eal_getProcAddress);
EXDL_API(eal_getEnumValue);
/* Set Listener parameters */
EXDL_API(eal_listenerf);
EXDL_API(eal_listener3f);
EXDL_API(eal_listenerfv);
EXDL_API(eal_listeneri);
EXDL_API(eal_listener3i);
EXDL_API(eal_listeneriv);
/* Get Listener parameters */
EXDL_API(eal_getListenerf);
EXDL_API(eal_getListener3f);
EXDL_API(eal_getListenerfv);
EXDL_API(eal_getListeneri);
EXDL_API(eal_getListener3i);
EXDL_API(eal_getListeneriv);
/* Create Source objects */
EXDL_API(eal_genSources);
EXDL_API(eal_deleteSources);
EXDL_API(eal_isSource);
/* Set Source parameters */
EXDL_API(eal_sourcef);
EXDL_API(eal_source3f);
EXDL_API(eal_sourcefv);
EXDL_API(eal_sourcei);
EXDL_API(eal_source3i);
EXDL_API(eal_sourceiv);
/* Get Source parameters */
EXDL_API(eal_getSourcef);
EXDL_API(eal_getSource3f);
EXDL_API(eal_getSourcefv);
EXDL_API(eal_getSourcei);
EXDL_API(eal_getSource3i);
EXDL_API(eal_getSourceiv);
/* Source vector based playback calls */
EXDL_API(eal_sourcePlayv);
EXDL_API(eal_sourceStopv);
EXDL_API(eal_sourceRewindv);
EXDL_API(eal_sourcePausev);
/* Source based playback calls */
EXDL_API(eal_sourcePlay);
EXDL_API(eal_sourceStop);
EXDL_API(eal_sourceRewind);
EXDL_API(eal_sourcePause);
/* Source Queuing  */
EXDL_API(eal_sourceQueueBuffers);
EXDL_API(eal_sourceUnqueueBuffers);
/* Create Buffer objects */
EXDL_API(eal_genBuffers);
EXDL_API(eal_deleteBuffers);
EXDL_API(eal_isBuffer);
EXDL_API(eal_bufferData);
/* Set Buffer parameters */
EXDL_API(eal_bufferf);
EXDL_API(eal_buffer3f);
EXDL_API(eal_bufferfv);
EXDL_API(eal_bufferi);
EXDL_API(eal_buffer3i);
EXDL_API(eal_bufferiv);
/* Get Buffer parameters */
EXDL_API(eal_getBufferf);
EXDL_API(eal_getBuffer3f);
EXDL_API(eal_getBufferfv);
EXDL_API(eal_getBufferi);
EXDL_API(eal_getBuffer3i);
EXDL_API(eal_getBufferiv);
/* Global Parameters */
EXDL_API(eal_dopplerFactor);
EXDL_API(eal_dopplerVelocity);
EXDL_API(eal_speedOfSound);
EXDL_API(eal_distanceModel);

#else // COMPILE_AL
  enum { _ENUM_EXDL_AL = EXDL_AL_H };
#endif // COMPILE_AL

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
