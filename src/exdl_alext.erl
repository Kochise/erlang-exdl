%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_alext.erl,v 1.2 2008/11/06 07:49:22 kochise Exp $
%%

-module(exdl_alext).

-include("exdl.hrl").

-ifdef(COMPILE_ALEXT).

%% 1- EXPORT

%-compile(export_all).

%% loki

-export( [ getAudioChannelLOKI/1
         , setAudioChannelLOKI/2
%         , bombOnErrorLOKI/0
         , bufferiLOKI/3
         , bufferDataWithCallbackLOKI/9
         , bufferWriteDataLOKI/6
         , genStreamingBuffersLOKI/1
         , bufferAppendDataLOKI/5
         , bufferAppendWriteDataLOKI/6
         ]
       ).

%% Binary compatibility
%-export( [ bufferAppendData/5
%         ]
%       ).

%% Capture api

-export( [ captureInitEXT/3
         , captureDestroyEXT/0
         , captureStartEXT/0
         , captureStopEXT/0
         ]
       ).

%% Non-blocking device read 

-export( [ captureGetDataEXT/4
         ]
       ).

%% custom loaders

-export( [ loadVorbisLOKI/3
         , loadMP3LOKI/3
         ]
       ).

%% 2- INCLUDE

-include("exdl_al.hrl").
-include("exdl_util.hrl").

