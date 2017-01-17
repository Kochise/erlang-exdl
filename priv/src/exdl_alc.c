/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_alc.c,v 1.1 2008/11/06 07:49:22 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_AL

/* Context Management */

EXDL_API(ealc_createContext)
{
  /* ALCcontext* alcCreateContext(ALCdevice* device, const ALCint* attrlist) */

  /* exp : This function creates a context using a specified device. */
  /* inp : device   = a pointer to a device */
  /* inp : attrlist = a pointer to a set of attributes: */
  /*                  ALC_FREQUENCY - ALC_MONO_SOURCES - ALC_REFRESH */
  /*                  ALC_STEREO_SOURCES - ALC_SYNC */
  /* ret : a pointer to the new context (NULL on failure). */
  /*     > The attribute list can be NULL, or a zero terminated list of integer */
  /*       pairs composed of valid ALC attribute tokens and requested values. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*, device)
    STACK_FMT_DATA(ALCint,     attrlist[])
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

  /* exp : This function makes a specified context the current context. */
  /* inp : context = a pointer to the new context */
  /* ret : ALC_TRUE on success, or ALC_FALSE on failure. */

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

  /* exp : This function tells a context to begin processing. */
  /*     > When a context is suspended, changes in OpenAL state will be accepted */
  /*       but will not be processed. alcSuspendContext can be used to suspend a */
  /*       context, and then all the OpenAL state changes can be applied at once, */
  /*       followed by a call to alcProcessContext to apply all the state changes */
  /*       immediately. In some cases, this procedure may be more efficient than */
  /*       application of properties in a non-suspended state. In some */
  /*       implementations, process and suspend calls are each a NOP. */
  /* inp : context = a pointer to the new context */
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

  /* exp : This function suspends processing on a specified context. */
  /*     > When a context is suspended, changes in OpenAL state will be accepted */
  /*       but will not be processed. A typical use of alcSuspendContext would */
  /*       be to suspend a context, apply all the OpenAL state changes at once, */
  /*       and then call alcProcessContext to apply all the state changes at */
  /*       once. In some cases, this procedure may be more efficient than */
  /*       application of properties in a non-suspended state. In some */
  /*       implementations, process and suspend calls are each a NOP. */
  /* inp : context = a pointer to the context to be suspended */
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

  /* exp : This function destroys a context. */
  /*     > A context which is not current can be destroyed at any time (all */
  /*       sources within that context will also be deleted). */
  /*       alcMakeContextCurrent should be used to make sure the context to */
  /*       be destroyed is not current (NULL is valid for alcMakeContextCurrent). */
  /* inp : context = a pointer to the new context */
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

  /* exp : This function retrieves the current context. */
  /* inp :  */
  /* ret : a pointer to the current context. */

  CATCH_RESULT(ALCcontext*)

    alcGetCurrentContext
    (
    );

  THROW_POINTER()
}

EXDL_API(ealc_getContextsDevice)
{
  /* ALCdevice* alcGetContextsDevice(ALCcontext* context) */

  /* exp : This function retrieves a context's device pointer. */
  /* inp : context = a pointer to a context */
  /* ret : a pointer to the specified context's device. */

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

  /* exp : This function opens a device by name. */
  /* inp : devicename = a null-terminated string describing a device */
  /* ret : a pointer to the opened device. NULL if a device can not be opened. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCchar, devicename[])
  STACK_FMT_END()

  CATCH_RESULT(ALCdevice*)

    alcOpenDevice
    ( STACK_GET_ADDR(devicename)
    );

  THROW_POINTER()

  init_alexts(sd); /* In exdl_wrapper.c */
}

