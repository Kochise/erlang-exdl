%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_al.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_al).

-include("exdl.hrl").

-ifdef(COMPILE_AL).

%% 1- EXPORT

%-compile(export_all).

%% Renderer State management

-export( [ enable/1
         , disable/1
         , isEnabled/1
         ]
       ).

%% State retrieval

-export( [ getString/1
         , getBooleanv/1
         , getIntegerv/1
         , getFloatv/1
         , getDoublev/1
         , getBoolean/1
         , getInteger/1
         , getFloat/1
         , getDouble/1
         ]
       ).

%% Error support

-export( [ getError/0
         ]
       ).

%% Extension support

-export( [ isExtensionPresent/1
         , getProcAddress/1
         , getEnumValue/1
         ]
       ).

%% Set Listener parameters

-export( [ listenerf/2
         , listener3f/4
         , listenerfv/2
         , listeneri/2
         , listener3i/4
         , listeneriv/2
         ]
       ).

%% Get Listener parameters

-export( [ getListenerf/1
         , getListener3f/1
         , getListenerfv/1
         , getListeneri/1
         , getListener3i/1
         , getListeneriv/1
         ]
       ).

%% Create Source objects

-export( [ genSources/1
         , deleteSources/2
         , isSource/1
         ]
       ).

%% Set Source parameters

-export( [ sourcef/3
         , source3f/5
         , sourcefv/3
         , sourcei/3
         , source3i/5
         , sourceiv/3
         ]
       ).

%% Get Source parameters

-export( [ getSourcef/2
         , getSource3f/2
         , getSourcefv/2
         , getSourcei/2
         , getSource3i/2
         , getSourceiv/2
         ]
       ).

%% Source vector based playback calls

-export( [ sourcePlayv/2
         , sourceStopv/2
         , sourceRewindv/2
         , sourcePausev/2
         ]
       ).

%% Source based playback calls

-export( [ sourcePlay/1
         , sourceStop/1
         , sourceRewind/1
         , sourcePause/1
         ]
       ).

%% Source Queuing

-export( [ sourceQueueBuffers/3
         , sourceUnqueueBuffers/3
         ]
       ).

%% Create Buffer objects

-export( [ genBuffers/1
         , deleteBuffers/2
         , isBuffer/1
         , bufferData/5
         ]
       ).

%% Set Buffer parameters

-export( [ bufferf/3
         , buffer3f/5
         , bufferfv/3
         , bufferi/3
         , buffer3i/5
         , bufferiv/3
         ]
       ).

%% Get Buffer parameters

-export( [ getBufferf/2
         , getBuffer3f/2
         , getBufferfv/2
         , getBufferi/2
         , getBuffer3i/2
         , getBufferiv/2
         ]
       ).

%% Global Parameters

