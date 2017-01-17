%%
%%  Copyright (c) 2010 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_gfx.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_gfx).

-include("exdl.hrl").

-ifdef(COMPILE_GFX).

%% 1- EXPORT

%-compile(export_all).

%% SDL_framerate

-export( [ initFramerate/1
         , setFramerate/2
         , getFramerate/1
         , framerateDelay/1
         ]
       ).

%% SDL_gfxBlitFunc

-export( [ gfxBlitRGBA/4
         , gfxSetAlpha/2
         ]
       ).

%% SDL_gfxPrimitives

-export( [ color/4
         , rGBA/7
         , color/5
         , rGBA/8
         , color/5
         , rGBA/8
         , color/6
         , rGBA/9
         , color/6
         , rGBA/9
         , color/6
         , rGBA/9
         , color/6
         , rGBA/9
         , color/5
         , rGBA/8
         , color/7
         , rGBA/10
         , color/5
         , rGBA/8
         , circleColor/5
         , circleRGBA/8
         , color/6
         , rGBA/9
         , color/6
         , rGBA/9
         , ellipseColor/6
         , ellipseRGBA/9
         , color/7
         , rGBA/10
         , pieColor/7
         , pieRGBA/10
         , color/8
         , rGBA/11
         , color/8
         , rGBA/11
         , trigonColor/8
         , trigonRGBA/11
         , color/5
         , rGBA/8
         , color/5
         , rGBA/8
         , polygonColor/5
         , polygonRGBA/8
         , polygon/7
         , polygonColorMT/7
         , polygonRGBAMT/10
         , polygonMT/9
         , color/6
         , rGBA/9
         , color/5
         , rGBA/8
         , color/5
         , rGBA/8
         , primitivesSetFont/3
         ]
       ).

%% SDL_imageFilter

-export( [ imageFilterMMXdetect/0
         , imageFilterMMXoff/0
         , imageFilterMMXon/0
         , imageFilterAdd/4
         , imageFilterMean/4
         , imageFilterSub/4
         , imageFilterAbsDiff/4
         , imageFilterMult/4
         , imageFilterMultNor/4
         , imageFilterMultDivby2/4
         , imageFilterMultDivby4/4
         , imageFilterBitAnd/4
         , imageFilterBitOr/4
         , imageFilterDiv/4
         , imageFilterBitNegation/3
         , imageFilterAddByte/4
         , imageFilterAddUint/4
         , imageFilterAddByteToHalf/4
         , imageFilterSubByte/4
         , imageFilterSubUint/4
         , imageFilterShiftRight/4
         , imageFilterShiftRightUint/4
         , imageFilterMultByByte/4
         , imageFilterShiftRightAndMultByByte/5
         , imageFilterShiftLeftByte/4
         , imageFilterShiftLeftUint/4
         , imageFilterShiftLeft/4
         , imageFilterBinarizeUsingThreshold/4
         , imageFilterClipToRange/5
         , imageFilterNormalizeLinear/7
         , imageFilterConvolveKernel3x3Divide/6
         , imageFilterConvolveKernel5x5Divide/6
         , imageFilterConvolveKernel7x7Divide/6
         , imageFilterConvolveKernel9x9Divide/6
         , imageFilterConvolveKernel3x3ShiftRight/6
         , imageFilterConvolveKernel5x5ShiftRight/6
         , imageFilterConvolveKernel7x7ShiftRight/6
         , imageFilterConvolveKernel9x9ShiftRight/6
         , imageFilterSobelX/4
         , imageFilterSobelXShiftRight/5
         , imageFilterAlignStack/0
         , imageFilterRestoreStack/0
         ]
       ).

%% SDL_rotozoom

-export( [ surface/4
         , surfaceXY/5
         , surfaceSize/6
         , surfaceSizeXY/7
         , surface/4
         , surfaceSize/6
         , surface/3
         , surface90Degrees/2
         ]
       ).

%% 2- INCLUDE

