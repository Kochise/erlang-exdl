%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_alc.erl,v 1.2 2008/11/06 07:49:22 kochise Exp $
%%

%%%----------------------------------------------------------------------
%%% File     : exdl_alc.erl
%%% Author   : David Koch <david.koch@libertysurf.fr>
%%% Purpose  : Implements alc (OpenAL Complementary lib)
%%% Created  : 6 Nov 2008 by David Koch <david.koch@libertysurf.fr>
%%% Modified : 
%%%----------------------------------------------------------------------

-module(exdl_alc).

-include("exdl.hrl").

-ifdef(COMPILE_AL).

%% 1- EXPORT

%-compile(export_all).

%% Context Management

-export( [ createContext/2
         , makeContextCurrent/1
         , processContext/1
         , suspendContext/1
         , destroyContext/1
         , getCurrentContext/0
         , getContextsDevice/1
         ]
       ).

%% Device Management

-export( [ openDevice/1
         , closeDevice/1
         ]
       ).

%% Error support

-export( [ getError/1
         ]
       ).

%% Extension support

-export( [ isExtensionPresent/2
         , getProcAddress/2
         , getEnumValue/2
         ]
       ).

%% Query functions

-export( [ getString/2
         , getIntegerv/3
         ]
       ).

%% Capture functions

-export( [ captureOpenDevice/4
         , captureCloseDevice/1
         , captureStart/1
         , captureStop/1
         , captureSamples/3
         ]
       ).

%% 2- INCLUDE

-include("exdl_util.hrl").

-include("exdl_alc.hrl").

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

%% Context Management

%% Func:       createContext
%% Args:       Device, Attrlist
%% Returns:    Exdl
%% C-API func: ALCcontext* alcCreateContext(ALCdevice* device, const ALCint* attrlist)

