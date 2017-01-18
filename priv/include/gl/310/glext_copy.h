/*  
 *  Copyright (c) 2005 Dan Gudmundsson
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: esdl_glext.c,v 1.9 2006/05/15 14:45:44 dgud Exp $
 */

#include <stdlib.h>
#include <string.h>

#ifdef FLAVOUR_WOGGLE
  #include <woggle_driver.h>
#else
  #include "esdl.h"
#endif

#ifndef APIENTRY
  #define APIENTRY
#endif

#include "esdl_glext.h"

/* Going from GL_VERSION_1_2 */

void
egl_blendColor
ESDL_DRIVAPI_3
{
  /* void glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLclampf red)
    STACK_FMT_ADD(GLclampf green)
    STACK_FMT_ADD(GLclampf blue)
    STACK_FMT_ADD(GLclampf alpha)
  STACK_FMT_END()

  esdl_glBlendColor
  ( STACK_GET_DATA(red)
  , STACK_GET_DATA(green)
  , STACK_GET_DATA(blue)
  , STACK_GET_DATA(alpha)
  );
}

void
egl_blendEquation
ESDL_DRIVAPI_3
{
  /* void glBlendEquation(GLenum mode); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum mode)
  STACK_FMT_END()

  esdl_glBlendEquation
  ( STACK_GET_DATA(mode)
  );
}

void
egl_drawRangeElements
ESDL_DRIVAPI_3
{
  /* void glDrawRangeElements(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid* indices); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  mode)
    STACK_FMT_ADD(GLuint  start)
    STACK_FMT_ADD(GLuint  end)
    STACK_FMT_ADD(GLsizei count)
    STACK_FMT_ADD(GLenum  type)
    STACK_FMT_ADD(GLvoid* indices)
  STACK_FMT_END()

  esdl_glDrawRangeElements
  ( STACK_GET_DATA(mode)
  , STACK_GET_DATA(start)
  , STACK_GET_DATA(end)
  , STACK_GET_DATA(count)
  , STACK_GET_DATA(type)
  , (sd->next_bin == 0)
  ? STACK_GET_DATA(indices)
  : (GLvoid*) sd->bin[0].base
  );
}

void
egl_colorTable
ESDL_DRIVAPI_3
{
  /* void glColorTable(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* table); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  target)
    STACK_FMT_ADD(GLenum  internalformat)
    STACK_FMT_ADD(GLsizei width)
    STACK_FMT_ADD(GLenum  format)
    STACK_FMT_ADD(GLenum  type)
    STACK_FMT_ADD(GLvoid* table)
  STACK_FMT_END()

  esdl_glColorTable
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(internalformat)
  , STACK_GET_DATA(width)
  , STACK_GET_DATA(format)
  , STACK_GET_DATA(type)
  , (sd->next_bin == 0)
  ? STACK_GET_DATA(table)
  : (GLvoid*) sd->bin[0].base
  );
  
  sdl_free_binaries(sd);
}

void
egl_colorTableParameterfv
ESDL_DRIVAPI_3
{
  /* void glColorTableParameterfv(GLenum target, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_colorTableParameteriv
ESDL_DRIVAPI_3
{
  /* void glColorTableParameteriv(GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_copyColorTable
ESDL_DRIVAPI_3
{
  /* void glCopyColorTable(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width); */

  STACK_FMT_BEGIN()

void
egl_getColorTable
ESDL_DRIVAPI_3
{
  /* void glGetColorTable(GLenum target, GLenum format, GLenum type, GLvoid* table); */

  STACK_FMT_BEGIN()

void
egl_getColorTableParameterfv
ESDL_DRIVAPI_3
{
  /* void glGetColorTableParameterfv(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getColorTableParameteriv
ESDL_DRIVAPI_3
{
  /* void glGetColorTableParameteriv(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_colorSubTable
ESDL_DRIVAPI_3
{
  /* void glColorSubTable(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_copyColorSubTable
ESDL_DRIVAPI_3
{
  /* void glCopyColorSubTable(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width); */

  STACK_FMT_BEGIN()

void
egl_convolutionFilter1D
ESDL_DRIVAPI_3
{
  /* void glConvolutionFilter1D(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* image); */

  STACK_FMT_BEGIN()

void
egl_convolutionFilter2D
ESDL_DRIVAPI_3
{
  /* void glConvolutionFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* image); */

  STACK_FMT_BEGIN()

void
egl_convolutionParameterf
ESDL_DRIVAPI_3
{
  /* void glConvolutionParameterf(GLenum target, GLenum pname, GLfloat params); */

  STACK_FMT_BEGIN()

void
egl_convolutionParameterfv
ESDL_DRIVAPI_3
{
  /* void glConvolutionParameterfv(GLenum target, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_convolutionParameteri
ESDL_DRIVAPI_3
{
  /* void glConvolutionParameteri(GLenum target, GLenum pname, GLint params); */

  STACK_FMT_BEGIN()

void
egl_convolutionParameteriv
ESDL_DRIVAPI_3
{
  /* void glConvolutionParameteriv(GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_copyConvolutionFilter1D
ESDL_DRIVAPI_3
{
  /* void glCopyConvolutionFilter1D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width); */

  STACK_FMT_BEGIN()

void
egl_copyConvolutionFilter2D
ESDL_DRIVAPI_3
{
  /* void glCopyConvolutionFilter2D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_getConvolutionFilter
ESDL_DRIVAPI_3
{
  /* void glGetConvolutionFilter(GLenum target, GLenum format, GLenum type, GLvoid* image); */

  STACK_FMT_BEGIN()

void
egl_getConvolutionParameterfv
ESDL_DRIVAPI_3
{
  /* void glGetConvolutionParameterfv(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getConvolutionParameteriv
ESDL_DRIVAPI_3
{
  /* void glGetConvolutionParameteriv(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getSeparableFilter
ESDL_DRIVAPI_3
{
  /* void glGetSeparableFilter(GLenum target, GLenum format, GLenum type, GLvoid* row, GLvoid* column, GLvoid* span); */

  STACK_FMT_BEGIN()

void
egl_separableFilter2D
ESDL_DRIVAPI_3
{
  /* void glSeparableFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* row, const GLvoid* column); */

  STACK_FMT_BEGIN()

void
egl_getHistogram
ESDL_DRIVAPI_3
{
  /* void glGetHistogram(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values); */

  STACK_FMT_BEGIN()

void
egl_getHistogramParameterfv
ESDL_DRIVAPI_3
{
  /* void glGetHistogramParameterfv(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getHistogramParameteriv
ESDL_DRIVAPI_3
{
  /* void glGetHistogramParameteriv(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getMinmax
ESDL_DRIVAPI_3
{
  /* void glGetMinmax(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values); */

  STACK_FMT_BEGIN()

void
egl_getMinmaxParameterfv
ESDL_DRIVAPI_3
{
  /* void glGetMinmaxParameterfv(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getMinmaxParameteriv
ESDL_DRIVAPI_3
{
  /* void glGetMinmaxParameteriv(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_histogram
ESDL_DRIVAPI_3
{
  /* void glHistogram(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink); */

  STACK_FMT_BEGIN()

void
egl_minmax
ESDL_DRIVAPI_3
{
  /* void glMinmax(GLenum target, GLenum internalformat, GLboolean sink); */

  STACK_FMT_BEGIN()

void
egl_resetHistogram
ESDL_DRIVAPI_3
{
  /* void glResetHistogram(GLenum target); */

  STACK_FMT_BEGIN()

void
egl_resetMinmax
ESDL_DRIVAPI_3
{
  /* void glResetMinmax(GLenum target); */

  STACK_FMT_BEGIN()

void
egl_texImage3D
ESDL_DRIVAPI_3
{
  /* void glTexImage3D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_texSubImage3D
ESDL_DRIVAPI_3
{
  /* void glTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()


void
egl_copyTexSubImage3D
ESDL_DRIVAPI_3
{
  /* void glCopyTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()


/* Going from GL_VERSION_1_3 */

void
egl_activeTexture
ESDL_DRIVAPI_3
{
  /* void glActiveTexture(GLenum texture); */

  STACK_FMT_BEGIN()

void
egl_clientActiveTexture
ESDL_DRIVAPI_3
{
  /* void glClientActiveTexture(GLenum texture); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1d
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1d(GLenum target, GLdouble s); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1dv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1dv(GLenum target, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1f
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1f(GLenum target, GLfloat s); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1fv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1fv(GLenum target, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1i
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1i(GLenum target, GLint s); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1iv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1iv(GLenum target, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1s
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1s(GLenum target, GLshort s); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1sv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1sv(GLenum target, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2d
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2d(GLenum target, GLdouble s, GLdouble t); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2dv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2dv(GLenum target, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2f
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2f(GLenum target, GLfloat s, GLfloat t); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2fv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2fv(GLenum target, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2i
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2i(GLenum target, GLint s, GLint t); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2iv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2iv(GLenum target, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2s
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2s(GLenum target, GLshort s, GLshort t); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2sv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2sv(GLenum target, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3d
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3d(GLenum target, GLdouble s, GLdouble t, GLdouble r); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3dv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3dv(GLenum target, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3f
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3f(GLenum target, GLfloat s, GLfloat t, GLfloat r); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3fv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3fv(GLenum target, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3i
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3i(GLenum target, GLint s, GLint t, GLint r); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3iv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3iv(GLenum target, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3s
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3s(GLenum target, GLshort s, GLshort t, GLshort r); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3sv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3sv(GLenum target, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4d
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4d(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4dv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4dv(GLenum target, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4f
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4f(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4fv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4fv(GLenum target, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4i
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4i(GLenum target, GLint s, GLint t, GLint r, GLint q); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4iv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4iv(GLenum target, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4s
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4s(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4sv
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4sv(GLenum target, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_loadTransposeMatrixf
ESDL_DRIVAPI_3
{
  /* void glLoadTransposeMatrixf(const GLfloat* m); */

  STACK_FMT_BEGIN()

void
egl_loadTransposeMatrixd
ESDL_DRIVAPI_3
{
  /* void glLoadTransposeMatrixd(const GLdouble* m); */

  STACK_FMT_BEGIN()

void
egl_multTransposeMatrixf
ESDL_DRIVAPI_3
{
  /* void glMultTransposeMatrixf(const GLfloat* m); */

  STACK_FMT_BEGIN()

void
egl_multTransposeMatrixd
ESDL_DRIVAPI_3
{
  /* void glMultTransposeMatrixd(const GLdouble* m); */

  STACK_FMT_BEGIN()

void
egl_sampleCoverage
ESDL_DRIVAPI_3
{
  /* void glSampleCoverage(GLclampf value, GLboolean invert); */

  STACK_FMT_BEGIN()

void
egl_compressedTexImage3D
ESDL_DRIVAPI_3
{
  /* void glCompressedTexImage3D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()


void
egl_compressedTexImage2D
ESDL_DRIVAPI_3
{
  /* void glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_compressedTexImage1D
ESDL_DRIVAPI_3
{
  /* void glCompressedTexImage1D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_compressedTexSubImage3D
ESDL_DRIVAPI_3
{
  /* void glCompressedTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_compressedTexSubImage2D
ESDL_DRIVAPI_3
{
  /* void glCompressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_compressedTexSubImage1D
ESDL_DRIVAPI_3
{
  /* void glCompressedTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_getCompressedTexImage
ESDL_DRIVAPI_3
{
  /* void glGetCompressedTexImage(GLenum target, GLint level, GLvoid* img); */

  STACK_FMT_BEGIN()


/* Going from GL_VERSION_1_4 */


void
egl_blendFuncSeparate
ESDL_DRIVAPI_3
{
  /* void glBlendFuncSeparate(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha); */

  STACK_FMT_BEGIN()

void
egl_fogCoordf
ESDL_DRIVAPI_3
{
  /* void glFogCoordf(GLfloat coord); */

  STACK_FMT_BEGIN()

void
egl_fogCoordfv
ESDL_DRIVAPI_3
{
  /* void glFogCoordfv(const GLfloat* coord); */

  STACK_FMT_BEGIN()

void
egl_fogCoordd
ESDL_DRIVAPI_3
{
  /* void glFogCoordd(GLdouble coord); */

  STACK_FMT_BEGIN()

void
egl_fogCoorddv
ESDL_DRIVAPI_3
{
  /* void glFogCoorddv(const GLdouble* coord); */

  STACK_FMT_BEGIN()

void
egl_fogCoordPointer
ESDL_DRIVAPI_3
{
  /* void glFogCoordPointer(GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_multiDrawArrays
ESDL_DRIVAPI_3
{
  /* void glMultiDrawArrays(GLenum mode, GLint* first, GLsizei* count, GLsizei primcount); */

  STACK_FMT_BEGIN()

void
egl_multiDrawElements
ESDL_DRIVAPI_3
{
  /* void glMultiDrawElements(GLenum mode, const GLsizei* count, GLenum type, const GLvoid** indices, GLsizei primcount); */

  STACK_FMT_BEGIN()

void
egl_pointParameterf
ESDL_DRIVAPI_3
{
  /* void glPointParameterf(GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_pointParameterfv
ESDL_DRIVAPI_3
{
  /* void glPointParameterfv(GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_pointParameteri
ESDL_DRIVAPI_3
{
  /* void glPointParameteri(GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_pointParameteriv
ESDL_DRIVAPI_3
{
  /* void glPointParameteriv(GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3b
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3b(GLbyte red, GLbyte green, GLbyte blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3bv
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3bv(const GLbyte* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3d
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3d(GLdouble red, GLdouble green, GLdouble blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3dv
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3dv(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3f
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3f(GLfloat red, GLfloat green, GLfloat blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3fv
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3fv(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3i
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3i(GLint red, GLint green, GLint blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3iv
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3iv(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3s
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3s(GLshort red, GLshort green, GLshort blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3sv
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3sv(const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3ub
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3ub(GLubyte red, GLubyte green, GLubyte blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3ubv
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3ubv(const GLubyte* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3ui
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3ui(GLuint red, GLuint green, GLuint blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3uiv
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3uiv(const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3us
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3us(GLushort red, GLushort green, GLushort blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3usv
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3usv(const GLushort* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColorPointer
ESDL_DRIVAPI_3
{
  /* void glSecondaryColorPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_windowPos2d
ESDL_DRIVAPI_3
{
  /* void glWindowPos2d(GLdouble x, GLdouble y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2dv
ESDL_DRIVAPI_3
{
  /* void glWindowPos2dv(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos2f
ESDL_DRIVAPI_3
{
  /* void glWindowPos2f(GLfloat x, GLfloat y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2fv
ESDL_DRIVAPI_3
{
  /* void glWindowPos2fv(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos2i
ESDL_DRIVAPI_3
{
  /* void glWindowPos2i(GLint x, GLint y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2iv
ESDL_DRIVAPI_3
{
  /* void glWindowPos2iv(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos2s
ESDL_DRIVAPI_3
{
  /* void glWindowPos2s(GLshort x, GLshort y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2sv
ESDL_DRIVAPI_3
{
  /* void glWindowPos2sv(const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3d
ESDL_DRIVAPI_3
{
  /* void glWindowPos3d(GLdouble x, GLdouble y, GLdouble z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3dv
ESDL_DRIVAPI_3
{
  /* void glWindowPos3dv(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3f
ESDL_DRIVAPI_3
{
  /* void glWindowPos3f(GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3fv
ESDL_DRIVAPI_3
{
  /* void glWindowPos3fv(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3i
ESDL_DRIVAPI_3
{
  /* void glWindowPos3i(GLint x, GLint y, GLint z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3iv
ESDL_DRIVAPI_3
{
  /* void glWindowPos3iv(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3s
ESDL_DRIVAPI_3
{
  /* void glWindowPos3s(GLshort x, GLshort y, GLshort z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3sv
ESDL_DRIVAPI_3
{
  /* void glWindowPos3sv(const GLshort* v); */

  STACK_FMT_BEGIN()


/* Going from GL_VERSION_1_5 */

void
egl_genQueries
ESDL_DRIVAPI_3
{
  /* void glGenQueries(GLsizei n, GLuint* ids); */

  STACK_FMT_BEGIN()

void
egl_deleteQueries
ESDL_DRIVAPI_3
{
  /* void glDeleteQueries(GLsizei n, const GLuint* ids); */

  STACK_FMT_BEGIN()

void
egl_isQuery
ESDL_DRIVAPI_3
{
  /* GLboolean glIsQuery(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_beginQuery
ESDL_DRIVAPI_3
{
  /* void glBeginQuery(GLenum target, GLuint id); */

  STACK_FMT_BEGIN()

void
egl_endQuery
ESDL_DRIVAPI_3
{
  /* void glEndQuery(GLenum target); */

  STACK_FMT_BEGIN()

void
egl_getQueryiv
ESDL_DRIVAPI_3
{
  /* void glGetQueryiv(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getQueryObjectiv
ESDL_DRIVAPI_3
{
  /* void glGetQueryObjectiv(GLuint id, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getQueryObjectuiv
ESDL_DRIVAPI_3
{
  /* void glGetQueryObjectuiv(GLuint id, GLenum pname, GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_bindBuffer
ESDL_DRIVAPI_3
{
  /* void glBindBuffer(GLenum target, GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_deleteBuffers
ESDL_DRIVAPI_3
{
  /* void glDeleteBuffers(GLsizei n, const GLuint* buffers); */

  STACK_FMT_BEGIN()

void
egl_genBuffers
ESDL_DRIVAPI_3
{
  /* void glGenBuffers(GLsizei n, GLuint* buffers); */

  STACK_FMT_BEGIN()

void
egl_isBuffer
ESDL_DRIVAPI_3
{
  /* GLboolean glIsBuffer(GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_bufferData
ESDL_DRIVAPI_3
{
  /* void glBufferData(GLenum target, GLsizeiptr size, const GLvoid* data, GLenum usage); */

  STACK_FMT_BEGIN()

void
egl_bufferSubData
ESDL_DRIVAPI_3
{
  /* void glBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_getBufferSubData
ESDL_DRIVAPI_3
{
  /* void glGetBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_mapBuffer
ESDL_DRIVAPI_3
{
  /* GLvoid* glMapBuffer(GLenum target, GLenum access); */

  STACK_FMT_BEGIN()

void
egl_unmapBuffer
ESDL_DRIVAPI_3
{
  /* GLboolean glUnmapBuffer(GLenum target); */

  STACK_FMT_BEGIN()

void
egl_getBufferParameteriv
ESDL_DRIVAPI_3
{
  /* void glGetBufferParameteriv(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getBufferPointerv
ESDL_DRIVAPI_3
{
  /* void glGetBufferPointerv(GLenum target, GLenum pname, GLvoid** params); */

  STACK_FMT_BEGIN()



/* Going from GL_VERSION_2_0 */

void
egl_blendEquationSeparate
ESDL_DRIVAPI_3
{
  /* void glBlendEquationSeparate(GLenum modeRGB, GLenum modeAlpha); */

  STACK_FMT_BEGIN()

void
egl_drawBuffers
ESDL_DRIVAPI_3
{
  /* void glDrawBuffers(GLsizei n, const GLenum* bufs); */

  STACK_FMT_BEGIN()

void
egl_stencilOpSeparate
ESDL_DRIVAPI_3
{
  /* void glStencilOpSeparate(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass); */

  STACK_FMT_BEGIN()

void
egl_stencilFuncSeparate
ESDL_DRIVAPI_3
{
  /* void glStencilFuncSeparate(GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask); */

  STACK_FMT_BEGIN()

void
egl_stencilMaskSeparate
ESDL_DRIVAPI_3
{
  /* void glStencilMaskSeparate(GLenum face, GLuint mask); */

  STACK_FMT_BEGIN()

void
egl_attachShader
ESDL_DRIVAPI_3
{
  /* void glAttachShader(GLuint program, GLuint shader); */

  STACK_FMT_BEGIN()

void
egl_bindAttribLocation
ESDL_DRIVAPI_3
{
  /* void glBindAttribLocation(GLuint program, GLuint index, const GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_compileShader
ESDL_DRIVAPI_3
{
  /* void glCompileShader(GLuint shader); */

  STACK_FMT_BEGIN()

void
egl_createProgram
ESDL_DRIVAPI_3
{
  /* GLuint glCreateProgram(void); */

  STACK_FMT_BEGIN()

void
egl_createShader
ESDL_DRIVAPI_3
{
  /* GLuint glCreateShader(GLenum type); */

  STACK_FMT_BEGIN()

void
egl_deleteProgram
ESDL_DRIVAPI_3
{
  /* void glDeleteProgram(GLuint program); */

  STACK_FMT_BEGIN()

void
egl_deleteShader
ESDL_DRIVAPI_3
{
  /* void glDeleteShader(GLuint shader); */

  STACK_FMT_BEGIN()

void
egl_detachShader
ESDL_DRIVAPI_3
{
  /* void glDetachShader(GLuint program, GLuint shader); */

  STACK_FMT_BEGIN()

void
egl_disableVertexAttribArray
ESDL_DRIVAPI_3
{
  /* void glDisableVertexAttribArray(GLuint index); */

  STACK_FMT_BEGIN()

void
egl_enableVertexAttribArray
ESDL_DRIVAPI_3
{
  /* void glEnableVertexAttribArray(GLuint index); */

  STACK_FMT_BEGIN()

void
egl_getActiveAttrib
ESDL_DRIVAPI_3
{
  /* void glGetActiveAttrib(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_getActiveUniform
ESDL_DRIVAPI_3
{
  /* void glGetActiveUniform(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_getAttachedShaders
ESDL_DRIVAPI_3
{
  /* void glGetAttachedShaders(GLuint program, GLsizei maxCount, GLsizei* count, GLuint* obj); */

  STACK_FMT_BEGIN()

void
egl_getAttribLocation
ESDL_DRIVAPI_3
{
  /* GLint glGetAttribLocation(GLuint program, const GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_getProgramiv
ESDL_DRIVAPI_3
{
  /* void glGetProgramiv(GLuint program, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getProgramInfoLog
ESDL_DRIVAPI_3
{
  /* void glGetProgramInfoLog(GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog); */

  STACK_FMT_BEGIN()

void
egl_getShaderiv
ESDL_DRIVAPI_3
{
  /* void glGetShaderiv(GLuint shader, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getShaderInfoLog
ESDL_DRIVAPI_3
{
  /* void glGetShaderInfoLog(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog); */

  STACK_FMT_BEGIN()

void
egl_getShaderSource
ESDL_DRIVAPI_3
{
  /* void glGetShaderSource(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source); */

  STACK_FMT_BEGIN()

void
egl_getUniformLocation
ESDL_DRIVAPI_3
{
  /* GLint glGetUniformLocation(GLuint program, const GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_getUniformfv
ESDL_DRIVAPI_3
{
  /* void glGetUniformfv(GLuint program, GLint location, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getUniformiv
ESDL_DRIVAPI_3
{
  /* void glGetUniformiv(GLuint program, GLint location, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribdv
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribdv(GLuint index, GLenum pname, GLdouble* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribfv
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribfv(GLuint index, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribiv
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribiv(GLuint index, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribPointerv
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribPointerv(GLuint index, GLenum pname, GLvoid** pointer); */

  STACK_FMT_BEGIN()




void
egl_isProgram
ESDL_DRIVAPI_3
{
  /* GLboolean glIsProgram(GLuint program); */

  STACK_FMT_BEGIN()

void
egl_isShader
ESDL_DRIVAPI_3
{
  /* GLboolean glIsShader(GLuint shader); */

  STACK_FMT_BEGIN()

void
egl_linkProgram
ESDL_DRIVAPI_3
{
  /* void glLinkProgram(GLuint program); */

  STACK_FMT_BEGIN()

void
egl_shaderSource
ESDL_DRIVAPI_3
{
  /* void glShaderSource(GLuint shader, GLsizei count, const GLchar** string, const GLint* length); */

  STACK_FMT_BEGIN()

void
egl_useProgram
ESDL_DRIVAPI_3
{
  /* void glUseProgram(GLuint program); */

  STACK_FMT_BEGIN()

void
egl_uniform1f
ESDL_DRIVAPI_3
{
  /* void glUniform1f(GLint location, GLfloat v0); */

  STACK_FMT_BEGIN()

void
egl_uniform2f
ESDL_DRIVAPI_3
{
  /* void glUniform2f(GLint location, GLfloat v0, GLfloat v1); */

  STACK_FMT_BEGIN()

void
egl_uniform3f
ESDL_DRIVAPI_3
{
  /* void glUniform3f(GLint location, GLfloat v0, GLfloat v1, GLfloat v2); */

  STACK_FMT_BEGIN()

void
egl_uniform4f
ESDL_DRIVAPI_3
{
  /* void glUniform4f(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3); */

  STACK_FMT_BEGIN()

void
egl_uniform1i
ESDL_DRIVAPI_3
{
  /* void glUniform1i(GLint location, GLint v0); */

  STACK_FMT_BEGIN()

void
egl_uniform2i
ESDL_DRIVAPI_3
{
  /* void glUniform2i(GLint location, GLint v0, GLint v1); */

  STACK_FMT_BEGIN()

void
egl_uniform3i
ESDL_DRIVAPI_3
{
  /* void glUniform3i(GLint location, GLint v0, GLint v1, GLint v2); */

  STACK_FMT_BEGIN()

void
egl_uniform4i
ESDL_DRIVAPI_3
{
  /* void glUniform4i(GLint location, GLint v0, GLint v1, GLint v2, GLint v3); */

  STACK_FMT_BEGIN()

void
egl_uniform1fv
ESDL_DRIVAPI_3
{
  /* void glUniform1fv(GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniform2fv
ESDL_DRIVAPI_3
{
  /* void glUniform2fv(GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniform3fv
ESDL_DRIVAPI_3
{
  /* void glUniform3fv(GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniform4fv
ESDL_DRIVAPI_3
{
  /* void glUniform4fv(GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniform1iv
ESDL_DRIVAPI_3
{
  /* void glUniform1iv(GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform2iv
ESDL_DRIVAPI_3
{
  /* void glUniform2iv(GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform3iv
ESDL_DRIVAPI_3
{
  /* void glUniform3iv(GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform4iv
ESDL_DRIVAPI_3
{
  /* void glUniform4iv(GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix2fv
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix3fv
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix4fv
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_validateProgram
ESDL_DRIVAPI_3
{
  /* void glValidateProgram(GLuint program); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1d
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1d(GLuint index, GLdouble x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1dv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1dv(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1f
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1f(GLuint index, GLfloat x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1fv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1fv(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1s
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1s(GLuint index, GLshort x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1sv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1sv(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2d
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2d(GLuint index, GLdouble x, GLdouble y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2dv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2dv(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2f
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2f(GLuint index, GLfloat x, GLfloat y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2fv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2fv(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2s
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2s(GLuint index, GLshort x, GLshort y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2sv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2sv(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3d
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3d(GLuint index, GLdouble x, GLdouble y, GLdouble z); */

  STACK_FMT_BEGIN()


void
egl_vertexAttrib3dv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3dv(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3f
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3f(GLuint index, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3fv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3fv(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3s
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3s(GLuint index, GLshort x, GLshort y, GLshort z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3sv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3sv(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4Nbv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4Nbv(GLuint index, const GLbyte* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4Niv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4Niv(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4Nsv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4Nsv(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4Nub
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4Nub(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4Nubv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4Nubv(GLuint index, const GLubyte* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4Nuiv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4Nuiv(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4Nusv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4Nusv(GLuint index, const GLushort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4bv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4bv(GLuint index, const GLbyte* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4d
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4d(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4dv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4dv(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4f
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4f(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4fv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4fv(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4iv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4iv(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4s
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4s(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4sv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4sv(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4ubv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4ubv(GLuint index, const GLubyte* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4uiv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4uiv(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4usv
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4usv(GLuint index, const GLushort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribPointer
ESDL_DRIVAPI_3
{
  /* void glVertexAttribPointer(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()


/* Going from GL_VERSION_2_1 */

void
egl_uniformMatrix2x3fv
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix2x3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix3x2fv
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix3x2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix2x4fv
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix2x4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix4x2fv
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix4x2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix3x4fv
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix3x4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix4x3fv
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix4x3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()


/* Going from GL_VERSION_3_0 */

void
egl_colorMaski
ESDL_DRIVAPI_3
{
  /* void glColorMaski(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a); */

  STACK_FMT_BEGIN()

void
egl_getBooleani_v
ESDL_DRIVAPI_3
{
  /* void glGetBooleani_v(GLenum target, GLuint index, GLboolean* data); */

  STACK_FMT_BEGIN()

void
egl_getIntegeri_v
ESDL_DRIVAPI_3
{
  /* void glGetIntegeri_v(GLenum target, GLuint index, GLint* data); */

  STACK_FMT_BEGIN()

void
egl_enablei
ESDL_DRIVAPI_3
{
  /* void glEnablei(GLenum target, GLuint index); */

  STACK_FMT_BEGIN()

void
egl_disablei
ESDL_DRIVAPI_3
{
  /* void glDisablei(GLenum target, GLuint index); */

  STACK_FMT_BEGIN()

void
egl_isEnabledi
ESDL_DRIVAPI_3
{
  /* GLboolean glIsEnabledi(GLenum target, GLuint index); */

  STACK_FMT_BEGIN()

void
egl_beginTransformFeedback
ESDL_DRIVAPI_3
{
  /* void glBeginTransformFeedback(GLenum primitiveMode); */

  STACK_FMT_BEGIN()

void
egl_endTransformFeedback
ESDL_DRIVAPI_3
{
  /* void glEndTransformFeedback(void); */

  STACK_FMT_BEGIN()

void
egl_bindBufferRange
ESDL_DRIVAPI_3
{
  /* void glBindBufferRange(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size); */

  STACK_FMT_BEGIN()

void
egl_bindBufferBase
ESDL_DRIVAPI_3
{
  /* void glBindBufferBase(GLenum target, GLuint index, GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_transformFeedbackVaryings
ESDL_DRIVAPI_3
{
  /* void glTransformFeedbackVaryings(GLuint program, GLsizei count, const GLchar** varyings, GLenum bufferMode); */

  STACK_FMT_BEGIN()

void
egl_getTransformFeedbackVarying
ESDL_DRIVAPI_3
{
  /* void glGetTransformFeedbackVarying(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_clampColor
ESDL_DRIVAPI_3
{
  /* void glClampColor(GLenum target, GLenum clamp); */

  STACK_FMT_BEGIN()

void
egl_beginConditionalRender
ESDL_DRIVAPI_3
{
  /* void glBeginConditionalRender(GLuint id, GLenum mode); */

  STACK_FMT_BEGIN()

void
egl_endConditionalRender
ESDL_DRIVAPI_3
{
  /* void glEndConditionalRender(void); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI1i
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI1i(GLuint index, GLint x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI2i
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI2i(GLuint index, GLint x, GLint y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI3i
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI3i(GLuint index, GLint x, GLint y, GLint z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4i
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4i(GLuint index, GLint x, GLint y, GLint z, GLint w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI1ui
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI1ui(GLuint index, GLuint x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI2ui
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI2ui(GLuint index, GLuint x, GLuint y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI3ui
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI3ui(GLuint index, GLuint x, GLuint y, GLuint z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4ui
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4ui(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI1iv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI1iv(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI2iv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI2iv(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI3iv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI3iv(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4iv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4iv(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI1uiv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI1uiv(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI2uiv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI2uiv(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI3uiv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI3uiv(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4uiv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4uiv(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4bv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4bv(GLuint index, const GLbyte* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4sv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4sv(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4ubv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4ubv(GLuint index, const GLubyte* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4usv
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4usv(GLuint index, const GLushort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribIPointer
ESDL_DRIVAPI_3
{
  /* void glVertexAttribIPointer(GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribIiv
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribIiv(GLuint index, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribIuiv
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribIuiv(GLuint index, GLenum pname, GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_getUniformuiv
ESDL_DRIVAPI_3
{
  /* void glGetUniformuiv(GLuint program, GLint location, GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_bindFragDataLocation
ESDL_DRIVAPI_3
{
  /* void glBindFragDataLocation(GLuint program, GLuint color, const GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_getFragDataLocation
ESDL_DRIVAPI_3
{
  /* GLint glGetFragDataLocation(GLuint program, const GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_uniform1ui
ESDL_DRIVAPI_3
{
  /* void glUniform1ui(GLint location, GLuint v0); */

  STACK_FMT_BEGIN()

void
egl_uniform2ui
ESDL_DRIVAPI_3
{
  /* void glUniform2ui(GLint location, GLuint v0, GLuint v1); */

  STACK_FMT_BEGIN()

void
egl_uniform3ui
ESDL_DRIVAPI_3
{
  /* void glUniform3ui(GLint location, GLuint v0, GLuint v1, GLuint v2); */

  STACK_FMT_BEGIN()

void
egl_uniform4ui
ESDL_DRIVAPI_3
{
  /* void glUniform4ui(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3); */

  STACK_FMT_BEGIN()

void
egl_uniform1uiv
ESDL_DRIVAPI_3
{
  /* void glUniform1uiv(GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform2uiv
ESDL_DRIVAPI_3
{
  /* void glUniform2uiv(GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform3uiv
ESDL_DRIVAPI_3
{
  /* void glUniform3uiv(GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform4uiv
ESDL_DRIVAPI_3
{
  /* void glUniform4uiv(GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_texParameterIiv
ESDL_DRIVAPI_3
{
  /* void glTexParameterIiv(GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_texParameterIuiv
ESDL_DRIVAPI_3
{
  /* void glTexParameterIuiv(GLenum target, GLenum pname, const GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_getTexParameterIiv
ESDL_DRIVAPI_3
{
  /* void glGetTexParameterIiv(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getTexParameterIuiv
ESDL_DRIVAPI_3
{
  /* void glGetTexParameterIuiv(GLenum target, GLenum pname, GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_clearBufferiv
ESDL_DRIVAPI_3
{
  /* void glClearBufferiv(GLenum buffer, GLint drawbuffer, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_clearBufferuiv
ESDL_DRIVAPI_3
{
  /* void glClearBufferuiv(GLenum buffer, GLint drawbuffer, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_clearBufferfv
ESDL_DRIVAPI_3
{
  /* void glClearBufferfv(GLenum buffer, GLint drawbuffer, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_clearBufferfi
ESDL_DRIVAPI_3
{
  /* void glClearBufferfi(GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil); */

  STACK_FMT_BEGIN()

void
egl_getStringi
ESDL_DRIVAPI_3
{
  /* const GLubyte*  glGetStringi(GLenum name, GLuint index); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_multitexture */


void
egl_activeTextureARB
ESDL_DRIVAPI_3
{
  /* void glActiveTextureARB(GLenum texture); */

  STACK_FMT_BEGIN()

void
egl_clientActiveTextureARB
ESDL_DRIVAPI_3
{
  /* void glClientActiveTextureARB(GLenum texture); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1dARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1dARB(GLenum target, GLdouble s); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1dvARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1dvARB(GLenum target, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1fARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1fARB(GLenum target, GLfloat s); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1fvARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1fvARB(GLenum target, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1iARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1iARB(GLenum target, GLint s); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1ivARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1ivARB(GLenum target, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1sARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1sARB(GLenum target, GLshort s); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1svARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1svARB(GLenum target, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2dARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2dvARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2dvARB(GLenum target, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2fARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2fvARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2fvARB(GLenum target, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2iARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2iARB(GLenum target, GLint s, GLint t); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2ivARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2ivARB(GLenum target, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2sARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2svARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2svARB(GLenum target, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3dARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3dvARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3dvARB(GLenum target, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3fARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3fvARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3fvARB(GLenum target, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3iARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3ivARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3ivARB(GLenum target, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3sARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3svARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3svARB(GLenum target, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4dARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4dvARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4dvARB(GLenum target, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4fARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4fvARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4fvARB(GLenum target, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4iARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4ivARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4ivARB(GLenum target, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4sARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4svARB
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4svARB(GLenum target, const GLshort* v); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_transpose_matrix */

void
egl_loadTransposeMatrixfARB
ESDL_DRIVAPI_3
{
  /* void glLoadTransposeMatrixfARB(const GLfloat* m); */

  STACK_FMT_BEGIN()

void
egl_loadTransposeMatrixdARB
ESDL_DRIVAPI_3
{
  /* void glLoadTransposeMatrixdARB(const GLdouble* m); */

  STACK_FMT_BEGIN()

void
egl_multTransposeMatrixfARB
ESDL_DRIVAPI_3
{
  /* void glMultTransposeMatrixfARB(const GLfloat* m); */

  STACK_FMT_BEGIN()

void
egl_multTransposeMatrixdARB
ESDL_DRIVAPI_3
{
  /* void glMultTransposeMatrixdARB(const GLdouble* m); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_multisample */

void
egl_sampleCoverageARB
ESDL_DRIVAPI_3
{
  /* void glSampleCoverageARB(GLclampf value, GLboolean invert); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_texture_env_add */
/* Going from GL_ARB_texture_cube_map */
/* Going from GL_ARB_texture_compression */

void
egl_compressedTexImage3DARB
ESDL_DRIVAPI_3
{
  /* void glCompressedTexImage3DARB(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_compressedTexImage2DARB
ESDL_DRIVAPI_3
{
  /* void glCompressedTexImage2DARB(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_compressedTexImage1DARB
ESDL_DRIVAPI_3
{
  /* void glCompressedTexImage1DARB(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_compressedTexSubImage3DARB
ESDL_DRIVAPI_3
{
  /* void glCompressedTexSubImage3DARB(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_compressedTexSubImage2DARB
ESDL_DRIVAPI_3
{
  /* void glCompressedTexSubImage2DARB(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_compressedTexSubImage1DARB
ESDL_DRIVAPI_3
{
  /* void glCompressedTexSubImage1DARB(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_getCompressedTexImageARB
ESDL_DRIVAPI_3
{
  /* void glGetCompressedTexImageARB(GLenum target, GLint level, GLvoid* img); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_texture_border_clamp */
/* Going from GL_ARB_point_parameters */

void
egl_pointParameterfARB
ESDL_DRIVAPI_3
{
  /* void glPointParameterfARB(GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_pointParameterfvARB
ESDL_DRIVAPI_3
{
  /* void glPointParameterfvARB(GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_vertex_blend */

void
egl_weightbvARB
ESDL_DRIVAPI_3
{
  /* void glWeightbvARB(GLint size, const GLbyte* weights); */

  STACK_FMT_BEGIN()

void
egl_weightsvARB
ESDL_DRIVAPI_3
{
  /* void glWeightsvARB(GLint size, const GLshort* weights); */

  STACK_FMT_BEGIN()

void
egl_weightivARB
ESDL_DRIVAPI_3
{
  /* void glWeightivARB(GLint size, const GLint* weights); */

  STACK_FMT_BEGIN()

void
egl_weightfvARB
ESDL_DRIVAPI_3
{
  /* void glWeightfvARB(GLint size, const GLfloat* weights); */

  STACK_FMT_BEGIN()

void
egl_weightdvARB
ESDL_DRIVAPI_3
{
  /* void glWeightdvARB(GLint size, const GLdouble* weights); */

  STACK_FMT_BEGIN()

void
egl_weightubvARB
ESDL_DRIVAPI_3
{
  /* void glWeightubvARB(GLint size, const GLubyte* weights); */

  STACK_FMT_BEGIN()

void
egl_weightusvARB
ESDL_DRIVAPI_3
{
  /* void glWeightusvARB(GLint size, const GLushort* weights); */

  STACK_FMT_BEGIN()

void
egl_weightuivARB
ESDL_DRIVAPI_3
{
  /* void glWeightuivARB(GLint size, const GLuint* weights); */

  STACK_FMT_BEGIN()

void
egl_weightPointerARB
ESDL_DRIVAPI_3
{
  /* void glWeightPointerARB(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_vertexBlendARB
ESDL_DRIVAPI_3
{
  /* void glVertexBlendARB(GLint count); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_matrix_palette */

void
egl_currentPaletteMatrixARB
ESDL_DRIVAPI_3
{
  /* void glCurrentPaletteMatrixARB(GLint index); */

  STACK_FMT_BEGIN()

void
egl_matrixIndexubvARB
ESDL_DRIVAPI_3
{
  /* void glMatrixIndexubvARB(GLint size, const GLubyte* indices); */

  STACK_FMT_BEGIN()

void
egl_matrixIndexusvARB
ESDL_DRIVAPI_3
{
  /* void glMatrixIndexusvARB(GLint size, const GLushort* indices); */

  STACK_FMT_BEGIN()

void
egl_matrixIndexuivARB
ESDL_DRIVAPI_3
{
  /* void glMatrixIndexuivARB(GLint size, const GLuint* indices); */

  STACK_FMT_BEGIN()

void
egl_matrixIndexPointerARB
ESDL_DRIVAPI_3
{
  /* void glMatrixIndexPointerARB(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_texture_env_combine */
/* Going from GL_ARB_texture_env_crossbar */
/* Going from GL_ARB_texture_env_dot3 */
/* Going from GL_ARB_texture_mirrored_repeat */
/* Going from GL_ARB_depth_texture */
/* Going from GL_ARB_shadow */
/* Going from GL_ARB_shadow_ambient */
/* Going from GL_ARB_window_pos */

void
egl_windowPos2dARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos2dARB(GLdouble x, GLdouble y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2dvARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos2dvARB(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos2fARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos2fARB(GLfloat x, GLfloat y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2fvARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos2fvARB(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos2iARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos2iARB(GLint x, GLint y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2ivARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos2ivARB(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos2sARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos2sARB(GLshort x, GLshort y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2svARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos2svARB(const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3dARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos3dARB(GLdouble x, GLdouble y, GLdouble z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3dvARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos3dvARB(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3fARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos3fARB(GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3fvARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos3fvARB(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3iARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos3iARB(GLint x, GLint y, GLint z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3ivARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos3ivARB(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3sARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos3sARB(GLshort x, GLshort y, GLshort z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3svARB
ESDL_DRIVAPI_3
{
  /* void glWindowPos3svARB(const GLshort* v); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_vertex_program */

void
egl_vertexAttrib1dARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1dARB(GLuint index, GLdouble x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1dvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1dvARB(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1fARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1fARB(GLuint index, GLfloat x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1fvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1fvARB(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1sARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1sARB(GLuint index, GLshort x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1svARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1svARB(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2dARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2dARB(GLuint index, GLdouble x, GLdouble y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2dvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2dvARB(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2fARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2fARB(GLuint index, GLfloat x, GLfloat y); */

  STACK_FMT_BEGIN()


void
egl_vertexAttrib2fvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2fvARB(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2sARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2sARB(GLuint index, GLshort x, GLshort y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2svARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2svARB(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3dARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3dARB(GLuint index, GLdouble x, GLdouble y, GLdouble z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3dvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3dvARB(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3fARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3fARB(GLuint index, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3fvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3fvARB(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3sARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3sARB(GLuint index, GLshort x, GLshort y, GLshort z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3svARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3svARB(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4NbvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4NbvARB(GLuint index, const GLbyte* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4NivARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4NivARB(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4NsvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4NsvARB(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4NubARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4NubARB(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4NubvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4NubvARB(GLuint index, const GLubyte* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLubyte v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4NubvARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttrib4NuivARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4NuivARB(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint index)
    STACK_FMT_ADD(GLuint v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4NuivARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttrib4NusvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4NusvARB(GLuint index, const GLushort* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint   index)
    STACK_FMT_ADD(GLushort v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4NusvARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttrib4bvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4bvARB(GLuint index, const GLbyte* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint index)
    STACK_FMT_ADD(GLbyte v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4bvARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttrib4dARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4dARB(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint   index)
    STACK_FMT_ADD(GLdouble x)
    STACK_FMT_ADD(GLdouble y)
    STACK_FMT_ADD(GLdouble z)
    STACK_FMT_ADD(GLdouble w)
  STACK_FMT_END()

  esdl_glVertexAttrib4dARB
  ( STACK_GET_DATA(index)
  , STACK_GET_DATA(x)
  , STACK_GET_DATA(y)
  , STACK_GET_DATA(z)
  , STACK_GET_DATA(w)
  );
}

void
egl_vertexAttrib4dvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4dvARB(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint   index)
    STACK_FMT_ADD(GLdouble v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4dvARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttrib4fARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4fARB(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLfloat x)
    STACK_FMT_ADD(GLfloat y)
    STACK_FMT_ADD(GLfloat z)
    STACK_FMT_ADD(GLfloat w)
  STACK_FMT_END()

  esdl_glVertexAttrib4fARB
  ( STACK_GET_DATA(index)
  , STACK_GET_DATA(x)
  , STACK_GET_DATA(y)
  , STACK_GET_DATA(z)
  , STACK_GET_DATA(w)
  );
}

void
egl_vertexAttrib4fvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4fvARB(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLfloat v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4fvARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttrib4ivARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4ivARB(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint index)
    STACK_FMT_ADD(GLint  v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4ivARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttrib4sARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4sARB(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLshort x)
    STACK_FMT_ADD(GLshort y)
    STACK_FMT_ADD(GLshort z)
    STACK_FMT_ADD(GLshort w)
  STACK_FMT_END()

  esdl_glVertexAttrib4sARB
  ( STACK_GET_DATA(index)
  , STACK_GET_DATA(x)
  , STACK_GET_DATA(y)
  , STACK_GET_DATA(z)
  , STACK_GET_DATA(w)
  );
}

void
egl_vertexAttrib4svARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4svARB(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLshort v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4svARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttrib4ubvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4ubvARB(GLuint index, const GLubyte* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLubyte v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4ubvARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttrib4uivARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4uivARB(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint index)
    STACK_FMT_ADD(GLuint v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4uivARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttrib4usvARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4usvARB(GLuint index, const GLushort* v); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint   index)
    STACK_FMT_ADD(GLushort v[])
  STACK_FMT_END()

  esdl_glVertexAttrib4usvARB
  ( STACK_GET_DATA(index)
  , STACK_GET_ADDR(v)
  );
}

void
egl_vertexAttribPointerARB
ESDL_DRIVAPI_3
{
  /* void glVertexAttribPointerARB(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint    index)
    STACK_FMT_ADD(GLint     size)
    STACK_FMT_ADD(GLenum    type)
    STACK_FMT_ADD(GLboolean normalized)
    STACK_FMT_ADD(GLsizei   stride)
    STACK_FMT_ADD(GLvoid*   pointer)
  STACK_FMT_END()

  esdl_glVertexAttribPointerARB
  ( STACK_GET_DATA(index)
  , STACK_GET_DATA(size)
  , STACK_GET_DATA(type)
  , STACK_GET_DATA(normalized)
  , STACK_GET_DATA(stride)
  , (sd->next_bin == 0)
  ? STACK_GET_DATA(pointer)
  : (GLvoid*) sd->bin[0].base
  );
}

void
egl_enableVertexAttribArrayARB
ESDL_DRIVAPI_3
{
  /* void glEnableVertexAttribArrayARB(GLuint index); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint index)
  STACK_FMT_END()

  esdl_glEnableVertexAttribArrayARB
  ( STACK_GET_DATA(index)
  );
}

void
egl_disableVertexAttribArrayARB
ESDL_DRIVAPI_3
{
  /* void glDisableVertexAttribArrayARB(GLuint index); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint index)
  STACK_FMT_END()

  esdl_glDisableVertexAttribArrayARB
  ( STACK_GET_DATA(index)
  );
}

void
egl_programStringARB
ESDL_DRIVAPI_3
{
  /* void glProgramStringARB(GLenum target, GLenum format, GLsizei len, const GLvoid* string); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  target)
    STACK_FMT_ADD(GLenum  format)
    STACK_FMT_ADD(GLsizei len)
    STACK_FMT_ADD(GLvoid* string)
  STACK_FMT_END()

  esdl_glProgramStringARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(format)
  , STACK_GET_DATA(len)
  , (sd->next_bin == 0)
  ? STACK_GET_DATA(string)
  : (GLvoid*) sd->bin[0].base
  );
  
  sdl_free_binaries(sd);
}

void
egl_bindProgramARB
ESDL_DRIVAPI_3
{
  /* void glBindProgramARB(GLenum target, GLuint program); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum target)
    STACK_FMT_ADD(GLuint program)
  STACK_FMT_END()

  esdl_glBindProgramARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(program)
  );
}

void
egl_deleteProgramsARB
ESDL_DRIVAPI_3
{
  /* void glDeleteProgramsARB(GLsizei n, const GLuint* programs); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLsizei n)
    STACK_FMT_ADD(GLuint  programs[])
  STACK_FMT_END()

  esdl_glDeleteProgramsARB
  ( STACK_GET_DATA(n)
  , STACK_GET_ADDR(programs)
  );
}

void
egl_genProgramsARB
ESDL_DRIVAPI_3
{
  /* void glGenProgramsARB(GLsizei n, GLuint* programs); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLsizei n)
/*  STACK_FMT_ADD(GLuint  programs[]) */
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLuint programs[])
  FRAME_FMT_MEM(sizeof(GLuint) * STACK_GET_DATA(n))

    esdl_glGenProgramsARB
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(programs)
    );
  
  THROW_FRAME()
}

void
egl_programEnvParameter4dARB
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParameter4dARB(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum   target)
    STACK_FMT_ADD(GLuint   index)
    STACK_FMT_ADD(GLdouble x)
    STACK_FMT_ADD(GLdouble y)
    STACK_FMT_ADD(GLdouble z)
    STACK_FMT_ADD(GLdouble w)
  STACK_FMT_END()

  esdl_glProgramEnvParameter4dARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(index)
  , STACK_GET_DATA(x)
  , STACK_GET_DATA(y)
  , STACK_GET_DATA(z)
  , STACK_GET_DATA(w)
  );
}

void
egl_programEnvParameter4dvARB
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParameter4dvARB(GLenum target, GLuint index, const GLdouble* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  target)
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLdouble params[4])
  STACK_FMT_END()

  esdl_glProgramEnvParameter4dvARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(index)
  , STACK_GET_ADDR(params)
  );
}

void
egl_programEnvParameter4fARB
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParameter4fARB(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  target)
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLfloat x)
    STACK_FMT_ADD(GLfloat y)
    STACK_FMT_ADD(GLfloat z)
    STACK_FMT_ADD(GLfloat w)
  STACK_FMT_END()

  esdl_glProgramEnvParameter4fARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(index)
  , STACK_GET_DATA(x)
  , STACK_GET_DATA(y)
  , STACK_GET_DATA(z)
  , STACK_GET_DATA(w)
  );
}

void
egl_programEnvParameter4fvARB
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParameter4fvARB(GLenum target, GLuint index, const GLfloat* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  target)
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLfloat params[4])
  STACK_FMT_END()

  esdl_glProgramEnvParameter4fvARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(index)
  , STACK_GET_ADDR(params)
  );
}

void
egl_programLocalParameter4dARB
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParameter4dARB(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum   target)
    STACK_FMT_ADD(GLuint   index)
    STACK_FMT_ADD(GLdouble x)
    STACK_FMT_ADD(GLdouble y)
    STACK_FMT_ADD(GLdouble z)
    STACK_FMT_ADD(GLdouble w)
  STACK_FMT_END()

  esdl_glProgramLocalParameter4dARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(index)
  , STACK_GET_DATA(x)
  , STACK_GET_DATA(y)
  , STACK_GET_DATA(z)
  , STACK_GET_DATA(w)
  );
}

void
egl_programLocalParameter4dvARB
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParameter4dvARB(GLenum target, GLuint index, const GLdouble* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  target)
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLdouble params[4])
  STACK_FMT_END()
  
  esdl_glProgramLocalParameter4dvARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(index)
  , STACK_GET_ADDR(params)
  );
}

void
egl_programLocalParameter4fARB
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParameter4fARB(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  target)
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLfloat x)
    STACK_FMT_ADD(GLfloat y)
    STACK_FMT_ADD(GLfloat z)
    STACK_FMT_ADD(GLfloat w)
  STACK_FMT_END()

  esdl_glProgramLocalParameter4fARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(index)
  , STACK_GET_DATA(x)
  , STACK_GET_DATA(y)
  , STACK_GET_DATA(z)
  , STACK_GET_DATA(w)
  );
}

void
egl_programLocalParameter4fvARB
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParameter4fvARB(GLenum target, GLuint index, const GLfloat* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  target)
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLfloat params[4])
  STACK_FMT_END()
  
  esdl_glProgramLocalParameter4fvARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(index)
  , STACK_GET_ADDR(params)
  );
}

void
egl_getProgramEnvParameterdvARB
ESDL_DRIVAPI_3
{
  /* void glGetProgramEnvParameterdvARB(GLenum target, GLuint index, GLdouble* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum target)
    STACK_FMT_ADD(GLuint index)
  STACK_FMT_END()
  
  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLdouble params[4])
  FRAME_FMT_END()

    esdl_glGetProgramEnvParameterdvARB
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

void
egl_getProgramEnvParameterfvARB
ESDL_DRIVAPI_3
{
  /* void glGetProgramEnvParameterfvARB(GLenum target, GLuint index, GLfloat* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum target)
    STACK_FMT_ADD(GLuint index)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLfloat params[4])
  FRAME_FMT_END()

    esdl_glGetProgramEnvParameterfvARB
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

void
egl_getProgramLocalParameterdvARB
ESDL_DRIVAPI_3
{
  /* void glGetProgramLocalParameterdvARB(GLenum target, GLuint index, GLdouble* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  target)
    STACK_FMT_ADD(GLuint  index)
  STACK_FMT_END()
  
  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLdouble params[4])
  FRAME_FMT_END()

    esdl_glGetProgramLocalParameterdvARB
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

void
egl_getProgramLocalParameterfvARB
ESDL_DRIVAPI_3
{
  /* void glGetProgramLocalParameterfvARB(GLenum target, GLuint index, GLfloat* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum target)
    STACK_FMT_ADD(GLuint index)
  STACK_FMT_END()
  
  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLfloat params[4])
  FRAME_FMT_END()

    esdl_glGetProgramLocalParameterfvARB
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

void
egl_getProgramivARB
ESDL_DRIVAPI_3
{
  /* void glGetProgramivARB(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum target)
    STACK_FMT_ADD(GLenum pname)
    STACK_FMT_ADD(GLint  params[])
  STACK_FMT_END()

  esdl_glGetProgramivARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(pname)
  , STACK_GET_ADDR(params)
  );
}

void
egl_getProgramStringARB
ESDL_DRIVAPI_3
{
  /* void glGetProgramStringARB(GLenum target, GLenum pname, GLvoid* string); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum  target)
    STACK_FMT_ADD(GLenum  pname)
    STACK_FMT_ADD(GLvoid* string)
  STACK_FMT_END()

  esdl_glGetProgramStringARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(pname)
  , (sd->next_bin == 0)
  ? STACK_GET_DATA(string)
  : (GLvoid*) sd->bin[0].base
  );
  
  sdl_free_binaries(sd);
}

void
egl_getVertexAttribdvARB
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribdvARB(GLuint index, GLenum pname, GLdouble* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint   index)
    STACK_FMT_ADD(GLenum   pname)
    STACK_FMT_ADD(GLdouble params[])
  STACK_FMT_END()

  esdl_glGetVertexAttribdvARB
  ( STACK_GET_DATA(index)
  , STACK_GET_DATA(pname)
  , STACK_GET_ADDR(params)
  );
}

void
egl_getVertexAttribfvARB
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribfvARB(GLuint index, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint  index)
    STACK_FMT_ADD(GLenum  pname)
    STACK_FMT_ADD(GLfloat params[])
  STACK_FMT_END()

  esdl_glGetVertexAttribfvARB
  ( STACK_GET_DATA(index)
  , STACK_GET_DATA(pname)
  , STACK_GET_ADDR(params)
  );
}

void
egl_getVertexAttribivARB
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribivARB(GLuint index, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint index)
    STACK_FMT_ADD(GLenum pname)
    STACK_FMT_ADD(GLint  params[])
  STACK_FMT_END()

  esdl_glGetVertexAttribivARB
  ( STACK_GET_DATA(index)
  , STACK_GET_DATA(pname)
  , STACK_GET_ADDR(params)
  );
}

void
egl_getVertexAttribPointervARB
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribPointervARB(GLuint index, GLenum pname, GLvoid** pointer); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint   index)
    STACK_FMT_ADD(GLenum   pname)
    STACK_FMT_ADD(GLvoid** pointer)
  STACK_FMT_END()

  esdl_glGetVertexAttribPointervARB
  ( STACK_GET_DATA(index)
  , STACK_GET_DATA(pname)
  , (sd->next_bin == 0)
  ? STACK_GET_DATA(pointer)
  : (GLvoid*) sd->bin[0].base
  );
}

void
egl_isProgramARB
ESDL_DRIVAPI_3
{
  /* GLboolean glIsProgramARB(GLuint program); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint program)
  STACK_FMT_END()


/* Going from GL_ARB_fragment_program */
/* Going from GL_ARB_vertex_buffer_object */

void
egl_bindBufferARB
ESDL_DRIVAPI_3
{
  /* void glBindBufferARB(GLenum target, GLuint buffer); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum target)
    STACK_FMT_ADD(GLuint buffer)
  STACK_FMT_END()

  esdl_glBindBufferARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(buffer)
  );
}

void
egl_deleteBuffersARB
ESDL_DRIVAPI_3
{
  /* void glDeleteBuffersARB(GLsizei n, const GLuint* buffers); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLsizei n)
    STACK_FMT_ADD(GLuint  buffers[])
  STACK_FMT_END()

  esdl_glDeleteBuffersARB
  ( STACK_GET_DATA(n)
  , STACK_GET_ADDR(buffers)
  );
}

void
egl_genBuffersARB
ESDL_DRIVAPI_3
{
  /* void glGenBuffersARB(GLsizei n, GLuint* buffers); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLsizei n)
    STACK_FMT_ADD(GLuint  buffers[])
  STACK_FMT_END()

  esdl_glGenBuffersARB
  ( STACK_GET_DATA(n)
  , STACK_GET_ADDR(buffers)
  );
}

void
egl_isBufferARB
ESDL_DRIVAPI_3
{
  /* GLboolean glIsBufferARB(GLuint buffer); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLuint buffer)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    esdl_glIsBufferARB
    ( STACK_GET_DATA(buffer)
    );

  THROW_RESULT(GLboolean)
}

void
egl_bufferDataARB
ESDL_DRIVAPI_3
{
  /* void glBufferDataARB(GLenum target, GLsizeiptrARB size, const GLvoid* data, GLenum usage); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum        target)
    STACK_FMT_ADD(GLsizeiptrARB size)
    STACK_FMT_ADD(GLvoid*       data)
    STACK_FMT_ADD(GLenum        usage)
  STACK_FMT_END()

  esdl_glBufferDataARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(size)
  , (sd->next_bin == 0)
  ? STACK_GET_DATA(data)
  : (GLvoid*) sd->bin[0].base
  , STACK_GET_DATA(usage)
  );
}

void
egl_bufferSubDataARB
ESDL_DRIVAPI_3
{
  /* void glBufferSubDataARB(GLenum target, GLintptrARB offset, GLsizeiptrARB size, const GLvoid* data); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum        target)
    STACK_FMT_ADD(GLintptrARB   offset)
    STACK_FMT_ADD(GLsizeiptrARB size)
    STACK_FMT_ADD(GLvoid*       data)
  STACK_FMT_END()

  esdl_glBufferSubDataARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(offset)
  , STACK_GET_DATA(size)
  , (sd->next_bin == 0)
  ? STACK_GET_DATA(data)
  : (GLvoid*) sd->bin[0].base
  );
}

void
egl_getBufferSubDataARB
ESDL_DRIVAPI_3
{
  /* void glGetBufferSubDataARB(GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid* data); */

  STACK_FMT_BEGIN()
    STACK_FMT_ADD(GLenum        target)
    STACK_FMT_ADD(GLintptrARB   offset)
    STACK_FMT_ADD(GLsizeiptrARB size)
    STACK_FMT_ADD(GLvoid*       data)
  STACK_FMT_END()

  esdl_glGetBufferSubDataARB
  ( STACK_GET_DATA(target)
  , STACK_GET_DATA(offset)
  , STACK_GET_DATA(size)
  , (sd->next_bin == 0)
  ? STACK_GET_DATA(data)
  : (GLvoid*) sd->bin[0].base
  );
}

void
egl_mapBufferARB
ESDL_DRIVAPI_3
{
  /* GLvoid* glMapBufferARB(GLenum target, GLenum access); */

  STACK_FMT_BEGIN()

void
egl_unmapBufferARB
ESDL_DRIVAPI_3
{
  /* GLboolean glUnmapBufferARB(GLenum target); */

  STACK_FMT_BEGIN()

void
egl_getBufferParameterivARB
ESDL_DRIVAPI_3
{
  /* void glGetBufferParameterivARB(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getBufferPointervARB
ESDL_DRIVAPI_3
{
  /* void glGetBufferPointervARB(GLenum target, GLenum pname, GLvoid** params); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_occlusion_query */

void
egl_genQueriesARB
ESDL_DRIVAPI_3
{
  /* void glGenQueriesARB(GLsizei n, GLuint* ids); */

  STACK_FMT_BEGIN()

void
egl_deleteQueriesARB
ESDL_DRIVAPI_3
{
  /* void glDeleteQueriesARB(GLsizei n, const GLuint* ids); */

  STACK_FMT_BEGIN()

void
egl_isQueryARB
ESDL_DRIVAPI_3
{
  /* GLboolean glIsQueryARB(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_beginQueryARB
ESDL_DRIVAPI_3
{
  /* void glBeginQueryARB(GLenum target, GLuint id); */

  STACK_FMT_BEGIN()

void
egl_endQueryARB
ESDL_DRIVAPI_3
{
  /* void glEndQueryARB(GLenum target); */

  STACK_FMT_BEGIN()

void
egl_getQueryivARB
ESDL_DRIVAPI_3
{
  /* void glGetQueryivARB(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getQueryObjectivARB
ESDL_DRIVAPI_3
{
  /* void glGetQueryObjectivARB(GLuint id, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getQueryObjectuivARB
ESDL_DRIVAPI_3
{
  /* void glGetQueryObjectuivARB(GLuint id, GLenum pname, GLuint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_shader_objects */

void
egl_deleteObjectARB
ESDL_DRIVAPI_3
{
  /* void glDeleteObjectARB(GLhandleARB obj); */

  STACK_FMT_BEGIN()

void
egl_getHandleARB
ESDL_DRIVAPI_3
{
  /* GLhandleARB glGetHandleARB(GLenum pname); */

  STACK_FMT_BEGIN()

void
egl_detachObjectARB
ESDL_DRIVAPI_3
{
  /* void glDetachObjectARB(GLhandleARB containerObj, GLhandleARB attachedObj); */

  STACK_FMT_BEGIN()

void
egl_createShaderObjectARB
ESDL_DRIVAPI_3
{
  /* GLhandleARB glCreateShaderObjectARB(GLenum shaderType); */

  STACK_FMT_BEGIN()

void
egl_shaderSourceARB
ESDL_DRIVAPI_3
{
  /* void glShaderSourceARB(GLhandleARB shaderObj, GLsizei count, const GLcharARB** string, const GLint* length); */

  STACK_FMT_BEGIN()

void
egl_compileShaderARB
ESDL_DRIVAPI_3
{
  /* void glCompileShaderARB(GLhandleARB shaderObj); */

  STACK_FMT_BEGIN()

void
egl_createProgramObjectARB
ESDL_DRIVAPI_3
{
  /* GLhandleARB glCreateProgramObjectARB(void); */

  STACK_FMT_BEGIN()

void
egl_attachObjectARB
ESDL_DRIVAPI_3
{
  /* void glAttachObjectARB(GLhandleARB containerObj, GLhandleARB obj); */

  STACK_FMT_BEGIN()

void
egl_linkProgramARB
ESDL_DRIVAPI_3
{
  /* void glLinkProgramARB(GLhandleARB programObj); */

  STACK_FMT_BEGIN()

void
egl_useProgramObjectARB
ESDL_DRIVAPI_3
{
  /* void glUseProgramObjectARB(GLhandleARB programObj); */

  STACK_FMT_BEGIN()

void
egl_validateProgramARB
ESDL_DRIVAPI_3
{
  /* void glValidateProgramARB(GLhandleARB programObj); */

  STACK_FMT_BEGIN()

void
egl_uniform1fARB
ESDL_DRIVAPI_3
{
  /* void glUniform1fARB(GLint location, GLfloat v0); */

  STACK_FMT_BEGIN()

void
egl_uniform2fARB
ESDL_DRIVAPI_3
{
  /* void glUniform2fARB(GLint location, GLfloat v0, GLfloat v1); */

  STACK_FMT_BEGIN()

void
egl_uniform3fARB
ESDL_DRIVAPI_3
{
  /* void glUniform3fARB(GLint location, GLfloat v0, GLfloat v1, GLfloat v2); */

  STACK_FMT_BEGIN()

void
egl_uniform4fARB
ESDL_DRIVAPI_3
{
  /* void glUniform4fARB(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3); */

  STACK_FMT_BEGIN()

void
egl_uniform1iARB
ESDL_DRIVAPI_3
{
  /* void glUniform1iARB(GLint location, GLint v0); */

  STACK_FMT_BEGIN()

void
egl_uniform2iARB
ESDL_DRIVAPI_3
{
  /* void glUniform2iARB(GLint location, GLint v0, GLint v1); */

  STACK_FMT_BEGIN()

void
egl_uniform3iARB
ESDL_DRIVAPI_3
{
  /* void glUniform3iARB(GLint location, GLint v0, GLint v1, GLint v2); */

  STACK_FMT_BEGIN()

void
egl_uniform4iARB
ESDL_DRIVAPI_3
{
  /* void glUniform4iARB(GLint location, GLint v0, GLint v1, GLint v2, GLint v3); */

  STACK_FMT_BEGIN()

void
egl_uniform1fvARB
ESDL_DRIVAPI_3
{
  /* void glUniform1fvARB(GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniform2fvARB
ESDL_DRIVAPI_3
{
  /* void glUniform2fvARB(GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniform3fvARB
ESDL_DRIVAPI_3
{
  /* void glUniform3fvARB(GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniform4fvARB
ESDL_DRIVAPI_3
{
  /* void glUniform4fvARB(GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniform1ivARB
ESDL_DRIVAPI_3
{
  /* void glUniform1ivARB(GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform2ivARB
ESDL_DRIVAPI_3
{
  /* void glUniform2ivARB(GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform3ivARB
ESDL_DRIVAPI_3
{
  /* void glUniform3ivARB(GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform4ivARB
ESDL_DRIVAPI_3
{
  /* void glUniform4ivARB(GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix2fvARB
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix2fvARB(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix3fvARB
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix3fvARB(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_uniformMatrix4fvARB
ESDL_DRIVAPI_3
{
  /* void glUniformMatrix4fvARB(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_getObjectParameterfvARB
ESDL_DRIVAPI_3
{
  /* void glGetObjectParameterfvARB(GLhandleARB obj, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getObjectParameterivARB
ESDL_DRIVAPI_3
{
  /* void glGetObjectParameterivARB(GLhandleARB obj, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getInfoLogARB
ESDL_DRIVAPI_3
{
  /* void glGetInfoLogARB(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* infoLog); */

  STACK_FMT_BEGIN()

void
egl_getAttachedObjectsARB
ESDL_DRIVAPI_3
{
  /* void glGetAttachedObjectsARB(GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB* obj); */

  STACK_FMT_BEGIN()

void
egl_getUniformLocationARB
ESDL_DRIVAPI_3
{
  /* GLint glGetUniformLocationARB(GLhandleARB programObj, const GLcharARB* name); */

  STACK_FMT_BEGIN()

void
egl_getActiveUniformARB
ESDL_DRIVAPI_3
{
  /* void glGetActiveUniformARB(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name); */

  STACK_FMT_BEGIN()

void
egl_getUniformfvARB
ESDL_DRIVAPI_3
{
  /* void glGetUniformfvARB(GLhandleARB programObj, GLint location, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getUniformivARB
ESDL_DRIVAPI_3
{
  /* void glGetUniformivARB(GLhandleARB programObj, GLint location, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getShaderSourceARB
ESDL_DRIVAPI_3
{
  /* void glGetShaderSourceARB(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* source); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_vertex_shader */

void
egl_bindAttribLocationARB
ESDL_DRIVAPI_3
{
  /* void glBindAttribLocationARB(GLhandleARB programObj, GLuint index, const GLcharARB* name); */

  STACK_FMT_BEGIN()

void
egl_getActiveAttribARB
ESDL_DRIVAPI_3
{
  /* void glGetActiveAttribARB(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name); */

  STACK_FMT_BEGIN()

void
egl_getAttribLocationARB
ESDL_DRIVAPI_3
{
  /* GLint glGetAttribLocationARB(GLhandleARB programObj, const GLcharARB* name); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_fragment_shader */
/* Going from GL_ARB_shading_language_100 */
/* Going from GL_ARB_texture_non_power_of_two */
/* Going from GL_ARB_point_sprite */
/* Going from GL_ARB_fragment_program_shadow */
/* Going from GL_ARB_draw_buffers */

void
egl_drawBuffersARB
ESDL_DRIVAPI_3
{
  /* void glDrawBuffersARB(GLsizei n, const GLenum* bufs); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_texture_rectangle */
/* Going from GL_ARB_color_buffer_float */

void
egl_clampColorARB
ESDL_DRIVAPI_3
{
  /* void glClampColorARB(GLenum target, GLenum clamp); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_half_float_pixel */
/* Going from GL_ARB_texture_float */
/* Going from GL_ARB_pixel_buffer_object */
/* Going from GL_ARB_depth_buffer_float */
/* Going from GL_ARB_draw_instanced */

void
egl_drawArraysInstancedARB
ESDL_DRIVAPI_3
{
  /* void glDrawArraysInstancedARB(GLenum mode, GLint first, GLsizei count, GLsizei primcount); */

  STACK_FMT_BEGIN()

void
egl_drawElementsInstancedARB
ESDL_DRIVAPI_3
{
  /* void glDrawElementsInstancedARB(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei primcount); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_framebuffer_object */

void
egl_isRenderbuffer
ESDL_DRIVAPI_3
{
  /* GLboolean glIsRenderbuffer(GLuint renderbuffer); */

  STACK_FMT_BEGIN()

void
egl_bindRenderbuffer
ESDL_DRIVAPI_3
{
  /* void glBindRenderbuffer(GLenum target, GLuint renderbuffer); */

  STACK_FMT_BEGIN()

void
egl_deleteRenderbuffers
ESDL_DRIVAPI_3
{
  /* void glDeleteRenderbuffers(GLsizei n, const GLuint* renderbuffers); */

  STACK_FMT_BEGIN()

void
egl_genRenderbuffers
ESDL_DRIVAPI_3
{
  /* void glGenRenderbuffers(GLsizei n, GLuint* renderbuffers); */

  STACK_FMT_BEGIN()

void
egl_renderbufferStorage
ESDL_DRIVAPI_3
{
  /* void glRenderbufferStorage(GLenum target, GLenum internalformat, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_getRenderbufferParameteriv
ESDL_DRIVAPI_3
{
  /* void glGetRenderbufferParameteriv(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_isFramebuffer
ESDL_DRIVAPI_3
{
  /* GLboolean glIsFramebuffer(GLuint framebuffer); */

  STACK_FMT_BEGIN()



void
egl_bindFramebuffer
ESDL_DRIVAPI_3
{
  /* void glBindFramebuffer(GLenum target, GLuint framebuffer); */

  STACK_FMT_BEGIN()

void
egl_deleteFramebuffers
ESDL_DRIVAPI_3
{
  /* void glDeleteFramebuffers(GLsizei n, const GLuint* framebuffers); */

  STACK_FMT_BEGIN()

void
egl_genFramebuffers
ESDL_DRIVAPI_3
{
  /* void glGenFramebuffers(GLsizei n, GLuint* framebuffers); */

  STACK_FMT_BEGIN()

void
egl_checkFramebufferStatus
ESDL_DRIVAPI_3
{
  /* GLenum glCheckFramebufferStatus(GLenum target); */

  STACK_FMT_BEGIN()

void
egl_framebufferTexture1D
ESDL_DRIVAPI_3
{
  /* void glFramebufferTexture1D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level); */

  STACK_FMT_BEGIN()

void
egl_framebufferTexture2D
ESDL_DRIVAPI_3
{
  /* void glFramebufferTexture2D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level); */

  STACK_FMT_BEGIN()

void
egl_framebufferTexture3D
ESDL_DRIVAPI_3
{
  /* void glFramebufferTexture3D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset); */

  STACK_FMT_BEGIN()

void
egl_framebufferRenderbuffer
ESDL_DRIVAPI_3
{
  /* void glFramebufferRenderbuffer(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer); */

  STACK_FMT_BEGIN()

void
egl_getFramebufferAttachmentParameteriv
ESDL_DRIVAPI_3
{
  /* void glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_generateMipmap
ESDL_DRIVAPI_3
{
  /* void glGenerateMipmap(GLenum target); */

  STACK_FMT_BEGIN()

void
egl_blitFramebuffer
ESDL_DRIVAPI_3
{
  /* void glBlitFramebuffer(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter); */

  STACK_FMT_BEGIN()

void
egl_renderbufferStorageMultisample
ESDL_DRIVAPI_3
{
  /* void glRenderbufferStorageMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_framebufferTextureLayer
ESDL_DRIVAPI_3
{
  /* void glFramebufferTextureLayer(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_framebuffer_sRGB */
/* Going from GL_ARB_geometry_shader4 */

void
egl_programParameteriARB
ESDL_DRIVAPI_3
{
  /* void glProgramParameteriARB(GLuint program, GLenum pname, GLint value); */

  STACK_FMT_BEGIN()

void
egl_framebufferTextureARB
ESDL_DRIVAPI_3
{
  /* void glFramebufferTextureARB(GLenum target, GLenum attachment, GLuint texture, GLint level); */

  STACK_FMT_BEGIN()

void
egl_framebufferTextureLayerARB
ESDL_DRIVAPI_3
{
  /* void glFramebufferTextureLayerARB(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer); */

  STACK_FMT_BEGIN()

void
egl_framebufferTextureFaceARB
ESDL_DRIVAPI_3
{
  /* void glFramebufferTextureFaceARB(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_half_float_vertex */
/* Going from GL_ARB_instanced_arrays */

void
egl_vertexAttribDivisor
ESDL_DRIVAPI_3
{
  /* void glVertexAttribDivisor(GLuint index, GLuint divisor); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_map_buffer_range */

void
egl_mapBufferRange
ESDL_DRIVAPI_3
{
  /* GLvoid* glMapBufferRange(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access); */

  STACK_FMT_BEGIN()

void
egl_flushMappedBufferRange
ESDL_DRIVAPI_3
{
  /* void glFlushMappedBufferRange(GLenum target, GLintptr offset, GLsizeiptr length); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_texture_buffer_object */

void
egl_texBufferARB
ESDL_DRIVAPI_3
{
  /* void glTexBufferARB(GLenum target, GLenum internalformat, GLuint buffer); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_texture_compression_rgtc */
/* Going from GL_ARB_texture_rg */
/* Going from GL_ARB_vertex_array_object */

void
egl_bindVertexArray
ESDL_DRIVAPI_3
{
  /* void glBindVertexArray(GLuint array); */

  STACK_FMT_BEGIN()

void
egl_deleteVertexArrays
ESDL_DRIVAPI_3
{
  /* void glDeleteVertexArrays(GLsizei n, const GLuint* arrays); */

  STACK_FMT_BEGIN()

void
egl_genVertexArrays
ESDL_DRIVAPI_3
{
  /* void glGenVertexArrays(GLsizei n, GLuint* arrays); */

  STACK_FMT_BEGIN()

void
egl_isVertexArray
ESDL_DRIVAPI_3
{
  /* GLboolean glIsVertexArray(GLuint array); */

  STACK_FMT_BEGIN()


/* Going from GL_ARB_uniform_buffer_object */

void
egl_getUniformIndices
ESDL_DRIVAPI_3
{
  /* void glGetUniformIndices(GLuint program, GLsizei uniformCount, const GLchar** uniformNames, GLuint* uniformIndices); */

  STACK_FMT_BEGIN()

void
egl_getActiveUniformsiv
ESDL_DRIVAPI_3
{
  /* void glGetActiveUniformsiv(GLuint program, GLsizei uniformCount, const GLuint* uniformIndices, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getActiveUniformName
ESDL_DRIVAPI_3
{
  /* void glGetActiveUniformName(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName); */

  STACK_FMT_BEGIN()

void
egl_getUniformBlockIndex
ESDL_DRIVAPI_3
{
  /* GLuint glGetUniformBlockIndex(GLuint program, const GLchar* uniformBlockName); */

  STACK_FMT_BEGIN()

void
egl_getActiveUniformBlockiv
ESDL_DRIVAPI_3
{
  /* void glGetActiveUniformBlockiv(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getActiveUniformBlockName
ESDL_DRIVAPI_3
{
  /* void glGetActiveUniformBlockName(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName); */

  STACK_FMT_BEGIN()

void
egl_uniformBlockBinding
ESDL_DRIVAPI_3
{
  /* void glUniformBlockBinding(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding); */

  STACK_FMT_BEGIN()

/* Going from GL_ARB_compatibility */
/* Going from GL_ARB_copy_buffer */

void
egl_copyBufferSubData
ESDL_DRIVAPI_3
{
  /* void glCopyBufferSubData(GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_abgr */
/* Going from GL_EXT_blend_color */

void
egl_blendColorEXT
ESDL_DRIVAPI_3
{
  /* void glBlendColorEXT(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_polygon_offset */

void
egl_polygonOffsetEXT
ESDL_DRIVAPI_3
{
  /* void glPolygonOffsetEXT(GLfloat factor, GLfloat bias); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_texture */
/* Going from GL_EXT_texture3D */

void
egl_texImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glTexImage3DEXT(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_texSubImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIS_texture_filter4 */

void
egl_getTexFilterFuncSGIS
ESDL_DRIVAPI_3
{
  /* void glGetTexFilterFuncSGIS(GLenum target, GLenum filter, GLfloat* weights); */

  STACK_FMT_BEGIN()

void
egl_texFilterFuncSGIS
ESDL_DRIVAPI_3
{
  /* void glTexFilterFuncSGIS(GLenum target, GLenum filter, GLsizei n, const GLfloat* weights); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_subtexture */

void
egl_texSubImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_texSubImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_copy_texture */

void
egl_copyTexImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyTexImage1DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border); */

  STACK_FMT_BEGIN()

void
egl_copyTexImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyTexImage2DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border); */

  STACK_FMT_BEGIN()

void
egl_copyTexSubImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width); */

  STACK_FMT_BEGIN()

void
egl_copyTexSubImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_copyTexSubImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_histogram */

void
egl_getHistogramEXT
ESDL_DRIVAPI_3
{
  /* void glGetHistogramEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values); */

  STACK_FMT_BEGIN()

void
egl_getHistogramParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetHistogramParameterfvEXT(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getHistogramParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetHistogramParameterivEXT(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getMinmaxEXT
ESDL_DRIVAPI_3
{
  /* void glGetMinmaxEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values); */

  STACK_FMT_BEGIN()

void
egl_getMinmaxParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetMinmaxParameterfvEXT(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getMinmaxParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetMinmaxParameterivEXT(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_histogramEXT
ESDL_DRIVAPI_3
{
  /* void glHistogramEXT(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink); */

  STACK_FMT_BEGIN()

void
egl_minmaxEXT
ESDL_DRIVAPI_3
{
  /* void glMinmaxEXT(GLenum target, GLenum internalformat, GLboolean sink); */

  STACK_FMT_BEGIN()

void
egl_resetHistogramEXT
ESDL_DRIVAPI_3
{
  /* void glResetHistogramEXT(GLenum target); */

  STACK_FMT_BEGIN()

void
egl_resetMinmaxEXT
ESDL_DRIVAPI_3
{
  /* void glResetMinmaxEXT(GLenum target); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_convolution */

void
egl_convolutionFilter1DEXT
ESDL_DRIVAPI_3
{
  /* void glConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* image); */

  STACK_FMT_BEGIN()

void
egl_convolutionFilter2DEXT
ESDL_DRIVAPI_3
{
  /* void glConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* image); */

  STACK_FMT_BEGIN()

void
egl_convolutionParameterfEXT
ESDL_DRIVAPI_3
{
  /* void glConvolutionParameterfEXT(GLenum target, GLenum pname, GLfloat params); */

  STACK_FMT_BEGIN()

void
egl_convolutionParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glConvolutionParameterfvEXT(GLenum target, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_convolutionParameteriEXT
ESDL_DRIVAPI_3
{
  /* void glConvolutionParameteriEXT(GLenum target, GLenum pname, GLint params); */

  STACK_FMT_BEGIN()

void
egl_convolutionParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glConvolutionParameterivEXT(GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_copyConvolutionFilter1DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width); */

  STACK_FMT_BEGIN()

void
egl_copyConvolutionFilter2DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_getConvolutionFilterEXT
ESDL_DRIVAPI_3
{
  /* void glGetConvolutionFilterEXT(GLenum target, GLenum format, GLenum type, GLvoid* image); */

  STACK_FMT_BEGIN()

void
egl_getConvolutionParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetConvolutionParameterfvEXT(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getConvolutionParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetConvolutionParameterivEXT(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getSeparableFilterEXT
ESDL_DRIVAPI_3
{
  /* void glGetSeparableFilterEXT(GLenum target, GLenum format, GLenum type, GLvoid* row, GLvoid* column, GLvoid* span); */

  STACK_FMT_BEGIN()

void
egl_separableFilter2DEXT
ESDL_DRIVAPI_3
{
  /* void glSeparableFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* row, const GLvoid* column); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_color_matrix */
/* Going from GL_SGI_color_matrix */
/* Going from GL_SGI_color_table */

void
egl_colorTableSGI
ESDL_DRIVAPI_3
{
  /* void glColorTableSGI(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* table); */

  STACK_FMT_BEGIN()

void
egl_colorTableParameterfvSGI
ESDL_DRIVAPI_3
{
  /* void glColorTableParameterfvSGI(GLenum target, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_colorTableParameterivSGI
ESDL_DRIVAPI_3
{
  /* void glColorTableParameterivSGI(GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_copyColorTableSGI
ESDL_DRIVAPI_3
{
  /* void glCopyColorTableSGI(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width); */

  STACK_FMT_BEGIN()

void
egl_getColorTableSGI
ESDL_DRIVAPI_3
{
  /* void glGetColorTableSGI(GLenum target, GLenum format, GLenum type, GLvoid* table); */

  STACK_FMT_BEGIN()

void
egl_getColorTableParameterfvSGI
ESDL_DRIVAPI_3
{
  /* void glGetColorTableParameterfvSGI(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getColorTableParameterivSGI
ESDL_DRIVAPI_3
{
  /* void glGetColorTableParameterivSGI(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_pixel_texture */

void
egl_pixelTexGenSGIX
ESDL_DRIVAPI_3
{
  /* void glPixelTexGenSGIX(GLenum mode); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIS_pixel_texture */

void
egl_pixelTexGenParameteriSGIS
ESDL_DRIVAPI_3
{
  /* void glPixelTexGenParameteriSGIS(GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_pixelTexGenParameterivSGIS
ESDL_DRIVAPI_3
{
  /* void glPixelTexGenParameterivSGIS(GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_pixelTexGenParameterfSGIS
ESDL_DRIVAPI_3
{
  /* void glPixelTexGenParameterfSGIS(GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_pixelTexGenParameterfvSGIS
ESDL_DRIVAPI_3
{
  /* void glPixelTexGenParameterfvSGIS(GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getPixelTexGenParameterivSGIS
ESDL_DRIVAPI_3
{
  /* void glGetPixelTexGenParameterivSGIS(GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getPixelTexGenParameterfvSGIS
ESDL_DRIVAPI_3
{
  /* void glGetPixelTexGenParameterfvSGIS(GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIS_texture4D */

void
egl_texImage4DSGIS
ESDL_DRIVAPI_3
{
  /* void glTexImage4DSGIS(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_texSubImage4DSGIS
ESDL_DRIVAPI_3
{
  /* void glTexSubImage4DSGIS(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()


/* Going from GL_SGI_texture_color_table */
/* Going from GL_EXT_cmyka */
/* Going from GL_EXT_texture_object */

void
egl_areTexturesResidentEXT
ESDL_DRIVAPI_3
{
  /* GLboolean glAreTexturesResidentEXT(GLsizei n, const GLuint* textures, GLboolean* residences); */

  STACK_FMT_BEGIN()

void
egl_bindTextureEXT
ESDL_DRIVAPI_3
{
  /* void glBindTextureEXT(GLenum target, GLuint texture); */

  STACK_FMT_BEGIN()

void
egl_deleteTexturesEXT
ESDL_DRIVAPI_3
{
  /* void glDeleteTexturesEXT(GLsizei n, const GLuint* textures); */

  STACK_FMT_BEGIN()

void
egl_genTexturesEXT
ESDL_DRIVAPI_3
{
  /* void glGenTexturesEXT(GLsizei n, GLuint* textures); */

  STACK_FMT_BEGIN()

void
egl_isTextureEXT
ESDL_DRIVAPI_3
{
  /* GLboolean glIsTextureEXT(GLuint texture); */

  STACK_FMT_BEGIN()

void
egl_prioritizeTexturesEXT
ESDL_DRIVAPI_3
{
  /* void glPrioritizeTexturesEXT(GLsizei n, const GLuint* textures, const GLclampf* priorities); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIS_detail_texture */

void
egl_detailTexFuncSGIS
ESDL_DRIVAPI_3
{
  /* void glDetailTexFuncSGIS(GLenum target, GLsizei n, const GLfloat* points); */

  STACK_FMT_BEGIN()

void
egl_getDetailTexFuncSGIS
ESDL_DRIVAPI_3
{
  /* void glGetDetailTexFuncSGIS(GLenum target, GLfloat* points); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIS_sharpen_texture */

void
egl_sharpenTexFuncSGIS
ESDL_DRIVAPI_3
{
  /* void glSharpenTexFuncSGIS(GLenum target, GLsizei n, const GLfloat* points); */

  STACK_FMT_BEGIN()

void
egl_getSharpenTexFuncSGIS
ESDL_DRIVAPI_3
{
  /* void glGetSharpenTexFuncSGIS(GLenum target, GLfloat* points); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_packed_pixels */
/* Going from GL_SGIS_texture_lod */
/* Going from GL_SGIS_multisample */

void
egl_sampleMaskSGIS
ESDL_DRIVAPI_3
{
  /* void glSampleMaskSGIS(GLclampf value, GLboolean invert); */

  STACK_FMT_BEGIN()

void
egl_samplePatternSGIS
ESDL_DRIVAPI_3
{
  /* void glSamplePatternSGIS(GLenum pattern); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_rescale_normal */
/* Going from GL_EXT_vertex_array */

void
egl_arrayElementEXT
ESDL_DRIVAPI_3
{
  /* void glArrayElementEXT(GLint i); */

  STACK_FMT_BEGIN()

void
egl_colorPointerEXT
ESDL_DRIVAPI_3
{
  /* void glColorPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_drawArraysEXT
ESDL_DRIVAPI_3
{
  /* void glDrawArraysEXT(GLenum mode, GLint first, GLsizei count); */

  STACK_FMT_BEGIN()

void
egl_edgeFlagPointerEXT
ESDL_DRIVAPI_3
{
  /* void glEdgeFlagPointerEXT(GLsizei stride, GLsizei count, const GLboolean* pointer); */

  STACK_FMT_BEGIN()

void
egl_getPointervEXT
ESDL_DRIVAPI_3
{
  /* void glGetPointervEXT(GLenum pname, GLvoid** params); */

  STACK_FMT_BEGIN()


void
egl_indexPointerEXT
ESDL_DRIVAPI_3
{
  /* void glIndexPointerEXT(GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_normalPointerEXT
ESDL_DRIVAPI_3
{
  /* void glNormalPointerEXT(GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_texCoordPointerEXT
ESDL_DRIVAPI_3
{
  /* void glTexCoordPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_vertexPointerEXT
ESDL_DRIVAPI_3
{
  /* void glVertexPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_misc_attribute */
/* Going from GL_SGIS_generate_mipmap */
/* Going from GL_SGIX_clipmap */
/* Going from GL_SGIX_shadow */
/* Going from GL_SGIS_texture_edge_clamp */
/* Going from GL_SGIS_texture_border_clamp */
/* Going from GL_EXT_blend_minmax */

void
egl_blendEquationEXT
ESDL_DRIVAPI_3
{
  /* void glBlendEquationEXT(GLenum mode); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_blend_subtract */
/* Going from GL_EXT_blend_logic_op */
/* Going from GL_SGIX_interlace */
/* Going from GL_SGIX_pixel_tiles */
/* Going from GL_SGIX_texture_select */
/* Going from GL_SGIX_sprite */

void
egl_spriteParameterfSGIX
ESDL_DRIVAPI_3
{
  /* void glSpriteParameterfSGIX(GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_spriteParameterfvSGIX
ESDL_DRIVAPI_3
{
  /* void glSpriteParameterfvSGIX(GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_spriteParameteriSGIX
ESDL_DRIVAPI_3
{
  /* void glSpriteParameteriSGIX(GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_spriteParameterivSGIX
ESDL_DRIVAPI_3
{
  /* void glSpriteParameterivSGIX(GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_texture_multi_buffer */
/* Going from GL_EXT_point_parameters */

void
egl_pointParameterfEXT
ESDL_DRIVAPI_3
{
  /* void glPointParameterfEXT(GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_pointParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glPointParameterfvEXT(GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIS_point_parameters */

void
egl_pointParameterfSGIS
ESDL_DRIVAPI_3
{
  /* void glPointParameterfSGIS(GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_pointParameterfvSGIS
ESDL_DRIVAPI_3
{
  /* void glPointParameterfvSGIS(GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_instruments */

void
egl_getInstrumentsSGIX
ESDL_DRIVAPI_3
{
  /* GLint glGetInstrumentsSGIX(void); */

  STACK_FMT_BEGIN()

void
egl_instrumentsBufferSGIX
ESDL_DRIVAPI_3
{
  /* void glInstrumentsBufferSGIX(GLsizei size, GLint* buffer); */

  STACK_FMT_BEGIN()

void
egl_pollInstrumentsSGIX
ESDL_DRIVAPI_3
{
  /* GLint glPollInstrumentsSGIX(GLint* marker_p); */

  STACK_FMT_BEGIN()

void
egl_readInstrumentsSGIX
ESDL_DRIVAPI_3
{
  /* void glReadInstrumentsSGIX(GLint marker); */

  STACK_FMT_BEGIN()

void
egl_startInstrumentsSGIX
ESDL_DRIVAPI_3
{
  /* void glStartInstrumentsSGIX(void); */

  STACK_FMT_BEGIN()

void
egl_stopInstrumentsSGIX
ESDL_DRIVAPI_3
{
  /* void glStopInstrumentsSGIX(GLint marker); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_texture_scale_bias */
/* Going from GL_SGIX_framezoom */

void
egl_frameZoomSGIX
ESDL_DRIVAPI_3
{
  /* void glFrameZoomSGIX(GLint factor); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_tag_sample_buffer */

void
egl_tagSampleBufferSGIX
ESDL_DRIVAPI_3
{
  /* void glTagSampleBufferSGIX(void); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_polynomial_ffd */

void
egl_deformationMap3dSGIX
ESDL_DRIVAPI_3
{
  /* void glDeformationMap3dSGIX(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const GLdouble* points); */

  STACK_FMT_BEGIN()

void
egl_deformationMap3fSGIX
ESDL_DRIVAPI_3
{
  /* void glDeformationMap3fSGIX(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const GLfloat* points); */

  STACK_FMT_BEGIN()

void
egl_deformSGIX
ESDL_DRIVAPI_3
{
  /* void glDeformSGIX(GLbitfield mask); */

  STACK_FMT_BEGIN()

void
egl_loadIdentityDeformationMapSGIX
ESDL_DRIVAPI_3
{
  /* void glLoadIdentityDeformationMapSGIX(GLbitfield mask); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_reference_plane */

void
egl_referencePlaneSGIX
ESDL_DRIVAPI_3
{
  /* void glReferencePlaneSGIX(const GLdouble* equation); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_flush_raster */

void
egl_flushRasterSGIX
ESDL_DRIVAPI_3
{
  /* void glFlushRasterSGIX(void); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_depth_texture */
/* Going from GL_SGIS_fog_function */

void
egl_fogFuncSGIS
ESDL_DRIVAPI_3
{
  /* void glFogFuncSGIS(GLsizei n, const GLfloat* points); */

  STACK_FMT_BEGIN()

void
egl_getFogFuncSGIS
ESDL_DRIVAPI_3
{
  /* void glGetFogFuncSGIS(GLfloat* points); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_fog_offset */
/* Going from GL_HP_image_transform */

void
egl_imageTransformParameteriHP
ESDL_DRIVAPI_3
{
  /* void glImageTransformParameteriHP(GLenum target, GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_imageTransformParameterfHP
ESDL_DRIVAPI_3
{
  /* void glImageTransformParameterfHP(GLenum target, GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_imageTransformParameterivHP
ESDL_DRIVAPI_3
{
  /* void glImageTransformParameterivHP(GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_imageTransformParameterfvHP
ESDL_DRIVAPI_3
{
  /* void glImageTransformParameterfvHP(GLenum target, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getImageTransformParameterivHP
ESDL_DRIVAPI_3
{
  /* void glGetImageTransformParameterivHP(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getImageTransformParameterfvHP
ESDL_DRIVAPI_3
{
  /* void glGetImageTransformParameterfvHP(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()


/* Going from GL_HP_convolution_border_modes */
/* Going from GL_SGIX_texture_add_env */
/* Going from GL_EXT_color_subtable */

void
egl_colorSubTableEXT
ESDL_DRIVAPI_3
{
  /* void glColorSubTableEXT(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_copyColorSubTableEXT
ESDL_DRIVAPI_3
{
  /* void glCopyColorSubTableEXT(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width); */

  STACK_FMT_BEGIN()


/* Going from GL_PGI_vertex_hints */
/* Going from GL_PGI_misc_hints */

void
egl_hintPGI
ESDL_DRIVAPI_3
{
  /* void glHintPGI(GLenum target, GLint mode); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_paletted_texture */

void
egl_colorTableEXT
ESDL_DRIVAPI_3
{
  /* void glColorTableEXT(GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const GLvoid* table); */

  STACK_FMT_BEGIN()

void
egl_getColorTableEXT
ESDL_DRIVAPI_3
{
  /* void glGetColorTableEXT(GLenum target, GLenum format, GLenum type, GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_getColorTableParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetColorTableParameterivEXT(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getColorTableParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetColorTableParameterfvEXT(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_clip_volume_hint */
/* Going from GL_SGIX_list_priority */

void
egl_getListParameterfvSGIX
ESDL_DRIVAPI_3
{
  /* void glGetListParameterfvSGIX(GLuint list, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getListParameterivSGIX
ESDL_DRIVAPI_3
{
  /* void glGetListParameterivSGIX(GLuint list, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_listParameterfSGIX
ESDL_DRIVAPI_3
{
  /* void glListParameterfSGIX(GLuint list, GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_listParameterfvSGIX
ESDL_DRIVAPI_3
{
  /* void glListParameterfvSGIX(GLuint list, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_listParameteriSGIX
ESDL_DRIVAPI_3
{
  /* void glListParameteriSGIX(GLuint list, GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_listParameterivSGIX
ESDL_DRIVAPI_3
{
  /* void glListParameterivSGIX(GLuint list, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_ir_instrument1 */
/* Going from GL_SGIX_calligraphic_fragment */
/* Going from GL_SGIX_texture_lod_bias */
/* Going from GL_SGIX_shadow_ambient */
/* Going from GL_EXT_index_texture */
/* Going from GL_EXT_index_material */

void
egl_indexMaterialEXT
ESDL_DRIVAPI_3
{
  /* void glIndexMaterialEXT(GLenum face, GLenum mode); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_index_func */

void
egl_indexFuncEXT
ESDL_DRIVAPI_3
{
  /* void glIndexFuncEXT(GLenum func, GLclampf ref); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_index_array_formats */
/* Going from GL_EXT_compiled_vertex_array */

void
egl_lockArraysEXT
ESDL_DRIVAPI_3
{
  /* void glLockArraysEXT(GLint first, GLsizei count); */

  STACK_FMT_BEGIN()

void
egl_unlockArraysEXT
ESDL_DRIVAPI_3
{
  /* void glUnlockArraysEXT(void); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_cull_vertex */

void
egl_cullParameterdvEXT
ESDL_DRIVAPI_3
{
  /* void glCullParameterdvEXT(GLenum pname, GLdouble* params); */

  STACK_FMT_BEGIN()

void
egl_cullParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glCullParameterfvEXT(GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_ycrcb */
/* Going from GL_SGIX_fragment_lighting */

void
egl_fragmentColorMaterialSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentColorMaterialSGIX(GLenum face, GLenum mode); */

  STACK_FMT_BEGIN()

void
egl_fragmentLightfSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentLightfSGIX(GLenum light, GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_fragmentLightfvSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentLightfvSGIX(GLenum light, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_fragmentLightiSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentLightiSGIX(GLenum light, GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_fragmentLightivSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentLightivSGIX(GLenum light, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_fragmentLightModelfSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentLightModelfSGIX(GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_fragmentLightModelfvSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentLightModelfvSGIX(GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_fragmentLightModeliSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentLightModeliSGIX(GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_fragmentLightModelivSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentLightModelivSGIX(GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_fragmentMaterialfSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentMaterialfSGIX(GLenum face, GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_fragmentMaterialfvSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentMaterialfvSGIX(GLenum face, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_fragmentMaterialiSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentMaterialiSGIX(GLenum face, GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_fragmentMaterialivSGIX
ESDL_DRIVAPI_3
{
  /* void glFragmentMaterialivSGIX(GLenum face, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getFragmentLightfvSGIX
ESDL_DRIVAPI_3
{
  /* void glGetFragmentLightfvSGIX(GLenum light, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getFragmentLightivSGIX
ESDL_DRIVAPI_3
{
  /* void glGetFragmentLightivSGIX(GLenum light, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getFragmentMaterialfvSGIX
ESDL_DRIVAPI_3
{
  /* void glGetFragmentMaterialfvSGIX(GLenum face, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getFragmentMaterialivSGIX
ESDL_DRIVAPI_3
{
  /* void glGetFragmentMaterialivSGIX(GLenum face, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_lightEnviSGIX
ESDL_DRIVAPI_3
{
  /* void glLightEnviSGIX(GLenum pname, GLint param); */

  STACK_FMT_BEGIN()


/* Going from GL_IBM_rasterpos_clip */
/* Going from GL_HP_texture_lighting */
/* Going from GL_EXT_draw_range_elements */

void
egl_drawRangeElementsEXT
ESDL_DRIVAPI_3
{
  /* void glDrawRangeElementsEXT(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid* indices); */

  STACK_FMT_BEGIN()


/* Going from GL_WIN_phong_shading */
/* Going from GL_WIN_specular_fog */
/* Going from GL_EXT_light_texture */

void
egl_applyTextureEXT
ESDL_DRIVAPI_3
{
  /* void glApplyTextureEXT(GLenum mode); */

  STACK_FMT_BEGIN()

void
egl_textureLightEXT
ESDL_DRIVAPI_3
{
  /* void glTextureLightEXT(GLenum pname); */

  STACK_FMT_BEGIN()

void
egl_textureMaterialEXT
ESDL_DRIVAPI_3
{
  /* void glTextureMaterialEXT(GLenum face, GLenum mode); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_blend_alpha_minmax */
/* Going from GL_EXT_bgra */
/* Going from GL_SGIX_async */

void
egl_asyncMarkerSGIX
ESDL_DRIVAPI_3
{
  /* void glAsyncMarkerSGIX(GLuint marker); */

  STACK_FMT_BEGIN()

void
egl_finishAsyncSGIX
ESDL_DRIVAPI_3
{
  /* GLint glFinishAsyncSGIX(GLuint* markerp); */

  STACK_FMT_BEGIN()

void
egl_pollAsyncSGIX
ESDL_DRIVAPI_3
{
  /* GLint glPollAsyncSGIX(GLuint* markerp); */

  STACK_FMT_BEGIN()




void
egl_genAsyncMarkersSGIX
ESDL_DRIVAPI_3
{
  /* GLuint glGenAsyncMarkersSGIX(GLsizei range); */

  STACK_FMT_BEGIN()

void
egl_deleteAsyncMarkersSGIX
ESDL_DRIVAPI_3
{
  /* void glDeleteAsyncMarkersSGIX(GLuint marker, GLsizei range); */

  STACK_FMT_BEGIN()

void
egl_isAsyncMarkerSGIX
ESDL_DRIVAPI_3
{
  /* GLboolean glIsAsyncMarkerSGIX(GLuint marker); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_async_pixel */
/* Going from GL_SGIX_async_histogram */
/* Going from GL_INTEL_parallel_arrays */

void
egl_vertexPointervINTEL
ESDL_DRIVAPI_3
{
  /* void glVertexPointervINTEL(GLint size, GLenum type, const GLvoid** pointer); */

  STACK_FMT_BEGIN()

void
egl_normalPointervINTEL
ESDL_DRIVAPI_3
{
  /* void glNormalPointervINTEL(GLenum type, const GLvoid** pointer); */

  STACK_FMT_BEGIN()

void
egl_colorPointervINTEL
ESDL_DRIVAPI_3
{
  /* void glColorPointervINTEL(GLint size, GLenum type, const GLvoid** pointer); */

  STACK_FMT_BEGIN()

void
egl_texCoordPointervINTEL
ESDL_DRIVAPI_3
{
  /* void glTexCoordPointervINTEL(GLint size, GLenum type, const GLvoid** pointer); */

  STACK_FMT_BEGIN()


/* Going from GL_HP_occlusion_test */
/* Going from GL_EXT_pixel_transform */

void
egl_pixelTransformParameteriEXT
ESDL_DRIVAPI_3
{
  /* void glPixelTransformParameteriEXT(GLenum target, GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_pixelTransformParameterfEXT
ESDL_DRIVAPI_3
{
  /* void glPixelTransformParameterfEXT(GLenum target, GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_pixelTransformParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glPixelTransformParameterivEXT(GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_pixelTransformParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glPixelTransformParameterfvEXT(GLenum target, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_pixel_transform_color_table */
/* Going from GL_EXT_shared_texture_palette */
/* Going from GL_EXT_separate_specular_color */
/* Going from GL_EXT_secondary_color */

void
egl_secondaryColor3bEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3bEXT(GLbyte red, GLbyte green, GLbyte blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3bvEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3bvEXT(const GLbyte* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3dEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3dEXT(GLdouble red, GLdouble green, GLdouble blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3dvEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3dvEXT(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3fEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3fEXT(GLfloat red, GLfloat green, GLfloat blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3fvEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3fvEXT(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3iEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3iEXT(GLint red, GLint green, GLint blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3ivEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3ivEXT(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3sEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3sEXT(GLshort red, GLshort green, GLshort blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3svEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3svEXT(const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3ubEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3ubEXT(GLubyte red, GLubyte green, GLubyte blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3ubvEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3ubvEXT(const GLubyte* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3uiEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3uiEXT(GLuint red, GLuint green, GLuint blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3uivEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3uivEXT(const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3usEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3usEXT(GLushort red, GLushort green, GLushort blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3usvEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3usvEXT(const GLushort* v); */

  STACK_FMT_BEGIN()

void
egl_secondaryColorPointerEXT
ESDL_DRIVAPI_3
{
  /* void glSecondaryColorPointerEXT(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_texture_perturb_normal */

void
egl_textureNormalEXT
ESDL_DRIVAPI_3
{
  /* void glTextureNormalEXT(GLenum mode); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_multi_draw_arrays */

void
egl_multiDrawArraysEXT
ESDL_DRIVAPI_3
{
  /* void glMultiDrawArraysEXT(GLenum mode, GLint* first, GLsizei* count, GLsizei primcount); */

  STACK_FMT_BEGIN()

void
egl_multiDrawElementsEXT
ESDL_DRIVAPI_3
{
  /* void glMultiDrawElementsEXT(GLenum mode, const GLsizei* count, GLenum type, const GLvoid** indices, GLsizei primcount); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_fog_coord */

void
egl_fogCoordfEXT
ESDL_DRIVAPI_3
{
  /* void glFogCoordfEXT(GLfloat coord); */

  STACK_FMT_BEGIN()

void
egl_fogCoordfvEXT
ESDL_DRIVAPI_3
{
  /* void glFogCoordfvEXT(const GLfloat* coord); */

  STACK_FMT_BEGIN()

void
egl_fogCoorddEXT
ESDL_DRIVAPI_3
{
  /* void glFogCoorddEXT(GLdouble coord); */

  STACK_FMT_BEGIN()

void
egl_fogCoorddvEXT
ESDL_DRIVAPI_3
{
  /* void glFogCoorddvEXT(const GLdouble* coord); */

  STACK_FMT_BEGIN()

void
egl_fogCoordPointerEXT
ESDL_DRIVAPI_3
{
  /* void glFogCoordPointerEXT(GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()


/* Going from GL_REND_screen_coordinates */
/* Going from GL_EXT_coordinate_frame */

void
egl_tangent3bEXT
ESDL_DRIVAPI_3
{
  /* void glTangent3bEXT(GLbyte tx, GLbyte ty, GLbyte tz); */

  STACK_FMT_BEGIN()

void
egl_tangent3bvEXT
ESDL_DRIVAPI_3
{
  /* void glTangent3bvEXT(const GLbyte* v); */

  STACK_FMT_BEGIN()

void
egl_tangent3dEXT
ESDL_DRIVAPI_3
{
  /* void glTangent3dEXT(GLdouble tx, GLdouble ty, GLdouble tz); */

  STACK_FMT_BEGIN()

void
egl_tangent3dvEXT
ESDL_DRIVAPI_3
{
  /* void glTangent3dvEXT(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_tangent3fEXT
ESDL_DRIVAPI_3
{
  /* void glTangent3fEXT(GLfloat tx, GLfloat ty, GLfloat tz); */

  STACK_FMT_BEGIN()

void
egl_tangent3fvEXT
ESDL_DRIVAPI_3
{
  /* void glTangent3fvEXT(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_tangent3iEXT
ESDL_DRIVAPI_3
{
  /* void glTangent3iEXT(GLint tx, GLint ty, GLint tz); */

  STACK_FMT_BEGIN()

void
egl_tangent3ivEXT
ESDL_DRIVAPI_3
{
  /* void glTangent3ivEXT(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_tangent3sEXT
ESDL_DRIVAPI_3
{
  /* void glTangent3sEXT(GLshort tx, GLshort ty, GLshort tz); */

  STACK_FMT_BEGIN()

void
egl_tangent3svEXT
ESDL_DRIVAPI_3
{
  /* void glTangent3svEXT(const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_binormal3bEXT
ESDL_DRIVAPI_3
{
  /* void glBinormal3bEXT(GLbyte bx, GLbyte by, GLbyte bz); */

  STACK_FMT_BEGIN()

void
egl_binormal3bvEXT
ESDL_DRIVAPI_3
{
  /* void glBinormal3bvEXT(const GLbyte* v); */

  STACK_FMT_BEGIN()

void
egl_binormal3dEXT
ESDL_DRIVAPI_3
{
  /* void glBinormal3dEXT(GLdouble bx, GLdouble by, GLdouble bz); */

  STACK_FMT_BEGIN()

void
egl_binormal3dvEXT
ESDL_DRIVAPI_3
{
  /* void glBinormal3dvEXT(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_binormal3fEXT
ESDL_DRIVAPI_3
{
  /* void glBinormal3fEXT(GLfloat bx, GLfloat by, GLfloat bz); */

  STACK_FMT_BEGIN()

void
egl_binormal3fvEXT
ESDL_DRIVAPI_3
{
  /* void glBinormal3fvEXT(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_binormal3iEXT
ESDL_DRIVAPI_3
{
  /* void glBinormal3iEXT(GLint bx, GLint by, GLint bz); */

  STACK_FMT_BEGIN()

void
egl_binormal3ivEXT
ESDL_DRIVAPI_3
{
  /* void glBinormal3ivEXT(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_binormal3sEXT
ESDL_DRIVAPI_3
{
  /* void glBinormal3sEXT(GLshort bx, GLshort by, GLshort bz); */

  STACK_FMT_BEGIN()

void
egl_binormal3svEXT
ESDL_DRIVAPI_3
{
  /* void glBinormal3svEXT(const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_tangentPointerEXT
ESDL_DRIVAPI_3
{
  /* void glTangentPointerEXT(GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_binormalPointerEXT
ESDL_DRIVAPI_3
{
  /* void glBinormalPointerEXT(GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_texture_env_combine */
/* Going from GL_APPLE_specular_vector */
/* Going from GL_APPLE_transform_hint */
/* Going from GL_SGIX_fog_scale */
/* Going from GL_SUNX_constant_data */

void
egl_finishTextureSUNX
ESDL_DRIVAPI_3
{
  /* void glFinishTextureSUNX(void); */

  STACK_FMT_BEGIN()


/* Going from GL_SUN_global_alpha */

void
egl_globalAlphaFactorbSUN
ESDL_DRIVAPI_3
{
  /* void glGlobalAlphaFactorbSUN(GLbyte factor); */

  STACK_FMT_BEGIN()

void
egl_globalAlphaFactorsSUN
ESDL_DRIVAPI_3
{
  /* void glGlobalAlphaFactorsSUN(GLshort factor); */

  STACK_FMT_BEGIN()

void
egl_globalAlphaFactoriSUN
ESDL_DRIVAPI_3
{
  /* void glGlobalAlphaFactoriSUN(GLint factor); */

  STACK_FMT_BEGIN()

void
egl_globalAlphaFactorfSUN
ESDL_DRIVAPI_3
{
  /* void glGlobalAlphaFactorfSUN(GLfloat factor); */

  STACK_FMT_BEGIN()

void
egl_globalAlphaFactordSUN
ESDL_DRIVAPI_3
{
  /* void glGlobalAlphaFactordSUN(GLdouble factor); */

  STACK_FMT_BEGIN()

void
egl_globalAlphaFactorubSUN
ESDL_DRIVAPI_3
{
  /* void glGlobalAlphaFactorubSUN(GLubyte factor); */

  STACK_FMT_BEGIN()

void
egl_globalAlphaFactorusSUN
ESDL_DRIVAPI_3
{
  /* void glGlobalAlphaFactorusSUN(GLushort factor); */

  STACK_FMT_BEGIN()

void
egl_globalAlphaFactoruiSUN
ESDL_DRIVAPI_3
{
  /* void glGlobalAlphaFactoruiSUN(GLuint factor); */

  STACK_FMT_BEGIN()


/* Going from GL_SUN_triangle_list */

void
egl_replacementCodeuiSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiSUN(GLuint code); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeusSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeusSUN(GLushort code); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeubSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeubSUN(GLubyte code); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuivSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuivSUN(const GLuint* code); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeusvSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeusvSUN(const GLushort* code); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeubvSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeubvSUN(const GLubyte* code); */

  STACK_FMT_BEGIN()

void
egl_replacementCodePointerSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodePointerSUN(GLenum type, GLsizei stride, const GLvoid** pointer); */

  STACK_FMT_BEGIN()


/* Going from GL_SUN_vertex */

void
egl_color4ubVertex2fSUN
ESDL_DRIVAPI_3
{
  /* void glColor4ubVertex2fSUN(GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y); */

  STACK_FMT_BEGIN()

void
egl_color4ubVertex2fvSUN
ESDL_DRIVAPI_3
{
  /* void glColor4ubVertex2fvSUN(const GLubyte* c, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_color4ubVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glColor4ubVertex3fSUN(GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_color4ubVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glColor4ubVertex3fvSUN(const GLubyte* c, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_color3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glColor3fVertex3fSUN(GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_color3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glColor3fVertex3fvSUN(const GLfloat* c, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_normal3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glNormal3fVertex3fSUN(GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_normal3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glNormal3fVertex3fvSUN(const GLfloat* n, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_color4fNormal3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glColor4fNormal3fVertex3fSUN(GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_color4fNormal3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glColor4fNormal3fVertex3fvSUN(const GLfloat* c, const GLfloat* n, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_texCoord2fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord2fVertex3fSUN(GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_texCoord2fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord2fVertex3fvSUN(const GLfloat* tc, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_texCoord4fVertex4fSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord4fVertex4fSUN(GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()

void
egl_texCoord4fVertex4fvSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord4fVertex4fvSUN(const GLfloat* tc, const GLfloat* v); */

  STACK_FMT_BEGIN()


void
egl_texCoord2fColor4ubVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord2fColor4ubVertex3fSUN(GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_texCoord2fColor4ubVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord2fColor4ubVertex3fvSUN(const GLfloat* tc, const GLubyte* c, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_texCoord2fColor3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord2fColor3fVertex3fSUN(GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_texCoord2fColor3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord2fColor3fVertex3fvSUN(const GLfloat* tc, const GLfloat* c, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_texCoord2fNormal3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord2fNormal3fVertex3fSUN(GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_texCoord2fNormal3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord2fNormal3fVertex3fvSUN(const GLfloat* tc, const GLfloat* n, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_texCoord2fColor4fNormal3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord2fColor4fNormal3fVertex3fSUN(GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_texCoord2fColor4fNormal3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord2fColor4fNormal3fVertex3fvSUN(const GLfloat* tc, const GLfloat* c, const GLfloat* n, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_texCoord4fColor4fNormal3fVertex4fSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord4fColor4fNormal3fVertex4fSUN(GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()

void
egl_texCoord4fColor4fNormal3fVertex4fvSUN
ESDL_DRIVAPI_3
{
  /* void glTexCoord4fColor4fNormal3fVertex4fvSUN(const GLfloat* tc, const GLfloat* c, const GLfloat* n, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiVertex3fSUN(GLuint rc, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiVertex3fvSUN(const GLuint* rc, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiColor4ubVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiColor4ubVertex3fSUN(GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiColor4ubVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiColor4ubVertex3fvSUN(const GLuint* rc, const GLubyte* c, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiColor3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiColor3fVertex3fSUN(GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiColor3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiColor3fVertex3fvSUN(const GLuint* rc, const GLfloat* c, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiNormal3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiNormal3fVertex3fSUN(GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiNormal3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiNormal3fVertex3fvSUN(const GLuint* rc, const GLfloat* n, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiColor4fNormal3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiColor4fNormal3fVertex3fSUN(GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiColor4fNormal3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiColor4fNormal3fVertex3fvSUN(const GLuint* rc, const GLfloat* c, const GLfloat* n, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiTexCoord2fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiTexCoord2fVertex3fSUN(GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiTexCoord2fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiTexCoord2fVertex3fvSUN(const GLuint* rc, const GLfloat* tc, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiTexCoord2fNormal3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiTexCoord2fNormal3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN(const GLuint* rc, const GLfloat* tc, const GLfloat* n, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_replacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN
ESDL_DRIVAPI_3
{
  /* void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(const GLuint* rc, const GLfloat* tc, const GLfloat* c, const GLfloat* n, const GLfloat* v); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_blend_func_separate */

void
egl_blendFuncSeparateEXT
ESDL_DRIVAPI_3
{
  /* void glBlendFuncSeparateEXT(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha); */

  STACK_FMT_BEGIN()


/* Going from GL_INGR_blend_func_separate */

void
egl_blendFuncSeparateINGR
ESDL_DRIVAPI_3
{
  /* void glBlendFuncSeparateINGR(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha); */

  STACK_FMT_BEGIN()


/* Going from GL_INGR_color_clamp */
/* Going from GL_INGR_interlace_read */
/* Going from GL_EXT_stencil_wrap */
/* Going from GL_EXT_422_pixels */
/* Going from GL_NV_texgen_reflection */
/* Going from GL_SUN_convolution_border_modes */
/* Going from GL_EXT_texture_env_add */
/* Going from GL_EXT_texture_lod_bias */
/* Going from GL_EXT_texture_filter_anisotropic */
/* Going from GL_EXT_vertex_weighting */

void
egl_vertexWeightfEXT
ESDL_DRIVAPI_3
{
  /* void glVertexWeightfEXT(GLfloat weight); */

  STACK_FMT_BEGIN()

void
egl_vertexWeightfvEXT
ESDL_DRIVAPI_3
{
  /* void glVertexWeightfvEXT(const GLfloat* weight); */

  STACK_FMT_BEGIN()

void
egl_vertexWeightPointerEXT
ESDL_DRIVAPI_3
{
  /* void glVertexWeightPointerEXT(GLsizei size, GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_light_max_exponent */
/* Going from GL_NV_vertex_array_range */

void
egl_flushVertexArrayRangeNV
ESDL_DRIVAPI_3
{
  /* void glFlushVertexArrayRangeNV(void); */

  STACK_FMT_BEGIN()

void
egl_vertexArrayRangeNV
ESDL_DRIVAPI_3
{
  /* void glVertexArrayRangeNV(GLsizei length, const GLvoid* pointer); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_register_combiners */

void
egl_combinerParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glCombinerParameterfvNV(GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_combinerParameterfNV
ESDL_DRIVAPI_3
{
  /* void glCombinerParameterfNV(GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_combinerParameterivNV
ESDL_DRIVAPI_3
{
  /* void glCombinerParameterivNV(GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_combinerParameteriNV
ESDL_DRIVAPI_3
{
  /* void glCombinerParameteriNV(GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_combinerInputNV
ESDL_DRIVAPI_3
{
  /* void glCombinerInputNV(GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage); */

  STACK_FMT_BEGIN()

void
egl_combinerOutputNV
ESDL_DRIVAPI_3
{
  /* void glCombinerOutputNV(GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum); */

  STACK_FMT_BEGIN()

void
egl_finalCombinerInputNV
ESDL_DRIVAPI_3
{
  /* void glFinalCombinerInputNV(GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage); */

  STACK_FMT_BEGIN()

void
egl_getCombinerInputParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glGetCombinerInputParameterfvNV(GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getCombinerInputParameterivNV
ESDL_DRIVAPI_3
{
  /* void glGetCombinerInputParameterivNV(GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getCombinerOutputParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glGetCombinerOutputParameterfvNV(GLenum stage, GLenum portion, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getCombinerOutputParameterivNV
ESDL_DRIVAPI_3
{
  /* void glGetCombinerOutputParameterivNV(GLenum stage, GLenum portion, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getFinalCombinerInputParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glGetFinalCombinerInputParameterfvNV(GLenum variable, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getFinalCombinerInputParameterivNV
ESDL_DRIVAPI_3
{
  /* void glGetFinalCombinerInputParameterivNV(GLenum variable, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_fog_distance */
/* Going from GL_NV_texgen_emboss */
/* Going from GL_NV_blend_square */
/* Going from GL_NV_texture_env_combine4 */
/* Going from GL_MESA_resize_buffers */

void
egl_resizeBuffersMESA
ESDL_DRIVAPI_3
{
  /* void glResizeBuffersMESA(void); */

  STACK_FMT_BEGIN()


/* Going from GL_MESA_window_pos */

void
egl_windowPos2dMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos2dMESA(GLdouble x, GLdouble y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2dvMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos2dvMESA(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos2fMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos2fMESA(GLfloat x, GLfloat y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2fvMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos2fvMESA(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos2iMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos2iMESA(GLint x, GLint y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2ivMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos2ivMESA(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos2sMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos2sMESA(GLshort x, GLshort y); */

  STACK_FMT_BEGIN()

void
egl_windowPos2svMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos2svMESA(const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3dMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos3dMESA(GLdouble x, GLdouble y, GLdouble z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3dvMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos3dvMESA(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3fMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos3fMESA(GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3fvMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos3fvMESA(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3iMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos3iMESA(GLint x, GLint y, GLint z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3ivMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos3ivMESA(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos3sMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos3sMESA(GLshort x, GLshort y, GLshort z); */

  STACK_FMT_BEGIN()

void
egl_windowPos3svMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos3svMESA(const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos4dMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos4dMESA(GLdouble x, GLdouble y, GLdouble z, GLdouble w); */

  STACK_FMT_BEGIN()

void
egl_windowPos4dvMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos4dvMESA(const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos4fMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos4fMESA(GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()

void
egl_windowPos4fvMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos4fvMESA(const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos4iMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos4iMESA(GLint x, GLint y, GLint z, GLint w); */

  STACK_FMT_BEGIN()

void
egl_windowPos4ivMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos4ivMESA(const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_windowPos4sMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos4sMESA(GLshort x, GLshort y, GLshort z, GLshort w); */

  STACK_FMT_BEGIN()

void
egl_windowPos4svMESA
ESDL_DRIVAPI_3
{
  /* void glWindowPos4svMESA(const GLshort* v); */

  STACK_FMT_BEGIN()


/* Going from GL_IBM_cull_vertex */
/* Going from GL_IBM_multimode_draw_arrays */

void
egl_multiModeDrawArraysIBM
ESDL_DRIVAPI_3
{
  /* void glMultiModeDrawArraysIBM(const GLenum* mode, const GLint* first, const GLsizei* count, GLsizei primcount, GLint modestride); */

  STACK_FMT_BEGIN()

void
egl_multiModeDrawElementsIBM
ESDL_DRIVAPI_3
{
  /* void glMultiModeDrawElementsIBM(const GLenum* mode, const GLsizei* count, GLenum type, const GLvoid* const* indices, GLsizei primcount, GLint modestride); */

  STACK_FMT_BEGIN()


/* Going from GL_IBM_vertex_array_lists */

void
egl_colorPointerListIBM
ESDL_DRIVAPI_3
{
  /* void glColorPointerListIBM(GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride); */

  STACK_FMT_BEGIN()

void
egl_secondaryColorPointerListIBM
ESDL_DRIVAPI_3
{
  /* void glSecondaryColorPointerListIBM(GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride); */

  STACK_FMT_BEGIN()

void
egl_edgeFlagPointerListIBM
ESDL_DRIVAPI_3
{
  /* void glEdgeFlagPointerListIBM(GLint stride, const GLboolean** pointer, GLint ptrstride); */

  STACK_FMT_BEGIN()

void
egl_fogCoordPointerListIBM
ESDL_DRIVAPI_3
{
  /* void glFogCoordPointerListIBM(GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride); */

  STACK_FMT_BEGIN()

void
egl_indexPointerListIBM
ESDL_DRIVAPI_3
{
  /* void glIndexPointerListIBM(GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride); */

  STACK_FMT_BEGIN()

void
egl_normalPointerListIBM
ESDL_DRIVAPI_3
{
  /* void glNormalPointerListIBM(GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride); */

  STACK_FMT_BEGIN()

void
egl_texCoordPointerListIBM
ESDL_DRIVAPI_3
{
  /* void glTexCoordPointerListIBM(GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride); */

  STACK_FMT_BEGIN()

void
egl_vertexPointerListIBM
ESDL_DRIVAPI_3
{
  /* void glVertexPointerListIBM(GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_subsample */
/* Going from GL_SGIX_ycrcba */
/* Going from GL_SGIX_ycrcb_subsample */
/* Going from GL_SGIX_depth_pass_instrument */
/* Going from GL_3DFX_texture_compression_FXT1 */
/* Going from GL_3DFX_multisample */
/* Going from GL_3DFX_tbuffer */

void
egl_tbufferMask3DFX
ESDL_DRIVAPI_3
{
  /* void glTbufferMask3DFX(GLuint mask); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_multisample */

void
egl_sampleMaskEXT
ESDL_DRIVAPI_3
{
  /* void glSampleMaskEXT(GLclampf value, GLboolean invert); */

  STACK_FMT_BEGIN()

void
egl_samplePatternEXT
ESDL_DRIVAPI_3
{
  /* void glSamplePatternEXT(GLenum pattern); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_vertex_preclip */
/* Going from GL_SGIX_convolution_accuracy */
/* Going from GL_SGIX_resample */
/* Going from GL_SGIS_point_line_texgen */
/* Going from GL_SGIS_texture_color_mask */

void
egl_textureColorMaskSGIS
ESDL_DRIVAPI_3
{
  /* void glTextureColorMaskSGIS(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_igloo_interface */

void
egl_iglooInterfaceSGIX
ESDL_DRIVAPI_3
{
  /* void glIglooInterfaceSGIX(GLenum pname, const GLvoid* params); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_texture_env_dot3 */
/* Going from GL_ATI_texture_mirror_once */
/* Going from GL_NV_fence */

void
egl_deleteFencesNV
ESDL_DRIVAPI_3
{
  /* void glDeleteFencesNV(GLsizei n, const GLuint* fences); */

  STACK_FMT_BEGIN()

void
egl_genFencesNV
ESDL_DRIVAPI_3
{
  /* void glGenFencesNV(GLsizei n, GLuint* fences); */

  STACK_FMT_BEGIN()

void
egl_isFenceNV
ESDL_DRIVAPI_3
{
  /* GLboolean glIsFenceNV(GLuint fence); */

  STACK_FMT_BEGIN()

void
egl_testFenceNV
ESDL_DRIVAPI_3
{
  /* GLboolean glTestFenceNV(GLuint fence); */

  STACK_FMT_BEGIN()

void
egl_getFenceivNV
ESDL_DRIVAPI_3
{
  /* void glGetFenceivNV(GLuint fence, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_finishFenceNV
ESDL_DRIVAPI_3
{
  /* void glFinishFenceNV(GLuint fence); */

  STACK_FMT_BEGIN()

void
egl_setFenceNV
ESDL_DRIVAPI_3
{
  /* void glSetFenceNV(GLuint fence, GLenum condition); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_evaluators */

void
egl_mapControlPointsNV
ESDL_DRIVAPI_3
{
  /* void glMapControlPointsNV(GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const GLvoid* points); */

  STACK_FMT_BEGIN()

void
egl_mapParameterivNV
ESDL_DRIVAPI_3
{
  /* void glMapParameterivNV(GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_mapParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glMapParameterfvNV(GLenum target, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getMapControlPointsNV
ESDL_DRIVAPI_3
{
  /* void glGetMapControlPointsNV(GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, GLvoid* points); */

  STACK_FMT_BEGIN()

void
egl_getMapParameterivNV
ESDL_DRIVAPI_3
{
  /* void glGetMapParameterivNV(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getMapParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glGetMapParameterfvNV(GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getMapAttribParameterivNV
ESDL_DRIVAPI_3
{
  /* void glGetMapAttribParameterivNV(GLenum target, GLuint index, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getMapAttribParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glGetMapAttribParameterfvNV(GLenum target, GLuint index, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_evalMapsNV
ESDL_DRIVAPI_3
{
  /* void glEvalMapsNV(GLenum target, GLenum mode); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_packed_depth_stencil */
/* Going from GL_NV_register_combiners2 */

void
egl_combinerStageParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glCombinerStageParameterfvNV(GLenum stage, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getCombinerStageParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glGetCombinerStageParameterfvNV(GLenum stage, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_texture_compression_vtc */
/* Going from GL_NV_texture_rectangle */
/* Going from GL_NV_texture_shader */
/* Going from GL_NV_texture_shader2 */
/* Going from GL_NV_vertex_array_range2 */
/* Going from GL_NV_vertex_program */

void
egl_areProgramsResidentNV
ESDL_DRIVAPI_3
{
  /* GLboolean glAreProgramsResidentNV(GLsizei n, const GLuint* programs, GLboolean* residences); */

  STACK_FMT_BEGIN()



void
egl_bindProgramNV
ESDL_DRIVAPI_3
{
  /* void glBindProgramNV(GLenum target, GLuint id); */

  STACK_FMT_BEGIN()

void
egl_deleteProgramsNV
ESDL_DRIVAPI_3
{
  /* void glDeleteProgramsNV(GLsizei n, const GLuint* programs); */

  STACK_FMT_BEGIN()

void
egl_executeProgramNV
ESDL_DRIVAPI_3
{
  /* void glExecuteProgramNV(GLenum target, GLuint id, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_genProgramsNV
ESDL_DRIVAPI_3
{
  /* void glGenProgramsNV(GLsizei n, GLuint* programs); */

  STACK_FMT_BEGIN()

void
egl_getProgramParameterdvNV
ESDL_DRIVAPI_3
{
  /* void glGetProgramParameterdvNV(GLenum target, GLuint index, GLenum pname, GLdouble* params); */

  STACK_FMT_BEGIN()

void
egl_getProgramParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glGetProgramParameterfvNV(GLenum target, GLuint index, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getProgramivNV
ESDL_DRIVAPI_3
{
  /* void glGetProgramivNV(GLuint id, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getProgramStringNV
ESDL_DRIVAPI_3
{
  /* void glGetProgramStringNV(GLuint id, GLenum pname, GLubyte* program); */

  STACK_FMT_BEGIN()

void
egl_getTrackMatrixivNV
ESDL_DRIVAPI_3
{
  /* void glGetTrackMatrixivNV(GLenum target, GLuint address, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribdvNV
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribdvNV(GLuint index, GLenum pname, GLdouble* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribfvNV
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribfvNV(GLuint index, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribivNV
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribivNV(GLuint index, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribPointervNV
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribPointervNV(GLuint index, GLenum pname, GLvoid** pointer); */

  STACK_FMT_BEGIN()

void
egl_isProgramNV
ESDL_DRIVAPI_3
{
  /* GLboolean glIsProgramNV(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_loadProgramNV
ESDL_DRIVAPI_3
{
  /* void glLoadProgramNV(GLenum target, GLuint id, GLsizei len, const GLubyte* program); */

  STACK_FMT_BEGIN()

void
egl_programParameter4dNV
ESDL_DRIVAPI_3
{
  /* void glProgramParameter4dNV(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w); */

  STACK_FMT_BEGIN()

void
egl_programParameter4dvNV
ESDL_DRIVAPI_3
{
  /* void glProgramParameter4dvNV(GLenum target, GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_programParameter4fNV
ESDL_DRIVAPI_3
{
  /* void glProgramParameter4fNV(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()

void
egl_programParameter4fvNV
ESDL_DRIVAPI_3
{
  /* void glProgramParameter4fvNV(GLenum target, GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_programParameters4dvNV
ESDL_DRIVAPI_3
{
  /* void glProgramParameters4dvNV(GLenum target, GLuint index, GLuint count, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_programParameters4fvNV
ESDL_DRIVAPI_3
{
  /* void glProgramParameters4fvNV(GLenum target, GLuint index, GLuint count, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_requestResidentProgramsNV
ESDL_DRIVAPI_3
{
  /* void glRequestResidentProgramsNV(GLsizei n, const GLuint* programs); */

  STACK_FMT_BEGIN()

void
egl_trackMatrixNV
ESDL_DRIVAPI_3
{
  /* void glTrackMatrixNV(GLenum target, GLuint address, GLenum matrix, GLenum transform); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribPointerNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribPointerNV(GLuint index, GLint fsize, GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1dNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1dNV(GLuint index, GLdouble x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1dvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1dvNV(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()


void
egl_vertexAttrib1fNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1fNV(GLuint index, GLfloat x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1fvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1fvNV(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1sNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1sNV(GLuint index, GLshort x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1svNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1svNV(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2dNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2dNV(GLuint index, GLdouble x, GLdouble y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2dvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2dvNV(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2fNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2fNV(GLuint index, GLfloat x, GLfloat y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2fvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2fvNV(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2sNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2sNV(GLuint index, GLshort x, GLshort y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2svNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2svNV(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3dNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3dNV(GLuint index, GLdouble x, GLdouble y, GLdouble z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3dvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3dvNV(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3fNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3fNV(GLuint index, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3fvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3fvNV(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3sNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3sNV(GLuint index, GLshort x, GLshort y, GLshort z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3svNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3svNV(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4dNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4dNV(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4dvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4dvNV(GLuint index, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4fNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4fNV(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4fvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4fvNV(GLuint index, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4sNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4sNV(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4svNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4svNV(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4ubNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4ubNV(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4ubvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4ubvNV(GLuint index, const GLubyte* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs1dvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs1dvNV(GLuint index, GLsizei count, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs1fvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs1fvNV(GLuint index, GLsizei count, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs1svNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs1svNV(GLuint index, GLsizei count, const GLshort* v); */

  STACK_FMT_BEGIN()


void
egl_vertexAttribs2dvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs2dvNV(GLuint index, GLsizei count, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs2fvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs2fvNV(GLuint index, GLsizei count, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs2svNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs2svNV(GLuint index, GLsizei count, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs3dvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs3dvNV(GLuint index, GLsizei count, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs3fvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs3fvNV(GLuint index, GLsizei count, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs3svNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs3svNV(GLuint index, GLsizei count, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs4dvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs4dvNV(GLuint index, GLsizei count, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs4fvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs4fvNV(GLuint index, GLsizei count, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs4svNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs4svNV(GLuint index, GLsizei count, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs4ubvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs4ubvNV(GLuint index, GLsizei count, const GLubyte* v); */

  STACK_FMT_BEGIN()


/* Going from GL_SGIX_texture_coordinate_clamp */
/* Going from GL_SGIX_scalebias_hint */
/* Going from GL_OML_interlace */
/* Going from GL_OML_subsample */
/* Going from GL_OML_resample */
/* Going from GL_NV_copy_depth_to_color */
/* Going from GL_ATI_envmap_bumpmap */

void
egl_texBumpParameterivATI
ESDL_DRIVAPI_3
{
  /* void glTexBumpParameterivATI(GLenum pname, const GLint* param); */

  STACK_FMT_BEGIN()

void
egl_texBumpParameterfvATI
ESDL_DRIVAPI_3
{
  /* void glTexBumpParameterfvATI(GLenum pname, const GLfloat* param); */

  STACK_FMT_BEGIN()

void
egl_getTexBumpParameterivATI
ESDL_DRIVAPI_3
{
  /* void glGetTexBumpParameterivATI(GLenum pname, GLint* param); */

  STACK_FMT_BEGIN()

void
egl_getTexBumpParameterfvATI
ESDL_DRIVAPI_3
{
  /* void glGetTexBumpParameterfvATI(GLenum pname, GLfloat* param); */

  STACK_FMT_BEGIN()


/* Going from GL_ATI_fragment_shader */

void
egl_genFragmentShadersATI
ESDL_DRIVAPI_3
{
  /* GLuint glGenFragmentShadersATI(GLuint range); */

  STACK_FMT_BEGIN()

void
egl_bindFragmentShaderATI
ESDL_DRIVAPI_3
{
  /* void glBindFragmentShaderATI(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_deleteFragmentShaderATI
ESDL_DRIVAPI_3
{
  /* void glDeleteFragmentShaderATI(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_beginFragmentShaderATI
ESDL_DRIVAPI_3
{
  /* void glBeginFragmentShaderATI(void); */

  STACK_FMT_BEGIN()

void
egl_endFragmentShaderATI
ESDL_DRIVAPI_3
{
  /* void glEndFragmentShaderATI(void); */

  STACK_FMT_BEGIN()

void
egl_passTexCoordATI
ESDL_DRIVAPI_3
{
  /* void glPassTexCoordATI(GLuint dst, GLuint coord, GLenum swizzle); */

  STACK_FMT_BEGIN()

void
egl_sampleMapATI
ESDL_DRIVAPI_3
{
  /* void glSampleMapATI(GLuint dst, GLuint interp, GLenum swizzle); */

  STACK_FMT_BEGIN()

void
egl_colorFragmentOp1ATI
ESDL_DRIVAPI_3
{
  /* void glColorFragmentOp1ATI(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod); */

  STACK_FMT_BEGIN()

void
egl_colorFragmentOp2ATI
ESDL_DRIVAPI_3
{
  /* void glColorFragmentOp2ATI(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod); */

  STACK_FMT_BEGIN()

void
egl_colorFragmentOp3ATI
ESDL_DRIVAPI_3
{
  /* void glColorFragmentOp3ATI(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod); */

  STACK_FMT_BEGIN()

void
egl_alphaFragmentOp1ATI
ESDL_DRIVAPI_3
{
  /* void glAlphaFragmentOp1ATI(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod); */

  STACK_FMT_BEGIN()

void
egl_alphaFragmentOp2ATI
ESDL_DRIVAPI_3
{
  /* void glAlphaFragmentOp2ATI(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod); */

  STACK_FMT_BEGIN()

void
egl_alphaFragmentOp3ATI
ESDL_DRIVAPI_3
{
  /* void glAlphaFragmentOp3ATI(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod); */

  STACK_FMT_BEGIN()

void
egl_setFragmentShaderConstantATI
ESDL_DRIVAPI_3
{
  /* void glSetFragmentShaderConstantATI(GLuint dst, const GLfloat* value); */

  STACK_FMT_BEGIN()


/* Going from GL_ATI_pn_triangles */

void
egl_pNTrianglesiATI
ESDL_DRIVAPI_3
{
  /* void glPNTrianglesiATI(GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_pNTrianglesfATI
ESDL_DRIVAPI_3
{
  /* void glPNTrianglesfATI(GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()


/* Going from GL_ATI_vertex_array_object */

void
egl_newObjectBufferATI
ESDL_DRIVAPI_3
{
  /* GLuint glNewObjectBufferATI(GLsizei size, const GLvoid* pointer, GLenum usage); */

  STACK_FMT_BEGIN()

void
egl_isObjectBufferATI
ESDL_DRIVAPI_3
{
  /* GLboolean glIsObjectBufferATI(GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_updateObjectBufferATI
ESDL_DRIVAPI_3
{
  /* void glUpdateObjectBufferATI(GLuint buffer, GLuint offset, GLsizei size, const GLvoid* pointer, GLenum preserve); */

  STACK_FMT_BEGIN()

void
egl_getObjectBufferfvATI
ESDL_DRIVAPI_3
{
  /* void glGetObjectBufferfvATI(GLuint buffer, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getObjectBufferivATI
ESDL_DRIVAPI_3
{
  /* void glGetObjectBufferivATI(GLuint buffer, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_freeObjectBufferATI
ESDL_DRIVAPI_3
{
  /* void glFreeObjectBufferATI(GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_arrayObjectATI
ESDL_DRIVAPI_3
{
  /* void glArrayObjectATI(GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset); */

  STACK_FMT_BEGIN()

void
egl_getArrayObjectfvATI
ESDL_DRIVAPI_3
{
  /* void glGetArrayObjectfvATI(GLenum array, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getArrayObjectivATI
ESDL_DRIVAPI_3
{
  /* void glGetArrayObjectivATI(GLenum array, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_variantArrayObjectATI
ESDL_DRIVAPI_3
{
  /* void glVariantArrayObjectATI(GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset); */

  STACK_FMT_BEGIN()

void
egl_getVariantArrayObjectfvATI
ESDL_DRIVAPI_3
{
  /* void glGetVariantArrayObjectfvATI(GLuint id, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getVariantArrayObjectivATI
ESDL_DRIVAPI_3
{
  /* void glGetVariantArrayObjectivATI(GLuint id, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_vertex_shader */

void
egl_beginVertexShaderEXT
ESDL_DRIVAPI_3
{
  /* void glBeginVertexShaderEXT(void); */

  STACK_FMT_BEGIN()

void
egl_endVertexShaderEXT
ESDL_DRIVAPI_3
{
  /* void glEndVertexShaderEXT(void); */

  STACK_FMT_BEGIN()

void
egl_bindVertexShaderEXT
ESDL_DRIVAPI_3
{
  /* void glBindVertexShaderEXT(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_genVertexShadersEXT
ESDL_DRIVAPI_3
{
  /* GLuint glGenVertexShadersEXT(GLuint range); */

  STACK_FMT_BEGIN()

void
egl_deleteVertexShaderEXT
ESDL_DRIVAPI_3
{
  /* void glDeleteVertexShaderEXT(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_shaderOp1EXT
ESDL_DRIVAPI_3
{
  /* void glShaderOp1EXT(GLenum op, GLuint res, GLuint arg1); */

  STACK_FMT_BEGIN()

void
egl_shaderOp2EXT
ESDL_DRIVAPI_3
{
  /* void glShaderOp2EXT(GLenum op, GLuint res, GLuint arg1, GLuint arg2); */

  STACK_FMT_BEGIN()

void
egl_shaderOp3EXT
ESDL_DRIVAPI_3
{
  /* void glShaderOp3EXT(GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3); */

  STACK_FMT_BEGIN()

void
egl_swizzleEXT
ESDL_DRIVAPI_3
{
  /* void glSwizzleEXT(GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW); */

  STACK_FMT_BEGIN()

void
egl_writeMaskEXT
ESDL_DRIVAPI_3
{
  /* void glWriteMaskEXT(GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW); */

  STACK_FMT_BEGIN()

void
egl_insertComponentEXT
ESDL_DRIVAPI_3
{
  /* void glInsertComponentEXT(GLuint res, GLuint src, GLuint num); */

  STACK_FMT_BEGIN()

void
egl_extractComponentEXT
ESDL_DRIVAPI_3
{
  /* void glExtractComponentEXT(GLuint res, GLuint src, GLuint num); */

  STACK_FMT_BEGIN()

void
egl_genSymbolsEXT
ESDL_DRIVAPI_3
{
  /* GLuint glGenSymbolsEXT(GLenum datatype, GLenum storagetype, GLenum range, GLuint components); */

  STACK_FMT_BEGIN()

void
egl_setInvariantEXT
ESDL_DRIVAPI_3
{
  /* void glSetInvariantEXT(GLuint id, GLenum type, const GLvoid* addr); */

  STACK_FMT_BEGIN()

void
egl_setLocalConstantEXT
ESDL_DRIVAPI_3
{
  /* void glSetLocalConstantEXT(GLuint id, GLenum type, const GLvoid* addr); */

  STACK_FMT_BEGIN()

void
egl_variantbvEXT
ESDL_DRIVAPI_3
{
  /* void glVariantbvEXT(GLuint id, const GLbyte* addr); */

  STACK_FMT_BEGIN()

void
egl_variantsvEXT
ESDL_DRIVAPI_3
{
  /* void glVariantsvEXT(GLuint id, const GLshort* addr); */

  STACK_FMT_BEGIN()

void
egl_variantivEXT
ESDL_DRIVAPI_3
{
  /* void glVariantivEXT(GLuint id, const GLint* addr); */

  STACK_FMT_BEGIN()

void
egl_variantfvEXT
ESDL_DRIVAPI_3
{
  /* void glVariantfvEXT(GLuint id, const GLfloat* addr); */

  STACK_FMT_BEGIN()

void
egl_variantdvEXT
ESDL_DRIVAPI_3
{
  /* void glVariantdvEXT(GLuint id, const GLdouble* addr); */

  STACK_FMT_BEGIN()

void
egl_variantubvEXT
ESDL_DRIVAPI_3
{
  /* void glVariantubvEXT(GLuint id, const GLubyte* addr); */

  STACK_FMT_BEGIN()

void
egl_variantusvEXT
ESDL_DRIVAPI_3
{
  /* void glVariantusvEXT(GLuint id, const GLushort* addr); */

  STACK_FMT_BEGIN()

void
egl_variantuivEXT
ESDL_DRIVAPI_3
{
  /* void glVariantuivEXT(GLuint id, const GLuint* addr); */

  STACK_FMT_BEGIN()

void
egl_variantPointerEXT
ESDL_DRIVAPI_3
{
  /* void glVariantPointerEXT(GLuint id, GLenum type, GLuint stride, const GLvoid* addr); */

  STACK_FMT_BEGIN()

void
egl_enableVariantClientStateEXT
ESDL_DRIVAPI_3
{
  /* void glEnableVariantClientStateEXT(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_disableVariantClientStateEXT
ESDL_DRIVAPI_3
{
  /* void glDisableVariantClientStateEXT(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_bindLightParameterEXT
ESDL_DRIVAPI_3
{
  /* GLuint glBindLightParameterEXT(GLenum light, GLenum value); */

  STACK_FMT_BEGIN()

void
egl_bindMaterialParameterEXT
ESDL_DRIVAPI_3
{
  /* GLuint glBindMaterialParameterEXT(GLenum face, GLenum value); */

  STACK_FMT_BEGIN()

void
egl_bindTexGenParameterEXT
ESDL_DRIVAPI_3
{
  /* GLuint glBindTexGenParameterEXT(GLenum unit, GLenum coord, GLenum value); */

  STACK_FMT_BEGIN()

void
egl_bindTextureUnitParameterEXT
ESDL_DRIVAPI_3
{
  /* GLuint glBindTextureUnitParameterEXT(GLenum unit, GLenum value); */

  STACK_FMT_BEGIN()

void
egl_bindParameterEXT
ESDL_DRIVAPI_3
{
  /* GLuint glBindParameterEXT(GLenum value); */

  STACK_FMT_BEGIN()

void
egl_isVariantEnabledEXT
ESDL_DRIVAPI_3
{
  /* GLboolean glIsVariantEnabledEXT(GLuint id, GLenum cap); */

  STACK_FMT_BEGIN()

void
egl_getVariantBooleanvEXT
ESDL_DRIVAPI_3
{
  /* void glGetVariantBooleanvEXT(GLuint id, GLenum value, GLboolean* data); */

  STACK_FMT_BEGIN()

void
egl_getVariantIntegervEXT
ESDL_DRIVAPI_3
{
  /* void glGetVariantIntegervEXT(GLuint id, GLenum value, GLint* data); */

  STACK_FMT_BEGIN()

void
egl_getVariantFloatvEXT
ESDL_DRIVAPI_3
{
  /* void glGetVariantFloatvEXT(GLuint id, GLenum value, GLfloat* data); */

  STACK_FMT_BEGIN()

void
egl_getVariantPointervEXT
ESDL_DRIVAPI_3
{
  /* void glGetVariantPointervEXT(GLuint id, GLenum value, GLvoid** data); */

  STACK_FMT_BEGIN()

void
egl_getInvariantBooleanvEXT
ESDL_DRIVAPI_3
{
  /* void glGetInvariantBooleanvEXT(GLuint id, GLenum value, GLboolean* data); */

  STACK_FMT_BEGIN()

void
egl_getInvariantIntegervEXT
ESDL_DRIVAPI_3
{
  /* void glGetInvariantIntegervEXT(GLuint id, GLenum value, GLint* data); */

  STACK_FMT_BEGIN()

void
egl_getInvariantFloatvEXT
ESDL_DRIVAPI_3
{
  /* void glGetInvariantFloatvEXT(GLuint id, GLenum value, GLfloat* data); */

  STACK_FMT_BEGIN()

void
egl_getLocalConstantBooleanvEXT
ESDL_DRIVAPI_3
{
  /* void glGetLocalConstantBooleanvEXT(GLuint id, GLenum value, GLboolean* data); */

  STACK_FMT_BEGIN()

void
egl_getLocalConstantIntegervEXT
ESDL_DRIVAPI_3
{
  /* void glGetLocalConstantIntegervEXT(GLuint id, GLenum value, GLint* data); */

  STACK_FMT_BEGIN()

void
egl_getLocalConstantFloatvEXT
ESDL_DRIVAPI_3
{
  /* void glGetLocalConstantFloatvEXT(GLuint id, GLenum value, GLfloat* data); */

  STACK_FMT_BEGIN()


/* Going from GL_ATI_vertex_streams */

void
egl_vertexStream1sATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream1sATI(GLenum stream, GLshort x); */

  STACK_FMT_BEGIN()

void
egl_vertexStream1svATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream1svATI(GLenum stream, const GLshort* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream1iATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream1iATI(GLenum stream, GLint x); */

  STACK_FMT_BEGIN()

void
egl_vertexStream1ivATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream1ivATI(GLenum stream, const GLint* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream1fATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream1fATI(GLenum stream, GLfloat x); */

  STACK_FMT_BEGIN()

void
egl_vertexStream1fvATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream1fvATI(GLenum stream, const GLfloat* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream1dATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream1dATI(GLenum stream, GLdouble x); */

  STACK_FMT_BEGIN()

void
egl_vertexStream1dvATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream1dvATI(GLenum stream, const GLdouble* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream2sATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream2sATI(GLenum stream, GLshort x, GLshort y); */

  STACK_FMT_BEGIN()

void
egl_vertexStream2svATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream2svATI(GLenum stream, const GLshort* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream2iATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream2iATI(GLenum stream, GLint x, GLint y); */

  STACK_FMT_BEGIN()

void
egl_vertexStream2ivATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream2ivATI(GLenum stream, const GLint* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream2fATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream2fATI(GLenum stream, GLfloat x, GLfloat y); */

  STACK_FMT_BEGIN()

void
egl_vertexStream2fvATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream2fvATI(GLenum stream, const GLfloat* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream2dATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream2dATI(GLenum stream, GLdouble x, GLdouble y); */

  STACK_FMT_BEGIN()

void
egl_vertexStream2dvATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream2dvATI(GLenum stream, const GLdouble* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream3sATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream3sATI(GLenum stream, GLshort x, GLshort y, GLshort z); */

  STACK_FMT_BEGIN()

void
egl_vertexStream3svATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream3svATI(GLenum stream, const GLshort* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream3iATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream3iATI(GLenum stream, GLint x, GLint y, GLint z); */

  STACK_FMT_BEGIN()

void
egl_vertexStream3ivATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream3ivATI(GLenum stream, const GLint* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream3fATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream3fATI(GLenum stream, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_vertexStream3fvATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream3fvATI(GLenum stream, const GLfloat* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream3dATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream3dATI(GLenum stream, GLdouble x, GLdouble y, GLdouble z); */

  STACK_FMT_BEGIN()

void
egl_vertexStream3dvATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream3dvATI(GLenum stream, const GLdouble* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream4sATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream4sATI(GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w); */

  STACK_FMT_BEGIN()

void
egl_vertexStream4svATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream4svATI(GLenum stream, const GLshort* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream4iATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream4iATI(GLenum stream, GLint x, GLint y, GLint z, GLint w); */

  STACK_FMT_BEGIN()

void
egl_vertexStream4ivATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream4ivATI(GLenum stream, const GLint* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream4fATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream4fATI(GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()

void
egl_vertexStream4fvATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream4fvATI(GLenum stream, const GLfloat* coords); */

  STACK_FMT_BEGIN()

void
egl_vertexStream4dATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream4dATI(GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w); */

  STACK_FMT_BEGIN()

void
egl_vertexStream4dvATI
ESDL_DRIVAPI_3
{
  /* void glVertexStream4dvATI(GLenum stream, const GLdouble* coords); */

  STACK_FMT_BEGIN()

void
egl_normalStream3bATI
ESDL_DRIVAPI_3
{
  /* void glNormalStream3bATI(GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz); */

  STACK_FMT_BEGIN()

void
egl_normalStream3bvATI
ESDL_DRIVAPI_3
{
  /* void glNormalStream3bvATI(GLenum stream, const GLbyte* coords); */

  STACK_FMT_BEGIN()

void
egl_normalStream3sATI
ESDL_DRIVAPI_3
{
  /* void glNormalStream3sATI(GLenum stream, GLshort nx, GLshort ny, GLshort nz); */

  STACK_FMT_BEGIN()

void
egl_normalStream3svATI
ESDL_DRIVAPI_3
{
  /* void glNormalStream3svATI(GLenum stream, const GLshort* coords); */

  STACK_FMT_BEGIN()

void
egl_normalStream3iATI
ESDL_DRIVAPI_3
{
  /* void glNormalStream3iATI(GLenum stream, GLint nx, GLint ny, GLint nz); */

  STACK_FMT_BEGIN()

void
egl_normalStream3ivATI
ESDL_DRIVAPI_3
{
  /* void glNormalStream3ivATI(GLenum stream, const GLint* coords); */

  STACK_FMT_BEGIN()

void
egl_normalStream3fATI
ESDL_DRIVAPI_3
{
  /* void glNormalStream3fATI(GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz); */

  STACK_FMT_BEGIN()

void
egl_normalStream3fvATI
ESDL_DRIVAPI_3
{
  /* void glNormalStream3fvATI(GLenum stream, const GLfloat* coords); */

  STACK_FMT_BEGIN()

void
egl_normalStream3dATI
ESDL_DRIVAPI_3
{
  /* void glNormalStream3dATI(GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz); */

  STACK_FMT_BEGIN()

void
egl_normalStream3dvATI
ESDL_DRIVAPI_3
{
  /* void glNormalStream3dvATI(GLenum stream, const GLdouble* coords); */

  STACK_FMT_BEGIN()

void
egl_clientActiveVertexStreamATI
ESDL_DRIVAPI_3
{
  /* void glClientActiveVertexStreamATI(GLenum stream); */

  STACK_FMT_BEGIN()

void
egl_vertexBlendEnviATI
ESDL_DRIVAPI_3
{
  /* void glVertexBlendEnviATI(GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_vertexBlendEnvfATI
ESDL_DRIVAPI_3
{
  /* void glVertexBlendEnvfATI(GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()


/* Going from GL_ATI_element_array */

void
egl_elementPointerATI
ESDL_DRIVAPI_3
{
  /* void glElementPointerATI(GLenum type, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_drawElementArrayATI
ESDL_DRIVAPI_3
{
  /* void glDrawElementArrayATI(GLenum mode, GLsizei count); */

  STACK_FMT_BEGIN()

void
egl_drawRangeElementArrayATI
ESDL_DRIVAPI_3
{
  /* void glDrawRangeElementArrayATI(GLenum mode, GLuint start, GLuint end, GLsizei count); */

  STACK_FMT_BEGIN()


/* Going from GL_SUN_mesh_array */

void
egl_drawMeshArraysSUN
ESDL_DRIVAPI_3
{
  /* void glDrawMeshArraysSUN(GLenum mode, GLint first, GLsizei count, GLsizei width); */

  STACK_FMT_BEGIN()


/* Going from GL_SUN_slice_accum */
/* Going from GL_NV_multisample_filter_hint */
/* Going from GL_NV_depth_clamp */
/* Going from GL_NV_occlusion_query */

void
egl_genOcclusionQueriesNV
ESDL_DRIVAPI_3
{
  /* void glGenOcclusionQueriesNV(GLsizei n, GLuint* ids); */

  STACK_FMT_BEGIN()

void
egl_deleteOcclusionQueriesNV
ESDL_DRIVAPI_3
{
  /* void glDeleteOcclusionQueriesNV(GLsizei n, const GLuint* ids); */

  STACK_FMT_BEGIN()

void
egl_isOcclusionQueryNV
ESDL_DRIVAPI_3
{
  /* GLboolean glIsOcclusionQueryNV(GLuint id); */

  STACK_FMT_BEGIN()




void
egl_beginOcclusionQueryNV
ESDL_DRIVAPI_3
{
  /* void glBeginOcclusionQueryNV(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_endOcclusionQueryNV
ESDL_DRIVAPI_3
{
  /* void glEndOcclusionQueryNV(void); */

  STACK_FMT_BEGIN()

void
egl_getOcclusionQueryivNV
ESDL_DRIVAPI_3
{
  /* void glGetOcclusionQueryivNV(GLuint id, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getOcclusionQueryuivNV
ESDL_DRIVAPI_3
{
  /* void glGetOcclusionQueryuivNV(GLuint id, GLenum pname, GLuint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_point_sprite */

void
egl_pointParameteriNV
ESDL_DRIVAPI_3
{
  /* void glPointParameteriNV(GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_pointParameterivNV
ESDL_DRIVAPI_3
{
  /* void glPointParameterivNV(GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_texture_shader3 */
/* Going from GL_NV_vertex_program1_1 */
/* Going from GL_EXT_shadow_funcs */
/* Going from GL_EXT_stencil_two_side */

void
egl_activeStencilFaceEXT
ESDL_DRIVAPI_3
{
  /* void glActiveStencilFaceEXT(GLenum face); */

  STACK_FMT_BEGIN()


/* Going from GL_ATI_text_fragment_shader */
/* Going from GL_APPLE_client_storage */
/* Going from GL_APPLE_element_array */

void
egl_elementPointerAPPLE
ESDL_DRIVAPI_3
{
  /* void glElementPointerAPPLE(GLenum type, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_drawElementArrayAPPLE
ESDL_DRIVAPI_3
{
  /* void glDrawElementArrayAPPLE(GLenum mode, GLint first, GLsizei count); */

  STACK_FMT_BEGIN()

void
egl_drawRangeElementArrayAPPLE
ESDL_DRIVAPI_3
{
  /* void glDrawRangeElementArrayAPPLE(GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count); */

  STACK_FMT_BEGIN()

void
egl_multiDrawElementArrayAPPLE
ESDL_DRIVAPI_3
{
  /* void glMultiDrawElementArrayAPPLE(GLenum mode, const GLint* first, const GLsizei* count, GLsizei primcount); */

  STACK_FMT_BEGIN()

void
egl_multiDrawRangeElementArrayAPPLE
ESDL_DRIVAPI_3
{
  /* void glMultiDrawRangeElementArrayAPPLE(GLenum mode, GLuint start, GLuint end, const GLint* first, const GLsizei* count, GLsizei primcount); */

  STACK_FMT_BEGIN()


/* Going from GL_APPLE_fence */

void
egl_genFencesAPPLE
ESDL_DRIVAPI_3
{
  /* void glGenFencesAPPLE(GLsizei n, GLuint* fences); */

  STACK_FMT_BEGIN()

void
egl_deleteFencesAPPLE
ESDL_DRIVAPI_3
{
  /* void glDeleteFencesAPPLE(GLsizei n, const GLuint* fences); */

  STACK_FMT_BEGIN()

void
egl_setFenceAPPLE
ESDL_DRIVAPI_3
{
  /* void glSetFenceAPPLE(GLuint fence); */

  STACK_FMT_BEGIN()

void
egl_isFenceAPPLE
ESDL_DRIVAPI_3
{
  /* GLboolean glIsFenceAPPLE(GLuint fence); */

  STACK_FMT_BEGIN()

void
egl_testFenceAPPLE
ESDL_DRIVAPI_3
{
  /* GLboolean glTestFenceAPPLE(GLuint fence); */

  STACK_FMT_BEGIN()

void
egl_finishFenceAPPLE
ESDL_DRIVAPI_3
{
  /* void glFinishFenceAPPLE(GLuint fence); */

  STACK_FMT_BEGIN()

void
egl_testObjectAPPLE
ESDL_DRIVAPI_3
{
  /* GLboolean glTestObjectAPPLE(GLenum object, GLuint name); */

  STACK_FMT_BEGIN()

void
egl_finishObjectAPPLE
ESDL_DRIVAPI_3
{
  /* void glFinishObjectAPPLE(GLenum object, GLint name); */

  STACK_FMT_BEGIN()


/* Going from GL_APPLE_vertex_array_object */

void
egl_bindVertexArrayAPPLE
ESDL_DRIVAPI_3
{
  /* void glBindVertexArrayAPPLE(GLuint array); */

  STACK_FMT_BEGIN()

void
egl_deleteVertexArraysAPPLE
ESDL_DRIVAPI_3
{
  /* void glDeleteVertexArraysAPPLE(GLsizei n, const GLuint* arrays); */

  STACK_FMT_BEGIN()

void
egl_genVertexArraysAPPLE
ESDL_DRIVAPI_3
{
  /* void glGenVertexArraysAPPLE(GLsizei n, GLuint* arrays); */

  STACK_FMT_BEGIN()

void
egl_isVertexArrayAPPLE
ESDL_DRIVAPI_3
{
  /* GLboolean glIsVertexArrayAPPLE(GLuint array); */

  STACK_FMT_BEGIN()


/* Going from GL_APPLE_vertex_array_range */

void
egl_vertexArrayRangeAPPLE
ESDL_DRIVAPI_3
{
  /* void glVertexArrayRangeAPPLE(GLsizei length, GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_flushVertexArrayRangeAPPLE
ESDL_DRIVAPI_3
{
  /* void glFlushVertexArrayRangeAPPLE(GLsizei length, GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_vertexArrayParameteriAPPLE
ESDL_DRIVAPI_3
{
  /* void glVertexArrayParameteriAPPLE(GLenum pname, GLint param); */

  STACK_FMT_BEGIN()


/* Going from GL_APPLE_ycbcr_422 */
/* Going from GL_S3_s3tc */
/* Going from GL_ATI_draw_buffers */

void
egl_drawBuffersATI
ESDL_DRIVAPI_3
{
  /* void glDrawBuffersATI(GLsizei n, const GLenum* bufs); */

  STACK_FMT_BEGIN()


/* Going from GL_ATI_pixel_format_float */
/* Going from GL_ATI_texture_env_combine3 */
/* Going from GL_ATI_texture_float */
/* Going from GL_NV_float_buffer */
/* Going from GL_NV_fragment_program */

void
egl_programNamedParameter4fNV
ESDL_DRIVAPI_3
{
  /* void glProgramNamedParameter4fNV(GLuint id, GLsizei len, const GLubyte* name, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()

void
egl_programNamedParameter4dNV
ESDL_DRIVAPI_3
{
  /* void glProgramNamedParameter4dNV(GLuint id, GLsizei len, const GLubyte* name, GLdouble x, GLdouble y, GLdouble z, GLdouble w); */

  STACK_FMT_BEGIN()

void
egl_programNamedParameter4fvNV
ESDL_DRIVAPI_3
{
  /* void glProgramNamedParameter4fvNV(GLuint id, GLsizei len, const GLubyte* name, const GLfloat* v); */

  STACK_FMT_BEGIN()

void
egl_programNamedParameter4dvNV
ESDL_DRIVAPI_3
{
  /* void glProgramNamedParameter4dvNV(GLuint id, GLsizei len, const GLubyte* name, const GLdouble* v); */

  STACK_FMT_BEGIN()

void
egl_getProgramNamedParameterfvNV
ESDL_DRIVAPI_3
{
  /* void glGetProgramNamedParameterfvNV(GLuint id, GLsizei len, const GLubyte* name, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getProgramNamedParameterdvNV
ESDL_DRIVAPI_3
{
  /* void glGetProgramNamedParameterdvNV(GLuint id, GLsizei len, const GLubyte* name, GLdouble* params); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_half_float */

void
egl_vertex2hNV
ESDL_DRIVAPI_3
{
  /* void glVertex2hNV(GLhalfNV x, GLhalfNV y); */

  STACK_FMT_BEGIN()

void
egl_vertex2hvNV
ESDL_DRIVAPI_3
{
  /* void glVertex2hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_vertex3hNV
ESDL_DRIVAPI_3
{
  /* void glVertex3hNV(GLhalfNV x, GLhalfNV y, GLhalfNV z); */

  STACK_FMT_BEGIN()

void
egl_vertex3hvNV
ESDL_DRIVAPI_3
{
  /* void glVertex3hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_vertex4hNV
ESDL_DRIVAPI_3
{
  /* void glVertex4hNV(GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w); */

  STACK_FMT_BEGIN()

void
egl_vertex4hvNV
ESDL_DRIVAPI_3
{
  /* void glVertex4hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_normal3hNV
ESDL_DRIVAPI_3
{
  /* void glNormal3hNV(GLhalfNV nx, GLhalfNV ny, GLhalfNV nz); */

  STACK_FMT_BEGIN()

void
egl_normal3hvNV
ESDL_DRIVAPI_3
{
  /* void glNormal3hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_color3hNV
ESDL_DRIVAPI_3
{
  /* void glColor3hNV(GLhalfNV red, GLhalfNV green, GLhalfNV blue); */

  STACK_FMT_BEGIN()

void
egl_color3hvNV
ESDL_DRIVAPI_3
{
  /* void glColor3hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_color4hNV
ESDL_DRIVAPI_3
{
  /* void glColor4hNV(GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha); */

  STACK_FMT_BEGIN()

void
egl_color4hvNV
ESDL_DRIVAPI_3
{
  /* void glColor4hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_texCoord1hNV
ESDL_DRIVAPI_3
{
  /* void glTexCoord1hNV(GLhalfNV s); */

  STACK_FMT_BEGIN()

void
egl_texCoord1hvNV
ESDL_DRIVAPI_3
{
  /* void glTexCoord1hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_texCoord2hNV
ESDL_DRIVAPI_3
{
  /* void glTexCoord2hNV(GLhalfNV s, GLhalfNV t); */

  STACK_FMT_BEGIN()

void
egl_texCoord2hvNV
ESDL_DRIVAPI_3
{
  /* void glTexCoord2hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_texCoord3hNV
ESDL_DRIVAPI_3
{
  /* void glTexCoord3hNV(GLhalfNV s, GLhalfNV t, GLhalfNV r); */

  STACK_FMT_BEGIN()

void
egl_texCoord3hvNV
ESDL_DRIVAPI_3
{
  /* void glTexCoord3hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_texCoord4hNV
ESDL_DRIVAPI_3
{
  /* void glTexCoord4hNV(GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q); */

  STACK_FMT_BEGIN()

void
egl_texCoord4hvNV
ESDL_DRIVAPI_3
{
  /* void glTexCoord4hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1hNV
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1hNV(GLenum target, GLhalfNV s); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord1hvNV
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord1hvNV(GLenum target, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2hNV
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2hNV(GLenum target, GLhalfNV s, GLhalfNV t); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord2hvNV
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord2hvNV(GLenum target, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3hNV
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3hNV(GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord3hvNV
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord3hvNV(GLenum target, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4hNV
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4hNV(GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoord4hvNV
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoord4hvNV(GLenum target, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_fogCoordhNV
ESDL_DRIVAPI_3
{
  /* void glFogCoordhNV(GLhalfNV fog); */

  STACK_FMT_BEGIN()

void
egl_fogCoordhvNV
ESDL_DRIVAPI_3
{
  /* void glFogCoordhvNV(const GLhalfNV* fog); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3hNV
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3hNV(GLhalfNV red, GLhalfNV green, GLhalfNV blue); */

  STACK_FMT_BEGIN()

void
egl_secondaryColor3hvNV
ESDL_DRIVAPI_3
{
  /* void glSecondaryColor3hvNV(const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_vertexWeighthNV
ESDL_DRIVAPI_3
{
  /* void glVertexWeighthNV(GLhalfNV weight); */

  STACK_FMT_BEGIN()

void
egl_vertexWeighthvNV
ESDL_DRIVAPI_3
{
  /* void glVertexWeighthvNV(const GLhalfNV* weight); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1hNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1hNV(GLuint index, GLhalfNV x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib1hvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib1hvNV(GLuint index, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2hNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2hNV(GLuint index, GLhalfNV x, GLhalfNV y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib2hvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib2hvNV(GLuint index, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3hNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3hNV(GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib3hvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib3hvNV(GLuint index, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4hNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4hNV(GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttrib4hvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttrib4hvNV(GLuint index, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs1hvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs1hvNV(GLuint index, GLsizei n, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs2hvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs2hvNV(GLuint index, GLsizei n, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs3hvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs3hvNV(GLuint index, GLsizei n, const GLhalfNV* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribs4hvNV
ESDL_DRIVAPI_3
{
  /* void glVertexAttribs4hvNV(GLuint index, GLsizei n, const GLhalfNV* v); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_pixel_data_range */

void
egl_pixelDataRangeNV
ESDL_DRIVAPI_3
{
  /* void glPixelDataRangeNV(GLenum target, GLsizei length, GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_flushPixelDataRangeNV
ESDL_DRIVAPI_3
{
  /* void glFlushPixelDataRangeNV(GLenum target); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_primitive_restart */

void
egl_primitiveRestartNV
ESDL_DRIVAPI_3
{
  /* void glPrimitiveRestartNV(void); */

  STACK_FMT_BEGIN()

void
egl_primitiveRestartIndexNV
ESDL_DRIVAPI_3
{
  /* void glPrimitiveRestartIndexNV(GLuint index); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_texture_expand_normal */
/* Going from GL_NV_vertex_program2 */
/* Going from GL_ATI_map_object_buffer */

void
egl_mapObjectBufferATI
ESDL_DRIVAPI_3
{
  /* GLvoid* glMapObjectBufferATI(GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_unmapObjectBufferATI
ESDL_DRIVAPI_3
{
  /* void glUnmapObjectBufferATI(GLuint buffer); */

  STACK_FMT_BEGIN()


/* Going from GL_ATI_separate_stencil */

void
egl_stencilOpSeparateATI
ESDL_DRIVAPI_3
{
  /* void glStencilOpSeparateATI(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass); */

  STACK_FMT_BEGIN()

void
egl_stencilFuncSeparateATI
ESDL_DRIVAPI_3
{
  /* void glStencilFuncSeparateATI(GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask); */

  STACK_FMT_BEGIN()


/* Going from GL_ATI_vertex_attrib_array_object */

void
egl_vertexAttribArrayObjectATI
ESDL_DRIVAPI_3
{
  /* void glVertexAttribArrayObjectATI(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribArrayObjectfvATI
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribArrayObjectfvATI(GLuint index, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribArrayObjectivATI
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribArrayObjectivATI(GLuint index, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_OES_read_format */
/* Going from GL_EXT_depth_bounds_test */

void
egl_depthBoundsEXT
ESDL_DRIVAPI_3
{
  /* void glDepthBoundsEXT(GLclampd zmin, GLclampd zmax); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_texture_mirror_clamp */
/* Going from GL_EXT_blend_equation_separate */

void
egl_blendEquationSeparateEXT
ESDL_DRIVAPI_3
{
  /* void glBlendEquationSeparateEXT(GLenum modeRGB, GLenum modeAlpha); */

  STACK_FMT_BEGIN()


/* Going from GL_MESA_pack_invert */
/* Going from GL_MESA_ycbcr_texture */
/* Going from GL_EXT_pixel_buffer_object */
/* Going from GL_NV_fragment_program_option */
/* Going from GL_NV_fragment_program2 */
/* Going from GL_NV_vertex_program2_option */
/* Going from GL_NV_vertex_program3 */
/* Going from GL_EXT_framebuffer_object */

void
egl_isRenderbufferEXT
ESDL_DRIVAPI_3
{
  /* GLboolean glIsRenderbufferEXT(GLuint renderbuffer); */

  STACK_FMT_BEGIN()

void
egl_bindRenderbufferEXT
ESDL_DRIVAPI_3
{
  /* void glBindRenderbufferEXT(GLenum target, GLuint renderbuffer); */

  STACK_FMT_BEGIN()

void
egl_deleteRenderbuffersEXT
ESDL_DRIVAPI_3
{
  /* void glDeleteRenderbuffersEXT(GLsizei n, const GLuint* renderbuffers); */

  STACK_FMT_BEGIN()

void
egl_genRenderbuffersEXT
ESDL_DRIVAPI_3
{
  /* void glGenRenderbuffersEXT(GLsizei n, GLuint* renderbuffers); */

  STACK_FMT_BEGIN()

void
egl_renderbufferStorageEXT
ESDL_DRIVAPI_3
{
  /* void glRenderbufferStorageEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_getRenderbufferParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetRenderbufferParameterivEXT(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_isFramebufferEXT
ESDL_DRIVAPI_3
{
  /* GLboolean glIsFramebufferEXT(GLuint framebuffer); */

  STACK_FMT_BEGIN()

void
egl_bindFramebufferEXT
ESDL_DRIVAPI_3
{
  /* void glBindFramebufferEXT(GLenum target, GLuint framebuffer); */

  STACK_FMT_BEGIN()

void
egl_deleteFramebuffersEXT
ESDL_DRIVAPI_3
{
  /* void glDeleteFramebuffersEXT(GLsizei n, const GLuint* framebuffers); */

  STACK_FMT_BEGIN()

void
egl_genFramebuffersEXT
ESDL_DRIVAPI_3
{
  /* void glGenFramebuffersEXT(GLsizei n, GLuint* framebuffers); */

  STACK_FMT_BEGIN()

void
egl_checkFramebufferStatusEXT
ESDL_DRIVAPI_3
{
  /* GLenum glCheckFramebufferStatusEXT(GLenum target); */

  STACK_FMT_BEGIN()

void
egl_framebufferTexture1DEXT
ESDL_DRIVAPI_3
{
  /* void glFramebufferTexture1DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level); */

  STACK_FMT_BEGIN()

void
egl_framebufferTexture2DEXT
ESDL_DRIVAPI_3
{
  /* void glFramebufferTexture2DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level); */

  STACK_FMT_BEGIN()

void
egl_framebufferTexture3DEXT
ESDL_DRIVAPI_3
{
  /* void glFramebufferTexture3DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset); */

  STACK_FMT_BEGIN()

void
egl_framebufferRenderbufferEXT
ESDL_DRIVAPI_3
{
  /* void glFramebufferRenderbufferEXT(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer); */

  STACK_FMT_BEGIN()

void
egl_getFramebufferAttachmentParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetFramebufferAttachmentParameterivEXT(GLenum target, GLenum attachment, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_generateMipmapEXT
ESDL_DRIVAPI_3
{
  /* void glGenerateMipmapEXT(GLenum target); */

  STACK_FMT_BEGIN()


/* Going from GL_GREMEDY_string_marker */

void
egl_stringMarkerGREMEDY
ESDL_DRIVAPI_3
{
  /* void glStringMarkerGREMEDY(GLsizei len, const GLvoid* string); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_packed_depth_stencil */
/* Going from GL_EXT_stencil_clear_tag */

void
egl_stencilClearTagEXT
ESDL_DRIVAPI_3
{
  /* void glStencilClearTagEXT(GLsizei stencilTagBits, GLuint stencilClearTag); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_texture_sRGB */
/* Going from GL_EXT_framebuffer_blit */

void
egl_blitFramebufferEXT
ESDL_DRIVAPI_3
{
  /* void glBlitFramebufferEXT(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_framebuffer_multisample */

void
egl_renderbufferStorageMultisampleEXT
ESDL_DRIVAPI_3
{
  /* void glRenderbufferStorageMultisampleEXT(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()


/* Going from GL_MESAX_texture_stack */
/* Going from GL_EXT_timer_query */

void
egl_getQueryObjecti64vEXT
ESDL_DRIVAPI_3
{
  /* void glGetQueryObjecti64vEXT(GLuint id, GLenum pname, GLint64EXT* params); */

  STACK_FMT_BEGIN()

void
egl_getQueryObjectui64vEXT
ESDL_DRIVAPI_3
{
  /* void glGetQueryObjectui64vEXT(GLuint id, GLenum pname, GLuint64EXT* params); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_gpu_program_parameters */

void
egl_programEnvParameters4fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParameters4fvEXT(GLenum target, GLuint index, GLsizei count, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_programLocalParameters4fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParameters4fvEXT(GLenum target, GLuint index, GLsizei count, const GLfloat* params); */

  STACK_FMT_BEGIN()


/* Going from GL_APPLE_flush_buffer_range */

void
egl_bufferParameteriAPPLE
ESDL_DRIVAPI_3
{
  /* void glBufferParameteriAPPLE(GLenum target, GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_flushMappedBufferRangeAPPLE
ESDL_DRIVAPI_3
{
  /* void glFlushMappedBufferRangeAPPLE(GLenum target, GLintptr offset, GLsizeiptr size); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_gpu_program4 */

void
egl_programLocalParameterI4iNV
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParameterI4iNV(GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w); */

  STACK_FMT_BEGIN()

void
egl_programLocalParameterI4ivNV
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParameterI4ivNV(GLenum target, GLuint index, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_programLocalParametersI4ivNV
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParametersI4ivNV(GLenum target, GLuint index, GLsizei count, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_programLocalParameterI4uiNV
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParameterI4uiNV(GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w); */

  STACK_FMT_BEGIN()

void
egl_programLocalParameterI4uivNV
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParameterI4uivNV(GLenum target, GLuint index, const GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_programLocalParametersI4uivNV
ESDL_DRIVAPI_3
{
  /* void glProgramLocalParametersI4uivNV(GLenum target, GLuint index, GLsizei count, const GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_programEnvParameterI4iNV
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParameterI4iNV(GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w); */

  STACK_FMT_BEGIN()

void
egl_programEnvParameterI4ivNV
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParameterI4ivNV(GLenum target, GLuint index, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_programEnvParametersI4ivNV
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParametersI4ivNV(GLenum target, GLuint index, GLsizei count, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_programEnvParameterI4uiNV
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParameterI4uiNV(GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w); */

  STACK_FMT_BEGIN()

void
egl_programEnvParameterI4uivNV
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParameterI4uivNV(GLenum target, GLuint index, const GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_programEnvParametersI4uivNV
ESDL_DRIVAPI_3
{
  /* void glProgramEnvParametersI4uivNV(GLenum target, GLuint index, GLsizei count, const GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_getProgramLocalParameterIivNV
ESDL_DRIVAPI_3
{
  /* void glGetProgramLocalParameterIivNV(GLenum target, GLuint index, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getProgramLocalParameterIuivNV
ESDL_DRIVAPI_3
{
  /* void glGetProgramLocalParameterIuivNV(GLenum target, GLuint index, GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_getProgramEnvParameterIivNV
ESDL_DRIVAPI_3
{
  /* void glGetProgramEnvParameterIivNV(GLenum target, GLuint index, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getProgramEnvParameterIuivNV
ESDL_DRIVAPI_3
{
  /* void glGetProgramEnvParameterIuivNV(GLenum target, GLuint index, GLuint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_geometry_program4 */

void
egl_programVertexLimitNV
ESDL_DRIVAPI_3
{
  /* void glProgramVertexLimitNV(GLenum target, GLint limit); */

  STACK_FMT_BEGIN()

void
egl_framebufferTextureEXT
ESDL_DRIVAPI_3
{
  /* void glFramebufferTextureEXT(GLenum target, GLenum attachment, GLuint texture, GLint level); */

  STACK_FMT_BEGIN()

void
egl_framebufferTextureLayerEXT
ESDL_DRIVAPI_3
{
  /* void glFramebufferTextureLayerEXT(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer); */

  STACK_FMT_BEGIN()

void
egl_framebufferTextureFaceEXT
ESDL_DRIVAPI_3
{
  /* void glFramebufferTextureFaceEXT(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_geometry_shader4 */

void
egl_programParameteriEXT
ESDL_DRIVAPI_3
{
  /* void glProgramParameteriEXT(GLuint program, GLenum pname, GLint value); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_vertex_program4 */

void
egl_vertexAttribI1iEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI1iEXT(GLuint index, GLint x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI2iEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI2iEXT(GLuint index, GLint x, GLint y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI3iEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI3iEXT(GLuint index, GLint x, GLint y, GLint z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4iEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4iEXT(GLuint index, GLint x, GLint y, GLint z, GLint w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI1uiEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI1uiEXT(GLuint index, GLuint x); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI2uiEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI2uiEXT(GLuint index, GLuint x, GLuint y); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI3uiEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI3uiEXT(GLuint index, GLuint x, GLuint y, GLuint z); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4uiEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4uiEXT(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI1ivEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI1ivEXT(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()


void
egl_vertexAttribI2ivEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI2ivEXT(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI3ivEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI3ivEXT(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4ivEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4ivEXT(GLuint index, const GLint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI1uivEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI1uivEXT(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI2uivEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI2uivEXT(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI3uivEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI3uivEXT(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4uivEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4uivEXT(GLuint index, const GLuint* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4bvEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4bvEXT(GLuint index, const GLbyte* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4svEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4svEXT(GLuint index, const GLshort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4ubvEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4ubvEXT(GLuint index, const GLubyte* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribI4usvEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribI4usvEXT(GLuint index, const GLushort* v); */

  STACK_FMT_BEGIN()

void
egl_vertexAttribIPointerEXT
ESDL_DRIVAPI_3
{
  /* void glVertexAttribIPointerEXT(GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribIivEXT
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribIivEXT(GLuint index, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getVertexAttribIuivEXT
ESDL_DRIVAPI_3
{
  /* void glGetVertexAttribIuivEXT(GLuint index, GLenum pname, GLuint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_gpu_shader4 */

void
egl_getUniformuivEXT
ESDL_DRIVAPI_3
{
  /* void glGetUniformuivEXT(GLuint program, GLint location, GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_bindFragDataLocationEXT
ESDL_DRIVAPI_3
{
  /* void glBindFragDataLocationEXT(GLuint program, GLuint color, const GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_getFragDataLocationEXT
ESDL_DRIVAPI_3
{
  /* GLint glGetFragDataLocationEXT(GLuint program, const GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_uniform1uiEXT
ESDL_DRIVAPI_3
{
  /* void glUniform1uiEXT(GLint location, GLuint v0); */

  STACK_FMT_BEGIN()

void
egl_uniform2uiEXT
ESDL_DRIVAPI_3
{
  /* void glUniform2uiEXT(GLint location, GLuint v0, GLuint v1); */

  STACK_FMT_BEGIN()

void
egl_uniform3uiEXT
ESDL_DRIVAPI_3
{
  /* void glUniform3uiEXT(GLint location, GLuint v0, GLuint v1, GLuint v2); */

  STACK_FMT_BEGIN()

void
egl_uniform4uiEXT
ESDL_DRIVAPI_3
{
  /* void glUniform4uiEXT(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3); */

  STACK_FMT_BEGIN()

void
egl_uniform1uivEXT
ESDL_DRIVAPI_3
{
  /* void glUniform1uivEXT(GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform2uivEXT
ESDL_DRIVAPI_3
{
  /* void glUniform2uivEXT(GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform3uivEXT
ESDL_DRIVAPI_3
{
  /* void glUniform3uivEXT(GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_uniform4uivEXT
ESDL_DRIVAPI_3
{
  /* void glUniform4uivEXT(GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_draw_instanced */

void
egl_drawArraysInstancedEXT
ESDL_DRIVAPI_3
{
  /* void glDrawArraysInstancedEXT(GLenum mode, GLint start, GLsizei count, GLsizei primcount); */

  STACK_FMT_BEGIN()

void
egl_drawElementsInstancedEXT
ESDL_DRIVAPI_3
{
  /* void glDrawElementsInstancedEXT(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei primcount); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_packed_float */
/* Going from GL_EXT_texture_array */
/* Going from GL_EXT_texture_buffer_object */

void
egl_texBufferEXT
ESDL_DRIVAPI_3
{
  /* void glTexBufferEXT(GLenum target, GLenum internalformat, GLuint buffer); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_texture_compression_latc */
/* Going from GL_EXT_texture_compression_rgtc */
/* Going from GL_EXT_texture_shared_exponent */
/* Going from GL_NV_depth_buffer_float */

void
egl_depthRangedNV
ESDL_DRIVAPI_3
{
  STACK_FMT_BEGIN()

void
egl_clearDepthdNV
ESDL_DRIVAPI_3
{
  /* void glClearDepthdNV(GLdouble depth); */

  STACK_FMT_BEGIN()

void
egl_depthBoundsdNV
ESDL_DRIVAPI_3
{
  /* void glDepthBoundsdNV(GLdouble zmin, GLdouble zmax); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_fragment_program4 */
/* Going from GL_NV_framebuffer_multisample_coverage */

void
egl_renderbufferStorageMultisampleCoverageNV
ESDL_DRIVAPI_3
{
  /* void glRenderbufferStorageMultisampleCoverageNV(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_framebuffer_sRGB */
/* Going from GL_NV_geometry_shader4 */
/* Going from GL_NV_parameter_buffer_object */

void
egl_programBufferParametersfvNV
ESDL_DRIVAPI_3
{
  /* void glProgramBufferParametersfvNV(GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_programBufferParametersIivNV
ESDL_DRIVAPI_3
{
  /* void glProgramBufferParametersIivNV(GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_programBufferParametersIuivNV
ESDL_DRIVAPI_3
{
  /* void glProgramBufferParametersIuivNV(GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLuint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_draw_buffers2 */

void
egl_colorMaskIndexedEXT
ESDL_DRIVAPI_3
{
  /* void glColorMaskIndexedEXT(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a); */

  STACK_FMT_BEGIN()

void
egl_getBooleanIndexedvEXT
ESDL_DRIVAPI_3
{
  /* void glGetBooleanIndexedvEXT(GLenum target, GLuint index, GLboolean* data); */

  STACK_FMT_BEGIN()


void
egl_getIntegerIndexedvEXT
ESDL_DRIVAPI_3
{
  /* void glGetIntegerIndexedvEXT(GLenum target, GLuint index, GLint* data); */

  STACK_FMT_BEGIN()

void
egl_enableIndexedEXT
ESDL_DRIVAPI_3
{
  /* void glEnableIndexedEXT(GLenum target, GLuint index); */

  STACK_FMT_BEGIN()

void
egl_disableIndexedEXT
ESDL_DRIVAPI_3
{
  /* void glDisableIndexedEXT(GLenum target, GLuint index); */

  STACK_FMT_BEGIN()

void
egl_isEnabledIndexedEXT
ESDL_DRIVAPI_3
{
  /* GLboolean glIsEnabledIndexedEXT(GLenum target, GLuint index); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_transform_feedback */

void
egl_beginTransformFeedbackNV
ESDL_DRIVAPI_3
{
  /* void glBeginTransformFeedbackNV(GLenum primitiveMode); */

  STACK_FMT_BEGIN()

void
egl_endTransformFeedbackNV
ESDL_DRIVAPI_3
{
  /* void glEndTransformFeedbackNV(void); */

  STACK_FMT_BEGIN()

void
egl_transformFeedbackAttribsNV
ESDL_DRIVAPI_3
{
  /* void glTransformFeedbackAttribsNV(GLuint count, const GLint* attribs, GLenum bufferMode); */

  STACK_FMT_BEGIN()

void
egl_bindBufferRangeNV
ESDL_DRIVAPI_3
{
  /* void glBindBufferRangeNV(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size); */

  STACK_FMT_BEGIN()

void
egl_bindBufferOffsetNV
ESDL_DRIVAPI_3
{
  /* void glBindBufferOffsetNV(GLenum target, GLuint index, GLuint buffer, GLintptr offset); */

  STACK_FMT_BEGIN()

void
egl_bindBufferBaseNV
ESDL_DRIVAPI_3
{
  /* void glBindBufferBaseNV(GLenum target, GLuint index, GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_transformFeedbackVaryingsNV
ESDL_DRIVAPI_3
{
  /* void glTransformFeedbackVaryingsNV(GLuint program, GLsizei count, const GLint* locations, GLenum bufferMode); */

  STACK_FMT_BEGIN()

void
egl_activeVaryingNV
ESDL_DRIVAPI_3
{
  /* void glActiveVaryingNV(GLuint program, const GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_getVaryingLocationNV
ESDL_DRIVAPI_3
{
  /* GLint glGetVaryingLocationNV(GLuint program, const GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_getActiveVaryingNV
ESDL_DRIVAPI_3
{
  /* void glGetActiveVaryingNV(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name); */

  STACK_FMT_BEGIN()

void
egl_getTransformFeedbackVaryingNV
ESDL_DRIVAPI_3
{
  /* void glGetTransformFeedbackVaryingNV(GLuint program, GLuint index, GLint* location); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_bindable_uniform */

void
egl_uniformBufferEXT
ESDL_DRIVAPI_3
{
  /* void glUniformBufferEXT(GLuint program, GLint location, GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_getUniformBufferSizeEXT
ESDL_DRIVAPI_3
{
  /* GLint glGetUniformBufferSizeEXT(GLuint program, GLint location); */

  STACK_FMT_BEGIN()

void
egl_getUniformOffsetEXT
ESDL_DRIVAPI_3
{
  /* GLintptr glGetUniformOffsetEXT(GLuint program, GLint location); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_texture_integer */

void
egl_texParameterIivEXT
ESDL_DRIVAPI_3
{
  /* void glTexParameterIivEXT(GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_texParameterIuivEXT
ESDL_DRIVAPI_3
{
  /* void glTexParameterIuivEXT(GLenum target, GLenum pname, const GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_getTexParameterIivEXT
ESDL_DRIVAPI_3
{
  /* void glGetTexParameterIivEXT(GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getTexParameterIuivEXT
ESDL_DRIVAPI_3
{
  /* void glGetTexParameterIuivEXT(GLenum target, GLenum pname, GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_clearColorIiEXT
ESDL_DRIVAPI_3
{
  /* void glClearColorIiEXT(GLint red, GLint green, GLint blue, GLint alpha); */

  STACK_FMT_BEGIN()

void
egl_clearColorIuiEXT
ESDL_DRIVAPI_3
{
  /* void glClearColorIuiEXT(GLuint red, GLuint green, GLuint blue, GLuint alpha); */

  STACK_FMT_BEGIN()


/* Going from GL_GREMEDY_frame_terminator */

void
egl_frameTerminatorGREMEDY
ESDL_DRIVAPI_3
{
  /* void glFrameTerminatorGREMEDY(void); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_conditional_render */

void
egl_beginConditionalRenderNV
ESDL_DRIVAPI_3
{
  /* void glBeginConditionalRenderNV(GLuint id, GLenum mode); */

  STACK_FMT_BEGIN()

void
egl_endConditionalRenderNV
ESDL_DRIVAPI_3
{
  /* void glEndConditionalRenderNV(void); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_present_video */

void
egl_presentFrameKeyedNV
ESDL_DRIVAPI_3
{
  /* void glPresentFrameKeyedNV(GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1); */

  STACK_FMT_BEGIN()

void
egl_presentFrameDualFillNV
ESDL_DRIVAPI_3
{
  /* void glPresentFrameDualFillNV(GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3); */

  STACK_FMT_BEGIN()

void
egl_getVideoivNV
ESDL_DRIVAPI_3
{
  /* void glGetVideoivNV(GLuint video_slot, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getVideouivNV
ESDL_DRIVAPI_3
{
  /* void glGetVideouivNV(GLuint video_slot, GLenum pname, GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_getVideoi64vNV
ESDL_DRIVAPI_3
{
  /* void glGetVideoi64vNV(GLuint video_slot, GLenum pname, GLint64EXT* params); */

  STACK_FMT_BEGIN()

void
egl_getVideoui64vNV
ESDL_DRIVAPI_3
{
  /* void glGetVideoui64vNV(GLuint video_slot, GLenum pname, GLuint64EXT* params); */

  STACK_FMT_BEGIN()

void
egl_videoParameterivNV
ESDL_DRIVAPI_3
{
  /* void glVideoParameterivNV(GLuint video_slot, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_transform_feedback */

void
egl_beginTransformFeedbackEXT
ESDL_DRIVAPI_3
{
  /* void glBeginTransformFeedbackEXT(GLenum primitiveMode); */

  STACK_FMT_BEGIN()

void
egl_endTransformFeedbackEXT
ESDL_DRIVAPI_3
{
  /* void glEndTransformFeedbackEXT(void); */

  STACK_FMT_BEGIN()

void
egl_bindBufferRangeEXT
ESDL_DRIVAPI_3
{
  /* void glBindBufferRangeEXT(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size); */

  STACK_FMT_BEGIN()

void
egl_bindBufferOffsetEXT
ESDL_DRIVAPI_3
{
  /* void glBindBufferOffsetEXT(GLenum target, GLuint index, GLuint buffer, GLintptr offset); */

  STACK_FMT_BEGIN()


void
egl_bindBufferBaseEXT
ESDL_DRIVAPI_3
{
  /* void glBindBufferBaseEXT(GLenum target, GLuint index, GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_transformFeedbackVaryingsEXT
ESDL_DRIVAPI_3
{
  /* void glTransformFeedbackVaryingsEXT(GLuint program, GLsizei count, const GLchar** varyings, GLenum bufferMode); */

  STACK_FMT_BEGIN()

void
egl_getTransformFeedbackVaryingEXT
ESDL_DRIVAPI_3
{
  /* void glGetTransformFeedbackVaryingEXT(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_direct_state_access */

void
egl_clientAttribDefaultEXT
ESDL_DRIVAPI_3
{
  /* void glClientAttribDefaultEXT(GLbitfield mask); */

  STACK_FMT_BEGIN()

void
egl_pushClientAttribDefaultEXT
ESDL_DRIVAPI_3
{
  /* void glPushClientAttribDefaultEXT(GLbitfield mask); */

  STACK_FMT_BEGIN()

void
egl_matrixLoadfEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixLoadfEXT(GLenum mode, const GLfloat* m); */

  STACK_FMT_BEGIN()

void
egl_matrixLoaddEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixLoaddEXT(GLenum mode, const GLdouble* m); */

  STACK_FMT_BEGIN()

void
egl_matrixMultfEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixMultfEXT(GLenum mode, const GLfloat* m); */

  STACK_FMT_BEGIN()

void
egl_matrixMultdEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixMultdEXT(GLenum mode, const GLdouble* m); */

  STACK_FMT_BEGIN()

void
egl_matrixLoadIdentityEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixLoadIdentityEXT(GLenum mode); */

  STACK_FMT_BEGIN()

void
egl_matrixRotatefEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixRotatefEXT(GLenum mode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_matrixRotatedEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixRotatedEXT(GLenum mode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z); */

  STACK_FMT_BEGIN()

void
egl_matrixScalefEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixScalefEXT(GLenum mode, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_matrixScaledEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixScaledEXT(GLenum mode, GLdouble x, GLdouble y, GLdouble z); */

  STACK_FMT_BEGIN()

void
egl_matrixTranslatefEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixTranslatefEXT(GLenum mode, GLfloat x, GLfloat y, GLfloat z); */

  STACK_FMT_BEGIN()

void
egl_matrixTranslatedEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixTranslatedEXT(GLenum mode, GLdouble x, GLdouble y, GLdouble z); */

  STACK_FMT_BEGIN()

void
egl_matrixFrustumEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixFrustumEXT(GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar); */

  STACK_FMT_BEGIN()

void
egl_matrixOrthoEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixOrthoEXT(GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar); */

  STACK_FMT_BEGIN()

void
egl_matrixPopEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixPopEXT(GLenum mode); */

  STACK_FMT_BEGIN()

void
egl_matrixPushEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixPushEXT(GLenum mode); */

  STACK_FMT_BEGIN()

void
egl_matrixLoadTransposefEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixLoadTransposefEXT(GLenum mode, const GLfloat* m); */

  STACK_FMT_BEGIN()

void
egl_matrixLoadTransposedEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixLoadTransposedEXT(GLenum mode, const GLdouble* m); */

  STACK_FMT_BEGIN()

void
egl_matrixMultTransposefEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixMultTransposefEXT(GLenum mode, const GLfloat* m); */

  STACK_FMT_BEGIN()

void
egl_matrixMultTransposedEXT
ESDL_DRIVAPI_3
{
  /* void glMatrixMultTransposedEXT(GLenum mode, const GLdouble* m); */

  STACK_FMT_BEGIN()

void
egl_textureParameterfEXT
ESDL_DRIVAPI_3
{
  /* void glTextureParameterfEXT(GLuint texture, GLenum target, GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_textureParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glTextureParameterfvEXT(GLuint texture, GLenum target, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_textureParameteriEXT
ESDL_DRIVAPI_3
{
  /* void glTextureParameteriEXT(GLuint texture, GLenum target, GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_textureParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glTextureParameterivEXT(GLuint texture, GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_textureImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glTextureImage1DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_textureImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glTextureImage2DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_textureSubImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glTextureSubImage1DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_textureSubImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glTextureSubImage2DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_copyTextureImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyTextureImage1DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border); */

  STACK_FMT_BEGIN()

void
egl_copyTextureImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyTextureImage2DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border); */

  STACK_FMT_BEGIN()

void
egl_copyTextureSubImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyTextureSubImage1DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width); */

  STACK_FMT_BEGIN()

void
egl_copyTextureSubImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyTextureSubImage2DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_getTextureImageEXT
ESDL_DRIVAPI_3
{
  /* void glGetTextureImageEXT(GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels); */

  STACK_FMT_BEGIN()


void
egl_getTextureParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetTextureParameterfvEXT(GLuint texture, GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getTextureParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetTextureParameterivEXT(GLuint texture, GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getTextureLevelParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetTextureLevelParameterfvEXT(GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getTextureLevelParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetTextureLevelParameterivEXT(GLuint texture, GLenum target, GLint level, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_textureImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glTextureImage3DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_textureSubImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glTextureSubImage3DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_copyTextureSubImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyTextureSubImage3DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_multiTexParameterfEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexParameterfEXT(GLenum texunit, GLenum target, GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_multiTexParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexParameterfvEXT(GLenum texunit, GLenum target, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_multiTexParameteriEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexParameteriEXT(GLenum texunit, GLenum target, GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_multiTexParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexParameterivEXT(GLenum texunit, GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_multiTexImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexImage1DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_multiTexImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexImage2DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_multiTexSubImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexSubImage1DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_multiTexSubImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexSubImage2DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_copyMultiTexImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyMultiTexImage1DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border); */

  STACK_FMT_BEGIN()

void
egl_copyMultiTexImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyMultiTexImage2DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border); */

  STACK_FMT_BEGIN()

void
egl_copyMultiTexSubImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyMultiTexSubImage1DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width); */

  STACK_FMT_BEGIN()

void
egl_copyMultiTexSubImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyMultiTexSubImage2DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexImageEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexImageEXT(GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexParameterfvEXT(GLenum texunit, GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexParameterivEXT(GLenum texunit, GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexLevelParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexLevelParameterfvEXT(GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexLevelParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexLevelParameterivEXT(GLenum texunit, GLenum target, GLint level, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_multiTexImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexImage3DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_multiTexSubImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexSubImage3DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels); */

  STACK_FMT_BEGIN()

void
egl_copyMultiTexSubImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glCopyMultiTexSubImage3DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_bindMultiTextureEXT
ESDL_DRIVAPI_3
{
  /* void glBindMultiTextureEXT(GLenum texunit, GLenum target, GLuint texture); */

  STACK_FMT_BEGIN()

void
egl_enableClientStateIndexedEXT
ESDL_DRIVAPI_3
{
  /* void glEnableClientStateIndexedEXT(GLenum array, GLuint index); */

  STACK_FMT_BEGIN()

void
egl_disableClientStateIndexedEXT
ESDL_DRIVAPI_3
{
  /* void glDisableClientStateIndexedEXT(GLenum array, GLuint index); */

  STACK_FMT_BEGIN()

void
egl_multiTexCoordPointerEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexCoordPointerEXT(GLenum texunit, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer); */

  STACK_FMT_BEGIN()

void
egl_multiTexEnvfEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexEnvfEXT(GLenum texunit, GLenum target, GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_multiTexEnvfvEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexEnvfvEXT(GLenum texunit, GLenum target, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_multiTexEnviEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexEnviEXT(GLenum texunit, GLenum target, GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_multiTexEnvivEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexEnvivEXT(GLenum texunit, GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_multiTexGendEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexGendEXT(GLenum texunit, GLenum coord, GLenum pname, GLdouble param); */

  STACK_FMT_BEGIN()

void
egl_multiTexGendvEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexGendvEXT(GLenum texunit, GLenum coord, GLenum pname, const GLdouble* params); */

  STACK_FMT_BEGIN()

void
egl_multiTexGenfEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexGenfEXT(GLenum texunit, GLenum coord, GLenum pname, GLfloat param); */

  STACK_FMT_BEGIN()

void
egl_multiTexGenfvEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexGenfvEXT(GLenum texunit, GLenum coord, GLenum pname, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_multiTexGeniEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexGeniEXT(GLenum texunit, GLenum coord, GLenum pname, GLint param); */

  STACK_FMT_BEGIN()

void
egl_multiTexGenivEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexGenivEXT(GLenum texunit, GLenum coord, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexEnvfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexEnvfvEXT(GLenum texunit, GLenum target, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexEnvivEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexEnvivEXT(GLenum texunit, GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexGendvEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexGendvEXT(GLenum texunit, GLenum coord, GLenum pname, GLdouble* params); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexGenfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexGenfvEXT(GLenum texunit, GLenum coord, GLenum pname, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexGenivEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexGenivEXT(GLenum texunit, GLenum coord, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getFloatIndexedvEXT
ESDL_DRIVAPI_3
{
  /* void glGetFloatIndexedvEXT(GLenum target, GLuint index, GLfloat* data); */

  STACK_FMT_BEGIN()

void
egl_getDoubleIndexedvEXT
ESDL_DRIVAPI_3
{
  /* void glGetDoubleIndexedvEXT(GLenum target, GLuint index, GLdouble* data); */

  STACK_FMT_BEGIN()

void
egl_getPointerIndexedvEXT
ESDL_DRIVAPI_3
{
  /* void glGetPointerIndexedvEXT(GLenum target, GLuint index, GLvoid** data); */

  STACK_FMT_BEGIN()

void
egl_compressedTextureImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedTextureImage3DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_compressedTextureImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedTextureImage2DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_compressedTextureImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedTextureImage1DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_compressedTextureSubImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedTextureSubImage3DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_compressedTextureSubImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedTextureSubImage2DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_compressedTextureSubImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedTextureSubImage1DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_getCompressedTextureImageEXT
ESDL_DRIVAPI_3
{
  /* void glGetCompressedTextureImageEXT(GLuint texture, GLenum target, GLint lod, GLvoid* img); */

  STACK_FMT_BEGIN()

void
egl_compressedMultiTexImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedMultiTexImage3DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_compressedMultiTexImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedMultiTexImage2DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_compressedMultiTexImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedMultiTexImage1DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_compressedMultiTexSubImage3DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedMultiTexSubImage3DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_compressedMultiTexSubImage2DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedMultiTexSubImage2DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_compressedMultiTexSubImage1DEXT
ESDL_DRIVAPI_3
{
  /* void glCompressedMultiTexSubImage1DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* bits); */

  STACK_FMT_BEGIN()

void
egl_getCompressedMultiTexImageEXT
ESDL_DRIVAPI_3
{
  /* void glGetCompressedMultiTexImageEXT(GLenum texunit, GLenum target, GLint lod, GLvoid* img); */

  STACK_FMT_BEGIN()

void
egl_namedProgramStringEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramStringEXT(GLuint program, GLenum target, GLenum format, GLsizei len, const GLvoid* string); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParameter4dEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParameter4dEXT(GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParameter4dvEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParameter4dvEXT(GLuint program, GLenum target, GLuint index, const GLdouble* params); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParameter4fEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParameter4fEXT(GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParameter4fvEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParameter4fvEXT(GLuint program, GLenum target, GLuint index, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getNamedProgramLocalParameterdvEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedProgramLocalParameterdvEXT(GLuint program, GLenum target, GLuint index, GLdouble* params); */

  STACK_FMT_BEGIN()

void
egl_getNamedProgramLocalParameterfvEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedProgramLocalParameterfvEXT(GLuint program, GLenum target, GLuint index, GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_getNamedProgramivEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedProgramivEXT(GLuint program, GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getNamedProgramStringEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedProgramStringEXT(GLuint program, GLenum target, GLenum pname, GLvoid* string); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParameters4fvEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParameters4fvEXT(GLuint program, GLenum target, GLuint index, GLsizei count, const GLfloat* params); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParameterI4iEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParameterI4iEXT(GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParameterI4ivEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParameterI4ivEXT(GLuint program, GLenum target, GLuint index, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParametersI4ivEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParametersI4ivEXT(GLuint program, GLenum target, GLuint index, GLsizei count, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParameterI4uiEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParameterI4uiEXT(GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParameterI4uivEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParameterI4uivEXT(GLuint program, GLenum target, GLuint index, const GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_namedProgramLocalParametersI4uivEXT
ESDL_DRIVAPI_3
{
  /* void glNamedProgramLocalParametersI4uivEXT(GLuint program, GLenum target, GLuint index, GLsizei count, const GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_getNamedProgramLocalParameterIivEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedProgramLocalParameterIivEXT(GLuint program, GLenum target, GLuint index, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getNamedProgramLocalParameterIuivEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedProgramLocalParameterIuivEXT(GLuint program, GLenum target, GLuint index, GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_textureParameterIivEXT
ESDL_DRIVAPI_3
{
  /* void glTextureParameterIivEXT(GLuint texture, GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_textureParameterIuivEXT
ESDL_DRIVAPI_3
{
  /* void glTextureParameterIuivEXT(GLuint texture, GLenum target, GLenum pname, const GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_getTextureParameterIivEXT
ESDL_DRIVAPI_3
{
  /* void glGetTextureParameterIivEXT(GLuint texture, GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getTextureParameterIuivEXT
ESDL_DRIVAPI_3
{
  /* void glGetTextureParameterIuivEXT(GLuint texture, GLenum target, GLenum pname, GLuint* params); */

  STACK_FMT_BEGIN()


void
egl_multiTexParameterIivEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexParameterIivEXT(GLenum texunit, GLenum target, GLenum pname, const GLint* params); */

  STACK_FMT_BEGIN()

void
egl_multiTexParameterIuivEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexParameterIuivEXT(GLenum texunit, GLenum target, GLenum pname, const GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexParameterIivEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexParameterIivEXT(GLenum texunit, GLenum target, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getMultiTexParameterIuivEXT
ESDL_DRIVAPI_3
{
  /* void glGetMultiTexParameterIuivEXT(GLenum texunit, GLenum target, GLenum pname, GLuint* params); */

  STACK_FMT_BEGIN()

void
egl_programUniform1fEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform1fEXT(GLuint program, GLint location, GLfloat v0); */

  STACK_FMT_BEGIN()

void
egl_programUniform2fEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform2fEXT(GLuint program, GLint location, GLfloat v0, GLfloat v1); */

  STACK_FMT_BEGIN()

void
egl_programUniform3fEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform3fEXT(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2); */

  STACK_FMT_BEGIN()

void
egl_programUniform4fEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform4fEXT(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3); */

  STACK_FMT_BEGIN()

void
egl_programUniform1iEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform1iEXT(GLuint program, GLint location, GLint v0); */

  STACK_FMT_BEGIN()

void
egl_programUniform2iEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform2iEXT(GLuint program, GLint location, GLint v0, GLint v1); */

  STACK_FMT_BEGIN()

void
egl_programUniform3iEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform3iEXT(GLuint program, GLint location, GLint v0, GLint v1, GLint v2); */

  STACK_FMT_BEGIN()

void
egl_programUniform4iEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform4iEXT(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3); */

  STACK_FMT_BEGIN()

void
egl_programUniform1fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform1fvEXT(GLuint program, GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform2fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform2fvEXT(GLuint program, GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform3fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform3fvEXT(GLuint program, GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform4fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform4fvEXT(GLuint program, GLint location, GLsizei count, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform1ivEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform1ivEXT(GLuint program, GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform2ivEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform2ivEXT(GLuint program, GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform3ivEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform3ivEXT(GLuint program, GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform4ivEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform4ivEXT(GLuint program, GLint location, GLsizei count, const GLint* value); */

  STACK_FMT_BEGIN()

void
egl_programUniformMatrix2fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniformMatrix2fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniformMatrix3fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniformMatrix3fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniformMatrix4fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniformMatrix4fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniformMatrix2x3fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniformMatrix2x3fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniformMatrix3x2fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniformMatrix3x2fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniformMatrix2x4fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniformMatrix2x4fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniformMatrix4x2fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniformMatrix4x2fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniformMatrix3x4fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniformMatrix3x4fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniformMatrix4x3fvEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniformMatrix4x3fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform1uiEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform1uiEXT(GLuint program, GLint location, GLuint v0); */

  STACK_FMT_BEGIN()

void
egl_programUniform2uiEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform2uiEXT(GLuint program, GLint location, GLuint v0, GLuint v1); */

  STACK_FMT_BEGIN()

void
egl_programUniform3uiEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform3uiEXT(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2); */

  STACK_FMT_BEGIN()

void
egl_programUniform4uiEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform4uiEXT(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3); */

  STACK_FMT_BEGIN()

void
egl_programUniform1uivEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform1uivEXT(GLuint program, GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform2uivEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform2uivEXT(GLuint program, GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform3uivEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform3uivEXT(GLuint program, GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_programUniform4uivEXT
ESDL_DRIVAPI_3
{
  /* void glProgramUniform4uivEXT(GLuint program, GLint location, GLsizei count, const GLuint* value); */

  STACK_FMT_BEGIN()

void
egl_namedBufferDataEXT
ESDL_DRIVAPI_3
{
  /* void glNamedBufferDataEXT(GLuint buffer, GLsizeiptr size, const GLvoid* data, GLenum usage); */

  STACK_FMT_BEGIN()

void
egl_namedBufferSubDataEXT
ESDL_DRIVAPI_3
{
  /* void glNamedBufferSubDataEXT(GLuint buffer, GLintptr offset, GLsizeiptr size, const GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_mapNamedBufferEXT
ESDL_DRIVAPI_3
{
  /* GLvoid* glMapNamedBufferEXT(GLuint buffer, GLenum access); */

  STACK_FMT_BEGIN()

void
egl_unmapNamedBufferEXT
ESDL_DRIVAPI_3
{
  /* GLboolean glUnmapNamedBufferEXT(GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_getNamedBufferParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedBufferParameterivEXT(GLuint buffer, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_getNamedBufferPointervEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedBufferPointervEXT(GLuint buffer, GLenum pname, GLvoid** params); */

  STACK_FMT_BEGIN()

void
egl_getNamedBufferSubDataEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedBufferSubDataEXT(GLuint buffer, GLintptr offset, GLsizeiptr size, GLvoid* data); */

  STACK_FMT_BEGIN()

void
egl_textureBufferEXT
ESDL_DRIVAPI_3
{
  /* void glTextureBufferEXT(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_multiTexBufferEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexBufferEXT(GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer); */

  STACK_FMT_BEGIN()

void
egl_namedRenderbufferStorageEXT
ESDL_DRIVAPI_3
{
  /* void glNamedRenderbufferStorageEXT(GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_getNamedRenderbufferParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedRenderbufferParameterivEXT(GLuint renderbuffer, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_checkNamedFramebufferStatusEXT
ESDL_DRIVAPI_3
{
  /* GLenum glCheckNamedFramebufferStatusEXT(GLuint framebuffer, GLenum target); */

  STACK_FMT_BEGIN()

void
egl_namedFramebufferTexture1DEXT
ESDL_DRIVAPI_3
{
  /* void glNamedFramebufferTexture1DEXT(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level); */

  STACK_FMT_BEGIN()

void
egl_namedFramebufferTexture2DEXT
ESDL_DRIVAPI_3
{
  /* void glNamedFramebufferTexture2DEXT(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level); */

  STACK_FMT_BEGIN()

void
egl_namedFramebufferTexture3DEXT
ESDL_DRIVAPI_3
{
  /* void glNamedFramebufferTexture3DEXT(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset); */

  STACK_FMT_BEGIN()

void
egl_namedFramebufferRenderbufferEXT
ESDL_DRIVAPI_3
{
  /* void glNamedFramebufferRenderbufferEXT(GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer); */

  STACK_FMT_BEGIN()

void
egl_getNamedFramebufferAttachmentParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetNamedFramebufferAttachmentParameterivEXT(GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_generateTextureMipmapEXT
ESDL_DRIVAPI_3
{
  /* void glGenerateTextureMipmapEXT(GLuint texture, GLenum target); */

  STACK_FMT_BEGIN()

void
egl_generateMultiTexMipmapEXT
ESDL_DRIVAPI_3
{
  /* void glGenerateMultiTexMipmapEXT(GLenum texunit, GLenum target); */

  STACK_FMT_BEGIN()

void
egl_framebufferDrawBufferEXT
ESDL_DRIVAPI_3
{
  /* void glFramebufferDrawBufferEXT(GLuint framebuffer, GLenum mode); */

  STACK_FMT_BEGIN()

void
egl_framebufferDrawBuffersEXT
ESDL_DRIVAPI_3
{
  /* void glFramebufferDrawBuffersEXT(GLuint framebuffer, GLsizei n, const GLenum* bufs); */

  STACK_FMT_BEGIN()

void
egl_framebufferReadBufferEXT
ESDL_DRIVAPI_3
{
  /* void glFramebufferReadBufferEXT(GLuint framebuffer, GLenum mode); */

  STACK_FMT_BEGIN()

void
egl_getFramebufferParameterivEXT
ESDL_DRIVAPI_3
{
  /* void glGetFramebufferParameterivEXT(GLuint framebuffer, GLenum pname, GLint* params); */

  STACK_FMT_BEGIN()

void
egl_namedRenderbufferStorageMultisampleEXT
ESDL_DRIVAPI_3
{
  /* void glNamedRenderbufferStorageMultisampleEXT(GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_namedRenderbufferStorageMultisampleCoverageEXT
ESDL_DRIVAPI_3
{
  /* void glNamedRenderbufferStorageMultisampleCoverageEXT(GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height); */

  STACK_FMT_BEGIN()

void
egl_namedFramebufferTextureEXT
ESDL_DRIVAPI_3
{
  /* void glNamedFramebufferTextureEXT(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level); */

  STACK_FMT_BEGIN()

void
egl_namedFramebufferTextureLayerEXT
ESDL_DRIVAPI_3
{
  /* void glNamedFramebufferTextureLayerEXT(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer); */

  STACK_FMT_BEGIN()

void
egl_namedFramebufferTextureFaceEXT
ESDL_DRIVAPI_3
{
  /* void glNamedFramebufferTextureFaceEXT(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face); */

  STACK_FMT_BEGIN()

void
egl_textureRenderbufferEXT
ESDL_DRIVAPI_3
{
  /* void glTextureRenderbufferEXT(GLuint texture, GLenum target, GLuint renderbuffer); */

  STACK_FMT_BEGIN()

void
egl_multiTexRenderbufferEXT
ESDL_DRIVAPI_3
{
  /* void glMultiTexRenderbufferEXT(GLenum texunit, GLenum target, GLuint renderbuffer); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_vertex_array_bgra */
/* Going from GL_EXT_texture_swizzle */
/* Going from GL_NV_explicit_multisample */

void
egl_getMultisamplefvNV
ESDL_DRIVAPI_3
{
  /* void glGetMultisamplefvNV(GLenum pname, GLuint index, GLfloat* val); */

  STACK_FMT_BEGIN()

void
egl_sampleMaskIndexedNV
ESDL_DRIVAPI_3
{
  /* void glSampleMaskIndexedNV(GLuint index, GLbitfield mask); */

  STACK_FMT_BEGIN()

void
egl_texRenderbufferNV
ESDL_DRIVAPI_3
{
  /* void glTexRenderbufferNV(GLenum target, GLuint renderbuffer); */

  STACK_FMT_BEGIN()


/* Going from GL_NV_transform_feedback2 */

void
egl_bindTransformFeedbackNV
ESDL_DRIVAPI_3
{
  /* void glBindTransformFeedbackNV(GLenum target, GLuint id); */

  STACK_FMT_BEGIN()

void
egl_deleteTransformFeedbacksNV
ESDL_DRIVAPI_3
{
  /* void glDeleteTransformFeedbacksNV(GLsizei n, const GLuint* ids); */

  STACK_FMT_BEGIN()

void
egl_genTransformFeedbacksNV
ESDL_DRIVAPI_3
{
  /* void glGenTransformFeedbacksNV(GLsizei n, GLuint* ids); */

  STACK_FMT_BEGIN()

void
egl_isTransformFeedbackNV
ESDL_DRIVAPI_3
{
  /* GLboolean glIsTransformFeedbackNV(GLuint id); */

  STACK_FMT_BEGIN()

void
egl_pauseTransformFeedbackNV
ESDL_DRIVAPI_3
{
  /* void glPauseTransformFeedbackNV(void); */

  STACK_FMT_BEGIN()

void
egl_resumeTransformFeedbackNV
ESDL_DRIVAPI_3
{
  /* void glResumeTransformFeedbackNV(void); */

  STACK_FMT_BEGIN()

void
egl_drawTransformFeedbackNV
ESDL_DRIVAPI_3
{
  /* void glDrawTransformFeedbackNV(GLenum mode, GLuint id); */

  STACK_FMT_BEGIN()


/* Going from GL_ATI_meminfo */
/* Going from GL_AMD_performance_monitor */

void
egl_getPerfMonitorGroupsAMD
ESDL_DRIVAPI_3
{
  /* void glGetPerfMonitorGroupsAMD(GLint* numGroups, GLsizei groupsSize, GLuint* groups); */

  STACK_FMT_BEGIN()

void
egl_getPerfMonitorCountersAMD
ESDL_DRIVAPI_3
{
  /* void glGetPerfMonitorCountersAMD(GLuint group, GLint* numCounters, GLint* maxActiveCounters, GLsizei counterSize, GLuint* counters); */

  STACK_FMT_BEGIN()

void
egl_getPerfMonitorGroupStringAMD
ESDL_DRIVAPI_3
{
  /* void glGetPerfMonitorGroupStringAMD(GLuint group, GLsizei bufSize, GLsizei* length, GLchar* groupString); */

  STACK_FMT_BEGIN()

void
egl_getPerfMonitorCounterStringAMD
ESDL_DRIVAPI_3
{
  /* void glGetPerfMonitorCounterStringAMD(GLuint group, GLuint counter, GLsizei bufSize, GLsizei* length, GLchar* counterString); */

  STACK_FMT_BEGIN()

void
egl_getPerfMonitorCounterInfoAMD
ESDL_DRIVAPI_3
{
  /* void glGetPerfMonitorCounterInfoAMD(GLuint group, GLuint counter, GLenum pname, void* data); */

  STACK_FMT_BEGIN()

void
egl_genPerfMonitorsAMD
ESDL_DRIVAPI_3
{
  /* void glGenPerfMonitorsAMD(GLsizei n, GLuint* monitors); */

  STACK_FMT_BEGIN()

void
egl_deletePerfMonitorsAMD
ESDL_DRIVAPI_3
{
  /* void glDeletePerfMonitorsAMD(GLsizei n, GLuint* monitors); */

  STACK_FMT_BEGIN()

void
egl_selectPerfMonitorCountersAMD
ESDL_DRIVAPI_3
{
  /* void glSelectPerfMonitorCountersAMD(GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint* counterList); */

  STACK_FMT_BEGIN()

void
egl_beginPerfMonitorAMD
ESDL_DRIVAPI_3
{
  /* void glBeginPerfMonitorAMD(GLuint monitor); */

  STACK_FMT_BEGIN()

void
egl_endPerfMonitorAMD
ESDL_DRIVAPI_3
{
  /* void glEndPerfMonitorAMD(GLuint monitor); */

  STACK_FMT_BEGIN()

void
egl_getPerfMonitorCounterDataAMD
ESDL_DRIVAPI_3
{
  /* void glGetPerfMonitorCounterDataAMD(GLuint monitor, GLenum pname, GLsizei dataSize, GLuint* data, GLint* bytesWritten); */

  STACK_FMT_BEGIN()


/* Going from GL_AMD_texture_texture4 */
/* Going from GL_AMD_vertex_shader_tesselator */

void
egl_tessellationFactorAMD
ESDL_DRIVAPI_3
{
  /* void glTessellationFactorAMD(GLfloat factor); */

  STACK_FMT_BEGIN()

void
egl_tessellationModeAMD
ESDL_DRIVAPI_3
{
  /* void glTessellationModeAMD(GLenum mode); */

  STACK_FMT_BEGIN()


/* Going from GL_EXT_provoking_vertex */

void
egl_provokingVertexEXT
ESDL_DRIVAPI_3
{
  /* void glProvokingVertexEXT(GLenum mode); */

  STACK_FMT_BEGIN()