-include("exdl_gfx.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% SDL_framerate

%% Func:       initFramerate
%% Args:       Manager
%% Returns:    ok
%% C-API func: void SDL_initFramerate(FPSmanager* manager)

initFramerate(Manager)
 -> cast
    ( ?SDL_initFramerate
    , <<Manager:?_PTR
      >>
    )
.

%% Func:       setFramerate
%% Args:       Manager, Rate
%% Returns:    Exdl
%% C-API func: int SDL_setFramerate(FPSmanager* manager, int rate)

setFramerate(Manager, Rate)
 -> case
      call
      ( ?SDL_setFramerate
      , <<Manager:?_PTR
        , Rate:?Int
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

%% Func:       getFramerate
%% Args:       Manager
%% Returns:    Exdl
%% C-API func: int SDL_getFramerate(FPSmanager* manager)

getFramerate(Manager)
 -> case
      call
      ( ?SDL_getFramerate
      , <<Manager:?_PTR
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

%% Func:       framerateDelay
%% Args:       Manager
%% Returns:    ok
%% C-API func: void SDL_framerateDelay(FPSmanager* manager)

framerateDelay(Manager)
 -> cast
    ( ?SDL_framerateDelay
    , <<Manager:?_PTR
      >>
    )
.

%% SDL_gfxBlitFunc

%% Func:       gfxBlitRGBA
%% Args:       Src, Srcrect, Dst, Dstrect
%% Returns:    Exdl
%% C-API func: int SDL_gfxBlitRGBA(SDL_Surface* src, SDL_Rect* srcrect, SDL_Surface* dst, SDL_Rect* dstrect)

gfxBlitRGBA(Src, Srcrect, Dst, Dstrect)
 -> case
      call
      ( ?SDL_gfxBlitRGBA
      , <<Src:?_PTR
        , Srcrect:?_PTR
        , Dst:?_PTR
        , Dstrect:?_PTR
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

%% Func:       gfxSetAlpha
%% Args:       Src, A
%% Returns:    Exdl
%% C-API func: int SDL_gfxSetAlpha(SDL_Surface* src, Uint8 a)

gfxSetAlpha(Src, A)
 -> case
      call
      ( ?SDL_gfxSetAlpha
      , <<Src:?_PTR
        , A:?Uint8
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

%% SDL_gfxPrimitives

%% Func:       color
%% Args:       Dst, X, Y, Color
%% Returns:    Exdl
%% C-API func: int pixelColor(SDL_Surface* dst, Sint16 x, Sint16 y, Uint32 color)

color(Dst, X, Y, Color)
 -> case
      call
      ( ?pixelColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X, Y, R, G, B, A
%% Returns:    Exdl
%% C-API func: int pixelRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X, Y, R, G, B, A)
 -> case
      call
      ( ?pixelRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X1, X2, Y, Color
%% Returns:    Exdl
%% C-API func: int hlineColor(SDL_Surface* dst, Sint16 x1, Sint16 x2, Sint16 y, Uint32 color)

color(Dst, X1, X2, Y, Color)
 -> case
      call
      ( ?hlineColor
      , <<Dst:?_PTR
        , X1:?Sint16
        , X2:?Sint16
        , Y:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X1, X2, Y, R, G, B, A
%% Returns:    Exdl
%% C-API func: int hlineRGBA(SDL_Surface* dst, Sint16 x1, Sint16 x2, Sint16 y, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X1, X2, Y, R, G, B, A)
 -> case
      call
      ( ?hlineRGBA
      , <<Dst:?_PTR
        , X1:?Sint16
        , X2:?Sint16
        , Y:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X, Y1, Y2, Color
%% Returns:    Exdl
%% C-API func: int vlineColor(SDL_Surface* dst, Sint16 x, Sint16 y1, Sint16 y2, Uint32 color)

color(Dst, X, Y1, Y2, Color)
 -> case
      call
      ( ?vlineColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y1:?Sint16
        , Y2:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X, Y1, Y2, R, G, B, A
%% Returns:    Exdl
%% C-API func: int vlineRGBA(SDL_Surface* dst, Sint16 x, Sint16 y1, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X, Y1, Y2, R, G, B, A)
 -> case
      call
      ( ?vlineRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y1:?Sint16
        , Y2:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X1, Y1, X2, Y2, Color
%% Returns:    Exdl
%% C-API func: int rectangleColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color)

color(Dst, X1, Y1, X2, Y2, Color)
 -> case
      call
      ( ?rectangleColor
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X1, Y1, X2, Y2, R, G, B, A
%% Returns:    Exdl
%% C-API func: int rectangleRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X1, Y1, X2, Y2, R, G, B, A)
 -> case
      call
      ( ?rectangleRGBA
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X1, Y1, X2, Y2, Color
%% Returns:    Exdl
%% C-API func: int boxColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color)

color(Dst, X1, Y1, X2, Y2, Color)
 -> case
      call
      ( ?boxColor
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X1, Y1, X2, Y2, R, G, B, A
%% Returns:    Exdl
%% C-API func: int boxRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X1, Y1, X2, Y2, R, G, B, A)
 -> case
      call
      ( ?boxRGBA
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X1, Y1, X2, Y2, Color
%% Returns:    Exdl
%% C-API func: int lineColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color)

color(Dst, X1, Y1, X2, Y2, Color)
 -> case
      call
      ( ?lineColor
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X1, Y1, X2, Y2, R, G, B, A
%% Returns:    Exdl
%% C-API func: int lineRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X1, Y1, X2, Y2, R, G, B, A)
 -> case
      call
      ( ?lineRGBA
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X1, Y1, X2, Y2, Color
%% Returns:    Exdl
%% C-API func: int aalineColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color)

color(Dst, X1, Y1, X2, Y2, Color)
 -> case
      call
      ( ?aalineColor
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X1, Y1, X2, Y2, R, G, B, A
%% Returns:    Exdl
%% C-API func: int aalineRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X1, Y1, X2, Y2, R, G, B, A)
 -> case
      call
      ( ?aalineRGBA
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X, Y, R, Color
%% Returns:    Exdl
%% C-API func: int circleColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 r, Uint32 color)

color(Dst, X, Y, R, Color)
 -> case
      call
      ( ?circleColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , R:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X, Y, Rad, R, G, B, A
%% Returns:    Exdl
%% C-API func: int circleRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X, Y, Rad, R, G, B, A)
 -> case
      call
      ( ?circleRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rad:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X, Y, R, Start, End, Color
%% Returns:    Exdl
%% C-API func: int arcColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 r, Sint16 start, Sint16 end, Uint32 color)

color(Dst, X, Y, R, Start, End, Color)
 -> case
      call
      ( ?arcColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , R:?Sint16
        , Start:?Sint16
        , End:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X, Y, Rad, Start, End, R, G, B, A
%% Returns:    Exdl
%% C-API func: int arcRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X, Y, Rad, Start, End, R, G, B, A)
 -> case
      call
      ( ?arcRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rad:?Sint16
        , Start:?Sint16
        , End:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X, Y, R, Color
%% Returns:    Exdl
%% C-API func: int aacircleColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 r, Uint32 color)

color(Dst, X, Y, R, Color)
 -> case
      call
      ( ?aacircleColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , R:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X, Y, Rad, R, G, B, A
%% Returns:    Exdl
%% C-API func: int aacircleRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X, Y, Rad, R, G, B, A)
 -> case
      call
      ( ?aacircleRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rad:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       circleColor
%% Args:       Dst, X, Y, R, Color
%% Returns:    Exdl
%% C-API func: int filledCircleColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 r, Uint32 color)

circleColor(Dst, X, Y, R, Color)
 -> case
      call
      ( ?filledCircleColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , R:?Sint16
        , Color:?Uint32
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

%% Func:       circleRGBA
%% Args:       Dst, X, Y, Rad, R, G, B, A
%% Returns:    Exdl
%% C-API func: int filledCircleRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

circleRGBA(Dst, X, Y, Rad, R, G, B, A)
 -> case
      call
      ( ?filledCircleRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rad:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X, Y, Rx, Ry, Color
%% Returns:    Exdl
%% C-API func: int ellipseColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint32 color)

color(Dst, X, Y, Rx, Ry, Color)
 -> case
      call
      ( ?ellipseColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rx:?Sint16
        , Ry:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X, Y, Rx, Ry, R, G, B, A
%% Returns:    Exdl
%% C-API func: int ellipseRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X, Y, Rx, Ry, R, G, B, A)
 -> case
      call
      ( ?ellipseRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rx:?Sint16
        , Ry:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, Xc, Yc, Rx, Ry, Color
%% Returns:    Exdl
%% C-API func: int aaellipseColor(SDL_Surface* dst, Sint16 xc, Sint16 yc, Sint16 rx, Sint16 ry, Uint32 color)

color(Dst, Xc, Yc, Rx, Ry, Color)
 -> case
      call
      ( ?aaellipseColor
      , <<Dst:?_PTR
        , Xc:?Sint16
        , Yc:?Sint16
        , Rx:?Sint16
        , Ry:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X, Y, Rx, Ry, R, G, B, A
%% Returns:    Exdl
%% C-API func: int aaellipseRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X, Y, Rx, Ry, R, G, B, A)
 -> case
      call
      ( ?aaellipseRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rx:?Sint16
        , Ry:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       ellipseColor
%% Args:       Dst, X, Y, Rx, Ry, Color
%% Returns:    Exdl
%% C-API func: int filledEllipseColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint32 color)

ellipseColor(Dst, X, Y, Rx, Ry, Color)
 -> case
      call
      ( ?filledEllipseColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rx:?Sint16
        , Ry:?Sint16
        , Color:?Uint32
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

%% Func:       ellipseRGBA
%% Args:       Dst, X, Y, Rx, Ry, R, G, B, A
%% Returns:    Exdl
%% C-API func: int filledEllipseRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

ellipseRGBA(Dst, X, Y, Rx, Ry, R, G, B, A)
 -> case
      call
      ( ?filledEllipseRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rx:?Sint16
        , Ry:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X, Y, Rad, Start, End, Color
%% Returns:    Exdl
%% C-API func: int pieColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint32 color)

color(Dst, X, Y, Rad, Start, End, Color)
 -> case
      call
      ( ?pieColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rad:?Sint16
        , Start:?Sint16
        , End:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X, Y, Rad, Start, End, R, G, B, A
%% Returns:    Exdl
%% C-API func: int pieRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X, Y, Rad, Start, End, R, G, B, A)
 -> case
      call
      ( ?pieRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rad:?Sint16
        , Start:?Sint16
        , End:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       pieColor
%% Args:       Dst, X, Y, Rad, Start, End, Color
%% Returns:    Exdl
%% C-API func: int filledPieColor(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint32 color)

pieColor(Dst, X, Y, Rad, Start, End, Color)
 -> case
      call
      ( ?filledPieColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rad:?Sint16
        , Start:?Sint16
        , End:?Sint16
        , Color:?Uint32
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

%% Func:       pieRGBA
%% Args:       Dst, X, Y, Rad, Start, End, R, G, B, A
%% Returns:    Exdl
%% C-API func: int filledPieRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

pieRGBA(Dst, X, Y, Rad, Start, End, R, G, B, A)
 -> case
      call
      ( ?filledPieRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , Rad:?Sint16
        , Start:?Sint16
        , End:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X1, Y1, X2, Y2, X3, Y3, Color
%% Returns:    Exdl
%% C-API func: int trigonColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint32 color)

color(Dst, X1, Y1, X2, Y2, X3, Y3, Color)
 -> case
      call
      ( ?trigonColor
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , X3:?Sint16
        , Y3:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X1, Y1, X2, Y2, X3, Y3, R, G, B, A
%% Returns:    Exdl
%% C-API func: int trigonRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X1, Y1, X2, Y2, X3, Y3, R, G, B, A)
 -> case
      call
      ( ?trigonRGBA
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , X3:?Sint16
        , Y3:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X1, Y1, X2, Y2, X3, Y3, Color
%% Returns:    Exdl
%% C-API func: int aatrigonColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint32 color)

color(Dst, X1, Y1, X2, Y2, X3, Y3, Color)
 -> case
      call
      ( ?aatrigonColor
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , X3:?Sint16
        , Y3:?Sint16
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X1, Y1, X2, Y2, X3, Y3, R, G, B, A
%% Returns:    Exdl
%% C-API func: int aatrigonRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X1, Y1, X2, Y2, X3, Y3, R, G, B, A)
 -> case
      call
      ( ?aatrigonRGBA
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , X3:?Sint16
        , Y3:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       trigonColor
%% Args:       Dst, X1, Y1, X2, Y2, X3, Y3, Color
%% Returns:    Exdl
%% C-API func: int filledTrigonColor(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint32 color)

trigonColor(Dst, X1, Y1, X2, Y2, X3, Y3, Color)
 -> case
      call
      ( ?filledTrigonColor
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , X3:?Sint16
        , Y3:?Sint16
        , Color:?Uint32
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

%% Func:       trigonRGBA
%% Args:       Dst, X1, Y1, X2, Y2, X3, Y3, R, G, B, A
%% Returns:    Exdl
%% C-API func: int filledTrigonRGBA(SDL_Surface* dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

trigonRGBA(Dst, X1, Y1, X2, Y2, X3, Y3, R, G, B, A)
 -> case
      call
      ( ?filledTrigonRGBA
      , <<Dst:?_PTR
        , X1:?Sint16
        , Y1:?Sint16
        , X2:?Sint16
        , Y2:?Sint16
        , X3:?Sint16
        , Y3:?Sint16
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, Vx, Vy, N, Color
%% Returns:    Exdl
%% C-API func: int polygonColor(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint32 color)

color(Dst, Vx, Vy, N, Color)
 -> case
      call
      ( ?polygonColor
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, Vx, Vy, N, R, G, B, A
%% Returns:    Exdl
%% C-API func: int polygonRGBA(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, Vx, Vy, N, R, G, B, A)
 -> case
      call
      ( ?polygonRGBA
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, Vx, Vy, N, Color
%% Returns:    Exdl
%% C-API func: int aapolygonColor(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint32 color)

color(Dst, Vx, Vy, N, Color)
 -> case
      call
      ( ?aapolygonColor
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, Vx, Vy, N, R, G, B, A
%% Returns:    Exdl
%% C-API func: int aapolygonRGBA(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, Vx, Vy, N, R, G, B, A)
 -> case
      call
      ( ?aapolygonRGBA
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       polygonColor
%% Args:       Dst, Vx, Vy, N, Color
%% Returns:    Exdl
%% C-API func: int filledPolygonColor(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint32 color)

polygonColor(Dst, Vx, Vy, N, Color)
 -> case
      call
      ( ?filledPolygonColor
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , Color:?Uint32
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

%% Func:       polygonRGBA
%% Args:       Dst, Vx, Vy, N, R, G, B, A
%% Returns:    Exdl
%% C-API func: int filledPolygonRGBA(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

polygonRGBA(Dst, Vx, Vy, N, R, G, B, A)
 -> case
      call
      ( ?filledPolygonRGBA
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       polygon
%% Args:       Dst, Vx, Vy, N, Texture, TextureDx, TextureDy
%% Returns:    Exdl
%% C-API func: int texturedPolygon(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, SDL_Surface* texture,int texture_dx,int texture_dy)

polygon(Dst, Vx, Vy, N, Texture, TextureDx, TextureDy)
 -> case
      call
      ( ?texturedPolygon
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , Texture:?_PTR
        , TextureDx:?Int
        , TextureDy:?Int
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

%% Func:       polygonColorMT
%% Args:       Dst, Vx, Vy, N, Color, PolyInts, PolyAllocated
%% Returns:    Exdl
%% C-API func: int filledPolygonColorMT(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint32 color, int** polyInts, int* polyAllocated)

polygonColorMT(Dst, Vx, Vy, N, Color, PolyInts, PolyAllocated)
 -> case
      call
      ( ?filledPolygonColorMT
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , Color:?Uint32
        , PolyInts:?_PTR
        , PolyAllocated:?_PTR
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

%% Func:       polygonRGBAMT
%% Args:       Dst, Vx, Vy, N, R, G, B, A, PolyInts, PolyAllocated
%% Returns:    Exdl
%% C-API func: int filledPolygonRGBAMT(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a, int** polyInts, int* polyAllocated)

polygonRGBAMT(Dst, Vx, Vy, N, R, G, B, A, PolyInts, PolyAllocated)
 -> case
      call
      ( ?filledPolygonRGBAMT
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
        , PolyInts:?_PTR
        , PolyAllocated:?_PTR
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

%% Func:       polygonMT
%% Args:       Dst, Vx, Vy, N, Texture, TextureDx, TextureDy, PolyInts, PolyAllocated
%% Returns:    Exdl
%% C-API func: int texturedPolygonMT(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, SDL_Surface* texture,int texture_dx,int texture_dy, int** polyInts, int* polyAllocated)

polygonMT(Dst, Vx, Vy, N, Texture, TextureDx, TextureDy, PolyInts, PolyAllocated)
 -> case
      call
      ( ?texturedPolygonMT
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , Texture:?_PTR
        , TextureDx:?Int
        , TextureDy:?Int
        , PolyInts:?_PTR
        , PolyAllocated:?_PTR
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

%% Func:       color
%% Args:       Dst, Vx, Vy, N, S, Color
%% Returns:    Exdl
%% C-API func: int bezierColor(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, int s, Uint32 color)

color(Dst, Vx, Vy, N, S, Color)
 -> case
      call
      ( ?bezierColor
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , S:?Int
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, Vx, Vy, N, S, R, G, B, A
%% Returns:    Exdl
%% C-API func: int bezierRGBA(SDL_Surface* dst, const Sint16* vx, const Sint16* vy, int n, int s, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, Vx, Vy, N, S, R, G, B, A)
 -> case
      call
      ( ?bezierRGBA
      , <<Dst:?_PTR
        , Vx:?_PTR
        , Vy:?_PTR
        , N:?Int
        , S:?Int
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X, Y, C, Color
%% Returns:    Exdl
%% C-API func: int characterColor(SDL_Surface* dst, Sint16 x, Sint16 y, char c, Uint32 color)

color(Dst, X, Y, C, Color)
 -> case
      call
      ( ?characterColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , C:?Char
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X, Y, C, R, G, B, A
%% Returns:    Exdl
%% C-API func: int characterRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, char c, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X, Y, C, R, G, B, A)
 -> case
      call
      ( ?characterRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , C:?Char
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       color
%% Args:       Dst, X, Y, C, Color
%% Returns:    Exdl
%% C-API func: int stringColor(SDL_Surface* dst, Sint16 x, Sint16 y, const char* c, Uint32 color)

color(Dst, X, Y, C, Color)
 -> case
      call
      ( ?stringColor
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , C:?_PTR
        , Color:?Uint32
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

%% Func:       rGBA
%% Args:       Dst, X, Y, C, R, G, B, A
%% Returns:    Exdl
%% C-API func: int stringRGBA(SDL_Surface* dst, Sint16 x, Sint16 y, const char* c, Uint8 r, Uint8 g, Uint8 b, Uint8 a)

rGBA(Dst, X, Y, C, R, G, B, A)
 -> case
      call
      ( ?stringRGBA
      , <<Dst:?_PTR
        , X:?Sint16
        , Y:?Sint16
        , C:?_PTR
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       primitivesSetFont
%% Args:       Fontdata, Cw, Ch
%% Returns:    ok
%% C-API func: void gfxPrimitivesSetFont(const void* fontdata, int cw, int ch)

primitivesSetFont(Fontdata, Cw, Ch)
 -> cast
    ( ?gfxPrimitivesSetFont
    , <<Fontdata:?_PTR
      , Cw:?Int
      , Ch:?Int
      >>
    )
.

%% SDL_imageFilter

%% Func:       imageFilterMMXdetect
%% Args:       none
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterMMXdetect(void)

imageFilterMMXdetect()
 -> case
      call
      ( ?SDL_imageFilterMMXdetect
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

%% Func:       imageFilterMMXoff
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_imageFilterMMXoff(void)

imageFilterMMXoff()
 -> cast
    ( ?SDL_imageFilterMMXoff
    , [
      ]
    )
.

%% Func:       imageFilterMMXon
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_imageFilterMMXon(void)

imageFilterMMXon()
 -> cast
    ( ?SDL_imageFilterMMXon
    , [
      ]
    )
.

%% Func:       imageFilterAdd
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterAdd(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterAdd(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterAdd
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterMean
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterMean(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterMean(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterMean
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterSub
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterSub(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterSub(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterSub
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterAbsDiff
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterAbsDiff(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterAbsDiff(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterAbsDiff
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterMult
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterMult(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterMult(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterMult
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterMultNor
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterMultNor(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterMultNor(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterMultNor
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterMultDivby2
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterMultDivby2(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterMultDivby2(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterMultDivby2
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterMultDivby4
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterMultDivby4(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterMultDivby4(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterMultDivby4
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterBitAnd
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterBitAnd(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterBitAnd(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterBitAnd
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterBitOr
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterBitOr(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterBitOr(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterBitOr
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterDiv
%% Args:       Src1, Src2, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterDiv(unsigned char* Src1, unsigned char* Src2, unsigned char* Dest, int length)

imageFilterDiv(Src1, Src2, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterDiv
      , <<Src1:?_PTR
        , Src2:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterBitNegation
%% Args:       Src1, Dest, Length
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterBitNegation(unsigned char* Src1, unsigned char* Dest, int length)

imageFilterBitNegation(Src1, Dest, Length)
 -> case
      call
      ( ?SDL_imageFilterBitNegation
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
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

%% Func:       imageFilterAddByte
%% Args:       Src1, Dest, Length, C
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterAddByte(unsigned char* Src1, unsigned char* Dest, int length, unsigned char C)

imageFilterAddByte(Src1, Dest, Length, C)
 -> case
      call
      ( ?SDL_imageFilterAddByte
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , C:?Uchar
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

%% Func:       imageFilterAddUint
%% Args:       Src1, Dest, Length, C
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterAddUint(unsigned char* Src1, unsigned char* Dest, int length, unsigned int C)

imageFilterAddUint(Src1, Dest, Length, C)
 -> case
      call
      ( ?SDL_imageFilterAddUint
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , C:?Uint
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

%% Func:       imageFilterAddByteToHalf
%% Args:       Src1, Dest, Length, C
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterAddByteToHalf(unsigned char* Src1, unsigned char* Dest, int length, unsigned char C)

imageFilterAddByteToHalf(Src1, Dest, Length, C)
 -> case
      call
      ( ?SDL_imageFilterAddByteToHalf
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , C:?Uchar
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

%% Func:       imageFilterSubByte
%% Args:       Src1, Dest, Length, C
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterSubByte(unsigned char* Src1, unsigned char* Dest, int length, unsigned char C)

imageFilterSubByte(Src1, Dest, Length, C)
 -> case
      call
      ( ?SDL_imageFilterSubByte
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , C:?Uchar
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

%% Func:       imageFilterSubUint
%% Args:       Src1, Dest, Length, C
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterSubUint(unsigned char* Src1, unsigned char* Dest, int length, unsigned int C)

imageFilterSubUint(Src1, Dest, Length, C)
 -> case
      call
      ( ?SDL_imageFilterSubUint
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , C:?Uint
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

%% Func:       imageFilterShiftRight
%% Args:       Src1, Dest, Length, N
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterShiftRight(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N)

imageFilterShiftRight(Src1, Dest, Length, N)
 -> case
      call
      ( ?SDL_imageFilterShiftRight
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , N:?Uchar
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

%% Func:       imageFilterShiftRightUint
%% Args:       Src1, Dest, Length, N
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterShiftRightUint(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N)

imageFilterShiftRightUint(Src1, Dest, Length, N)
 -> case
      call
      ( ?SDL_imageFilterShiftRightUint
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , N:?Uchar
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

%% Func:       imageFilterMultByByte
%% Args:       Src1, Dest, Length, C
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterMultByByte(unsigned char* Src1, unsigned char* Dest, int length, unsigned char C)

imageFilterMultByByte(Src1, Dest, Length, C)
 -> case
      call
      ( ?SDL_imageFilterMultByByte
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , C:?Uchar
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

%% Func:       imageFilterShiftRightAndMultByByte
%% Args:       Src1, Dest, Length, N, C
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterShiftRightAndMultByByte(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N, unsigned char C)

imageFilterShiftRightAndMultByByte(Src1, Dest, Length, N, C)
 -> case
      call
      ( ?SDL_imageFilterShiftRightAndMultByByte
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , N:?Uchar
        , C:?Uchar
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

%% Func:       imageFilterShiftLeftByte
%% Args:       Src1, Dest, Length, N
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterShiftLeftByte(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N)

imageFilterShiftLeftByte(Src1, Dest, Length, N)
 -> case
      call
      ( ?SDL_imageFilterShiftLeftByte
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , N:?Uchar
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

%% Func:       imageFilterShiftLeftUint
%% Args:       Src1, Dest, Length, N
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterShiftLeftUint(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N)

imageFilterShiftLeftUint(Src1, Dest, Length, N)
 -> case
      call
      ( ?SDL_imageFilterShiftLeftUint
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , N:?Uchar
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

%% Func:       imageFilterShiftLeft
%% Args:       Src1, Dest, Length, N
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterShiftLeft(unsigned char* Src1, unsigned char* Dest, int length, unsigned char N)

imageFilterShiftLeft(Src1, Dest, Length, N)
 -> case
      call
      ( ?SDL_imageFilterShiftLeft
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , N:?Uchar
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

%% Func:       imageFilterBinarizeUsingThreshold
%% Args:       Src1, Dest, Length, T
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterBinarizeUsingThreshold(unsigned char* Src1, unsigned char* Dest, int length, unsigned char T)

imageFilterBinarizeUsingThreshold(Src1, Dest, Length, T)
 -> case
      call
      ( ?SDL_imageFilterBinarizeUsingThreshold
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , T:?Uchar
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

%% Func:       imageFilterClipToRange
%% Args:       Src1, Dest, Length, Tmin, Tmax
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterClipToRange(unsigned char* Src1, unsigned char* Dest, int length, unsigned char Tmin, unsigned char Tmax)

imageFilterClipToRange(Src1, Dest, Length, Tmin, Tmax)
 -> case
      call
      ( ?SDL_imageFilterClipToRange
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , Tmin:?Uchar
        , Tmax:?Uchar
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

%% Func:       imageFilterNormalizeLinear
%% Args:       Src1, Dest, Length, Cmin, Cmax, Nmin, Nmax
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterNormalizeLinear(unsigned char* Src1, unsigned char* Dest, int length, int Cmin, int Cmax, int Nmin, int Nmax)

imageFilterNormalizeLinear(Src1, Dest, Length, Cmin, Cmax, Nmin, Nmax)
 -> case
      call
      ( ?SDL_imageFilterNormalizeLinear
      , <<Src1:?_PTR
        , Dest:?_PTR
        , Length:?Int
        , Cmin:?Int
        , Cmax:?Int
        , Nmin:?Int
        , Nmax:?Int
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

%% Func:       imageFilterConvolveKernel3x3Divide
%% Args:       Src, Dest, Rows, Columns, Kernel, Divisor
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterConvolveKernel3x3Divide(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char Divisor)

imageFilterConvolveKernel3x3Divide(Src, Dest, Rows, Columns, Kernel, Divisor)
 -> case
      call
      ( ?SDL_imageFilterConvolveKernel3x3Divide
      , <<Src:?_PTR
        , Dest:?_PTR
        , Rows:?Int
        , Columns:?Int
        , Kernel:?_PTR
        , Divisor:?Uchar
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

%% Func:       imageFilterConvolveKernel5x5Divide
%% Args:       Src, Dest, Rows, Columns, Kernel, Divisor
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterConvolveKernel5x5Divide(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char Divisor)

imageFilterConvolveKernel5x5Divide(Src, Dest, Rows, Columns, Kernel, Divisor)
 -> case
      call
      ( ?SDL_imageFilterConvolveKernel5x5Divide
      , <<Src:?_PTR
        , Dest:?_PTR
        , Rows:?Int
        , Columns:?Int
        , Kernel:?_PTR
        , Divisor:?Uchar
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

%% Func:       imageFilterConvolveKernel7x7Divide
%% Args:       Src, Dest, Rows, Columns, Kernel, Divisor
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterConvolveKernel7x7Divide(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char Divisor)

imageFilterConvolveKernel7x7Divide(Src, Dest, Rows, Columns, Kernel, Divisor)
 -> case
      call
      ( ?SDL_imageFilterConvolveKernel7x7Divide
      , <<Src:?_PTR
        , Dest:?_PTR
        , Rows:?Int
        , Columns:?Int
        , Kernel:?_PTR
        , Divisor:?Uchar
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

%% Func:       imageFilterConvolveKernel9x9Divide
%% Args:       Src, Dest, Rows, Columns, Kernel, Divisor
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterConvolveKernel9x9Divide(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char Divisor)

imageFilterConvolveKernel9x9Divide(Src, Dest, Rows, Columns, Kernel, Divisor)
 -> case
      call
      ( ?SDL_imageFilterConvolveKernel9x9Divide
      , <<Src:?_PTR
        , Dest:?_PTR
        , Rows:?Int
        , Columns:?Int
        , Kernel:?_PTR
        , Divisor:?Uchar
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

%% Func:       imageFilterConvolveKernel3x3ShiftRight
%% Args:       Src, Dest, Rows, Columns, Kernel, NRightShift
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterConvolveKernel3x3ShiftRight(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char NRightShift)

imageFilterConvolveKernel3x3ShiftRight(Src, Dest, Rows, Columns, Kernel, NRightShift)
 -> case
      call
      ( ?SDL_imageFilterConvolveKernel3x3ShiftRight
      , <<Src:?_PTR
        , Dest:?_PTR
        , Rows:?Int
        , Columns:?Int
        , Kernel:?_PTR
        , NRightShift:?Uchar
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

%% Func:       imageFilterConvolveKernel5x5ShiftRight
%% Args:       Src, Dest, Rows, Columns, Kernel, NRightShift
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterConvolveKernel5x5ShiftRight(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char NRightShift)

imageFilterConvolveKernel5x5ShiftRight(Src, Dest, Rows, Columns, Kernel, NRightShift)
 -> case
      call
      ( ?SDL_imageFilterConvolveKernel5x5ShiftRight
      , <<Src:?_PTR
        , Dest:?_PTR
        , Rows:?Int
        , Columns:?Int
        , Kernel:?_PTR
        , NRightShift:?Uchar
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

%% Func:       imageFilterConvolveKernel7x7ShiftRight
%% Args:       Src, Dest, Rows, Columns, Kernel, NRightShift
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterConvolveKernel7x7ShiftRight(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char NRightShift)

imageFilterConvolveKernel7x7ShiftRight(Src, Dest, Rows, Columns, Kernel, NRightShift)
 -> case
      call
      ( ?SDL_imageFilterConvolveKernel7x7ShiftRight
      , <<Src:?_PTR
        , Dest:?_PTR
        , Rows:?Int
        , Columns:?Int
        , Kernel:?_PTR
        , NRightShift:?Uchar
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

%% Func:       imageFilterConvolveKernel9x9ShiftRight
%% Args:       Src, Dest, Rows, Columns, Kernel, NRightShift
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterConvolveKernel9x9ShiftRight(unsigned char* Src, unsigned char* Dest, int rows, int columns, signed short* Kernel, unsigned char NRightShift)

imageFilterConvolveKernel9x9ShiftRight(Src, Dest, Rows, Columns, Kernel, NRightShift)
 -> case
      call
      ( ?SDL_imageFilterConvolveKernel9x9ShiftRight
      , <<Src:?_PTR
        , Dest:?_PTR
        , Rows:?Int
        , Columns:?Int
        , Kernel:?_PTR
        , NRightShift:?Uchar
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

%% Func:       imageFilterSobelX
%% Args:       Src, Dest, Rows, Columns
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterSobelX(unsigned char* Src, unsigned char* Dest, int rows, int columns)

imageFilterSobelX(Src, Dest, Rows, Columns)
 -> case
      call
      ( ?SDL_imageFilterSobelX
      , <<Src:?_PTR
        , Dest:?_PTR
        , Rows:?Int
        , Columns:?Int
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

%% Func:       imageFilterSobelXShiftRight
%% Args:       Src, Dest, Rows, Columns, NRightShift
%% Returns:    Exdl
%% C-API func: int SDL_imageFilterSobelXShiftRight(unsigned char* Src, unsigned char* Dest, int rows, int columns, unsigned char NRightShift)

imageFilterSobelXShiftRight(Src, Dest, Rows, Columns, NRightShift)
 -> case
      call
      ( ?SDL_imageFilterSobelXShiftRight
      , <<Src:?_PTR
        , Dest:?_PTR
        , Rows:?Int
        , Columns:?Int
        , NRightShift:?Uchar
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

%% Func:       imageFilterAlignStack
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_imageFilterAlignStack(void)

imageFilterAlignStack()
 -> cast
    ( ?SDL_imageFilterAlignStack
    , [
      ]
    )
.

%% Func:       imageFilterRestoreStack
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_imageFilterRestoreStack(void)

imageFilterRestoreStack()
 -> cast
    ( ?SDL_imageFilterRestoreStack
    , [
      ]
    )
.

%% SDL_rotozoom

%% Func:       surface
%% Args:       Src, Angle, Zoom, Smooth
%% Returns:    Exdl
%% C-API func: SDL_Surface* rotozoomSurface(SDL_Surface* src, double angle, double zoom, int smooth)

surface(Src, Angle, Zoom, Smooth)
 -> case
      call
      ( ?rotozoomSurface
      , <<Src:?_PTR
        , Angle:?Double
        , Zoom:?Double
        , Smooth:?Int
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

%% Func:       surfaceXY
%% Args:       Src, Angle, Zoomx, Zoomy, Smooth
%% Returns:    Exdl
%% C-API func: SDL_Surface* rotozoomSurfaceXY(SDL_Surface* src, double angle, double zoomx, double zoomy, int smooth)

surfaceXY(Src, Angle, Zoomx, Zoomy, Smooth)
 -> case
      call
      ( ?rotozoomSurfaceXY
      , <<Src:?_PTR
        , Angle:?Double
        , Zoomx:?Double
        , Zoomy:?Double
        , Smooth:?Int
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

%% Func:       surfaceSize
%% Args:       Width, Height, Angle, Zoom, Dstwidth, Dstheight
%% Returns:    ok
%% C-API func: void rotozoomSurfaceSize(int width, int height, double angle, double zoom, int* dstwidth, int* dstheight)

surfaceSize(Width, Height, Angle, Zoom, Dstwidth, Dstheight)
 -> cast
    ( ?rotozoomSurfaceSize
    , <<Width:?Int
      , Height:?Int
      , Angle:?Double
      , Zoom:?Double
      , Dstwidth:?_PTR
      , Dstheight:?_PTR
      >>
    )
.

%% Func:       surfaceSizeXY
%% Args:       Width, Height, Angle, Zoomx, Zoomy, Dstwidth, Dstheight
%% Returns:    ok
%% C-API func: void rotozoomSurfaceSizeXY(int width, int height, double angle, double zoomx, double zoomy, int* dstwidth, int* dstheight)

surfaceSizeXY(Width, Height, Angle, Zoomx, Zoomy, Dstwidth, Dstheight)
 -> cast
    ( ?rotozoomSurfaceSizeXY
    , <<Width:?Int
      , Height:?Int
      , Angle:?Double
      , Zoomx:?Double
      , Zoomy:?Double
      , Dstwidth:?_PTR
      , Dstheight:?_PTR
      >>
    )
.

%% Func:       surface
%% Args:       Src, Zoomx, Zoomy, Smooth
%% Returns:    Exdl
%% C-API func: SDL_Surface* zoomSurface(SDL_Surface* src, double zoomx, double zoomy, int smooth)

surface(Src, Zoomx, Zoomy, Smooth)
 -> case
      call
      ( ?zoomSurface
      , <<Src:?_PTR
        , Zoomx:?Double
        , Zoomy:?Double
        , Smooth:?Int
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

%% Func:       surfaceSize
%% Args:       Width, Height, Zoomx, Zoomy, Dstwidth, Dstheight
%% Returns:    ok
%% C-API func: void zoomSurfaceSize(int width, int height, double zoomx, double zoomy, int* dstwidth, int* dstheight)

surfaceSize(Width, Height, Zoomx, Zoomy, Dstwidth, Dstheight)
 -> cast
    ( ?zoomSurfaceSize
    , <<Width:?Int
      , Height:?Int
      , Zoomx:?Double
      , Zoomy:?Double
      , Dstwidth:?_PTR
      , Dstheight:?_PTR
      >>
    )
.

%% Func:       surface
%% Args:       Src, Factorx, Factory
%% Returns:    Exdl
%% C-API func: SDL_Surface* shrinkSurface(SDL_Surface* src, int factorx, int factory)

surface(Src, Factorx, Factory)
 -> case
      call
      ( ?shrinkSurface
      , <<Src:?_PTR
        , Factorx:?Int
        , Factory:?Int
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

%% Func:       surface90Degrees
%% Args:       PSurf, NumClockwiseTurns
%% Returns:    Exdl
%% C-API func: SDL_Surface* rotateSurface90Degrees(SDL_Surface* pSurf, int numClockwiseTurns)

surface90Degrees(PSurf, NumClockwiseTurns)
 -> case
      call
      ( ?rotateSurface90Degrees
      , <<PSurf:?_PTR
        , NumClockwiseTurns:?Int
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

-endif. % COMPILE_GFX
