%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_audio.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_audio).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ audioInit/1
         , audioQuit/0
         , audioDriverName/2
         , openAudio/2
         , getAudioStatus/0
         , pauseAudio/1
         , loadWAVRW/5
         , freeWAV/1
         , buildAudioCVT/7
         , convertAudio/1
         , mixAudio/4
         , lockAudio/0
         , unlockAudio/0
         , closeAudio/0
         ]
       ).

%% 2- INCLUDE

-include("exdl_audio.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       audioInit
%% Args:       DriverName
%% Returns:    Exdl
%% C-API func: int SDL_AudioInit(const char* driver_name)

audioInit(DriverName)
 -> case
      call
      ( ?SDL_AudioInit
      , <<DriverName:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       audioQuit
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_AudioQuit(void)

audioQuit()
 -> cast
    ( ?SDL_AudioQuit
    , [
      ]
    )
.

%% Func:       audioDriverName
%% Args:       Namebuf, Maxlen
%% Returns:    Exdl
%% C-API func: char* SDL_AudioDriverName(char* namebuf, int maxlen)

audioDriverName(Namebuf, Maxlen)
 -> case
      call
      ( ?SDL_AudioDriverName
      , <<Namebuf:?_PTR
        , Maxlen:?Int
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

%% Func:       openAudio
%% Args:       Desired, Obtained
%% Returns:    Exdl
%% C-API func: int SDL_OpenAudio(SDL_AudioSpec* desired, SDL_AudioSpec* obtained)

openAudio(Desired, Obtained)
 -> case
      call
      ( ?SDL_OpenAudio
      , <<Desired:?_PTR
        , Obtained:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getAudioStatus
%% Args:       none
%% Returns:    Exdl
%% C-API func: SDL_audiostatus SDL_GetAudioStatus(void)

getAudioStatus()
 -> case
      call
      ( ?SDL_GetAudioStatus
      , [
        ]
      )
    of
      <<Exdl:?SDL_audiostatus
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       pauseAudio
%% Args:       PauseOn
%% Returns:    ok
%% C-API func: void SDL_PauseAudio(int pause_on)

pauseAudio(PauseOn)
 -> cast
    ( ?SDL_PauseAudio
    , <<PauseOn:?Int
      >>
    )
.

%% Func:       loadWAVRW
%% Args:       Src, Freesrc, Spec, AudioBuf, AudioLen
%% Returns:    Exdl
%% C-API func: SDL_AudioSpec* SDL_LoadWAV_RW(SDL_RWops* src, int freesrc, SDL_AudioSpec* spec, Uint8** audio_buf, Uint32* audio_len)

loadWAVRW(Src, Freesrc, Spec, AudioBuf, AudioLen)
 -> case
      call
      ( ?SDL_LoadWAV_RW
      , <<Src:?_PTR
        , Freesrc:?Int
        , Spec:?_PTR
        , AudioBuf:?_PTR
        , AudioLen:?_PTR
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

%% Func:       freeWAV
%% Args:       AudioBuf
%% Returns:    ok
%% C-API func: void SDL_FreeWAV(Uint8* audio_buf)

freeWAV(AudioBuf)
 -> cast
    ( ?SDL_FreeWAV
    , <<AudioBuf:?_PTR
      >>
    )
.

%% Func:       buildAudioCVT
%% Args:       Cvt, SrcFormat, SrcChannels, SrcRate, DstFormat, DstChannels, DstRate
%% Returns:    Exdl
%% C-API func: int SDL_BuildAudioCVT(SDL_AudioCVT* cvt, Uint16 src_format, Uint8 src_channels, int src_rate, Uint16 dst_format, Uint8 dst_channels, int dst_rate)

buildAudioCVT(Cvt, SrcFormat, SrcChannels, SrcRate, DstFormat, DstChannels, DstRate)
 -> case
      call
      ( ?SDL_BuildAudioCVT
      , <<Cvt:?_PTR
        , SrcFormat:?Uint16
        , SrcChannels:?Uint8
        , SrcRate:?Int
        , DstFormat:?Uint16
        , DstChannels:?Uint8
        , DstRate:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       convertAudio
%% Args:       Cvt
%% Returns:    Exdl
%% C-API func: int SDL_ConvertAudio(SDL_AudioCVT* cvt)

convertAudio(Cvt)
 -> case
      call
      ( ?SDL_ConvertAudio
      , <<Cvt:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       mixAudio
%% Args:       Dst, Src, Len, Volume
%% Returns:    ok
%% C-API func: void SDL_MixAudio(Uint8* dst, const Uint8* src, Uint32 len, int volume)

mixAudio(Dst, Src, Len, Volume)
 -> cast
    ( ?SDL_MixAudio
    , <<Dst:?_PTR
      , Src:?_PTR
      , Len:?Uint32
      , Volume:?Int
      >>
    )
.

%% Func:       lockAudio
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_LockAudio(void)

lockAudio()
 -> cast
    ( ?SDL_LockAudio
    , [
      ]
    )
.

%% Func:       unlockAudio
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_UnlockAudio(void)

unlockAudio()
 -> cast
    ( ?SDL_UnlockAudio
    , [
      ]
    )
.

%% Func:       closeAudio
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_CloseAudio(void)

closeAudio()
 -> cast
    ( ?SDL_CloseAudio
    , [
      ]
    )
.

