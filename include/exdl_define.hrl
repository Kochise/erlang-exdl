%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl.hrl,v 1.1 2004/03/30 07:50:46 bjorng Exp $
%%

%%%  Defines for SDL 
%%%  see documentation for SDL and SDL/sdl.h
%%%
%%%  By Dan Gudmundsson

-define(SDL_INIT_TIMER,       16#00000001).
-define(SDL_INIT_AUDIO,       16#00000010).
-define(SDL_INIT_VIDEO,       16#00000020).
-define(SDL_INIT_CDROM,       16#00000100).
-define(SDL_INIT_JOYSTICK,    16#00000200).
-define(SDL_INIT_NOPARACHUTE, 16#00100000).
-define(SDL_INIT_EVENTTHREAD, 16#01000000). %% Doesn't works on windows and in the driver
-define(SDL_INIT_EVERYTHING,  16#0000FFFF).

%%% EXDL specific values

-define(SDL_INIT_NOERLDRIVER, 16#02000000). %% Don't use the linked-in driver
-define(SDL_INIT_ERLDRIVER,   16#04000000). %% Use the linked-in driver

-define( printError()
       , fun([])
           -> ignore
         ; (Estr)
             -> io:format
                ( "SDL Error in ~p ~p: " ++ Estr ++"~n"
                , [ ?MODULE
                  , ?LINE
                  ]
                ) 
          end(exdl:getError())
       ).

%% Basic datatype

-define(UN,      unsigned-native).
-define(SN,      signed-native).
-define(FN,      float-native).

%% Easy C code conversion

-define(Boolean, 8/signed).
-define(Char,    8/signed).
-define(Byte,    8/signed).
-define(Ubyte,   8/unsigned).
-define(Short,   16/signed-native).
-define(Ushort,  16/unsigned-native).
-define(Int,     32/signed-native).
-define(Uint,    32/unsigned-native).
-define(Long,    32/signed-native).
-define(Ulong,   32/unsigned-native).
-define(Enum,    32/unsigned-native).
-define(Float,   32/float-native).
-define(Double,  64/float-native).

%% Easy SDL code conversion

-define(Sint8,   ?Byte).
-define(Uint8,   ?Ubyte).
-define(Sint16,  ?Short).
-define(Uint16,  ?Ushort).
-define(Sint32,  ?Long).
-define(Uint32,  ?Ulong).
-define(Sint64,  64/signed-native).
-define(Uint64,  64/unsigned-native).

%% Easy PTR type conversion

-define(_PTR32,  ?Uint32).
-define(_PTR64,  ?Uint64).
-define(_PTRSYS, erlang:system_info(wordsize)).
-define(_PTR,    ?_PTR32).
-define(String,  ?_PTR).

