/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_alc_fp.h,v 1.1 2008/11/06 07:49:22 kochise Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_AL

/* Context Management */
{ alcCreateContext_ENUM,       "alcCreateContext",       ealc_createContext },
{ alcMakeContextCurrent_ENUM,  "alcMakeContextCurrent",  ealc_makeContextCurrent },
{ alcProcessContext_ENUM,      "alcProcessContext",      ealc_processContext },
{ alcSuspendContext_ENUM,      "alcSuspendContext",      ealc_suspendContext },
{ alcDestroyContext_ENUM,      "alcDestroyContext",      ealc_destroyContext },
{ alcGetCurrentContext_ENUM,   "alcGetCurrentContext",   ealc_getCurrentContext },
{ alcGetContextsDevice_ENUM,   "alcGetContextsDevice",   ealc_getContextsDevice },
/* Device Management */
{ alcOpenDevice_ENUM,          "alcOpenDevice",          ealc_openDevice },
{ alcCloseDevice_ENUM,         "alcCloseDevice",         ealc_closeDevice },
/* Error support */
{ alcGetError_ENUM,            "alcGetError",            ealc_getError },
/* Extension support */
{ alcIsExtensionPresent_ENUM,  "alcIsExtensionPresent",  ealc_isExtensionPresent },
{ alcGetProcAddress_ENUM,      "alcGetProcAddress",      ealc_getProcAddress },
{ alcGetEnumValue_ENUM,        "alcGetEnumValue",        ealc_getEnumValue },
/* Query functions */
{ alcGetString_ENUM,           "alcGetString",           ealc_getString },
{ alcGetIntegerv_ENUM,         "alcGetIntegerv",         ealc_getIntegerv },
/* Capture functions */
{ alcCaptureOpenDevice_ENUM,   "alcCaptureOpenDevice",   ealc_captureOpenDevice },
{ alcCaptureCloseDevice_ENUM,  "alcCaptureCloseDevice",  ealc_captureCloseDevice },
{ alcCaptureStart_ENUM,        "alcCaptureStart",        ealc_captureStart },
{ alcCaptureStop_ENUM,         "alcCaptureStop",         ealc_captureStop },
{ alcCaptureSamples_ENUM,      "alcCaptureSamples",      ealc_captureSamples },

#endif // COMPILE_AL
