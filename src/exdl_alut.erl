%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_alut.erl,v 1.2 2008/11/06 07:49:22 kochise Exp $
%%

-module(exdl_alut).

-include("exdl.hrl").

-ifdef(COMPILE_ALUT).

%% 1- EXPORT

%-compile(export_all).

-export( [ init/2
         , initWithoutContext/2
         , exit/0
         , getError/0
         , getErrorString/1
         , createBufferFromFile/1
         , createBufferFromFileImage/2
         , createBufferHelloWorld/0
         , createBufferWaveform/4
         , loadMemoryFromFile/4
         , loadMemoryFromFileImage/5
         , loadMemoryHelloWorld/3
         , loadMemoryWaveform/7
         , getMIMETypes/1
         , getMajorVersion/0
         , getMinorVersion/0
         , sleep/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_al.hrl").
-include("exdl_util.hrl").

-include("exdl_alut.hrl").

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

%% Func:       init
%% Args:       Argcp, Argv
%% Returns:    Exdl
%% C-API func: ALboolean alutInit(int* argcp, char** argv)

init(Argcp, Argv)
 -> case
      call
      ( ?alutInit
      , <<Argcp:?_PTR
        , Argv:?_PTR
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

%% Func:       initWithoutContext
%% Args:       Argcp, Argv
%% Returns:    Exdl
%% C-API func: ALboolean alutInitWithoutContext(int* argcp, char** argv)

initWithoutContext(Argcp, Argv)
 -> case
      call
      ( ?alutInitWithoutContext
      , <<Argcp:?_PTR
        , Argv:?_PTR
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

%% Func:       exit
%% Args:       none
%% Returns:    Exdl
%% C-API func: ALboolean alutExit(void)

exit()
 -> case
      call
      ( ?alutExit
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

%% Func:       getError
%% Args:       none
%% Returns:    Exdl
%% C-API func: ALenum alutGetError(void)

getError()
 -> case
      call
      ( ?alutGetError
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

%% Func:       getErrorString
%% Args:       Error
%% Returns:    Exdl
%% C-API func: const char* alutGetErrorString(ALenum error)

getErrorString(Error)
 -> case
      call
      ( ?alutGetErrorString
      , <<Error:?ALenum
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

%% Func:       createBufferFromFile
%% Args:       FileName
%% Returns:    Exdl
%% C-API func: ALuint alutCreateBufferFromFile(const char* fileName)

createBufferFromFile(FileName)
 -> case
      call
      ( ?alutCreateBufferFromFile
      , <<FileName:?_PTR
        >>
      )
    of
      <<Exdl:?ALuint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createBufferFromFileImage
%% Args:       Data, Length
%% Returns:    Exdl
%% C-API func: ALuint alutCreateBufferFromFileImage(const ALvoid* data, ALsizei length)

createBufferFromFileImage(Data, Length)
 -> case
      call
      ( ?alutCreateBufferFromFileImage
      , <<Length:?ALsizei
        , Data:?_PTR
        >>
      )
    of
      <<Exdl:?ALuint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createBufferHelloWorld
%% Args:       none
%% Returns:    Exdl
%% C-API func: ALuint alutCreateBufferHelloWorld(void)

createBufferHelloWorld()
 -> case
      call
      ( ?alutCreateBufferHelloWorld
      , [
        ]
      )
    of
      <<Exdl:?ALuint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createBufferWaveform
%% Args:       Waveshape, Frequency, Phase, Duration
%% Returns:    Exdl
%% C-API func: ALuint alutCreateBufferWaveform(ALenum waveshape, ALfloat frequency, ALfloat phase, ALfloat duration)

createBufferWaveform(Waveshape, Frequency, Phase, Duration)
 -> case
      call
      ( ?alutCreateBufferWaveform
      , <<Waveshape:?ALenum
        , Frequency:?ALfloat
        , Phase:?ALfloat
        , Duration:?ALfloat
        >>
      )
    of
      <<Exdl:?ALuint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       loadMemoryFromFile
%% Args:       FileName, Format, Size, Frequency
%% Returns:    Exdl
%% C-API func: ALvoid* alutLoadMemoryFromFile(const char* fileName, ALenum* format, ALsizei* size, ALfloat* frequency)

loadMemoryFromFile(FileName, Format, Size, Frequency)
 -> case
      call
      ( ?alutLoadMemoryFromFile
      , <<FileName:?_PTR
        , Format:?_PTR
        , Size:?_PTR
        , Frequency:?_PTR
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

%% Func:       loadMemoryFromFileImage
%% Args:       Data, Length, Format, Size, Frequency
%% Returns:    Exdl
%% C-API func: ALvoid* alutLoadMemoryFromFileImage(const ALvoid* data, ALsizei length, ALenum* format, ALsizei* size, ALfloat* frequency)

loadMemoryFromFileImage(Data, Length, Format, Size, Frequency)
 -> case
      call
      ( ?alutLoadMemoryFromFileImage
      , <<Data:?_PTR
        , Length:?ALsizei
        , Format:?_PTR
        , Size:?_PTR
        , Frequency:?_PTR
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

%% Func:       loadMemoryHelloWorld
%% Args:       Format, Size, Frequency
%% Returns:    Exdl
%% C-API func: ALvoid* alutLoadMemoryHelloWorld(ALenum* format, ALsizei* size, ALfloat* frequency)

loadMemoryHelloWorld(Format, Size, Frequency)
 -> case
      call
      ( ?alutLoadMemoryHelloWorld
      , <<Format:?_PTR
        , Size:?_PTR
        , Frequency:?_PTR
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

%% Func:       loadMemoryWaveform
%% Args:       Waveshape, Frequency, Phase, Duration, Format, Size, Freq
%% Returns:    Exdl
%% C-API func: ALvoid* alutLoadMemoryWaveform(ALenum waveshape, ALfloat frequency, ALfloat phase, ALfloat duration, ALenum* format, ALsizei* size, ALfloat* freq)

loadMemoryWaveform(Waveshape, Frequency, Phase, Duration, Format, Size, Freq)
 -> case
      call
      ( ?alutLoadMemoryWaveform
      , <<Waveshape:?ALenum
        , Frequency:?ALfloat
        , Phase:?ALfloat
        , Duration:?ALfloat
        , Format:?_PTR
        , Size:?_PTR
        , Freq:?_PTR
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

%% Func:       getMIMETypes
%% Args:       Loader
%% Returns:    Exdl
%% C-API func: const char* alutGetMIMETypes(ALenum loader)

getMIMETypes(Loader)
 -> case
      call
      ( ?alutGetMIMETypes
      , <<Loader:?ALenum
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

%% Func:       getMajorVersion
%% Args:       none
%% Returns:    Exdl
%% C-API func: ALint alutGetMajorVersion(void)

getMajorVersion()
 -> case
      call
      ( ?alutGetMajorVersion
      , [
        ]
      )
    of
      <<Exdl:?ALint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getMinorVersion
%% Args:       none
%% Returns:    Exdl
%% C-API func: ALint alutGetMinorVersion(void)

getMinorVersion()
 -> case
      call
      ( ?alutGetMinorVersion
      , [
        ]
      )
    of
      <<Exdl:?ALint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       sleep
%% Args:       Duration
%% Returns:    Exdl
%% C-API func: ALboolean alutSleep(ALfloat duration)

sleep(Duration)
 -> case
      call
      ( ?alutSleep
      , <<Duration:?ALfloat
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

-endif. % COMPILE_ALUT
