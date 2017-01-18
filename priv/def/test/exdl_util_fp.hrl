%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_util_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_TTF).

  %% EXDL_TTF C SRC ENUM CHECK
  -define(_ENUM_EXDL_TTF,  ?HEAD            + 1).

-else. % COMPILE_TTF

  -define(_ENUM_EXDL_TTF,  ?EXDL_TTF_HRL).

-endif. % COMPILE_TTF
