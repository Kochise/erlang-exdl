%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: de_funcs.hrl,v 1.0 2008/12/30 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-define(alcCreateContext,       ?SDL_OPENALC_HRL        + 0).
-define(alcMakeContextCurrent,  ?alcCreateContext       + 1).
-define(alcProcessContext,      ?alcMakeContextCurrent  + 1).
-define(alcSuspendContext,      ?alcProcessContext      + 1).
-define(alcDestroyContext,      ?alcSuspendContext      + 1).
-define(alcGetCurrentContext,   ?alcDestroyContext      + 1).
-define(alcGetContextsDevice,   ?alcGetCurrentContext   + 1).
-define(alcOpenDevice,          ?alcGetContextsDevice   + 1).
-define(alcCloseDevice,         ?alcOpenDevice          + 1).
-define(alcGetError,            ?alcCloseDevice         + 1).
-define(alcIsExtensionPresent,  ?alcGetError            + 1).
-define(alcGetProcAddress,      ?alcIsExtensionPresent  + 1).
-define(alcGetEnumValue,        ?alcGetProcAddress      + 1).
-define(alcGetString,           ?alcGetEnumValue        + 1).
-define(alcGetIntegerv,         ?alcGetString           + 1).
-define(alcCaptureOpenDevice,   ?alcGetIntegerv         + 1).
-define(alcCaptureCloseDevice,  ?alcCaptureOpenDevice   + 1).
-define(alcCaptureStart,        ?alcCaptureCloseDevice  + 1).
-define(alcCaptureStop,         ?alcCaptureStart        + 1).
-define(alcCaptureSamples,      ?alcCaptureStop         + 1).

%% EXDL_GL C SRC ENUM CHECK
-define(_ENUM_EXDL_ALC,         ?alcCaptureSamples      + 1).