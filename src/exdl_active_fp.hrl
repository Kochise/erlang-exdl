%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_active_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-define(SDL_GetAppState,    ?EXDL_ACTIVE_HRL + 0).

%% EXDL_ACTIVE C SRC ENUM CHECK
-define(_ENUM_EXDL_ACTIVE,  ?SDL_GetAppState + 1).
