/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_audio.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

EXDL_API(eaudio_audioInit)
{
  /* int SDL_AudioInit(const char* driver_name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char, driver_name[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_AudioInit
    ( STACK_GET_ADDR(driver_name)
    );

  THROW_RESULT(int)
}

EXDL_API(eaudio_audioQuit)
{
  /* void SDL_AudioQuit(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_AudioQuit
  (
  );
}

EXDL_API(eaudio_audioDriverName)
{
  /* char* SDL_AudioDriverName(char* namebuf, int maxlen) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(char*, namebuf)
    STACK_FMT_DATA(int,   maxlen)
  STACK_FMT_END()

  CATCH_RESULT(char*)

    SDL_AudioDriverName
    ( STACK_GET_DATA(namebuf)
    , STACK_GET_DATA(maxlen)
    );

  THROW_STRING()
}

EXDL_API(eaudio_openAudio)
{
  /* int SDL_OpenAudio(SDL_AudioSpec* desired, SDL_AudioSpec* obtained) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_AudioSpec*, desired)
    STACK_FMT_DATA(SDL_AudioSpec,  obtained[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_OpenAudio
    ( STACK_GET_DATA(desired)
    , STACK_GET_ADDR(obtained)
    );

  THROW_RESULT(int)
}

EXDL_API(eaudio_getAudioStatus)
{
  /* SDL_audiostatus SDL_GetAudioStatus(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(SDL_audiostatus)

    SDL_GetAudioStatus
    (
    );

  THROW_RESULT(SDL_audiostatus)
}

EXDL_API(eaudio_pauseAudio)
{
  /* void SDL_PauseAudio(int pause_on) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, pause_on)
  STACK_FMT_END()

    SDL_PauseAudio
    ( STACK_GET_DATA(pause_on)
    );
}

EXDL_API(eaudio_loadWAV_RW)
{
  /* SDL_AudioSpec* SDL_LoadWAV_RW(SDL_RWops* src, int freesrc, SDL_AudioSpec* spec, Uint8** audio_buf, Uint32* audio_len) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_RWops*,     src)
    STACK_FMT_DATA(int,            freesrc)
    STACK_FMT_LPTR(SDL_AudioSpec*, spec)
    STACK_FMT_LPTR(Uint8**,        audio_buf)
    STACK_FMT_DATA(Uint32,         audio_len[])
  STACK_FMT_END()

  CATCH_RESULT(SDL_AudioSpec*)

    SDL_LoadWAV_RW
    ( STACK_GET_DATA(src)
    , STACK_GET_DATA(freesrc)
    , STACK_GET_DATA(spec)
    , STACK_GET_DATA(audio_buf)
    , STACK_GET_ADDR(audio_len)
    );

  THROW_POINTER()
}

EXDL_API(eaudio_freeWAV)
{
  /* void SDL_FreeWAV(Uint8* audio_buf) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint8, audio_buf[])
  STACK_FMT_END()

    SDL_FreeWAV
    ( STACK_GET_ADDR(audio_buf)
    );
}

EXDL_API(eaudio_buildAudioCVT)
{
  /* int SDL_BuildAudioCVT(SDL_AudioCVT* cvt, Uint16 src_format, Uint8 src_channels, int src_rate, Uint16 dst_format, Uint8 dst_channels, int dst_rate) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_AudioCVT*, cvt)
    STACK_FMT_DATA(Uint16,        src_format)
    STACK_FMT_DATA(Uint8,         src_channels)
    STACK_FMT_DATA(int,           src_rate)
    STACK_FMT_DATA(Uint16,        dst_format)
    STACK_FMT_DATA(Uint8,         dst_channels)
    STACK_FMT_DATA(int,           dst_rate)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_BuildAudioCVT
    ( STACK_GET_DATA(cvt)
    , STACK_GET_DATA(src_format)
    , STACK_GET_DATA(src_channels)
    , STACK_GET_DATA(src_rate)
    , STACK_GET_DATA(dst_format)
    , STACK_GET_DATA(dst_channels)
    , STACK_GET_DATA(dst_rate)
    );

  THROW_RESULT(int)
}

EXDL_API(eaudio_convertAudio)
{
  /* int SDL_ConvertAudio(SDL_AudioCVT* cvt) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_AudioCVT, cvt[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_ConvertAudio
    ( STACK_GET_ADDR(cvt)
    );

  THROW_RESULT(int)
}

EXDL_API(eaudio_mixAudio)
{
  /* void SDL_MixAudio(Uint8* dst, const Uint8* src, Uint32 len, int volume) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Uint8*, dst)
    STACK_FMT_LPTR(Uint8*, src)
    STACK_FMT_DATA(Uint32, len)
    STACK_FMT_DATA(int,    volume)
  STACK_FMT_END()

    SDL_MixAudio
    ( STACK_GET_DATA(dst)
    , STACK_GET_DATA(src)
    , STACK_GET_DATA(len)
    , STACK_GET_DATA(volume)
    );
}

EXDL_API(eaudio_lockAudio)
{
  /* void SDL_LockAudio(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_LockAudio
  (
  );
}

EXDL_API(eaudio_unlockAudio)
{
  /* void SDL_UnlockAudio(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_UnlockAudio
  (
  );
}

EXDL_API(eaudio_closeAudio)
{
  /* void SDL_CloseAudio(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_CloseAudio
  (
  );
}

