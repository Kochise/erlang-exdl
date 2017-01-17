%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_mixer.hrl,v 1.0 2008/12/30 07:50:46 kochise Exp $
%%

%%%----------------------------------------------------------------------
%%% File    : exdl_mixer.hrl
%%% Author  : David Koch <david.koch@libertysurf.fr>
%%% Purpose : defines from SDL_mixer.h
%%% Created : 30 Dec 2008 by David Koch <david.koch@libertysurf.fr>
%%%----------------------------------------------------------------------

-record( chunk
       , { allocated %% int
	       , abuf      %% Uint8*
	       , alen      %% Uint32
	       , volume    %% Uint8   Per-sample volume, 0-128
         }
       ).

%% Mix_Fading : The different fading types supported

-define(MIX_NO_FADING,         0).
-define(MIX_FADING_OUT,        1).
-define(MIX_FADING_IN,         2).

%% Mix_MusicType

-define(MIX_INIT_FLAC,         1).
-define(MIX_INIT_MOD,          2).
-define(MIX_INIT_MP3,          4).
-define(MIX_INIT_OGG,          8).

-define(MUS_NONE,              0).
-define(MUS_CMD,               1).
-define(MUS_WAV,               2).
-define(MUS_MOD,               3).
-define(MUS_MID,               4).
-define(MUS_OGG,               5).
-define(MUS_MP3,               6).
-define(MUS_MP3_MAD,           7).

-define(MIX_CHANNELS,          8).
-define(MIX_DEFAULT_FREQUENCY, 22050).
-define(MIX_DEFAULT_CHANNELS,  2).
-define(MIX_MAX_VOLUME,        128). % Volume of a chunk
-define(MIX_CHANNEL_POST,      -2).
-define(MIX_EFFECTSMAXSPEED,   "MIX_EFFECTSMAXSPEED").