-include("exdl_alext.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

-import( exdl_util
       , [ bin2list/2
         , bin2list/3
         , term2bin/2
         , term2bin/3
         , matrix2bin/2
         ]
       ).

%% 4- FUNCTIONS

%% loki

%% Func:       getAudioChannelLOKI
%% Args:       Channel
%% Returns:    Exdl
%% C-API func: ALfloat alcGetAudioChannel_LOKI(ALuint channel)

getAudioChannelLOKI(Channel)
 -> case
      call
      ( ?alcGetAudioChannel_LOKI
      , <<Channel:?ALuint
        >>
      )
    of
      <<Exdl:?ALfloat
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       setAudioChannelLOKI
%% Args:       Channel, Volume
%% Returns:    ok
%% C-API func: void alcSetAudioChannel_LOKI(ALuint channel, ALfloat volume)

setAudioChannelLOKI(Channel, Volume)
 -> cast
    ( ?alcSetAudioChannel_LOKI
    , <<Channel:?ALuint
      , Volume:?ALfloat
      >>
    )
.

%% Func:       bombOnError_LOKI
%% Args:       
%% Returns:    ok
%% C-API func: void alBombOnError_LOKI()

%bombOnError_LOKI()
% -> cast
%    ( ?alBombOnError_LOKI
%    , [
%      ]
%    )
%.

%% Func:       bufferiLOKI
%% Args:       Bid, Param, Value
%% Returns:    ok
%% C-API func: void alBufferi_LOKI(ALuint bid, ALenum param, ALint value)

bufferiLOKI(Bid, Param, Value)
 -> cast
    ( ?alBufferi_LOKI
    , <<Bid:?ALuint
      , Param:?ALenum
      , Value:?ALint
      >>
    )
.

%% Func:       bufferDataWithCallbackLOKI
%% Args:       ALint
%% Returns:    ok
%% C-API func: void alBufferDataWithCallback_LOKI(ALuint bid, int (*Callback) (ALuint, ALuint, ALshort*, ALenum, ALint, ALint))

bufferDataWithCallbackLOKI(ALint)
 -> cast
    ( ?alBufferDataWithCallback_LOKI
    , <<Bid:?ALuint
      , Callback:?_PTR
      >>
    )
.

%% Func:       bufferWriteDataLOKI
%% Args:       Buffer, Format, Data, Size, Freq, InternalFormat
%% Returns:    ok
%% C-API func: void alBufferWriteData_LOKI(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq, ALenum internalFormat)

bufferWriteDataLOKI(Buffer, Format, Data, Size, Freq, InternalFormat)
 -> cast
    ( ?alBufferWriteData_LOKI
    , <<Buffer:?ALuint
      , Format:?ALenum
      , Size:?ALsizei
      , Freq:?ALsizei
      , InternalFormat:?ALenum
      , Data:?_PTR
      >>
    )
.

%% Func:       genStreamingBuffersLOKI
%% Args:       N
%% Returns:    { Samples }
%% C-API func: void alGenStreamingBuffers_LOKI(ALsizei n, ALuint* samples)

genStreamingBuffersLOKI(N)
 -> case
      call
      ( ?alGenStreamingBuffers_LOKI
      , <<N:?ALsizei
        >>
      )
    of
      <<Samples:?ALuint
      >>
        -> { Samples }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bufferAppendDataLOKI
%% Args:       Buffer, Format, Data, Size, Freq
%% Returns:    Exdl
%% C-API func: ALsizei alBufferAppendData_LOKI(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq)

bufferAppendDataLOKI(Buffer, Format, Data, Size, Freq)
 -> case
      call
      ( ?alBufferAppendData_LOKI
      , <<Buffer:?ALuint
        , Format:?ALenum
        , Size:?ALsizei
        , Freq:?ALsizei
        , Data:?_PTR
        >>
      )
    of
      <<Exdl:?ALsizei
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bufferAppendWriteDataLOKI
%% Args:       Buffer, Format, Data, Size, Freq, InternalFormat
%% Returns:    Exdl
%% C-API func: ALsizei alBufferAppendWriteData_LOKI(ALuint buffer, ALenum format, ALvoid* data, ALsizei size, ALsizei freq, ALenum internalFormat)

bufferAppendWriteDataLOKI(Buffer, Format, Data, Size, Freq, InternalFormat)
 -> case
      call
      ( ?alBufferAppendWriteData_LOKI
      , <<Buffer:?ALuint
        , Format:?ALenum
        , Size:?ALsizei
        , Freq:?ALsizei
        , InternalFormat:?ALenum
        , Data:?_PTR
        >>
      )
    of
      <<Exdl:?ALsizei
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% binary compatibility

%% Func:       bufferAppendData
%% Args:       Buffer, Format, Data, Size, Freq
%% Returns:    ?AL_INT
%% C-API func: ALsizei alBufferAppendData(ALuint buffer, ALenum format, ALvoid *data, ALsizei size, ALsizei freq)

%bufferAppendData(Buffer, Format, Data, Size, Freq)
% -> Bin
%    = call
%      ( ?alBufferAppendData
%      , <<Buffer:?ALuint
%        , Format:?ALenum
%        , Size:?ALsizei
%        , Freq:?ALsizei
%        , Data:?_PTR
%        >>
%      )
%  , case
%      Bin
%    of
%      <<Ret:?ALsizei
%      >>
%        -> Ret
%    ; Else
%        -> erlang:error
%           ( { ?MODULE
%             , ?LINE
%             , badtype
%             , Else
%             }
%           )
%    end
%.

%% Func:       reverbScale_LOKI
%% Args:       Sid, Param
%% Returns:    ok
%% C-API func: void alReverbScale_LOKI(ALuint sid, ALfloat param)

%reverbScale_LOKI(Sid, Param)
% -> cast
%    ( ?alReverbScale_LOKI
%    , <<Sid:?ALuint
%      , Param:?ALfloat
%      >>
%    )
%.

%% Func:       reverbDelay_LOKI
%% Args:       Sid, Param
%% Returns:    ok
%% C-API func: void alReverbDelay_LOKI(ALuint sid, ALfloat param)

%reverbDelay_LOKI(Sid, Param)
% -> cast
%    ( ?alReverbDelay_LOKI
%    , <<Sid:?ALuint
%      , Param:?ALfloat
%      >>
%    )
%.

%% Capture api

%% Func:       captureInitEXT
%% Args:       Format, Rate, BufferSize
%% Returns:    Exdl
%% C-API func: ALboolean alCaptureInit_EXT(ALenum format, ALuint rate, ALsizei bufferSize)

captureInitEXT(Format, Rate, BufferSize)
 -> case
      call
      ( ?alCaptureInit_EXT
      , <<Format:?ALenum
        , Rate:?ALuint
        , BufferSize:?ALsizei
        >>
      )
    of
      <<Exdl:?ALboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       captureDestroyEXT
%% Args:       none
%% Returns:    Exdl
%% C-API func: ALboolean alCaptureDestroy_EXT(void)

captureDestroyEXT()
 -> case
      call
      ( ?alCaptureDestroy_EXT
      , [
        ]
      )
    of
      <<Exdl:?ALboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       captureStartEXT
%% Args:       none
%% Returns:    Exdl
%% C-API func: ALboolean alCaptureStart_EXT(void)

captureStartEXT()
 -> case
      call
      ( ?alCaptureStart_EXT
      , [
        ]
      )
    of
      <<Exdl:?ALboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       captureStopEXT
%% Args:       none
%% Returns:    Exdl
%% C-API func: ALboolean alCaptureStop_EXT(void)

captureStopEXT()
 -> case
      call
      ( ?alCaptureStop_EXT
      , [
        ]
      )
    of
      <<Exdl:?ALboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Non-blocking device read

%% Func:       captureGetDataEXT
%% Args:       Data, N, Format, Rate
%% Returns:    Exdl
%% C-API func: ALsizei alCaptureGetData_EXT(ALvoid* data, ALsizei n, ALenum format, ALuint rate)

captureGetDataEXT(Data, N, Format, Rate)
 -> case
      call
      ( ?alCaptureGetData_EXT
      , <<N:?ALsizei
        , Format:?ALenum
        , Rate:?ALuint
        , Data:?_PTR
        >>
      )
    of
      <<Exdl:?ALsizei
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% custom loaders

%% Func:       loadVorbisLOKI
%% Args:       Bid, Data, Size
%% Returns:    Exdl
%% C-API func: ALboolean alutLoadVorbis_LOKI(ALuint bid, const ALvoid* data, ALint size)

loadVorbisLOKI(Bid, Data, Size)
 -> case
      call
      ( ?alutLoadVorbis_LOKI
      , <<Bid:?ALuint
        , Size:?ALint
        , Data:?_PTR
        >>
      )
    of
      <<Exdl:?ALboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       loadMP3LOKI
%% Args:       Bid, Data, Size
%% Returns:    Exdl
%% C-API func: ALboolean alutLoadMP3_LOKI(ALuint bid, ALvoid* data, ALint size)

loadMP3LOKI(Bid, Data, Size)
 -> case
      call
      ( ?alutLoadMP3_LOKI
      , <<Bid:?ALuint
        , Size:?ALint
        , Data:?_PTR
        >>
      )
    of
      <<Exdl:?ALboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

-endif. % COMPILE_ALEXT
