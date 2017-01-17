%%
%%  Copyright (c) 2010 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_sfml_fp.hrl,v 1.1 2010/11/04 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_SFML).

  %% EXDL_SFML C SRC ENUM CHECK
  -define(_ENUM_EXDL_SFML, ?EXDL_SFML_H + 0).

-else. % COMPILE_SFML

  -define(_ENUM_EXDL_SFML, ?EXDL_SFML_H).

-endif. % COMPILE_SFML
