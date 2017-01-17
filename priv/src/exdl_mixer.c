/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_mixer.c,v 1.0 2008/12/29 14:45:38 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_MIXER

#include <string.h>
#include <stdlib.h>

EXDL_API(emix_linked_Version)
{
  /* const SDL_version* Mix_Linked_Version(void) */

  /* exp : This works similar to SDL_Linked_Version and SDL VERSION. Using these you */
  /*       can compare the runtime version to the version that you compiled with. */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(const SDL_version*)

    Mix_Linked_Version
    (
    );

  THROW_POINTER()
}

EXDL_API(emix_init)
{
  /* int Mix_Init(int flags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, flags)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_Init
    ( STACK_GET_DATA(flags)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_quit)
{
  /* void Mix_Quit(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  Mix_Quit
  (
  );
}

EXDL_API(emix_openAudio)
{
  /* int Mix_OpenAudio(int frequency, Uint16 format, int channels, int chunksize) */

  /* inp : frequency = Output sampling frequency in samples per second (Hz). */
  /*                   You might use MIX DEFAULT FREQUENCY(22050) since that is a good */
  /*                   value for most games. */
  /* inp : format    = Output sample format. */
  /*                   format is based on SDL audio support, see SDL audio.h. */
  /*                   Here are the values listed there: */
  /*                   AUDIO_U8 - AUDIO_S8 - AUDIO_U16LSB - AUDIO_S16LSB - AUDIO_U16MSB */
  /*                   AUDIO_S16MSB - AUDIO_U16 - AUDIO_S16 - AUDIO_U16SYS - AUDIO_S16SYS */
  /* inp : channels  = Number of sound channels in output. */
  /*                   Set to 2 for stereo, 1 for mono. This has nothing to do with */
  /*                   mixing channels. */
  /* inp : chunksize = Bytes used per output sample. */
  /* ret : 0 on success, -1 on errors */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,    frequency)
    STACK_FMT_DATA(Uint16, format)
    STACK_FMT_DATA(int,    channels)
    STACK_FMT_DATA(int,    chunksize)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_OpenAudio
    ( STACK_GET_DATA(frequency)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(channels)
    , STACK_GET_DATA(chunksize)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_allocateChannels)
{
  /* int Mix_AllocateChannels(int numchans) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, numchans)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_AllocateChannels
    ( STACK_GET_DATA(numchans)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_querySpec)
{
  /* int Mix_QuerySpec(int* frequency, Uint16* format, int* channels) */

  /* exp : Get the actual audio format in use by the opened audio device. This may */
  /*       or may not match the parameters you passed to Mix OpenAudio. */
  /* inp : frequency = A pointer to an int where the frequency actually used by */
  /*                   the opened audio device will be stored. */
  /* inp : format    = A pointer to a Uint16 where the output format actually being */
  /*                   used by the audio device will be stored. */
  /* inp : channels  = A pointer to an int where the number of audio channels will */
  /*                   be stored. 2 will mean stereo, 1 will mean mono. */
  /* ret : 0 on error. If the device was open the number of times it was opened */
  /*       will be returned. The values of the arguments variables are not set on */
  /*       an error. */

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int,    result)
    FRAME_FMT_DATA(int,    frequency)
    FRAME_FMT_DATA(Uint16, format)
    FRAME_FMT_DATA(int,    channels)
  FRAME_FMT_END()

  FRAME_SET_DATA(result) =
//  CATCH_RESULT(int)
  
    Mix_QuerySpec
    ( FRAME_GET_ADDR(frequency)
    , FRAME_GET_ADDR(format)
    , FRAME_GET_ADDR(channels)
    );

  THROW_FRAME()
}

