/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_glu.c,v 1.3 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_GLU

#include <GL/glu.h>

#define ASIZE(a) (sizeof(a)/sizeof(a[0]))

  // Forward declaration
  typedef struct _tessdata3* eglu_tessdata_ptr;

  typedef struct _tessdata3
  { unsigned int      flags
  ; eglu_tessdata_ptr next
  ; GLdouble          data[4]
  ;} eglu_tessdata; // , *eglu_tessdata_ptr; 

  typedef struct _tessobj
  { GLUtesselator* tess
  ; eglu_tessdata* data
  ; GLdouble*      freep
  ; GLdouble       def_heap[64]
  ;} eglu_tessobj;

#ifndef CALLBACK
  #define CALLBACK
#endif

  enum
  { EXDL_TESSCB_NONE         /* No callback             */
  , EXDL_TESSCB_GLBEGIN      /* Calls gl:begin(Type)    */
  , EXDL_TESSCB_GLEND        /* Calls gl:end()          */
  , EXDL_TESSCB_GLVERTEX     /* Calls gl:3dv(vertex)    */
  , EXDL_TESSCB_ERROR_PRINT  /* Prints error on stderr. */
  , EXDL_TESSCB_COMBINE      /* Adds vertex             */
  , EXDL_TESSCB_GLEDGEFLAG   /* Calls gl:edgeFlag(Flag) */
  , EXDL_TESSCB_UDATA_VERTEX /* Calls various gl functions depending on user data */
  , EXDL_TESSCB_NOP          /* does nothing */
  };

#define EXDL_TESS_VTXDATA_MATERIAL  1
#define EXDL_TESS_VTXDATA_TEXCOORD2 2
#define EXDL_TESS_VTXDATA_NORMAL    4
#define EXDL_TESS_VTXDATA_COLOR     8

/* CALLBACK ROUTINES */

void CALLBACK
exdl_nop_callback
( GLboolean flag
)
{
}

void CALLBACK
errorCallback
( GLenum errorCode
)
{
//  const GLubyte* err = gluErrorString(errorCode);
}

void CALLBACK
exdl_combine
( GLdouble coords[3]
, void*    vertex_data[4]
, GLfloat  w[4]
, void**   outData
, void*    polygon_data
)
{
  int            max      = 0;
  int            size     = sizeof(eglu_tessdata);
  unsigned int   flags    = ((eglu_tessdata*) vertex_data[max])->flags;
  eglu_tessdata* tessdata; 

  for
  (
  ; (max < 4) && (vertex_data[max] != NULL)
  ; max  += 1
  )
  {
    if(((eglu_tessdata*) vertex_data[max])->flags != flags)
    {
      flags = 0;
    }
  }

  if(flags & EXDL_TESS_VTXDATA_MATERIAL)
  { // Automatically calculate struct's size
    STACK_FMT_BEGIN()
      STACK_FMT_DATA(GLenum,  face)
      STACK_FMT_DATA(GLenum,  pname)
      STACK_FMT_DATA(GLfloat, params[4])
    STACK_FMT_END()

    size += STACK_GET_SIZE();
  }

  if(flags & EXDL_TESS_VTXDATA_TEXCOORD2)
  { // Automatically calculate struct's size
    STACK_FMT_BEGIN()
      STACK_FMT_DATA(GLfloat, params[2])
    STACK_FMT_END()

    size += STACK_GET_SIZE();
  }
  
  if(flags & EXDL_TESS_VTXDATA_NORMAL)
  { // Automatically calculate struct's size
    STACK_FMT_BEGIN()
      STACK_FMT_DATA(GLfloat, params[3])
    STACK_FMT_END()

    size += STACK_GET_SIZE();
  }

  if(flags & EXDL_TESS_VTXDATA_COLOR)
  { // Automatically calculate struct's size
    STACK_FMT_BEGIN()
      STACK_FMT_DATA(GLfloat, params[4])
    STACK_FMT_END()

    size += STACK_GET_SIZE();
  }

  tessdata          = (eglu_tessdata*) malloc(size);

  tessdata->flags   = 0;
  tessdata->next    = ((eglu_tessobj*) polygon_data)->data;

  tessdata->data[0] = coords[0];
  tessdata->data[1] = coords[1];
  tessdata->data[2] = coords[2];

  *outData = &tessdata->data[3];
}

