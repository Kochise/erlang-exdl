%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_ttf.erl,v 1.0 2008/12/30 07:46:20 kochise Exp $
%%

-module(exdl_ttf).

-include("exdl.hrl").

-ifdef(COMPILE_TTF).

%% 1- EXPORT

%-compile(export_all).

-export( [ linkedVersion/0
         , byteSwappedUNICODE/1
         , init/0
         , openFont/2
         , openFontIndex/3
         , openFontRW/3
         , openFontIndexRW/4
         , getFontStyle/1
         , setFontStyle/2
         , fontHeight/1
         , fontAscent/1
         , fontDescent/1
         , fontLineSkip/1
         , fontFaces/1
         , fontFaceIsFixedWidth/1
         , fontFaceFamilyName/1
         , fontFaceStyleName/1
         , glyphMetrics/7
         , sizeText/4
         , sizeUTF8/4
         , sizeUNICODE/4
         , renderTextSolid/3
         , renderUTF8Solid/3
         , renderUNICODESolid/3
         , renderGlyphSolid/3
         , renderText/4
         , renderTextShaded/4
         , renderUTF8/4
         , renderUTF8Shaded/4
         , renderUNICODE/4
         , renderUNICODEShaded/4
         , renderGlyphShaded/4
         , renderTextBlended/3
         , renderUTF8Blended/3
         , renderUNICODEBlended/3
         , renderGlyphBlended/3
         , closeFont/1
         , quit/0
         , wasInit/0
         ]
       ).

%% 2- INCLUDE

-include("exdl.hrl").

-include("exdl_video.hrl"). % for sdl_color record

-include("exdl_ttf.hrl").
%-include("exdl_ttf_fp.hrl").

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
%% C-API func: const SDL_version* TTF_Linked_Version(void)

