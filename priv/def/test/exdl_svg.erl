%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_svg.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_svg).

-include("exdl.hrl").

-ifdef(COMPILE_SVG).

%% 1- EXPORT

%-compile(export_all).

-export( [ load/1
         , loadBuffer/2
         , setOffset/3
         , setScale/3
         , renderToSurface/4
         , free/1
         , setFlags/2
         , width/1
         , height/1
         , version/0
         , setClipping/5
         ]
       ).

%% 2- INCLUDE

-include("exdl_svg.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       load
%% Args:       FileName
%% Returns:    Exdl
%% C-API func: SDL_svg_context* SVG_Load(const char* FileName)

load(FileName)
 -> case
      call
      ( ?SVG_Load
      , <<FileName:?_PTR
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

%% Func:       loadBuffer
%% Args:       Data, Len
%% Returns:    Exdl
%% C-API func: SDL_svg_context* SVG_LoadBuffer(char* data, int len)

loadBuffer(Data, Len)
 -> case
      call
      ( ?SVG_LoadBuffer
      , <<Data:?_PTR
        , Len:?Int
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

%% Func:       setOffset
%% Args:       Source, AOffsetX, AOffsetY
%% Returns:    Exdl
%% C-API func: int SVG_SetOffset(SDL_svg_context* Source, double aOffsetX, double aOffsetY)

setOffset(Source, AOffsetX, AOffsetY)
 -> case
      call
      ( ?SVG_SetOffset
      , <<Source:?_PTR
        , AOffsetX:?Double
        , AOffsetY:?Double
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

%% Func:       setScale
%% Args:       Source, AScaleX, AScaleY
%% Returns:    Exdl
%% C-API func: int SVG_SetScale(SDL_svg_context* Source, double aScaleX, double aScaleY)

setScale(Source, AScaleX, AScaleY)
 -> case
      call
      ( ?SVG_SetScale
      , <<Source:?_PTR
        , AScaleX:?Double
        , AScaleY:?Double
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

%% Func:       renderToSurface
%% Args:       Source, X, Y, Target
%% Returns:    Exdl
%% C-API func: int SVG_RenderToSurface(SDL_svg_context* Source, int X, int Y, SDL_Surface* Target)

renderToSurface(Source, X, Y, Target)
 -> case
      call
      ( ?SVG_RenderToSurface
      , <<Source:?_PTR
        , X:?Int
        , Y:?Int
        , Target:?_PTR
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

%% Func:       free
%% Args:       Source
%% Returns:    ok
%% C-API func: void SVG_Free(SDL_svg_context* Source)

free(Source)
 -> cast
    ( ?SVG_Free
    , <<Source:?_PTR
      >>
    )
.

%% Func:       setFlags
%% Args:       C, Flags
%% Returns:    ok
%% C-API func: void SVG_Set_Flags(SDL_svg_context* c, unsigned long flags)

setFlags(C, Flags)
 -> cast
    ( ?SVG_Set_Flags
    , <<C:?_PTR
      , Flags:?Ulong
      >>
    )
.

%% Func:       width
%% Args:       C
%% Returns:    Exdl
%% C-API func: float SVG_Width(SDL_svg_context* c)

width(C)
 -> case
      call
      ( ?SVG_Width
      , <<C:?_PTR
        >>
      )
    of
      <<Exdl:?Float
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       height
%% Args:       C
%% Returns:    Exdl
%% C-API func: float SVG_Height(SDL_svg_context* c)

height(C)
 -> case
      call
      ( ?SVG_Height
      , <<C:?_PTR
        >>
      )
    of
      <<Exdl:?Float
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       version
%% Args:       none
%% Returns:    Exdl
%% C-API func: int SVG_Version(void)

version()
 -> case
      call
      ( ?SVG_Version
      , [
        ]
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       setClipping
%% Args:       C, Minx, Miny, Maxx, Maxy
%% Returns:    ok
%% C-API func: void SVG_SetClipping(SDL_svg_context* c, int minx, int miny, int maxx, int maxy)

setClipping(C, Minx, Miny, Maxx, Maxy)
 -> cast
    ( ?SVG_SetClipping
    , <<C:?_PTR
      , Minx:?Int
      , Miny:?Int
      , Maxx:?Int
      , Maxy:?Int
      >>
    )
.


-endif. % COMPILE_SVG
