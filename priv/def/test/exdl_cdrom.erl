%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_cdrom.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_cdrom).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ numDrives/0
         , name/1
         , open/1
         , status/1
         , playTracks/5
         , play/3
         , pause/1
         , resume/1
         , stop/1
         , eject/1
         , close/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_cdrom.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       numDrives
%% Args:       none
%% Returns:    Exdl
%% C-API func: int SDL_CDNumDrives(void)

numDrives()
 -> case
      call
      ( ?SDL_CDNumDrives
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

%% Func:       name
%% Args:       Drive
%% Returns:    Exdl
%% C-API func: const char* SDL_CDName(int drive)

name(Drive)
 -> case
      call
      ( ?SDL_CDName
      , <<Drive:?Int
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

%% Func:       open
%% Args:       Drive
%% Returns:    Exdl
%% C-API func: SDL_CD* SDL_CDOpen(int drive)

open(Drive)
 -> case
      call
      ( ?SDL_CDOpen
      , <<Drive:?Int
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

%% Func:       status
%% Args:       Cdrom
%% Returns:    Exdl
%% C-API func: CDstatus SDL_CDStatus(SDL_CD* cdrom)

status(Cdrom)
 -> case
      call
      ( ?SDL_CDStatus
      , <<Cdrom:?_PTR
        >>
      )
    of
      <<Exdl:?CDstatus
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       playTracks
%% Args:       Cdrom, StartTrack, StartFrame, Ntracks, Nframes
%% Returns:    Exdl
%% C-API func: int SDL_CDPlayTracks(SDL_CD* cdrom, int start_track, int start_frame, int ntracks, int nframes)

playTracks(Cdrom, StartTrack, StartFrame, Ntracks, Nframes)
 -> case
      call
      ( ?SDL_CDPlayTracks
      , <<Cdrom:?_PTR
        , StartTrack:?Int
        , StartFrame:?Int
        , Ntracks:?Int
        , Nframes:?Int
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

%% Func:       play
%% Args:       Cdrom, Start, Length
%% Returns:    Exdl
%% C-API func: int SDL_CDPlay(SDL_CD* cdrom, int start, int length)

play(Cdrom, Start, Length)
 -> case
      call
      ( ?SDL_CDPlay
      , <<Cdrom:?_PTR
        , Start:?Int
        , Length:?Int
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

%% Func:       pause
%% Args:       Cdrom
%% Returns:    Exdl
%% C-API func: int SDL_CDPause(SDL_CD* cdrom)

pause(Cdrom)
 -> case
      call
      ( ?SDL_CDPause
      , <<Cdrom:?_PTR
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

%% Func:       resume
%% Args:       Cdrom
%% Returns:    Exdl
%% C-API func: int SDL_CDResume(SDL_CD* cdrom)

resume(Cdrom)
 -> case
      call
      ( ?SDL_CDResume
      , <<Cdrom:?_PTR
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

%% Func:       stop
%% Args:       Cdrom
%% Returns:    Exdl
%% C-API func: int SDL_CDStop(SDL_CD* cdrom)

stop(Cdrom)
 -> case
      call
      ( ?SDL_CDStop
      , <<Cdrom:?_PTR
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

%% Func:       eject
%% Args:       Cdrom
%% Returns:    Exdl
%% C-API func: int SDL_CDEject(SDL_CD* cdrom)

eject(Cdrom)
 -> case
      call
      ( ?SDL_CDEject
      , <<Cdrom:?_PTR
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

%% Func:       close
%% Args:       Cdrom
%% Returns:    ok
%% C-API func: void SDL_CDClose(SDL_CD* cdrom)

close(Cdrom)
 -> cast
    ( ?SDL_CDClose
    , <<Cdrom:?_PTR
      >>
    )
.

