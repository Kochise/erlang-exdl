%%
%%  Copyright (c) 2010 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_gfx_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_GFX).

%% SDL_framerate

  -define(SDL_initFramerate,                           ?EXDL_GFX_HRL                                + 0).
  -define(SDL_setFramerate,                            ?SDL_initFramerate                           + 1).
  -define(SDL_getFramerate,                            ?SDL_setFramerate                            + 1).
  -define(SDL_framerateDelay,                          ?SDL_getFramerate                            + 1).

%% SDL_gfxBlitFunc

  -define(SDL_gfxBlitRGBA,                             ?SDL_framerateDelay                          + 1).
  -define(SDL_gfxSetAlpha,                             ?SDL_gfxBlitRGBA                             + 1).

%% SDL_gfxPrimitives

  -define(pixelColor,                                  ?SDL_gfxSetAlpha                             + 1).
  -define(pixelRGBA,                                   ?pixelColor                                  + 1).
  -define(hlineColor,                                  ?pixelRGBA                                   + 1).
  -define(hlineRGBA,                                   ?hlineColor                                  + 1).
  -define(vlineColor,                                  ?hlineRGBA                                   + 1).
  -define(vlineRGBA,                                   ?vlineColor                                  + 1).
  -define(rectangleColor,                              ?vlineRGBA                                   + 1).
  -define(rectangleRGBA,                               ?rectangleColor                              + 1).
  -define(boxColor,                                    ?rectangleRGBA                               + 1).
  -define(boxRGBA,                                     ?boxColor                                    + 1).
  -define(lineColor,                                   ?boxRGBA                                     + 1).
  -define(lineRGBA,                                    ?lineColor                                   + 1).
  -define(aalineColor,                                 ?lineRGBA                                    + 1).
  -define(aalineRGBA,                                  ?aalineColor                                 + 1).
  -define(circleColor,                                 ?aalineRGBA                                  + 1).
  -define(circleRGBA,                                  ?circleColor                                 + 1).
  -define(arcColor,                                    ?circleRGBA                                  + 1).
  -define(arcRGBA,                                     ?arcColor                                    + 1).
  -define(aacircleColor,                               ?arcRGBA                                     + 1).
  -define(aacircleRGBA,                                ?aacircleColor                               + 1).
  -define(filledCircleColor,                           ?aacircleRGBA                                + 1).
  -define(filledCircleRGBA,                            ?filledCircleColor                           + 1).
  -define(ellipseColor,                                ?filledCircleRGBA                            + 1).
  -define(ellipseRGBA,                                 ?ellipseColor                                + 1).
  -define(aaellipseColor,                              ?ellipseRGBA                                 + 1).
  -define(aaellipseRGBA,                               ?aaellipseColor                              + 1).
  -define(filledEllipseColor,                          ?aaellipseRGBA                               + 1).
  -define(filledEllipseRGBA,                           ?filledEllipseColor                          + 1).
  -define(pieColor,                                    ?filledEllipseRGBA                           + 1).
  -define(pieRGBA,                                     ?pieColor                                    + 1).
  -define(filledPieColor,                              ?pieRGBA                                     + 1).
  -define(filledPieRGBA,                               ?filledPieColor                              + 1).
  -define(trigonColor,                                 ?filledPieRGBA                               + 1).
  -define(trigonRGBA,                                  ?trigonColor                                 + 1).
  -define(aatrigonColor,                               ?trigonRGBA                                  + 1).
  -define(aatrigonRGBA,                                ?aatrigonColor                               + 1).
  -define(filledTrigonColor,                           ?aatrigonRGBA                                + 1).
  -define(filledTrigonRGBA,                            ?filledTrigonColor                           + 1).
  -define(polygonColor,                                ?filledTrigonRGBA                            + 1).
  -define(polygonRGBA,                                 ?polygonColor                                + 1).
  -define(aapolygonColor,                              ?polygonRGBA                                 + 1).
  -define(aapolygonRGBA,                               ?aapolygonColor                              + 1).
  -define(filledPolygonColor,                          ?aapolygonRGBA                               + 1).
  -define(filledPolygonRGBA,                           ?filledPolygonColor                          + 1).
  -define(texturedPolygon,                             ?filledPolygonRGBA                           + 1).
  -define(filledPolygonColorMT,                        ?texturedPolygon                             + 1).
  -define(filledPolygonRGBAMT,                         ?filledPolygonColorMT                        + 1).
  -define(texturedPolygonMT,                           ?filledPolygonRGBAMT                         + 1).
  -define(bezierColor,                                 ?texturedPolygonMT                           + 1).
  -define(bezierRGBA,                                  ?bezierColor                                 + 1).
  -define(characterColor,                              ?bezierRGBA                                  + 1).
  -define(characterRGBA,                               ?characterColor                              + 1).
  -define(stringColor,                                 ?characterRGBA                               + 1).
  -define(stringRGBA,                                  ?stringColor                                 + 1).
  -define(gfxPrimitivesSetFont,                        ?stringRGBA                                  + 1).