EXDL_API(emix_loadWAV_RW)
{
  /* Mix_Chunk* Mix_LoadWAV_RW(SDL_RWops* src, int freesrc) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_RWops*, src)
    STACK_FMT_DATA(int,        freesrc)
  STACK_FMT_END()

  CATCH_RESULT(Mix_Chunk*)

    Mix_LoadWAV_RW
    ( STACK_GET_DATA(src)
    , STACK_GET_DATA(freesrc)
    );

  THROW_POINTER()
}

EXDL_API(emix_loadMUS)
{
  /* Mix_Music* Mix_LoadMUS(const char* file) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char, file[])
  STACK_FMT_END()

  CATCH_RESULT(Mix_Music*)

    Mix_LoadMUS
    ( STACK_GET_ADDR(file)
    );

  THROW_POINTER()
}

EXDL_API(emix_loadMUS_RW)
{
  /* Mix_Music* Mix_LoadMUS_RW(SDL_RWops* rw) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_RWops, rw[])
  STACK_FMT_END()

  CATCH_RESULT(Mix_Music*)

    Mix_LoadMUS_RW
    ( STACK_GET_ADDR(rw)
    );

  THROW_POINTER()
}

EXDL_API(emix_quickLoad_WAV)
{
  /* Mix_Chunk* Mix_QuickLoad_WAV(Uint8* mem) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint8, mem[])
  STACK_FMT_END()

  CATCH_RESULT(Mix_Chunk*)

    Mix_QuickLoad_WAV
    ( STACK_GET_ADDR(mem)
    );

  THROW_POINTER()
}

EXDL_API(emix_quickLoad_RAW)
{
  /* Mix_Chunk* Mix_QuickLoad_RAW(Uint8* mem, Uint32 len) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Uint8*, mem)
    STACK_FMT_DATA(Uint32, len)
  STACK_FMT_END()

  CATCH_RESULT(Mix_Chunk*)

    Mix_QuickLoad_RAW
    ( STACK_GET_DATA(mem)
    , STACK_GET_DATA(len)
    );

  THROW_POINTER()
}

EXDL_API(emix_freeChunk)
{
  /* void Mix_FreeChunk(Mix_Chunk* chunk) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Mix_Chunk, chunk[])
  STACK_FMT_END()

    Mix_FreeChunk
    ( STACK_GET_ADDR(chunk)
    );
}

EXDL_API(emix_freeMusic)
{
  /* void Mix_FreeMusic(Mix_Music* music) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Mix_Music, music[])
  STACK_FMT_END()

    Mix_FreeMusic
    ( STACK_GET_ADDR(music)
    );
}

EXDL_API(emix_getNumChunkDecoders)
{
  /* int Mix_GetNumChunkDecoders(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    Mix_GetNumChunkDecoders
    (
    );

  THROW_RESULT(int)
}

EXDL_API(emix_getChunkDecoder)
{
  /* const char* Mix_GetChunkDecoder(int index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, index)
  STACK_FMT_END()

  CATCH_RESULT(const char*)

    Mix_GetChunkDecoder
    ( STACK_GET_DATA(index)
    );

  THROW_STRING()
}

EXDL_API(emix_getNumMusicDecoders)
{
  /* int Mix_GetNumMusicDecoders(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    Mix_GetNumMusicDecoders
    (
    );

  THROW_RESULT(int)
}

EXDL_API(emix_getMusicDecoder)
{
  /* const char* Mix_GetMusicDecoder(int index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, index)
  STACK_FMT_END()

  CATCH_RESULT(const char*)

    Mix_GetMusicDecoder
    ( STACK_GET_DATA(index)
    );

  THROW_STRING()
}

EXDL_API(emix_getMusicType)
{
  /* Mix_MusicType Mix_GetMusicType(const Mix_Music* music) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Mix_Music, music[])
  STACK_FMT_END()

  CATCH_RESULT(Mix_MusicType)

    Mix_GetMusicType
    ( STACK_GET_ADDR(music)
    );

  THROW_RESULT(Mix_MusicType)
}

void /* CALLBACK */
emix_set_pos_mix_callback
( void*  udata
, Uint8* stream
, int    len
)
{
  ;
}

EXDL_API(emix_setPostMix)
{
  /* void Mix_SetPostMix(void (*mix_func) (void* udata, Uint8* stream, int len), void* arg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
//    STACK_FMT_DATA(void (CALLBACK* cbfn,) ())
    STACK_FMT_DATA(void*, arg)
  STACK_FMT_END()
  
    Mix_SetPostMix
//    ( STACK_GET_DATA((CALLBACK* cbfn) ())
    ( emix_set_pos_mix_callback
    , (sd->next_bin == 0)
    ? STACK_GET_DATA(arg)
    : (void*) sd->bin[0].base
    );
}

void /* CALLBACK */
emix_hook_music_callback
( void*  udata
, Uint8* stream
, int    len
)
{
  ;
}

EXDL_API(emix_hookMusic)
{
  /* void Mix_HookMusic(void (*mix_func) (void* udata, Uint8* stream, int len), void* arg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
//    STACK_FMT_DATA(void (CALLBACK* cbfn,) ())
    STACK_FMT_DATA(void*, arg)
  STACK_FMT_END()

    Mix_HookMusic
//    ( STACK_GET_DATA((CALLBACK* cbfn) ())
    ( emix_hook_music_callback
    , (sd->next_bin == 0)
    ? STACK_GET_DATA(arg)
    : (void*) sd->bin[0].base
    );
}

void /* CALLBACK */
emix_hook_music_finished_callback
( void
)
{
  ;
}

EXDL_API(emix_hookMusicFinished)
{
  /* void Mix_HookMusicFinished(void (*music_finished)(void)) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

/*
  STACK_FMT_BEGIN()
    STACK_FMT_DATA(void (CALLBACK* cbfn,) ())
  STACK_FMT_END()
*/

    Mix_HookMusicFinished
//    ( STACK_GET_DATA((CALLBACK* cbfn) ())
    ( emix_hook_music_finished_callback
    );
}

EXDL_API(emix_getMusicHookData)
{
  /* void* Mix_GetMusicHookData(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(void*)

    Mix_GetMusicHookData
    (
    );

  THROW_POINTER()
}

void /* CALLBACK */
emix_mix_channel_finished_callback
( int channel
)
{
  ;
}

EXDL_API(emix_channelFinished)
{
  /* void Mix_ChannelFinished(void (*channel_finished)(int channel)) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

/*
  STACK_FMT_BEGIN()
    STACK_FMT_DATA(void (CALLBACK* cbfn,) ())
  STACK_FMT_END()
*/

    Mix_ChannelFinished
//    ( STACK_GET_DATA((CALLBACK* cbfn) ())
    ( emix_mix_channel_finished_callback
    );
}

EXDL_API(emix_registerEffect)
{
  /* int Mix_RegisterEffect(int chan, Mix_EffectFunc_t f, Mix_EffectDone_t d, void* arg) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,              chan)
    STACK_FMT_DATA(Mix_EffectFunc_t, f)
    STACK_FMT_DATA(Mix_EffectDone_t, d)
    STACK_FMT_DATA(void,             arg[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_RegisterEffect
    ( STACK_GET_DATA(chan)
    , STACK_GET_DATA(f)
    , STACK_GET_DATA(d)
    , STACK_GET_ADDR(arg)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_unregisterEffect)
{
  /* int Mix_UnregisterEffect(int channel, Mix_EffectFunc_t f) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,              channel)
    STACK_FMT_DATA(Mix_EffectFunc_t, f)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_UnregisterEffect
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(f)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_unregisterAllEffects)
{
  /* int Mix_UnregisterAllEffects(int channel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, channel)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_UnregisterAllEffects
    ( STACK_GET_DATA(channel)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_setPanning)
{
  /* int Mix_SetPanning(int channel, Uint8 left, Uint8 right) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,   channel)
    STACK_FMT_DATA(Uint8, left)
    STACK_FMT_DATA(Uint8, right)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_SetPanning
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(left)
    , STACK_GET_DATA(right)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_setPosition)
{
  /* int Mix_SetPosition(int channel, Sint16 angle, Uint8 distance) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,    channel)
    STACK_FMT_DATA(Sint16, angle)
    STACK_FMT_DATA(Uint8,  distance)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_SetPosition
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(angle)
    , STACK_GET_DATA(distance)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_setDistance)
{
  /* int Mix_SetDistance(int channel, Uint8 distance) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,   channel)
    STACK_FMT_DATA(Uint8, distance)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_SetDistance
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(distance)
    );

  THROW_RESULT(int)
}

/* Currently UNimplemented into SDL_mixer 3278 2007-07-15
EXDL_API(emix_setReverb)
{
  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,   channel)
    STACK_FMT_DATA(Uint8, echo)
  STACK_FMT_END()

  CATCH_RESULT(int)
  
    Mix_SetReverb
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(echo)
    );

  THROW_RESULT(int)
}
*/

EXDL_API(emix_setReverseStereo)
{
  /* int Mix_SetReverseStereo(int channel, int flip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, channel)
    STACK_FMT_DATA(int, flip)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_SetReverseStereo
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(flip)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_reserveChannels)
{
  /* int Mix_ReserveChannels(int num) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, num)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_ReserveChannels
    ( STACK_GET_DATA(num)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_groupChannel)
{
  /* int Mix_GroupChannel(int which, int tag) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, which)
    STACK_FMT_DATA(int, tag)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_GroupChannel
    ( STACK_GET_DATA(which)
    , STACK_GET_DATA(tag)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_groupChannels)
{
  /* int Mix_GroupChannels(int from, int to, int tag) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, from)
    STACK_FMT_DATA(int, to)
    STACK_FMT_DATA(int, tag)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_GroupChannels
    ( STACK_GET_DATA(from)
    , STACK_GET_DATA(to)
    , STACK_GET_DATA(tag)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_groupAvailable)
{
  /* int Mix_GroupAvailable(int tag) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, tag)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_GroupAvailable
    ( STACK_GET_DATA(tag)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_groupCount)
{
  /* int Mix_GroupCount(int tag) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, tag)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_GroupCount
    ( STACK_GET_DATA(tag)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_groupOldest)
{
  /* int Mix_GroupOldest(int tag) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, tag)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_GroupOldest
    ( STACK_GET_DATA(tag)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_groupNewer)
{
  /* int Mix_GroupNewer(int tag) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, tag)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_GroupNewer
    ( STACK_GET_DATA(tag)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_playChannelTimed)
{
  /* int Mix_PlayChannelTimed(int channel, Mix_Chunk* chunk, int loops, int ticks) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,        channel)
    STACK_FMT_LPTR(Mix_Chunk*, chunk)
    STACK_FMT_DATA(int,        loops)
    STACK_FMT_DATA(int,        ticks)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_PlayChannelTimed
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(chunk)
    , STACK_GET_DATA(loops)
    , STACK_GET_DATA(ticks)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_playMusic)
{
  /* int Mix_PlayMusic(Mix_Music* music, int loops) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Mix_Music*, music)
    STACK_FMT_DATA(int,        loops)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_PlayMusic
    ( STACK_GET_DATA(music)
    , STACK_GET_DATA(loops)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_fadeInMusic)
{
  /* int Mix_FadeInMusic(Mix_Music* music, int loops, int ms) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Mix_Music*, music)
    STACK_FMT_DATA(int,        loops)
    STACK_FMT_DATA(int,        ms)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_FadeInMusic
    ( STACK_GET_DATA(music)
    , STACK_GET_DATA(loops)
    , STACK_GET_DATA(ms)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_fadeInMusicPos)
{
  /* int Mix_FadeInMusicPos(Mix_Music* music, int loops, int ms, double position) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Mix_Music*, music)
    STACK_FMT_DATA(int,        loops)
    STACK_FMT_DATA(int,        ms)
    STACK_FMT_DATA(double,     position)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_FadeInMusicPos
    ( STACK_GET_DATA(music)
    , STACK_GET_DATA(loops)
    , STACK_GET_DATA(ms)
    , STACK_GET_DATA(position)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_fadeInChannelTimed)
{
  /* int Mix_FadeInChannelTimed(int channel, Mix_Chunk* chunk, int loops, int ms, int ticks) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,        channel)
    STACK_FMT_LPTR(Mix_Chunk*, chunk)
    STACK_FMT_DATA(int,        loops)
    STACK_FMT_DATA(int,        ms)
    STACK_FMT_DATA(int,        ticks)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_FadeInChannelTimed
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(chunk)
    , STACK_GET_DATA(loops)
    , STACK_GET_DATA(ms)
    , STACK_GET_DATA(ticks)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_volume)
{
  /* int Mix_Volume(int channel, int volume) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, channel)
    STACK_FMT_DATA(int, volume)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_Volume
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(volume)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_volumeChunk)
{
  /* int Mix_VolumeChunk(Mix_Chunk* chunk, int volume) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(Mix_Chunk*, chunk)
    STACK_FMT_DATA(int,        volume)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_VolumeChunk
    ( STACK_GET_DATA(chunk)
    , STACK_GET_DATA(volume)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_volumeMusic)
{
  /* int Mix_VolumeMusic(int volume) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, volume)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_VolumeMusic
    ( STACK_GET_DATA(volume)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_haltChannel)
{
  /* int Mix_HaltChannel(int channel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, channel)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_HaltChannel
    ( STACK_GET_DATA(channel)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_haltGroup)
{
  /* int Mix_HaltGroup(int tag) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, tag)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_HaltGroup
    ( STACK_GET_DATA(tag)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_haltMusic)
{
  /* int Mix_HaltMusic(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    Mix_HaltMusic
    (
    );

  THROW_RESULT(int)
}

EXDL_API(emix_expireChannel)
{
  /* int Mix_ExpireChannel(int channel, int ticks) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, channel)
    STACK_FMT_DATA(int, ticks)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_ExpireChannel
    ( STACK_GET_DATA(channel)
    , STACK_GET_DATA(ticks)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_fadeOutChannel)
{
  /* int Mix_FadeOutChannel(int which, int ms) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, which)
    STACK_FMT_DATA(int, ms)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_FadeOutChannel
    ( STACK_GET_DATA(which)
    , STACK_GET_DATA(ms)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_fadeOutGroup)
{
  /* int Mix_FadeOutGroup(int tag, int ms) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, tag)
    STACK_FMT_DATA(int, ms)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_FadeOutGroup
    ( STACK_GET_DATA(tag)
    , STACK_GET_DATA(ms)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_fadeOutMusic)
{
  /* int Mix_FadeOutMusic(int ms) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, ms)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_FadeOutMusic
    ( STACK_GET_DATA(ms)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_fadingMusic)
{
  /* Mix_Fading Mix_FadingMusic(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(Mix_Fading)

    Mix_FadingMusic
    (
    );

  THROW_RESULT(Mix_Fading)
}

EXDL_API(emix_fadingChannel)
{
  /* Mix_Fading Mix_FadingChannel(int which) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, which)
  STACK_FMT_END()

  CATCH_RESULT(Mix_Fading)

    Mix_FadingChannel
    ( STACK_GET_DATA(which)
    );

  THROW_RESULT(Mix_Fading)
}

EXDL_API(emix_pause)
{
  /* void Mix_Pause(int channel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, channel)
  STACK_FMT_END()

    Mix_Pause
    ( STACK_GET_DATA(channel)
    );
}

EXDL_API(emix_resume)
{
  /* void Mix_Resume(int channel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, channel)
  STACK_FMT_END()

    Mix_Resume
    ( STACK_GET_DATA(channel)
    );
}

EXDL_API(emix_paused)
{
  /* int Mix_Paused(int channel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, channel)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_Paused
    ( STACK_GET_DATA(channel)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_pauseMusic)
{
  /* void Mix_PauseMusic(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  Mix_PauseMusic
  (
  );
}

EXDL_API(emix_resumeMusic)
{
  /* void Mix_ResumeMusic(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  Mix_ResumeMusic
  (
  );
}

EXDL_API(emix_rewindMusic)
{
  /* void Mix_RewindMusic(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  Mix_RewindMusic
  (
  );
}

EXDL_API(emix_pausedMusic)
{
  /* int Mix_PausedMusic(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    Mix_PausedMusic
    (
    );

  THROW_RESULT(int)
}

EXDL_API(emix_setMusicPosition)
{
  /* int Mix_SetMusicPosition(double position) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(double, position)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_SetMusicPosition
    ( STACK_GET_DATA(position)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_playing)
{
  /* int Mix_Playing(int channel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, channel)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_Playing
    ( STACK_GET_DATA(channel)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_playingMusic)
{
  /* int Mix_PlayingMusic(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    Mix_PlayingMusic
    (
    );

  THROW_RESULT(int)
}

EXDL_API(emix_setMusicCMD)
{
  /* int Mix_SetMusicCMD(const char* command) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char, command[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_SetMusicCMD
    ( STACK_GET_ADDR(command)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_setSynchroValue)
{
  /* int Mix_SetSynchroValue(int value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, value)
  STACK_FMT_END()

  CATCH_RESULT(int)

    Mix_SetSynchroValue
    ( STACK_GET_DATA(value)
    );

  THROW_RESULT(int)
}

EXDL_API(emix_getSynchroValue)
{
  /* int Mix_GetSynchroValue(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    Mix_GetSynchroValue
    (
    );

  THROW_RESULT(int)
}

EXDL_API(emix_getChunk)
{
  /* Mix_Chunk* Mix_GetChunk(int channel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, channel)
  STACK_FMT_END()

  CATCH_RESULT(Mix_Chunk*)

    Mix_GetChunk
    ( STACK_GET_DATA(channel)
    );

  THROW_POINTER()
}

EXDL_API(emix_closeAudio)
{
  /* void Mix_CloseAudio(void) */

  /* exp : Shutdown and cleanup the mixer API. After calling this all audio is */
  /*       stopped, the device is closed, and the SDL mixer functions should not */
  /*       be used. You may, of course, use Mix OpenAudio to start the functionality */
  /*       again. */
  /*     > This function doesn’t do anything until you have called it the same */
  /*       number of times that you called Mix OpenAudio. You may use Mix_QuerySpec */
  /*       to find out how many times Mix_CloseAudio needs to be called before the */
  /*       device is actually closed. */
  /* inp :  */
  /* ret :  */

  Mix_CloseAudio
  (
  );
}

#endif // COMPILE_MIXER
