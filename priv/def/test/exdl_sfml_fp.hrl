%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_sfml_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_RTF).

  %% EXDL_RTF C SRC ENUM CHECK
  -define(_ENUM_EXDL_RTF,  ?HEAD            + 1).

-else. % COMPILE_RTF

  -define(_ENUM_EXDL_RTF,  ?EXDL_RTF_HRL).

-endif. % COMPILE_RTF
