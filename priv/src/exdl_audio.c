/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_audio.c,v 1.2 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#include <string.h>
#include <stdlib.h>

struct
{ Uint8* sound    /* Pointer to wave data */
; Uint32 soundlen /* Length of wave data */
; int    repeat   /* Play sample 'repeat' times */
; int    soundpos /* Current play position */
; Uint8  silence
;} wave;

EXDL_API(play_audio)
{
  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint32, soundlen)
    STACK_FMT_DATA(int,    repeat)
    STACK_FMT_DATA(void*,  sbuff)
  STACK_FMT_END()

  SDL_LockAudio();   

    wave.sound    = (sd->next_bin == 0)
                  ? STACK_GET_DATA(sbuff)
                  : (void*) sd->bin[0].base
                  ;

    wave.soundlen = STACK_GET_DATA(soundlen);
    wave.repeat   = STACK_GET_DATA(repeat);
    wave.soundpos = 0;

  SDL_UnlockAudio();
}

void SDLCALL
myaudiomixer
( void*  mydata
, Uint8* stream
, int    len
)
{   
  Uint8* waveptr;
  int    waveleft;

  if
  (
       (NULL != wave.sound)
    && (0    != wave.repeat) 
  )
  { /* Set up the pointers */
   
    waveptr  = wave.sound    + wave.soundpos;
    waveleft = wave.soundlen - wave.soundpos;

/*
    fprintf
    ( stderr
    , "ED1 0x%X %d 0x%X %d repeat %d\n\r"
    , stream
    , len
    , waveptr
    , waveleft
    , wave.repeat
    );
*/
    
    /* Go! */

    while(waveleft < len)
    {
      memcpy
      ( stream
      , waveptr
      , waveleft
      );

/*
      SDL_MixAudio
      ( stream
      , waveptr
      , waveleft
      , SDL_MIX_MAXVOLUME
      );
*/
      
      stream  += waveleft;
      len     -= waveleft;

      waveptr  = wave.sound;
      waveleft = wave.soundlen;

      wave.soundpos = 0;
      
      if(0 == (wave.repeat -= 1))
      {
        memset
        ( stream
        , wave.silence
        , len
        );

        break;
      }
    }

    if(0 != wave.repeat)
    {
/*
      fprintf
      ( stderr
      , "ED2 0x%X %d 0x%X %d repeat %d\n\r"
      , stream
      , len
      , waveptr
      , waveleft
      , wave.repeat
      );
*/
      
      memcpy
      ( stream
      , waveptr
      , len
      );

/*
      SDL_MixAudio
      ( stream
      , waveptr
      , len
      , SDL_MIX_MAXVOLUME
      );
*/
      
      wave.soundpos += len;    
    }
  }
  else
  { 
    memset
    ( stream
    , wave.silence
    , len
    );
  }
}

/* API */

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

  char buffer[512];

  CATCH_RESULT(char*)

    SDL_AudioDriverName
    ( buffer
    , 512
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
    STACK_FMT_DATA(int,           ff)
    STACK_FMT_DATA(SDL_AudioSpec, desired)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(SDL_AudioSpec, obtained)
  FRAME_FMT_END()

  /* Tweaking a bit */
  STACK_GET_DATA(desired).callback = myaudiomixer;

  /* Init the global data structures */
  wave.sound    = NULL;
  wave.soundpos = 0;
  wave.soundlen = 0;

  if
  (
      0
    > SDL_OpenAudio
      ( STACK_GET_ADDR(desired)
      , (1 == STACK_GET_DATA(ff))
      ? NULL /* Force the requested format */
      : FRAME_GET_ADDR(obtained)
      )
  )
  {
    fprintf
    ( stderr
    , "Couldn't open audio: %s\n"
    , SDL_GetError()
    );
  }
  else
  {
    if(1 == STACK_GET_DATA(ff))
    { 
      wave.silence = STACK_GET_DATA(desired).silence;
    }
    else
    {
      wave.silence = FRAME_GET_DATA(obtained).silence;
    }
  } 

  THROW_FRAME()
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
    STACK_FMT_DATA(SDL_RWops*, src)
    STACK_FMT_DATA(int,        freesrc)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(SDL_AudioSpec, spec)
    FRAME_FMT_DATA(Uint8*,        audio_buf)
    FRAME_FMT_DATA(Uint32,        audio_len)
  FRAME_FMT_END()

    if
    (
         NULL
      != SDL_LoadWAV_RW
         ( STACK_GET_DATA(src)
         , STACK_GET_DATA(freesrc)
         , FRAME_GET_ADDR(spec)
         , FRAME_GET_ADDR(audio_buf)
         , FRAME_GET_ADDR(audio_len)
         )
    )
    {
      ;
    }

  THROW_FRAME()
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
    STACK_FMT_DATA(SDL_AudioCVT*, cvt)
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

  SDL_AudioCVT wav_cvt;
  int          nsize;

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint16, oformat)
    STACK_FMT_DATA(Uint16, nformat)
    STACK_FMT_DATA(Uint8,  ochannels)
    STACK_FMT_DATA(Uint8,  nchannels)
    STACK_FMT_DATA(int,    ofreq)
    STACK_FMT_DATA(int,    nfreq)
    STACK_FMT_DATA(int,    osize)
    STACK_FMT_DATA(void*,  mptr)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(Uint8*, buf)
    FRAME_FMT_DATA(Uint32, len)
  FRAME_FMT_END()

  /* Build AudioCVT */
  if
  ( 
       0
    <= SDL_BuildAudioCVT
       ( &wav_cvt
       , STACK_GET_DATA(oformat)
       , STACK_GET_DATA(ochannels)
       , STACK_GET_DATA(ofreq)
       , STACK_GET_DATA(nformat)
       , STACK_GET_DATA(nchannels)
       , STACK_GET_DATA(nfreq)
       )
  )
  {      
    /* Setup for conversion */
    nsize       = STACK_GET_DATA(osize) * wav_cvt.len_mult;      
    wav_cvt.buf = (Uint8*) malloc(nsize);

    if(NULL != wav_cvt.buf)
    {
      wav_cvt.len = STACK_GET_DATA(osize);

      memcpy
      ( wav_cvt.buf
      , STACK_GET_DATA(mptr)
      , STACK_GET_DATA(osize)
      );

      if
      (0 <= SDL_ConvertAudio(&wav_cvt))
      {
        FRAME_SET_DATA(buf) = wav_cvt.buf;
        FRAME_SET_DATA(len) = nsize;     
      }
    }
  }

  THROW_FRAME()
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

