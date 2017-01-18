%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_al_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_AL).

%% Renderer State management

  -define(alEnable,                ?EXDL_AL_HRL             + 0).
  -define(alDisable,               ?alEnable                + 1).
  -define(alIsEnabled,             ?alDisable               + 1).

%% State retrieval

  -define(alGetString,             ?alIsEnabled             + 1).
  -define(alGetBooleanv,           ?alGetString             + 1).
  -define(alGetIntegerv,           ?alGetBooleanv           + 1).
  -define(alGetFloatv,             ?alGetIntegerv           + 1).
  -define(alGetDoublev,            ?alGetFloatv             + 1).
  -define(alGetBoolean,            ?alGetDoublev            + 1).
  -define(alGetInteger,            ?alGetBoolean            + 1).
  -define(alGetFloat,              ?alGetInteger            + 1).
  -define(alGetDouble,             ?alGetFloat              + 1).

%% Error support

  -define(alGetError,              ?alGetDouble             + 1).

%% Extension support

  -define(alIsExtensionPresent,    ?alGetError              + 1).
  -define(alGetProcAddress,        ?alIsExtensionPresent    + 1).
  -define(alGetEnumValue,          ?alGetProcAddress        + 1).

%% Set Listener parameters

  -define(alListenerf,             ?alGetEnumValue          + 1).
  -define(alListener3f,            ?alListenerf             + 1).
  -define(alListenerfv,            ?alListener3f            + 1).
  -define(alListeneri,             ?alListenerfv            + 1).
  -define(alListener3i,            ?alListeneri             + 1).
  -define(alListeneriv,            ?alListener3i            + 1).

%% Get Listener parameters

  -define(alGetListenerf,          ?alListeneriv            + 1).
  -define(alGetListener3f,         ?alGetListenerf          + 1).
  -define(alGetListenerfv,         ?alGetListener3f         + 1).
  -define(alGetListeneri,          ?alGetListenerfv         + 1).
  -define(alGetListener3i,         ?alGetListeneri          + 1).
  -define(alGetListeneriv,         ?alGetListener3i         + 1).

%% Create Source objects

  -define(alGenSources,            ?alGetListeneriv         + 1).
  -define(alDeleteSources,         ?alGenSources            + 1).
  -define(alIsSource,              ?alDeleteSources         + 1).

%% Set Source parameters

  -define(alSourcef,               ?alIsSource              + 1).
  -define(alSource3f,              ?alSourcef               + 1).
  -define(alSourcefv,              ?alSource3f              + 1).
  -define(alSourcei,               ?alSourcefv              + 1).
  -define(alSource3i,              ?alSourcei               + 1).
  -define(alSourceiv,              ?alSource3i              + 1).

%% Get Source parameters

  -define(alGetSourcef,            ?alSourceiv              + 1).
  -define(alGetSource3f,           ?alGetSourcef            + 1).
  -define(alGetSourcefv,           ?alGetSource3f           + 1).
  -define(alGetSourcei,            ?alGetSourcefv           + 1).
  -define(alGetSource3i,           ?alGetSourcei            + 1).
  -define(alGetSourceiv,           ?alGetSource3i           + 1).

%% Source vector based playback calls

  -define(alSourcePlayv,           ?alGetSourceiv           + 1).
  -define(alSourceStopv,           ?alSourcePlayv           + 1).
  -define(alSourceRewindv,         ?alSourceStopv           + 1).
  -define(alSourcePausev,          ?alSourceRewindv         + 1).

%% Source based playback calls

  -define(alSourcePlay,            ?alSourcePausev          + 1).
  -define(alSourceStop,            ?alSourcePlay            + 1).
  -define(alSourceRewind,          ?alSourceStop            + 1).
  -define(alSourcePause,           ?alSourceRewind          + 1).

%% Source Queuing

  -define(alSourceQueueBuffers,    ?alSourcePause           + 1).
  -define(alSourceUnqueueBuffers,  ?alSourceQueueBuffers    + 1).

%% Create Buffer objects

  -define(alGenBuffers,            ?alSourceUnqueueBuffers  + 1).
  -define(alDeleteBuffers,         ?alGenBuffers            + 1).
  -define(alIsBuffer,              ?alDeleteBuffers         + 1).
  -define(alBufferData,            ?alIsBuffer              + 1).

%% Set Buffer parameters

  -define(alBufferf,               ?alBufferData            + 1).
  -define(alBuffer3f,              ?alBufferf               + 1).
  -define(alBufferfv,              ?alBuffer3f              + 1).
  -define(alBufferi,               ?alBufferfv              + 1).
  -define(alBuffer3i,              ?alBufferi               + 1).
  -define(alBufferiv,              ?alBuffer3i              + 1).

%% Get Buffer parameters

  -define(alGetBufferf,            ?alBufferiv              + 1).
  -define(alGetBuffer3f,           ?alGetBufferf            + 1).
  -define(alGetBufferfv,           ?alGetBuffer3f           + 1).
  -define(alGetBufferi,            ?alGetBufferfv           + 1).
  -define(alGetBuffer3i,           ?alGetBufferi            + 1).
  -define(alGetBufferiv,           ?alGetBuffer3i           + 1).

%% Global Parameters

  -define(alDopplerFactor,         ?alGetBufferiv           + 1).
  -define(alDopplerVelocity,       ?alDopplerFactor         + 1).
  -define(alSpeedOfSound,          ?alDopplerVelocity       + 1).
  -define(alDistanceModel,         ?alSpeedOfSound          + 1).

  %% EXDL_AL C SRC ENUM CHECK
  -define(_ENUM_EXDL_AL,           ?alDistanceModel         + 1).

-else. % COMPILE_AL

  -define(_ENUM_EXDL_AL,           ?EXDL_AL_HRL).

-endif. % COMPILE_AL
