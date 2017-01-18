/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_oglblit.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_OGLBLIT

  enum
  { OGL_Init_ENUM = EXDL_OGLBLIT_H
  , OGL_FreeTexture_ENUM
  , OGL_Flip_ENUM
  , OGL_Clear_ENUM
  , OGL_Blit_ENUM
  , OGL_FromSurface_ENUM
  , OGL_FromSurfaceFree_ENUM
  , _ENUM_EXDL_OGLBLIT
  };


EXDL_API(eglblt_init);
EXDL_API(eglblt_freeTexture);
EXDL_API(eglblt_flip);
EXDL_API(eglblt_clear);
EXDL_API(eglblt_blit);
EXDL_API(eglblt_fromSurface);
EXDL_API(eglblt_fromSurfaceFree);

#else // COMPILE_OGLBLIT
  enum { _ENUM_EXDL_OGLBLIT = EXDL_OGLBLIT_H };
#endif // COMPILE_OGLBLIT

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
