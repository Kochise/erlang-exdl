%%
%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_mouse.erl,v 1.2 2005/06/29 14:45:39 dgud Exp $
%%

-module(exdl_mouse).

%% 1- EXPORT

%-compile(export_all).

-export( [ createCursor/6
         , freeCursor/1
         , getCursor/0
         , getMouseState/0
         , getRelativeMouseState/0
         , setCursor/1
         , showCursor/1
         , warpMouse/2
         ]
       ).

%% 2- INCLUDE

-include("exdl.hrl").

-include("exdl_util.hrl").

-include("exdl_mouse.hrl").
%-include("exdl_mouse_fp.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       getMouseState
%% Args:       none
%% Returns:    { MouseState, X, Y }
%% C-API func: Uint8 SDL_GetMouseState(int* x, int* y)
%% Desc:

getMouseState()
 -> <<State:8
    , X:16
    , Y:16
    >>
    = call
      ( ?SDL_GetMouseState
      , [
        ]
      )
  , { State
    , X
    , Y
    }
.

%% Func:       getRelativeMouseState
%% Args:       none
%% Returns:    { MouseState, X, Y }
%% C-API func: Uint8 SDL_GetRelativeMouseState(int* x, int* y);
%% Desc:

getRelativeMouseState()
 -> <<State:8
    , X:16
    , Y:16
    >>
    = call
      ( ?SDL_GetRelativeMouseState
      , [
        ]
      )
  , { State
    , X
    , Y
    }
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

%% Func:        createCursor
%% Args:        Data (Binary), Mask (Binary), W, H, HotX, HotY
%% Returns:     CursorRef
%% C-API func:  SDL_Cursor* SDL_CreateCursor(Uint8* data, Uint8* mask, int w, int h, int hot_x, int hot_y);
%% Desc:        Data & Mask must be less than 32*32 bytes.

createCursor(Data, Mask, W, H, HotX, HotY)
  when is_binary(Data), is_binary(Mask)
 -> case
      call
      ( ?SDL_CreateCursor
      , <<W:16/native
        , H:16/native
        , HotX:16/native
        , HotY:16/native
        , (size(Data)):16/native
        , Data/binary
        , Mask/binary
        >>
      )
    of
      <<0:64
      >>
        -> exit
           ( { createCursor
             , returned_null
             }
           )
    ; <<Ptr:?_PTR
      >>
        -> { cursorp
           , Ptr
           }
    end
.

%% Func:        setCursor
%% Args:        CursorRef
%% Returns:     ok
%% C-API func:  void SDL_SetCursor(SDL_Cursor* cursor);

setCursor({cursorp, Ref})
 -> cast
    ( ?SDL_SetCursor
    , <<Ref:?_PTR
      >>
    )
.

%% Func:        getCursor
%% Args:        none
%% Returns:     A cursorRef
%% C-API func:  void SDL_SetCursor(SDL_Cursor* cursor);

getCursor()
 -> case
      call
      ( ?SDL_GetCursor
      , [
        ]
      )
    of
      <<0:?_PTR
      >>
        -> exit
           ( { getCursor
             , returned_null
             }
           )
    ; <<Ptr:?_PTR
      >>
        -> { cursorp
           , Ptr
           }
    end
.

%% Func:        freeCursor
%% Args:        CursorRef
%% Returns:     ok
%% C-API func:  void SDL_FreeCursor(SDL_Cursor* cursor);

freeCursor({cursorp,Ref})
 -> cast
    ( ?SDL_FreeCursor
    , <<Ref:?_PTR
      >>
    )
.

%% Func:        showCursor
%% Args:        true | false
%% Returns:     true | false (if cursor was displayed before the call)
%% C-API func:  int SDL_ShowCursor(int toggle);

showCursor(Bool)
 -> B
    = case
        Bool
      of
        false
          -> 0
      ; true 
          -> 1
      end
  , <<Res:8
    >>
    = call
      ( ?SDL_ShowCursor
      , [ B
        ]
      )
  , Res =:= 1
.
