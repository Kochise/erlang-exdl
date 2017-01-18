/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_gfx.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_GFX

  enum
/* SDL_framerate */
  { SDL_initFramerate_ENUM = EXDL_GFX_H
  , SDL_setFramerate_ENUM
  , SDL_getFramerate_ENUM
  , SDL_framerateDelay_ENUM
/* SDL_gfxBlitFunc */
  , SDL_gfxBlitRGBA_ENUM
  , SDL_gfxSetAlpha_ENUM
/* SDL_gfxPrimitives */
  , pixelColor_ENUM
  , pixelRGBA_ENUM
  , hlineColor_ENUM
  , hlineRGBA_ENUM
  , vlineColor_ENUM
  , vlineRGBA_ENUM
  , rectangleColor_ENUM
  , rectangleRGBA_ENUM
  , boxColor_ENUM
  , boxRGBA_ENUM
  , lineColor_ENUM
  , lineRGBA_ENUM
  , aalineColor_ENUM
  , aalineRGBA_ENUM
  , circleColor_ENUM
  , circleRGBA_ENUM
  , arcColor_ENUM
  , arcRGBA_ENUM
  , aacircleColor_ENUM
  , aacircleRGBA_ENUM
  , filledCircleColor_ENUM
  , filledCircleRGBA_ENUM
  , ellipseColor_ENUM
  , ellipseRGBA_ENUM
  , aaellipseColor_ENUM
  , aaellipseRGBA_ENUM
  , filledEllipseColor_ENUM
  , filledEllipseRGBA_ENUM
  , pieColor_ENUM
  , pieRGBA_ENUM
  , filledPieColor_ENUM
  , filledPieRGBA_ENUM
  , trigonColor_ENUM
  , trigonRGBA_ENUM
  , aatrigonColor_ENUM
  , aatrigonRGBA_ENUM
  , filledTrigonColor_ENUM
  , filledTrigonRGBA_ENUM
  , polygonColor_ENUM
  , polygonRGBA_ENUM
  , aapolygonColor_ENUM
  , aapolygonRGBA_ENUM
  , filledPolygonColor_ENUM
  , filledPolygonRGBA_ENUM
  , texturedPolygon_ENUM
  , filledPolygonColorMT_ENUM
  , filledPolygonRGBAMT_ENUM
  , texturedPolygonMT_ENUM
  , bezierColor_ENUM
  , bezierRGBA_ENUM
  , characterColor_ENUM
  , characterRGBA_ENUM
  , stringColor_ENUM
  , stringRGBA_ENUM
  , gfxPrimitivesSetFont_ENUM
/* SDL_imageFilter */
  , SDL_imageFilterMMXdetect_ENUM
  , SDL_imageFilterMMXoff_ENUM
  , SDL_imageFilterMMXon_ENUM
  , SDL_imageFilterAdd_ENUM
  , SDL_imageFilterMean_ENUM
  , SDL_imageFilterSub_ENUM
  , SDL_imageFilterAbsDiff_ENUM
  , SDL_imageFilterMult_ENUM
  , SDL_imageFilterMultNor_ENUM
  , SDL_imageFilterMultDivby2_ENUM
  , SDL_imageFilterMultDivby4_ENUM
  , SDL_imageFilterBitAnd_ENUM
  , SDL_imageFilterBitOr_ENUM
  , SDL_imageFilterDiv_ENUM
  , SDL_imageFilterBitNegation_ENUM
  , SDL_imageFilterAddByte_ENUM
  , SDL_imageFilterAddUint_ENUM
  , SDL_imageFilterAddByteToHalf_ENUM
  , SDL_imageFilterSubByte_ENUM
  , SDL_imageFilterSubUint_ENUM
  , SDL_imageFilterShiftRight_ENUM
  , SDL_imageFilterShiftRightUint_ENUM
  , SDL_imageFilterMultByByte_ENUM
  , SDL_imageFilterShiftRightAndMultByByte_ENUM
  , SDL_imageFilterShiftLeftByte_ENUM
  , SDL_imageFilterShiftLeftUint_ENUM
  , SDL_imageFilterShiftLeft_ENUM
  , SDL_imageFilterBinarizeUsingThreshold_ENUM
  , SDL_imageFilterClipToRange_ENUM
  , SDL_imageFilterNormalizeLinear_ENUM
  , SDL_imageFilterConvolveKernel3x3Divide_ENUM
  , SDL_imageFilterConvolveKernel5x5Divide_ENUM
  , SDL_imageFilterConvolveKernel7x7Divide_ENUM
  , SDL_imageFilterConvolveKernel9x9Divide_ENUM
  , SDL_imageFilterConvolveKernel3x3ShiftRight_ENUM
  , SDL_imageFilterConvolveKernel5x5ShiftRight_ENUM
  , SDL_imageFilterConvolveKernel7x7ShiftRight_ENUM
  , SDL_imageFilterConvolveKernel9x9ShiftRight_ENUM
  , SDL_imageFilterSobelX_ENUM
  , SDL_imageFilterSobelXShiftRight_ENUM
  , SDL_imageFilterAlignStack_ENUM
  , SDL_imageFilterRestoreStack_ENUM
/* SDL_rotozoom */
  , rotozoomSurface_ENUM
  , rotozoomSurfaceXY_ENUM
  , rotozoomSurfaceSize_ENUM
  , rotozoomSurfaceSizeXY_ENUM
  , zoomSurface_ENUM
  , zoomSurfaceSize_ENUM
  , shrinkSurface_ENUM
  , rotateSurface90Degrees_ENUM
  , _ENUM_EXDL_GFX
  };


