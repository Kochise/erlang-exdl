%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-define(SDL_Init,        ?SDL_HRL       + 0).
-define(SDL_Quit,        ?SDL_Init      + 1).
-define(SDL_GetError,    ?SDL_Quit      + 1).

%% EXDL_SDL C SRC ENUM CHECK
-define(_ENUM_EXDL_SDL,  ?SDL_GetError  + 1).
