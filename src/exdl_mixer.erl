%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_mixer.erl,v 1.0 2008/12/30 07:46:20 kochise Exp $
%%

-module(exdl_mixer).

-include("exdl.hrl").

-ifdef(COMPILE_MIXER).

%% 1- EXPORT

%-compile(export_all).

-export( [ linkedVersion/0
         , init/1
         , quit/0
         , openAudio/4
         , allocateChannels/1
         , querySpec/3
         , loadWAVRW/2
         , loadMUS/1
         , loadMUSRW/1
         , quickLoadWAV/1
         , quickLoadRAW/2
         , freeChunk/1
         , freeMusic/1
         , getNumChunkDecoders/0
         , getChunkDecoder/1
         , getNumMusicDecoders/0
         , getMusicDecoder/1
         , getMusicType/1
         , setPostMix/4
         , hookMusic/4
         , hookMusicFinished/1
         , getMusicHookData/0
         , channelFinished/1
         , registerEffect/4
         , unregisterEffect/2
         , unregisterAllEffects/1
         , setPanning/3
         , setPosition/3
         , setDistance/2
%        , setReverb/2
         , setReverseStereo/2
         , reserveChannels/1
         , groupChannel/2
         , groupChannels/3
         , groupAvailable/1
         , groupCount/1
         , groupOldest/1
         , groupNewer/1
         , playChannelTimed/4
         , playMusic/2
         , fadeInMusic/3
         , fadeInMusicPos/4
         , fadeInChannelTimed/5
         , volume/2
         , volumeChunk/2
         , volumeMusic/1
         , haltChannel/1
         , haltGroup/1
         , haltMusic/0
         , expireChannel/2
         , fadeOutChannel/2
         , fadeOutGroup/2
         , fadeOutMusic/1
         , fadingMusic/0
         , fadingChannel/1
         , pause/1
         , resume/1
         , paused/1
         , pauseMusic/0
         , resumeMusic/0
         , rewindMusic/0
         , pausedMusic/0
         , setMusicPosition/1
         , playing/1
         , playingMusic/0
         , setMusicCMD/1
         , setSynchroValue/1
         , getSynchroValue/0
         , getChunk/1
         , closeAudio/0
         ]
       ).

%% 2- INCLUDE

