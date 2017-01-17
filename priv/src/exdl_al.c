/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_al.c,v 1.1 2008/11/06 07:49:22 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_AL

/* Renderer State management */

EXDL_API(eal_enable)
{
  /* void alEnable(ALenum capability) */

  /* exp : This function enables a feature of the OpenAL driver. */
  /* inp : capability = the name of a capability to enable */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, capability)
  STACK_FMT_END()

    alEnable
    ( STACK_GET_DATA(capability)
    );
}

EXDL_API(eal_disable)
{
  /* void alDisable(ALenum capability) */

  /* exp : This function disables a feature of the OpenAL driver. */
  /* inp : capability = the name of a capability to disable */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, capability)
  STACK_FMT_END()

    alDisable
    ( STACK_GET_DATA(capability)
    );
}

EXDL_API(eal_isEnabled)
{
  /* ALboolean alIsEnabled(ALenum capability) */

  /* exp : This function returns a boolean indicating if a specific feature */
  /*       is enabled in the OpenAL driver. */
  /* inp : capability = the name of a capability to enable */
  /* ret : AL_TRUE if the capability is enabled, AL_FALSE if the capability is disabled. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, capability)
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    alIsEnabled
    ( STACK_GET_DATA(capability)
    );

  THROW_RESULT(ALboolean)
}

/* State retrieval */

EXDL_API(eal_getString)
{
  /* const ALchar* alGetString(ALenum param) */

  /* exp : This function retrieves an OpenAL string property. */
  /* inp : param = The property to be returned */
  /*               AL_VENDOR - AL_VERSION - AL_RENDERER - AL_EXTENSIONS */
  /* ret : Returns a pointer to a null-terminated string. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  CATCH_RESULT(const ALchar*)

    alGetString
    ( STACK_GET_DATA(param)
    );

  THROW_STRING()
}

EXDL_API(eal_getBooleanv)
{
  /* void alGetBooleanv(ALenum param, ALboolean* data) */

  /* exp : This function retrieves a boolean OpenAL state. */
  /* inp : param = the state to be returned: */
  /*               AL_DOPPLER_FACTOR - AL_SPEED_OF_SOUND - AL_DISTANCE_MODEL */
  /* inp : data  = a pointer to the location where the state will be stored */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALboolean, data[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(param) * sizeof(ALboolean))

    alGetBooleanv
    ( STACK_GET_DATA(param)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

EXDL_API(eal_getIntegerv)
{
  /* void alGetIntegerv(ALenum param, ALint* data) */

  /* exp : This function retrieves an integer OpenAL state. */
  /* inp : param = the state to be returned: */
  /*               AL_DOPPLER_FACTOR - AL_SPEED_OF_SOUND - AL_DISTANCE_MODEL */
  /* inp : data  = a pointer to the location where the state will be stored */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, data[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(param) * sizeof(ALint))

    alGetIntegerv
    ( STACK_GET_DATA(param)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

EXDL_API(eal_getFloatv)
{
  /* void alGetFloatv(ALenum param, ALfloat* data) */

  /* exp : This function retrieves a floating point OpenAL state. */
  /* inp : param = the state to be returned: */
  /*               AL_DOPPLER_FACTOR - AL_SPEED_OF_SOUND - AL_DISTANCE_MODEL */
  /* inp : data  = a pointer to the location where the state will be stored */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALfloat, data[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(param) * sizeof(ALfloat))

    alGetFloatv
    ( STACK_GET_DATA(param)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

EXDL_API(eal_getDoublev)
{
  /* void alGetDoublev(ALenum param, ALdouble* data) */

  /* exp : This function retrieves a double precision floating point OpenAL state. */
  /* inp : param = the state to be returned: */
  /*               AL_DOPPLER_FACTOR - AL_SPEED_OF_SOUND - AL_DISTANCE_MODEL */
  /* inp : data  = a pointer to the location where the state will be stored */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALdouble, data[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(param) * sizeof(ALdouble))

    alGetDoublev
    ( STACK_GET_DATA(param)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

EXDL_API(eal_getBoolean)
{
  /* ALboolean alGetBoolean(ALenum param) */

  /* exp : This function returns a boolean OpenAL state. */
  /* inp : param = the state to be queried: */
  /*               AL_DOPPLER_FACTOR - AL_SPEED_OF_SOUND - AL_DISTANCE_MODEL */
  /* ret : The boolean state described by param will be returned. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    alGetBoolean
    ( STACK_GET_DATA(param)
    );

  THROW_RESULT(ALboolean)
}

EXDL_API(eal_getInteger)
{
  /* ALint alGetInteger(ALenum param) */

  /* exp : This function returns an integer OpenAL state. */
  /* inp : param = the state to be queried: */
  /*               AL_DOPPLER_FACTOR - AL_SPEED_OF_SOUND - AL_DISTANCE_MODEL */
  /* ret : The integer state described by param will be returned. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  CATCH_RESULT(ALint)

    alGetInteger
    ( STACK_GET_DATA(param)
    );

  THROW_RESULT(ALint)
}

EXDL_API(eal_getFloat)
{
  /* ALfloat alGetFloat(ALenum param) */

  /* exp : This function returns a floating point OpenAL state. */
  /* inp : param = the state to be queried: */
  /*               AL_DOPPLER_FACTOR - AL_SPEED_OF_SOUND - AL_DISTANCE_MODEL */
  /* ret : The floating point state described by param will be returned. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  CATCH_RESULT(ALfloat)

    alGetFloat
    ( STACK_GET_DATA(param)
    );

  THROW_RESULT(ALfloat)
}

EXDL_API(eal_getDouble)
{
  /* ALdouble alGetDouble(ALenum param) */

  /* exp : This function returns a double precision floating point OpenAL state. */
  /* inp : param = the state to be queried: */
  /*               AL_DOPPLER_FACTOR - AL_SPEED_OF_SOUND - AL_DISTANCE_MODEL */
  /* ret : The double value described by param will be returned. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  CATCH_RESULT(ALdouble)

    alGetDouble
    ( STACK_GET_DATA(param)
    );

  THROW_RESULT(ALdouble)
}

/* Error support */

EXDL_API(eal_getError)
{
  /* ALenum alGetError(void) */

  /* exp : This function returns the current error state and then clears the error state. */
  /* inp :  */
  /* ret : an Alenum representing the error state. When an OpenAL error occurs, */
  /*       the error state is set and will not be changed until the error state */
  /*       is retrieved using alGetError. Whenever alGetError is called, the error */
  /*       state is cleared and the last state (the current state when the call */
  /*       was made) is returned. To isolate error detection to a specific portion */
  /*       of code, alGetError should be called before the isolated section to */
  /*       clear the current error state. */

  CATCH_RESULT(ALenum)

    alGetError
    (
    );

  THROW_RESULT(ALenum)
}

/* Extension support */

EXDL_API(eal_isExtensionPresent)
{
  /* ALboolean alIsExtensionPresent(const ALchar* extname) */

  /* exp : This function tests if a specific extension is available for the OpenAL driver. */
  /* inp : extname = a null-terminated string describing the desired extension */
  /* ret : AL_TRUE if the extension is available, AL_FALSE if the extension is not available. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALchar, extname[])
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    alIsExtensionPresent
    ( STACK_GET_ADDR(extname)
    );

  THROW_RESULT(ALboolean)
}

EXDL_API(eal_getProcAddress)
{
  /* void* alGetProcAddress(const ALchar* fname) */

  /* exp : This function returns the address of an OpenAL extension function. */
  /* inp : fname = a null-terminated string containing the function name */
  /* ret : a pointer to the specified function. NULL if the function is not found. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALchar, fname[])
  STACK_FMT_END()

  CATCH_RESULT(void*)

    alGetProcAddress
    ( STACK_GET_ADDR(fname)
    );

  THROW_POINTER()
}

EXDL_API(eal_getEnumValue)
{
  /* ALenum alGetEnumValue(const ALchar* ename) */

  /* exp : This function returns the enumeration value of an OpenAL enum described */
  /*       by a string. */
  /* inp : ename = a null-terminated string describing an OpenAL enum */
  /* ret : the actual ALenum described by a string. NULL if the string doesn’t */
  /*       describe a valid OpenAL enum. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALchar, ename[])
  STACK_FMT_END()

  CATCH_RESULT(ALenum)

    alGetEnumValue
    ( STACK_GET_ADDR(ename)
    );

  THROW_RESULT(ALenum)
}

/* Set Listener parameters */

EXDL_API(eal_listenerf)
{
  /* void alListenerf(ALenum param, ALfloat value) */

  /* exp : This function sets a floating point property for the listener. */
  /* inp : param = the name of the attribute to be set: */
  /*               AL_GAIN */
  /* inp : value = the ALfloat value to set the attribute to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum,  param)
    STACK_FMT_DATA(ALfloat, value)
  STACK_FMT_END()

    alListenerf
    ( STACK_GET_DATA(param)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eal_listener3f)
{
  /* void alListener3f(ALenum param, ALfloat value1, ALfloat value2, ALfloat value3) */

  /* exp : This function sets a floating point property for the listener. */
  /* inp : param    = the name of the attribute to set: */
  /*                  AL_POSITION - AL_VELOCITY */
  /* inp : v1,v2,v3 = the value to set the attribute to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum,  param)
    STACK_FMT_DATA(ALfloat, value1)
    STACK_FMT_DATA(ALfloat, value2)
    STACK_FMT_DATA(ALfloat, value3)
  STACK_FMT_END()

    alListener3f
    ( STACK_GET_DATA(param)
    , STACK_GET_DATA(value1)
    , STACK_GET_DATA(value2)
    , STACK_GET_DATA(value3)
    );
}

EXDL_API(eal_listenerfv)
{
  /* void alListenerfv(ALenum param, const ALfloat* values) */

  /* exp : This function sets a floating point-vector property of the listener. */
  /* inp : param  = the name of the attribute to be set: */
  /*                AL_POSITION - AL_VELOCITY - AL_ORIENTATION */
  /* inp : values = pointer to floating point-vector values */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum,  param)
    STACK_FMT_DATA(ALfloat, values[])
  STACK_FMT_END()

    alListenerfv
    ( STACK_GET_DATA(param)
    , STACK_GET_ADDR(values)
    );
}

EXDL_API(eal_listeneri)
{
  /* void alListeneri(ALenum param, ALint value) */

  /* exp : This function sets an integer property of the listener. */
  /* inp : param = the name of the attribute to be set */
  /* inp : value = the integer value to set the attribute to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint,  value)
  STACK_FMT_END()

    alListeneri
    ( STACK_GET_DATA(param)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eal_listener3i)
{
  /* void alListener3i(ALenum param, ALint value1, ALint value2, ALint value3) */

  /* exp : This function sets an integer property of the listener. */
  /* inp : param    = the name of the attribute to be set: */
  /*                  AL_POSITION - AL_VELOCITY */
  /* inp : v1,v2,v3 = the integer values to set the attribute to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint,  value1)
    STACK_FMT_DATA(ALint,  value2)
    STACK_FMT_DATA(ALint,  value3)
  STACK_FMT_END()

    alListener3i
    ( STACK_GET_DATA(param)
    , STACK_GET_DATA(value1)
    , STACK_GET_DATA(value2)
    , STACK_GET_DATA(value3)
    );
}

EXDL_API(eal_listeneriv)
{
  /* void alListeneriv(ALenum param, const ALint* values) */

  /* exp : This function sets an integer property of the listener. */
  /* inp : param  = the name of the attribute to be set */
  /*                AL_POSITION - AL_VELOCITY - AL_ORIENTATION */
  /* inp : values = pointer to the integer values to set the attribute to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint , values[])
  STACK_FMT_END()

    alListeneriv
    ( STACK_GET_DATA(param)
    , STACK_GET_ADDR(values)
    );
}

/* Get Listener parameters */

EXDL_API(eal_getListenerf)
{
  /* void alGetListenerf(ALenum param, ALfloat* value) */

  /* exp : This function retrieves a floating point property of the listener. */
  /* inp : param = the name of the attribute to be retrieved: */
  /*               AL_GAIN */
  /* inp : value = a pointer to the floating point value being retrieved */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALfloat, value)
  FRAME_FMT_END()

    alGetListenerf
    ( STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value)
    );

  THROW_FRAME()
}

EXDL_API(eal_getListener3f)
{
  /* void alGetListener3f(ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3) */

  /* exp : This function retrieves a set of three floating point values from */
  /*       a property of the listener. */
  /* inp : param    = the name of the attribute to be retrieved */
  /*                  AL_POSITION - AL_VELOCITY */
  /* inp : v1,v2,v3 = pointers to the three floating point being retrieved */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALfloat, value1)
    FRAME_FMT_DATA(ALfloat, value2)
    FRAME_FMT_DATA(ALfloat, value3)
  FRAME_FMT_END()

    alGetListener3f
    ( STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value1)
    , FRAME_GET_ADDR(value2)
    , FRAME_GET_ADDR(value3)
    );

  THROW_FRAME()
}

EXDL_API(eal_getListenerfv)
{
  /* void alGetListenerfv(ALenum param, ALfloat* values) */

  /* exp : This function retrieves a floating point-vector property of the listener. */
  /* inp : param  = the name of the attribute to be retrieved */
  /*                AL_POSITION - AL_VELOCITY - AL_ORIENTATION */
  /* inp : values = a pointer to the floating point-vector value being retrieved */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALfloat, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(param) * sizeof(ALfloat))

    alGetListenerfv
    ( STACK_GET_DATA(param)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()
}

EXDL_API(eal_getListeneri)
{
  /* void alGetListeneri(ALenum param, ALint* value) */

  /* exp : This function retrieves an integer property of the listener. */
  /* inp : param = the name of the attribute to be retrieved */
  /* inp : value = a pointer to the integer value being retrieved */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, value)
  FRAME_FMT_END()

    alGetListeneri
    ( STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value)
    );

  THROW_FRAME()
}

EXDL_API(eal_getListener3i)
{
  /* void alGetListener3i(ALenum param, ALint* value1, ALint* value2, ALint* value3) */

  /* exp : This function retrieves an integer property of the listener. */
  /* inp : param    = the name of the attribute to be retrieved */
  /*                  AL_POSITION - AL_VELOCITY */
  /* inp : v1,v2,v3 = pointers to the integer values being retrieved */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, value1)
    FRAME_FMT_DATA(ALint, value2)
    FRAME_FMT_DATA(ALint, value3)
  FRAME_FMT_END()

    alGetListener3i
    ( STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value1)
    , FRAME_GET_ADDR(value2)
    , FRAME_GET_ADDR(value3)
    );

  THROW_FRAME()
}

EXDL_API(eal_getListeneriv)
{
  /* void alGetListeneriv(ALenum param, ALint* values) */

  /* exp : This function retrieves an integer property of the listener. */
  /* inp : param  = the name of the attribute to be retrieved */
  /*                AL_POSITION - AL_VELOCITY - AL_ORIENTATION */
  /* inp : values = a pointer to the integer values being retrieved */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(param) * sizeof(ALint))

    alGetListeneriv
    ( STACK_GET_DATA(param)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()
}

/* Create Source objects */

EXDL_API(eal_genSources)
{
  /* void alGenSources(ALsizei n, ALuint* sources) */

  /* exp : This function generates one or more sources. References to sources */
  /*       are ALuint values, which are used wherever a source reference is */
  /*       needed (in calls such as alDeleteSources and alSourcei). */
  /* inp : n       = the number of sources to be generated */
  /* inp : sources = pointer to an array of ALuint values which will store */
  /*                 the names of the new sources */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, sources[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(n) * sizeof(ALint))

    alGenSources
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(sources)
    );

  THROW_FRAME()
}

EXDL_API(eal_deleteSources)
{
  /* void alDeleteSources(ALsizei n, const ALuint* sources) */

  /* exp : This function deletes one or more sources. */
  /* inp : n       = the number of sources to be deleted */
  /* inp : sources = pointer to an array of source names identifying the sources */
  /*                 to be deleted */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, n)
    STACK_FMT_DATA(ALuint , sources[])
  STACK_FMT_END()

    alDeleteSources
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(sources)
    );
}

