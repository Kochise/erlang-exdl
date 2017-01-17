%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_rtf.erl,v 1.0 2008/12/30 07:46:20 kochise Exp $
%%

-module(exdl_rtf).

-include("exdl.hrl").

-ifdef(COMPILE_RTF).

%% 1- EXPORT

%-compile(export_all).

-export( [ linkedVersion/0
         , createContext/1
         , load/2
         , loadRW/3
         , getTitle/1
         , getSubject/1
         , getAuthor/1
         , getHeight/2
         , render/4
         , freeContext/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_rtf.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       linkedVersion
%% Args:       none
%% Returns:    Exdl
%% C-API func: const SDL_version* RTF_Linked_Version(void)

linkedVersion()
 -> case
      call
      ( ?RTF_Linked_Version
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createContext
%% Args:       FontEngine
%% Returns:    Exdl
%% C-API func: RTF_Context* RTF_CreateContext(RTF_FontEngine* fontEngine)

createContext(FontEngine)
 -> case
      call
      ( ?RTF_CreateContext
      , <<FontEngine:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       load
%% Args:       Ctx, File
%% Returns:    Exdl
%% C-API func: int RTF_Load(RTF_Context* ctx, const char* file)

load(Ctx, File)
 -> case
      call
      ( ?RTF_Load
      , <<Ctx:?_PTR
        , File:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       loadRW
%% Args:       Ctx, Src, Freesrc
%% Returns:    Exdl
%% C-API func: int RTF_Load_RW(RTF_Context* ctx, SDL_RWops* src, int freesrc)

loadRW(Ctx, Src, Freesrc)
 -> case
      call
      ( ?RTF_Load_RW
      , <<Ctx:?_PTR
        , Src:?_PTR
        , Freesrc:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTitle
%% Args:       Ctx
%% Returns:    Exdl
%% C-API func: const char* RTF_GetTitle(RTF_Context* ctx)

getTitle(Ctx)
 -> case
      call
      ( ?RTF_GetTitle
      , <<Ctx:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?String
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getSubject
%% Args:       Ctx
%% Returns:    Exdl
%% C-API func: const char* RTF_GetSubject(RTF_Context* ctx)

getSubject(Ctx)
 -> case
      call
      ( ?RTF_GetSubject
      , <<Ctx:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?String
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getAuthor
%% Args:       Ctx
%% Returns:    Exdl
%% C-API func: const char* RTF_GetAuthor(RTF_Context* ctx)

getAuthor(Ctx)
 -> case
      call
      ( ?RTF_GetAuthor
      , <<Ctx:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?String
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getHeight
%% Args:       Ctx, Width
%% Returns:    Exdl
%% C-API func: int RTF_GetHeight(RTF_Context* ctx, int width)

getHeight(Ctx, Width)
 -> case
      call
      ( ?RTF_GetHeight
      , <<Ctx:?_PTR
        , Width:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       render
%% Args:       Ctx, Surface, Rect, YOffset
%% Returns:    ok
%% C-API func: void RTF_Render(RTF_Context* ctx, SDL_Surface* surface, SDL_Rect* rect, int yOffset)

render(Ctx, Surface, Rect, YOffset)
 -> cast
    ( ?RTF_Render
    , <<Ctx:?_PTR
      , Surface:?_PTR
      , Rect:?_PTR
      , YOffset:?Int
      >>
    )
.

%% Func:       freeContext
%% Args:       Ctx
%% Returns:    ok
%% C-API func: void RTF_FreeContext(RTF_Context* ctx)

freeContext(Ctx)
 -> cast
    ( ?RTF_FreeContext
    , <<Ctx:?_PTR
      >>
    )
.

-endif. % COMPILE_RTF
