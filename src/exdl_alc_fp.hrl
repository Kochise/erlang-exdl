%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_alc_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_AL).

%% Context Management

  -define(alcCreateContext,       ?EXDL_ALC_HRL           + 0).
  -define(alcMakeContextCurrent,  ?alcCreateContext       + 1).
  -define(alcProcessContext,      ?alcMakeContextCurrent  + 1).
  -define(alcSuspendContext,      ?alcProcessContext      + 1).
  -define(alcDestroyContext,      ?alcSuspendContext      + 1).
  -define(alcGetCurrentContext,   ?alcDestroyContext      + 1).
  -define(alcGetContextsDevice,   ?alcGetCurrentContext   + 1).

%% Device Management

  -define(alcOpenDevice,          ?alcGetContextsDevice   + 1).
  -define(alcCloseDevice,         ?alcOpenDevice          + 1).

%% Error support

  -define(alcGetError,            ?alcCloseDevice         + 1).

%% Extension support

  -define(alcIsExtensionPresent,  ?alcGetError            + 1).
  -define(alcGetProcAddress,      ?alcIsExtensionPresent  + 1).
  -define(alcGetEnumValue,        ?alcGetProcAddress      + 1).

%% Query functions

  -define(alcGetString,           ?alcGetEnumValue        + 1).
  -define(alcGetIntegerv,         ?alcGetString           + 1).

%% Capture functions

  -define(alcCaptureOpenDevice,   ?alcGetIntegerv         + 1).
  -define(alcCaptureCloseDevice,  ?alcCaptureOpenDevice   + 1).
  -define(alcCaptureStart,        ?alcCaptureCloseDevice  + 1).
  -define(alcCaptureStop,         ?alcCaptureStart        + 1).
  -define(alcCaptureSamples,      ?alcCaptureStop         + 1).

  %% EXDL_ALC C SRC ENUM CHECK
  -define(_ENUM_EXDL_ALC,         ?alcCaptureSamples      + 1).

-else. % COMPILE_AL

  -define(_ENUM_EXDL_ALC,         ?EXDL_ALC_HRL).

-endif. % COMPILE_AL
