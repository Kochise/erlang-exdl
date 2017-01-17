%%
%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_glu_fp.hrl,v 1.1 2004/03/30 07:46:20 bjorng Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_GLU).

  -define(gluErrorString,            ?EXDL_GLU_HRL              + 0).
  -define(gluErrorUnicodeStringEXT,  ?gluErrorString            + 1).
  -define(gluGetString,              ?gluErrorUnicodeStringEXT  + 1).
  -define(gluOrtho2D,                ?gluGetString              + 1).
  -define(gluPerspective,            ?gluOrtho2D                + 1).
  -define(gluPickMatrix,             ?gluPerspective            + 1).
  -define(gluLookAt,                 ?gluPickMatrix             + 1).
  -define(gluProject,                ?gluLookAt                 + 1).
  -define(gluUnProject,              ?gluProject                + 1).
  -define(gluScaleImage,             ?gluUnProject              + 1).
  -define(gluBuild1DMipmaps,         ?gluScaleImage             + 1).
  -define(gluBuild2DMipmaps,         ?gluBuild1DMipmaps         + 1).
%% glued there

  -define(gluNewQuadric,             ?gluBuild2DMipmaps         + 1).
  -define(gluDeleteQuadric,          ?gluNewQuadric             + 1).
  -define(gluQuadricNormals,         ?gluDeleteQuadric          + 1).
  -define(gluQuadricTexture,         ?gluQuadricNormals         + 1).
  -define(gluQuadricOrientation,     ?gluQuadricTexture         + 1).
  -define(gluQuadricDrawStyle,       ?gluQuadricOrientation     + 1).
  -define(gluCylinder,               ?gluQuadricDrawStyle       + 1).
  -define(gluDisk,                   ?gluCylinder               + 1).
  -define(gluPartialDisk,            ?gluDisk                   + 1).
  -define(gluSphere,                 ?gluPartialDisk            + 1).
  -define(gluQuadricCallback,        ?gluSphere                 + 1).
  -define(gluNewTess,                ?gluQuadricCallback        + 1).
  -define(gluDeleteTess,             ?gluNewTess                + 1).
  -define(gluTessBeginPolygon,       ?gluDeleteTess             + 1).
  -define(gluTessBeginContour,       ?gluTessBeginPolygon       + 1).
  -define(gluTessVertex,             ?gluTessBeginContour       + 1).
  -define(gluTessEndContour,         ?gluTessVertex             + 1).
  -define(gluTessEndPolygon,         ?gluTessEndContour         + 1).
  -define(gluTessProperty,           ?gluTessEndPolygon         + 1).
  -define(gluTessNormal,             ?gluTessProperty           + 1).
  -define(gluTessCallback,           ?gluTessNormal             + 1).
  -define(gluGetTessProperty,        ?gluTessCallback           + 1).
  -define(gluNewNurbsRenderer,       ?gluGetTessProperty        + 1).
  -define(gluDeleteNurbsRenderer,    ?gluNewNurbsRenderer       + 1).
  -define(gluBeginSurface,           ?gluDeleteNurbsRenderer    + 1).
  -define(gluBeginCurve,             ?gluBeginSurface           + 1).
  -define(gluEndCurve,               ?gluBeginCurve             + 1).
  -define(gluEndSurface,             ?gluEndCurve               + 1).
  -define(gluBeginTrim,              ?gluEndSurface             + 1).
  -define(gluEndTrim,                ?gluBeginTrim              + 1).
  -define(gluPwlCurve,               ?gluEndTrim                + 1).
  -define(gluNurbsCurve,             ?gluPwlCurve               + 1).
  -define(gluNurbsSurface,           ?gluNurbsCurve             + 1).
  -define(gluLoadSamplingMatrices,   ?gluNurbsSurface           + 1).
  -define(gluNurbsProperty,          ?gluLoadSamplingMatrices   + 1).
  -define(gluGetNurbsProperty,       ?gluNurbsProperty          + 1).
  -define(gluNurbsCallback,          ?gluGetNurbsProperty       + 1).

%% Backwards compatibility for old tesselator

  -define(gluBeginPolygon,           ?gluNurbsCallback          + 1).
  -define(gluNextContour,            ?gluBeginPolygon           + 1).
  -define(gluEndPolygon,             ?gluNextContour            + 1).

%% Triangulator

  -define(gluDoTriangulate,          ?gluEndPolygon             + 1).

  %% EXDL_GLU C SRC ENUM CHECK
  -define(_ENUM_EXDL_GLU,            ?gluDoTriangulate          + 1).

-else. % COMPILE_GLU

  -define(_ENUM_EXDL_GLU,            ?EXDL_GLU_HRL).

-endif. % COMPILE_GLU