/* SDL_framerate */
EXDL_API(egfx_initFramerate);
EXDL_API(egfx_setFramerate);
EXDL_API(egfx_getFramerate);
EXDL_API(egfx_framerateDelay);
/* SDL_gfxBlitFunc */
EXDL_API(egfx_gfxBlitRGBA);
EXDL_API(egfx_gfxSetAlpha);
/* SDL_gfxPrimitives */
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_circleColor);
EXDL_API(egfx_circleRGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_ellipseColor);
EXDL_API(egfx_ellipseRGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_pieColor);
EXDL_API(egfx_pieRGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_trigonColor);
EXDL_API(egfx_trigonRGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_polygonColor);
EXDL_API(egfx_polygonRGBA);
EXDL_API(egfx_polygon);
EXDL_API(egfx_polygonColorMT);
EXDL_API(egfx_polygonRGBAMT);
EXDL_API(egfx_polygonMT);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_color);
EXDL_API(egfx_rGBA);
EXDL_API(egfx_primitivesSetFont);
/* SDL_imageFilter */
EXDL_API(egfx_imageFilterMMXdetect);
EXDL_API(egfx_imageFilterMMXoff);
EXDL_API(egfx_imageFilterMMXon);
EXDL_API(egfx_imageFilterAdd);
EXDL_API(egfx_imageFilterMean);
EXDL_API(egfx_imageFilterSub);
EXDL_API(egfx_imageFilterAbsDiff);
EXDL_API(egfx_imageFilterMult);
EXDL_API(egfx_imageFilterMultNor);
EXDL_API(egfx_imageFilterMultDivby2);
EXDL_API(egfx_imageFilterMultDivby4);
EXDL_API(egfx_imageFilterBitAnd);
EXDL_API(egfx_imageFilterBitOr);
EXDL_API(egfx_imageFilterDiv);
EXDL_API(egfx_imageFilterBitNegation);
EXDL_API(egfx_imageFilterAddByte);
EXDL_API(egfx_imageFilterAddUint);
EXDL_API(egfx_imageFilterAddByteToHalf);
EXDL_API(egfx_imageFilterSubByte);
EXDL_API(egfx_imageFilterSubUint);
EXDL_API(egfx_imageFilterShiftRight);
EXDL_API(egfx_imageFilterShiftRightUint);
EXDL_API(egfx_imageFilterMultByByte);
EXDL_API(egfx_imageFilterShiftRightAndMultByByte);
EXDL_API(egfx_imageFilterShiftLeftByte);
EXDL_API(egfx_imageFilterShiftLeftUint);
EXDL_API(egfx_imageFilterShiftLeft);
EXDL_API(egfx_imageFilterBinarizeUsingThreshold);
EXDL_API(egfx_imageFilterClipToRange);
EXDL_API(egfx_imageFilterNormalizeLinear);
EXDL_API(egfx_imageFilterConvolveKernel3x3Divide);
EXDL_API(egfx_imageFilterConvolveKernel5x5Divide);
EXDL_API(egfx_imageFilterConvolveKernel7x7Divide);
EXDL_API(egfx_imageFilterConvolveKernel9x9Divide);
EXDL_API(egfx_imageFilterConvolveKernel3x3ShiftRight);
EXDL_API(egfx_imageFilterConvolveKernel5x5ShiftRight);
EXDL_API(egfx_imageFilterConvolveKernel7x7ShiftRight);
EXDL_API(egfx_imageFilterConvolveKernel9x9ShiftRight);
EXDL_API(egfx_imageFilterSobelX);
EXDL_API(egfx_imageFilterSobelXShiftRight);
EXDL_API(egfx_imageFilterAlignStack);
EXDL_API(egfx_imageFilterRestoreStack);
/* SDL_rotozoom */
EXDL_API(egfx_surface);
EXDL_API(egfx_surfaceXY);
EXDL_API(egfx_surfaceSize);
EXDL_API(egfx_surfaceSizeXY);
EXDL_API(egfx_surface);
EXDL_API(egfx_surfaceSize);
EXDL_API(egfx_surface);
EXDL_API(egfx_surface90Degrees);

#else // COMPILE_GFX
  enum { _ENUM_EXDL_GFX = EXDL_GFX_H };
#endif // COMPILE_GFX

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
