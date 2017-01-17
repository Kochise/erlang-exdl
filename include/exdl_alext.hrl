%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_alext.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

-record( al_wavefmt
       , { encoding
         , channels         % 1 = mono, 2 = stereo
         , frequency        % One of 11025, 22050, or 44100 Hz
         , byterate         % Average bytes per second
         , blockalign       % Bytes per sample block
         , bitspersample
         }
       ).

-record( al_msadpcm_decodestate
       , { hpredictor
         , idelta
         , isamp1
         , isamp2
         }
       ).

-record( al_msadpcm_state
       , { wavefmt          % al_wavefmt[1]
         , wsamplesperblock
         , wnumcoef
         , acoeff           % [7][2]
         , state            % al_msadpcm_decodestate[2]
         }
       ).

-record( al_imaadpcm_decodestate
       , { valprev          % Previous output value
         , index            % Index into stepsize table
         }
       ).

-record( al_imaadpcm_state
       , { wavefmt          % al_wavefmt[1]
         , wsamplesperblock
         , state            % al_imaadpcm_decodestate[2]
         }
       ).

%%%% Format base

-define(AL_FORMAT_IMA_ADPCM_MONO16_EXT,   16#10000).
-define(AL_FORMAT_IMA_ADPCM_STEREO16_EXT, 16#10001).
-define(AL_FORMAT_WAVE_EXT,               16#10002).
-define(AL_FORMAT_VORBIS_EXT,             16#10003).

%%%% Four point formats

-define(AL_FORMAT_QUAD8_LOKI,             16#10004).
-define(AL_FORMAT_QUAD16_LOKI,            16#10005).

%%%% Token extensions

-define(AL_GAIN_LINEAR_LOKI,              16#20000). % Deprecated, use AL_GAIN

%%%% Context creation extension tokens

-define(ALC_SOURCES_LOKI,                 16#200000). % Followed by ### of sources.
-define(ALC_BUFFERS_LOKI,                 16#200001). % Followed by ### of buffers.

%%%% Channel operations

-define(ALC_CHAN_MAIN_LOKI,               16#300000).
-define(ALC_CHAN_PCM_LOKI,                16#300001).
-define(ALC_CHAN_CD_LOKI,                 16#300002).
