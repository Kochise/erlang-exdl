%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_glut.erl,v 1.0 2008/12/30 07:46:20 kochise Exp $
%%

-module(exdl_glut).

-include("exdl.hrl").

-ifdef(COMPILE_GLUT).

%% 1- EXPORT

%-compile(export_all).

%% 2- INCLUDE

-include("exdl_glut.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

-endif. % COMPILE_GLUT
