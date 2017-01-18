/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_oglblit_fp.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_OGLBLIT

{ OGL_Init_ENUM,             "OGL_Init",             eglblt_init },
{ OGL_FreeTexture_ENUM,      "OGL_FreeTexture",      eglblt_freeTexture },
{ OGL_Flip_ENUM,             "OGL_Flip",             eglblt_flip },
{ OGL_Clear_ENUM,            "OGL_Clear",            eglblt_clear },
{ OGL_Blit_ENUM,             "OGL_Blit",             eglblt_blit },
{ OGL_FromSurface_ENUM,      "OGL_FromSurface",      eglblt_fromSurface },
{ OGL_FromSurfaceFree_ENUM,  "OGL_FromSurfaceFree",  eglblt_fromSurfaceFree },

#endif // COMPILE_OGLBLIT
