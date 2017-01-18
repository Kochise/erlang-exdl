%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_mouse.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_mouse).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ getMouseState/2
         , getRelativeMouseState/2
         , warpMouse/2
         , createCursor/6
         , setCursor/1
         , getCursor/0
         , freeCursor/1
         , showCursor/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_mouse.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       getMouseState
%% Args:       X, Y
%% Returns:    Exdl
%% C-API func: Uint8 SDL_GetMouseState(int* x, int* y)

getMouseState(X, Y)
 -> case
      call
      ( ?SDL_GetMouseState
      , <<X:?_PTR
        , Y:?_PTR
        >>
      )
    of
      <<Exdl:?Uint8
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getRelativeMouseState
%% Args:       X, Y
%% Returns:    Exdl
%% C-API func: Uint8 SDL_GetRelativeMouseState(int* x, int* y)

getRelativeMouseState(X, Y)
 -> case
      call
      ( ?SDL_GetRelativeMouseState
      , <<X:?_PTR
        , Y:?_PTR
        >>
      )
    of
      <<Exdl:?Uint8
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       warpMouse
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void SDL_WarpMouse(Uint16 x, Uint16 y)

warpMouse(X, Y)
 -> cast
    ( ?SDL_WarpMouse
    , <<X:?Uint16
      , Y:?Uint16
      >>
    )
.

%% Func:       createCursor
%% Args:       Data, Mask, W, H, HotX, HotY
%% Returns:    Exdl
%% C-API func: SDL_Cursor* SDL_CreateCursor(Uint8* data, Uint8* mask, int w, int h, int hot_x, int hot_y)

createCursor(Data, Mask, W, H, HotX, HotY)
 -> case
      call
      ( ?SDL_CreateCursor
      , <<Data:?_PTR
        , Mask:?_PTR
        , W:?Int
        , H:?Int
        , HotX:?Int
        , HotY:?Int
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

%% Func:       setCursor
%% Args:       Cursor
%% Returns:    ok
%% C-API func: void SDL_SetCursor(SDL_Cursor* cursor)

setCursor(Cursor)
 -> cast
    ( ?SDL_SetCursor
    , <<Cursor:?_PTR
      >>
    )
.

%% Func:       getCursor
%% Args:       none
%% Returns:    Exdl
%% C-API func: SDL_Cursor* SDL_GetCursor(void)

getCursor()
 -> case
      call
      ( ?SDL_GetCursor
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

%% Func:       freeCursor
%% Args:       Cursor
%% Returns:    ok
%% C-API func: void SDL_FreeCursor(SDL_Cursor* cursor)

freeCursor(Cursor)
 -> cast
    ( ?SDL_FreeCursor
    , <<Cursor:?_PTR
      >>
    )
.

%% Func:       showCursor
%% Args:       Toggle
%% Returns:    Exdl
%% C-API func: int SDL_ShowCursor(int toggle)

showCursor(Toggle)
 -> case
      call
      ( ?SDL_ShowCursor
      , <<Toggle:?Int
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

