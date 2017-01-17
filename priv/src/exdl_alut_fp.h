/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_alut_fp.h,v 1.1 2008/11/06 07:49:22 kochise Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_ALUT

{ alutInit_ENUM,                       "alutInit",                       ealut_init },
{ alutInitWithoutContext_ENUM,         "alutInitWithoutContext",         ealut_initWithoutContext },
{ alutExit_ENUM,                       "alutExit",                       ealut_exit },
{ alutGetError_ENUM,                   "alutGetError",                   ealut_getError },
{ alutGetErrorString_ENUM,             "alutGetErrorString",             ealut_getErrorString },
{ alutCreateBufferFromFile_ENUM,       "alutCreateBufferFromFile",       ealut_createBufferFromFile },
{ alutCreateBufferFromFileImage_ENUM,  "alutCreateBufferFromFileImage",  ealut_createBufferFromFileImage },
{ alutCreateBufferHelloWorld_ENUM,     "alutCreateBufferHelloWorld",     ealut_createBufferHelloWorld },
{ alutCreateBufferWaveform_ENUM,       "alutCreateBufferWaveform",       ealut_createBufferWaveform },
{ alutLoadMemoryFromFile_ENUM,         "alutLoadMemoryFromFile",         ealut_loadMemoryFromFile },
{ alutLoadMemoryFromFileImage_ENUM,    "alutLoadMemoryFromFileImage",    ealut_loadMemoryFromFileImage },
{ alutLoadMemoryHelloWorld_ENUM,       "alutLoadMemoryHelloWorld",       ealut_loadMemoryHelloWorld },
{ alutLoadMemoryWaveform_ENUM,         "alutLoadMemoryWaveform",         ealut_loadMemoryWaveform },
{ alutGetMIMETypes_ENUM,               "alutGetMIMETypes",               ealut_getMIMETypes },
{ alutGetMajorVersion_ENUM,            "alutGetMajorVersion",            ealut_getMajorVersion },
{ alutGetMinorVersion_ENUM,            "alutGetMinorVersion",            ealut_getMinorVersion },
{ alutSleep_ENUM,                      "alutSleep",                      ealut_sleep },

#endif // COMPILE_ALUT