EXDL_API(ealc_closeDevice)
{
  /* ALCboolean alcCloseDevice(ALCdevice* device) */

  /* exp : This function closes a device by name. */
  /*     > Closing a device will fail if the device contains any contexts or buffers. */
  /* inp : device = a pointer to an opened device */
  /* ret : ALC_TRUE will be returned on success or ALC_FALSE on failure. */

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

  /* exp : This function retrieves the current context error state. */
  /* inp : device = a pointer to the device to retrieve the error state from */
  /* ret : the current context error state. */

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

  /* exp : This function queries if a specified context extension is available. */
  /* inp : device  = a pointer to the device to be queried for an extension */
  /* inp : extName = a null-terminated string describing the extension */
  /* ret : ALC_TRUE if the extension is available, ALC_FALSE if the extension is not available. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*, device)
    STACK_FMT_DATA(ALCchar,    extname[])
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

  /* exp : This function retrieves the address of a specified context extension function. */
  /* inp : device   = a pointer to the device to be queried for the function */
  /* inp : funcName = a null-terminated string describing the function */
  /* ret : the address of the function, or NULL if it is not found. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*, device)
    STACK_FMT_DATA(ALCchar,    funcname[])
  STACK_FMT_END()

  CATCH_RESULT(void*)

    alcGetProcAddress
    ( STACK_GET_DATA(device)
    , STACK_GET_ADDR(funcname)
    );

  THROW_POINTER()
}

EXDL_API(ealc_getEnumValue)
{
  /* ALCenum alcGetEnumValue(ALCdevice* device, const ALCchar* enumname) */

  /* exp : This function retrieves the enum value for a specified enumeration name. */
  /*     > This is most often used for querying an enum value for an ALC extension. */
  /* inp : device   = a pointer to the device to be queried */
  /* inp : enumName = a null terminated string describing the enum value */
  /* ret : the enum value described by the enumName string. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*, device)
    STACK_FMT_DATA(ALCchar,    enumname[])
  STACK_FMT_END()

  CATCH_RESULT(ALCenum)

    alcGetEnumValue
    ( STACK_GET_DATA(device)
    , STACK_GET_ADDR(enumname)
    );

  THROW_RESULT(ALCenum)
}

/* Query functions */

EXDL_API(ealc_getString)
{
  /* const ALCchar* alcGetString(ALCdevice* device, ALCenum param) */

  /* exp : This function returns pointers to strings related to the context. */
  /* inp : device = a pointer to the device to be queried */
  /* inp : param  = an attribute to be retrieved: */
  /*                ALC_DEFAULT_DEVICE_SPECIFIER - ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER */
  /*                ALC_DEVICE_SPECIFIER - ALC_CAPTURE_DEVICE_SPECIFIER - ALC_EXTENSIONS */
  /* ret : ALC_DEFAULT_DEVICE_SPECIFIER will return the name of the default output device. */
  /*       ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER will return the name of the default */
  /*       capture device. */
  /*       ALC_DEVICE_SPECIFIER will return the name of the specified output device */
  /*       if a pointer is supplied, or will return a list of all available devices */
  /*       if a NULL device pointer is supplied. A list is a pointer to a series of */
  /*       strings separated by NULL characters, with the list terminated by two */
  /*       NULL characters. See Enumeration Extension for more details. */
  /*       ALC_CAPTURE_DEVICE_SPECIFIER will return the name of the specified capture */
  /*       device if a pointer is supplied, or will return a list of all available */
  /*       devices if a NULL device pointer is supplied. */
  /*       ALC_EXTENSIONS returns a list of available context extensions, with each */
  /*       extension separated by a space and the list terminated by a NULL character. */

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

  /* exp : This function returns integers related to the context. */
  /*     > The versions returned refer to the specification version that the */
  /*       implementation meets. */
  /* inp : device = a pointer to the device to be queried */
  /* inp : param  = an attribute to be retrieved: */
  /*                ALC_MAJOR_VERSION - ALC_MINOR_VERSION - ALC_ATTRIBUTES_SIZE */
  /*                ALC_ALL_ATTRIBUTES */
  /* inp : size   = the size of the destination buffer provided */
  /* inp : data   = a pointer to the data to be returned */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*, device)
    STACK_FMT_DATA(ALCenum,    param)
    STACK_FMT_DATA(ALCsizei,   size)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALCint, data[1])
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

  /* exp : This function opens a capture device by name. */
  /* inp : devicename = a pointer to a device name string */
  /* inp : frequency  = the frequency that the data should be captured at */
  /* inp : format     = the requested capture buffer format */
  /* inp : buffersize = the size of the capture buffer */
  /* ret : the capture device pointer, or NULL on failure. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALCuint,  frequency)
    STACK_FMT_DATA(ALCenum,  format)
    STACK_FMT_DATA(ALCsizei, buffersize)
    STACK_FMT_DATA(ALCchar,  devicename[])
  STACK_FMT_END()

  CATCH_RESULT(ALCdevice*)

    alcCaptureOpenDevice
    ( STACK_GET_ADDR(devicename)
    , STACK_GET_DATA(frequency)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(buffersize)
    );

  THROW_POINTER()
}

EXDL_API(ealc_captureCloseDevice)
{
  /* ALCboolean alcCaptureCloseDevice(ALCdevice* device) */

  /* exp : This function closes the specified capture device. */
  /* inp : device = a pointer to a capture device */
  /* ret : ALC_TRUE if the close operation was successful, ALC_FALSE on failure. */

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

  /* exp : This function begins a capture operation. */
  /*     > alcCaptureStart will begin recording to an internal ring buffer of */
  /*       the size specified when opening the capture device. The application */
  /*       can then retrieve the number of samples currently available using */
  /*       the ALC_CAPTURE_SAPMPLES token with alcGetIntegerv. When the */
  /*       application determines that enough samples are available for */
  /*       processing, then it can obtain them with a call to alcCaptureSamples. */
  /* inp : device = a pointer to a capture device */
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

  /* exp : This function stops a capture operation. */
  /* inp : device = a pointer to a capture device */
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

  /* exp : This function completes a capture operation, and does not block. */
  /* inp : device  = a pointer to a capture device */
  /* inp : buffer  = a pointer to a data buffer, which must be large enough to */
  /*                 accommodate samples number of samples */
  /* inp : samples = the number of samples to be retrieved */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(ALCdevice*, device)
    STACK_FMT_DATA(ALCsizei,   samples)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(char, buffer[])
  FRAME_FMT_SIZE(STACK_GET_DATA(samples))

    alcCaptureSamples
    ( STACK_GET_DATA(device)
    , FRAME_GET_ADDR(buffer)
    , STACK_GET_DATA(samples)
    );

  THROW_FRAME()
}

#endif // COMPILE_AL