EXDL_API(eal_isSource)
{
  /* ALboolean alIsSource(ALuint sid) */

  /* exp : This function tests if a source name is valid */
  /* inp : source = a source name to be tested for validity */
  /* ret : AL_TRUE if valid and AL_FALSE if not. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    alIsSource
    ( STACK_GET_DATA(sid)
    );

  THROW_RESULT(ALboolean)
}

/* Set Source parameters */

EXDL_API(eal_sourcef)
{
  /* void alSourcef(ALuint sid, ALenum param, ALfloat value) */

  /* exp : This function sets a floating point property of a source. */
  /* inp : source = source name whose attribute is being set */
  /* inp : param = the name of the attribute to set: */
  /*               AL_PITCH - AL_GAIN - AL_MIN_GAIN - AL_MAX_GAIN - AL_MAX_DISTANCE */
  /*               AL_ROLLOFF_FACTOR - AL_CONE_OUTER_GAIN - AL_CONE_INNER_ANGLE */
  /*               AL_CONE_OUTER_ANGLE - AL_REFERENCE_DISTANCE */
  /* inp : value = the value to set the attribute to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  sid)
    STACK_FMT_DATA(ALenum,  param)
    STACK_FMT_DATA(ALfloat, value)
  STACK_FMT_END()

    alSourcef
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eal_source3f)
{
  /* void alSource3f(ALuint sid, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3) */

  /* exp : This function sets a source property requiring three floating point values. */
  /* inp : source   = source name whose attribute is being set*/
  /* inp : param    = the name of the attribute to set: */
  /*                  AL_POSITION - AL_VELOCITY - AL_DIRECTION */
  /* inp : v1,v2,v3 = the three ALfloat values which the attribute will be set to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  sid)
    STACK_FMT_DATA(ALenum,  param)
    STACK_FMT_DATA(ALfloat, value1)
    STACK_FMT_DATA(ALfloat, value2)
    STACK_FMT_DATA(ALfloat, value3)
  STACK_FMT_END()

    alSource3f
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , STACK_GET_DATA(value1)
    , STACK_GET_DATA(value2)
    , STACK_GET_DATA(value3)
    );
}

EXDL_API(eal_sourcefv)
{
  /* void alSourcefv(ALuint sid, ALenum param, const ALfloat* values) */

  /* exp : This function sets a floating point-vector property of a source. */
  /* inp : source = source name whose attribute is being set */
  /* inp : param  = the name of the attribute being set: */
  /*                AL_POSITION - AL_VELOCITY - AL_DIRECTION */
  /* inp : values = a pointer to the vector to set the attribute to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  sid)
    STACK_FMT_DATA(ALenum,  param)
    STACK_FMT_DATA(ALfloat, values[])
  STACK_FMT_END()

    alSourcefv
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , STACK_GET_ADDR(values)
    );
}

EXDL_API(eal_sourcei)
{
  /* void alSourcei(ALuint sid, ALenum param, ALint value) */

  /* exp : This function sets an integer property of a source. */
  /* inp : source = source name whose attribute is being set */
  /* inp : param = the name of the attribute to set: */
  /*               AL_SOURCE_RELATIVE - AL_CONE_INNER_ANGLE - AL_CONE_OUTER_ANGLE */
  /*               AL_LOOPING - AL_BUFFER - AL_SOURCE_STATE */
  /* inp : value = the value to set the attribute to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint,  value)
  STACK_FMT_END()

    alSourcei
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eal_source3i)
{
  /* void alSource3i(ALuint sid, ALenum param, ALint value1, ALint value2, ALint value3) */

  /* exp : This function sets an integer property of a source. */
  /* inp : source   = source name whose attribute is being set */
  /* inp : param    = the name of the attribute to set: */
  /*                  AL_POSITION - AL_VELOCITY - AL_DIRECTION */
  /* inp : v1,v2,v3 = the values to set the attribute to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint,  value1)
    STACK_FMT_DATA(ALint,  value2)
    STACK_FMT_DATA(ALint,  value3)
  STACK_FMT_END()

    alSource3i
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , STACK_GET_DATA(value1)
    , STACK_GET_DATA(value2)
    , STACK_GET_DATA(value3)
    );
}

EXDL_API(eal_sourceiv)
{
  /* void alSourceiv(ALuint sid, ALenum param, const ALint* values) */

  /* exp : This function sets an integer property of a source. */
  /* inp : source = source name whose attribute is being set */
  /* inp : param  = the name of the attribute to set: */
  /*                AL_POSITION - AL_VELOCITY - AL_DIRECTION */
  /* inp : values = the values to set the attribute to */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint , values[])
  STACK_FMT_END()

    alSourceiv
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , STACK_GET_ADDR(values)
    );
}