void CALLBACK
exdl_udata_vertex
( eglu_tessdata* frame
)
{
  char* buff = &frame->data; // Let's trick the macro

  if(frame->flags & EXDL_TESS_VTXDATA_MATERIAL)
  {
    STACK_FMT_BEGIN()
      STACK_FMT_DATA(GLenum,  face)
      STACK_FMT_DATA(GLenum,  pname)
      STACK_FMT_DATA(GLfloat, params[4])
      STACK_FMT_DATA(char,    tail[])
    STACK_FMT_END()

    glMaterialfv
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
    
    buff = STACK_GET_ADDR(tail); // Move the stack frame pointer to the tail
  }
  
  if(frame->flags & EXDL_TESS_VTXDATA_TEXCOORD2)
  {
    STACK_FMT_BEGIN()
      STACK_FMT_DATA(GLfloat, params[2])
      STACK_FMT_DATA(char,    tail[])
    STACK_FMT_END()

    glTexCoord2fv
    ( STACK_GET_ADDR(params)
    );
    
    buff = STACK_GET_ADDR(tail);
  }

  if(frame->flags & EXDL_TESS_VTXDATA_NORMAL)
  {
    STACK_FMT_BEGIN()
      STACK_FMT_DATA(GLfloat, params[3])
      STACK_FMT_DATA(char,    tail[])
    STACK_FMT_END()

    glNormal3fv
    ( STACK_GET_ADDR(params)
    );
    
    buff = STACK_GET_ADDR(tail);
  }

  if(frame->flags & EXDL_TESS_VTXDATA_COLOR)
  {
    STACK_FMT_BEGIN()
      STACK_FMT_DATA(GLfloat, params[4])
      STACK_FMT_DATA(char,    tail[])
    STACK_FMT_END()

    glColor4fv
    ( STACK_GET_ADDR(params)
    );
    
    buff = STACK_GET_ADDR(tail);
  }

  { // Final step
    STACK_FMT_BEGIN()
      STACK_FMT_DATA(GLdouble, tail[3])
    STACK_FMT_END()
    
    glVertex3dv
    ( STACK_GET_ADDR(tail)
    );
  }
}

/* Get the fuck out of this superb code, stupid bug ! */

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

  THROW_STRING()
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

  THROW_WSTRING()
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

  THROW_STRING()
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
    , STACK_GET_ADDR(viewport)
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
    STACK_FMT_DATA(GLdouble, objx)
    STACK_FMT_DATA(GLdouble, objy)
    STACK_FMT_DATA(GLdouble, objz)
    STACK_FMT_DATA(GLdouble, modelMatrix[16])
    STACK_FMT_DATA(GLdouble, projMatrix[16])
    STACK_FMT_DATA(GLint,    viewport[4])
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(int      status)
    FRAME_FMT_ADD(GLdouble winx)
    FRAME_FMT_ADD(GLdouble winy)
    FRAME_FMT_ADD(GLdouble winz)
  FRAME_FMT_END()

  FRAME_SET_DATA(status) =

    gluProject
    ( STACK_GET_DATA(objx)
    , STACK_GET_DATA(objy)
    , STACK_GET_DATA(objz)
    , STACK_GET_ADDR(modelMatrix)
    , STACK_GET_ADDR(projMatrix)
    , STACK_GET_ADDR(viewport)
    , FRAME_GET_ADDR(winx)
    , FRAME_GET_ADDR(winy)
    , FRAME_GET_ADDR(winz)
    );

  THROW_FRAME()
}

