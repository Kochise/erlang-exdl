%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_alext_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_ALEXT).

%% loki

  -define(alcGetAudioChannel_LOKI,        ?EXDL_ALEXT_HRL                 + 0).
  -define(alcSetAudioChannel_LOKI,        ?alcGetAudioChannel_LOKI        + 1).
%%-define(alBombOnError_LOKI,           ?alcSetAudioChannel_LOKI        + 1).
  -define(alBufferi_LOKI,                 ?alcSetAudioChannel_LOKI        + 1).
  -define(alBufferDataWithCallback_LOKI,  ?alBufferi_LOKI                 + 1).
  -define(alBufferWriteData_LOKI,         ?alBufferDataWithCallback_LOKI  + 1).
  -define(alGenStreamingBuffers_LOKI,     ?alBufferWriteData_LOKI         + 1).
  -define(alBufferAppendData_LOKI,        ?alGenStreamingBuffers_LOKI     + 1).
  -define(alBufferAppendWriteData_LOKI,   ?alBufferAppendData_LOKI        + 1).

%% binary compatibility

%% ALsizei alBufferAppendData(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq);

%% Capture api

  -define(alCaptureInit_EXT,              ?alBufferAppendWriteData_LOKI   + 1).
  -define(alCaptureDestroy_EXT,           ?alCaptureInit_EXT              + 1).
  -define(alCaptureStart_EXT,             ?alCaptureDestroy_EXT           + 1).
  -define(alCaptureStop_EXT,              ?alCaptureStart_EXT             + 1).

%% Non-blocking device read

  -define(alCaptureGetData_EXT,           ?alCaptureStop_EXT              + 1).

%% custom loaders

  -define(alutLoadVorbis_LOKI,            ?alCaptureGetData_EXT           + 1).
  -define(alutLoadMP3_LOKI,               ?alutLoadVorbis_LOKI            + 1).

  %% EXDL_ALEXT C SRC ENUM CHECK
  -define(_ENUM_EXDL_ALEXT,               ?alutLoadMP3_LOKI               + 1).

-else. % COMPILE_ALEXT

  -define(_ENUM_EXDL_ALEXT,               ?EXDL_ALEXT_HRL).

-endif. % COMPILE_ALEXT