/* Get Source parameters */

EXDL_API(eal_getSourcef)
{
  /* void alGetSourcef(ALuint sid, ALenum param, ALfloat* value) */

  /* exp : This function retrieves a floating point property of a source. */
  /* inp : source = source name whose attribute is being retrieved */
  /* inp : param  = the name of the attribute to retrieve: */
  /*                AL_PITCH - AL_GAIN - AL_MIN_GAIN - AL_MAX_GAIN - AL_MAX_DISTANCE */
  /*                AL_ROLLOFF_FACTOR - AL_CONE_OUTER_GAIN - AL_CONE_INNER_ANGLE */
  /*                AL_CONE_OUTER_ANGLE - AL_REFERENCE_DISTANCE */
  /* inp : value  = a pointer to the floating point value being retrieved */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALfloat, value)
  FRAME_FMT_END()

    alGetSourcef
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value)
    );

  THROW_FRAME()
}

EXDL_API(eal_getSource3f)
{
  /* void alGetSource3f(ALuint sid, ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3) */

  /* exp : This function retrieves three floating point values representing a */
  /*       property of a source. */
  /* inp : source   = source name whose attribute is being retrieved */
  /* inp : param    = the name of the attribute being retrieved: */
  /*                  AL_POSITION - AL_VELOCITY - AL_DIRECTION */
  /* inp : v1,v2,v3 = pointers to the values to retrieve */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALfloat, value1)
    FRAME_FMT_DATA(ALfloat, value2)
    FRAME_FMT_DATA(ALfloat, value3)
  FRAME_FMT_END()

    alGetSource3f
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value1)
    , FRAME_GET_ADDR(value2)
    , FRAME_GET_ADDR(value3)
    );

  THROW_FRAME()
}

