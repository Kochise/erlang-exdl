%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_ttf.hrl,v 1.0 2008/12/30 07:50:46 kochise Exp $
%%

%%%----------------------------------------------------------------------
%%% File    : exdl_ttf.hrl
%%% Author  : David Koch <david.koch@libertysurf.fr>
%%% Purpose : defines from SDL_ttf.h
%%% Created : 30 Dec 2008 by David Koch <david.koch@libertysurf.fr>
%%%----------------------------------------------------------------------

-define(TTF_STYLE_NORMAL,    16#00).
-define(TTF_STYLE_BOLD,      16#01).
-define(TTF_STYLE_ITALIC,    16#02).
-define(TTF_STYLE_UNDERLINE, 16#04).

%% ZERO WIDTH NO-BREAKSPACE (Unicode byte order mark)

-define(UNICODE_BOM_NATIVE,  16#FEFF).
-define(UNICODE_BOM_SWAPPED, 16#FFFE).

