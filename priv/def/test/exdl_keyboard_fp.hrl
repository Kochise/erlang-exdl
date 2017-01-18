%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_keyboard_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

  -define(SDL_EnableUNICODE,    ?EXDL_KEYBOARD_HRL    + 0).
  -define(SDL_EnableKeyRepeat,  ?SDL_EnableUNICODE    + 1).
  -define(SDL_GetKeyRepeat,     ?SDL_EnableKeyRepeat  + 1).
  -define(SDL_GetKeyState,      ?SDL_GetKeyRepeat     + 1).
  -define(SDL_GetModState,      ?SDL_GetKeyState      + 1).
  -define(SDL_SetModState,      ?SDL_GetModState      + 1).
  -define(SDL_GetKeyName,       ?SDL_SetModState      + 1).

  %% EXDL_KEYBOARD C SRC ENUM CHECK
  -define(_ENUM_EXDL_KEYBOARD,  ?SDL_GetKeyName       + 1).

