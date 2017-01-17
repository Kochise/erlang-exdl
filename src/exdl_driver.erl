%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_driver.erl,v 1.3 2004/10/05 14:10:29 dgud Exp $
%%

%%%----------------------------------------------------------------------
%%% File     : exdl_driver.erl
%%% Author   : Dan Gudmundsson <dgud@users.sf.net>
%%% Purpose  : To give access to the Simple Direct Media Layer
%%%            by Sam Lantinga, see www.libsdl.org.
%%% Created  : 23 Jun 2000 by Dan Gudmundsson <dgud@users.sf.net>
%%% Modified : 23 Nov 2008 by David Koch <david.koch@libertysurf.fr>
%%%----------------------------------------------------------------------

-module(exdl_driver).

%% 1- EXPORT

%-compile(export_all).

-export( [ init/1
         , quit/0
         , getError/0

         , call/2
         , cast/2
         , send_bin/1
         , send_bin/3
         ]
       ).

%% 2- INCLUDE

-include("exdl.hrl").

-include("exdl_util.hrl").

%-include("exdl_fp.hrl").

%% 3- IMPORT

%% 4- FUNCTIONS

%% Func:       init
%% Args:       BitMask
%% Returns:    WrapperRef
%% C-API func: int SDL_Init(Uint32 flags);
%% Desc:       Initializes the SDL (including the erlang specific parts)

init(Flags)
  when is_integer(Flags)
 -> Path
    = case
        code:priv_dir
        ( exdl
        )
      of
        P
          when is_list(P)
          -> P
      ; { error
        , _
        }
          %% in case you use erl -pa ../ebin priv_dir don't work :-(	
          -> case
               code:is_loaded
               ( ?MODULE
               )
             of
               { file
               , SDLPath
               }
                 -> strip
                    ( SDLPath
                      ,  "ebin/"
                      ++ atom_to_list(?MODULE)
                      ++ ".beam"
                    ) ++ "priv/"
                 %% For debugging 
             ; _ ->    atom_to_list(c:pwd())
                    ++ "../priv/"
             end
      end
  , case
      os:type
      (
      )
    of
      { win32
      , _
      }
        -> OsPath
           =    Path
             ++ ";"
             ++ os:getenv
                ( "PATH"
                )
         , os:putenv
           ( "PATH"
           , OsPath
           )
    ; _ -> ignore
    end
  , case
      catch
        erl_ddll:load_driver
        ( Path
        , "exdl_driver"
        )
    of
      ok
        -> ok
    ; {error, R}
        -> io:format
           ( "Driver Failed ~p ~n"
           , [ erl_ddll:format_error(R)
             ]
           )
    ; Other
        -> io:format
           ( "Driver crashed: ~p ~n"
           , [ Other
             ]
           )
    end
  , Port
    = open_port
      ( { spawn
        , "exdl_driver"
        }
      , [ binary
        ]
      )
  , register
    ( exdl_port
    , Port
    )
  , cast
    ( ?SDL_Init
    , <<Flags:?Uint
      >>
    )
  , Port
.

%% Func:       quit
%% Args:       none
%% Returns:    Quits the wrapper
%% C-API func: void SDL_Quit(void);

quit()
 -> cast
    ( ?SDL_Quit
    , [
      ]
    )
  , erlang:port_close
    ( exdl_port
    )
  , erl_ddll:unload_driver
    ( "exdl_driver"
    )
.

%% Func:       getError
%% Args:       none
%% Returns:    DescString
%% C-API func: char* SDL_GetError(void);

getError()
 -> Bin
    = call
      ( ?SDL_GetError
      , [
        ]
      )
  , binary_to_list
    ( Bin
    )
.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

call(Op, Arg)
 -> erlang:port_control
    ( exdl_port
    , Op
    , Arg
    )
.

cast(Op, Arg)
 -> call
    ( Op
    , Arg
    )
  , ok
.

send_bin(Bin)
  when is_binary(Bin)
 -> erlang:port_command
    ( exdl_port
    , Bin
    )
.

send_bin(#sdlmem{bin=Bin}, _, _)
 -> send_bin
    ( Bin
    )
; send_bin(Bin, _, _)
  when is_binary(Bin)
 -> send_bin
    ( Bin
    )
; send_bin(Term, Mod, Line)
 -> erlang:error
    ( { Mod
      , Line
      , unsupported_type
      , Term
      }
    )
.

%%%%%%%%%%%%%%%%% NON SDL FUNCTIONS %%%%%%%%%%%%%%%%

strip(Src, Src)
 -> [
    ]
; strip([H | R], Src)
 -> [ H
    | strip
      ( R
      , Src
      )
    ]
.