EXDL_API(eglu_unProject)
{
  /* int gluUnProject(GLdouble winx, GLdouble winy, GLdouble winz, const GLdouble modelMatrix[16], const GLdouble projMatrix[16], const GLint viewport[4], GLdouble* objx, GLdouble* objy, GLdouble* objz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, winx)
    STACK_FMT_DATA(GLdouble, winy)
    STACK_FMT_DATA(GLdouble, winz)
    STACK_FMT_DATA(GLdouble, modelMatrix[16])
    STACK_FMT_DATA(GLdouble, projMatrix[16])
    STACK_FMT_DATA(GLint,    viewport[4])
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(int      status)
    FRAME_FMT_ADD(GLdouble objx)
    FRAME_FMT_ADD(GLdouble objy)
    FRAME_FMT_ADD(GLdouble objz)
  FRAME_FMT_END()

  FRAME_SET_DATA(status) =

    gluUnProject
    ( STACK_GET_DATA(winx)
    , STACK_GET_DATA(winy)
    , STACK_GET_DATA(winz)
    , STACK_GET_DATA(modelMatrix)
    , STACK_GET_DATA(projMatrix)
    , STACK_GET_DATA(viewport)
    , FRAME_GET_ADDR(objx)
    , FRAME_GET_ADDR(objy)
    , FRAME_GET_ADDR(objz)
    );

  THROW_FRAME()
}

EXDL_API(eglu_scaleImage)
{
  /* int gluScaleImage(GLenum format, GLint widthin, GLint heightin, GLenum typein, const void* datain, GLint widthout, GLint heightout, GLenum typeout, void* dataout) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, format)
    STACK_FMT_DATA(GLint,  widthin)
    STACK_FMT_DATA(GLint,  heightin)
    STACK_FMT_DATA(GLenum, typein)
    STACK_FMT_DATA(void*,  datain)
    STACK_FMT_DATA(GLint,  widthout)
    STACK_FMT_DATA(GLint,  heightout)
    STACK_FMT_DATA(GLenum, typeout)
    STACK_FMT_DATA(void*,  dataout)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(int result)
  FRAME_FMT_END()

  FRAME_SET_DATA(result) =

    gluScaleImage
    ( STACK_GET_DATA(format)
    , STACK_GET_DATA(widthin)
    , STACK_GET_DATA(heightin)
    , STACK_GET_DATA(typein)
    , (sd->next_bin == 0)
    ? (void*) sd->bin[0].base
    : NULL
    , STACK_GET_DATA(widthout)
    , STACK_GET_DATA(heightout)
    , STACK_GET_DATA(typeout)
    , (sd->next_bin == 1)
    ? (void*) sd->bin[1].base
    : NULL
    );

  THROW_FRAME()

  exdl_free_binaries(sd);
}

EXDL_API(eglu_build1DMipmaps)
{
  /* int gluBuild1DMipmaps(GLenum target, GLint components, GLint width, GLenum format, GLenum type, const void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLint,  components)
    STACK_FMT_DATA(GLint,  width)
    STACK_FMT_DATA(GLenum, format)
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(void*,  data)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(int result)
  FRAME_FMT_END()

  FRAME_SET_DATA(result) =

    gluBuild1DMipmaps
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(components)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , (sd->next_bin == 1)
    ? STACK_GET_DATA(data)
    : (GLvoid*) sd->bin[0].base
    );
  
  THROW_FRAME()

  exdl_free_binaries(sd);
}

EXDL_API(eglu_build2DMipmaps)
{
  /* int gluBuild2DMipmaps(GLenum target, GLint components, GLint width, GLint height, GLenum format, GLenum type, const void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLint,  components)
    STACK_FMT_DATA(GLint,  width)
    STACK_FMT_DATA(GLint,  height)
    STACK_FMT_DATA(GLenum, format)
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(void*,  data)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(int result)
  FRAME_FMT_END()

  FRAME_SET_DATA(result) =

    gluBuild2DMipmaps
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(components)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , (sd->next_bin == 1)
    ? STACK_GET_DATA(data)
    : (GLvoid*) sd->bin[0].base
    );

  THROW_FRAME()

  exdl_free_binaries(sd);
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
    STACK_FMT_DATA(GLUquadric*, state)
  STACK_FMT_END()

    gluDeleteQuadric
    ( STACK_GET_DATA(state)
    );
}

EXDL_API(eglu_quadricNormals)
{
  /* void gluQuadricNormals(GLUquadric* quadObject, GLenum normals) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUquadric*, quadObject)
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
    STACK_FMT_DATA(GLUquadric*, quadObject)
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
    STACK_FMT_DATA(GLUquadric*, quadObject)
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
    STACK_FMT_DATA(GLUquadric*, quadObject)
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
    STACK_FMT_DATA(GLUquadric*, qobj)
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
    STACK_FMT_DATA(GLUquadric*, qobj)
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
    STACK_FMT_DATA(GLUquadric*, qobj)
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
    STACK_FMT_DATA(GLUquadric*, qobj)
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

void CALLBACK
eglu_quadric_callback
( void /* GLenum ? undocumented... */
)
{
  ;
}