EXDL_API(eal_getSourcefv)
{
  /* void alGetSourcefv(ALuint sid, ALenum param, ALfloat* values) */

  /* exp : This function retrieves a floating point-vector property of a source. */
  /* inp : source = source name whose attribute is being retrieved */
  /* inp : param  = the name of the attribute being retrieved: */
  /*                AL_POSITION - AL_VELOCITY - AL_DIRECTION */
  /* inp : values = a pointer to the vector to retrieve */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALfloat, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(param) * sizeof(ALfloat))

    alGetSourcefv
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()
}

EXDL_API(eal_getSourcei)
{
  /* void alGetSourcei(ALuint sid, ALenum param, ALint* value) */

  /* exp : This function retrieves an integer property of a source. */
  /* inp : source = source name whose attribute is being retrieved */
  /* inp : pname  = the name of the attribute to retrieve: */
  /*                AL_SOURCE_RELATIVE - AL_BUFFER - AL_SOURCE_STATE */
  /*                AL_BUFFERS_QUEUED - AL_BUFFERS_PROCESSED */
  /* inp : value  = a pointer to the integer value being retrieved */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, value)
  FRAME_FMT_END()

    alGetSourcei
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value)
    );

  THROW_FRAME()
}

EXDL_API(eal_getSource3i)
{
  /* void alGetSource3i(ALuint sid, ALenum param, ALint* value1, ALint* value2, ALint* value3) */

  /* exp : This function retrieves an integer property of a source. */
  /* inp : source   = source name whose attribute is being retrieved */
  /* inp : pname    = the name of the attribute to retrieve: */
  /*                  AL_POSITION - AL_VELOCITY - AL_DIRECTION */
  /* inp : v1,v2,v3 = pointers to the integer values being retrieved */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, value1)
    FRAME_FMT_DATA(ALint, value2)
    FRAME_FMT_DATA(ALint, value3)
  FRAME_FMT_END()

    alGetSource3i
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value1)
    , FRAME_GET_ADDR(value2)
    , FRAME_GET_ADDR(value3)
    );

  THROW_FRAME()
}

