%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_audio_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

  -define(SDL_AudioInit,        ?EXDL_AUDIO_HRL       + 0).
  -define(SDL_AudioQuit,        ?SDL_AudioInit        + 1).
  -define(SDL_AudioDriverName,  ?SDL_AudioQuit        + 1).
  -define(SDL_OpenAudio,        ?SDL_AudioDriverName  + 1).
  -define(SDL_GetAudioStatus,   ?SDL_OpenAudio        + 1).
  -define(SDL_PauseAudio,       ?SDL_GetAudioStatus   + 1).
  -define(SDL_LoadWAV_RW,       ?SDL_PauseAudio       + 1).
  -define(SDL_FreeWAV,          ?SDL_LoadWAV_RW       + 1).
  -define(SDL_BuildAudioCVT,    ?SDL_FreeWAV          + 1).
  -define(SDL_ConvertAudio,     ?SDL_BuildAudioCVT    + 1).
  -define(SDL_MixAudio,         ?SDL_ConvertAudio     + 1).
  -define(SDL_LockAudio,        ?SDL_MixAudio         + 1).
  -define(SDL_UnlockAudio,      ?SDL_LockAudio        + 1).
  -define(SDL_CloseAudio,       ?SDL_UnlockAudio      + 1).

  %% EXDL_AUDIO C SRC ENUM CHECK
  -define(_ENUM_EXDL_AUDIO,     ?SDL_CloseAudio       + 1).

