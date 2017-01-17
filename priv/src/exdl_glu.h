/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_glu.h,v 1.1 2004/03/30 07:49:22 bjorng Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_GLU

  void eglu_etess_init();

  enum
  { gluErrorString_ENUM = EXDL_GLU_H
  , gluErrorUnicodeStringEXT_ENUM
  , gluGetString_ENUM
  , gluOrtho2D_ENUM
  , gluPerspective_ENUM
  , gluPickMatrix_ENUM
  , gluLookAt_ENUM
  , gluProject_ENUM
  , gluUnProject_ENUM
  , gluScaleImage_ENUM
  , gluBuild1DMipmaps_ENUM
  , gluBuild2DMipmaps_ENUM
/* glued there */
  , gluNewQuadric_ENUM
  , gluDeleteQuadric_ENUM
  , gluQuadricNormals_ENUM
  , gluQuadricTexture_ENUM
  , gluQuadricOrientation_ENUM
  , gluQuadricDrawStyle_ENUM
  , gluCylinder_ENUM
  , gluDisk_ENUM
  , gluPartialDisk_ENUM
  , gluSphere_ENUM
  , gluQuadricCallback_ENUM
  , gluNewTess_ENUM
  , gluDeleteTess_ENUM
  , gluTessBeginPolygon_ENUM
  , gluTessBeginContour_ENUM
  , gluTessVertex_ENUM
  , gluTessEndContour_ENUM
  , gluTessEndPolygon_ENUM
  , gluTessProperty_ENUM
  , gluTessNormal_ENUM
  , gluTessCallback_ENUM
  , gluGetTessProperty_ENUM
  , gluNewNurbsRenderer_ENUM
  , gluDeleteNurbsRenderer_ENUM
  , gluBeginSurface_ENUM
  , gluBeginCurve_ENUM
  , gluEndCurve_ENUM
  , gluEndSurface_ENUM
  , gluBeginTrim_ENUM
  , gluEndTrim_ENUM
  , gluPwlCurve_ENUM
  , gluNurbsCurve_ENUM
  , gluNurbsSurface_ENUM
  , gluLoadSamplingMatrices_ENUM
  , gluNurbsProperty_ENUM
  , gluGetNurbsProperty_ENUM
  , gluNurbsCallback_ENUM
/* Backwards compatibility for old tesselator */
  , gluBeginPolygon_ENUM
  , gluNextContour_ENUM
  , gluEndPolygon_ENUM
/* Triangulator */
  , gluDoTriangulate_ENUM
  , _ENUM_EXDL_GLU
  };


EXDL_API(eglu_errorString);
EXDL_API(eglu_errorUnicodeStringEXT);
EXDL_API(eglu_getString);
EXDL_API(eglu_ortho2D);
EXDL_API(eglu_perspective);
EXDL_API(eglu_pickMatrix);
EXDL_API(eglu_lookAt);
EXDL_API(eglu_project);
EXDL_API(eglu_unProject);
EXDL_API(eglu_scaleImage);
EXDL_API(eglu_build1DMipmaps);
EXDL_API(eglu_build2DMipmaps);
/* glued there */
EXDL_API(eglu_newQuadric);
EXDL_API(eglu_deleteQuadric);
EXDL_API(eglu_quadricNormals);
EXDL_API(eglu_quadricTexture);
EXDL_API(eglu_quadricOrientation);
EXDL_API(eglu_quadricDrawStyle);
EXDL_API(eglu_cylinder);
EXDL_API(eglu_disk);
EXDL_API(eglu_partialDisk);
EXDL_API(eglu_sphere);
EXDL_API(eglu_quadricCallback);
EXDL_API(eglu_newTess);
EXDL_API(eglu_deleteTess);
EXDL_API(eglu_tessBeginPolygon);
EXDL_API(eglu_tessBeginContour);
EXDL_API(eglu_tessVertex);
EXDL_API(eglu_tessEndContour);
EXDL_API(eglu_tessEndPolygon);
EXDL_API(eglu_tessProperty);
EXDL_API(eglu_tessNormal);
EXDL_API(eglu_tessCallback);
EXDL_API(eglu_getTessProperty);
EXDL_API(eglu_newNurbsRenderer);
EXDL_API(eglu_deleteNurbsRenderer);
EXDL_API(eglu_beginSurface);
EXDL_API(eglu_beginCurve);
EXDL_API(eglu_endCurve);
EXDL_API(eglu_endSurface);
EXDL_API(eglu_beginTrim);
EXDL_API(eglu_endTrim);
EXDL_API(eglu_pwlCurve);
EXDL_API(eglu_nurbsCurve);
EXDL_API(eglu_nurbsSurface);
EXDL_API(eglu_loadSamplingMatrices);
EXDL_API(eglu_nurbsProperty);
EXDL_API(eglu_getNurbsProperty);
EXDL_API(eglu_nurbsCallback);
/* Backwards compatibility for old tesselator */
EXDL_API(eglu_beginPolygon);
EXDL_API(eglu_nextContour);
EXDL_API(eglu_endPolygon);
/* Triangulator */
EXDL_API(eglu_doTriangulate);

#else // COMPILE_GLU

  enum { _ENUM_EXDL_GLU = EXDL_GLU_H };

#endif // COMPILE_GLU

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