EXDL_API(eal_getSourceiv)
{
  /* void alGetSourceiv(ALuint sid, ALenum param, ALint* values) */

  /* exp : This function retrieves an integer property of a source. */
  /* inp : source = source name whose attribute is being retrieved */
  /* inp : param  = the name of the attribute to retrieve: */
  /*                AL_POSITION - AL_VELOCITY - AL_DIRECTION */
  /* inp : values = pointer to the integer values being retrieved */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(param) * sizeof(ALint))

    alGetSourceiv
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()
}

/* Source vector based playback calls */

EXDL_API(eal_sourcePlayv)
{
  /* void alSourcePlayv(ALsizei ns, const ALuint* sids) */

  /* exp : This function plays a set of sources. */
  /* inp : n       = the number of sources to be played */
  /* inp : sources = a pointer to an array of sources to be played */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, ns)
    STACK_FMT_DATA(ALuint , sids[])
  STACK_FMT_END()

    alSourcePlayv
    ( STACK_GET_DATA(ns)
    , STACK_GET_ADDR(sids)
    );
}

EXDL_API(eal_sourceStopv)
{
  /* void alSourceStopv(ALsizei ns, const ALuint* sids) */

  /* exp : This function stops a set of sources. */
  /* inp : n       = the number of sources to stop */
  /* inp : sources = a pointer to an array of sources to be stopped */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, ns)
    STACK_FMT_DATA(ALuint , sids[])
  STACK_FMT_END()

    alSourceStopv
    ( STACK_GET_DATA(ns)
    , STACK_GET_ADDR(sids)
    );
}

EXDL_API(eal_sourceRewindv)
{
  /* void alSourceRewindv(ALsizei ns, const ALuint* sids) */

  /* exp : This function stops a set of sources and sets all their states to AL_INITIAL. */
  /* inp : n       = the number of sources to be rewound */
  /* inp : sources = a pointer to an array of sources to be rewound */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, ns)
    STACK_FMT_DATA(ALuint , sids[])
  STACK_FMT_END()

    alSourceRewindv
    ( STACK_GET_DATA(ns)
    , STACK_GET_ADDR(sids)
    );
}