linkedVersion()
 -> case
      call
      ( ?TTF_Linked_Version
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

%% Func:       byteSwappedUNICODE
%% Args:       Swapped
%% Returns:    ok
%% C-API func: void TTF_ByteSwappedUNICODE(int swapped)

byteSwappedUNICODE(Swapped)
 -> cast
    ( ?TTF_ByteSwappedUNICODE
    , <<Swapped:?Int
      >>
    )
.

%% Func:       init
%% Args:       none
%% Returns:    Exdl
%% C-API func: int TTF_Init(void)

init()
 -> case
      call
      ( ?TTF_Init
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

%% Func:       openFont
%% Args:       File, Ptsize
%% Returns:    Exdl
%% C-API func: TTF_Font* TTF_OpenFont(const char* file, int ptsize)

openFont(File, Ptsize)
 -> case
      call
      ( ?TTF_OpenFont
      , <<File:?_PTR
        , Ptsize:?Int
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

%% Func:       openFontIndex
%% Args:       File, Ptsize, Index
%% Returns:    Exdl
%% C-API func: TTF_Font* TTF_OpenFontIndex(const char* file, int ptsize, long index)

openFontIndex(File, Ptsize, Index)
 -> case
      call
      ( ?TTF_OpenFontIndex
      , <<File:?_PTR
        , Ptsize:?Int
        , Index:?Long
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

%% Func:       openFontRW
%% Args:       Src, Freesrc, Ptsize
%% Returns:    Exdl
%% C-API func: TTF_Font* TTF_OpenFontRW(SDL_RWops* src, int freesrc, int ptsize)

openFontRW(Src, Freesrc, Ptsize)
 -> case
      call
      ( ?TTF_OpenFontRW
      , <<Src:?_PTR
        , Freesrc:?Int
        , Ptsize:?Int
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

%% Func:       openFontIndexRW
%% Args:       Src, Freesrc, Ptsize, Index
%% Returns:    Exdl
%% C-API func: TTF_Font* TTF_OpenFontIndexRW(SDL_RWops* src, int freesrc, int ptsize, long index)

openFontIndexRW(Src, Freesrc, Ptsize, Index)
 -> case
      call
      ( ?TTF_OpenFontIndexRW
      , <<Src:?_PTR
        , Freesrc:?Int
        , Ptsize:?Int
        , Index:?Long
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

%% Func:       getFontStyle
%% Args:       Font
%% Returns:    Exdl
%% C-API func: int TTF_GetFontStyle(const TTF_Font* font)

getFontStyle(Font)
 -> case
      call
      ( ?TTF_GetFontStyle
      , <<Font:?_PTR
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

%% Func:       setFontStyle
%% Args:       Font, Style
%% Returns:    ok
%% C-API func: void TTF_SetFontStyle(TTF_Font* font, int style)

setFontStyle(Font, Style)
 -> cast
    ( ?TTF_SetFontStyle
    , <<Font:?_PTR
      , Style:?Int
      >>
    )
.

%% Func:       fontHeight
%% Args:       Font
%% Returns:    Exdl
%% C-API func: int TTF_FontHeight(const TTF_Font* font)

fontHeight(Font)
 -> case
      call
      ( ?TTF_FontHeight
      , <<Font:?_PTR
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

%% Func:       fontAscent
%% Args:       Font
%% Returns:    Exdl
%% C-API func: int TTF_FontAscent(const TTF_Font* font)

fontAscent(Font)
 -> case
      call
      ( ?TTF_FontAscent
      , <<Font:?_PTR
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

%% Func:       fontDescent
%% Args:       Font
%% Returns:    Exdl
%% C-API func: int TTF_FontDescent(const TTF_Font* font)

fontDescent(Font)
 -> case
      call
      ( ?TTF_FontDescent
      , <<Font:?_PTR
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

%% Func:       fontLineSkip
%% Args:       Font
%% Returns:    Exdl
%% C-API func: int TTF_FontLineSkip(const TTF_Font* font)

fontLineSkip(Font)
 -> case
      call
      ( ?TTF_FontLineSkip
      , <<Font:?_PTR
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

%% Func:       fontFaces
%% Args:       Font
%% Returns:    Exdl
%% C-API func: long TTF_FontFaces(const TTF_Font* font)

fontFaces(Font)
 -> case
      call
      ( ?TTF_FontFaces
      , <<Font:?_PTR
        >>
      )
    of
      <<Exdl:?Long
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       fontFaceIsFixedWidth
%% Args:       Font
%% Returns:    Exdl
%% C-API func: int TTF_FontFaceIsFixedWidth(const TTF_Font* font)

fontFaceIsFixedWidth(Font)
 -> case
      call
      ( ?TTF_FontFaceIsFixedWidth
      , <<Font:?_PTR
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

%% Func:       fontFaceFamilyName
%% Args:       Font
%% Returns:    Exdl
%% C-API func: char* TTF_FontFaceFamilyName(const TTF_Font* font)

fontFaceFamilyName(Font)
 -> case
      call
      ( ?TTF_FontFaceFamilyName
      , <<Font:?_PTR
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

%% Func:       fontFaceStyleName
%% Args:       Font
%% Returns:    Exdl
%% C-API func: char* TTF_FontFaceStyleName(const TTF_Font* font)

fontFaceStyleName(Font)
 -> case
      call
      ( ?TTF_FontFaceStyleName
      , <<Font:?_PTR
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

%% Func:       glyphMetrics
%% Args:       Font, Ch, Minx, Maxx, Miny, Maxy, Advance
%% Returns:    Exdl
%% C-API func: int TTF_GlyphMetrics(TTF_Font* font, Uint16 ch, int* minx, int* maxx, int* miny, int* maxy, int* advance)

glyphMetrics(Font, Ch, Minx, Maxx, Miny, Maxy, Advance)
 -> case
      call
      ( ?TTF_GlyphMetrics
      , <<Font:?_PTR
        , Ch:?Uint16
        , Minx:?_PTR
        , Maxx:?_PTR
        , Miny:?_PTR
        , Maxy:?_PTR
        , Advance:?_PTR
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

%% Func:       sizeText
%% Args:       Font, Text, W, H
%% Returns:    Exdl
%% C-API func: int TTF_SizeText(TTF_Font* font, const char* text, int* w, int* h)

sizeText(Font, Text, W, H)
 -> case
      call
      ( ?TTF_SizeText
      , <<Font:?_PTR
        , Text:?_PTR
        , W:?_PTR
        , H:?_PTR
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

%% Func:       sizeUTF8
%% Args:       Font, Text, W, H
%% Returns:    Exdl
%% C-API func: int TTF_SizeUTF8(TTF_Font* font, const char* text, int* w, int* h)

sizeUTF8(Font, Text, W, H)
 -> case
      call
      ( ?TTF_SizeUTF8
      , <<Font:?_PTR
        , Text:?_PTR
        , W:?_PTR
        , H:?_PTR
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

%% Func:       sizeUNICODE
%% Args:       Font, Text, W, H
%% Returns:    Exdl
%% C-API func: int TTF_SizeUNICODE(TTF_Font* font, const Uint16* text, int* w, int* h)

sizeUNICODE(Font, Text, W, H)
 -> case
      call
      ( ?TTF_SizeUNICODE
      , <<Font:?_PTR
        , Text:?_PTR
        , W:?_PTR
        , H:?_PTR
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

%% Func:       renderTextSolid
%% Args:       Font, Text, Fg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderText_Solid(TTF_Font* font, const char* text, SDL_Color fg)

renderTextSolid(Font, Text, Fg)
 -> case
      call
      ( ?TTF_RenderText_Solid
      , <<Font:?_PTR
        , Text:?_PTR
        , Fg:?SDL_Color
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

%% Func:       renderUTF8Solid
%% Args:       Font, Text, Fg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderUTF8_Solid(TTF_Font* font, const char* text, SDL_Color fg)

renderUTF8Solid(Font, Text, Fg)
 -> case
      call
      ( ?TTF_RenderUTF8_Solid
      , <<Font:?_PTR
        , Text:?_PTR
        , Fg:?SDL_Color
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

%% Func:       renderUNICODESolid
%% Args:       Font, Text, Fg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderUNICODE_Solid(TTF_Font* font, const Uint16* text, SDL_Color fg)

renderUNICODESolid(Font, Text, Fg)
 -> case
      call
      ( ?TTF_RenderUNICODE_Solid
      , <<Font:?_PTR
        , Text:?_PTR
        , Fg:?SDL_Color
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

%% Func:       renderGlyphSolid
%% Args:       Font, Ch, Fg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderGlyph_Solid(TTF_Font* font, Uint16 ch, SDL_Color fg)

renderGlyphSolid(Font, Ch, Fg)
 -> case
      call
      ( ?TTF_RenderGlyph_Solid
      , <<Font:?_PTR
        , Ch:?Uint16
        , Fg:?SDL_Color
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

%% Func:       renderTextShaded
%% Args:       Font, Text, Fg, Bg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderText_Shaded(TTF_Font* font, const char* text, SDL_Color fg, SDL_Color bg)

renderText(Font, Text, Fg, Bg)
 -> renderTextShaded(Font, Text, Fg, Bg)
.
renderTextShaded(Font, Text, Fg, Bg)
 -> case
      call
      ( ?TTF_RenderText_Shaded
      , <<Font:?_PTR
        , Text:?_PTR
        , Fg#sdl_color
        , Bg#sdl_color
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

%% Func:       renderUTF8Shaded
%% Args:       Font, Text, Fg, Bg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderUTF8_Shaded(TTF_Font* font, const char* text, SDL_Color fg, SDL_Color bg)

renderUTF8(Font, Text, Fg, Bg)
 -> renderUTF8Shaded(Font, Text, Fg, Bg)
.
renderUTF8Shaded(Font, Text, Fg, Bg)
 -> case
      call
      ( ?TTF_RenderUTF8_Shaded
      , <<Font:?_PTR
        , Text:?_PTR
        , Fg#sdl_color
        , Bg#sdl_color
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

%% Func:       renderUNICODEShaded
%% Args:       Font, Text, Fg, Bg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderUNICODE_Shaded(TTF_Font* font, const Uint16* text, SDL_Color fg, SDL_Color bg)

renderUNICODE(Font, Text, Fg, Bg)
 -> renderUNICODEShaded(Font, Text, Fg, Bg)
.
renderUNICODEShaded(Font, Text, Fg, Bg)
 -> case
      call
      ( ?TTF_RenderUNICODE_Shaded
      , <<Font:?_PTR
        , Text:?_PTR
        , Fg#sdl_color
        , Bg#sdl_color
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

%% Func:       renderGlyphShaded
%% Args:       Font, Ch, Fg, Bg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderGlyph_Shaded(TTF_Font* font, Uint16 ch, SDL_Color fg, SDL_Color bg)

renderGlyphShaded(Font, Ch, Fg, Bg)
 -> case
      call
      ( ?TTF_RenderGlyph_Shaded
      , <<Font:?_PTR
        , Ch:?Uint16
        , Fg#sdl_color
        , Bg#sdl_color
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

%% Func:       renderTextBlended
%% Args:       Font, Text, Fg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderText_Blended(TTF_Font* font, const char* text, SDL_Color fg)

renderTextBlended(Font, Text, Fg)
 -> case
      call
      ( ?TTF_RenderText_Blended
      , <<Font:?_PTR
        , Text:?_PTR
        , Fg#sdl_color
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

%% Func:       renderUTF8Blended
%% Args:       Font, Text, Fg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderUTF8_Blended(TTF_Font* font, const char* text, SDL_Color fg)

renderUTF8Blended(Font, Text, Fg)
 -> case
      call
      ( ?TTF_RenderUTF8_Blended
      , <<Font:?_PTR
        , Text:?_PTR
        , Fg#sdl_color
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

%% Func:       renderUNICODEBlended
%% Args:       Font, Text, Fg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderUNICODE_Blended(TTF_Font* font, const Uint16* text, SDL_Color fg)

renderUNICODEBlended(Font, Text, Fg)
 -> case
      call
      ( ?TTF_RenderUNICODE_Blended
      , <<Font:?_PTR
        , Text:?_PTR
        , Fg#sdl_color
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

%% Func:       renderGlyphBlended
%% Args:       Font, Ch, Fg
%% Returns:    Exdl
%% C-API func: SDL_Surface* TTF_RenderGlyph_Blended(TTF_Font* font, Uint16 ch, SDL_Color fg)

renderGlyphBlended(Font, Ch, Fg)
 -> case
      call
      ( ?TTF_RenderGlyph_Blended
      , <<Font:?_PTR
        , Ch:?Uint16
        , Fg#sdl_color
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

%% Func:       closeFont
%% Args:       Font
%% Returns:    ok
%% C-API func: void TTF_CloseFont(TTF_Font* font)

closeFont(Font)
 -> cast
    ( ?TTF_CloseFont
    , <<Font:?_PTR
      >>
    )
.

%% Func:       quit
%% Args:       none
%% Returns:    ok
%% C-API func: void TTF_Quit(void)

quit()
 -> cast
    ( ?TTF_Quit
    , [
      ]
    )
.

%% Func:       wasInit
%% Args:       none
%% Returns:    Exdl
%% C-API func: int TTF_WasInit(void)

wasInit()
 -> case
      call
      ( ?TTF_WasInit
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

%%#define TTF_SetError SDL_SetError
%%#define TTF_GetError SDL_GetError

-endif. % COMPILE_TTF
