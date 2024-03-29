%%  Copyright (c) 2001 Dan Gudmundsson
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: testaudio.erl,v 1.1 2004/03/30 07:57:05 bjorng Exp $
%%

%%%----------------------------------------------------------------------
%%% File    : testaudio.erl
%%% Author  : Dan Gudmundsson <dgud@erix.ericsson.se>
%%% Purpose : Test the audio functionality
%%% Created : 21 Sep 2000 by Dan Gudmundsson <dgud@erix.ericsson.se>
%%%----------------------------------------------------------------------

-module(testaudio).

-author('dgud@erix.ericsson.se').

-compile(export_all).
%%-export([Function/Arity, ...]).

-include("exdl.hrl").

go()
 -> sdl:init(?SDL_INIT_AUDIO)
  , { ASpec
    , Sample
    }
    = exdl_audio:loadWAV
      ( "Beep.wav"
      )
  , Obtained
    = exdl_audio:openAudio
      ( ASpec
      , true
      )
  , io:format
    ( "Driver : ~s\n"
    , [ sdl_audio:audioDrivername()
      ]
    )
  , io:format
    ( "Obtained : ~p\n"
    , [ Obtained
      ]
    )
  , exdl_audio:play_audio
    ( Sample
    , 3
    )
  , exdl_audio:pauseAudio
    ( false
    )
  , timer:sleep
    ( 2500
    )
  , exdl_audio:pauseAudio
    ( true
    )
  , exdl_audio:freeWAV
    ( Sample
    )
  , timer:sleep
    ( 500
    )
  , exdl_audio:closeAudio
    (
    )
  , exdl:getError
    (
    )
.
