/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_alut.c,v 1.1 2008/11/06 07:49:22 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_ALUT

EXDL_API(ealut_init)
{
  /* ALboolean alutInit(int* argcp, char** argv) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,   argcp)
    STACK_FMT_DATA(char*, argv[])
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    alutInit
    ( STACK_GET_ADDR(argcp)
    , STACK_GET_ADDR(argv)
    );

  THROW_RESULT(ALboolean)
}

EXDL_API(ealut_initWithoutContext)
{
  /* ALboolean alutInitWithoutContext(int* argcp, char** argv) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,   argcp)
    STACK_FMT_DATA(char*, argv[])
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    alutInitWithoutContext
    ( STACK_GET_ADDR(argcp)
    , STACK_GET_ADDR(argv)
    );

  THROW_RESULT(ALboolean)
}

EXDL_API(ealut_exit)
{
  /* ALboolean alutExit(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(ALboolean)

    alutExit
    (
    );

  THROW_RESULT(ALboolean)
}

EXDL_API(ealut_getError)
{
  /* ALenum alutGetError(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(ALenum)

    alutGetError
    (
    );

  THROW_RESULT(ALenum)
}

EXDL_API(ealut_getErrorString)
{
  /* const char* alutGetErrorString(ALenum error) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, error)
  STACK_FMT_END()

  CATCH_RESULT(const char*)

    alutGetErrorString
    ( STACK_GET_DATA(error)
    );

  THROW_STRING()
}

EXDL_API(ealut_createBufferFromFile)
{
  /* ALuint alutCreateBufferFromFile(const char* fileName) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char, fileName[])
  STACK_FMT_END()

  CATCH_RESULT(ALuint)

    alutCreateBufferFromFile
    ( STACK_GET_ADDR(fileName)
    );

  THROW_RESULT(ALuint)
}

EXDL_API(ealut_createBufferFromFileImage)
{
  /* ALuint alutCreateBufferFromFileImage(const ALvoid* data, ALsizei length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, length)
    STACK_FMT_DATA(ALvoid,  data[])
  STACK_FMT_END()

  CATCH_RESULT(ALuint)

    alutCreateBufferFromFileImage
    ( (sd->next_bin == 0)
    ? STACK_GET_ADDR(data)
    : (ALvoid*) sd->bin[0].base
    , STACK_GET_DATA(length)
    );

  THROW_RESULT(ALuint)
}

EXDL_API(ealut_createBufferHelloWorld)
{
  /* ALuint alutCreateBufferHelloWorld(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(ALuint)

    alutCreateBufferHelloWorld
    (
    );

  THROW_RESULT(ALuint)
}

EXDL_API(ealut_createBufferWaveform)
{
  /* ALuint alutCreateBufferWaveform(ALenum waveshape, ALfloat frequency, ALfloat phase, ALfloat duration) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum,  waveshape)
    STACK_FMT_DATA(ALfloat, frequency)
    STACK_FMT_DATA(ALfloat, phase)
    STACK_FMT_DATA(ALfloat, duration)
  STACK_FMT_END()

  CATCH_RESULT(ALuint)

    alutCreateBufferWaveform
    ( STACK_GET_DATA(waveshape)
    , STACK_GET_DATA(frequency)
    , STACK_GET_DATA(phase)
    , STACK_GET_DATA(duration)
    );

  THROW_RESULT(ALuint)
}

EXDL_API(ealut_loadMemoryFromFile)
{
  /* ALvoid* alutLoadMemoryFromFile(const char* fileName, ALenum* format, ALsizei* size, ALfloat* frequency) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum*,  format)
    STACK_FMT_DATA(ALsizei*, size)
    STACK_FMT_DATA(ALfloat*, frequency)
    STACK_FMT_DATA(char,     fileName[])
  STACK_FMT_END()

  CATCH_RESULT(ALvoid*)

    alutLoadMemoryFromFile
    ( STACK_GET_ADDR(fileName)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(frequency)
    );

  THROW_POINTER()
}

EXDL_API(ealut_loadMemoryFromFileImage)
{
  /* ALvoid* alutLoadMemoryFromFileImage(const ALvoid* data, ALsizei length, ALenum* format, ALsizei* size, ALfloat* frequency) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei,  length)
    STACK_FMT_DATA(ALenum*,  format)
    STACK_FMT_DATA(ALsizei*, size)
    STACK_FMT_DATA(ALfloat*, frequency)
    STACK_FMT_DATA(ALvoid,   data[])
  STACK_FMT_END()

  CATCH_RESULT(ALvoid*)

    alutLoadMemoryFromFileImage
    ( (sd->next_bin == 0)
    ? STACK_GET_ADDR(data)
    : (ALvoid*) sd->bin[0].base
    , STACK_GET_DATA(length)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(frequency)
    );

  THROW_POINTER()
}

EXDL_API(ealut_loadMemoryHelloWorld)
{
  /* ALvoid* alutLoadMemoryHelloWorld(ALenum* format, ALsizei* size, ALfloat* frequency) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum*,  format)
    STACK_FMT_DATA(ALsizei*, size)
    STACK_FMT_DATA(ALfloat*, frequency)
  STACK_FMT_END()

  CATCH_RESULT(ALvoid*)

    alutLoadMemoryHelloWorld
    ( STACK_GET_DATA(format)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(frequency)
    );

  THROW_POINTER()
}

EXDL_API(ealut_loadMemoryWaveform)
{
  /* ALvoid* alutLoadMemoryWaveform(ALenum waveshape, ALfloat frequency, ALfloat phase, ALfloat duration, ALenum* format, ALsizei* size, ALfloat* freq) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum,   waveshape)
    STACK_FMT_DATA(ALfloat,  frequency)
    STACK_FMT_DATA(ALfloat,  phase)
    STACK_FMT_DATA(ALfloat,  duration)
    STACK_FMT_DATA(ALenum*,  format)
    STACK_FMT_DATA(ALsizei*, size)
    STACK_FMT_DATA(ALfloat*, freq)
  STACK_FMT_END()

  CATCH_RESULT(ALvoid*)

    alutLoadMemoryWaveform
    ( STACK_GET_DATA(waveshape)
    , STACK_GET_DATA(frequency)
    , STACK_GET_DATA(phase)
    , STACK_GET_DATA(duration)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(freq)
    );

  THROW_POINTER()
}

EXDL_API(ealut_getMIMETypes)
{
  /* const char* alutGetMIMETypes(ALenum loader) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum, loader)
  STACK_FMT_END()

  CATCH_RESULT(const char*)

    alutGetMIMETypes
    ( STACK_GET_DATA(loader)
    );

  THROW_STRING()
}

EXDL_API(ealut_getMajorVersion)
{
  /* ALint alutGetMajorVersion(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(ALint)

    alutGetMajorVersion
    (
    );

  THROW_RESULT(ALint)
}

EXDL_API(ealut_getMinorVersion)
{
  /* ALint alutGetMinorVersion(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(ALint)

    alutGetMinorVersion
    (
    );

  THROW_RESULT(ALint)
}

EXDL_API(ealut_sleep)
{
  /* ALboolean alutSleep(ALfloat duration) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALfloat, duration)
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    alutSleep
    ( STACK_GET_DATA(duration)
    );

  THROW_RESULT(ALboolean)
}

#endif // COMPILE_ALUT