createContext(Device, Attrlist)
 -> case
      call
      ( ?alcCreateContext
      , <<Device:?_PTR
        , Attrlist:?_PTR
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

%% Func:       makeContextCurrent
%% Args:       Context
%% Returns:    Exdl
%% C-API func: ALCboolean alcMakeContextCurrent(ALCcontext* context)

makeContextCurrent(Context)
 -> case
      call
      ( ?alcMakeContextCurrent
      , <<Context:?_PTR
        >>
      )
    of
      <<Exdl:?ALCboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       processContext
%% Args:       Context
%% Returns:    ok
%% C-API func: void alcProcessContext(ALCcontext* context)

processContext(Context)
 -> cast
    ( ?alcProcessContext
    , <<Context:?_PTR
      >>
    )
.

%% Func:       suspendContext
%% Args:       Context
%% Returns:    ok
%% C-API func: void alcSuspendContext(ALCcontext* context)

suspendContext(Context)
 -> cast
    ( ?alcSuspendContext
    , <<Context:?_PTR
      >>
    )
.

%% Func:       destroyContext
%% Args:       Context
%% Returns:    ok
%% C-API func: void alcDestroyContext(ALCcontext* context)

destroyContext(Context)
 -> cast
    ( ?alcDestroyContext
    , <<Context:?_PTR
      >>
    )
.

%% Func:       getCurrentContext
%% Args:       none
%% Returns:    Exdl
%% C-API func: ALCcontext* alcGetCurrentContext(void)

getCurrentContext()
 -> case
      call
      ( ?alcGetCurrentContext
      , [
        ]
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

%% Func:       getContextsDevice
%% Args:       Context
%% Returns:    Exdl
%% C-API func: ALCdevice* alcGetContextsDevice(ALCcontext* context)

getContextsDevice(Context)
 -> case
      call
      ( ?alcGetContextsDevice
      , <<Context:?_PTR
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

%% Device Management

%% Func:       openDevice
%% Args:       Devicename
%% Returns:    Exdl
%% C-API func: ALCdevice* alcOpenDevice(const ALCchar* devicename)

openDevice(Devicename)
 -> case
      call
      ( ?alcOpenDevice
      , <<Devicename:?_PTR
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

%% Func:       closeDevice
%% Args:       Device
%% Returns:    Exdl
%% C-API func: ALCboolean alcCloseDevice(ALCdevice* device)

closeDevice(Device)
 -> case
      call
      ( ?alcCloseDevice
      , <<Device:?_PTR
        >>
      )
    of
      <<Exdl:?ALCboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Error support

%% Func:       getError
%% Args:       Device
%% Returns:    Exdl
%% C-API func: ALCenum alcGetError(ALCdevice* device)

getError(Device)
 -> case
      call
      ( ?alcGetError
      , <<Device:?_PTR
        >>
      )
    of
      <<Exdl:?ALCenum
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Extension support

%% Func:       isExtensionPresent
%% Args:       Device, Extname
%% Returns:    Exdl
%% C-API func: ALCboolean alcIsExtensionPresent(ALCdevice* device, const ALCchar* extname)

isExtensionPresent(Device, Extname)
 -> case
      call
      ( ?alcIsExtensionPresent
      , <<Device:?_PTR
        , Extname:?_PTR
        >>
      )
    of
      <<Exdl:?ALCboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getProcAddress
%% Args:       Device, Funcname
%% Returns:    Exdl
%% C-API func: void* alcGetProcAddress(ALCdevice* device, const ALCchar* funcname)

getProcAddress(Device, Funcname)
 -> case
      call
      ( ?alcGetProcAddress
      , <<Device:?_PTR
        , Funcname:?_PTR
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
%% Args:       Device, Enumname
%% Returns:    Exdl
%% C-API func: ALCenum alcGetEnumValue(ALCdevice* device, const ALCchar* enumname)

getEnumValue(Device, Enumname)
 -> case
      call
      ( ?alcGetEnumValue
      , <<Device:?_PTR
        , Enumname:?_PTR
        >>
      )
    of
      <<Exdl:?ALCenum
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Query functions

%% Func:       getString
%% Args:       Device, Param
%% Returns:    Exdl
%% C-API func: const ALCchar* alcGetString(ALCdevice* device, ALCenum param)

getString(Device, Param)
 -> case
      call
      ( ?alcGetString
      , <<Device:?_PTR
        , Param:?ALCenum
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

%% Func:       getIntegerv
%% Args:       Device, Param, Size
%% Returns:    [ Data ]
%% C-API func: void alcGetIntegerv(ALCdevice* device, ALCenum param, ALCsizei size, ALCint* data)

getIntegerv(Device, Param, Size)
 -> case
      call
      ( ?alcGetIntegerv
      , <<Device:?_PTR
        , Param:?ALCenum
        , Size:?ALCsizei
        >>
      )
    of
      <<Data:?ALCint
      >>
        -> [ Data ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Capture functions

%% Func:       captureOpenDevice
%% Args:       Devicename, Frequency, Format, Buffersize
%% Returns:    Exdl
%% C-API func: ALCdevice* alcCaptureOpenDevice(const ALCchar* devicename, ALCuint frequency, ALCenum format, ALCsizei buffersize)

captureOpenDevice(Devicename, Frequency, Format, Buffersize)
 -> case
      call
      ( ?alcCaptureOpenDevice
      , <<Devicename:?_PTR
        , Frequency:?ALCuint
        , Format:?ALCenum
        , Buffersize:?ALCsizei
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

%% Func:       captureCloseDevice
%% Args:       Device
%% Returns:    Exdl
%% C-API func: ALCboolean alcCaptureCloseDevice(ALCdevice* device)

captureCloseDevice(Device)
 -> case
      call
      ( ?alcCaptureCloseDevice
      , <<Device:?_PTR
        >>
      )
    of
      <<Exdl:?ALCboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       captureStart
%% Args:       Device
%% Returns:    ok
%% C-API func: void alcCaptureStart(ALCdevice* device)

captureStart(Device)
 -> cast
    ( ?alcCaptureStart
    , <<Device:?_PTR
      >>
    )
.

%% Func:       captureStop
%% Args:       Device
%% Returns:    ok
%% C-API func: void alcCaptureStop(ALCdevice* device)

captureStop(Device)
 -> cast
    ( ?alcCaptureStop
    , <<Device:?_PTR
      >>
    )
.

%% Func:       captureSamples
%% Args:       Device, Buffer, Samples
%% Returns:    ok
%% C-API func: void alcCaptureSamples(ALCdevice* device, ALCvoid* buffer, ALCsizei samples)

captureSamples(Device, Buffer, Samples)
 -> cast
    ( ?alcCaptureSamples
    , <<Device:?_PTR
      , Buffer:?_PTR
      , Samples:?ALCsizei
      >>
    )
.

-endif. % COMPILE_AL
