%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_alc.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

-define(ALCboolean,                           8/signed).
-define(ALCchar,                              8/signed).
-define(ALCbyte,                              8/signed).
-define(ALCubyte,                             8/unsigned).
-define(ALCshort,                             16/signed-native).
-define(ALCushort,                            16/unsigned-native).
-define(ALCint,                               32/signed-native).
-define(ALCuint,                              32/unsigned-native).
-define(ALCsizei,                             32/signed-native).
-define(ALCenum,                              32/unsigned-native).
-define(ALCfloat,                             32/float-native).
-define(ALCdouble,                            64/float-native).

%%%% Version 

-define(ALC_VERSION_0_1,                      1).

-define(ALC_FALSE,                            0). % Boolean False.
-define(ALC_TRUE,                             1). % Boolean True.

%%%% Capture extension

-define(ALC_CAPTURE_DEVICE_SPECIFIER,         16#310).
-define(ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER, 16#311).
-define(ALC_CAPTURE_SAMPLES,                  16#312).

-define(ALC_MAJOR_VERSION,                    16#1000).
-define(ALC_MINOR_VERSION,                    16#1001).

-define(ALC_ATTRIBUTES_SIZE,                  16#1002).
-define(ALC_ALL_ATTRIBUTES,                   16#1003).

%%%% The Specifier string for default device

-define(ALC_DEFAULT_DEVICE_SPECIFIER,         16#1004).
-define(ALC_DEVICE_SPECIFIER,                 16#1005).
-define(ALC_EXTENSIONS,                       16#1006).

-define(ALC_FREQUENCY,                        16#1007). % Followed by <int> Hz
-define(ALC_REFRESH,                          16#1008). % Followed by <int> Hz
-define(ALC_SYNC,                             16#1009). % Followed by AL_TRUE, AL_FALSE
-define(ALC_MONO_SOURCES,                     16#1010). % Followed by <int> Num of requested Mono (3D) Sources
-define(ALC_STEREO_SOURCES,                   16#1011). % Followed by <int> Num of requested Stereo Sources

%%%% ALC_ENUMERATE_ALL_EXT enums

-define(ALC_DEFAULT_ALL_DEVICES_SPECIFIER,    16#1012).
-define(ALC_ALL_DEVICES_SPECIFIER,            16#1013).

%%%% Errors

-define(ALC_NO_ERROR,                         ?ALC_FALSE). % No error.
-define(ALC_INVALID_DEVICE,                   16#A001). % No device.
-define(ALC_INVALID_CONTEXT,                  16#A002). % Invalid context ID.
-define(ALC_INVALID_ENUM,                     16#A003). % Bad enum.
-define(ALC_INVALID_VALUE,                    16#A004). % Bad value.
-define(ALC_OUT_OF_MEMORY,                    16#A005). % Out of memory.
