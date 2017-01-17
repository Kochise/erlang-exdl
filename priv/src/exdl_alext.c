/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_alext.c,v 1.1 2008/11/06 07:49:22 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_ALEXT

/* loki */

EXDL_API(ealc_getAudioChannel_LOKI)
{
  /* ALfloat alcGetAudioChannel_LOKI(ALuint channel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, channel)
  STACK_FMT_END()

  CATCH_RESULT(ALfloat)

    exdl_alcGetAudioChannel_LOKI
    ( STACK_GET_DATA(channel)
    );

  THROW_RESULT(ALfloat)
}

EXDL_API(ealc_setAudioChannel_LOKI)
{
  /* void alcSetAudioChannel_LOKI(ALuint channel, ALfloat volume) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  channel)
    STACK_FMT_DATA(ALfloat, volume)
  STACK_FMT_END()

    exdl_alcSetAudioChannel_LOKI
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(volume)
    );
}

/*
EXDL_API(eal_bombOnError_LOKI )
{
  // void alBombOnError_LOKI(void);

  alBombOnError_LOKI();
}
*/

EXDL_API(eal_bufferi_LOKI)
{
  /* void alBufferi_LOKI(ALuint bid, ALenum param, ALint value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALenum, param)
    STACK_FMT_DATA(ALint,  value)
  STACK_FMT_END()

    exdl_alBufferi_LOKI
    ( STACK_GET_DATA(bid)
    , STACK_GET_DATA(param)
    , STACK_GET_DATA(value)
    );
}

int /* CALLBACK */
eal_buffer_data_callback
( ALuint   tempsource
, ALuint   tempbuffer
, ALshort* data
, ALenum   tempformat
, ALint    a
, ALint    samples
)
{
  /* Feel free to add your own code here */
  return 0;
}

EXDL_API(eal_bufferDataWithCallback_LOKI)
{
  /* void alBufferDataWithCallback_LOKI(ALuint bid, int (*Callback) (ALuint, ALuint, ALshort*, ALenum, ALint, ALint)) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
//    STACK_FMT_DATA(int (CALLBACK* cbfn), ())
  STACK_FMT_END()

    exdl_alBufferDataWithCallback_LOKI
    ( STACK_GET_DATA(bid)
//    , STACK_GET_DATA((CALLBACK* cbfn) ())
    , eal_buffer_data_callback
    );
}

EXDL_API(eal_bufferWriteData_LOKI)
{
  /* void alBufferWriteData_LOKI(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq, ALenum internalFormat) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  buffer)
    STACK_FMT_DATA(ALenum,  format)
    STACK_FMT_DATA(ALsizei, size)
    STACK_FMT_DATA(ALsizei, freq)
    STACK_FMT_DATA(ALenum,  internalFormat)
    STACK_FMT_DATA(ALvoid,  data[])
  STACK_FMT_END()

    exdl_alBufferWriteData_LOKI
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(format)
    , STACK_GET_ADDR(data)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(freq)
    , STACK_GET_DATA(internalFormat)
    );
}

EXDL_API(eal_genStreamingBuffers_LOKI)
{
  /* void alGenStreamingBuffers_LOKI(ALsizei n, ALuint* samples) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(ALuint, samples[])
  FRAME_FMT_SIZE(STACK_GET_DATA(n))

    exdl_alGenStreamingBuffers_LOKI
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(samples)
    );

  THROW_FRAME()
}

EXDL_API(eal_bufferAppendData_LOKI)
{
  /* ALsizei alBufferAppendData_LOKI(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  buffer)
    STACK_FMT_DATA(ALenum,  format)
    STACK_FMT_DATA(ALsizei, size)
    STACK_FMT_DATA(ALsizei, freq)
    STACK_FMT_DATA(ALvoid,  data[])
  STACK_FMT_END()

  CATCH_RESULT(ALsizei)

    exdl_alBufferAppendData_LOKI
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(format)
    , STACK_GET_ADDR(data)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(freq)
    );

  THROW_RESULT(ALsizei)
}

EXDL_API(eal_bufferAppendWriteData_LOKI)
{
  /* ALsizei alBufferAppendWriteData_LOKI(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq, ALenum internalFormat) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  buffer)
    STACK_FMT_DATA(ALenum,  format)
    STACK_FMT_DATA(ALsizei, size)
    STACK_FMT_DATA(ALsizei, freq)
    STACK_FMT_DATA(ALenum,  internalFormat)
    STACK_FMT_DATA(ALvoid,  data[])
  STACK_FMT_END()

  CATCH_RESULT(ALsizei)

    exdl_alBufferAppendWriteData_LOKI
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(format)
    , STACK_GET_ADDR(data)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(freq)
    , STACK_GET_DATA(internalFormat)
    );

  THROW_RESULT(ALsizei)
}

/* binary compatibility */

/*
EXDL_API(eal_bufferAppendData )
{
  // ALsizei alBufferAppendData(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq);

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint,  buffer)
    STACK_FMT_DATA(ALenum,  format)
    STACK_FMT_DATA(ALsizei, size)
    STACK_FMT_DATA(ALsizei, freq)
    STACK_FMT_DATA(ALvoid,  data[])
  STACK_FMT_END()

  CATCH_RESULT(ALsizei)

    exdl_alBufferAppendData
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(format)
    , (sd->next_bin == 0)
    ? STACK_GET_ADDR(data)
    : (ALvoid*) sd->bin[0].base
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(freq)
    );

  THROW_RESULT(ALsizei)
}
*/

/* Capture api */

EXDL_API(eal_captureInit_EXT)
{
  /* ALboolean alCaptureInit_EXT(ALenum format, ALuint rate, ALsizei bufferSize) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALenum,  format)
    STACK_FMT_DATA(ALuint,  rate)
    STACK_FMT_DATA(ALsizei, bufferSize)
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    exdl_alCaptureInit_EXT
    ( STACK_GET_DATA(format)
    , STACK_GET_DATA(rate)
    , STACK_GET_DATA(bufferSize)
    );

  THROW_RESULT(ALboolean)
}

EXDL_API(eal_captureDestroy_EXT)
{
  /* ALboolean alCaptureDestroy_EXT(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(ALboolean)

    exdl_alCaptureDestroy_EXT
    (
    );

  THROW_RESULT(ALboolean)
}

EXDL_API(eal_captureStart_EXT)
{
  /* ALboolean alCaptureStart_EXT(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(ALboolean)

    exdl_alCaptureStart_EXT
    (
    );

  THROW_RESULT(ALboolean)
}

EXDL_API(eal_captureStop_EXT)
{
  /* ALboolean alCaptureStop_EXT(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(ALboolean)

    exdl_alCaptureStop_EXT
    (
    );

  THROW_RESULT(ALboolean)
}

/* Non-blocking device read */

EXDL_API(eal_captureGetData_EXT)
{
  /* ALsizei alCaptureGetData_EXT(ALvoid* data, ALsizei n, ALenum format, ALuint rate) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALsizei, n)
    STACK_FMT_DATA(ALenum,  format)
    STACK_FMT_DATA(ALuint,  rate)
    STACK_FMT_DATA(ALvoid,  data[])
  STACK_FMT_END()

  CATCH_RESULT(ALsizei)

    exdl_alCaptureGetData_EXT
    ( STACK_GET_ADDR(data)
    , STACK_GET_DATA(n)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(rate)
    );

  THROW_RESULT(ALsizei)
}

/* custom loaders */

EXDL_API(ealut_loadVorbis_LOKI)
{
  /* ALboolean alutLoadVorbis_LOKI(ALuint bid, const ALvoid* data, ALint size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALint,  size)
    STACK_FMT_DATA(ALvoid, data[])
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    exdl_alutLoadVorbis_LOKI
    ( STACK_GET_DATA(bid)
    , STACK_GET_ADDR(data)
    , STACK_GET_DATA(size)
    );

  THROW_RESULT(ALboolean)
}

EXDL_API(ealut_loadMP3_LOKI)
{
  /* ALboolean alutLoadMP3_LOKI(ALuint bid, ALvoid* data, ALint size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(ALuint, bid)
    STACK_FMT_DATA(ALint,  size)
    STACK_FMT_DATA(ALvoid, data[])
  STACK_FMT_END()

  CATCH_RESULT(ALboolean)

    exdl_alutLoadMP3_LOKI
    ( STACK_GET_DATA(bid)
    , STACK_GET_ADDR(data)
    , STACK_GET_DATA(size)
    );

  THROW_RESULT(ALboolean)
}

#endif // COMPILE_ALEXT
