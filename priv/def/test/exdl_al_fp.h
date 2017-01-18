/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_al_fp.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_AL

/* Renderer State management */
{ alEnable_ENUM,                "alEnable",                eal_enable },
{ alDisable_ENUM,               "alDisable",               eal_disable },
{ alIsEnabled_ENUM,             "alIsEnabled",             eal_isEnabled },
/* State retrieval */
{ alGetString_ENUM,             "alGetString",             eal_getString },
{ alGetBooleanv_ENUM,           "alGetBooleanv",           eal_getBooleanv },
{ alGetIntegerv_ENUM,           "alGetIntegerv",           eal_getIntegerv },
{ alGetFloatv_ENUM,             "alGetFloatv",             eal_getFloatv },
{ alGetDoublev_ENUM,            "alGetDoublev",            eal_getDoublev },
{ alGetBoolean_ENUM,            "alGetBoolean",            eal_getBoolean },
{ alGetInteger_ENUM,            "alGetInteger",            eal_getInteger },
{ alGetFloat_ENUM,              "alGetFloat",              eal_getFloat },
{ alGetDouble_ENUM,             "alGetDouble",             eal_getDouble },
/* Error support */
{ alGetError_ENUM,              "alGetError",              eal_getError },
/* Extension support */
{ alIsExtensionPresent_ENUM,    "alIsExtensionPresent",    eal_isExtensionPresent },
{ alGetProcAddress_ENUM,        "alGetProcAddress",        eal_getProcAddress },
{ alGetEnumValue_ENUM,          "alGetEnumValue",          eal_getEnumValue },
/* Set Listener parameters */
{ alListenerf_ENUM,             "alListenerf",             eal_listenerf },
{ alListener3f_ENUM,            "alListener3f",            eal_listener3f },
{ alListenerfv_ENUM,            "alListenerfv",            eal_listenerfv },
{ alListeneri_ENUM,             "alListeneri",             eal_listeneri },
{ alListener3i_ENUM,            "alListener3i",            eal_listener3i },
{ alListeneriv_ENUM,            "alListeneriv",            eal_listeneriv },
/* Get Listener parameters */
{ alGetListenerf_ENUM,          "alGetListenerf",          eal_getListenerf },
{ alGetListener3f_ENUM,         "alGetListener3f",         eal_getListener3f },
{ alGetListenerfv_ENUM,         "alGetListenerfv",         eal_getListenerfv },
{ alGetListeneri_ENUM,          "alGetListeneri",          eal_getListeneri },
{ alGetListener3i_ENUM,         "alGetListener3i",         eal_getListener3i },
{ alGetListeneriv_ENUM,         "alGetListeneriv",         eal_getListeneriv },
/* Create Source objects */
{ alGenSources_ENUM,            "alGenSources",            eal_genSources },
{ alDeleteSources_ENUM,         "alDeleteSources",         eal_deleteSources },
{ alIsSource_ENUM,              "alIsSource",              eal_isSource },
/* Set Source parameters */
{ alSourcef_ENUM,               "alSourcef",               eal_sourcef },
{ alSource3f_ENUM,              "alSource3f",              eal_source3f },
{ alSourcefv_ENUM,              "alSourcefv",              eal_sourcefv },
{ alSourcei_ENUM,               "alSourcei",               eal_sourcei },
{ alSource3i_ENUM,              "alSource3i",              eal_source3i },
{ alSourceiv_ENUM,              "alSourceiv",              eal_sourceiv },
/* Get Source parameters */
{ alGetSourcef_ENUM,            "alGetSourcef",            eal_getSourcef },
{ alGetSource3f_ENUM,           "alGetSource3f",           eal_getSource3f },
{ alGetSourcefv_ENUM,           "alGetSourcefv",           eal_getSourcefv },
{ alGetSourcei_ENUM,            "alGetSourcei",            eal_getSourcei },
{ alGetSource3i_ENUM,           "alGetSource3i",           eal_getSource3i },
{ alGetSourceiv_ENUM,           "alGetSourceiv",           eal_getSourceiv },
/* Source vector based playback calls */
{ alSourcePlayv_ENUM,           "alSourcePlayv",           eal_sourcePlayv },
{ alSourceStopv_ENUM,           "alSourceStopv",           eal_sourceStopv },
{ alSourceRewindv_ENUM,         "alSourceRewindv",         eal_sourceRewindv },
{ alSourcePausev_ENUM,          "alSourcePausev",          eal_sourcePausev },
/* Source based playback calls */
{ alSourcePlay_ENUM,            "alSourcePlay",            eal_sourcePlay },
{ alSourceStop_ENUM,            "alSourceStop",            eal_sourceStop },
{ alSourceRewind_ENUM,          "alSourceRewind",          eal_sourceRewind },
{ alSourcePause_ENUM,           "alSourcePause",           eal_sourcePause },
/* Source Queuing  */
{ alSourceQueueBuffers_ENUM,    "alSourceQueueBuffers",    eal_sourceQueueBuffers },
{ alSourceUnqueueBuffers_ENUM,  "alSourceUnqueueBuffers",  eal_sourceUnqueueBuffers },
/* Create Buffer objects */
{ alGenBuffers_ENUM,            "alGenBuffers",            eal_genBuffers },
{ alDeleteBuffers_ENUM,         "alDeleteBuffers",         eal_deleteBuffers },
{ alIsBuffer_ENUM,              "alIsBuffer",              eal_isBuffer },
{ alBufferData_ENUM,            "alBufferData",            eal_bufferData },
/* Set Buffer parameters */
{ alBufferf_ENUM,               "alBufferf",               eal_bufferf },
{ alBuffer3f_ENUM,              "alBuffer3f",              eal_buffer3f },
{ alBufferfv_ENUM,              "alBufferfv",              eal_bufferfv },
{ alBufferi_ENUM,               "alBufferi",               eal_bufferi },
{ alBuffer3i_ENUM,              "alBuffer3i",              eal_buffer3i },
{ alBufferiv_ENUM,              "alBufferiv",              eal_bufferiv },
/* Get Buffer parameters */
{ alGetBufferf_ENUM,            "alGetBufferf",            eal_getBufferf },
{ alGetBuffer3f_ENUM,           "alGetBuffer3f",           eal_getBuffer3f },
{ alGetBufferfv_ENUM,           "alGetBufferfv",           eal_getBufferfv },
{ alGetBufferi_ENUM,            "alGetBufferi",            eal_getBufferi },
{ alGetBuffer3i_ENUM,           "alGetBuffer3i",           eal_getBuffer3i },
{ alGetBufferiv_ENUM,           "alGetBufferiv",           eal_getBufferiv },
/* Global Parameters */
{ alDopplerFactor_ENUM,         "alDopplerFactor",         eal_dopplerFactor },
{ alDopplerVelocity_ENUM,       "alDopplerVelocity",       eal_dopplerVelocity },
{ alSpeedOfSound_ENUM,          "alSpeedOfSound",          eal_speedOfSound },
{ alDistanceModel_ENUM,         "alDistanceModel",         eal_distanceModel },

#endif // COMPILE_AL