EXDL_API(eglu_quadricCallback)
{
  /* void gluQuadricCallback(GLUquadric* qobj, GLenum which, void(CALLBACK* fn)()) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUquadric*, qobj)
    STACK_FMT_DATA(GLenum,      which)
//    STACK_FMT_DATA(GLvoid (CALLBACK *,cbfn)())
  STACK_FMT_END()

    gluQuadricCallback
    ( STACK_GET_DATA(qobj)
    , STACK_GET_DATA(which)
//    , STACK_GET_DATA(cbfn)
    , eglu_quadric_callback
    );
}

EXDL_API(eglu_newTess)
{
  /* GLUtesselator* gluNewTess(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(eglu_tessobj* eobj)
  FRAME_FMT_END()

    FRAME_SET_DATA(eobj)        = (eglu_tessobj*) malloc(sizeof(eglu_tessobj));
    FRAME_SET_DATA(eobj)->tess  = gluNewTess();

    gluTessCallback
    ( FRAME_GET_DATA(eobj)->tess
    , GLU_TESS_EDGE_FLAG
    , (GLvoid (CALLBACK*)()) esdl_nop_callback
    ); 

    gluTessCallback
    ( FRAME_GET_DATA(eobj)->tess
    , GLU_TESS_ERROR
    , (GLvoid (CALLBACK*)()) errorCallback
    );

    FRAME_SET_DATA(eobj)->data  = NULL;
    FRAME_SET_DATA(eobj)->freep = FRAME_GET_ADDR(eobj)->def_heap;

  THROW_FRAME()
}

EXDL_API(eglu_deleteTess)
{
  /* void gluDeleteTess(GLUtesselator* tess) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(eglu_tessobj*, eobj)
  STACK_FMT_END()

    gluDeleteTess
    ( STACK_GET_DATA(eobj)->tess
    );

/*
  fprintf
  ( stderr
  , "Deleting tess: %d\r\n"
  , (int) STACK_GET_DATA(eobj)
  );
*/
  
  free(STACK_GET_DATA(eobj));
}

EXDL_API(eglu_tessBeginPolygon)
{
  /* void gluTessBeginPolygon(GLUtesselator* tess, void* polygon_data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(eglu_tessobj*, eobj)
    STACK_FMT_DATA(void*,         polygon_data)
  STACK_FMT_END()

    gluTessBeginPolygon
    ( STACK_GET_DATA(eobj)->tess
    , (sd->next_bin == 0)
    ? STACK_GET_DATA(polygon_data)
    : (void*) sd->bin[0].base
    );
}

EXDL_API(eglu_tessBeginContour)
{
  /* void gluTessBeginContour(GLUtesselator* tess) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(eglu_tessobj*, eobj)
  STACK_FMT_END()

    gluTessBeginContour
    ( STACK_GET_DATA(eobj)->tess
    );
}

EXDL_API(eglu_tessVertex)
{
  /* void gluTessVertex(GLUtesselator* tess, GLdouble coords[3], void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(eglu_tessobj*, eobj)
    STACK_FMT_DATA(GLdouble,      coords[3])
    STACK_FMT_DATA(void*,         data)
  STACK_FMT_END()

  /* ADDCODE */
/*
  {

    eglu_tessobj*  eobj;
    eglu_tessdata* coords; 
    size_t         size;
    size_t         ndoubles;
    size_t         nbytes;
    char*          extrap;

    size     = len - 8;
    nbytes   = sizeof(GLdouble) + sizeof(eglu_tessdata) + size;
    ndoubles = (nbytes - 1) / sizeof(GLdouble) + 1;

    if
    (    ndoubles
      <=   eobj->def_heap
         + ASIZE(eobj->def_heap)
         - eobj->freep
    )
    {
      coords      = (eglu_tessdata*) eobj->freep;
      eobj->freep = &eobj->freep[ndoubles];
    }
    else
    {
      coords       = (eglu_tessdata*) malloc(nbytes);
      coords->next = eobj->data;
      eobj->data   = coords;
    }

    extrap = (char*) (coords->data+1);

    memcpy
    ( extrap
    , buff
    , size
    );

    if(size > 3 * sizeof(GLdouble))
    {
      extrap[-1] = buff[size - 1];
    }
    else
    {
      extrap[-1] = 0;
    }

  }
*/

/*
  fprintf
  ( stderr
  , "tessVertex: %d %g %g %g\r\n"
  , (int) STACK_GET_DATA(eobj)
  , STACK_GET_ADDR(coords)->data[0]
  , STACK_GET_ADDR(coords)->data[1]
  , STACK_GET_ADDR(coords)->data[2]
  );
*/

    gluTessVertex
    ( STACK_GET_DATA(eobj)->tess
    , STACK_GET_ADDR(coords)
    , STACK_GET_DATA(data)
//    , STACK_GET_ADDR(coords)->data
//    , STACK_GET_ADDR(coords)->data
    );
}

