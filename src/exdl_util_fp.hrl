%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_util_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_GL).

  -define(SDL_UTIL_copySdlImage2GLArray,  ?SDL_UTIL_HRL                   + 0).
  -define(SDL_UTIL_debug,                 ?SDL_UTIL_copySdlImage2GLArray  + 1).
  -define(MYGL_malloc,                    ?SDL_UTIL_debug                 + 1).
  -define(MYGL_write,                     ?MYGL_malloc                    + 1).

  %% EXDL_UTIL C SRC ENUM CHECK
  -define(_ENUM_EXDL_UTIL,                ?MYGL_write                     + 1).

-else. % COMPILE_GL

  -define(_ENUM_EXDL_UTIL,                ?SDL_UTIL_HRL).

-endif. % COMPILE_GL
