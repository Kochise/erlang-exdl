%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_mouse_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

  -define(SDL_GetMouseState,          ?EXDL_MOUSE_HRL             + 0).
  -define(SDL_GetRelativeMouseState,  ?SDL_GetMouseState          + 1).
  -define(SDL_WarpMouse,              ?SDL_GetRelativeMouseState  + 1).
  -define(SDL_CreateCursor,           ?SDL_WarpMouse              + 1).
  -define(SDL_SetCursor,              ?SDL_CreateCursor           + 1).
  -define(SDL_GetCursor,              ?SDL_SetCursor              + 1).
  -define(SDL_FreeCursor,             ?SDL_GetCursor              + 1).
  -define(SDL_ShowCursor,             ?SDL_FreeCursor             + 1).

  %% EXDL_MOUSE C SRC ENUM CHECK
  -define(_ENUM_EXDL_MOUSE,           ?SDL_ShowCursor             + 1).

