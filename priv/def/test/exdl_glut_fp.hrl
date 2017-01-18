%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_glut_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_GLU).

  %% EXDL_GLU C SRC ENUM CHECK
  -define(_ENUM_EXDL_GLU,  ?HEAD            + 1).

-else. % COMPILE_GLU

  -define(_ENUM_EXDL_GLU,  ?EXDL_GLU_HRL).

-endif. % COMPILE_GLU
