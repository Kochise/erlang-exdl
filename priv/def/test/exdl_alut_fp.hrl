%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_alut_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_ALUT).
  -define(alutInit,                       ?EXDL_ALUT_HRL                  + 0).
  -define(alutInitWithoutContext,         ?alutInit                       + 1).
  -define(alutExit,                       ?alutInitWithoutContext         + 1).
  -define(alutGetError,                   ?alutExit                       + 1).
  -define(alutGetErrorString,             ?alutGetError                   + 1).
  -define(alutCreateBufferFromFile,       ?alutGetErrorString             + 1).
  -define(alutCreateBufferFromFileImage,  ?alutCreateBufferFromFile       + 1).
  -define(alutCreateBufferHelloWorld,     ?alutCreateBufferFromFileImage  + 1).
  -define(alutCreateBufferWaveform,       ?alutCreateBufferHelloWorld     + 1).
  -define(alutLoadMemoryFromFile,         ?alutCreateBufferWaveform       + 1).
  -define(alutLoadMemoryFromFileImage,    ?alutLoadMemoryFromFile         + 1).
  -define(alutLoadMemoryHelloWorld,       ?alutLoadMemoryFromFileImage    + 1).
  -define(alutLoadMemoryWaveform,         ?alutLoadMemoryHelloWorld       + 1).
  -define(alutGetMIMETypes,               ?alutLoadMemoryWaveform         + 1).
  -define(alutGetMajorVersion,            ?alutGetMIMETypes               + 1).
  -define(alutGetMinorVersion,            ?alutGetMajorVersion            + 1).
  -define(alutSleep,                      ?alutGetMinorVersion            + 1).

  %% EXDL_ALUT C SRC ENUM CHECK
  -define(_ENUM_EXDL_ALUT,                ?alutSleep                      + 1).

-else. % COMPILE_ALUT

  -define(_ENUM_EXDL_ALUT,                ?EXDL_ALUT_HRL).

-endif. % COMPILE_ALUT