EXDL_API(eal_sourcePausev)
{
  /* void alSourcePausev(ALsizei ns, const ALuint* sids) */

  /* exp : This function pauses a set of sources. */
  /* inp : n       = the number of sources to be paused */
  /* inp : sources = a pointer to an array of sources to be paused */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, ns)
    STACK_FMT_DATA(ALuint , sids[])
  STACK_FMT_END()

    alSourcePausev
    ( STACK_GET_DATA(ns)
    , STACK_GET_ADDR(sids)
    );
}

/* Source based playback calls */

EXDL_API(eal_sourcePlay)
{
  /* void alSourcePlay(ALuint sid) */

  /* exp : This function plays a source. */
  /* inp : source = the name of the source to be played */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
  STACK_FMT_END()

    alSourcePlay
    ( STACK_GET_DATA(sid)
    );
}

EXDL_API(eal_sourceStop)
{
  /* void alSourceStop(ALuint sid) */

  /* exp : This function stops a source. */
  /* inp : source = the name of the source to be stopped */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
  STACK_FMT_END()

    alSourceStop
    ( STACK_GET_DATA(sid)
    );
}

EXDL_API(eal_sourceRewind)
{
  /* void alSourceRewind(ALuint sid) */

  /* exp : This function stops the source and sets its state to AL_INITIAL. */
  /* inp : source = the name of the source to be rewound */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
  STACK_FMT_END()

    alSourceRewind
    ( STACK_GET_DATA(sid)
    );
}

EXDL_API(eal_sourcePause)
{
  /* void alSourcePause(ALuint sid) */

  /* exp : This function pauses a source. */
  /* inp : source = the name of the source to be paused */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
  STACK_FMT_END()

    alSourcePause
    ( STACK_GET_DATA(sid)
    );
}

/* Source Queuing  */

EXDL_API(eal_sourceQueueBuffers)
{
  /* void alSourceQueueBuffers(ALuint sid, ALsizei numEntries, const ALuint* bids) */

  /* exp : This function queues a set of buffers on a source. All buffers attached */
  /*       to a source will be played in sequence, and the number of processed */
  /*       buffers can be detected using an alSourcei call to retrieve */
  /*       AL_BUFFERS_PROCESSED. */
  /* inp : source  = the name of the source to queue buffers onto */
  /* inp : n       = the number of buffers to be queued */
  /* inp : buffers = a pointer to an array of buffer names to be queued */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  sid)
    STACK_FMT_DATA(ALsizei, numEntries)
    STACK_FMT_DATA(ALuint , bids[])
  STACK_FMT_END()

    alSourceQueueBuffers
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(numEntries)
    , STACK_GET_ADDR(bids)
    );
}

EXDL_API(eal_sourceUnqueueBuffers)
{
  /* void alSourceUnqueueBuffers(ALuint sid, ALsizei numEntries, ALuint* bids) */

  /* exp : This function unqueues a set of buffers attached to a source. The */
  /*       number of processed buffers can be detected using an alSourcei call */
  /*       to retrieve AL_BUFFERS_PROCESSED, which is the maximum number of */
  /*       buffers that can be unqueued using this call. */
  /* inp : source  = the name of the source to unqueue buffers from */
  /* inp : n       = the number of buffers to be unqueued */
  /* inp : buffers = a pointer to an array of buffer names that were removed */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  sid)
    STACK_FMT_DATA(ALsizei, numEntries)
    STACK_FMT_DATA(ALuint , bids[])
  STACK_FMT_END()

    alSourceUnqueueBuffers
    ( STACK_GET_DATA(sid)
    , STACK_GET_DATA(numEntries)
    , STACK_GET_ADDR(bids)
    );
}

/* Create Buffer objects */

EXDL_API(eal_genBuffers)
{
  /* void alGenBuffers(ALsizei n, ALuint* buffers) */

  /* exp : This function generates one or more buffers, which contain audio data */
  /*       (see alBufferData). References to buffers are ALuint values, which are */
  /*       used wherever a buffer reference is needed (in calls such as */
  /*       alDeleteBuffers, alSourcei, alSourceQueueBuffers, and alSourceUnqueueBuffers). */
  /* inp : n       = the number of buffers to be generated */
  /* ret : buffers = pointer to an array of ALuint values which will store the */
  /*                 names of the new buffers */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, buffers[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(n) * sizeof(ALint))

    alGenBuffers
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(buffers)
    );

  THROW_FRAME()
}

EXDL_API(eal_deleteBuffers)
{
  /* void alDeleteBuffers(ALsizei n, const ALuint* buffers) */

  /* exp : This function deletes one or more buffers, freeing the resources used */
  /*       by the buffer. Buffers which are attached to a source can not be */
  /*       deleted. See alSourcei and alSourceUnqueueBuffers for information on */
  /*       how to detach a buffer from a source. */
  /* inp : n       = the number of buffers to be deleted */
  /* inp : buffers = pointer to an array of buffer names identifying the buffers */
  /*                 to be deleted */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, n)
    STACK_FMT_DATA(ALuint , buffers[])
  STACK_FMT_END()

    alDeleteBuffers
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(buffers)
    );
}

