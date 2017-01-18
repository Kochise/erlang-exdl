/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_audio.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

  enum
  { SDL_AudioInit_ENUM = EXDL_AUDIO_H
  , SDL_AudioQuit_ENUM
  , SDL_AudioDriverName_ENUM
  , SDL_OpenAudio_ENUM
  , SDL_GetAudioStatus_ENUM
  , SDL_PauseAudio_ENUM
  , SDL_LoadWAV_RW_ENUM
  , SDL_FreeWAV_ENUM
  , SDL_BuildAudioCVT_ENUM
  , SDL_ConvertAudio_ENUM
  , SDL_MixAudio_ENUM
  , SDL_LockAudio_ENUM
  , SDL_UnlockAudio_ENUM
  , SDL_CloseAudio_ENUM
  , _ENUM_EXDL_AUDIO
  };


EXDL_API(eaudio_audioInit);
EXDL_API(eaudio_audioQuit);
EXDL_API(eaudio_audioDriverName);
EXDL_API(eaudio_openAudio);
EXDL_API(eaudio_getAudioStatus);
EXDL_API(eaudio_pauseAudio);
EXDL_API(eaudio_loadWAV_RW);
EXDL_API(eaudio_freeWAV);
EXDL_API(eaudio_buildAudioCVT);
EXDL_API(eaudio_convertAudio);
EXDL_API(eaudio_mixAudio);
EXDL_API(eaudio_lockAudio);
EXDL_API(eaudio_unlockAudio);
EXDL_API(eaudio_closeAudio);


  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
