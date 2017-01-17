%%
%%  Copyright (c) 2010 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_thread.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_thread).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

%% This is of no use since Erlang's threading mechanism is better, by far

-export( [ 
         ]
       ).

%% 2- INCLUDE

-include("exdl_thread.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% This is of no use since Erlang's threading mechanism is better, by far

