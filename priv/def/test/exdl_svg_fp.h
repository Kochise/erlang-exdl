/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_svg_fp.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_SVG

{ SVG_Load_ENUM,             "SVG_Load",             esvg_load },
{ SVG_LoadBuffer_ENUM,       "SVG_LoadBuffer",       esvg_loadBuffer },
{ SVG_SetOffset_ENUM,        "SVG_SetOffset",        esvg_setOffset },
{ SVG_SetScale_ENUM,         "SVG_SetScale",         esvg_setScale },
{ SVG_RenderToSurface_ENUM,  "SVG_RenderToSurface",  esvg_renderToSurface },
{ SVG_Free_ENUM,             "SVG_Free",             esvg_free },
{ SVG_Set_Flags_ENUM,        "SVG_Set_Flags",        esvg_set_Flags },
{ SVG_Width_ENUM,            "SVG_Width",            esvg_width },
{ SVG_Height_ENUM,           "SVG_Height",           esvg_height },
{ SVG_Version_ENUM,          "SVG_Version",          esvg_version },
{ SVG_SetClipping_ENUM,      "SVG_SetClipping",      esvg_setClipping },

#endif // COMPILE_SVG
