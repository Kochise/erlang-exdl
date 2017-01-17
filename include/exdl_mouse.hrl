%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_mouse.hrl,v 1.1 2004/03/30 07:50:46 bjorng Exp $
%%

%%%----------------------------------------------------------------------
%%% File    : exdl_mouse.hrl
%%% Author  : Dan Gudmundsson <dgud@erix.ericsson.se>
%%% Purpose : Usable mouse macros
%%% Created : 12 Jul 2000 by Dan Gudmundsson <dgud@erix.ericsson.se>
%%% Modified: 12 Nov 2008 by David Koch <david.koch@libertysurf.fr>
%%%----------------------------------------------------------------------

-define(SDL_BUTTON_LEFT,      1).
-define(SDL_BUTTON_MIDDLE,    2).
-define(SDL_BUTTON_RIGHT,     3).
-define(SDL_BUTTON_WHEELUP,   4).
-define(SDL_BUTTON_WHEELDOWN, 5).
-define(SDL_BUTTON_X1,        6).
-define(SDL_BUTTON_X2,        7).

-define(SDL_BUTTON_LMASK,     2#000001).
-define(SDL_BUTTON_MMASK,     2#000010).
-define(SDL_BUTTON_RMASK,     2#000100).
-define(SDL_BUTTON_X1MASK,    2#001000).
-define(SDL_BUTTON_X2MASK,    2#010000).
