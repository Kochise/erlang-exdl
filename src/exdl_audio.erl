%%
%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_audio.erl,v 1.2 2005/06/29 14:45:39 dgud Exp $
%%

-module(exdl_audio).

-include("exdl.hrl").

%% 0- RECORD

-record( audiop
       , { ptr	% Pointer to loaded audio data.
         , size
         }
       ).

%% 1- EXPORT

%-compile(export_all).

-export( [ audioDrivername/0
         , openAudio/2
         , closeAudio/0
         , getAudioStatus/0
         , pauseAudio/1
         , loadWAV/1
         , freeWAV/1
         , play_audio/2
         , convertAudio/3
         ]
       ).

%% 2- INCLUDE

-include("exdl_util.hrl").

-include("exdl_audio.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       audioDrivername()
%% Args:       none
%% Returns:    DriverName(String) or []
%% C-API func: char* SDL_AudioDriverName(char* namebuf, int maxlen);

audioDrivername()
 -> binary_to_list
    ( call
      ( ?SDL_AudioDriverName
      , [
        ]
      )
    )
.

%% Func:       openAudio
%% Args:       DesiredFormat (audiospec-record), ForceFormat (true | false)
%% Returns:    ObtainedFormat or exit(audio_failure) 
%% C-API func: int SDL_OpenAudio(SDL_AudioSpec* desired, SDL_AudioSpec* obtained);

openAudio(Desired, ForceFormat)
  when is_record(Desired, audiospec)
 -> FF
    = if 
        ForceFormat == true
          -> 1
      ; ForceFormat == false
          -> 0
      end
  , Res
    = call
      ( ?SDL_OpenAudio
      , <<FF:8
        , (Desired#audiospec.freq):32/unsigned
        , (Desired#audiospec.format):16/unsigned
        , (Desired#audiospec.channels):8/unsigned
        , (Desired#audiospec.samples):16/unsigned
        , (Desired#audiospec.padding):16/unsigned
        >>
      )
  , case
      Res
    of 
      <<Freq:32/unsigned
      , Format:16/unsigned
      , Chs:8/unsigned
      , Sil:8/unsigned
      , Samps:16/unsigned
      , Padding:16/unsigned
      , Size:32/unsigned
      >>
        -> #audiospec
           { freq     = Freq
           , format   = Format
           , channels = Chs
           , silence  = Sil
           , samples  = Samps
           , padding  = Padding
           , size     = Size
           }
    ; <<
      >>
        -> exit
           ( audio_failure
           )
    end
.

%% Func:       closeAudio
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_CloseAudio(void);

closeAudio()
 -> cast
    ( ?SDL_CloseAudio
    , [
      ]
    )
.

%% Func:       getAudioStatus
%% Args:       none
%% Returns:    Status
%% C-API func: SDL_audiostatus SDL_GetAudioStatus(void);

getAudioStatus()
 -> <<Res:8
    >>
    = call
      ( ?SDL_GetAudioStatus
      , [
        ]
      )
  , Res
.

%% Func:       pauseAudio
%% Args:       [true | false]
%% Returns:    ok
%% C-API func: void SDL_PauseAudio(int pause_on);

pauseAudio(true)
  -> cast
     ( ?SDL_PauseAudio
     , [ 1
       ]
     )
; pauseAudio(false)
  -> cast
     ( ?SDL_PauseAudio
     , [ 0
       ]
     )
.

%% Func:       loadWAV
%% Args:       FileName
%% Returns:    {AudioSpec, AudioBufferPtr} or exits
%% C-API func: SDL_AudioSpec* SDL_LoadWAV(char* file, SDL_AudioSpec* spec, Uint8** audio_buf,  Uint32* audio_len)

loadWAV(File)
 -> Res
    = call
      ( ?SDL_LoadWAV
      , [ File
        , 0
        ]
      )
  , case
      Res
    of 
      <<Freq:32/unsigned
      , Format:16/unsigned
      , Chs:8/unsigned
      , Sil:8/unsigned
      , Samps:16/unsigned
      , Padding:16/unsigned
      , Size:32/unsigned
      , BufferPtr:?_PTR
      , BufferLen:32/unsigned
      >>
        -> { #audiospec
              { freq     = Freq
              , format   = Format
              , channels = Chs
              , silence  = Sil
              , samples  = Samps
              , padding  = Padding
              , size     = Size}
            , #audiop
              { ptr      = BufferPtr
              , size     = BufferLen
              }
            }
    ; Else
        -> erlang:error
           ( { load_wav_failed
             , Else
             }
           )
    end
.

%% Func:       freeWAV
%% Args:       AudioWavRef
%% Returns:    ok
%% C-API func: void SDL_FreeWAV(Uint8* audio_buf);

freeWAV(#audiop{ptr=Ptr})
 -> cast
    ( ?SDL_FreeWAV
    , <<Ptr:?_PTR
      >>
    )
.

%% Func:    play_audio
%% Args:    AudioWavRef, SampleLen, Repeat (integer or infinity)
%% Returns: ok
%% Desc:    Used to start audio playing

play_audio(#audiop{ptr=Ptr, size=Size}, Repeat)
 -> R
    = if
        Repeat == infinity
          -> -1
      ; true
          -> Repeat
      end
  , <<
    >> =
      call
      ( ?PLAY_AUDIO
      , <<Ptr:?_PTR
        , Size:32/unsigned
        , R:32/signed
        >>
      )
.

%  %% Func:    buildAudioCVT
%  %% Args:    Src_format, Src_channels, Src_rate,
%  %%          Dst_format, Dst_channels, Dst_rate
%  %% Returns: CVT record
%  %% Desc:    

%% Func:       convertAudio
%% Args:       FromAudioSpec, ToAudioSpec, SampleBuffer
%% Returns:    NewBuffer or exists if conversion failed
%% C-API func: int SDL_ConvertAudio(SDL_AudioCVT* cvt);
%% Desc:       This differs from the orginal SDL function in both syntax
%%             and semantics, convertAudio handles the buildCVT and other things 
%%             SDL requires. 
%%             convertAudio converts Buffer (in 'FromAudioSpec' format) and 
%%             returns a new audio buffer (in 'ToAudioSpec' format) 
%%             Don't forget to call freeWav with old Buffer

convertAudio(FromAS, ToAS, #audiop{ptr=Ptr, size=Size})
 -> Res
    = call
      ( ?SDL_ConvertAudio
      , <<(FromAS#audiospec.format):16
        , (FromAS#audiospec.channels):8
        , (FromAS#audiospec.freq):32
        , (ToAS#audiospec.format):16
        , (ToAS#audiospec.channels):8
        , (ToAS#audiospec.freq):32
        , Ptr:?_PTR
        , Size:32
        >>
      )
  , case
      Res
    of
      <<NBufferPtr:?_PTR
      , NBufferLen:32/unsigned
      >>
        when NBufferPtr /= 0
        -> #audiop
           { ptr  = NBufferPtr
           , size = NBufferLen
           }
    ; _ -> erlang:error
           ( { error
             , Res
             }
           )
    end
.
