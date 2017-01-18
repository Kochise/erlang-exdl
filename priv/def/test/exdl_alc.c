/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_alc.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_ALC

/* Context Management */

EXDL_API(ealc_createContext)
{
  /* ALCcontext* alcCreateContext(ALCdevice* device, const ALCint* attrlist) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*,    device)
    STACK_FMT_DATA(ALCint,        attrlist[])
  STACK_FMT_END()

  CATCH_RESULT(ALCcontext*)

    alcCreateContext
    ( STACK_GET_DATA(device)
    , STACK_GET_ADDR(attrlist)
    );

  THROW_POINTER()
}

EXDL_API(ealc_makeContextCurrent)
{
  /* ALCboolean alcMakeContextCurrent(ALCcontext* context) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCcontext, context[])
  STACK_FMT_END()

  CATCH_RESULT(ALCboolean)

    alcMakeContextCurrent
    ( STACK_GET_ADDR(context)
    );

  THROW_RESULT(ALCboolean)
}

EXDL_API(ealc_processContext)
{
  /* void alcProcessContext(ALCcontext* context) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCcontext, context[])
  STACK_FMT_END()

    alcProcessContext
    ( STACK_GET_ADDR(context)
    );
}

EXDL_API(ealc_suspendContext)
{
  /* void alcSuspendContext(ALCcontext* context) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCcontext, context[])
  STACK_FMT_END()

    alcSuspendContext
    ( STACK_GET_ADDR(context)
    );
}

EXDL_API(ealc_destroyContext)
{
  /* void alcDestroyContext(ALCcontext* context) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCcontext, context[])
  STACK_FMT_END()

    alcDestroyContext
    ( STACK_GET_ADDR(context)
    );
}

EXDL_API(ealc_getCurrentContext)
{
  /* ALCcontext* alcGetCurrentContext(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(ALCcontext*)

    alcGetCurrentContext
    (
    );

  THROW_POINTER()
}

EXDL_API(ealc_getContextsDevice)
{
  /* ALCdevice* alcGetContextsDevice(ALCcontext* context) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCcontext*, context)
  STACK_FMT_END()

  CATCH_RESULT(ALCdevice*)

    alcGetContextsDevice
    ( STACK_GET_DATA(context)
    );

  THROW_POINTER()
}

/* Device Management */

EXDL_API(ealc_openDevice)
{
  /* ALCdevice* alcOpenDevice(const ALCchar* devicename) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCchar, devicename[])
  STACK_FMT_END()

  CATCH_RESULT(ALCdevice*)

    alcOpenDevice
    ( STACK_GET_ADDR(devicename)
    );

  THROW_POINTER()
}

EXDL_API(ealc_closeDevice)
{
  /* ALCboolean alcCloseDevice(ALCdevice* device) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCdevice, device[])
  STACK_FMT_END()

  CATCH_RESULT(ALCboolean)

    alcCloseDevice
    ( STACK_GET_ADDR(device)
    );

  THROW_RESULT(ALCboolean)
}

/* Error support */

EXDL_API(ealc_getError)
{
  /* ALCenum alcGetError(ALCdevice* device) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*, device)
  STACK_FMT_END()

  CATCH_RESULT(ALCenum)

    alcGetError
    ( STACK_GET_DATA(device)
    );

  THROW_RESULT(ALCenum)
}

/* Extension support */

EXDL_API(ealc_isExtensionPresent)
{
  /* ALCboolean alcIsExtensionPresent(ALCdevice* device, const ALCchar* extname) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*,     device)
    STACK_FMT_DATA(ALCchar,        extname[])
  STACK_FMT_END()

  CATCH_RESULT(ALCboolean)

    alcIsExtensionPresent
    ( STACK_GET_DATA(device)
    , STACK_GET_ADDR(extname)
    );

  THROW_RESULT(ALCboolean)
}

EXDL_API(ealc_getProcAddress)
{
  /* void* alcGetProcAddress(ALCdevice* device, const ALCchar* funcname) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*,     device)
    STACK_FMT_LPTR(ALCchar*,       funcname)
  STACK_FMT_END()

  CATCH_RESULT(void*)

    alcGetProcAddress
    ( STACK_GET_DATA(device)
    , STACK_GET_DATA(funcname)
    );

  THROW_POINTER()
}

EXDL_API(ealc_getEnumValue)
{
  /* ALCenum alcGetEnumValue(ALCdevice* device, const ALCchar* enumname) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*,     device)
    STACK_FMT_LPTR(ALCchar*,       enumname)
  STACK_FMT_END()

  CATCH_RESULT(ALCenum)

    alcGetEnumValue
    ( STACK_GET_DATA(device)
    , STACK_GET_DATA(enumname)
    );

  THROW_RESULT(ALCenum)
}

/* Query functions */

EXDL_API(ealc_getString)
{
  /* const ALCchar* alcGetString(ALCdevice* device, ALCenum param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*, device)
    STACK_FMT_DATA(ALCenum,    param)
  STACK_FMT_END()

  CATCH_RESULT(const ALCchar*)

    alcGetString
    ( STACK_GET_DATA(device)
    , STACK_GET_DATA(param)
    );

  THROW_STRING()
}

EXDL_API(ealc_getIntegerv)
{
  /* void alcGetIntegerv(ALCdevice* device, ALCenum param, ALCsizei size, ALCint* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*, device)
    STACK_FMT_DATA(ALCenum,    param)
    STACK_FMT_DATA(ALCsizei,   size)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALCint,    data[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(size) * sizeof(ALCint))

    alcGetIntegerv
    ( STACK_GET_DATA(device)
    , STACK_GET_DATA(param)
    , STACK_GET_DATA(size)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

/* Capture functions */

EXDL_API(ealc_captureOpenDevice)
{
  /* ALCdevice* alcCaptureOpenDevice(const ALCchar* devicename, ALCuint frequency, ALCenum format, ALCsizei buffersize) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCchar*, devicename)
    STACK_FMT_DATA(ALCuint,  frequency)
    STACK_FMT_DATA(ALCenum,  format)
    STACK_FMT_DATA(ALCsizei, buffersize)
  STACK_FMT_END()

  CATCH_RESULT(ALCdevice*)

    alcCaptureOpenDevice
    ( STACK_GET_DATA(devicename)
    , STACK_GET_DATA(frequency)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(buffersize)
    );

  THROW_POINTER()
}

EXDL_API(ealc_captureCloseDevice)
{
  /* ALCboolean alcCaptureCloseDevice(ALCdevice* device) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCdevice, device[])
  STACK_FMT_END()

  CATCH_RESULT(ALCboolean)

    alcCaptureCloseDevice
    ( STACK_GET_ADDR(device)
    );

  THROW_RESULT(ALCboolean)
}

EXDL_API(ealc_captureStart)
{
  /* void alcCaptureStart(ALCdevice* device) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCdevice, device[])
  STACK_FMT_END()

    alcCaptureStart
    ( STACK_GET_ADDR(device)
    );
}

EXDL_API(ealc_captureStop)
{
  /* void alcCaptureStop(ALCdevice* device) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCdevice, device[])
  STACK_FMT_END()

    alcCaptureStop
    ( STACK_GET_ADDR(device)
    );
}

EXDL_API(ealc_captureSamples)
{
  /* void alcCaptureSamples(ALCdevice* device, ALCvoid* buffer, ALCsizei samples) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*, device)
    STACK_FMT_LPTR(ALCvoid*,   buffer)
    STACK_FMT_DATA(ALCsizei,   samples)
  STACK_FMT_END()

    alcCaptureSamples
    ( STACK_GET_DATA(device)
    , STACK_GET_DATA(buffer)
    , STACK_GET_DATA(samples)
    );
}

#endif // COMPILE_ALC