EXDL_API(eglu_tessEndContour)
{
  /* void gluTessEndContour(GLUtesselator* tess) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(eglu_tessobj*, eobj)
  STACK_FMT_END()

    gluTessEndContour
    ( STACK_GET_DATA(eobj)->tess
    );
}

EXDL_API(eglu_tessEndPolygon)
{
  /* void gluTessEndPolygon(GLUtesselator* tess) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(eglu_tessobj*, eobj)
  STACK_FMT_END()

  gluTessEndPolygon
  ( STACK_GET_DATA(eobj)->tess
  );

  {
    eglu_tessdata* remove;
    eglu_tessdata* temp;

    remove = STACK_GET_DATA(eobj)->data;
  
    while(NULL != remove)
    {
      temp = remove->next;

      free(remove);
    
      remove = temp;
    }
  }

  STACK_SET_DATA(eobj)->data  = NULL;
  STACK_SET_DATA(eobj)->freep = STACK_GET_DATA(eobj)->def_heap;
}

EXDL_API(eglu_tessProperty)
{
  /* void gluTessProperty(GLUtesselator* tess, GLenum which, GLdouble value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(eglu_tessobj*, eobj)
    STACK_FMT_DATA(GLenum,        which)
    STACK_FMT_DATA(GLdouble,      value)
  STACK_FMT_END()

    gluTessProperty
    ( STACK_GET_DATA(eobj)->tess
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
    STACK_FMT_DATA(eglu_tessobj*, eobj)
    STACK_FMT_DATA(GLdouble,      x)
    STACK_FMT_DATA(GLdouble,      y)
    STACK_FMT_DATA(GLdouble,      z)
  STACK_FMT_END()

    gluTessNormal
    ( STACK_GET_DATA(eobj)->tess
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
    STACK_FMT_DATA(eglu_tessobj*, eobj)
    STACK_FMT_DATA(GLenum,        which)
    STACK_FMT_DATA(GLint,         cbId)
//    STACK_FMT_DATA(GLvoid (CALLBACK *,cbfn)())
  STACK_FMT_END()

  switch(STACK_GET_DATA(which))
  { // Switch to combine mode
    case GLU_TESS_COMBINE:
      STACK_SET_DATA(which) = GLU_TESS_COMBINE_DATA;
      break;      
    default:
      break;
  };

  gluTessCallback
  ( STACK_GET_DATA(eobj)->tess
  , STACK_GET_DATA(which)
  , (STACK_GET_DATA(cbId) == EXDL_TESSCB_GLBEGIN)
  ? (GLvoid (CALLBACK *)()) glBegin
  : STACK_GET_DATA(cbId) == EXDL_TESSCB_GLEND
  ? (GLvoid (CALLBACK *)()) glEnd
  : STACK_GET_DATA(cbId) == EXDL_TESSCB_GLVERTEX
  ? (GLvoid (CALLBACK *)()) glVertex3dv
  : STACK_GET_DATA(cbId) == EXDL_TESSCB_GLEDGEFLAG
  ? (GLvoid (CALLBACK *)()) glEdgeFlag
  : STACK_GET_DATA(cbId) == EXDL_TESSCB_ERROR_PRINT
  ? (GLvoid (CALLBACK *)()) errorCallback
  : STACK_GET_DATA(cbId) == EXDL_TESSCB_COMBINE
  ? (GLvoid (CALLBACK *)()) exdl_combine
  : STACK_GET_DATA(cbId) == EXDL_TESSCB_UDATA_VERTEX
  ? (GLvoid (CALLBACK *)()) exdl_udata_vertex
  : STACK_GET_DATA(cbId) == EXDL_TESSCB_NOP
  ? (GLvoid (CALLBACK *)()) exdl_nop_callback
  : STACK_GET_DATA(cbId) == EXDL_TESSCB_NONE
  ? NULL
  : NULL
//  : STACK_GET_DATA(cbfn)
  );
}

EXDL_API(eglu_getTessProperty)
{
  /* void gluGetTessProperty(GLUtesselator* tess, GLenum which, GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(eglu_tessobj*, eobj)
    STACK_FMT_DATA(GLenum,        which)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLdouble value[1])
  FRAME_FMT_END()

    gluGetTessProperty
    ( STACK_GET_DATA(eobj)->tess
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
    STACK_FMT_DATA(GLUnurbs*, nobj)
  STACK_FMT_END()

    gluDeleteNurbsRenderer
    ( STACK_GET_DATA(nobj)
    );
}

EXDL_API(eglu_beginSurface)
{
  /* void gluBeginSurface(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
  STACK_FMT_END()

    gluBeginSurface
    ( STACK_GET_DATA(nobj)
    );
}

EXDL_API(eglu_beginCurve)
{
  /* void gluBeginCurve(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
  STACK_FMT_END()

    gluBeginCurve
    ( STACK_GET_DATA(nobj)
    );
}

EXDL_API(eglu_endCurve)
{
  /* void gluEndCurve(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
  STACK_FMT_END()

    gluEndCurve
    ( STACK_GET_DATA(nobj)
    );
}

EXDL_API(eglu_endSurface)
{
  /* void gluEndSurface(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
  STACK_FMT_END()

    gluEndSurface
    ( STACK_GET_DATA(nobj)
    );
}

EXDL_API(eglu_beginTrim)
{
  /* void gluBeginTrim(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
  STACK_FMT_END()

    gluBeginTrim
    ( STACK_GET_DATA(nobj)
    );
}

EXDL_API(eglu_endTrim)
{
  /* void gluEndTrim(GLUnurbs* nobj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
  STACK_FMT_END()

    gluEndTrim
    ( STACK_GET_DATA(nobj)
    );
}

EXDL_API(eglu_pwlCurve)
{
  /* void gluPwlCurve(GLUnurbs* nobj, GLint count, GLfloat* array, GLint stride, GLenum type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
    STACK_FMT_DATA(GLint,     count)
    STACK_FMT_DATA(GLfloat*,  array)
    STACK_FMT_DATA(GLint,     stride)
    STACK_FMT_DATA(GLenum,    type)
  STACK_FMT_END()

    gluPwlCurve
    ( STACK_GET_DATA(nobj)
    , STACK_GET_DATA(count)
    , (sd->next_bin == 1)
    ? (GLfloat*) sd->bin[0].base
    : STACK_GET_DATA(array)
    , STACK_GET_DATA(stride)
    , STACK_GET_DATA(type)
    );

  exdl_free_binaries(sd);
}

EXDL_API(eglu_nurbsCurve)
{
  /* void gluNurbsCurve(GLUnurbs* nobj, GLint nknots, GLfloat* knot, GLint stride, GLfloat* ctlarray, GLint order, GLenum type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
    STACK_FMT_DATA(GLint,     nknots)
    STACK_FMT_DATA(GLfloat*,  knot)
    STACK_FMT_DATA(GLint,     stride)
    STACK_FMT_DATA(GLfloat*,  ctlarray)
    STACK_FMT_DATA(GLint,     order)
    STACK_FMT_DATA(GLenum,    type)
  STACK_FMT_END()

    gluNurbsCurve
    ( STACK_GET_DATA(nobj)
    , STACK_GET_DATA(nknots)
    , STACK_GET_DATA(knot)
    , STACK_GET_DATA(stride)
    , (sd->next_bin == 1)
    ? (GLfloat*) sd->bin[0].base
    : STACK_GET_DATA(ctlarray)
    , STACK_GET_DATA(order)
    , STACK_GET_DATA(type)
    );
  
  exdl_free_binaries(sd);
}

EXDL_API(eglu_nurbsSurface)
{
  /* void gluNurbsSurface(GLUnurbs* nobj, GLint sknot_count, float* sknot, GLint tknot_count, GLfloat* tknot, GLint s_stride, GLint t_stride, GLfloat* ctlarray, GLint sorder, GLint torder, GLenum type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
    STACK_FMT_DATA(GLint,     sknot_count)
    STACK_FMT_DATA(float*,    sknot)
    STACK_FMT_DATA(GLint,     tknot_count)
    STACK_FMT_DATA(GLfloat*,  tknot)
    STACK_FMT_DATA(GLint,     s_stride)
    STACK_FMT_DATA(GLint,     t_stride)
    STACK_FMT_DATA(GLfloat*,  ctlarray)
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
    , (sd->next_bin == 1)
    ? (GLfloat*) sd->bin[0].base
    : STACK_GET_DATA(ctlarray)
    , STACK_GET_DATA(sorder)
    , STACK_GET_DATA(torder)
    , STACK_GET_DATA(type)
    );

  exdl_free_binaries(sd);
}

EXDL_API(eglu_loadSamplingMatrices)
{
  /* void gluLoadSamplingMatrices(GLUnurbs* nobj, const GLfloat modelMatrix[16], const GLfloat projMatrix[16], const GLint viewport[4]) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
    STACK_FMT_DATA(GLfloat,   modelMatrix[16])
    STACK_FMT_DATA(GLfloat,   projMatrix[16])
    STACK_FMT_DATA(GLint,     viewport[4])
  STACK_FMT_END()

    gluLoadSamplingMatrices
    ( STACK_GET_DATA(nobj)
    , STACK_GET_ADDR(modelMatrix)
    , STACK_GET_ADDR(projMatrix)
    , STACK_GET_ADDR(viewport)
    );
}

EXDL_API(eglu_nurbsProperty)
{
  /* void gluNurbsProperty(GLUnurbs* nobj, GLenum property, GLfloat value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLUnurbs*, nobj)
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
    STACK_FMT_DATA(GLUnurbs*, nurb)
    STACK_FMT_DATA(GLenum,    property)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLfloat data[1])
  FRAME_FMT_END()

    gluGetNurbsProperty
    ( STACK_GET_DATA(nurb)
    , STACK_GET_DATA(property)
    , FRAME_GET_ADDR(data)
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
    STACK_FMT_DATA(GLUnurbs*, nobj)
    STACK_FMT_DATA(GLenum,    which)
//    STACK_FMT_DATA(GLvoid (CALLBACK *,cbfn)())
  STACK_FMT_END()

    gluNurbsCallback
    ( STACK_GET_DATA(nobj)
    , STACK_GET_DATA(which)
//    , STACK_GET_DATA(cbfn))
    , errorCallback
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
    STACK_FMT_DATA(eglu_tessobj*, eobj)
  STACK_FMT_END()

    gluBeginPolygon
    ( STACK_GET_DATA(eobj)->tess
    );
}

EXDL_API(eglu_nextContour)
{
  /* void gluNextContour(GLUtesselator* tess, GLenum type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(eglu_tessobj*, eobj)
    STACK_FMT_DATA(GLenum,        type)
  STACK_FMT_END()

    gluNextContour
    ( STACK_GET_DATA(eobj)->tess
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
    STACK_FMT_DATA(eglu_tessobj*, eobj)
  STACK_FMT_END()

    gluEndPolygon
    ( STACK_GET_DATA(eobj)->tess
    );
}


/* Taylor made triangulation code */ 

static GLUtesselator* etess_tess;
static GLdouble*      etess_coords;
static GLdouble*      etess_alloc_vertex;
static GLdouble*      etess_alloc_vertex_end;
static int*           etess_vertices;
static int*           etess_vertices_end;

void CALLBACK
eglu_etess_vertex
(GLdouble* coords)
{
  /*
  * We will simply ignore any vertex indices not fitting in the
  * preallocated buffer. The buffer size should be a multiple of
  * of 3, so that we return only complete triangles.
  */
  if
  ( etess_vertices < etess_vertices_end
  )
  {
    *etess_vertices++
    = (int) (coords - etess_coords) / 3
    ;
  }
}

void CALLBACK
esdl_etess_edge_flag
(GLboolean flag)
{
}

void CALLBACK
esdl_etess_error
(GLenum errorCode)
{
//  const GLubyte* err = gluErrorString(errorCode);
}

void CALLBACK
esdl_etess_combine
( GLdouble coords[3]
, void*    vertex_data[4]
, GLfloat  w[4]
, void**   dataOut
)
{
  GLdouble* vertex = etess_alloc_vertex;

  if
  ( etess_alloc_vertex < etess_alloc_vertex_end
  )
  {
    etess_alloc_vertex += 3;
  }

  vertex[0] = coords[0];
  vertex[1] = coords[1];
  vertex[2] = coords[2];
  
  *dataOut = vertex;
}

void
eglu_etess_init()
{
  esdl_tess = gluNewTess();

  gluTessCallback
  ( esdl_tess
  , GLU_TESS_VERTEX
  , (GLvoid (CALLBACK*)()) esdl_etess_vertex
  );
  
  gluTessCallback
  ( esdl_tess
  , GLU_TESS_EDGE_FLAG
  , (GLvoid (CALLBACK*)()) esdl_etess_edge_flag
  ); 
  
  gluTessCallback
  ( esdl_tess
  , GLU_TESS_COMBINE
  , (GLvoid (CALLBACK*)()) esdl_etess_combine
  );
  
  gluTessCallback
  ( esdl_tess
  , GLU_TESS_ERROR
  , (GLvoid (CALLBACK*)()) esdl_etess_error
  );
}

EXDL_API(eglu_doTriangulate)
{
   int       i;
   int       bin_sz;
   int       new_sz;
   int       allocated_vertex_indices;
   GLdouble  n[3];
   GLdouble* new_vertices;
   int       allocated_vertices;
   int       num_vertices = count/sizeof(GLdouble)/3 - 1;

   /*
    * Allocate a vertex buffer to fit both all the original
    * vertices, and hopefully any new vertices created.
    * We need to have all vertices in contigous memory so that
    * we easily can calculate a vertex index from a pointer to
    * vertex data.
    */
   allocated_vertices = count + 10*count;
   etess_coords       = malloc(allocated_vertices);
   etess_alloc_vertex_end = (GLdouble *) (((char *)etess_coords) +
					 allocated_vertices);
   etess_alloc_vertex = new_vertices = etess_coords + count/sizeof(GLdouble);
   memcpy(n, buff, 3*sizeof(GLdouble));
   memcpy(etess_coords, buff, count);
  
   /*
    * Allocate the binary to receive the result. The number of vertex
    * indices must be a multiple of 3, to ensure that we get an integral
    * number of triangles.
    */
   allocated_vertex_indices = 3*6*num_vertices;
   etess_vertices = (int *) sdl_getbuff(sd, allocated_vertex_indices*sizeof(int)+sizeof(int));
   etess_vertices_end = etess_vertices + allocated_vertex_indices;

   /*
    * Do the triangulation.
    */
   gluTessNormal(esdl_tess, n[0], n[1], n[2]);
   gluTessBeginPolygon(esdl_tess, 0);
   gluTessBeginContour(esdl_tess);
   for (i = 1; i <= num_vertices; i++) {
      gluTessVertex(esdl_tess, etess_coords+3*i, etess_coords+3*i);
   }
   gluTessEndContour(esdl_tess);
   gluTessEndPolygon(esdl_tess);

   /*
    * Test for vertex buffer overflow. Return a fake triangulation
    * if there was an overflow.
    */
   if (!(etess_alloc_vertex < etess_alloc_vertex_end)) {
      etess_vertices = (int *) ((ErlDrvBinary *)sd->buff)->orig_bytes;
      *etess_vertices++ = 1;
      *etess_vertices++ = 2;
      *etess_vertices++ = 3;
      etess_alloc_vertex = new_vertices;
   }

   /*
    * Finish the list of vertex indices with an invalid index (0).
    */
   *etess_vertices++ = 0;

   /*
    * Reallocate the binary to the exact size of the data to return. If
    * any new vertices have been created, they will be returned after
    * the the list of vertex indices.
    */
   new_sz = (etess_alloc_vertex - new_vertices)*sizeof(GLdouble);
   bin_sz = ((char *)etess_vertices) - 
       ((char *)((ErlDrvBinary *)sd->buff)->orig_bytes);
   sd->buff = driver_realloc_binary(sd->buff, bin_sz + new_sz);
   sd->len = bin_sz + new_sz;
   etess_vertices = (int *) (((ErlDrvBinary *)sd->buff)->orig_bytes + bin_sz);
   if (new_sz != 0) {
       memcpy(etess_vertices, new_vertices, new_sz);
   }

   free(etess_coords);
}

#endif // COMPILE_GLU
