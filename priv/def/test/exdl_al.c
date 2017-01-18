/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_al.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_AL

/* Renderer State management */

EXDL_API(eal_enable)
{
  /* void alEnable(ALenum capability) */

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum,   param)
    STACK_FMT_DATA(ALfloat,  values[])
  STACK_FMT_END()

    alListenerfv
    ( STACK_GET_DATA(param)
    , STACK_GET_ADDR(values)
    );
}

EXDL_API(eal_listeneri)
{
  /* void alListeneri(ALenum param, ALint value) */

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint,  values[])
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALuint, sources)
  FRAME_FMT_END()

    alGenSources
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(sources)
    );

  THROW_FRAME()
}

EXDL_API(eal_deleteSources)
{
  /* void alDeleteSources(ALsizei n, const ALuint* sources) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, n)
    STACK_FMT_DATA(ALuint,  sources[])
  STACK_FMT_END()

    alDeleteSources
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(sources)
    );
}

EXDL_API(eal_isSource)
{
  /* ALboolean alIsSource(ALuint sid) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,   sid)
    STACK_FMT_DATA(ALenum,   param)
    STACK_FMT_DATA(ALfloat,  values[])
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, sid)
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint,  values[])
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,   sid)
    STACK_FMT_DATA(ALenum,   param)
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,   sid)
    STACK_FMT_DATA(ALenum,   param)
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,   sid)
    STACK_FMT_DATA(ALenum,   param)
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, ns)
    STACK_FMT_DATA(ALuint,  sids[])
  STACK_FMT_END()

    alSourcePlayv
    ( STACK_GET_DATA(ns)
    , STACK_GET_ADDR(sids)
    );
}

EXDL_API(eal_sourceStopv)
{
  /* void alSourceStopv(ALsizei ns, const ALuint* sids) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, ns)
    STACK_FMT_DATA(ALuint,  sids[])
  STACK_FMT_END()

    alSourceStopv
    ( STACK_GET_DATA(ns)
    , STACK_GET_ADDR(sids)
    );
}

EXDL_API(eal_sourceRewindv)
{
  /* void alSourceRewindv(ALsizei ns, const ALuint* sids) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, ns)
    STACK_FMT_DATA(ALuint,  sids[])
  STACK_FMT_END()

    alSourceRewindv
    ( STACK_GET_DATA(ns)
    , STACK_GET_ADDR(sids)
    );
}

EXDL_API(eal_sourcePausev)
{
  /* void alSourcePausev(ALsizei ns, const ALuint* sids) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, ns)
    STACK_FMT_DATA(ALuint,  sids[])
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  sid)
    STACK_FMT_DATA(ALsizei, numEntries)
    STACK_FMT_DATA(ALuint,  bids[])
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  sid)
    STACK_FMT_DATA(ALsizei, numEntries)
    STACK_FMT_DATA(ALuint,  bids[])
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALuint, buffers)
  FRAME_FMT_END()

    alGenBuffers
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(buffers)
    );

  THROW_FRAME()
}

EXDL_API(eal_deleteBuffers)
{
  /* void alDeleteBuffers(ALsizei n, const ALuint* buffers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, n)
    STACK_FMT_DATA(ALuint,  buffers[])
  STACK_FMT_END()

    alDeleteBuffers
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(buffers)
    );
}

EXDL_API(eal_isBuffer)
{
  /* ALboolean alIsBuffer(ALuint bid) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  bid)
    STACK_FMT_DATA(ALenum,  format)
    STACK_FMT_LPTR(ALvoid*, data)
    STACK_FMT_DATA(ALsizei, size)
    STACK_FMT_DATA(ALsizei, freq)
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,   bid)
    STACK_FMT_DATA(ALenum,   param)
    STACK_FMT_DATA(ALfloat,  values[])
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint,  values[])
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,   bid)
    STACK_FMT_DATA(ALenum,   param)
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,   bid)
    STACK_FMT_DATA(ALenum,   param)
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,   bid)
    STACK_FMT_DATA(ALenum,   param)
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, distanceModel)
  STACK_FMT_END()

    alDistanceModel
    ( STACK_GET_DATA(distanceModel)
    );
}

#endif // COMPILE_AL