-include("exdl_mixer.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       linkedVersion
%% Args:       none
%% Returns:    Exdl
%% C-API func: const SDL_version* Mix_Linked_Version(void)

linkedVersion()
 -> case
      call
      ( ?Mix_Linked_Version
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

%% Func:       init
%% Args:       Flags
%% Returns:    Exdl
%% C-API func: int Mix_Init(int flags)

init(Flags)
 -> case
      call
      ( ?Mix_Init
      , <<Flags:?Int
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

%% Func:       quit
%% Args:       none
%% Returns:    ok
%% C-API func: void Mix_Quit(void)

quit()
 -> cast
    ( ?Mix_Quit
    , [
      ]
    )
.

%% Func:       openAudio
%% Args:       Frequency, Format, Channels, Chunksize
%% Returns:    Exdl
%% C-API func: int Mix_OpenAudio(int frequency, Uint16 format, int channels, int chunksize)

openAudio(Frequency, Format, Channels, Chunksize)
 -> case
      call
      ( ?Mix_OpenAudio
      , <<Frequency:?Int
        , Format:?Uint16
        , Channels:?Int
        , Chunksize:?Int
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

%% Func:       allocateChannels
%% Args:       Numchans
%% Returns:    Exdl
%% C-API func: int Mix_AllocateChannels(int numchans)

allocateChannels(Numchans)
 -> case
      call
      ( ?Mix_AllocateChannels
      , <<Numchans:?Int
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

%% Func:       querySpec
%% Args:       Frequency, Format, Channels
%% Returns:    Exdl
%% C-API func: int Mix_QuerySpec(int* frequency, Uint16* format, int* channels)

querySpec(Frequency, Format, Channels)
 -> case
      call
      ( ?Mix_QuerySpec
      , <<Frequency:?_PTR
        , Format:?_PTR
        , Channels:?_PTR
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

%% Func:       loadWAVRW
%% Args:       Src, Freesrc
%% Returns:    Exdl
%% C-API func: Mix_Chunk* Mix_LoadWAV_RW(SDL_RWops* src, int freesrc)

loadWAVRW(Src, Freesrc)
 -> case
      call
      ( ?Mix_LoadWAV_RW
      , <<Src:?_PTR
        , Freesrc:?Int
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

%#define Mix_LoadWAV(file)
%    Mix_LoadWAV_RW(SDL_RWFromFile(file, "rb"), 1)

%% Func:       loadMUS
%% Args:       File
%% Returns:    Exdl
%% C-API func: Mix_Music* Mix_LoadMUS(const char* file)

loadMUS(File)
 -> case
      call
      ( ?Mix_LoadMUS
      , <<File:?_PTR
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

%% Func:       loadMUSRW
%% Args:       Rw
%% Returns:    Exdl
%% C-API func: Mix_Music* Mix_LoadMUS_RW(SDL_RWops* rw)

loadMUSRW(Rw)
 -> case
      call
      ( ?Mix_LoadMUS_RW
      , <<Rw:?_PTR
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

%% Func:       quickLoadWAV
%% Args:       Mem
%% Returns:    Exdl
%% C-API func: Mix_Chunk* Mix_QuickLoad_WAV(Uint8* mem)

quickLoadWAV(Mem)
 -> case
      call
      ( ?Mix_QuickLoad_WAV
      , <<Mem:?_PTR
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

%% Func:       quickLoadRAW
%% Args:       Mem, Len
%% Returns:    Exdl
%% C-API func: Mix_Chunk* Mix_QuickLoad_RAW(Uint8* mem, Uint32 len)

quickLoadRAW(Mem, Len)
 -> case
      call
      ( ?Mix_QuickLoad_RAW
      , <<Mem:?_PTR
        , Len:?Uint32
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

%% Func:       freeChunk
%% Args:       Chunk
%% Returns:    ok
%% C-API func: void Mix_FreeChunk(Mix_Chunk* chunk)

freeChunk(Chunk)
 -> cast
    ( ?Mix_FreeChunk
    , <<Chunk:?_PTR
      >>
    )
.

%% Func:       freeMusic
%% Args:       Music
%% Returns:    ok
%% C-API func: void Mix_FreeMusic(Mix_Music* music)

freeMusic(Music)
 -> cast
    ( ?Mix_FreeMusic
    , <<Music:?_PTR
      >>
    )
.

%% Func:       getNumChunkDecoders
%% Args:       none
%% Returns:    Exdl
%% C-API func: int Mix_GetNumChunkDecoders(void)

getNumChunkDecoders()
 -> case
      call
      ( ?Mix_GetNumChunkDecoders
      , [
        ]
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getChunkDecoder
%% Args:       Index
%% Returns:    Exdl
%% C-API func: const char* Mix_GetChunkDecoder(int index)

getChunkDecoder(Index)
 -> case
      call
      ( ?Mix_GetChunkDecoder
      , <<Index:?Int
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

%% Func:       getNumMusicDecoders
%% Args:       none
%% Returns:    Exdl
%% C-API func: int Mix_GetNumMusicDecoders(void)

getNumMusicDecoders()
 -> case
      call
      ( ?Mix_GetNumMusicDecoders
      , [
        ]
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getMusicDecoder
%% Args:       Index
%% Returns:    Exdl
%% C-API func: const char* Mix_GetMusicDecoder(int index)

getMusicDecoder(Index)
 -> case
      call
      ( ?Mix_GetMusicDecoder
      , <<Index:?Int
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

%% Func:       getMusicType
%% Args:       Music
%% Returns:    Exdl
%% C-API func: Mix_MusicType Mix_GetMusicType(const Mix_Music* music)

getMusicType(Music)
 -> case
      call
      ( ?Mix_GetMusicType
      , <<Music:?_PTR
        >>
      )
    of
      <<Exdl:?Mix_MusicType
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       setPostMix
%% Args:       Udata, Stream, Len
%% Returns:    ok
%% C-API func: void Mix_SetPostMix(void (*mix_func) (void* udata, Uint8* stream, int len), void* arg)

setPostMix(Mix_func, Arg)
 -> cast
    ( ?Mix_SetPostMix
    , <<Mix_func:?_PTR
      , Arg:?_PTR
      >>
    )
.

%% Func:       hookMusic
%% Args:       Udata, Stream, Len
%% Returns:    ok
%% C-API func: void Mix_HookMusic(void (*mix_func) (void* udata, Uint8* stream, int len), void* arg)

hookMusic(Mix_func, Arg)
 -> cast
    ( ?Mix_HookMusic
    , <<Mix_func:?_PTR
      , Arg:?_PTR
      >>
    )
.

%% Func:       hookMusicFinished
%% Args:       music_finished
%% Returns:    ok
%% C-API func: void Mix_HookMusicFinished(void (*music_finished)(void))

hookMusicFinished(Music_finished)
 -> cast
    ( ?Mix_HookMusicFinished
    , <<Music_finished:?_PTR
      >>
    )
.

%% Func:       getMusicHookData
%% Args:       none
%% Returns:    Exdl
%% C-API func: void* Mix_GetMusicHookData(void)

getMusicHookData()
 -> case
      call
      ( ?Mix_GetMusicHookData
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

%% Func:       channelFinished
%% Args:       channel_finished
%% Returns:    ok
%% C-API func: void Mix_ChannelFinished(void (*channel_finished)(int channel))

channelFinished(Channel_finished)
 -> cast
    ( ?Mix_ChannelFinished
    , <<Channel_finished:?_PTR
      >>
    )
.

%% Func:       registerEffect
%% Args:       Chan, F, D, Arg
%% Returns:    Exdl
%% C-API func: int Mix_RegisterEffect(int chan, Mix_EffectFunc_t f, Mix_EffectDone_t d, void* arg)

registerEffect(Chan, F, D, Arg)
 -> case
      call
      ( ?Mix_RegisterEffect
      , <<Chan:?Int
        , F:?Mix_EffectFunc_t
        , D:?Mix_EffectDone_t
        , Arg:?_PTR
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

%% Func:       unregisterEffect
%% Args:       Channel, F
%% Returns:    Exdl
%% C-API func: int Mix_UnregisterEffect(int channel, Mix_EffectFunc_t f)

unregisterEffect(Channel, F)
 -> case
      call
      ( ?Mix_UnregisterEffect
      , <<Channel:?Int
        , F:?Mix_EffectFunc_t
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

%% Func:       unregisterAllEffects
%% Args:       Channel
%% Returns:    Exdl
%% C-API func: int Mix_UnregisterAllEffects(int channel)

unregisterAllEffects(Channel)
 -> case
      call
      ( ?Mix_UnregisterAllEffects
      , <<Channel:?Int
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

%% Func:       setPanning
%% Args:       Channel, Left, Right
%% Returns:    Exdl
%% C-API func: int Mix_SetPanning(int channel, Uint8 left, Uint8 right)

setPanning(Channel, Left, Right)
 -> case
      call
      ( ?Mix_SetPanning
      , <<Channel:?Int
        , Left:?Uint8
        , Right:?Uint8
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

%% Func:       setPosition
%% Args:       Channel, Angle, Distance
%% Returns:    Exdl
%% C-API func: int Mix_SetPosition(int channel, Sint16 angle, Uint8 distance)

setPosition(Channel, Angle, Distance)
 -> case
      call
      ( ?Mix_SetPosition
      , <<Channel:?Int
        , Angle:?Sint16
        , Distance:?Uint8
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

%% Func:       setDistance
%% Args:       Channel, Distance
%% Returns:    Exdl
%% C-API func: int Mix_SetDistance(int channel, Uint8 distance)

setDistance(Channel, Distance)
 -> case
      call
      ( ?Mix_SetDistance
      , <<Channel:?Int
        , Distance:?Uint8
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

%% Func:       setReverseStereo
%% Args:       Channel, Flip
%% Returns:    Exdl
%% C-API func: int Mix_SetReverseStereo(int channel, int flip)

setReverseStereo(Channel, Flip)
 -> case
      call
      ( ?Mix_SetReverseStereo
      , <<Channel:?Int
        , Flip:?Int
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

%% Func:       reserveChannels
%% Args:       Num
%% Returns:    Exdl
%% C-API func: int Mix_ReserveChannels(int num)

reserveChannels(Num)
 -> case
      call
      ( ?Mix_ReserveChannels
      , <<Num:?Int
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

%% Func:       groupChannel
%% Args:       Which, Tag
%% Returns:    Exdl
%% C-API func: int Mix_GroupChannel(int which, int tag)

groupChannel(Which, Tag)
 -> case
      call
      ( ?Mix_GroupChannel
      , <<Which:?Int
        , Tag:?Int
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

%% Func:       groupChannels
%% Args:       From, To, Tag
%% Returns:    Exdl
%% C-API func: int Mix_GroupChannels(int from, int to, int tag)

groupChannels(From, To, Tag)
 -> case
      call
      ( ?Mix_GroupChannels
      , <<From:?Int
        , To:?Int
        , Tag:?Int
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

%% Func:       groupAvailable
%% Args:       Tag
%% Returns:    Exdl
%% C-API func: int Mix_GroupAvailable(int tag)

groupAvailable(Tag)
 -> case
      call
      ( ?Mix_GroupAvailable
      , <<Tag:?Int
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

%% Func:       groupCount
%% Args:       Tag
%% Returns:    Exdl
%% C-API func: int Mix_GroupCount(int tag)

groupCount(Tag)
 -> case
      call
      ( ?Mix_GroupCount
      , <<Tag:?Int
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

%% Func:       groupOldest
%% Args:       Tag
%% Returns:    Exdl
%% C-API func: int Mix_GroupOldest(int tag)

groupOldest(Tag)
 -> case
      call
      ( ?Mix_GroupOldest
      , <<Tag:?Int
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

%% Func:       groupNewer
%% Args:       Tag
%% Returns:    Exdl
%% C-API func: int Mix_GroupNewer(int tag)

groupNewer(Tag)
 -> case
      call
      ( ?Mix_GroupNewer
      , <<Tag:?Int
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

%% Func:       playChannelTimed
%% Args:       Channel, Chunk, Loops, Ticks
%% Returns:    Exdl
%% C-API func: int Mix_PlayChannelTimed(int channel, Mix_Chunk* chunk, int loops, int ticks)

playChannelTimed(Channel, Chunk, Loops, Ticks)
 -> case
      call
      ( ?Mix_PlayChannelTimed
      , <<Channel:?Int
        , Chunk:?_PTR
        , Loops:?Int
        , Ticks:?Int
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

%% Func:       playMusic
%% Args:       Music, Loops
%% Returns:    Exdl
%% C-API func: int Mix_PlayMusic(Mix_Music* music, int loops)

playMusic(Music, Loops)
 -> case
      call
      ( ?Mix_PlayMusic
      , <<Music:?_PTR
        , Loops:?Int
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

%% Func:       fadeInMusic
%% Args:       Music, Loops, Ms
%% Returns:    Exdl
%% C-API func: int Mix_FadeInMusic(Mix_Music* music, int loops, int ms)

fadeInMusic(Music, Loops, Ms)
 -> case
      call
      ( ?Mix_FadeInMusic
      , <<Music:?_PTR
        , Loops:?Int
        , Ms:?Int
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

%% Func:       fadeInMusicPos
%% Args:       Music, Loops, Ms, Position
%% Returns:    Exdl
%% C-API func: int Mix_FadeInMusicPos(Mix_Music* music, int loops, int ms, double position)

fadeInMusicPos(Music, Loops, Ms, Position)
 -> case
      call
      ( ?Mix_FadeInMusicPos
      , <<Music:?_PTR
        , Loops:?Int
        , Ms:?Int
        , Position:?Double
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

%#define Mix_FadeInChannel(channel,chunk,loops,ms)
%               Mix_FadeInChannelTimed(channel,chunk,loops,ms,-1)

%% Func:       fadeInChannelTimed
%% Args:       Channel, Chunk, Loops, Ms, Ticks
%% Returns:    Exdl
%% C-API func: int Mix_FadeInChannelTimed(int channel, Mix_Chunk* chunk, int loops, int ms, int ticks)

fadeInChannelTimed(Channel, Chunk, Loops, Ms, Ticks)
 -> case
      call
      ( ?Mix_FadeInChannelTimed
      , <<Channel:?Int
        , Chunk:?_PTR
        , Loops:?Int
        , Ms:?Int
        , Ticks:?Int
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

%% Func:       volume
%% Args:       Channel, Volume
%% Returns:    Exdl
%% C-API func: int Mix_Volume(int channel, int volume)

volume(Channel, Volume)
 -> case
      call
      ( ?Mix_Volume
      , <<Channel:?Int
        , Volume:?Int
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

%% Func:       volumeChunk
%% Args:       Chunk, Volume
%% Returns:    Exdl
%% C-API func: int Mix_VolumeChunk(Mix_Chunk* chunk, int volume)

volumeChunk(Chunk, Volume)
 -> case
      call
      ( ?Mix_VolumeChunk
      , <<Chunk:?_PTR
        , Volume:?Int
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

%% Func:       volumeMusic
%% Args:       Volume
%% Returns:    Exdl
%% C-API func: int Mix_VolumeMusic(int volume)

volumeMusic(Volume)
 -> case
      call
      ( ?Mix_VolumeMusic
      , <<Volume:?Int
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

%% Func:       haltChannel
%% Args:       Channel
%% Returns:    Exdl
%% C-API func: int Mix_HaltChannel(int channel)

haltChannel(Channel)
 -> case
      call
      ( ?Mix_HaltChannel
      , <<Channel:?Int
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

%% Func:       haltGroup
%% Args:       Tag
%% Returns:    Exdl
%% C-API func: int Mix_HaltGroup(int tag)

haltGroup(Tag)
 -> case
      call
      ( ?Mix_HaltGroup
      , <<Tag:?Int
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

%% Func:       haltMusic
%% Args:       none
%% Returns:    Exdl
%% C-API func: int Mix_HaltMusic(void)

haltMusic()
 -> case
      call
      ( ?Mix_HaltMusic
      , [
        ]
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       expireChannel
%% Args:       Channel, Ticks
%% Returns:    Exdl
%% C-API func: int Mix_ExpireChannel(int channel, int ticks)

expireChannel(Channel, Ticks)
 -> case
      call
      ( ?Mix_ExpireChannel
      , <<Channel:?Int
        , Ticks:?Int
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

%% Func:       fadeOutChannel
%% Args:       Which, Ms
%% Returns:    Exdl
%% C-API func: int Mix_FadeOutChannel(int which, int ms)

fadeOutChannel(Which, Ms)
 -> case
      call
      ( ?Mix_FadeOutChannel
      , <<Which:?Int
        , Ms:?Int
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

%% Func:       fadeOutGroup
%% Args:       Tag, Ms
%% Returns:    Exdl
%% C-API func: int Mix_FadeOutGroup(int tag, int ms)

fadeOutGroup(Tag, Ms)
 -> case
      call
      ( ?Mix_FadeOutGroup
      , <<Tag:?Int
        , Ms:?Int
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

%% Func:       fadeOutMusic
%% Args:       Ms
%% Returns:    Exdl
%% C-API func: int Mix_FadeOutMusic(int ms)

fadeOutMusic(Ms)
 -> case
      call
      ( ?Mix_FadeOutMusic
      , <<Ms:?Int
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

%% Func:       fadingMusic
%% Args:       none
%% Returns:    Exdl
%% C-API func: Mix_Fading Mix_FadingMusic(void)

fadingMusic()
 -> case
      call
      ( ?Mix_FadingMusic
      , [
        ]
      )
    of
      <<Exdl:?Mix_Fading
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       fadingChannel
%% Args:       Which
%% Returns:    Exdl
%% C-API func: Mix_Fading Mix_FadingChannel(int which)

fadingChannel(Which)
 -> case
      call
      ( ?Mix_FadingChannel
      , <<Which:?Int
        >>
      )
    of
      <<Exdl:?Mix_Fading
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       pause
%% Args:       Channel
%% Returns:    ok
%% C-API func: void Mix_Pause(int channel)

pause(Channel)
 -> cast
    ( ?Mix_Pause
    , <<Channel:?Int
      >>
    )
.

%% Func:       resume
%% Args:       Channel
%% Returns:    ok
%% C-API func: void Mix_Resume(int channel)

resume(Channel)
 -> cast
    ( ?Mix_Resume
    , <<Channel:?Int
      >>
    )
.

%% Func:       paused
%% Args:       Channel
%% Returns:    Exdl
%% C-API func: int Mix_Paused(int channel)

paused(Channel)
 -> case
      call
      ( ?Mix_Paused
      , <<Channel:?Int
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

%% Func:       pauseMusic
%% Args:       none
%% Returns:    ok
%% C-API func: void Mix_PauseMusic(void)

pauseMusic()
 -> cast
    ( ?Mix_PauseMusic
    , [
      ]
    )
.

%% Func:       resumeMusic
%% Args:       none
%% Returns:    ok
%% C-API func: void Mix_ResumeMusic(void)

resumeMusic()
 -> cast
    ( ?Mix_ResumeMusic
    , [
      ]
    )
.

%% Func:       rewindMusic
%% Args:       none
%% Returns:    ok
%% C-API func: void Mix_RewindMusic(void)

rewindMusic()
 -> cast
    ( ?Mix_RewindMusic
    , [
      ]
    )
.

%% Func:       pausedMusic
%% Args:       none
%% Returns:    Exdl
%% C-API func: int Mix_PausedMusic(void)

pausedMusic()
 -> case
      call
      ( ?Mix_PausedMusic
      , [
        ]
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       setMusicPosition
%% Args:       Position
%% Returns:    Exdl
%% C-API func: int Mix_SetMusicPosition(double position)

setMusicPosition(Position)
 -> case
      call
      ( ?Mix_SetMusicPosition
      , <<Position:?Double
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

%% Func:       playing
%% Args:       Channel
%% Returns:    Exdl
%% C-API func: int Mix_Playing(int channel)

playing(Channel)
 -> case
      call
      ( ?Mix_Playing
      , <<Channel:?Int
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

%% Func:       playingMusic
%% Args:       none
%% Returns:    Exdl
%% C-API func: int Mix_PlayingMusic(void)

playingMusic()
 -> case
      call
      ( ?Mix_PlayingMusic
      , [
        ]
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       setMusicCMD
%% Args:       Command
%% Returns:    Exdl
%% C-API func: int Mix_SetMusicCMD(const char* command)

setMusicCMD(Command)
 -> case
      call
      ( ?Mix_SetMusicCMD
      , <<Command:?_PTR
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

%% Func:       setSynchroValue
%% Args:       Value
%% Returns:    Exdl
%% C-API func: int Mix_SetSynchroValue(int value)

setSynchroValue(Value)
 -> case
      call
      ( ?Mix_SetSynchroValue
      , <<Value:?Int
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

%% Func:       getSynchroValue
%% Args:       none
%% Returns:    Exdl
%% C-API func: int Mix_GetSynchroValue(void)

getSynchroValue()
 -> case
      call
      ( ?Mix_GetSynchroValue
      , [
        ]
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getChunk
%% Args:       Channel
%% Returns:    Exdl
%% C-API func: Mix_Chunk* Mix_GetChunk(int channel)

getChunk(Channel)
 -> case
      call
      ( ?Mix_GetChunk
      , <<Channel:?Int
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

%% Func:       closeAudio
%% Args:       none
%% Returns:    ok
%% C-API func: void Mix_CloseAudio(void)

closeAudio()
 -> cast
    ( ?Mix_CloseAudio
    , [
      ]
    )
.

%#define Mix_SetError SDL_SetError
%#define Mix_GetError SDL_GetError

-endif. % COMPILE_MIXER