EXDL_API(eal_isBuffer)
{
  /* ALboolean alIsBuffer(ALuint bid) */

  /* exp : This function tests if a buffer name is valid */
  /* inp : buffer = a buffer name to be tested for validity */
  /* ret : AL_TRUE if valid, AL_FALSE if not. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    alIsBuffer
    ( STACK_GET_DATA(bid)
    );

  THROW_RESULT(ALboolean)
}

EXDL_API(eal_bufferData)
{
  /* void alBufferData(ALuint bid, ALenum format, const ALvoid* data, ALsizei size, ALsizei freq) */

  /* exp : This function fills a buffer with audio data. All the pre-defined */
  /*       formats are PCM data, but this function may be used by extensions */
  /*       to load other data types as well. */
  /* inp : buffer = buffer name to be filled with data */
  /* inp : format = format type from among the following: */
  /*                AL_FORMAT_MONO8 - AL_FORMAT_MONO16 */
  /*                AL_FORMAT_STEREO8 - AL_FORMAT_STEREO16 */
  /* inp : data   = pointer to the audio data */
  /* inp : size   = the size of the audio data in bytes */
  /* inp : freq   = the frequency of the audio data */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  bid)
    STACK_FMT_DATA(ALenum,  format)
    STACK_FMT_DATA(ALsizei, size)
    STACK_FMT_DATA(ALsizei, freq)
    STACK_FMT_DATA(ALvoid,  data[])
  STACK_FMT_END()

    alBufferData
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(data)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(freq)
    );
}

/* Set Buffer parameters */

EXDL_API(eal_bufferf)
{
  /* void alBufferf(ALuint bid, ALenum param, ALfloat value) */

  /* exp : This function sets a floating point property of a buffer. */
  /* inp : buffer = buffer name whose attribute is being retrieved */
  /* inp : param  = the name of the attribute to be set */
  /* inp : value  = the ALfloat value to be set */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  bid)
    STACK_FMT_DATA(ALenum,  param)
    STACK_FMT_DATA(ALfloat, value)
  STACK_FMT_END()

    alBufferf
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eal_buffer3f)
{
  /* void alBuffer3f(ALuint bid, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3) */

  /* exp : This function sets a floating point property of a buffer. */
  /* inp : buffer   = buffer name whose attribute is being retrieved */
  /* inp : param    = the name of the attribute to be set */
  /* inp : v1,v2,v3 = the ALfloat values to be set */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  bid)
    STACK_FMT_DATA(ALenum,  param)
    STACK_FMT_DATA(ALfloat, value1)
    STACK_FMT_DATA(ALfloat, value2)
    STACK_FMT_DATA(ALfloat, value3)
  STACK_FMT_END()

    alBuffer3f
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , STACK_GET_DATA(value1)
    , STACK_GET_DATA(value2)
    , STACK_GET_DATA(value3)
    );
}

EXDL_API(eal_bufferfv)
{
  /* void alBufferfv(ALuint bid, ALenum param, const ALfloat* values) */

  /* exp : This function sets a floating point property of a buffer. */
  /* inp : buffer = buffer name whose attribute is being retrieved */
  /* inp : param  = the name of the attribute to be set */
  /* inp : values = a pointer to the ALfloat values to be set */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  bid)
    STACK_FMT_DATA(ALenum,  param)
    STACK_FMT_DATA(ALfloat, values[])
  STACK_FMT_END()

    alBufferfv
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , STACK_GET_ADDR(values)
    );
}

EXDL_API(eal_bufferi)
{
  /* void alBufferi(ALuint bid, ALenum param, ALint value) */

  /* exp : This function retrieves an integer property of a buffer. */
  /* inp : buffer = buffer name whose attribute is being retrieved */
  /* inp : param  = the name of the attribute to be set */
  /* inp : value  = a pointer to an ALint to hold the retrieved data */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint,  value)
  STACK_FMT_END()

    alBufferi
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eal_buffer3i)
{
  /* void alBuffer3i(ALuint bid, ALenum param, ALint value1, ALint value2, ALint value3) */

  /* exp : This function sets a floating point property of a buffer. */
  /* inp : buffer   = buffer name whose attribute is being retrieved */
  /* inp : param    = the name of the attribute to be set */
  /* inp : v1,v2,v3 = the ALint values to be set */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint,  value1)
    STACK_FMT_DATA(ALint,  value2)
    STACK_FMT_DATA(ALint,  value3)
  STACK_FMT_END()

    alBuffer3i
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , STACK_GET_DATA(value1)
    , STACK_GET_DATA(value2)
    , STACK_GET_DATA(value3)
    );
}

EXDL_API(eal_bufferiv)
{
  /* void alBufferiv(ALuint bid, ALenum param, const ALint* values) */

  /* exp : This function sets a floating point property of a buffer. */
  /* inp : buffer = buffer name whose attribute is being retrieved */
  /* inp : param  = the name of the attribute to be set */
  /* inp : values = a pointer to the ALint values to be set */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint , values[])
  STACK_FMT_END()

    alBufferiv
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , STACK_GET_ADDR(values)
    );
}

/* Get Buffer parameters */

EXDL_API(eal_getBufferf)
{
  /* void alGetBufferf(ALuint bid, ALenum param, ALfloat* value) */

  /* exp : This function retrieves a floating point property of a buffer. */
  /* inp : buffer = buffer name whose attribute is being retrieved */
  /* inp : pname  = the name of the attribute to be retrieved */
  /* inp : value  = a pointer to an ALfloat to hold the retrieved data */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALfloat, value)
  FRAME_FMT_END()

    alGetBufferf
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value)
    );

  THROW_FRAME()
}

