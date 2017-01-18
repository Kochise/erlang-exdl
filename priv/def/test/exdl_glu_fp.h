/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_glu_fp.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_GLU

{ gluErrorString_ENUM,            "gluErrorString",            eglu_errorString },
{ gluErrorUnicodeStringEXT_ENUM,  "gluErrorUnicodeStringEXT",  eglu_errorUnicodeStringEXT },
{ gluGetString_ENUM,              "gluGetString",              eglu_getString },
{ gluOrtho2D_ENUM,                "gluOrtho2D",                eglu_ortho2D },
{ gluPerspective_ENUM,            "gluPerspective",            eglu_perspective },
{ gluPickMatrix_ENUM,             "gluPickMatrix",             eglu_pickMatrix },
{ gluLookAt_ENUM,                 "gluLookAt",                 eglu_lookAt },
{ gluProject_ENUM,                "gluProject",                eglu_project },
{ gluUnProject_ENUM,              "gluUnProject",              eglu_unProject },
{ gluScaleImage_ENUM,             "gluScaleImage",             eglu_scaleImage },
{ gluBuild1DMipmaps_ENUM,         "gluBuild1DMipmaps",         eglu_build1DMipmaps },
{ gluBuild2DMipmaps_ENUM,         "gluBuild2DMipmaps",         eglu_build2DMipmaps },
/* glued there */
{ gluNewQuadric_ENUM,             "gluNewQuadric",             eglu_newQuadric },
{ gluDeleteQuadric_ENUM,          "gluDeleteQuadric",          eglu_deleteQuadric },
{ gluQuadricNormals_ENUM,         "gluQuadricNormals",         eglu_quadricNormals },
{ gluQuadricTexture_ENUM,         "gluQuadricTexture",         eglu_quadricTexture },
{ gluQuadricOrientation_ENUM,     "gluQuadricOrientation",     eglu_quadricOrientation },
{ gluQuadricDrawStyle_ENUM,       "gluQuadricDrawStyle",       eglu_quadricDrawStyle },
{ gluCylinder_ENUM,               "gluCylinder",               eglu_cylinder },
{ gluDisk_ENUM,                   "gluDisk",                   eglu_disk },
{ gluPartialDisk_ENUM,            "gluPartialDisk",            eglu_partialDisk },
{ gluSphere_ENUM,                 "gluSphere",                 eglu_sphere },
{ gluQuadricCallback_ENUM,        "gluQuadricCallback",        eglu_quadricCallback },
{ gluNewTess_ENUM,                "gluNewTess",                eglu_newTess },
{ gluDeleteTess_ENUM,             "gluDeleteTess",             eglu_deleteTess },
{ gluTessBeginPolygon_ENUM,       "gluTessBeginPolygon",       eglu_tessBeginPolygon },
{ gluTessBeginContour_ENUM,       "gluTessBeginContour",       eglu_tessBeginContour },
{ gluTessVertex_ENUM,             "gluTessVertex",             eglu_tessVertex },
{ gluTessEndContour_ENUM,         "gluTessEndContour",         eglu_tessEndContour },
{ gluTessEndPolygon_ENUM,         "gluTessEndPolygon",         eglu_tessEndPolygon },
{ gluTessProperty_ENUM,           "gluTessProperty",           eglu_tessProperty },
{ gluTessNormal_ENUM,             "gluTessNormal",             eglu_tessNormal },
{ gluTessCallback_ENUM,           "gluTessCallback",           eglu_tessCallback },
{ gluGetTessProperty_ENUM,        "gluGetTessProperty",        eglu_getTessProperty },
{ gluNewNurbsRenderer_ENUM,       "gluNewNurbsRenderer",       eglu_newNurbsRenderer },
{ gluDeleteNurbsRenderer_ENUM,    "gluDeleteNurbsRenderer",    eglu_deleteNurbsRenderer },
{ gluBeginSurface_ENUM,           "gluBeginSurface",           eglu_beginSurface },
{ gluBeginCurve_ENUM,             "gluBeginCurve",             eglu_beginCurve },
{ gluEndCurve_ENUM,               "gluEndCurve",               eglu_endCurve },
{ gluEndSurface_ENUM,             "gluEndSurface",             eglu_endSurface },
{ gluBeginTrim_ENUM,              "gluBeginTrim",              eglu_beginTrim },
{ gluEndTrim_ENUM,                "gluEndTrim",                eglu_endTrim },
{ gluPwlCurve_ENUM,               "gluPwlCurve",               eglu_pwlCurve },
{ gluNurbsCurve_ENUM,             "gluNurbsCurve",             eglu_nurbsCurve },
{ gluNurbsSurface_ENUM,           "gluNurbsSurface",           eglu_nurbsSurface },
{ gluLoadSamplingMatrices_ENUM,   "gluLoadSamplingMatrices",   eglu_loadSamplingMatrices },
{ gluNurbsProperty_ENUM,          "gluNurbsProperty",          eglu_nurbsProperty },
{ gluGetNurbsProperty_ENUM,       "gluGetNurbsProperty",       eglu_getNurbsProperty },
{ gluNurbsCallback_ENUM,          "gluNurbsCallback",          eglu_nurbsCallback },
/* Backwards compatibility for old tesselator */
{ gluBeginPolygon_ENUM,           "gluBeginPolygon",           eglu_beginPolygon },
{ gluNextContour_ENUM,            "gluNextContour",            eglu_nextContour },
{ gluEndPolygon_ENUM,             "gluEndPolygon",             eglu_endPolygon },
/* Triangulator */
{ gluDoTriangulate_ENUM,          "gluDoTriangulate",          eglu_doTriangulate },

#endif // COMPILE_GLU
