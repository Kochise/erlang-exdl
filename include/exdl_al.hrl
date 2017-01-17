%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_al.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

-define(ALboolean,                    8/signed).
-define(ALchar,                       8/signed).
-define(ALbyte,                       8/signed).
-define(ALubyte,                      8/unsigned).
-define(ALshort,                      16/signed-native).
-define(ALushort,                     16/unsigned-native).
-define(ALint,                        32/signed-native).
-define(ALuint,                       32/unsigned-native).
-define(ALsizei,                      32/signed-native).
-define(ALenum,                       32/unsigned-native).
-define(ALfloat,                      32/float-native).
-define(ALdouble,                     64/float-native).

%%%% Version

-define(OPENAL,                       1). % There is OpenAL around, just look... listen for it !
-define(AL_VERSION_1_0,               1). % OpenAL 1.0 support effective
-define(AL_VERSION_1_1,               1). % OpenAL 1.1 support effective

-define(AL_INVALID,                   -1). % Bad value.
-define(AL_NONE,                      0).
-define(AL_FALSE,                     0). % Boolean False.
-define(AL_TRUE,                      1). % Boolean True.

-define(AL_SOURCE_RELATIVE,           16#202). % Indicate Source has relative coordinates.

-define(AL_CONE_INNER_ANGLE,          16#1001). % Directional source, inner cone angle, in degrees.
-define(AL_CONE_OUTER_ANGLE,          16#1002). % Directional source, outer cone angle, in degrees.
-define(AL_PITCH,                     16#1003). % Specify the pitch to be applied, either at source, or on mixer results, at listener.
-define(AL_POSITION,                  16#1004). % Specify the current location in three dimensional space.
-define(AL_DIRECTION,                 16#1005). % Specify the current direction.
-define(AL_VELOCITY,                  16#1006). % Specify the current velocity in three dimensional space.
-define(AL_LOOPING,                   16#1007). % Indicate whether source is looping.
-define(AL_BUFFER,                    16#1009). % Indicate the buffer to provide sound samples.
-define(AL_GAIN,                      16#100A). % Indicate the gain (volume amplification) applied.
-define(AL_MIN_GAIN,                  16#100D). % Indicate minimum source attenuation.
-define(AL_MAX_GAIN,                  16#100E). % Indicate maximum source attenuation.
-define(AL_ORIENTATION,               16#100F). % Indicate listener orientation.

%%%% Source state information.

-define(AL_SOURCE_STATE,              16#1010).
-define(AL_INITIAL,                   16#1011).
-define(AL_PLAYING,                   16#1012).
-define(AL_PAUSED,                    16#1013).
-define(AL_STOPPED,                   16#1014).

%%%% Buffer Queue params

-define(AL_BUFFERS_QUEUED,            16#1015).
-define(AL_BUFFERS_PROCESSED,         16#1016).

%%%% Source buffer position information

-define(AL_SEC_OFFSET,                16#1024).
-define(AL_SAMPLE_OFFSET,             16#1025).
-define(AL_BYTE_OFFSET,               16#1026).

%%%% Source type (Static, Streaming or undetermined)

-define(AL_SOURCE_TYPE,               16#1027).
-define(AL_STATIC,                    16#1028).
-define(AL_STREAMING,                 16#1029).
-define(AL_UNDETERMINED,              16#1030).

%%%% Sound samples: format specifier.

-define(AL_FORMAT_MONO8,              16#1100).
-define(AL_FORMAT_MONO16,             16#1101).
-define(AL_FORMAT_STEREO8,            16#1102).
-define(AL_FORMAT_STEREO16,           16#1103).

-define(AL_REFERENCE_DISTANCE,        16#1020). % Source specific reference distance
-define(AL_ROLLOFF_FACTOR,            16#1021). % Source specific rolloff factor
-define(AL_CONE_OUTER_GAIN,           16#1022). % Directional source, outer cone gain.
-define(AL_MAX_DISTANCE,              16#1023). % Indicate distance above which sources are not attenuated using the inverse clamped distance model.

%%%% Sound samples: frequency, in units of Hertz [Hz].

-define(AL_FREQUENCY,                 16#2001).
-define(AL_BITS,                      16#2002).
-define(AL_CHANNELS,                  16#2003).
-define(AL_SIZE,                      16#2004).

%%%% Buffer state.

-define(AL_UNUSED,                    16#2010).
-define(AL_PENDING,                   16#2011).
-define(AL_PROCESSED,                 16#2012).

-define(AL_CHANNEL_MASK,              16#3000). % Specify the channel mask.

-define(AL_NO_ERROR,                  ?AL_FALSE). % Errors: No Error! Ain't that wonderful ?
-define(AL_INVALID_NAME,              16#A001). % Invalid Name paramater passed to AL call.
-define(AL_ILLEGAL_ENUM,              16#A002). % Invalid parameter passed to AL call.
-define(AL_INVALID_ENUM,              16#A002).
-define(AL_INVALID_VALUE,             16#A003). % Invalid enum parameter value.
-define(AL_ILLEGAL_COMMAND,           16#A004). % Illegal call.
-define(AL_INVALID_OPERATION,         16#A004).
-define(AL_OUT_OF_MEMORY,             16#A005). % No mojo.

%%%% Context strings: Vendor Name.

-define(AL_VENDOR,                    16#B001).
-define(AL_VERSION,                   16#B002).
-define(AL_RENDERER,                  16#B003).
-define(AL_EXTENSIONS,                16#B004).

%%%% Global tweakage.

-define(AL_DOPPLER_FACTOR,            16#C000). % Doppler scale. Default 1.0
-define(AL_DOPPLER_VELOCITY,          16#C001). % Tweaks speed of propagation.
-define(AL_SPEED_OF_SOUND,            16#C003). % Speed of Sound in units per second

%%%% Distance models used in conjunction with DistanceModel

-define(AL_DISTANCE_MODEL,            16#D000).
-define(AL_INVERSE_DISTANCE,          16#D001).
-define(AL_INVERSE_DISTANCE_CLAMPED,  16#D002).
-define(AL_LINEAR_DISTANCE,           16#D003).
-define(AL_LINEAR_DISTANCE_CLAMPED,   16#D004).
-define(AL_EXPONENT_DISTANCE,         16#D005).
-define(AL_EXPONENT_DISTANCE_CLAMPED, 16#D006).