EXDL_API(eal_getBuffer3f)
{
  /* void alGetBuffer3f(ALuint bid, ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3) */

  /* exp : This function retrieves a floating point property of a buffer. */
  /* inp : buffer   = buffer name whose attribute is being retrieved */
  /* inp : pname    = the name of the attribute to be retrieved */
  /* inp : v1,v2,v3 = pointers to a ALfloat values to hold the retrieved data */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALfloat, value1)
    FRAME_FMT_DATA(ALfloat, value2)
    FRAME_FMT_DATA(ALfloat, value3)
  FRAME_FMT_END()

    alGetBuffer3f
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value1)
    , FRAME_GET_ADDR(value2)
    , FRAME_GET_ADDR(value3)
    );

  THROW_FRAME()
}

EXDL_API(eal_getBufferfv)
{
  /* void alGetBufferfv(ALuint bid, ALenum param, ALfloat* values) */

  /* exp : This function retrieves a floating point property of a buffer. */
  /* inp : buffer = buffer name whose attribute is being retrieved */
  /* inp : pname  = the name of the attribute to be retrieved */
  /* inp : values = pointer to an ALfloat vector to hold the retrieved data */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALfloat, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(param) * sizeof(ALfloat))

    alGetBufferfv
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()
}

EXDL_API(eal_getBufferi)
{
  /* void alGetBufferi(ALuint bid, ALenum param, ALint* value) */

  /* exp : This function retrieves an integer property of a buffer. */
  /* inp : buffer = buffer name whose attribute is being retrieved */
  /* inp : pname  = the name of the attribute to be retrieved: */
  /*                AL_FREQUENCY - AL_BITS - AL_CHANNELS - AL_SIZE - AL_DATA */
  /* inp : value  = a pointer to an ALint to hold the retrieved data */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, value)
  FRAME_FMT_END()

    alGetBufferi
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value)
    );

  THROW_FRAME()
}

EXDL_API(eal_getBuffer3i)
{
  /* void alGetBuffer3i(ALuint bid, ALenum param, ALint* value1, ALint* value2, ALint* value3) */

  /* exp : This function retrieves a floating point property of a buffer. */
  /* inp : buffer   = buffer name whose attribute is being retrieved */
  /* inp : pname    = the name of the attribute to be retrieved */
  /* inp : v1,v2,v3 = pointers to ALint values to hold the retrieved data */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, value1)
    FRAME_FMT_DATA(ALint, value2)
    FRAME_FMT_DATA(ALint, value3)
  FRAME_FMT_END()

    alGetBuffer3i
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(value1)
    , FRAME_GET_ADDR(value2)
    , FRAME_GET_ADDR(value3)
    );

  THROW_FRAME()
}

EXDL_API(eal_getBufferiv)
{
  /* void alGetBufferiv(ALuint bid, ALenum param, ALint* values) */

  /* exp : This function retrieves a floating point property of a buffer. */
  /* inp : buffer = buffer name whose attribute is being retrieved */
  /* inp : pname  = the name of the attribute to be retrieved: */
  /*                AL_FREQUENCY - AL_BITS - AL_CHANNELS - AL_SIZE - AL_DATA */
  /* inp : values = pointer to an ALint vector to hold the retrieved data */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALint, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(param) * sizeof(ALint))

    alGetBufferiv
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()
}

/* Global Parameters */

EXDL_API(eal_dopplerFactor)
{
  /* void alDopplerFactor(ALfloat value) */

  /* exp : This function selects the OpenAL Doppler factor value. */
  /* inp : value = the Doppler scale value to set */
  /*             > The default Doppler factor value is 1.0. */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALfloat, value)
  STACK_FMT_END()

    alDopplerFactor
    ( STACK_GET_DATA(value)
    );
}

EXDL_API(eal_dopplerVelocity)
{
  /* void alDopplerVelocity(ALfloat value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALfloat, value)
  STACK_FMT_END()

    alDopplerVelocity
    ( STACK_GET_DATA(value)
    );
}

EXDL_API(eal_speedOfSound)
{
  /* void alSpeedOfSound(ALfloat value) */

  /* exp : This function selects the speed of sound for use in Doppler calculations. */
  /* inp : value = the speed of sound value to set */
  /*             > The default speed of sound value is 343.3. */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALfloat, value)
  STACK_FMT_END()

    alSpeedOfSound
    ( STACK_GET_DATA(value)
    );
}

EXDL_API(eal_distanceModel)
{
  /* void alDistanceModel(ALenum distanceModel) */

  /* exp : This function selects the OpenAL distance model */
  /* inp : value = the distance model to be set: */
  /*               AL_INVERSE_DISTANCE - AL_INVERSE_DISTANCE_CLAMPED - AL_LINEAR_DISTANCE */
  /*               AL_LINEAR_DISTANCE_CLAMPED - AL_EXPONENT_DISTANCE */
  /*               AL_EXPONENT_DISTANCE_CLAMPED - AL_NONE */
  /*             > The default distance model in OpenAL is AL_INVERSE_DISTANCE_CLAMPED. */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, distanceModel)
  STACK_FMT_END()

    alDistanceModel
    ( STACK_GET_DATA(distanceModel)
    );
}

#endif // COMPILE_AL
