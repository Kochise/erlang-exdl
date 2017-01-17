%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_oglblit.hrl,v 1.0 2008/12/30 07:50:46 kochise Exp $
%%

%%%----------------------------------------------------------------------
%%% File    : exdl_oglblit.hrl
%%% Author  : David Koch <david.koch@libertysurf.fr>
%%% Purpose : defines from SDL_oglblit.h
%%% Created : 30 Dec 2008 by David Koch <david.koch@libertysurf.fr>
%%%----------------------------------------------------------------------

-record( texture
       , { name   %% GLuint  OpenGL texture name (texture id)
	       , format %% GLenum  The color format of the texture
	       , w      %% int
	       , h      %% int     The width and height of the original surface
	       , wtex   %% int
	       , htex   %% int     The actual size of the OpenGL texture (it might differ, power of two etc.)
         }
       ).   
