/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_audio_fp.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

{ SDL_AudioInit_ENUM,        "SDL_AudioInit",        eaudio_audioInit },
{ SDL_AudioQuit_ENUM,        "SDL_AudioQuit",        eaudio_audioQuit },
{ SDL_AudioDriverName_ENUM,  "SDL_AudioDriverName",  eaudio_audioDriverName },
{ SDL_OpenAudio_ENUM,        "SDL_OpenAudio",        eaudio_openAudio },
{ SDL_GetAudioStatus_ENUM,   "SDL_GetAudioStatus",   eaudio_getAudioStatus },
{ SDL_PauseAudio_ENUM,       "SDL_PauseAudio",       eaudio_pauseAudio },
{ SDL_LoadWAV_RW_ENUM,       "SDL_LoadWAV_RW",       eaudio_loadWAV_RW },
{ SDL_FreeWAV_ENUM,          "SDL_FreeWAV",          eaudio_freeWAV },
{ SDL_BuildAudioCVT_ENUM,    "SDL_BuildAudioCVT",    eaudio_buildAudioCVT },
{ SDL_ConvertAudio_ENUM,     "SDL_ConvertAudio",     eaudio_convertAudio },
{ SDL_MixAudio_ENUM,         "SDL_MixAudio",         eaudio_mixAudio },
{ SDL_LockAudio_ENUM,        "SDL_LockAudio",        eaudio_lockAudio },
{ SDL_UnlockAudio_ENUM,      "SDL_UnlockAudio",      eaudio_unlockAudio },
{ SDL_CloseAudio_ENUM,       "SDL_CloseAudio",       eaudio_closeAudio },
