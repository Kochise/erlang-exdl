/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_mixer.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_MIXER

  enum
  { Mix_Linked_Version_ENUM = EXDL_MIXER_H
  , Mix_Init_ENUM
  , Mix_Quit_ENUM
  , Mix_OpenAudio_ENUM
  , Mix_AllocateChannels_ENUM
  , Mix_QuerySpec_ENUM
  , Mix_LoadWAV_RW_ENUM
  , Mix_LoadMUS_ENUM
  , Mix_LoadMUS_RW_ENUM
  , Mix_QuickLoad_WAV_ENUM
  , Mix_QuickLoad_RAW_ENUM
  , Mix_FreeChunk_ENUM
  , Mix_FreeMusic_ENUM
  , Mix_GetNumChunkDecoders_ENUM
  , Mix_GetChunkDecoder_ENUM
  , Mix_GetNumMusicDecoders_ENUM
  , Mix_GetMusicDecoder_ENUM
  , Mix_GetMusicType_ENUM
  , Mix_SetPostMix_ENUM
  , Mix_HookMusic_ENUM
  , Mix_HookMusicFinished_ENUM
  , Mix_GetMusicHookData_ENUM
  , Mix_ChannelFinished_ENUM
  , Mix_RegisterEffect_ENUM
  , Mix_UnregisterEffect_ENUM
  , Mix_UnregisterAllEffects_ENUM
  , Mix_SetPanning_ENUM
  , Mix_SetPosition_ENUM
  , Mix_SetDistance_ENUM
/* int Mix_SetReverb(int channel, Uint8 echo) */
  , Mix_SetReverseStereo_ENUM
  , Mix_ReserveChannels_ENUM
  , Mix_GroupChannel_ENUM
  , Mix_GroupChannels_ENUM
  , Mix_GroupAvailable_ENUM
  , Mix_GroupCount_ENUM
  , Mix_GroupOldest_ENUM
  , Mix_GroupNewer_ENUM
  , Mix_PlayChannelTimed_ENUM
  , Mix_PlayMusic_ENUM
  , Mix_FadeInMusic_ENUM
  , Mix_FadeInMusicPos_ENUM
  , Mix_FadeInChannelTimed_ENUM
  , Mix_Volume_ENUM
  , Mix_VolumeChunk_ENUM
  , Mix_VolumeMusic_ENUM
  , Mix_HaltChannel_ENUM
  , Mix_HaltGroup_ENUM
  , Mix_HaltMusic_ENUM
  , Mix_ExpireChannel_ENUM
  , Mix_FadeOutChannel_ENUM
  , Mix_FadeOutGroup_ENUM
  , Mix_FadeOutMusic_ENUM
  , Mix_FadingMusic_ENUM
  , Mix_FadingChannel_ENUM
  , Mix_Pause_ENUM
  , Mix_Resume_ENUM
  , Mix_Paused_ENUM
  , Mix_PauseMusic_ENUM
  , Mix_ResumeMusic_ENUM
  , Mix_RewindMusic_ENUM
  , Mix_PausedMusic_ENUM
  , Mix_SetMusicPosition_ENUM
  , Mix_Playing_ENUM
  , Mix_PlayingMusic_ENUM
  , Mix_SetMusicCMD_ENUM
  , Mix_SetSynchroValue_ENUM
  , Mix_GetSynchroValue_ENUM
  , Mix_GetChunk_ENUM
  , Mix_CloseAudio_ENUM
  , _ENUM_EXDL_MIXER
  };


EXDL_API(emix_linked_Version);
EXDL_API(emix_init);
EXDL_API(emix_quit);
EXDL_API(emix_openAudio);
EXDL_API(emix_allocateChannels);
EXDL_API(emix_querySpec);
EXDL_API(emix_loadWAV_RW);
EXDL_API(emix_loadMUS);
EXDL_API(emix_loadMUS_RW);
EXDL_API(emix_quickLoad_WAV);
EXDL_API(emix_quickLoad_RAW);
EXDL_API(emix_freeChunk);
EXDL_API(emix_freeMusic);
EXDL_API(emix_getNumChunkDecoders);
EXDL_API(emix_getChunkDecoder);
EXDL_API(emix_getNumMusicDecoders);
EXDL_API(emix_getMusicDecoder);
EXDL_API(emix_getMusicType);
EXDL_API(emix_setPostMix);
EXDL_API(emix_hookMusic);
EXDL_API(emix_hookMusicFinished);
EXDL_API(emix_getMusicHookData);
EXDL_API(emix_channelFinished);
EXDL_API(emix_registerEffect);
EXDL_API(emix_unregisterEffect);
EXDL_API(emix_unregisterAllEffects);
EXDL_API(emix_setPanning);
EXDL_API(emix_setPosition);
EXDL_API(emix_setDistance);
/* int Mix_SetReverb(int channel, Uint8 echo) */
EXDL_API(emix_setReverseStereo);
EXDL_API(emix_reserveChannels);
EXDL_API(emix_groupChannel);
EXDL_API(emix_groupChannels);
EXDL_API(emix_groupAvailable);
EXDL_API(emix_groupCount);
EXDL_API(emix_groupOldest);
EXDL_API(emix_groupNewer);
EXDL_API(emix_playChannelTimed);
EXDL_API(emix_playMusic);
EXDL_API(emix_fadeInMusic);
EXDL_API(emix_fadeInMusicPos);
EXDL_API(emix_fadeInChannelTimed);
EXDL_API(emix_volume);
EXDL_API(emix_volumeChunk);
EXDL_API(emix_volumeMusic);
EXDL_API(emix_haltChannel);
EXDL_API(emix_haltGroup);
EXDL_API(emix_haltMusic);
EXDL_API(emix_expireChannel);
EXDL_API(emix_fadeOutChannel);
EXDL_API(emix_fadeOutGroup);
EXDL_API(emix_fadeOutMusic);
EXDL_API(emix_fadingMusic);
EXDL_API(emix_fadingChannel);
EXDL_API(emix_pause);
EXDL_API(emix_resume);
EXDL_API(emix_paused);
EXDL_API(emix_pauseMusic);
EXDL_API(emix_resumeMusic);
EXDL_API(emix_rewindMusic);
EXDL_API(emix_pausedMusic);
EXDL_API(emix_setMusicPosition);
EXDL_API(emix_playing);
EXDL_API(emix_playingMusic);
EXDL_API(emix_setMusicCMD);
EXDL_API(emix_setSynchroValue);
EXDL_API(emix_getSynchroValue);
EXDL_API(emix_getChunk);
EXDL_API(emix_closeAudio);

#else // COMPILE_MIXER
  enum { _ENUM_EXDL_MIXER = EXDL_MIXER_H };
#endif // COMPILE_MIXER

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