%% SDL_imageFilter

  -define(SDL_imageFilterMMXdetect,                    ?gfxPrimitivesSetFont                        + 1).
  -define(SDL_imageFilterMMXoff,                       ?SDL_imageFilterMMXdetect                    + 1).
  -define(SDL_imageFilterMMXon,                        ?SDL_imageFilterMMXoff                       + 1).
  -define(SDL_imageFilterAdd,                          ?SDL_imageFilterMMXon                        + 1).
  -define(SDL_imageFilterMean,                         ?SDL_imageFilterAdd                          + 1).
  -define(SDL_imageFilterSub,                          ?SDL_imageFilterMean                         + 1).
  -define(SDL_imageFilterAbsDiff,                      ?SDL_imageFilterSub                          + 1).
  -define(SDL_imageFilterMult,                         ?SDL_imageFilterAbsDiff                      + 1).
  -define(SDL_imageFilterMultNor,                      ?SDL_imageFilterMult                         + 1).
  -define(SDL_imageFilterMultDivby2,                   ?SDL_imageFilterMultNor                      + 1).
  -define(SDL_imageFilterMultDivby4,                   ?SDL_imageFilterMultDivby2                   + 1).
  -define(SDL_imageFilterBitAnd,                       ?SDL_imageFilterMultDivby4                   + 1).
  -define(SDL_imageFilterBitOr,                        ?SDL_imageFilterBitAnd                       + 1).
  -define(SDL_imageFilterDiv,                          ?SDL_imageFilterBitOr                        + 1).
  -define(SDL_imageFilterBitNegation,                  ?SDL_imageFilterDiv                          + 1).
  -define(SDL_imageFilterAddByte,                      ?SDL_imageFilterBitNegation                  + 1).
  -define(SDL_imageFilterAddUint,                      ?SDL_imageFilterAddByte                      + 1).
  -define(SDL_imageFilterAddByteToHalf,                ?SDL_imageFilterAddUint                      + 1).
  -define(SDL_imageFilterSubByte,                      ?SDL_imageFilterAddByteToHalf                + 1).
  -define(SDL_imageFilterSubUint,                      ?SDL_imageFilterSubByte                      + 1).
  -define(SDL_imageFilterShiftRight,                   ?SDL_imageFilterSubUint                      + 1).
  -define(SDL_imageFilterShiftRightUint,               ?SDL_imageFilterShiftRight                   + 1).
  -define(SDL_imageFilterMultByByte,                   ?SDL_imageFilterShiftRightUint               + 1).
  -define(SDL_imageFilterShiftRightAndMultByByte,      ?SDL_imageFilterMultByByte                   + 1).
  -define(SDL_imageFilterShiftLeftByte,                ?SDL_imageFilterShiftRightAndMultByByte      + 1).
  -define(SDL_imageFilterShiftLeftUint,                ?SDL_imageFilterShiftLeftByte                + 1).
  -define(SDL_imageFilterShiftLeft,                    ?SDL_imageFilterShiftLeftUint                + 1).
  -define(SDL_imageFilterBinarizeUsingThreshold,       ?SDL_imageFilterShiftLeft                    + 1).
  -define(SDL_imageFilterClipToRange,                  ?SDL_imageFilterBinarizeUsingThreshold       + 1).
  -define(SDL_imageFilterNormalizeLinear,              ?SDL_imageFilterClipToRange                  + 1).
  -define(SDL_imageFilterConvolveKernel3x3Divide,      ?SDL_imageFilterNormalizeLinear              + 1).
  -define(SDL_imageFilterConvolveKernel5x5Divide,      ?SDL_imageFilterConvolveKernel3x3Divide      + 1).
  -define(SDL_imageFilterConvolveKernel7x7Divide,      ?SDL_imageFilterConvolveKernel5x5Divide      + 1).
  -define(SDL_imageFilterConvolveKernel9x9Divide,      ?SDL_imageFilterConvolveKernel7x7Divide      + 1).
  -define(SDL_imageFilterConvolveKernel3x3ShiftRight,  ?SDL_imageFilterConvolveKernel9x9Divide      + 1).
  -define(SDL_imageFilterConvolveKernel5x5ShiftRight,  ?SDL_imageFilterConvolveKernel3x3ShiftRight  + 1).
  -define(SDL_imageFilterConvolveKernel7x7ShiftRight,  ?SDL_imageFilterConvolveKernel5x5ShiftRight  + 1).
  -define(SDL_imageFilterConvolveKernel9x9ShiftRight,  ?SDL_imageFilterConvolveKernel7x7ShiftRight  + 1).
  -define(SDL_imageFilterSobelX,                       ?SDL_imageFilterConvolveKernel9x9ShiftRight  + 1).
  -define(SDL_imageFilterSobelXShiftRight,             ?SDL_imageFilterSobelX                       + 1).
  -define(SDL_imageFilterAlignStack,                   ?SDL_imageFilterSobelXShiftRight             + 1).
  -define(SDL_imageFilterRestoreStack,                 ?SDL_imageFilterAlignStack                   + 1).

%% SDL_rotozoom

  -define(rotozoomSurface,                             ?SDL_imageFilterRestoreStack                 + 1).
  -define(rotozoomSurfaceXY,                           ?rotozoomSurface                             + 1).
  -define(rotozoomSurfaceSize,                         ?rotozoomSurfaceXY                           + 1).
  -define(rotozoomSurfaceSizeXY,                       ?rotozoomSurfaceSize                         + 1).
  -define(zoomSurface,                                 ?rotozoomSurfaceSizeXY                       + 1).
  -define(zoomSurfaceSize,                             ?zoomSurface                                 + 1).
  -define(shrinkSurface,                               ?zoomSurfaceSize                             + 1).
  -define(rotateSurface90Degrees,                      ?shrinkSurface                               + 1).

  %% EXDL_GFX C SRC ENUM CHECK
  -define(_ENUM_EXDL_GFX,                              ?rotateSurface90Degrees                      + 1).

-else. % COMPILE_GFX

  -define(_ENUM_EXDL_GFX,                              ?EXDL_GFX_HRL).

-endif. % COMPILE_GFX
