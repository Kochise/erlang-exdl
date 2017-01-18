/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_svg.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_SVG

  enum
  { SVG_Load_ENUM = EXDL_SVG_H
  , SVG_LoadBuffer_ENUM
  , SVG_SetOffset_ENUM
  , SVG_SetScale_ENUM
  , SVG_RenderToSurface_ENUM
  , SVG_Free_ENUM
  , SVG_Set_Flags_ENUM
  , SVG_Width_ENUM
  , SVG_Height_ENUM
  , SVG_Version_ENUM
  , SVG_SetClipping_ENUM
  , _ENUM_EXDL_SVG
  };


EXDL_API(esvg_load);
EXDL_API(esvg_loadBuffer);
EXDL_API(esvg_setOffset);
EXDL_API(esvg_setScale);
EXDL_API(esvg_renderToSurface);
EXDL_API(esvg_free);
EXDL_API(esvg_set_Flags);
EXDL_API(esvg_width);
EXDL_API(esvg_height);
EXDL_API(esvg_version);
EXDL_API(esvg_setClipping);

#else // COMPILE_SVG
  enum { _ENUM_EXDL_SVG = EXDL_SVG_H };
#endif // COMPILE_SVG

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
