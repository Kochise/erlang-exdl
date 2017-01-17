%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_vnc.erl,v 1.0 2008/12/30 07:46:20 kochise Exp $
%%

-module(exdl_vnc).

-include("exdl.hrl").

-ifdef(COMPILE_VNC).

%% 1- EXPORT

%-compile(export_all).

-export( [ connect/6
         , blitFramebuffer/3
         , blitCursor/3
         , cursorHotspot/1
         , clientKeyevent/3
         , clientPointerevent/4
         , disconnect/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_video.hrl"). % for sdl_rect record

-include("exdl_vnc.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       connect
%% Args:       Vnc, Host, Port, Mode, Password, Framerate
%% Returns:    Exdl
%% C-API func: int vncConnect(tSDL_vnc* vnc, char* host, int port, char* mode, char* password, int framerate)

connect(Vnc, Host, Port, Mode, Password, Framerate)
 -> case
      call
      ( ?vncConnect
      , <<Vnc:?_PTR
        , Host:?_PTR
        , Port:?Int
        , Mode:?_PTR
        , Password:?_PTR
        , Framerate:?Int
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

%% Func:       blitFramebuffer
%% Args:       Vnc, Target, Urec
%% Returns:    Exdl
%% C-API func: int vncBlitFramebuffer(tSDL_vnc* vnc, SDL_Surface* target, SDL_Rect* urec)

blitFramebuffer(Vnc, Target, Urec)
 -> case
      call
      ( ?vncBlitFramebuffer
      , <<Vnc:?_PTR
        , Target:?_PTR
        , Urec:?_PTR
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

%% Func:       blitCursor
%% Args:       Vnc, Target, Trec
%% Returns:    Exdl
%% C-API func: int vncBlitCursor(tSDL_vnc* vnc, SDL_Surface* target, SDL_Rect* trec)

blitCursor(Vnc, Target, Trec)
 -> case
      call
      ( ?vncBlitCursor
      , <<Vnc:?_PTR
        , Target:?_PTR
        , Trec:?_PTR
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

%% Func:       cursorHotspot
%% Args:       Vnc
%% Returns:    Exdl
%% C-API func: SDL_Rect vncCursorHotspot(tSDL_vnc* vnc)

cursorHotspot(Vnc)
 -> case
      call
      ( ?vncCursorHotspot
      , <<Vnc:?_PTR
        >>
      )
    of
      <<Exdl:?SDL_Rect
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       clientKeyevent
%% Args:       Vnc, Downflag, Key
%% Returns:    Exdl
%% C-API func: int vncClientKeyevent(tSDL_vnc* vnc, unsigned char downflag, unsigned int key)

clientKeyevent(Vnc, Downflag, Key)
 -> case
      call
      ( ?vncClientKeyevent
      , <<Vnc:?_PTR
        , Downflag:?Uchar
        , Key:?Uint
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

%% Func:       clientPointerevent
%% Args:       Vnc, Buttonmask, X, Y
%% Returns:    Exdl
%% C-API func: int vncClientPointerevent(tSDL_vnc* vnc, unsigned char buttonmask, unsigned short x, unsigned short y)

clientPointerevent(Vnc, Buttonmask, X, Y)
 -> case
      call
      ( ?vncClientPointerevent
      , <<Vnc:?_PTR
        , Buttonmask:?Uchar
        , X:?Ushort
        , Y:?Ushort
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

%% Func:       disconnect
%% Args:       Vnc
%% Returns:    ok
%% C-API func: void vncDisconnect(tSDL_vnc* vnc)

disconnect(Vnc)
 -> cast
    ( ?vncDisconnect
    , <<Vnc:?_PTR
      >>
    )
.

-endif. % COMPILE_VNC