-export( [ dopplerFactor/1
         , dopplerVelocity/1
         , speedOfSound/1
         , distanceModel/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_al.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Renderer State management

%% Func:       enable
%% Args:       Capability
%% Returns:    ok
%% C-API func: void alEnable(ALenum capability)

enable(Capability)
 -> cast
    ( ?alEnable
    , <<Capability:?ALenum
      >>
    )
.

%% Func:       disable
%% Args:       Capability
%% Returns:    ok
%% C-API func: void alDisable(ALenum capability)

disable(Capability)
 -> cast
    ( ?alDisable
    , <<Capability:?ALenum
      >>
    )
.

%% Func:       isEnabled
%% Args:       Capability
%% Returns:    Exdl
%% C-API func: ALboolean alIsEnabled(ALenum capability)

isEnabled(Capability)
 -> case
      call
      ( ?alIsEnabled
      , <<Capability:?ALenum
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

%% State retrieval

%% Func:       getString
%% Args:       Param
%% Returns:    Exdl
%% C-API func: const ALchar* alGetString(ALenum param)

getString(Param)
 -> case
      call
      ( ?alGetString
      , <<Param:?ALenum
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?String
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getBooleanv
%% Args:       Param
%% Returns:    [ Data ]
%% C-API func: void alGetBooleanv(ALenum param, ALboolean* data)

getBooleanv(Param)
 -> case
      call
      ( ?alGetBooleanv
      , <<Param:?ALenum
        >>
      )
    of
      <<Data:?ALboolean
      >>
        -> [ Data ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getIntegerv
%% Args:       Param
%% Returns:    [ Data ]
%% C-API func: void alGetIntegerv(ALenum param, ALint* data)

getIntegerv(Param)
 -> case
      call
      ( ?alGetIntegerv
      , <<Param:?ALenum
        >>
      )
    of
      <<Data:?ALint
      >>
        -> [ Data ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getFloatv
%% Args:       Param
%% Returns:    [ Data ]
%% C-API func: void alGetFloatv(ALenum param, ALfloat* data)

getFloatv(Param)
 -> case
      call
      ( ?alGetFloatv
      , <<Param:?ALenum
        >>
      )
    of
      <<Data:?ALfloat
      >>
        -> [ Data ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getDoublev
%% Args:       Param
%% Returns:    [ Data ]
%% C-API func: void alGetDoublev(ALenum param, ALdouble* data)

getDoublev(Param)
 -> case
      call
      ( ?alGetDoublev
      , <<Param:?ALenum
        >>
      )
    of
      <<Data:?ALdouble
      >>
        -> [ Data ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getBoolean
%% Args:       Param
%% Returns:    Exdl
%% C-API func: ALboolean alGetBoolean(ALenum param)

getBoolean(Param)
 -> case
      call
      ( ?alGetBoolean
      , <<Param:?ALenum
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

%% Func:       getInteger
%% Args:       Param
%% Returns:    Exdl
%% C-API func: ALint alGetInteger(ALenum param)

getInteger(Param)
 -> case
      call
      ( ?alGetInteger
      , <<Param:?ALenum
        >>
      )
    of
      <<Exdl:?ALint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getFloat
%% Args:       Param
%% Returns:    Exdl
%% C-API func: ALfloat alGetFloat(ALenum param)

getFloat(Param)
 -> case
      call
      ( ?alGetFloat
      , <<Param:?ALenum
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

%% Func:       getDouble
%% Args:       Param
%% Returns:    Exdl
%% C-API func: ALdouble alGetDouble(ALenum param)

getDouble(Param)
 -> case
      call
      ( ?alGetDouble
      , <<Param:?ALenum
        >>
      )
    of
      <<Exdl:?ALdouble
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Error support

%% Func:       getError
%% Args:       none
%% Returns:    Exdl
%% C-API func: ALenum alGetError(void)

getError()
 -> case
      call
      ( ?alGetError
      , [
        ]
      )
    of
      <<Exdl:?ALenum
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Extension support

%% Func:       isExtensionPresent
%% Args:       Extname
%% Returns:    Exdl
%% C-API func: ALboolean alIsExtensionPresent(const ALchar* extname)

isExtensionPresent(Extname)
 -> case
      call
      ( ?alIsExtensionPresent
      , <<Extname:?_PTR
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

%% Func:       getProcAddress
%% Args:       Fname
%% Returns:    Exdl
%% C-API func: void* alGetProcAddress(const ALchar* fname)

getProcAddress(Fname)
 -> case
      call
      ( ?alGetProcAddress
      , <<Fname:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getEnumValue
%% Args:       Ename
%% Returns:    Exdl
%% C-API func: ALenum alGetEnumValue(const ALchar* ename)

getEnumValue(Ename)
 -> case
      call
      ( ?alGetEnumValue
      , <<Ename:?_PTR
        >>
      )
    of
      <<Exdl:?ALenum
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Set Listener parameters

%% Func:       listenerf
%% Args:       Param, Value
%% Returns:    ok
%% C-API func: void alListenerf(ALenum param, ALfloat value)

listenerf(Param, Value)
 -> cast
    ( ?alListenerf
    , <<Param:?ALenum
      , Value:?ALfloat
      >>
    )
.

%% Func:       listener3f
%% Args:       Param, Value1, Value2, Value3
%% Returns:    ok
%% C-API func: void alListener3f(ALenum param, ALfloat value1, ALfloat value2, ALfloat value3)

listener3f(Param, Value1, Value2, Value3)
 -> cast
    ( ?alListener3f
    , <<Param:?ALenum
      , Value1:?ALfloat
      , Value2:?ALfloat
      , Value3:?ALfloat
      >>
    )
.

%% Func:       listenerfv
%% Args:       Param, Values
%% Returns:    ok
%% C-API func: void alListenerfv(ALenum param, const ALfloat* values)

listenerfv(Param, Values)
 -> cast
    ( ?alListenerfv
    , <<Param:?ALenum
      , Values:?_PTR
      >>
    )
.

%% Func:       listeneri
%% Args:       Param, Value
%% Returns:    ok
%% C-API func: void alListeneri(ALenum param, ALint value)

listeneri(Param, Value)
 -> cast
    ( ?alListeneri
    , <<Param:?ALenum
      , Value:?ALint
      >>
    )
.

%% Func:       listener3i
%% Args:       Param, Value1, Value2, Value3
%% Returns:    ok
%% C-API func: void alListener3i(ALenum param, ALint value1, ALint value2, ALint value3)

listener3i(Param, Value1, Value2, Value3)
 -> cast
    ( ?alListener3i
    , <<Param:?ALenum
      , Value1:?ALint
      , Value2:?ALint
      , Value3:?ALint
      >>
    )
.

%% Func:       listeneriv
%% Args:       Param, Values
%% Returns:    ok
%% C-API func: void alListeneriv(ALenum param, const ALint* values)

listeneriv(Param, Values)
 -> cast
    ( ?alListeneriv
    , <<Param:?ALenum
      , Values:?_PTR
      >>
    )
.

%% Get Listener parameters

%% Func:       getListenerf
%% Args:       Param
%% Returns:    { Value }
%% C-API func: void alGetListenerf(ALenum param, ALfloat* value)

getListenerf(Param)
 -> case
      call
      ( ?alGetListenerf
      , <<Param:?ALenum
        >>
      )
    of
      <<Value:?ALfloat
      >>
        -> { Value }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getListener3f
%% Args:       Param
%% Returns:    { Value1, Value2, Value3 }
%% C-API func: void alGetListener3f(ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3)

getListener3f(Param)
 -> case
      call
      ( ?alGetListener3f
      , <<Param:?ALenum
        >>
      )
    of
      <<Value1:?ALfloat
      , Value2:?ALfloat
      , Value3:?ALfloat
      >>
        -> { Value1, Value2, Value3 }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getListenerfv
%% Args:       Param
%% Returns:    [ Values ]
%% C-API func: void alGetListenerfv(ALenum param, ALfloat* values)

getListenerfv(Param)
 -> case
      call
      ( ?alGetListenerfv
      , <<Param:?ALenum
        >>
      )
    of
      <<Values:?ALfloat
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getListeneri
%% Args:       Param
%% Returns:    { Value }
%% C-API func: void alGetListeneri(ALenum param, ALint* value)

getListeneri(Param)
 -> case
      call
      ( ?alGetListeneri
      , <<Param:?ALenum
        >>
      )
    of
      <<Value:?ALint
      >>
        -> { Value }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getListener3i
%% Args:       Param
%% Returns:    { Value1, Value2, Value3 }
%% C-API func: void alGetListener3i(ALenum param, ALint* value1, ALint* value2, ALint* value3)

getListener3i(Param)
 -> case
      call
      ( ?alGetListener3i
      , <<Param:?ALenum
        >>
      )
    of
      <<Value1:?ALint
      , Value2:?ALint
      , Value3:?ALint
      >>
        -> { Value1, Value2, Value3 }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getListeneriv
%% Args:       Param
%% Returns:    [ Values ]
%% C-API func: void alGetListeneriv(ALenum param, ALint* values)

getListeneriv(Param)
 -> case
      call
      ( ?alGetListeneriv
      , <<Param:?ALenum
        >>
      )
    of
      <<Values:?ALint
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Create Source objects

%% Func:       genSources
%% Args:       N
%% Returns:    { Sources }
%% C-API func: void alGenSources(ALsizei n, ALuint* sources)

genSources(N)
 -> case
      call
      ( ?alGenSources
      , <<N:?ALsizei
        >>
      )
    of
      <<Sources:?ALuint
      >>
        -> { Sources }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       deleteSources
%% Args:       N, Sources
%% Returns:    ok
%% C-API func: void alDeleteSources(ALsizei n, const ALuint* sources)

deleteSources(N, Sources)
 -> cast
    ( ?alDeleteSources
    , <<N:?ALsizei
      , Sources:?_PTR
      >>
    )
.

%% Func:       isSource
%% Args:       Sid
%% Returns:    Exdl
%% C-API func: ALboolean alIsSource(ALuint sid)

isSource(Sid)
 -> case
      call
      ( ?alIsSource
      , <<Sid:?ALuint
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

%% Set Source parameters

%% Func:       sourcef
%% Args:       Sid, Param, Value
%% Returns:    ok
%% C-API func: void alSourcef(ALuint sid, ALenum param, ALfloat value)

sourcef(Sid, Param, Value)
 -> cast
    ( ?alSourcef
    , <<Sid:?ALuint
      , Param:?ALenum
      , Value:?ALfloat
      >>
    )
.

%% Func:       source3f
%% Args:       Sid, Param, Value1, Value2, Value3
%% Returns:    ok
%% C-API func: void alSource3f(ALuint sid, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3)

source3f(Sid, Param, Value1, Value2, Value3)
 -> cast
    ( ?alSource3f
    , <<Sid:?ALuint
      , Param:?ALenum
      , Value1:?ALfloat
      , Value2:?ALfloat
      , Value3:?ALfloat
      >>
    )
.

%% Func:       sourcefv
%% Args:       Sid, Param, Values
%% Returns:    ok
%% C-API func: void alSourcefv(ALuint sid, ALenum param, const ALfloat* values)

sourcefv(Sid, Param, Values)
 -> cast
    ( ?alSourcefv
    , <<Sid:?ALuint
      , Param:?ALenum
      , Values:?_PTR
      >>
    )
.

%% Func:       sourcei
%% Args:       Sid, Param, Value
%% Returns:    ok
%% C-API func: void alSourcei(ALuint sid, ALenum param, ALint value)

sourcei(Sid, Param, Value)
 -> cast
    ( ?alSourcei
    , <<Sid:?ALuint
      , Param:?ALenum
      , Value:?ALint
      >>
    )
.

%% Func:       source3i
%% Args:       Sid, Param, Value1, Value2, Value3
%% Returns:    ok
%% C-API func: void alSource3i(ALuint sid, ALenum param, ALint value1, ALint value2, ALint value3)

source3i(Sid, Param, Value1, Value2, Value3)
 -> cast
    ( ?alSource3i
    , <<Sid:?ALuint
      , Param:?ALenum
      , Value1:?ALint
      , Value2:?ALint
      , Value3:?ALint
      >>
    )
.

%% Func:       sourceiv
%% Args:       Sid, Param, Values
%% Returns:    ok
%% C-API func: void alSourceiv(ALuint sid, ALenum param, const ALint* values)

sourceiv(Sid, Param, Values)
 -> cast
    ( ?alSourceiv
    , <<Sid:?ALuint
      , Param:?ALenum
      , Values:?_PTR
      >>
    )
.

%% Get Source parameters

%% Func:       getSourcef
%% Args:       Sid, Param
%% Returns:    { Value }
%% C-API func: void alGetSourcef(ALuint sid, ALenum param, ALfloat* value)

getSourcef(Sid, Param)
 -> case
      call
      ( ?alGetSourcef
      , <<Sid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Value:?ALfloat
      >>
        -> { Value }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getSource3f
%% Args:       Sid, Param
%% Returns:    { Value1, Value2, Value3 }
%% C-API func: void alGetSource3f(ALuint sid, ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3)

getSource3f(Sid, Param)
 -> case
      call
      ( ?alGetSource3f
      , <<Sid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Value1:?ALfloat
      , Value2:?ALfloat
      , Value3:?ALfloat
      >>
        -> { Value1, Value2, Value3 }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getSourcefv
%% Args:       Sid, Param
%% Returns:    [ Values ]
%% C-API func: void alGetSourcefv(ALuint sid, ALenum param, ALfloat* values)

getSourcefv(Sid, Param)
 -> case
      call
      ( ?alGetSourcefv
      , <<Sid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Values:?ALfloat
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getSourcei
%% Args:       Sid, Param
%% Returns:    { Value }
%% C-API func: void alGetSourcei(ALuint sid, ALenum param, ALint* value)

getSourcei(Sid, Param)
 -> case
      call
      ( ?alGetSourcei
      , <<Sid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Value:?ALint
      >>
        -> { Value }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getSource3i
%% Args:       Sid, Param
%% Returns:    { Value1, Value2, Value3 }
%% C-API func: void alGetSource3i(ALuint sid, ALenum param, ALint* value1, ALint* value2, ALint* value3)

getSource3i(Sid, Param)
 -> case
      call
      ( ?alGetSource3i
      , <<Sid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Value1:?ALint
      , Value2:?ALint
      , Value3:?ALint
      >>
        -> { Value1, Value2, Value3 }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getSourceiv
%% Args:       Sid, Param
%% Returns:    [ Values ]
%% C-API func: void alGetSourceiv(ALuint sid, ALenum param, ALint* values)

getSourceiv(Sid, Param)
 -> case
      call
      ( ?alGetSourceiv
      , <<Sid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Values:?ALint
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Source vector based playback calls

%% Func:       sourcePlayv
%% Args:       Ns, Sids
%% Returns:    ok
%% C-API func: void alSourcePlayv(ALsizei ns, const ALuint* sids)

sourcePlayv(Ns, Sids)
 -> cast
    ( ?alSourcePlayv
    , <<Ns:?ALsizei
      , Sids:?_PTR
      >>
    )
.

%% Func:       sourceStopv
%% Args:       Ns, Sids
%% Returns:    ok
%% C-API func: void alSourceStopv(ALsizei ns, const ALuint* sids)

sourceStopv(Ns, Sids)
 -> cast
    ( ?alSourceStopv
    , <<Ns:?ALsizei
      , Sids:?_PTR
      >>
    )
.

%% Func:       sourceRewindv
%% Args:       Ns, Sids
%% Returns:    ok
%% C-API func: void alSourceRewindv(ALsizei ns, const ALuint* sids)

sourceRewindv(Ns, Sids)
 -> cast
    ( ?alSourceRewindv
    , <<Ns:?ALsizei
      , Sids:?_PTR
      >>
    )
.

%% Func:       sourcePausev
%% Args:       Ns, Sids
%% Returns:    ok
%% C-API func: void alSourcePausev(ALsizei ns, const ALuint* sids)

sourcePausev(Ns, Sids)
 -> cast
    ( ?alSourcePausev
    , <<Ns:?ALsizei
      , Sids:?_PTR
      >>
    )
.

%% Source based playback calls

%% Func:       sourcePlay
%% Args:       Sid
%% Returns:    ok
%% C-API func: void alSourcePlay(ALuint sid)

sourcePlay(Sid)
 -> cast
    ( ?alSourcePlay
    , <<Sid:?ALuint
      >>
    )
.

%% Func:       sourceStop
%% Args:       Sid
%% Returns:    ok
%% C-API func: void alSourceStop(ALuint sid)

sourceStop(Sid)
 -> cast
    ( ?alSourceStop
    , <<Sid:?ALuint
      >>
    )
.

%% Func:       sourceRewind
%% Args:       Sid
%% Returns:    ok
%% C-API func: void alSourceRewind(ALuint sid)

sourceRewind(Sid)
 -> cast
    ( ?alSourceRewind
    , <<Sid:?ALuint
      >>
    )
.

%% Func:       sourcePause
%% Args:       Sid
%% Returns:    ok
%% C-API func: void alSourcePause(ALuint sid)

sourcePause(Sid)
 -> cast
    ( ?alSourcePause
    , <<Sid:?ALuint
      >>
    )
.

%% Source Queuing

%% Func:       sourceQueueBuffers
%% Args:       Sid, NumEntries, Bids
%% Returns:    ok
%% C-API func: void alSourceQueueBuffers(ALuint sid, ALsizei numEntries, const ALuint* bids)

sourceQueueBuffers(Sid, NumEntries, Bids)
 -> cast
    ( ?alSourceQueueBuffers
    , <<Sid:?ALuint
      , NumEntries:?ALsizei
      , Bids:?_PTR
      >>
    )
.

%% Func:       sourceUnqueueBuffers
%% Args:       Sid, NumEntries, Bids
%% Returns:    ok
%% C-API func: void alSourceUnqueueBuffers(ALuint sid, ALsizei numEntries, ALuint* bids)

sourceUnqueueBuffers(Sid, NumEntries, Bids)
 -> cast
    ( ?alSourceUnqueueBuffers
    , <<Sid:?ALuint
      , NumEntries:?ALsizei
      , Bids:?_PTR
      >>
    )
.

%% Create Buffer objects

%% Func:       genBuffers
%% Args:       N
%% Returns:    { Buffers }
%% C-API func: void alGenBuffers(ALsizei n, ALuint* buffers)

genBuffers(N)
 -> case
      call
      ( ?alGenBuffers
      , <<N:?ALsizei
        >>
      )
    of
      <<Buffers:?ALuint
      >>
        -> { Buffers }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       deleteBuffers
%% Args:       N, Buffers
%% Returns:    ok
%% C-API func: void alDeleteBuffers(ALsizei n, const ALuint* buffers)

deleteBuffers(N, Buffers)
 -> cast
    ( ?alDeleteBuffers
    , <<N:?ALsizei
      , Buffers:?_PTR
      >>
    )
.

%% Func:       isBuffer
%% Args:       Bid
%% Returns:    Exdl
%% C-API func: ALboolean alIsBuffer(ALuint bid)

isBuffer(Bid)
 -> case
      call
      ( ?alIsBuffer
      , <<Bid:?ALuint
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

%% Func:       bufferData
%% Args:       Bid, Format, Data, Size, Freq
%% Returns:    ok
%% C-API func: void alBufferData(ALuint bid, ALenum format, const ALvoid* data, ALsizei size, ALsizei freq)

bufferData(Bid, Format, Data, Size, Freq)
 -> cast
    ( ?alBufferData
    , <<Bid:?ALuint
      , Format:?ALenum
      , Data:?_PTR
      , Size:?ALsizei
      , Freq:?ALsizei
      >>
    )
.

%% Set Buffer parameters

%% Func:       bufferf
%% Args:       Bid, Param, Value
%% Returns:    ok
%% C-API func: void alBufferf(ALuint bid, ALenum param, ALfloat value)

bufferf(Bid, Param, Value)
 -> cast
    ( ?alBufferf
    , <<Bid:?ALuint
      , Param:?ALenum
      , Value:?ALfloat
      >>
    )
.

%% Func:       buffer3f
%% Args:       Bid, Param, Value1, Value2, Value3
%% Returns:    ok
%% C-API func: void alBuffer3f(ALuint bid, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3)

buffer3f(Bid, Param, Value1, Value2, Value3)
 -> cast
    ( ?alBuffer3f
    , <<Bid:?ALuint
      , Param:?ALenum
      , Value1:?ALfloat
      , Value2:?ALfloat
      , Value3:?ALfloat
      >>
    )
.

%% Func:       bufferfv
%% Args:       Bid, Param, Values
%% Returns:    ok
%% C-API func: void alBufferfv(ALuint bid, ALenum param, const ALfloat* values)

bufferfv(Bid, Param, Values)
 -> cast
    ( ?alBufferfv
    , <<Bid:?ALuint
      , Param:?ALenum
      , Values:?_PTR
      >>
    )
.

%% Func:       bufferi
%% Args:       Bid, Param, Value
%% Returns:    ok
%% C-API func: void alBufferi(ALuint bid, ALenum param, ALint value)

bufferi(Bid, Param, Value)
 -> cast
    ( ?alBufferi
    , <<Bid:?ALuint
      , Param:?ALenum
      , Value:?ALint
      >>
    )
.

%% Func:       buffer3i
%% Args:       Bid, Param, Value1, Value2, Value3
%% Returns:    ok
%% C-API func: void alBuffer3i(ALuint bid, ALenum param, ALint value1, ALint value2, ALint value3)

buffer3i(Bid, Param, Value1, Value2, Value3)
 -> cast
    ( ?alBuffer3i
    , <<Bid:?ALuint
      , Param:?ALenum
      , Value1:?ALint
      , Value2:?ALint
      , Value3:?ALint
      >>
    )
.

%% Func:       bufferiv
%% Args:       Bid, Param, Values
%% Returns:    ok
%% C-API func: void alBufferiv(ALuint bid, ALenum param, const ALint* values)

bufferiv(Bid, Param, Values)
 -> cast
    ( ?alBufferiv
    , <<Bid:?ALuint
      , Param:?ALenum
      , Values:?_PTR
      >>
    )
.

%% Get Buffer parameters

%% Func:       getBufferf
%% Args:       Bid, Param
%% Returns:    { Value }
%% C-API func: void alGetBufferf(ALuint bid, ALenum param, ALfloat* value)

getBufferf(Bid, Param)
 -> case
      call
      ( ?alGetBufferf
      , <<Bid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Value:?ALfloat
      >>
        -> { Value }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getBuffer3f
%% Args:       Bid, Param
%% Returns:    { Value1, Value2, Value3 }
%% C-API func: void alGetBuffer3f(ALuint bid, ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3)

getBuffer3f(Bid, Param)
 -> case
      call
      ( ?alGetBuffer3f
      , <<Bid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Value1:?ALfloat
      , Value2:?ALfloat
      , Value3:?ALfloat
      >>
        -> { Value1, Value2, Value3 }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getBufferfv
%% Args:       Bid, Param
%% Returns:    [ Values ]
%% C-API func: void alGetBufferfv(ALuint bid, ALenum param, ALfloat* values)

getBufferfv(Bid, Param)
 -> case
      call
      ( ?alGetBufferfv
      , <<Bid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Values:?ALfloat
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getBufferi
%% Args:       Bid, Param
%% Returns:    { Value }
%% C-API func: void alGetBufferi(ALuint bid, ALenum param, ALint* value)

getBufferi(Bid, Param)
 -> case
      call
      ( ?alGetBufferi
      , <<Bid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Value:?ALint
      >>
        -> { Value }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getBuffer3i
%% Args:       Bid, Param
%% Returns:    { Value1, Value2, Value3 }
%% C-API func: void alGetBuffer3i(ALuint bid, ALenum param, ALint* value1, ALint* value2, ALint* value3)

getBuffer3i(Bid, Param)
 -> case
      call
      ( ?alGetBuffer3i
      , <<Bid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Value1:?ALint
      , Value2:?ALint
      , Value3:?ALint
      >>
        -> { Value1, Value2, Value3 }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getBufferiv
%% Args:       Bid, Param
%% Returns:    [ Values ]
%% C-API func: void alGetBufferiv(ALuint bid, ALenum param, ALint* values)

getBufferiv(Bid, Param)
 -> case
      call
      ( ?alGetBufferiv
      , <<Bid:?ALuint
        , Param:?ALenum
        >>
      )
    of
      <<Values:?ALint
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Global Parameters

%% Func:       dopplerFactor
%% Args:       Value
%% Returns:    ok
%% C-API func: void alDopplerFactor(ALfloat value)

dopplerFactor(Value)
 -> cast
    ( ?alDopplerFactor
    , <<Value:?ALfloat
      >>
    )
.

%% Func:       dopplerVelocity
%% Args:       Value
%% Returns:    ok
%% C-API func: void alDopplerVelocity(ALfloat value)

dopplerVelocity(Value)
 -> cast
    ( ?alDopplerVelocity
    , <<Value:?ALfloat
      >>
    )
.

%% Func:       speedOfSound
%% Args:       Value
%% Returns:    ok
%% C-API func: void alSpeedOfSound(ALfloat value)

speedOfSound(Value)
 -> cast
    ( ?alSpeedOfSound
    , <<Value:?ALfloat
      >>
    )
.

%% Func:       distanceModel
%% Args:       DistanceModel
%% Returns:    ok
%% C-API func: void alDistanceModel(ALenum distanceModel)

distanceModel(DistanceModel)
 -> cast
    ( ?alDistanceModel
    , <<DistanceModel:?ALenum
      >>
    )
.


-endif. % COMPILE_AL
