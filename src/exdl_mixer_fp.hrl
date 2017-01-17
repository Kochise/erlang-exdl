%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_mixer_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_MIXER).

  -define(Mix_Linked_Version,        ?EXDL_MIXER_HRL            + 0).
  -define(Mix_Init,                  ?Mix_Linked_Version        + 1).
  -define(Mix_Quit,                  ?Mix_Init                  + 1).
  -define(Mix_OpenAudio,             ?Mix_Quit                  + 1).
  -define(Mix_AllocateChannels,      ?Mix_OpenAudio             + 1).
  -define(Mix_QuerySpec,             ?Mix_AllocateChannels      + 1).
  -define(Mix_LoadWAV_RW,            ?Mix_QuerySpec             + 1).
  -define(Mix_LoadMUS,               ?Mix_LoadWAV_RW            + 1).
  -define(Mix_LoadMUS_RW,            ?Mix_LoadMUS               + 1).
  -define(Mix_QuickLoad_WAV,         ?Mix_LoadMUS_RW            + 1).
  -define(Mix_QuickLoad_RAW,         ?Mix_QuickLoad_WAV         + 1).
  -define(Mix_FreeChunk,             ?Mix_QuickLoad_RAW         + 1).
  -define(Mix_FreeMusic,             ?Mix_FreeChunk             + 1).
  -define(Mix_GetNumChunkDecoders,   ?Mix_FreeMusic             + 1).
  -define(Mix_GetChunkDecoder,       ?Mix_GetNumChunkDecoders   + 1).
  -define(Mix_GetNumMusicDecoders,   ?Mix_GetChunkDecoder       + 1).
  -define(Mix_GetMusicDecoder,       ?Mix_GetNumMusicDecoders   + 1).
  -define(Mix_GetMusicType,          ?Mix_GetMusicDecoder       + 1).
  -define(Mix_SetPostMix,            ?Mix_GetMusicType          + 1).
  -define(Mix_HookMusic,             ?Mix_SetPostMix            + 1).
  -define(Mix_HookMusicFinished,     ?Mix_HookMusic             + 1).
  -define(Mix_GetMusicHookData,      ?Mix_HookMusicFinished     + 1).
  -define(Mix_ChannelFinished,       ?Mix_GetMusicHookData      + 1).
  -define(Mix_RegisterEffect,        ?Mix_ChannelFinished       + 1).
  -define(Mix_UnregisterEffect,      ?Mix_RegisterEffect        + 1).
  -define(Mix_UnregisterAllEffects,  ?Mix_UnregisterEffect      + 1).
  -define(Mix_SetPanning,            ?Mix_UnregisterAllEffects  + 1).
  -define(Mix_SetPosition,           ?Mix_SetPanning            + 1).
  -define(Mix_SetDistance,           ?Mix_SetPosition           + 1).
  -define(Mix_SetReverseStereo,      ?Mix_SetDistance           + 1).
  -define(Mix_ReserveChannels,       ?Mix_SetReverseStereo      + 1).
  -define(Mix_GroupChannel,          ?Mix_ReserveChannels       + 1).
  -define(Mix_GroupChannels,         ?Mix_GroupChannel          + 1).
  -define(Mix_GroupAvailable,        ?Mix_GroupChannels         + 1).
  -define(Mix_GroupCount,            ?Mix_GroupAvailable        + 1).
  -define(Mix_GroupOldest,           ?Mix_GroupCount            + 1).
  -define(Mix_GroupNewer,            ?Mix_GroupOldest           + 1).
  -define(Mix_PlayChannelTimed,      ?Mix_GroupNewer            + 1).
  -define(Mix_PlayMusic,             ?Mix_PlayChannelTimed      + 1).
  -define(Mix_FadeInMusic,           ?Mix_PlayMusic             + 1).
  -define(Mix_FadeInMusicPos,        ?Mix_FadeInMusic           + 1).
  -define(Mix_FadeInChannelTimed,    ?Mix_FadeInMusicPos        + 1).
  -define(Mix_Volume,                ?Mix_FadeInChannelTimed    + 1).
  -define(Mix_VolumeChunk,           ?Mix_Volume                + 1).
  -define(Mix_VolumeMusic,           ?Mix_VolumeChunk           + 1).
  -define(Mix_HaltChannel,           ?Mix_VolumeMusic           + 1).
  -define(Mix_HaltGroup,             ?Mix_HaltChannel           + 1).
  -define(Mix_HaltMusic,             ?Mix_HaltGroup             + 1).
  -define(Mix_ExpireChannel,         ?Mix_HaltMusic             + 1).
  -define(Mix_FadeOutChannel,        ?Mix_ExpireChannel         + 1).
  -define(Mix_FadeOutGroup,          ?Mix_FadeOutChannel        + 1).
  -define(Mix_FadeOutMusic,          ?Mix_FadeOutGroup          + 1).
  -define(Mix_FadingMusic,           ?Mix_FadeOutMusic          + 1).
  -define(Mix_FadingChannel,         ?Mix_FadingMusic           + 1).
  -define(Mix_Pause,                 ?Mix_FadingChannel         + 1).
  -define(Mix_Resume,                ?Mix_Pause                 + 1).
  -define(Mix_Paused,                ?Mix_Resume                + 1).
  -define(Mix_PauseMusic,            ?Mix_Paused                + 1).
  -define(Mix_ResumeMusic,           ?Mix_PauseMusic            + 1).
  -define(Mix_RewindMusic,           ?Mix_ResumeMusic           + 1).
  -define(Mix_PausedMusic,           ?Mix_RewindMusic           + 1).
  -define(Mix_SetMusicPosition,      ?Mix_PausedMusic           + 1).
  -define(Mix_Playing,               ?Mix_SetMusicPosition      + 1).
  -define(Mix_PlayingMusic,          ?Mix_Playing               + 1).
  -define(Mix_SetMusicCMD,           ?Mix_PlayingMusic          + 1).
  -define(Mix_SetSynchroValue,       ?Mix_SetMusicCMD           + 1).
  -define(Mix_GetSynchroValue,       ?Mix_SetSynchroValue       + 1).
  -define(Mix_GetChunk,              ?Mix_GetSynchroValue       + 1).
  -define(Mix_CloseAudio,            ?Mix_GetChunk              + 1).

  %% EXDL_MIXER C SRC ENUM CHECK
  -define(_ENUM_EXDL_MIXER,          ?Mix_CloseAudio            + 1).

-else. % COMPILE_MIXER

  -define(_ENUM_EXDL_MIXER,          ?EXDL_MIXER_HRL).

-endif. % COMPILE_MIXER
