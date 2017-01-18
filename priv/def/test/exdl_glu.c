/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_glu.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_GLU

EXDL_API(eglu_errorString)
{
  /* const GLubyte* gluErrorString(GLenum errCode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, errCode)
  STACK_FMT_END()

  CATCH_RESULT(const GLubyte*)

    gluErrorString
    ( STACK_GET_DATA(errCode)
    );

  THROW_POINTER()
}

EXDL_API(eglu_errorUnicodeStringEXT)
{
  /* const wchar_t* gluErrorUnicodeStringEXT(GLenum errCode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, errCode)
  STACK_FMT_END()

  CATCH_RESULT(const wchar_t*)

    gluErrorUnicodeStringEXT
    ( STACK_GET_DATA(errCode)
    );

  THROW_POINTER()
}

EXDL_API(eglu_getString)
{
  /* const GLubyte* gluGetString(GLenum name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, name)
  STACK_FMT_END()

  CATCH_RESULT(const GLubyte*)

    gluGetString
    ( STACK_GET_DATA(name)
    );

  THROW_POINTER()
}

EXDL_API(eglu_ortho2D)
{
  /* void gluOrtho2D(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, left)
    STACK_FMT_DATA(GLdouble, right)
    STACK_FMT_DATA(GLdouble, bottom)
    STACK_FMT_DATA(GLdouble, top)
  STACK_FMT_END()

    gluOrtho2D
    ( STACK_GET_DATA(left)
    , STACK_GET_DATA(right)
    , STACK_GET_DATA(bottom)
    , STACK_GET_DATA(top)
    );
}

EXDL_API(eglu_perspective)
{
  /* void gluPerspective(GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, fovy)
    STACK_FMT_DATA(GLdouble, aspect)
    STACK_FMT_DATA(GLdouble, zNear)
    STACK_FMT_DATA(GLdouble, zFar)
  STACK_FMT_END()

    gluPerspective
    ( STACK_GET_DATA(fovy)
    , STACK_GET_DATA(aspect)
    , STACK_GET_DATA(zNear)
    , STACK_GET_DATA(zFar)
    );
}

EXDL_API(eglu_pickMatrix)
{
  /* void gluPickMatrix(GLdouble x, GLdouble y, GLdouble width, GLdouble height, GLint viewport[4]) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, width)
    STACK_FMT_DATA(GLdouble, height)
    STACK_FMT_DATA(GLint,    viewport[4])
  STACK_FMT_END()

    gluPickMatrix
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(viewport[4])
    );
}

EXDL_API(eglu_lookAt)
{
  /* void gluLookAt(GLdouble eyex, GLdouble eyey, GLdouble eyez, GLdouble centerx, GLdouble centery, GLdouble centerz, GLdouble upx, GLdouble upy, GLdouble upz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, eyex)
    STACK_FMT_DATA(GLdouble, eyey)
    STACK_FMT_DATA(GLdouble, eyez)
    STACK_FMT_DATA(GLdouble, centerx)
    STACK_FMT_DATA(GLdouble, centery)
    STACK_FMT_DATA(GLdouble, centerz)
    STACK_FMT_DATA(GLdouble, upx)
    STACK_FMT_DATA(GLdouble, upy)
    STACK_FMT_DATA(GLdouble, upz)
  STACK_FMT_END()

    gluLookAt
    ( STACK_GET_DATA(eyex)
    , STACK_GET_DATA(eyey)
    , STACK_GET_DATA(eyez)
    , STACK_GET_DATA(centerx)
    , STACK_GET_DATA(centery)
    , STACK_GET_DATA(centerz)
    , STACK_GET_DATA(upx)
    , STACK_GET_DATA(upy)
    , STACK_GET_DATA(upz)
    );
}

EXDL_API(eglu_project)
{
  /* int gluProject(GLdouble objx, GLdouble objy, GLdouble objz, const GLdouble modelMatrix[16], const GLdouble projMatrix[16], const GLint viewport[4], GLdouble* winx, GLdouble* winy, GLdouble* winz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble,    objx)
    STACK_FMT_DATA(GLdouble,    objy)
    STACK_FMT_DATA(GLdouble,    objz)
    STACK_FMT_DATA(GLdouble,    modelMatrix[16])
    STACK_FMT_DATA(GLdouble,    projMatrix[16])
    STACK_FMT_DATA(GLint,       viewport[4])
    STACK_FMT_LPTR(GLdouble*,   winx)
    STACK_FMT_LPTR(GLdouble*,   winy)
    STACK_FMT_DATA(GLdouble,    winz[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    gluProject
    ( STACK_GET_DATA(objx)
    , STACK_GET_DATA(objy)
    , STACK_GET_DATA(objz)
    , STACK_GET_DATA(modelMatrix[16])
    , STACK_GET_DATA(projMatrix[16])
    , STACK_GET_DATA(viewport[4])
    , STACK_GET_DATA(winx)
    , STACK_GET_DATA(winy)
    , STACK_GET_ADDR(winz)
    );

  THROW_RESULT(int)
}

EXDL_API(eglu_unProject)
{
  /* int gluUnProject(GLdouble winx, GLdouble winy, GLdouble winz, const GLdouble modelMatrix[16], const GLdouble projMatrix[16], const GLint viewport[4], GLdouble* objx, GLdouble* objy, GLdouble* objz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble,    winx)
    STACK_FMT_DATA(GLdouble,    winy)
    STACK_FMT_DATA(GLdouble,    winz)
    STACK_FMT_DATA(GLdouble,    modelMatrix[16])
    STACK_FMT_DATA(GLdouble,    projMatrix[16])
    STACK_FMT_DATA(GLint,       viewport[4])
    STACK_FMT_LPTR(GLdouble*,   objx)
    STACK_FMT_LPTR(GLdouble*,   objy)
    STACK_FMT_DATA(GLdouble,    objz[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    gluUnProject
    ( STACK_GET_DATA(winx)
    , STACK_GET_DATA(winy)
    , STACK_GET_DATA(winz)
    , STACK_GET_DATA(modelMatrix[16])
    , STACK_GET_DATA(projMatrix[16])
    , STACK_GET_DATA(viewport[4])
    , STACK_GET_DATA(objx)
    , STACK_GET_DATA(objy)
    , STACK_GET_ADDR(objz)
    );

  THROW_RESULT(int)
}

EXDL_API(eglu_scaleImage)
{
  /* int gluScaleImage(GLenum format, GLint widthin, GLint heightin, GLenum typein, const void* datain, GLint widthout, GLint heightout, GLenum typeout, void* dataout) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,      format)
    STACK_FMT_DATA(GLint,       widthin)
    STACK_FMT_DATA(GLint,       heightin)
    STACK_FMT_DATA(GLenum,      typein)
    STACK_FMT_LPTR(void*,       datain)
    STACK_FMT_DATA(GLint,       widthout)
    STACK_FMT_DATA(GLint,       heightout)
    STACK_FMT_DATA(GLenum,      typeout)
    STACK_FMT_DATA(void,        dataout[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    gluScaleImage
    ( STACK_GET_DATA(format)
    , STACK_GET_DATA(widthin)
    , STACK_GET_DATA(heightin)
    , STACK_GET_DATA(typein)
    , STACK_GET_DATA(datain)
    , STACK_GET_DATA(widthout)
    , STACK_GET_DATA(heightout)
    , STACK_GET_DATA(typeout)
    , STACK_GET_ADDR(dataout)
    );

  THROW_RESULT(int)
}

EXDL_API(eglu_build1DMipmaps)
{
  /* int gluBuild1DMipmaps(GLenum target, GLint components, GLint width, GLenum format, GLenum type, const void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,      target)
    STACK_FMT_DATA(GLint,       components)
    STACK_FMT_DATA(GLint,       width)
    STACK_FMT_DATA(GLenum,      format)
    STACK_FMT_DATA(GLenum,      type)
    STACK_FMT_DATA(void,        data[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    gluBuild1DMipmaps
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(components)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(data)
    );

  THROW_RESULT(int)
}

EXDL_API(eglu_build2DMipmaps)
{
  /* int gluBuild2DMipmaps(GLenum target, GLint components, GLint width, GLint height, GLenum format, GLenum type, const void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,      target)
    STACK_FMT_DATA(GLint,       components)
    STACK_FMT_DATA(GLint,       width)
    STACK_FMT_DATA(GLint,       height)
    STACK_FMT_DATA(GLenum,      format)
    STACK_FMT_DATA(GLenum,      type)
    STACK_FMT_DATA(void,        data[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    gluBuild2DMipmaps
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(components)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(data)
    );

  THROW_RESULT(int)
}

/* glued there */

EXDL_API(eglu_newQuadric)
{
  /* GLUquadric* gluNewQuadric(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(GLUquadric*)

    gluNewQuadric
    (
    );

  THROW_POINTER()
}

EXDL_API(eglu_deleteQuadric)
{
  /* void gluDeleteQuadric(GLUquadric* state) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUquadric, state[])
  STACK_FMT_END()

    gluDeleteQuadric
    ( STACK_GET_ADDR(state)
    );
}

EXDL_API(eglu_quadricNormals)
{
  /* void gluQuadricNormals(GLUquadric* quadObject, GLenum normals) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUquadric*, quadObject)
    STACK_FMT_DATA(GLenum,      normals)
  STACK_FMT_END()

    gluQuadricNormals
    ( STACK_GET_DATA(quadObject)
    , STACK_GET_DATA(normals)
    );
}

EXDL_API(eglu_quadricTexture)
{
  /* void gluQuadricTexture(GLUquadric* quadObject, GLboolean textureCoords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUquadric*, quadObject)
    STACK_FMT_DATA(GLboolean,   textureCoords)
  STACK_FMT_END()

    gluQuadricTexture
    ( STACK_GET_DATA(quadObject)
    , STACK_GET_DATA(textureCoords)
    );
}

EXDL_API(eglu_quadricOrientation)
{
  /* void gluQuadricOrientation(GLUquadric* quadObject, GLenum orientation) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUquadric*, quadObject)
    STACK_FMT_DATA(GLenum,      orientation)
  STACK_FMT_END()

    gluQuadricOrientation
    ( STACK_GET_DATA(quadObject)
    , STACK_GET_DATA(orientation)
    );
}

EXDL_API(eglu_quadricDrawStyle)
{
  /* void gluQuadricDrawStyle(GLUquadric* quadObject, GLenum drawStyle) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUquadric*, quadObject)
    STACK_FMT_DATA(GLenum,      drawStyle)
  STACK_FMT_END()

    gluQuadricDrawStyle
    ( STACK_GET_DATA(quadObject)
    , STACK_GET_DATA(drawStyle)
    );
}

EXDL_API(eglu_cylinder)
{
  /* void gluCylinder(GLUquadric* qobj, GLdouble baseRadius, GLdouble topRadius, GLdouble height, GLint slices, GLint stacks) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUquadric*, qobj)
    STACK_FMT_DATA(GLdouble,    baseRadius)
    STACK_FMT_DATA(GLdouble,    topRadius)
    STACK_FMT_DATA(GLdouble,    height)
    STACK_FMT_DATA(GLint,       slices)
    STACK_FMT_DATA(GLint,       stacks)
  STACK_FMT_END()

    gluCylinder
    ( STACK_GET_DATA(qobj)
    , STACK_GET_DATA(baseRadius)
    , STACK_GET_DATA(topRadius)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(slices)
    , STACK_GET_DATA(stacks)
    );
}

EXDL_API(eglu_disk)
{
  /* void gluDisk(GLUquadric* qobj, GLdouble innerRadius, GLdouble outerRadius, GLint slices, GLint loops) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUquadric*, qobj)
    STACK_FMT_DATA(GLdouble,    innerRadius)
    STACK_FMT_DATA(GLdouble,    outerRadius)
    STACK_FMT_DATA(GLint,       slices)
    STACK_FMT_DATA(GLint,       loops)
  STACK_FMT_END()

    gluDisk
    ( STACK_GET_DATA(qobj)
    , STACK_GET_DATA(innerRadius)
    , STACK_GET_DATA(outerRadius)
    , STACK_GET_DATA(slices)
    , STACK_GET_DATA(loops)
    );
}

EXDL_API(eglu_partialDisk)
{
  /* void gluPartialDisk(GLUquadric* qobj, GLdouble innerRadius, GLdouble outerRadius, GLint slices, GLint loops, GLdouble startAngle, GLdouble sweepAngle) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUquadric*, qobj)
    STACK_FMT_DATA(GLdouble,    innerRadius)
    STACK_FMT_DATA(GLdouble,    outerRadius)
    STACK_FMT_DATA(GLint,       slices)
    STACK_FMT_DATA(GLint,       loops)
    STACK_FMT_DATA(GLdouble,    startAngle)
    STACK_FMT_DATA(GLdouble,    sweepAngle)
  STACK_FMT_END()

    gluPartialDisk
    ( STACK_GET_DATA(qobj)
    , STACK_GET_DATA(innerRadius)
    , STACK_GET_DATA(outerRadius)
    , STACK_GET_DATA(slices)
    , STACK_GET_DATA(loops)
    , STACK_GET_DATA(startAngle)
    , STACK_GET_DATA(sweepAngle)
    );
}

EXDL_API(eglu_sphere)
{
  /* void gluSphere(GLUquadric* qobj, GLdouble radius, GLint slices, GLint stacks) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUquadric*, qobj)
    STACK_FMT_DATA(GLdouble,    radius)
    STACK_FMT_DATA(GLint,       slices)
    STACK_FMT_DATA(GLint,       stacks)
  STACK_FMT_END()

    gluSphere
    ( STACK_GET_DATA(qobj)
    , STACK_GET_DATA(radius)
    , STACK_GET_DATA(slices)
    , STACK_GET_DATA(stacks)
    );
}

EXDL_API(eglu_quadricCallback)
{
  /* void gluQuadricCallback(GLUquadric* qobj, GLenum which, void(CALLBACK* fn)()) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(CALLBACK,    fn[])
  STACK_FMT_END()

    gluQuadricCallback
    ( STACK_GET_ADDR(fn)
    );
}

EXDL_API(eglu_newTess)
{
  /* GLUtesselator* gluNewTess(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(GLUtesselator*)

    gluNewTess
    (
    );

  THROW_POINTER()
}

EXDL_API(eglu_deleteTess)
{
  /* void gluDeleteTess(GLUtesselator* tess) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUtesselator, tess[])
  STACK_FMT_END()

    gluDeleteTess
    ( STACK_GET_ADDR(tess)
    );
}

EXDL_API(eglu_tessBeginPolygon)
{
  /* void gluTessBeginPolygon(GLUtesselator* tess, void* polygon_data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUtesselator*, tess)
    STACK_FMT_DATA(void,           polygon_data[])
  STACK_FMT_END()

    gluTessBeginPolygon
    ( STACK_GET_DATA(tess)
    , STACK_GET_ADDR(polygon_data)
    );
}

EXDL_API(eglu_tessBeginContour)
{
  /* void gluTessBeginContour(GLUtesselator* tess) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUtesselator, tess[])
  STACK_FMT_END()

    gluTessBeginContour
    ( STACK_GET_ADDR(tess)
    );
}

EXDL_API(eglu_tessVertex)
{
  /* void gluTessVertex(GLUtesselator* tess, GLdouble coords[3], void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUtesselator*, tess)
    STACK_FMT_DATA(GLdouble,       coords[3])
    STACK_FMT_DATA(void,           data[])
  STACK_FMT_END()

    gluTessVertex
    ( STACK_GET_DATA(tess)
    , STACK_GET_DATA(coords[3])
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglu_tessEndContour)
{
  /* void gluTessEndContour(GLUtesselator* tess) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUtesselator, tess[])
  STACK_FMT_END()

    gluTessEndContour
    ( STACK_GET_ADDR(tess)
    );
}

EXDL_API(eglu_tessEndPolygon)
{
  /* void gluTessEndPolygon(GLUtesselator* tess) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUtesselator, tess[])
  STACK_FMT_END()

    gluTessEndPolygon
    ( STACK_GET_ADDR(tess)
    );
}

EXDL_API(eglu_tessProperty)
{
  /* void gluTessProperty(GLUtesselator* tess, GLenum which, GLdouble value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUtesselator*, tess)
    STACK_FMT_DATA(GLenum,         which)
    STACK_FMT_DATA(GLdouble,       value)
  STACK_FMT_END()

    gluTessProperty
    ( STACK_GET_DATA(tess)
    , STACK_GET_DATA(which)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eglu_tessNormal)
{
  /* void gluTessNormal(GLUtesselator* tess, GLdouble x, GLdouble y, GLdouble z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUtesselator*, tess)
    STACK_FMT_DATA(GLdouble,       x)
    STACK_FMT_DATA(GLdouble,       y)
    STACK_FMT_DATA(GLdouble,       z)
  STACK_FMT_END()

    gluTessNormal
    ( STACK_GET_DATA(tess)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(eglu_tessCallback)
{
  /* void gluTessCallback(GLUtesselator* tess, GLenum which, void(CALLBACK* fn)()) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(CALLBACK,       fn[])
  STACK_FMT_END()

    gluTessCallback
    ( STACK_GET_ADDR(fn)
    );
}

EXDL_API(eglu_getTessProperty)
{
  /* void gluGetTessProperty(GLUtesselator* tess, GLenum which, GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUtesselator*, tess)
    STACK_FMT_DATA(GLenum,         which)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLdouble,      value)
  FRAME_FMT_END()

    gluGetTessProperty
    ( STACK_GET_DATA(tess)
    , STACK_GET_DATA(which)
    , FRAME_GET_ADDR(value)
    );

  THROW_FRAME()
}

EXDL_API(eglu_newNurbsRenderer)
{
  /* GLUnurbs* gluNewNurbsRenderer(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(GLUnurbs*)

    gluNewNurbsRenderer
    (
    );

  THROW_POINTER()
}

EXDL_API(eglu_deleteNurbsRenderer)
{
  /* void gluDeleteNurbsRenderer(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs, nobj[])
  STACK_FMT_END()

    gluDeleteNurbsRenderer
    ( STACK_GET_ADDR(nobj)
    );
}

EXDL_API(eglu_beginSurface)
{
  /* void gluBeginSurface(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs, nobj[])
  STACK_FMT_END()

    gluBeginSurface
    ( STACK_GET_ADDR(nobj)
    );
}

EXDL_API(eglu_beginCurve)
{
  /* void gluBeginCurve(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs, nobj[])
  STACK_FMT_END()

    gluBeginCurve
    ( STACK_GET_ADDR(nobj)
    );
}

EXDL_API(eglu_endCurve)
{
  /* void gluEndCurve(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs, nobj[])
  STACK_FMT_END()

    gluEndCurve
    ( STACK_GET_ADDR(nobj)
    );
}

EXDL_API(eglu_endSurface)
{
  /* void gluEndSurface(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs, nobj[])
  STACK_FMT_END()

    gluEndSurface
    ( STACK_GET_ADDR(nobj)
    );
}

EXDL_API(eglu_beginTrim)
{
  /* void gluBeginTrim(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs, nobj[])
  STACK_FMT_END()

    gluBeginTrim
    ( STACK_GET_ADDR(nobj)
    );
}

EXDL_API(eglu_endTrim)
{
  /* void gluEndTrim(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs, nobj[])
  STACK_FMT_END()

    gluEndTrim
    ( STACK_GET_ADDR(nobj)
    );
}

EXDL_API(eglu_pwlCurve)
{
  /* void gluPwlCurve(GLUnurbs* nobj, GLint count, GLfloat* array, GLint stride, GLenum type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUnurbs*, nobj)
    STACK_FMT_DATA(GLint,     count)
    STACK_FMT_LPTR(GLfloat*,  array)
    STACK_FMT_DATA(GLint,     stride)
    STACK_FMT_DATA(GLenum,    type)
  STACK_FMT_END()

    gluPwlCurve
    ( STACK_GET_DATA(nobj)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(array)
    , STACK_GET_DATA(stride)
    , STACK_GET_DATA(type)
    );
}

EXDL_API(eglu_nurbsCurve)
{
  /* void gluNurbsCurve(GLUnurbs* nobj, GLint nknots, GLfloat* knot, GLint stride, GLfloat* ctlarray, GLint order, GLenum type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUnurbs*, nobj)
    STACK_FMT_DATA(GLint,     nknots)
    STACK_FMT_LPTR(GLfloat*,  knot)
    STACK_FMT_DATA(GLint,     stride)
    STACK_FMT_LPTR(GLfloat*,  ctlarray)
    STACK_FMT_DATA(GLint,     order)
    STACK_FMT_DATA(GLenum,    type)
  STACK_FMT_END()

    gluNurbsCurve
    ( STACK_GET_DATA(nobj)
    , STACK_GET_DATA(nknots)
    , STACK_GET_DATA(knot)
    , STACK_GET_DATA(stride)
    , STACK_GET_DATA(ctlarray)
    , STACK_GET_DATA(order)
    , STACK_GET_DATA(type)
    );
}

EXDL_API(eglu_nurbsSurface)
{
  /* void gluNurbsSurface(GLUnurbs* nobj, GLint sknot_count, float* sknot, GLint tknot_count, GLfloat* tknot, GLint s_stride, GLint t_stride, GLfloat* ctlarray, GLint sorder, GLint torder, GLenum type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUnurbs*, nobj)
    STACK_FMT_DATA(GLint,     sknot_count)
    STACK_FMT_LPTR(float*,    sknot)
    STACK_FMT_DATA(GLint,     tknot_count)
    STACK_FMT_LPTR(GLfloat*,  tknot)
    STACK_FMT_DATA(GLint,     s_stride)
    STACK_FMT_DATA(GLint,     t_stride)
    STACK_FMT_LPTR(GLfloat*,  ctlarray)
    STACK_FMT_DATA(GLint,     sorder)
    STACK_FMT_DATA(GLint,     torder)
    STACK_FMT_DATA(GLenum,    type)
  STACK_FMT_END()

    gluNurbsSurface
    ( STACK_GET_DATA(nobj)
    , STACK_GET_DATA(sknot_count)
    , STACK_GET_DATA(sknot)
    , STACK_GET_DATA(tknot_count)
    , STACK_GET_DATA(tknot)
    , STACK_GET_DATA(s_stride)
    , STACK_GET_DATA(t_stride)
    , STACK_GET_DATA(ctlarray)
    , STACK_GET_DATA(sorder)
    , STACK_GET_DATA(torder)
    , STACK_GET_DATA(type)
    );
}

EXDL_API(eglu_loadSamplingMatrices)
{
  /* void gluLoadSamplingMatrices(GLUnurbs* nobj, const GLfloat modelMatrix[16], const GLfloat projMatrix[16], const GLint viewport[4]) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUnurbs*,     nobj)
    STACK_FMT_DATA(GLfloat,       modelMatrix[16])
    STACK_FMT_DATA(GLfloat,       projMatrix[16])
    STACK_FMT_DATA(GLint,         viewport[4])
  STACK_FMT_END()

    gluLoadSamplingMatrices
    ( STACK_GET_DATA(nobj)
    , STACK_GET_DATA(modelMatrix[16])
    , STACK_GET_DATA(projMatrix[16])
    , STACK_GET_DATA(viewport[4])
    );
}

EXDL_API(eglu_nurbsProperty)
{
  /* void gluNurbsProperty(GLUnurbs* nobj, GLenum property, GLfloat value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUnurbs*, nobj)
    STACK_FMT_DATA(GLenum,    property)
    STACK_FMT_DATA(GLfloat,   value)
  STACK_FMT_END()

    gluNurbsProperty
    ( STACK_GET_DATA(nobj)
    , STACK_GET_DATA(property)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eglu_getNurbsProperty)
{
  /* void gluGetNurbsProperty(GLUnurbs* nobj, GLenum property, GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUnurbs*, nobj)
    STACK_FMT_DATA(GLenum,    property)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat,  value)
  FRAME_FMT_END()

    gluGetNurbsProperty
    ( STACK_GET_DATA(nobj)
    , STACK_GET_DATA(property)
    , FRAME_GET_ADDR(value)
    );

  THROW_FRAME()
}

EXDL_API(eglu_nurbsCallback)
{
  /* void gluNurbsCallback(GLUnurbs* nobj, GLenum which, void(CALLBACK* fn)()) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(CALLBACK,  fn[])
  STACK_FMT_END()

    gluNurbsCallback
    ( STACK_GET_ADDR(fn)
    );
}

/* Backwards compatibility for old tesselator */

EXDL_API(eglu_beginPolygon)
{
  /* void gluBeginPolygon(GLUtesselator* tess) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUtesselator, tess[])
  STACK_FMT_END()

    gluBeginPolygon
    ( STACK_GET_ADDR(tess)
    );
}

EXDL_API(eglu_nextContour)
{
  /* void gluNextContour(GLUtesselator* tess, GLenum type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(GLUtesselator*, tess)
    STACK_FMT_DATA(GLenum,         type)
  STACK_FMT_END()

    gluNextContour
    ( STACK_GET_DATA(tess)
    , STACK_GET_DATA(type)
    );
}

EXDL_API(eglu_endPolygon)
{
  /* void gluEndPolygon(GLUtesselator* tess) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUtesselator, tess[])
  STACK_FMT_END()

    gluEndPolygon
    ( STACK_GET_ADDR(tess)
    );
}

/* Triangulator */

EXDL_API(eglu_doTriangulate)
{
  /* void gluDoTriangulate(exdl_data_ptr sd, int len, char* buff) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(exdl_data_ptr, sd)
    STACK_FMT_DATA(int,           len)
    STACK_FMT_DATA(char,          buff[])
  STACK_FMT_END()

    gluDoTriangulate
    ( STACK_GET_DATA(sd)
    , STACK_GET_DATA(len)
    , STACK_GET_ADDR(buff)
    );
}

#endif // COMPILE_GLU
