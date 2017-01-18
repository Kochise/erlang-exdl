/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_alext_fp.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_ALEXT

/* loki */
{ alcGetAudioChannel_LOKI_ENUM,        "alcGetAudioChannel_LOKI",        ealc_getAudioChannel_LOKI,        &exdl_alcGetAudioChannel_LOKI },
{ alcSetAudioChannel_LOKI_ENUM,        "alcSetAudioChannel_LOKI",        ealc_setAudioChannel_LOKI,        &exdl_alcSetAudioChannel_LOKI },
// void alBombOnError_LOKI(void);
{ alBufferi_LOKI_ENUM,                 "alBufferi_LOKI",                 eal_bufferi_LOKI,                 &exdl_alBufferi_LOKI },
{ alBufferDataWithCallback_LOKI_ENUM,  "alBufferDataWithCallback_LOKI",  eal_bufferDataWithCallback_LOKI,  &exdl_alBufferDataWithCallback_LOKI },
{ alBufferWriteData_LOKI_ENUM,         "alBufferWriteData_LOKI",         eal_bufferWriteData_LOKI,         &exdl_alBufferWriteData_LOKI },
{ alGenStreamingBuffers_LOKI_ENUM,     "alGenStreamingBuffers_LOKI",     eal_genStreamingBuffers_LOKI,     &exdl_alGenStreamingBuffers_LOKI },
{ alBufferAppendData_LOKI_ENUM,        "alBufferAppendData_LOKI",        eal_bufferAppendData_LOKI,        &exdl_alBufferAppendData_LOKI },
{ alBufferAppendWriteData_LOKI_ENUM,   "alBufferAppendWriteData_LOKI",   eal_bufferAppendWriteData_LOKI,   &exdl_alBufferAppendWriteData_LOKI },
/* binary compatibility */
// ALsizei alBufferAppendData(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq);
/* Capture api */
{ alCaptureInit_EXT_ENUM,              "alCaptureInit_EXT",              eal_captureInit_EXT,              &exdl_alCaptureInit_EXT },
{ alCaptureDestroy_EXT_ENUM,           "alCaptureDestroy_EXT",           eal_captureDestroy_EXT,           &exdl_alCaptureDestroy_EXT },
{ alCaptureStart_EXT_ENUM,             "alCaptureStart_EXT",             eal_captureStart_EXT,             &exdl_alCaptureStart_EXT },
{ alCaptureStop_EXT_ENUM,              "alCaptureStop_EXT",              eal_captureStop_EXT,              &exdl_alCaptureStop_EXT },
/* Non-blocking device read */
{ alCaptureGetData_EXT_ENUM,           "alCaptureGetData_EXT",           eal_captureGetData_EXT,           &exdl_alCaptureGetData_EXT },
/* custom loaders */
{ alutLoadVorbis_LOKI_ENUM,            "alutLoadVorbis_LOKI",            ealut_loadVorbis_LOKI,            &exdl_alutLoadVorbis_LOKI },
{ alutLoadMP3_LOKI_ENUM,               "alutLoadMP3_LOKI",               ealut_loadMP3_LOKI,               &exdl_alutLoadMP3_LOKI },

#endif // COMPILE_ALEXT
