/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_glcorearb.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_GLCOREARB

/* GL_VERSION_1_0 */

EXDL_API(eglc_cullFace)
{
  /* void glCullFace(GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glCullFace
    ( STACK_GET_DATA(mode)
    );
}

EXDL_API(eglc_frontFace)
{
  /* void glFrontFace(GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glFrontFace
    ( STACK_GET_DATA(mode)
    );
}

EXDL_API(eglc_hint)
{
  /* void glHint(GLenum target, GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glHint
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(mode)
    );
}

EXDL_API(eglc_lineWidth)
{
  /* void glLineWidth(GLfloat width) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, width)
  STACK_FMT_END()

    glLineWidth
    ( STACK_GET_DATA(width)
    );
}

EXDL_API(eglc_pointSize)
{
  /* void glPointSize(GLfloat size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, size)
  STACK_FMT_END()

    glPointSize
    ( STACK_GET_DATA(size)
    );
}

EXDL_API(eglc_polygonMode)
{
  /* void glPolygonMode(GLenum face, GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, face)
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glPolygonMode
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(mode)
    );
}

EXDL_API(eglc_scissor)
{
  /* void glScissor(GLint x, GLint y, GLsizei width, GLsizei height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
  STACK_FMT_END()

    glScissor
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

EXDL_API(eglc_texParameterf)
{
  /* void glTexParameterf(GLenum target, GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glTexParameterf
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(eglc_texParameterfv)
{
  /* void glTexParameterfv(GLenum target, GLenum pname, const GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLenum,   pname)
    STACK_FMT_DATA(GLfloat,  params[])
  STACK_FMT_END()

    glTexParameterfv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(eglc_texParameteri)
{
  /* void glTexParameteri(GLenum target, GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glTexParameteri
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(eglc_texParameteriv)
{
  /* void glTexParameteriv(GLenum target, GLenum pname, const GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  params[])
  STACK_FMT_END()

    glTexParameteriv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(eglc_texImage1D)
{
  /* void glTexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid* pixels) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLint,   border)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  pixels[])
  STACK_FMT_END()

    glTexImage1D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(border)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(pixels)
    );
}

EXDL_API(eglc_texImage2D)
{
  /* void glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid* pixels) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLint,   border)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  pixels[])
  STACK_FMT_END()

    glTexImage2D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(border)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(pixels)
    );
}

EXDL_API(eglc_drawBuffer)
{
  /* void glDrawBuffer(GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glDrawBuffer
    ( STACK_GET_DATA(mode)
    );
}

EXDL_API(eglc_clear)
{
  /* void glClear(GLbitfield mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLbitfield, mask)
  STACK_FMT_END()

    glClear
    ( STACK_GET_DATA(mask)
    );
}

EXDL_API(eglc_clearColor)
{
  /* void glClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, red)
    STACK_FMT_DATA(GLfloat, green)
    STACK_FMT_DATA(GLfloat, blue)
    STACK_FMT_DATA(GLfloat, alpha)
  STACK_FMT_END()

    glClearColor
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(eglc_clearStencil)
{
  /* void glClearStencil(GLint s) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, s)
  STACK_FMT_END()

    glClearStencil
    ( STACK_GET_DATA(s)
    );
}

EXDL_API(eglc_clearDepth)
{
  /* void glClearDepth(GLdouble depth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, depth)
  STACK_FMT_END()

    glClearDepth
    ( STACK_GET_DATA(depth)
    );
}

EXDL_API(eglc_stencilMask)
{
  /* void glStencilMask(GLuint mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, mask)
  STACK_FMT_END()

    glStencilMask
    ( STACK_GET_DATA(mask)
    );
}

EXDL_API(eglc_colorMask)
{
  /* void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLboolean, red)
    STACK_FMT_DATA(GLboolean, green)
    STACK_FMT_DATA(GLboolean, blue)
    STACK_FMT_DATA(GLboolean, alpha)
  STACK_FMT_END()

    glColorMask
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(eglc_depthMask)
{
  /* void glDepthMask(GLboolean flag) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLboolean, flag)
  STACK_FMT_END()

    glDepthMask
    ( STACK_GET_DATA(flag)
    );
}

EXDL_API(eglc_disable)
{
  /* void glDisable(GLenum cap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, cap)
  STACK_FMT_END()

    glDisable
    ( STACK_GET_DATA(cap)
    );
}

EXDL_API(eglc_enable)
{
  /* void glEnable(GLenum cap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, cap)
  STACK_FMT_END()

    glEnable
    ( STACK_GET_DATA(cap)
    );
}

EXDL_API(eglc_finish)
{
  /* void glFinish(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glFinish
  (
  );
}

EXDL_API(eglc_flush)
{
  /* void glFlush(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glFlush
  (
  );
}

EXDL_API(eglc_blendFunc)
{
  /* void glBlendFunc(GLenum sfactor, GLenum dfactor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, sfactor)
    STACK_FMT_DATA(GLenum, dfactor)
  STACK_FMT_END()

    glBlendFunc
    ( STACK_GET_DATA(sfactor)
    , STACK_GET_DATA(dfactor)
    );
}

EXDL_API(eglc_logicOp)
{
  /* void glLogicOp(GLenum opcode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, opcode)
  STACK_FMT_END()

    glLogicOp
    ( STACK_GET_DATA(opcode)
    );
}

EXDL_API(eglc_stencilFunc)
{
  /* void glStencilFunc(GLenum func, GLint ref, GLuint mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, func)
    STACK_FMT_DATA(GLint,  ref)
    STACK_FMT_DATA(GLuint, mask)
  STACK_FMT_END()

    glStencilFunc
    ( STACK_GET_DATA(func)
    , STACK_GET_DATA(ref)
    , STACK_GET_DATA(mask)
    );
}

EXDL_API(eglc_stencilOp)
{
  /* void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, fail)
    STACK_FMT_DATA(GLenum, zfail)
    STACK_FMT_DATA(GLenum, zpass)
  STACK_FMT_END()

    glStencilOp
    ( STACK_GET_DATA(fail)
    , STACK_GET_DATA(zfail)
    , STACK_GET_DATA(zpass)
    );
}

EXDL_API(eglc_depthFunc)
{
  /* void glDepthFunc(GLenum func) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, func)
  STACK_FMT_END()

    glDepthFunc
    ( STACK_GET_DATA(func)
    );
}

EXDL_API(eglc_pixelStoref)
{
  /* void glPixelStoref(GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glPixelStoref
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(eglc_pixelStorei)
{
  /* void glPixelStorei(GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glPixelStorei
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(eglc_readBuffer)
{
  /* void glReadBuffer(GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glReadBuffer
    ( STACK_GET_DATA(mode)
    );
}

EXDL_API(eglc_readPixels)
{
  /* void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  pixels[])
  STACK_FMT_END()

    glReadPixels
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(pixels)
    );
}

EXDL_API(eglc_getBooleanv)
{
  /* void glGetBooleanv(GLenum pname, GLboolean* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLboolean, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLboolean))

    glGetBooleanv
    ( STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getDoublev)
{
  /* void glGetDoublev(GLenum pname, GLdouble* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLdouble, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLdouble))

    glGetDoublev
    ( STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getError)
{
  /* GLenum glGetError(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(GLenum)

    glGetError
    (
    );

  THROW_RESULT(GLenum)
}

EXDL_API(eglc_getFloatv)
{
  /* void glGetFloatv(GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLfloat))

    glGetFloatv
    ( STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getIntegerv)
{
  /* void glGetIntegerv(GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetIntegerv
    ( STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getString)
{
  /* const GLubyte* glGetString(GLenum name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, name)
  STACK_FMT_END()

  CATCH_RESULT(const GLubyte*)

    glGetString
    ( STACK_GET_DATA(name)
    );

  THROW_POINTER()
}

EXDL_API(eglc_getTexImage)
{
  /* void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLvoid, pixels)
  FRAME_FMT_END()

    glGetTexImage
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , FRAME_GET_ADDR(pixels)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getTexParameterfv)
{
  /* void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLenum,   pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLfloat))

    glGetTexParameterfv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getTexParameteriv)
{
  /* void glGetTexParameteriv(GLenum target, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetTexParameteriv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getTexLevelParameterfv)
{
  /* void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLint,    level)
    STACK_FMT_DATA(GLenum,   pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLfloat))

    glGetTexLevelParameterfv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getTexLevelParameteriv)
{
  /* void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLint,  level)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetTexLevelParameteriv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_isEnabled)
{
  /* GLboolean glIsEnabled(GLenum cap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, cap)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsEnabled
    ( STACK_GET_DATA(cap)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_depthRange)
{
  /* void glDepthRange(GLdouble near, GLdouble far) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, near)
    STACK_FMT_DATA(GLdouble, far)
  STACK_FMT_END()

    glDepthRange
    ( STACK_GET_DATA(near)
    , STACK_GET_DATA(far)
    );
}

EXDL_API(eglc_viewport)
{
  /* void glViewport(GLint x, GLint y, GLsizei width, GLsizei height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
  STACK_FMT_END()

    glViewport
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

/* GL_VERSION_1_1 */

EXDL_API(eglc_drawArrays)
{
  /* void glDrawArrays(GLenum mode, GLint first, GLsizei count) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLint,   first)
    STACK_FMT_DATA(GLsizei, count)
  STACK_FMT_END()

    glDrawArrays
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(first)
    , STACK_GET_DATA(count)
    );
}

EXDL_API(eglc_drawElements)
{
  /* void glDrawElements(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  indices[])
  STACK_FMT_END()

    glDrawElements
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(indices)
    );
}

EXDL_API(eglc_getPointerv)
{
  /* void glGetPointerv(GLenum pname, GLvoid** params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLvoid,  params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLvoid))

    glGetPointerv
    ( STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_polygonOffset)
{
  /* void glPolygonOffset(GLfloat factor, GLfloat units) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, factor)
    STACK_FMT_DATA(GLfloat, units)
  STACK_FMT_END()

    glPolygonOffset
    ( STACK_GET_DATA(factor)
    , STACK_GET_DATA(units)
    );
}

EXDL_API(eglc_copyTexImage1D)
{
  /* void glCopyTexImage1D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLint,   border)
  STACK_FMT_END()

    glCopyTexImage1D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(border)
    );
}

EXDL_API(eglc_copyTexImage2D)
{
  /* void glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLint,   border)
  STACK_FMT_END()

    glCopyTexImage2D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(border)
    );
}

EXDL_API(eglc_copyTexSubImage1D)
{
  /* void glCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   xoffset)
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
  STACK_FMT_END()

    glCopyTexSubImage1D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(xoffset)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    );
}

EXDL_API(eglc_copyTexSubImage2D)
{
  /* void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   xoffset)
    STACK_FMT_DATA(GLint,   yoffset)
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
  STACK_FMT_END()

    glCopyTexSubImage2D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(xoffset)
    , STACK_GET_DATA(yoffset)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

EXDL_API(eglc_texSubImage1D)
{
  /* void glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   xoffset)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  pixels[])
  STACK_FMT_END()

    glTexSubImage1D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(xoffset)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(pixels)
    );
}

EXDL_API(eglc_texSubImage2D)
{
  /* void glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   xoffset)
    STACK_FMT_DATA(GLint,   yoffset)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  pixels[])
  STACK_FMT_END()

    glTexSubImage2D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(xoffset)
    , STACK_GET_DATA(yoffset)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(pixels)
    );
}

EXDL_API(eglc_bindTexture)
{
  /* void glBindTexture(GLenum target, GLuint texture) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, texture)
  STACK_FMT_END()

    glBindTexture
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(texture)
    );
}

EXDL_API(eglc_deleteTextures)
{
  /* void glDeleteTextures(GLsizei n, const GLuint* textures) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLuint,  textures[])
  STACK_FMT_END()

    glDeleteTextures
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(textures)
    );
}

EXDL_API(eglc_genTextures)
{
  /* void glGenTextures(GLsizei n, GLuint* textures) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, textures)
  FRAME_FMT_END()

    glGenTextures
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(textures)
    );

  THROW_FRAME()
}

EXDL_API(eglc_isTexture)
{
  /* GLboolean glIsTexture(GLuint texture) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, texture)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsTexture
    ( STACK_GET_DATA(texture)
    );

  THROW_RESULT(GLboolean)
}

/* GL_VERSION_1_2 */

EXDL_API(eglc_blendColor)
{
  /* void glBlendColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, red)
    STACK_FMT_DATA(GLfloat, green)
    STACK_FMT_DATA(GLfloat, blue)
    STACK_FMT_DATA(GLfloat, alpha)
  STACK_FMT_END()

    glBlendColor
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(eglc_blendEquation)
{
  /* void glBlendEquation(GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glBlendEquation
    ( STACK_GET_DATA(mode)
    );
}

EXDL_API(eglc_drawRangeElements)
{
  /* void glDrawRangeElements(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid* indices) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLuint,  start)
    STACK_FMT_DATA(GLuint,  end)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  indices[])
  STACK_FMT_END()

    glDrawRangeElements
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(start)
    , STACK_GET_DATA(end)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(indices)
    );
}

EXDL_API(eglc_texImage3D)
{
  /* void glTexImage3D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLsizei, depth)
    STACK_FMT_DATA(GLint,   border)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  pixels[])
  STACK_FMT_END()

    glTexImage3D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    , STACK_GET_DATA(border)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(pixels)
    );
}

EXDL_API(eglc_texSubImage3D)
{
  /* void glTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   xoffset)
    STACK_FMT_DATA(GLint,   yoffset)
    STACK_FMT_DATA(GLint,   zoffset)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLsizei, depth)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  pixels[])
  STACK_FMT_END()

    glTexSubImage3D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(xoffset)
    , STACK_GET_DATA(yoffset)
    , STACK_GET_DATA(zoffset)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(pixels)
    );
}

EXDL_API(eglc_copyTexSubImage3D)
{
  /* void glCopyTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   xoffset)
    STACK_FMT_DATA(GLint,   yoffset)
    STACK_FMT_DATA(GLint,   zoffset)
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
  STACK_FMT_END()

    glCopyTexSubImage3D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(xoffset)
    , STACK_GET_DATA(yoffset)
    , STACK_GET_DATA(zoffset)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

/* GL_VERSION_1_3 */

EXDL_API(eglc_activeTexture)
{
  /* void glActiveTexture(GLenum texture) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, texture)
  STACK_FMT_END()

    glActiveTexture
    ( STACK_GET_DATA(texture)
    );
}

EXDL_API(eglc_sampleCoverage)
{
  /* void glSampleCoverage(GLfloat value, GLboolean invert) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat,   value)
    STACK_FMT_DATA(GLboolean, invert)
  STACK_FMT_END()

    glSampleCoverage
    ( STACK_GET_DATA(value)
    , STACK_GET_DATA(invert)
    );
}

EXDL_API(eglc_compressedTexImage3D)
{
  /* void glCompressedTexImage3D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLsizei, depth)
    STACK_FMT_DATA(GLint,   border)
    STACK_FMT_DATA(GLsizei, imageSize)
    STACK_FMT_DATA(GLvoid,  data[])
  STACK_FMT_END()

    glCompressedTexImage3D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    , STACK_GET_DATA(border)
    , STACK_GET_DATA(imageSize)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_compressedTexImage2D)
{
  /* void glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLint,   border)
    STACK_FMT_DATA(GLsizei, imageSize)
    STACK_FMT_DATA(GLvoid,  data[])
  STACK_FMT_END()

    glCompressedTexImage2D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(border)
    , STACK_GET_DATA(imageSize)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_compressedTexImage1D)
{
  /* void glCompressedTexImage1D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLint,   border)
    STACK_FMT_DATA(GLsizei, imageSize)
    STACK_FMT_DATA(GLvoid,  data[])
  STACK_FMT_END()

    glCompressedTexImage1D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(border)
    , STACK_GET_DATA(imageSize)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_compressedTexSubImage3D)
{
  /* void glCompressedTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   xoffset)
    STACK_FMT_DATA(GLint,   yoffset)
    STACK_FMT_DATA(GLint,   zoffset)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLsizei, depth)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLsizei, imageSize)
    STACK_FMT_DATA(GLvoid,  data[])
  STACK_FMT_END()

    glCompressedTexSubImage3D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(xoffset)
    , STACK_GET_DATA(yoffset)
    , STACK_GET_DATA(zoffset)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(imageSize)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_compressedTexSubImage2D)
{
  /* void glCompressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   xoffset)
    STACK_FMT_DATA(GLint,   yoffset)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLsizei, imageSize)
    STACK_FMT_DATA(GLvoid,  data[])
  STACK_FMT_END()

    glCompressedTexSubImage2D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(xoffset)
    , STACK_GET_DATA(yoffset)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(imageSize)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_compressedTexSubImage1D)
{
  /* void glCompressedTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   xoffset)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLsizei, imageSize)
    STACK_FMT_DATA(GLvoid,  data[])
  STACK_FMT_END()

    glCompressedTexSubImage1D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(xoffset)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(imageSize)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_getCompressedTexImage)
{
  /* void glGetCompressedTexImage(GLenum target, GLint level, GLvoid* img) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLvoid, img)
  FRAME_FMT_END()

    glGetCompressedTexImage
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , FRAME_GET_ADDR(img)
    );

  THROW_FRAME()
}

/* GL_VERSION_1_4 */

EXDL_API(eglc_blendFuncSeparate)
{
  /* void glBlendFuncSeparate(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, sfactorRGB)
    STACK_FMT_DATA(GLenum, dfactorRGB)
    STACK_FMT_DATA(GLenum, sfactorAlpha)
    STACK_FMT_DATA(GLenum, dfactorAlpha)
  STACK_FMT_END()

    glBlendFuncSeparate
    ( STACK_GET_DATA(sfactorRGB)
    , STACK_GET_DATA(dfactorRGB)
    , STACK_GET_DATA(sfactorAlpha)
    , STACK_GET_DATA(dfactorAlpha)
    );
}

EXDL_API(eglc_multiDrawArrays)
{
  /* void glMultiDrawArrays(GLenum mode, const GLint* first, const GLsizei* count, GLsizei drawcount) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   mode)
    STACK_FMT_LPTR(GLint*,   first)
    STACK_FMT_LPTR(GLsizei*, count)
    STACK_FMT_DATA(GLsizei,  drawcount)
  STACK_FMT_END()

    glMultiDrawArrays
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(first)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(drawcount)
    );
}

EXDL_API(eglc_multiDrawElements)
{
  /* void glMultiDrawElements(GLenum mode, const GLsizei* count, GLenum type, const GLvoid* const *indices, GLsizei drawcount) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,    mode)
    STACK_FMT_LPTR(GLsizei*,  count)
    STACK_FMT_DATA(GLenum,    type)
    STACK_FMT_LPTR(GLvoid* *, indices)
    STACK_FMT_DATA(GLsizei,   drawcount)
  STACK_FMT_END()

    glMultiDrawElements
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(indices)
    , STACK_GET_DATA(drawcount)
    );
}

EXDL_API(eglc_pointParameterf)
{
  /* void glPointParameterf(GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glPointParameterf
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(eglc_pointParameterfv)
{
  /* void glPointParameterfv(GLenum pname, const GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   pname)
    STACK_FMT_DATA(GLfloat,  params[])
  STACK_FMT_END()

    glPointParameterfv
    ( STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(eglc_pointParameteri)
{
  /* void glPointParameteri(GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glPointParameteri
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(eglc_pointParameteriv)
{
  /* void glPointParameteriv(GLenum pname, const GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  params[])
  STACK_FMT_END()

    glPointParameteriv
    ( STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

/* GL_VERSION_1_5 */

EXDL_API(eglc_genQueries)
{
  /* void glGenQueries(GLsizei n, GLuint* ids) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, ids)
  FRAME_FMT_END()

    glGenQueries
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(ids)
    );

  THROW_FRAME()
}

EXDL_API(eglc_deleteQueries)
{
  /* void glDeleteQueries(GLsizei n, const GLuint* ids) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLuint,  ids[])
  STACK_FMT_END()

    glDeleteQueries
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(ids)
    );
}

EXDL_API(eglc_isQuery)
{
  /* GLboolean glIsQuery(GLuint id) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, id)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsQuery
    ( STACK_GET_DATA(id)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_beginQuery)
{
  /* void glBeginQuery(GLenum target, GLuint id) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, id)
  STACK_FMT_END()

    glBeginQuery
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(id)
    );
}

EXDL_API(eglc_endQuery)
{
  /* void glEndQuery(GLenum target) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
  STACK_FMT_END()

    glEndQuery
    ( STACK_GET_DATA(target)
    );
}

EXDL_API(eglc_getQueryiv)
{
  /* void glGetQueryiv(GLenum target, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetQueryiv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getQueryObjectiv)
{
  /* void glGetQueryObjectiv(GLuint id, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, id)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetQueryObjectiv
    ( STACK_GET_DATA(id)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getQueryObjectuiv)
{
  /* void glGetQueryObjectuiv(GLuint id, GLenum pname, GLuint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  id)
    STACK_FMT_DATA(GLenum,  pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLuint))

    glGetQueryObjectuiv
    ( STACK_GET_DATA(id)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_bindBuffer)
{
  /* void glBindBuffer(GLenum target, GLuint buffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, buffer)
  STACK_FMT_END()

    glBindBuffer
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(buffer)
    );
}

EXDL_API(eglc_deleteBuffers)
{
  /* void glDeleteBuffers(GLsizei n, const GLuint* buffers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLuint,  buffers[])
  STACK_FMT_END()

    glDeleteBuffers
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(buffers)
    );
}

EXDL_API(eglc_genBuffers)
{
  /* void glGenBuffers(GLsizei n, GLuint* buffers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, buffers)
  FRAME_FMT_END()

    glGenBuffers
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(buffers)
    );

  THROW_FRAME()
}

EXDL_API(eglc_isBuffer)
{
  /* GLboolean glIsBuffer(GLuint buffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, buffer)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsBuffer
    ( STACK_GET_DATA(buffer)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_bufferData)
{
  /* void glBufferData(GLenum target, GLsizeiptr size, const GLvoid* data, GLenum usage) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,        target)
    STACK_FMT_DATA(GLsizeiptr,    size)
    STACK_FMT_LPTR(GLvoid*,       data)
    STACK_FMT_DATA(GLenum,        usage)
  STACK_FMT_END()

    glBufferData
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(data)
    , STACK_GET_DATA(usage)
    );
}

EXDL_API(eglc_bufferSubData)
{
  /* void glBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, const GLvoid* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,        target)
    STACK_FMT_DATA(GLintptr,      offset)
    STACK_FMT_DATA(GLsizeiptr,    size)
    STACK_FMT_DATA(GLvoid,        data[])
  STACK_FMT_END()

    glBufferSubData
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(size)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_getBufferSubData)
{
  /* void glGetBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, GLvoid* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,     target)
    STACK_FMT_DATA(GLintptr,   offset)
    STACK_FMT_DATA(GLsizeiptr, size)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLvoid,    data)
  FRAME_FMT_END()

    glGetBufferSubData
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(size)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

EXDL_API(eglc_mapBuffer)
{
  /* GLvoid* glMapBuffer(GLenum target, GLenum access) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, access)
  STACK_FMT_END()

  CATCH_RESULT(GLvoid*)

    glMapBuffer
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(access)
    );

  THROW_POINTER()
}

EXDL_API(eglc_unmapBuffer)
{
  /* GLboolean glUnmapBuffer(GLenum target) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glUnmapBuffer
    ( STACK_GET_DATA(target)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_getBufferParameteriv)
{
  /* void glGetBufferParameteriv(GLenum target, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetBufferParameteriv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getBufferPointerv)
{
  /* void glGetBufferPointerv(GLenum target, GLenum pname, GLvoid** params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLenum,   pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLvoid,  params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLvoid))

    glGetBufferPointerv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_VERSION_2_0 */

EXDL_API(eglc_blendEquationSeparate)
{
  /* void glBlendEquationSeparate(GLenum modeRGB, GLenum modeAlpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, modeRGB)
    STACK_FMT_DATA(GLenum, modeAlpha)
  STACK_FMT_END()

    glBlendEquationSeparate
    ( STACK_GET_DATA(modeRGB)
    , STACK_GET_DATA(modeAlpha)
    );
}

EXDL_API(eglc_drawBuffers)
{
  /* void glDrawBuffers(GLsizei n, const GLenum* bufs) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLenum,  bufs[])
  STACK_FMT_END()

    glDrawBuffers
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(bufs)
    );
}

EXDL_API(eglc_stencilOpSeparate)
{
  /* void glStencilOpSeparate(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, face)
    STACK_FMT_DATA(GLenum, sfail)
    STACK_FMT_DATA(GLenum, dpfail)
    STACK_FMT_DATA(GLenum, dppass)
  STACK_FMT_END()

    glStencilOpSeparate
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(sfail)
    , STACK_GET_DATA(dpfail)
    , STACK_GET_DATA(dppass)
    );
}

EXDL_API(eglc_stencilFuncSeparate)
{
  /* void glStencilFuncSeparate(GLenum face, GLenum func, GLint ref, GLuint mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, face)
    STACK_FMT_DATA(GLenum, func)
    STACK_FMT_DATA(GLint,  ref)
    STACK_FMT_DATA(GLuint, mask)
  STACK_FMT_END()

    glStencilFuncSeparate
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(func)
    , STACK_GET_DATA(ref)
    , STACK_GET_DATA(mask)
    );
}

EXDL_API(eglc_stencilMaskSeparate)
{
  /* void glStencilMaskSeparate(GLenum face, GLuint mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, face)
    STACK_FMT_DATA(GLuint, mask)
  STACK_FMT_END()

    glStencilMaskSeparate
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(mask)
    );
}

EXDL_API(eglc_attachShader)
{
  /* void glAttachShader(GLuint program, GLuint shader) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLuint, shader)
  STACK_FMT_END()

    glAttachShader
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(shader)
    );
}

EXDL_API(eglc_bindAttribLocation)
{
  /* void glBindAttribLocation(GLuint program, GLuint index, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

    glBindAttribLocation
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(index)
    , STACK_GET_ADDR(name)
    );
}

EXDL_API(eglc_compileShader)
{
  /* void glCompileShader(GLuint shader) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, shader)
  STACK_FMT_END()

    glCompileShader
    ( STACK_GET_DATA(shader)
    );
}

EXDL_API(eglc_createProgram)
{
  /* GLuint glCreateProgram(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(GLuint)

    glCreateProgram
    (
    );

  THROW_RESULT(GLuint)
}

EXDL_API(eglc_createShader)
{
  /* GLuint glCreateShader(GLenum type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
  STACK_FMT_END()

  CATCH_RESULT(GLuint)

    glCreateShader
    ( STACK_GET_DATA(type)
    );

  THROW_RESULT(GLuint)
}

EXDL_API(eglc_deleteProgram)
{
  /* void glDeleteProgram(GLuint program) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
  STACK_FMT_END()

    glDeleteProgram
    ( STACK_GET_DATA(program)
    );
}

EXDL_API(eglc_deleteShader)
{
  /* void glDeleteShader(GLuint shader) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, shader)
  STACK_FMT_END()

    glDeleteShader
    ( STACK_GET_DATA(shader)
    );
}

EXDL_API(eglc_detachShader)
{
  /* void glDetachShader(GLuint program, GLuint shader) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLuint, shader)
  STACK_FMT_END()

    glDetachShader
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(shader)
    );
}

EXDL_API(eglc_disableVertexAttribArray)
{
  /* void glDisableVertexAttribArray(GLuint index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
  STACK_FMT_END()

    glDisableVertexAttribArray
    ( STACK_GET_DATA(index)
    );
}

EXDL_API(eglc_enableVertexAttribArray)
{
  /* void glEnableVertexAttribArray(GLuint index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
  STACK_FMT_END()

    glEnableVertexAttribArray
    ( STACK_GET_DATA(index)
    );
}

EXDL_API(eglc_getActiveAttrib)
{
  /* void glGetActiveAttrib(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLint,   size)
    FRAME_FMT_DATA(GLenum,  type)
    FRAME_FMT_DATA(GLchar,  name)
  FRAME_FMT_END()

    glGetActiveAttrib
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(size)
    , FRAME_GET_ADDR(type)
    , FRAME_GET_ADDR(name)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getActiveUniform)
{
  /* void glGetActiveUniform(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLint,   size)
    FRAME_FMT_DATA(GLenum,  type)
    FRAME_FMT_DATA(GLchar,  name)
  FRAME_FMT_END()

    glGetActiveUniform
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(size)
    , FRAME_GET_ADDR(type)
    , FRAME_GET_ADDR(name)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getAttachedShaders)
{
  /* void glGetAttachedShaders(GLuint program, GLsizei maxCount, GLsizei* count, GLuint* obj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLsizei,  maxCount)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, count)
    FRAME_FMT_DATA(GLuint,  obj)
  FRAME_FMT_END()

    glGetAttachedShaders
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(maxCount)
    , FRAME_GET_ADDR(count)
    , FRAME_GET_ADDR(obj)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getAttribLocation)
{
  /* GLint glGetAttribLocation(GLuint program, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

  CATCH_RESULT(GLint)

    glGetAttribLocation
    ( STACK_GET_DATA(program)
    , STACK_GET_ADDR(name)
    );

  THROW_RESULT(GLint)
}

EXDL_API(eglc_getProgramiv)
{
  /* void glGetProgramiv(GLuint program, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetProgramiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getProgramInfoLog)
{
  /* void glGetProgramInfoLog(GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  infoLog)
  FRAME_FMT_END()

    glGetProgramInfoLog
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(infoLog)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getShaderiv)
{
  /* void glGetShaderiv(GLuint shader, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, shader)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetShaderiv
    ( STACK_GET_DATA(shader)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getShaderInfoLog)
{
  /* void glGetShaderInfoLog(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   shader)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  infoLog)
  FRAME_FMT_END()

    glGetShaderInfoLog
    ( STACK_GET_DATA(shader)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(infoLog)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getShaderSource)
{
  /* void glGetShaderSource(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   shader)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  source)
  FRAME_FMT_END()

    glGetShaderSource
    ( STACK_GET_DATA(shader)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(source)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getUniformLocation)
{
  /* GLint glGetUniformLocation(GLuint program, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

  CATCH_RESULT(GLint)

    glGetUniformLocation
    ( STACK_GET_DATA(program)
    , STACK_GET_ADDR(name)
    );

  THROW_RESULT(GLint)
}

EXDL_API(eglc_getUniformfv)
{
  /* void glGetUniformfv(GLuint program, GLint location, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLint,    location)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(location) * sizeof(GLfloat))

    glGetUniformfv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getUniformiv)
{
  /* void glGetUniformiv(GLuint program, GLint location, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLint,  location)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(location) * sizeof(GLint))

    glGetUniformiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getVertexAttribdv)
{
  /* void glGetVertexAttribdv(GLuint index, GLenum pname, GLdouble* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLenum,    pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLdouble, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLdouble))

    glGetVertexAttribdv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getVertexAttribfv)
{
  /* void glGetVertexAttribfv(GLuint index, GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLenum,   pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLfloat))

    glGetVertexAttribfv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getVertexAttribiv)
{
  /* void glGetVertexAttribiv(GLuint index, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetVertexAttribiv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getVertexAttribPointerv)
{
  /* void glGetVertexAttribPointerv(GLuint index, GLenum pname, GLvoid** pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLenum,   pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLvoid,  pointer[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLvoid))

    glGetVertexAttribPointerv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(pointer)
    );

  THROW_FRAME()
}

EXDL_API(eglc_isProgram)
{
  /* GLboolean glIsProgram(GLuint program) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsProgram
    ( STACK_GET_DATA(program)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_isShader)
{
  /* GLboolean glIsShader(GLuint shader) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, shader)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsShader
    ( STACK_GET_DATA(shader)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_linkProgram)
{
  /* void glLinkProgram(GLuint program) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
  STACK_FMT_END()

    glLinkProgram
    ( STACK_GET_DATA(program)
    );
}

EXDL_API(eglc_shaderSource)
{
  /* void glShaderSource(GLuint shader, GLsizei count, const GLchar* const *string, const GLint* length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,       shader)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_LPTR(GLchar* *,    string)
    STACK_FMT_DATA(GLint,        length[])
  STACK_FMT_END()

    glShaderSource
    ( STACK_GET_DATA(shader)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(string)
    , STACK_GET_ADDR(length)
    );
}

EXDL_API(eglc_useProgram)
{
  /* void glUseProgram(GLuint program) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
  STACK_FMT_END()

    glUseProgram
    ( STACK_GET_DATA(program)
    );
}

EXDL_API(eglc_uniform1f)
{
  /* void glUniform1f(GLint location, GLfloat v0) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLfloat, v0)
  STACK_FMT_END()

    glUniform1f
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    );
}

EXDL_API(eglc_uniform2f)
{
  /* void glUniform2f(GLint location, GLfloat v0, GLfloat v1) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLfloat, v0)
    STACK_FMT_DATA(GLfloat, v1)
  STACK_FMT_END()

    glUniform2f
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    );
}

EXDL_API(eglc_uniform3f)
{
  /* void glUniform3f(GLint location, GLfloat v0, GLfloat v1, GLfloat v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLfloat, v0)
    STACK_FMT_DATA(GLfloat, v1)
    STACK_FMT_DATA(GLfloat, v2)
  STACK_FMT_END()

    glUniform3f
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    );
}

EXDL_API(eglc_uniform4f)
{
  /* void glUniform4f(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLfloat, v0)
    STACK_FMT_DATA(GLfloat, v1)
    STACK_FMT_DATA(GLfloat, v2)
    STACK_FMT_DATA(GLfloat, v3)
  STACK_FMT_END()

    glUniform4f
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    , STACK_GET_DATA(v3)
    );
}

EXDL_API(eglc_uniform1i)
{
  /* void glUniform1i(GLint location, GLint v0) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, location)
    STACK_FMT_DATA(GLint, v0)
  STACK_FMT_END()

    glUniform1i
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    );
}

EXDL_API(eglc_uniform2i)
{
  /* void glUniform2i(GLint location, GLint v0, GLint v1) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, location)
    STACK_FMT_DATA(GLint, v0)
    STACK_FMT_DATA(GLint, v1)
  STACK_FMT_END()

    glUniform2i
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    );
}

EXDL_API(eglc_uniform3i)
{
  /* void glUniform3i(GLint location, GLint v0, GLint v1, GLint v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, location)
    STACK_FMT_DATA(GLint, v0)
    STACK_FMT_DATA(GLint, v1)
    STACK_FMT_DATA(GLint, v2)
  STACK_FMT_END()

    glUniform3i
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    );
}

EXDL_API(eglc_uniform4i)
{
  /* void glUniform4i(GLint location, GLint v0, GLint v1, GLint v2, GLint v3) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, location)
    STACK_FMT_DATA(GLint, v0)
    STACK_FMT_DATA(GLint, v1)
    STACK_FMT_DATA(GLint, v2)
    STACK_FMT_DATA(GLint, v3)
  STACK_FMT_END()

    glUniform4i
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    , STACK_GET_DATA(v3)
    );
}

EXDL_API(eglc_uniform1fv)
{
  /* void glUniform1fv(GLint location, GLsizei count, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLsizei,  count)
    STACK_FMT_DATA(GLfloat,  value[])
  STACK_FMT_END()

    glUniform1fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform2fv)
{
  /* void glUniform2fv(GLint location, GLsizei count, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLsizei,  count)
    STACK_FMT_DATA(GLfloat,  value[])
  STACK_FMT_END()

    glUniform2fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform3fv)
{
  /* void glUniform3fv(GLint location, GLsizei count, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLsizei,  count)
    STACK_FMT_DATA(GLfloat,  value[])
  STACK_FMT_END()

    glUniform3fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform4fv)
{
  /* void glUniform4fv(GLint location, GLsizei count, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLsizei,  count)
    STACK_FMT_DATA(GLfloat,  value[])
  STACK_FMT_END()

    glUniform4fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform1iv)
{
  /* void glUniform1iv(GLint location, GLsizei count, const GLint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,        location)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_DATA(GLint,        value[])
  STACK_FMT_END()

    glUniform1iv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform2iv)
{
  /* void glUniform2iv(GLint location, GLsizei count, const GLint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,        location)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_DATA(GLint,        value[])
  STACK_FMT_END()

    glUniform2iv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform3iv)
{
  /* void glUniform3iv(GLint location, GLsizei count, const GLint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,        location)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_DATA(GLint,        value[])
  STACK_FMT_END()

    glUniform3iv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform4iv)
{
  /* void glUniform4iv(GLint location, GLsizei count, const GLint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,        location)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_DATA(GLint,        value[])
  STACK_FMT_END()

    glUniform4iv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix2fv)
{
  /* void glUniformMatrix2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glUniformMatrix2fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix3fv)
{
  /* void glUniformMatrix3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glUniformMatrix3fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix4fv)
{
  /* void glUniformMatrix4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glUniformMatrix4fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_validateProgram)
{
  /* void glValidateProgram(GLuint program) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
  STACK_FMT_END()

    glValidateProgram
    ( STACK_GET_DATA(program)
    );
}

EXDL_API(eglc_vertexAttrib1d)
{
  /* void glVertexAttrib1d(GLuint index, GLdouble x) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLdouble, x)
  STACK_FMT_END()

    glVertexAttrib1d
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    );
}

EXDL_API(eglc_vertexAttrib1dv)
{
  /* void glVertexAttrib1dv(GLuint index, const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLdouble,  v[])
  STACK_FMT_END()

    glVertexAttrib1dv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib1f)
{
  /* void glVertexAttrib1f(GLuint index, GLfloat x) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLfloat, x)
  STACK_FMT_END()

    glVertexAttrib1f
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    );
}

EXDL_API(eglc_vertexAttrib1fv)
{
  /* void glVertexAttrib1fv(GLuint index, const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLfloat,  v[])
  STACK_FMT_END()

    glVertexAttrib1fv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib1s)
{
  /* void glVertexAttrib1s(GLuint index, GLshort x) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLshort, x)
  STACK_FMT_END()

    glVertexAttrib1s
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    );
}

EXDL_API(eglc_vertexAttrib1sv)
{
  /* void glVertexAttrib1sv(GLuint index, const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLshort,  v[])
  STACK_FMT_END()

    glVertexAttrib1sv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib2d)
{
  /* void glVertexAttrib2d(GLuint index, GLdouble x, GLdouble y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
  STACK_FMT_END()

    glVertexAttrib2d
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(eglc_vertexAttrib2dv)
{
  /* void glVertexAttrib2dv(GLuint index, const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLdouble,  v[])
  STACK_FMT_END()

    glVertexAttrib2dv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib2f)
{
  /* void glVertexAttrib2f(GLuint index, GLfloat x, GLfloat y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
  STACK_FMT_END()

    glVertexAttrib2f
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(eglc_vertexAttrib2fv)
{
  /* void glVertexAttrib2fv(GLuint index, const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLfloat,  v[])
  STACK_FMT_END()

    glVertexAttrib2fv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib2s)
{
  /* void glVertexAttrib2s(GLuint index, GLshort x, GLshort y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLshort, x)
    STACK_FMT_DATA(GLshort, y)
  STACK_FMT_END()

    glVertexAttrib2s
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(eglc_vertexAttrib2sv)
{
  /* void glVertexAttrib2sv(GLuint index, const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLshort,  v[])
  STACK_FMT_END()

    glVertexAttrib2sv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib3d)
{
  /* void glVertexAttrib3d(GLuint index, GLdouble x, GLdouble y, GLdouble z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
  STACK_FMT_END()

    glVertexAttrib3d
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(eglc_vertexAttrib3dv)
{
  /* void glVertexAttrib3dv(GLuint index, const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLdouble,  v[])
  STACK_FMT_END()

    glVertexAttrib3dv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib3f)
{
  /* void glVertexAttrib3f(GLuint index, GLfloat x, GLfloat y, GLfloat z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
    STACK_FMT_DATA(GLfloat, z)
  STACK_FMT_END()

    glVertexAttrib3f
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(eglc_vertexAttrib3fv)
{
  /* void glVertexAttrib3fv(GLuint index, const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLfloat,  v[])
  STACK_FMT_END()

    glVertexAttrib3fv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib3s)
{
  /* void glVertexAttrib3s(GLuint index, GLshort x, GLshort y, GLshort z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLshort, x)
    STACK_FMT_DATA(GLshort, y)
    STACK_FMT_DATA(GLshort, z)
  STACK_FMT_END()

    glVertexAttrib3s
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(eglc_vertexAttrib3sv)
{
  /* void glVertexAttrib3sv(GLuint index, const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLshort,  v[])
  STACK_FMT_END()

    glVertexAttrib3sv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4Nbv)
{
  /* void glVertexAttrib4Nbv(GLuint index, const GLbyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLbyte,  v[])
  STACK_FMT_END()

    glVertexAttrib4Nbv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4Niv)
{
  /* void glVertexAttrib4Niv(GLuint index, const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  v[])
  STACK_FMT_END()

    glVertexAttrib4Niv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4Nsv)
{
  /* void glVertexAttrib4Nsv(GLuint index, const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLshort,  v[])
  STACK_FMT_END()

    glVertexAttrib4Nsv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4Nub)
{
  /* void glVertexAttrib4Nub(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLubyte, x)
    STACK_FMT_DATA(GLubyte, y)
    STACK_FMT_DATA(GLubyte, z)
    STACK_FMT_DATA(GLubyte, w)
  STACK_FMT_END()

    glVertexAttrib4Nub
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(eglc_vertexAttrib4Nubv)
{
  /* void glVertexAttrib4Nubv(GLuint index, const GLubyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLubyte,  v[])
  STACK_FMT_END()

    glVertexAttrib4Nubv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4Nuiv)
{
  /* void glVertexAttrib4Nuiv(GLuint index, const GLuint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLuint,  v[])
  STACK_FMT_END()

    glVertexAttrib4Nuiv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4Nusv)
{
  /* void glVertexAttrib4Nusv(GLuint index, const GLushort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLushort,  v[])
  STACK_FMT_END()

    glVertexAttrib4Nusv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4bv)
{
  /* void glVertexAttrib4bv(GLuint index, const GLbyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLbyte,  v[])
  STACK_FMT_END()

    glVertexAttrib4bv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4d)
{
  /* void glVertexAttrib4d(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
    STACK_FMT_DATA(GLdouble, w)
  STACK_FMT_END()

    glVertexAttrib4d
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(eglc_vertexAttrib4dv)
{
  /* void glVertexAttrib4dv(GLuint index, const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLdouble,  v[])
  STACK_FMT_END()

    glVertexAttrib4dv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4f)
{
  /* void glVertexAttrib4f(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
    STACK_FMT_DATA(GLfloat, z)
    STACK_FMT_DATA(GLfloat, w)
  STACK_FMT_END()

    glVertexAttrib4f
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(eglc_vertexAttrib4fv)
{
  /* void glVertexAttrib4fv(GLuint index, const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLfloat,  v[])
  STACK_FMT_END()

    glVertexAttrib4fv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4iv)
{
  /* void glVertexAttrib4iv(GLuint index, const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  v[])
  STACK_FMT_END()

    glVertexAttrib4iv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4s)
{
  /* void glVertexAttrib4s(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLshort, x)
    STACK_FMT_DATA(GLshort, y)
    STACK_FMT_DATA(GLshort, z)
    STACK_FMT_DATA(GLshort, w)
  STACK_FMT_END()

    glVertexAttrib4s
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(eglc_vertexAttrib4sv)
{
  /* void glVertexAttrib4sv(GLuint index, const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLshort,  v[])
  STACK_FMT_END()

    glVertexAttrib4sv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4ubv)
{
  /* void glVertexAttrib4ubv(GLuint index, const GLubyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLubyte,  v[])
  STACK_FMT_END()

    glVertexAttrib4ubv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4uiv)
{
  /* void glVertexAttrib4uiv(GLuint index, const GLuint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLuint,  v[])
  STACK_FMT_END()

    glVertexAttrib4uiv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttrib4usv)
{
  /* void glVertexAttrib4usv(GLuint index, const GLushort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLushort,  v[])
  STACK_FMT_END()

    glVertexAttrib4usv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribPointer)
{
  /* void glVertexAttribPointer(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,        index)
    STACK_FMT_DATA(GLint,         size)
    STACK_FMT_DATA(GLenum,        type)
    STACK_FMT_DATA(GLboolean,     normalized)
    STACK_FMT_DATA(GLsizei,       stride)
    STACK_FMT_DATA(GLvoid,        pointer[])
  STACK_FMT_END()

    glVertexAttribPointer
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_DATA(stride)
    , STACK_GET_ADDR(pointer)
    );
}

/* GL_VERSION_2_1 */

EXDL_API(eglc_uniformMatrix2x3fv)
{
  /* void glUniformMatrix2x3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glUniformMatrix2x3fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix3x2fv)
{
  /* void glUniformMatrix3x2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glUniformMatrix3x2fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix2x4fv)
{
  /* void glUniformMatrix2x4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glUniformMatrix2x4fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix4x2fv)
{
  /* void glUniformMatrix4x2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glUniformMatrix4x2fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix3x4fv)
{
  /* void glUniformMatrix3x4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glUniformMatrix3x4fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix4x3fv)
{
  /* void glUniformMatrix4x3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glUniformMatrix4x3fv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

/* GL_VERSION_3_0 */

EXDL_API(eglc_colorMaski)
{
  /* void glColorMaski(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLboolean, r)
    STACK_FMT_DATA(GLboolean, g)
    STACK_FMT_DATA(GLboolean, b)
    STACK_FMT_DATA(GLboolean, a)
  STACK_FMT_END()

    glColorMaski
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(r)
    , STACK_GET_DATA(g)
    , STACK_GET_DATA(b)
    , STACK_GET_DATA(a)
    );
}

EXDL_API(eglc_getBooleani_v)
{
  /* void glGetBooleani_v(GLenum target, GLuint index, GLboolean* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,     target)
    STACK_FMT_DATA(GLuint,     index)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLboolean, data[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(index) * sizeof(GLboolean))

    glGetBooleani_v
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getIntegeri_v)
{
  /* void glGetIntegeri_v(GLenum target, GLuint index, GLint* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, index)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, data[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(index) * sizeof(GLint))

    glGetIntegeri_v
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

EXDL_API(eglc_enablei)
{
  /* void glEnablei(GLenum target, GLuint index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, index)
  STACK_FMT_END()

    glEnablei
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    );
}

EXDL_API(eglc_disablei)
{
  /* void glDisablei(GLenum target, GLuint index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, index)
  STACK_FMT_END()

    glDisablei
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    );
}

EXDL_API(eglc_isEnabledi)
{
  /* GLboolean glIsEnabledi(GLenum target, GLuint index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, index)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsEnabledi
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_beginTransformFeedback)
{
  /* void glBeginTransformFeedback(GLenum primitiveMode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, primitiveMode)
  STACK_FMT_END()

    glBeginTransformFeedback
    ( STACK_GET_DATA(primitiveMode)
    );
}

EXDL_API(eglc_endTransformFeedback)
{
  /* void glEndTransformFeedback(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glEndTransformFeedback
  (
  );
}

EXDL_API(eglc_bindBufferRange)
{
  /* void glBindBufferRange(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,     target)
    STACK_FMT_DATA(GLuint,     index)
    STACK_FMT_DATA(GLuint,     buffer)
    STACK_FMT_DATA(GLintptr,   offset)
    STACK_FMT_DATA(GLsizeiptr, size)
  STACK_FMT_END()

    glBindBufferRange
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(buffer)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(size)
    );
}

EXDL_API(eglc_bindBufferBase)
{
  /* void glBindBufferBase(GLenum target, GLuint index, GLuint buffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLuint, buffer)
  STACK_FMT_END()

    glBindBufferBase
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(buffer)
    );
}

EXDL_API(eglc_transformFeedbackVaryings)
{
  /* void glTransformFeedbackVaryings(GLuint program, GLsizei count, const GLchar* const *varyings, GLenum bufferMode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_LPTR(GLchar* *, varyings)
    STACK_FMT_DATA(GLenum,    bufferMode)
  STACK_FMT_END()

    glTransformFeedbackVaryings
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(varyings)
    , STACK_GET_DATA(bufferMode)
    );
}

EXDL_API(eglc_getTransformFeedbackVarying)
{
  /* void glGetTransformFeedbackVarying(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLsizei, size)
    FRAME_FMT_DATA(GLenum,  type)
    FRAME_FMT_DATA(GLchar,  name)
  FRAME_FMT_END()

    glGetTransformFeedbackVarying
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(size)
    , FRAME_GET_ADDR(type)
    , FRAME_GET_ADDR(name)
    );

  THROW_FRAME()
}

EXDL_API(eglc_clampColor)
{
  /* void glClampColor(GLenum target, GLenum clamp) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, clamp)
  STACK_FMT_END()

    glClampColor
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(clamp)
    );
}

EXDL_API(eglc_beginConditionalRender)
{
  /* void glBeginConditionalRender(GLuint id, GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, id)
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glBeginConditionalRender
    ( STACK_GET_DATA(id)
    , STACK_GET_DATA(mode)
    );
}

EXDL_API(eglc_endConditionalRender)
{
  /* void glEndConditionalRender(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glEndConditionalRender
  (
  );
}

EXDL_API(eglc_vertexAttribIPointer)
{
  /* void glVertexAttribIPointer(GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLint,   size)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLsizei, stride)
    STACK_FMT_DATA(GLvoid,  pointer[])
  STACK_FMT_END()

    glVertexAttribIPointer
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(stride)
    , STACK_GET_ADDR(pointer)
    );
}

EXDL_API(eglc_getVertexAttribIiv)
{
  /* void glGetVertexAttribIiv(GLuint index, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetVertexAttribIiv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getVertexAttribIuiv)
{
  /* void glGetVertexAttribIuiv(GLuint index, GLenum pname, GLuint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLenum,  pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLuint))

    glGetVertexAttribIuiv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_vertexAttribI1i)
{
  /* void glVertexAttribI1i(GLuint index, GLint x) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  x)
  STACK_FMT_END()

    glVertexAttribI1i
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    );
}

EXDL_API(eglc_vertexAttribI2i)
{
  /* void glVertexAttribI2i(GLuint index, GLint x, GLint y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  x)
    STACK_FMT_DATA(GLint,  y)
  STACK_FMT_END()

    glVertexAttribI2i
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(eglc_vertexAttribI3i)
{
  /* void glVertexAttribI3i(GLuint index, GLint x, GLint y, GLint z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  x)
    STACK_FMT_DATA(GLint,  y)
    STACK_FMT_DATA(GLint,  z)
  STACK_FMT_END()

    glVertexAttribI3i
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(eglc_vertexAttribI4i)
{
  /* void glVertexAttribI4i(GLuint index, GLint x, GLint y, GLint z, GLint w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  x)
    STACK_FMT_DATA(GLint,  y)
    STACK_FMT_DATA(GLint,  z)
    STACK_FMT_DATA(GLint,  w)
  STACK_FMT_END()

    glVertexAttribI4i
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(eglc_vertexAttribI1ui)
{
  /* void glVertexAttribI1ui(GLuint index, GLuint x) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLuint, x)
  STACK_FMT_END()

    glVertexAttribI1ui
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    );
}

EXDL_API(eglc_vertexAttribI2ui)
{
  /* void glVertexAttribI2ui(GLuint index, GLuint x, GLuint y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLuint, x)
    STACK_FMT_DATA(GLuint, y)
  STACK_FMT_END()

    glVertexAttribI2ui
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(eglc_vertexAttribI3ui)
{
  /* void glVertexAttribI3ui(GLuint index, GLuint x, GLuint y, GLuint z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLuint, x)
    STACK_FMT_DATA(GLuint, y)
    STACK_FMT_DATA(GLuint, z)
  STACK_FMT_END()

    glVertexAttribI3ui
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(eglc_vertexAttribI4ui)
{
  /* void glVertexAttribI4ui(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLuint, x)
    STACK_FMT_DATA(GLuint, y)
    STACK_FMT_DATA(GLuint, z)
    STACK_FMT_DATA(GLuint, w)
  STACK_FMT_END()

    glVertexAttribI4ui
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(eglc_vertexAttribI1iv)
{
  /* void glVertexAttribI1iv(GLuint index, const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  v[])
  STACK_FMT_END()

    glVertexAttribI1iv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI2iv)
{
  /* void glVertexAttribI2iv(GLuint index, const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  v[])
  STACK_FMT_END()

    glVertexAttribI2iv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI3iv)
{
  /* void glVertexAttribI3iv(GLuint index, const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  v[])
  STACK_FMT_END()

    glVertexAttribI3iv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI4iv)
{
  /* void glVertexAttribI4iv(GLuint index, const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  v[])
  STACK_FMT_END()

    glVertexAttribI4iv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI1uiv)
{
  /* void glVertexAttribI1uiv(GLuint index, const GLuint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLuint,  v[])
  STACK_FMT_END()

    glVertexAttribI1uiv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI2uiv)
{
  /* void glVertexAttribI2uiv(GLuint index, const GLuint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLuint,  v[])
  STACK_FMT_END()

    glVertexAttribI2uiv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI3uiv)
{
  /* void glVertexAttribI3uiv(GLuint index, const GLuint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLuint,  v[])
  STACK_FMT_END()

    glVertexAttribI3uiv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI4uiv)
{
  /* void glVertexAttribI4uiv(GLuint index, const GLuint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLuint,  v[])
  STACK_FMT_END()

    glVertexAttribI4uiv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI4bv)
{
  /* void glVertexAttribI4bv(GLuint index, const GLbyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLbyte,  v[])
  STACK_FMT_END()

    glVertexAttribI4bv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI4sv)
{
  /* void glVertexAttribI4sv(GLuint index, const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLshort,  v[])
  STACK_FMT_END()

    glVertexAttribI4sv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI4ubv)
{
  /* void glVertexAttribI4ubv(GLuint index, const GLubyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLubyte,  v[])
  STACK_FMT_END()

    glVertexAttribI4ubv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribI4usv)
{
  /* void glVertexAttribI4usv(GLuint index, const GLushort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLushort,  v[])
  STACK_FMT_END()

    glVertexAttribI4usv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_getUniformuiv)
{
  /* void glGetUniformuiv(GLuint program, GLint location, GLuint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(location) * sizeof(GLuint))

    glGetUniformuiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_bindFragDataLocation)
{
  /* void glBindFragDataLocation(GLuint program, GLuint color, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLuint,  color)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

    glBindFragDataLocation
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(color)
    , STACK_GET_ADDR(name)
    );
}

EXDL_API(eglc_getFragDataLocation)
{
  /* GLint glGetFragDataLocation(GLuint program, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

  CATCH_RESULT(GLint)

    glGetFragDataLocation
    ( STACK_GET_DATA(program)
    , STACK_GET_ADDR(name)
    );

  THROW_RESULT(GLint)
}

EXDL_API(eglc_uniform1ui)
{
  /* void glUniform1ui(GLint location, GLuint v0) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLuint, v0)
  STACK_FMT_END()

    glUniform1ui
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    );
}

EXDL_API(eglc_uniform2ui)
{
  /* void glUniform2ui(GLint location, GLuint v0, GLuint v1) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLuint, v0)
    STACK_FMT_DATA(GLuint, v1)
  STACK_FMT_END()

    glUniform2ui
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    );
}

EXDL_API(eglc_uniform3ui)
{
  /* void glUniform3ui(GLint location, GLuint v0, GLuint v1, GLuint v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLuint, v0)
    STACK_FMT_DATA(GLuint, v1)
    STACK_FMT_DATA(GLuint, v2)
  STACK_FMT_END()

    glUniform3ui
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    );
}

EXDL_API(eglc_uniform4ui)
{
  /* void glUniform4ui(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLuint, v0)
    STACK_FMT_DATA(GLuint, v1)
    STACK_FMT_DATA(GLuint, v2)
    STACK_FMT_DATA(GLuint, v3)
  STACK_FMT_END()

    glUniform4ui
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    , STACK_GET_DATA(v3)
    );
}

EXDL_API(eglc_uniform1uiv)
{
  /* void glUniform1uiv(GLint location, GLsizei count, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glUniform1uiv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform2uiv)
{
  /* void glUniform2uiv(GLint location, GLsizei count, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glUniform2uiv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform3uiv)
{
  /* void glUniform3uiv(GLint location, GLsizei count, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glUniform3uiv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform4uiv)
{
  /* void glUniform4uiv(GLint location, GLsizei count, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glUniform4uiv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_texParameterIiv)
{
  /* void glTexParameterIiv(GLenum target, GLenum pname, const GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  params[])
  STACK_FMT_END()

    glTexParameterIiv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(eglc_texParameterIuiv)
{
  /* void glTexParameterIuiv(GLenum target, GLenum pname, const GLuint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLuint,  params[])
  STACK_FMT_END()

    glTexParameterIuiv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(eglc_getTexParameterIiv)
{
  /* void glGetTexParameterIiv(GLenum target, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetTexParameterIiv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getTexParameterIuiv)
{
  /* void glGetTexParameterIuiv(GLenum target, GLenum pname, GLuint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLenum,  pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLuint))

    glGetTexParameterIuiv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_clearBufferiv)
{
  /* void glClearBufferiv(GLenum buffer, GLint drawbuffer, const GLint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, buffer)
    STACK_FMT_DATA(GLint,  drawbuffer)
    STACK_FMT_DATA(GLint,  value[])
  STACK_FMT_END()

    glClearBufferiv
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(drawbuffer)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_clearBufferuiv)
{
  /* void glClearBufferuiv(GLenum buffer, GLint drawbuffer, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  buffer)
    STACK_FMT_DATA(GLint,   drawbuffer)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glClearBufferuiv
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(drawbuffer)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_clearBufferfv)
{
  /* void glClearBufferfv(GLenum buffer, GLint drawbuffer, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   buffer)
    STACK_FMT_DATA(GLint,    drawbuffer)
    STACK_FMT_DATA(GLfloat,  value[])
  STACK_FMT_END()

    glClearBufferfv
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(drawbuffer)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_clearBufferfi)
{
  /* void glClearBufferfi(GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  buffer)
    STACK_FMT_DATA(GLint,   drawbuffer)
    STACK_FMT_DATA(GLfloat, depth)
    STACK_FMT_DATA(GLint,   stencil)
  STACK_FMT_END()

    glClearBufferfi
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(drawbuffer)
    , STACK_GET_DATA(depth)
    , STACK_GET_DATA(stencil)
    );
}

EXDL_API(eglc_getStringi)
{
  /* const GLubyte* glGetStringi(GLenum name, GLuint index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, name)
    STACK_FMT_DATA(GLuint, index)
  STACK_FMT_END()

  CATCH_RESULT(const GLubyte*)

    glGetStringi
    ( STACK_GET_DATA(name)
    , STACK_GET_DATA(index)
    );

  THROW_POINTER()
}

/* GL_VERSION_3_1 */

EXDL_API(eglc_drawArraysInstanced)
{
  /* void glDrawArraysInstanced(GLenum mode, GLint first, GLsizei count, GLsizei instancecount) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLint,   first)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLsizei, instancecount)
  STACK_FMT_END()

    glDrawArraysInstanced
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(first)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(instancecount)
    );
}

EXDL_API(eglc_drawElementsInstanced)
{
  /* void glDrawElementsInstanced(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei instancecount) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_LPTR(GLvoid*, indices)
    STACK_FMT_DATA(GLsizei, instancecount)
  STACK_FMT_END()

    glDrawElementsInstanced
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(indices)
    , STACK_GET_DATA(instancecount)
    );
}

EXDL_API(eglc_texBuffer)
{
  /* void glTexBuffer(GLenum target, GLenum internalformat, GLuint buffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, internalformat)
    STACK_FMT_DATA(GLuint, buffer)
  STACK_FMT_END()

    glTexBuffer
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(buffer)
    );
}

EXDL_API(eglc_primitiveRestartIndex)
{
  /* void glPrimitiveRestartIndex(GLuint index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
  STACK_FMT_END()

    glPrimitiveRestartIndex
    ( STACK_GET_DATA(index)
    );
}

/* GL_VERSION_3_2 */

EXDL_API(eglc_getInteger64i_v)
{
  /* void glGetInteger64i_v(GLenum target, GLuint index, GLint64* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLuint,   index)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint64, data[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(index) * sizeof(GLint64))

    glGetInteger64i_v
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getBufferParameteri64v)
{
  /* void glGetBufferParameteri64v(GLenum target, GLenum pname, GLint64* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLenum,   pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint64, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint64))

    glGetBufferParameteri64v
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_framebufferTexture)
{
  /* void glFramebufferTexture(GLenum target, GLenum attachment, GLuint texture, GLint level) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, attachment)
    STACK_FMT_DATA(GLuint, texture)
    STACK_FMT_DATA(GLint,  level)
  STACK_FMT_END()

    glFramebufferTexture
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(attachment)
    , STACK_GET_DATA(texture)
    , STACK_GET_DATA(level)
    );
}

/* GL_VERSION_3_3 */

EXDL_API(eglc_vertexAttribDivisor)
{
  /* void glVertexAttribDivisor(GLuint index, GLuint divisor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLuint, divisor)
  STACK_FMT_END()

    glVertexAttribDivisor
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(divisor)
    );
}

/* GL_VERSION_4_0 */

EXDL_API(eglc_minSampleShading)
{
  /* void glMinSampleShading(GLfloat value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, value)
  STACK_FMT_END()

    glMinSampleShading
    ( STACK_GET_DATA(value)
    );
}

EXDL_API(eglc_blendEquationi)
{
  /* void glBlendEquationi(GLuint buf, GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, buf)
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glBlendEquationi
    ( STACK_GET_DATA(buf)
    , STACK_GET_DATA(mode)
    );
}

EXDL_API(eglc_blendEquationSeparatei)
{
  /* void glBlendEquationSeparatei(GLuint buf, GLenum modeRGB, GLenum modeAlpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, buf)
    STACK_FMT_DATA(GLenum, modeRGB)
    STACK_FMT_DATA(GLenum, modeAlpha)
  STACK_FMT_END()

    glBlendEquationSeparatei
    ( STACK_GET_DATA(buf)
    , STACK_GET_DATA(modeRGB)
    , STACK_GET_DATA(modeAlpha)
    );
}

EXDL_API(eglc_blendFunci)
{
  /* void glBlendFunci(GLuint buf, GLenum src, GLenum dst) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, buf)
    STACK_FMT_DATA(GLenum, src)
    STACK_FMT_DATA(GLenum, dst)
  STACK_FMT_END()

    glBlendFunci
    ( STACK_GET_DATA(buf)
    , STACK_GET_DATA(src)
    , STACK_GET_DATA(dst)
    );
}

EXDL_API(eglc_blendFuncSeparatei)
{
  /* void glBlendFuncSeparatei(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, buf)
    STACK_FMT_DATA(GLenum, srcRGB)
    STACK_FMT_DATA(GLenum, dstRGB)
    STACK_FMT_DATA(GLenum, srcAlpha)
    STACK_FMT_DATA(GLenum, dstAlpha)
  STACK_FMT_END()

    glBlendFuncSeparatei
    ( STACK_GET_DATA(buf)
    , STACK_GET_DATA(srcRGB)
    , STACK_GET_DATA(dstRGB)
    , STACK_GET_DATA(srcAlpha)
    , STACK_GET_DATA(dstAlpha)
    );
}

/* GL_VERSION_4_1 */

/* GL_VERSION_4_2 */

/* GL_VERSION_4_3 */

/* GL_ARB_depth_buffer_float */

/* GL_ARB_framebuffer_object */

EXDL_API(eglc_isRenderbuffer)
{
  /* GLboolean glIsRenderbuffer(GLuint renderbuffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, renderbuffer)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsRenderbuffer
    ( STACK_GET_DATA(renderbuffer)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_bindRenderbuffer)
{
  /* void glBindRenderbuffer(GLenum target, GLuint renderbuffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, renderbuffer)
  STACK_FMT_END()

    glBindRenderbuffer
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(renderbuffer)
    );
}

EXDL_API(eglc_deleteRenderbuffers)
{
  /* void glDeleteRenderbuffers(GLsizei n, const GLuint* renderbuffers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLuint,  renderbuffers[])
  STACK_FMT_END()

    glDeleteRenderbuffers
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(renderbuffers)
    );
}

EXDL_API(eglc_genRenderbuffers)
{
  /* void glGenRenderbuffers(GLsizei n, GLuint* renderbuffers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, renderbuffers)
  FRAME_FMT_END()

    glGenRenderbuffers
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(renderbuffers)
    );

  THROW_FRAME()
}

EXDL_API(eglc_renderbufferStorage)
{
  /* void glRenderbufferStorage(GLenum target, GLenum internalformat, GLsizei width, GLsizei height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
  STACK_FMT_END()

    glRenderbufferStorage
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

EXDL_API(eglc_getRenderbufferParameteriv)
{
  /* void glGetRenderbufferParameteriv(GLenum target, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetRenderbufferParameteriv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_isFramebuffer)
{
  /* GLboolean glIsFramebuffer(GLuint framebuffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, framebuffer)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsFramebuffer
    ( STACK_GET_DATA(framebuffer)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_bindFramebuffer)
{
  /* void glBindFramebuffer(GLenum target, GLuint framebuffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, framebuffer)
  STACK_FMT_END()

    glBindFramebuffer
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(framebuffer)
    );
}

EXDL_API(eglc_deleteFramebuffers)
{
  /* void glDeleteFramebuffers(GLsizei n, const GLuint* framebuffers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLuint,  framebuffers[])
  STACK_FMT_END()

    glDeleteFramebuffers
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(framebuffers)
    );
}

EXDL_API(eglc_genFramebuffers)
{
  /* void glGenFramebuffers(GLsizei n, GLuint* framebuffers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, framebuffers)
  FRAME_FMT_END()

    glGenFramebuffers
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(framebuffers)
    );

  THROW_FRAME()
}

EXDL_API(eglc_checkFramebufferStatus)
{
  /* GLenum glCheckFramebufferStatus(GLenum target) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
  STACK_FMT_END()

  CATCH_RESULT(GLenum)

    glCheckFramebufferStatus
    ( STACK_GET_DATA(target)
    );

  THROW_RESULT(GLenum)
}

EXDL_API(eglc_framebufferTexture1D)
{
  /* void glFramebufferTexture1D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, attachment)
    STACK_FMT_DATA(GLenum, textarget)
    STACK_FMT_DATA(GLuint, texture)
    STACK_FMT_DATA(GLint,  level)
  STACK_FMT_END()

    glFramebufferTexture1D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(attachment)
    , STACK_GET_DATA(textarget)
    , STACK_GET_DATA(texture)
    , STACK_GET_DATA(level)
    );
}

EXDL_API(eglc_framebufferTexture2D)
{
  /* void glFramebufferTexture2D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, attachment)
    STACK_FMT_DATA(GLenum, textarget)
    STACK_FMT_DATA(GLuint, texture)
    STACK_FMT_DATA(GLint,  level)
  STACK_FMT_END()

    glFramebufferTexture2D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(attachment)
    , STACK_GET_DATA(textarget)
    , STACK_GET_DATA(texture)
    , STACK_GET_DATA(level)
    );
}

EXDL_API(eglc_framebufferTexture3D)
{
  /* void glFramebufferTexture3D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, attachment)
    STACK_FMT_DATA(GLenum, textarget)
    STACK_FMT_DATA(GLuint, texture)
    STACK_FMT_DATA(GLint,  level)
    STACK_FMT_DATA(GLint,  zoffset)
  STACK_FMT_END()

    glFramebufferTexture3D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(attachment)
    , STACK_GET_DATA(textarget)
    , STACK_GET_DATA(texture)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(zoffset)
    );
}

EXDL_API(eglc_framebufferRenderbuffer)
{
  /* void glFramebufferRenderbuffer(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, attachment)
    STACK_FMT_DATA(GLenum, renderbuffertarget)
    STACK_FMT_DATA(GLuint, renderbuffer)
  STACK_FMT_END()

    glFramebufferRenderbuffer
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(attachment)
    , STACK_GET_DATA(renderbuffertarget)
    , STACK_GET_DATA(renderbuffer)
    );
}

EXDL_API(eglc_getFramebufferAttachmentParameteriv)
{
  /* void glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, attachment)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetFramebufferAttachmentParameteriv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(attachment)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_generateMipmap)
{
  /* void glGenerateMipmap(GLenum target) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
  STACK_FMT_END()

    glGenerateMipmap
    ( STACK_GET_DATA(target)
    );
}

EXDL_API(eglc_blitFramebuffer)
{
  /* void glBlitFramebuffer(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,      srcX0)
    STACK_FMT_DATA(GLint,      srcY0)
    STACK_FMT_DATA(GLint,      srcX1)
    STACK_FMT_DATA(GLint,      srcY1)
    STACK_FMT_DATA(GLint,      dstX0)
    STACK_FMT_DATA(GLint,      dstY0)
    STACK_FMT_DATA(GLint,      dstX1)
    STACK_FMT_DATA(GLint,      dstY1)
    STACK_FMT_DATA(GLbitfield, mask)
    STACK_FMT_DATA(GLenum,     filter)
  STACK_FMT_END()

    glBlitFramebuffer
    ( STACK_GET_DATA(srcX0)
    , STACK_GET_DATA(srcY0)
    , STACK_GET_DATA(srcX1)
    , STACK_GET_DATA(srcY1)
    , STACK_GET_DATA(dstX0)
    , STACK_GET_DATA(dstY0)
    , STACK_GET_DATA(dstX1)
    , STACK_GET_DATA(dstY1)
    , STACK_GET_DATA(mask)
    , STACK_GET_DATA(filter)
    );
}

EXDL_API(eglc_renderbufferStorageMultisample)
{
  /* void glRenderbufferStorageMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLsizei, samples)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
  STACK_FMT_END()

    glRenderbufferStorageMultisample
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(samples)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

EXDL_API(eglc_framebufferTextureLayer)
{
  /* void glFramebufferTextureLayer(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, attachment)
    STACK_FMT_DATA(GLuint, texture)
    STACK_FMT_DATA(GLint,  level)
    STACK_FMT_DATA(GLint,  layer)
  STACK_FMT_END()

    glFramebufferTextureLayer
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(attachment)
    , STACK_GET_DATA(texture)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(layer)
    );
}

/* GL_ARB_map_buffer_range */

EXDL_API(eglc_mapBufferRange)
{
  /* GLvoid* glMapBufferRange(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,     target)
    STACK_FMT_DATA(GLintptr,   offset)
    STACK_FMT_DATA(GLsizeiptr, length)
    STACK_FMT_DATA(GLbitfield, access)
  STACK_FMT_END()

  CATCH_RESULT(GLvoid*)

    glMapBufferRange
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(length)
    , STACK_GET_DATA(access)
    );

  THROW_POINTER()
}

EXDL_API(eglc_flushMappedBufferRange)
{
  /* void glFlushMappedBufferRange(GLenum target, GLintptr offset, GLsizeiptr length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,     target)
    STACK_FMT_DATA(GLintptr,   offset)
    STACK_FMT_DATA(GLsizeiptr, length)
  STACK_FMT_END()

    glFlushMappedBufferRange
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(length)
    );
}

/* GL_ARB_vertex_array_object */

EXDL_API(eglc_bindVertexArray)
{
  /* void glBindVertexArray(GLuint array) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, array)
  STACK_FMT_END()

    glBindVertexArray
    ( STACK_GET_DATA(array)
    );
}

EXDL_API(eglc_deleteVertexArrays)
{
  /* void glDeleteVertexArrays(GLsizei n, const GLuint* arrays) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLuint,  arrays[])
  STACK_FMT_END()

    glDeleteVertexArrays
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(arrays)
    );
}

EXDL_API(eglc_genVertexArrays)
{
  /* void glGenVertexArrays(GLsizei n, GLuint* arrays) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, arrays)
  FRAME_FMT_END()

    glGenVertexArrays
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(arrays)
    );

  THROW_FRAME()
}

EXDL_API(eglc_isVertexArray)
{
  /* GLboolean glIsVertexArray(GLuint array) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, array)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsVertexArray
    ( STACK_GET_DATA(array)
    );

  THROW_RESULT(GLboolean)
}

/* GL_ARB_uniform_buffer_object */

EXDL_API(eglc_getUniformIndices)
{
  /* void glGetUniformIndices(GLuint program, GLsizei uniformCount, const GLchar* const *uniformNames, GLuint* uniformIndices) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLsizei,   uniformCount)
    STACK_FMT_DATA(GLchar  ,  uniformNames[])
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint,   uniformIndices)
  FRAME_FMT_END()

    glGetUniformIndices
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(uniformCount)
    , STACK_GET_ADDR(uniformNames)
    , FRAME_GET_ADDR(uniformIndices)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getActiveUniformsiv)
{
  /* void glGetActiveUniformsiv(GLuint program, GLsizei uniformCount, const GLuint* uniformIndices, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLsizei, uniformCount)
    STACK_FMT_LPTR(GLuint*, uniformIndices)
    STACK_FMT_DATA(GLenum,  pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint,  params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetActiveUniformsiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(uniformCount)
    , STACK_GET_DATA(uniformIndices)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getActiveUniformName)
{
  /* void glGetActiveUniformName(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLuint,   uniformIndex)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  uniformName)
  FRAME_FMT_END()

    glGetActiveUniformName
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(uniformIndex)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(uniformName)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getUniformBlockIndex)
{
  /* GLuint glGetUniformBlockIndex(GLuint program, const GLchar* uniformBlockName) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLchar,  uniformBlockName[])
  STACK_FMT_END()

  CATCH_RESULT(GLuint)

    glGetUniformBlockIndex
    ( STACK_GET_DATA(program)
    , STACK_GET_ADDR(uniformBlockName)
    );

  THROW_RESULT(GLuint)
}

EXDL_API(eglc_getActiveUniformBlockiv)
{
  /* void glGetActiveUniformBlockiv(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLuint, uniformBlockIndex)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetActiveUniformBlockiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(uniformBlockIndex)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getActiveUniformBlockName)
{
  /* void glGetActiveUniformBlockName(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLuint,   uniformBlockIndex)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  uniformBlockName)
  FRAME_FMT_END()

    glGetActiveUniformBlockName
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(uniformBlockIndex)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(uniformBlockName)
    );

  THROW_FRAME()
}

EXDL_API(eglc_uniformBlockBinding)
{
  /* void glUniformBlockBinding(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLuint, uniformBlockIndex)
    STACK_FMT_DATA(GLuint, uniformBlockBinding)
  STACK_FMT_END()

    glUniformBlockBinding
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(uniformBlockIndex)
    , STACK_GET_DATA(uniformBlockBinding)
    );
}

/* GL_ARB_copy_buffer */

EXDL_API(eglc_copyBufferSubData)
{
  /* void glCopyBufferSubData(GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,     readTarget)
    STACK_FMT_DATA(GLenum,     writeTarget)
    STACK_FMT_DATA(GLintptr,   readOffset)
    STACK_FMT_DATA(GLintptr,   writeOffset)
    STACK_FMT_DATA(GLsizeiptr, size)
  STACK_FMT_END()

    glCopyBufferSubData
    ( STACK_GET_DATA(readTarget)
    , STACK_GET_DATA(writeTarget)
    , STACK_GET_DATA(readOffset)
    , STACK_GET_DATA(writeOffset)
    , STACK_GET_DATA(size)
    );
}

/* GL_ARB_draw_elements_base_vertex */

EXDL_API(eglc_drawElementsBaseVertex)
{
  /* void glDrawElementsBaseVertex(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLint basevertex) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_LPTR(GLvoid*, indices)
    STACK_FMT_DATA(GLint,   basevertex)
  STACK_FMT_END()

    glDrawElementsBaseVertex
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(indices)
    , STACK_GET_DATA(basevertex)
    );
}

EXDL_API(eglc_drawRangeElementsBaseVertex)
{
  /* void glDrawRangeElementsBaseVertex(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid* indices, GLint basevertex) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLuint,  start)
    STACK_FMT_DATA(GLuint,  end)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_LPTR(GLvoid*, indices)
    STACK_FMT_DATA(GLint,   basevertex)
  STACK_FMT_END()

    glDrawRangeElementsBaseVertex
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(start)
    , STACK_GET_DATA(end)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(indices)
    , STACK_GET_DATA(basevertex)
    );
}

EXDL_API(eglc_drawElementsInstancedBaseVertex)
{
  /* void glDrawElementsInstancedBaseVertex(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei instancecount, GLint basevertex) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_LPTR(GLvoid*, indices)
    STACK_FMT_DATA(GLsizei, instancecount)
    STACK_FMT_DATA(GLint,   basevertex)
  STACK_FMT_END()

    glDrawElementsInstancedBaseVertex
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(indices)
    , STACK_GET_DATA(instancecount)
    , STACK_GET_DATA(basevertex)
    );
}

EXDL_API(eglc_multiDrawElementsBaseVertex)
{
  /* void glMultiDrawElementsBaseVertex(GLenum mode, const GLsizei* count, GLenum type, const GLvoid* const *indices, GLsizei drawcount, const GLint* basevertex) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,       mode)
    STACK_FMT_LPTR(GLsizei*,     count)
    STACK_FMT_DATA(GLenum,       type)
    STACK_FMT_LPTR(GLvoid* *,    indices)
    STACK_FMT_DATA(GLsizei,      drawcount)
    STACK_FMT_DATA(GLint,        basevertex[])
  STACK_FMT_END()

    glMultiDrawElementsBaseVertex
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(indices)
    , STACK_GET_DATA(drawcount)
    , STACK_GET_ADDR(basevertex)
    );
}

/* GL_ARB_provoking_vertex */

EXDL_API(eglc_provokingVertex)
{
  /* void glProvokingVertex(GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glProvokingVertex
    ( STACK_GET_DATA(mode)
    );
}

/* GL_ARB_sync */

EXDL_API(eglc_fenceSync)
{
  /* GLsync glFenceSync(GLenum condition, GLbitfield flags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,     condition)
    STACK_FMT_DATA(GLbitfield, flags)
  STACK_FMT_END()

  CATCH_RESULT(GLsync)

    glFenceSync
    ( STACK_GET_DATA(condition)
    , STACK_GET_DATA(flags)
    );

  THROW_RESULT(GLsync)
}

EXDL_API(eglc_isSync)
{
  /* GLboolean glIsSync(GLsync sync) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsync, sync)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsSync
    ( STACK_GET_DATA(sync)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_deleteSync)
{
  /* void glDeleteSync(GLsync sync) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsync, sync)
  STACK_FMT_END()

    glDeleteSync
    ( STACK_GET_DATA(sync)
    );
}

EXDL_API(eglc_clientWaitSync)
{
  /* GLenum glClientWaitSync(GLsync sync, GLbitfield flags, GLuint64 timeout) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsync,     sync)
    STACK_FMT_DATA(GLbitfield, flags)
    STACK_FMT_DATA(GLuint64,   timeout)
  STACK_FMT_END()

  CATCH_RESULT(GLenum)

    glClientWaitSync
    ( STACK_GET_DATA(sync)
    , STACK_GET_DATA(flags)
    , STACK_GET_DATA(timeout)
    );

  THROW_RESULT(GLenum)
}

EXDL_API(eglc_waitSync)
{
  /* void glWaitSync(GLsync sync, GLbitfield flags, GLuint64 timeout) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsync,     sync)
    STACK_FMT_DATA(GLbitfield, flags)
    STACK_FMT_DATA(GLuint64,   timeout)
  STACK_FMT_END()

    glWaitSync
    ( STACK_GET_DATA(sync)
    , STACK_GET_DATA(flags)
    , STACK_GET_DATA(timeout)
    );
}

EXDL_API(eglc_getInteger64v)
{
  /* void glGetInteger64v(GLenum pname, GLint64* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint64, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint64))

    glGetInteger64v
    ( STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getSynciv)
{
  /* void glGetSynciv(GLsync sync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsync,   sync)
    STACK_FMT_DATA(GLenum,   pname)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length[1])
    FRAME_FMT_DATA(GLint,   values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(bufSize) * sizeof(GLint))

    glGetSynciv
    ( STACK_GET_DATA(sync)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()
}

/* GL_ARB_texture_multisample */

EXDL_API(eglc_texImage2DMultisample)
{
  /* void glTexImage2DMultisample(GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,    target)
    STACK_FMT_DATA(GLsizei,   samples)
    STACK_FMT_DATA(GLint,     internalformat)
    STACK_FMT_DATA(GLsizei,   width)
    STACK_FMT_DATA(GLsizei,   height)
    STACK_FMT_DATA(GLboolean, fixedsamplelocations)
  STACK_FMT_END()

    glTexImage2DMultisample
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(samples)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(fixedsamplelocations)
    );
}

EXDL_API(eglc_texImage3DMultisample)
{
  /* void glTexImage3DMultisample(GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,    target)
    STACK_FMT_DATA(GLsizei,   samples)
    STACK_FMT_DATA(GLint,     internalformat)
    STACK_FMT_DATA(GLsizei,   width)
    STACK_FMT_DATA(GLsizei,   height)
    STACK_FMT_DATA(GLsizei,   depth)
    STACK_FMT_DATA(GLboolean, fixedsamplelocations)
  STACK_FMT_END()

    glTexImage3DMultisample
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(samples)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    , STACK_GET_DATA(fixedsamplelocations)
    );
}

EXDL_API(eglc_getMultisamplefv)
{
  /* void glGetMultisamplefv(GLenum pname, GLuint index, GLfloat* val) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   pname)
    STACK_FMT_DATA(GLuint,   index)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, val[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(index) * sizeof(GLfloat))

    glGetMultisamplefv
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(index)
    , FRAME_GET_ADDR(val)
    );

  THROW_FRAME()
}

EXDL_API(eglc_sampleMaski)
{
  /* void glSampleMaski(GLuint index, GLbitfield mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,     index)
    STACK_FMT_DATA(GLbitfield, mask)
  STACK_FMT_END()

    glSampleMaski
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(mask)
    );
}

/* GL_ARB_draw_buffers_blend */

EXDL_API(eglc_blendEquationiARB)
{
  /* void glBlendEquationiARB(GLuint buf, GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, buf)
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glBlendEquationiARB
    ( STACK_GET_DATA(buf)
    , STACK_GET_DATA(mode)
    );
}

EXDL_API(eglc_blendEquationSeparateiARB)
{
  /* void glBlendEquationSeparateiARB(GLuint buf, GLenum modeRGB, GLenum modeAlpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, buf)
    STACK_FMT_DATA(GLenum, modeRGB)
    STACK_FMT_DATA(GLenum, modeAlpha)
  STACK_FMT_END()

    glBlendEquationSeparateiARB
    ( STACK_GET_DATA(buf)
    , STACK_GET_DATA(modeRGB)
    , STACK_GET_DATA(modeAlpha)
    );
}

EXDL_API(eglc_blendFunciARB)
{
  /* void glBlendFunciARB(GLuint buf, GLenum src, GLenum dst) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, buf)
    STACK_FMT_DATA(GLenum, src)
    STACK_FMT_DATA(GLenum, dst)
  STACK_FMT_END()

    glBlendFunciARB
    ( STACK_GET_DATA(buf)
    , STACK_GET_DATA(src)
    , STACK_GET_DATA(dst)
    );
}

EXDL_API(eglc_blendFuncSeparateiARB)
{
  /* void glBlendFuncSeparateiARB(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, buf)
    STACK_FMT_DATA(GLenum, srcRGB)
    STACK_FMT_DATA(GLenum, dstRGB)
    STACK_FMT_DATA(GLenum, srcAlpha)
    STACK_FMT_DATA(GLenum, dstAlpha)
  STACK_FMT_END()

    glBlendFuncSeparateiARB
    ( STACK_GET_DATA(buf)
    , STACK_GET_DATA(srcRGB)
    , STACK_GET_DATA(dstRGB)
    , STACK_GET_DATA(srcAlpha)
    , STACK_GET_DATA(dstAlpha)
    );
}

/* GL_ARB_sample_shading */

EXDL_API(eglc_minSampleShadingARB)
{
  /* void glMinSampleShadingARB(GLfloat value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, value)
  STACK_FMT_END()

    glMinSampleShadingARB
    ( STACK_GET_DATA(value)
    );
}

/* GL_ARB_texture_cube_map_array */

/* GL_ARB_texture_gather */

/* GL_ARB_texture_query_lod */

/* GL_ARB_shading_language_include */

EXDL_API(eglc_namedStringARB)
{
  /* void glNamedStringARB(GLenum type, GLint namelen, const GLchar* name, GLint stringlen, const GLchar* string) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLint,   namelen)
    STACK_FMT_LPTR(GLchar*, name)
    STACK_FMT_DATA(GLint,   stringlen)
    STACK_FMT_DATA(GLchar,  string[])
  STACK_FMT_END()

    glNamedStringARB
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(namelen)
    , STACK_GET_DATA(name)
    , STACK_GET_DATA(stringlen)
    , STACK_GET_ADDR(string)
    );
}

EXDL_API(eglc_deleteNamedStringARB)
{
  /* void glDeleteNamedStringARB(GLint namelen, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   namelen)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

    glDeleteNamedStringARB
    ( STACK_GET_DATA(namelen)
    , STACK_GET_ADDR(name)
    );
}

EXDL_API(eglc_compileShaderIncludeARB)
{
  /* void glCompileShaderIncludeARB(GLuint shader, GLsizei count, const GLchar** path, const GLint* length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,       shader)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_LPTR(GLchar**,     path)
    STACK_FMT_DATA(GLint,        length[])
  STACK_FMT_END()

    glCompileShaderIncludeARB
    ( STACK_GET_DATA(shader)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(path)
    , STACK_GET_ADDR(length)
    );
}

EXDL_API(eglc_isNamedStringARB)
{
  /* GLboolean glIsNamedStringARB(GLint namelen, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   namelen)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsNamedStringARB
    ( STACK_GET_DATA(namelen)
    , STACK_GET_ADDR(name)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_getNamedStringARB)
{
  /* void glGetNamedStringARB(GLint namelen, const GLchar* name, GLsizei bufSize, GLint* stringlen, GLchar* string) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   namelen)
    STACK_FMT_LPTR(GLchar*, name)
    STACK_FMT_DATA(GLsizei, bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint,  stringlen)
    FRAME_FMT_DATA(GLchar, string)
  FRAME_FMT_END()

    glGetNamedStringARB
    ( STACK_GET_DATA(namelen)
    , STACK_GET_DATA(name)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(stringlen)
    , FRAME_GET_ADDR(string)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getNamedStringivARB)
{
  /* void glGetNamedStringivARB(GLint namelen, const GLchar* name, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   namelen)
    STACK_FMT_LPTR(GLchar*, name)
    STACK_FMT_DATA(GLenum,  pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint,  params)
  FRAME_FMT_END()

    glGetNamedStringivARB
    ( STACK_GET_DATA(namelen)
    , STACK_GET_DATA(name)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_texture_compression_bptc */

/* GL_ARB_blend_func_extended */

EXDL_API(eglc_bindFragDataLocationIndexed)
{
  /* void glBindFragDataLocationIndexed(GLuint program, GLuint colorNumber, GLuint index, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLuint,  colorNumber)
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

    glBindFragDataLocationIndexed
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(colorNumber)
    , STACK_GET_DATA(index)
    , STACK_GET_ADDR(name)
    );
}

EXDL_API(eglc_getFragDataIndex)
{
  /* GLint glGetFragDataIndex(GLuint program, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

  CATCH_RESULT(GLint)

    glGetFragDataIndex
    ( STACK_GET_DATA(program)
    , STACK_GET_ADDR(name)
    );

  THROW_RESULT(GLint)
}

/* GL_ARB_explicit_attrib_location */

/* GL_ARB_occlusion_query2 */

/* GL_ARB_sampler_objects */

EXDL_API(eglc_genSamplers)
{
  /* void glGenSamplers(GLsizei count, GLuint* samplers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, count)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, samplers)
  FRAME_FMT_END()

    glGenSamplers
    ( STACK_GET_DATA(count)
    , FRAME_GET_ADDR(samplers)
    );

  THROW_FRAME()
}

EXDL_API(eglc_deleteSamplers)
{
  /* void glDeleteSamplers(GLsizei count, const GLuint* samplers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLuint,  samplers[])
  STACK_FMT_END()

    glDeleteSamplers
    ( STACK_GET_DATA(count)
    , STACK_GET_ADDR(samplers)
    );
}

EXDL_API(eglc_isSampler)
{
  /* GLboolean glIsSampler(GLuint sampler) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, sampler)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsSampler
    ( STACK_GET_DATA(sampler)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_bindSampler)
{
  /* void glBindSampler(GLuint unit, GLuint sampler) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, unit)
    STACK_FMT_DATA(GLuint, sampler)
  STACK_FMT_END()

    glBindSampler
    ( STACK_GET_DATA(unit)
    , STACK_GET_DATA(sampler)
    );
}

EXDL_API(eglc_samplerParameteri)
{
  /* void glSamplerParameteri(GLuint sampler, GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, sampler)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glSamplerParameteri
    ( STACK_GET_DATA(sampler)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(eglc_samplerParameteriv)
{
  /* void glSamplerParameteriv(GLuint sampler, GLenum pname, const GLint* param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, sampler)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param[])
  STACK_FMT_END()

    glSamplerParameteriv
    ( STACK_GET_DATA(sampler)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(param)
    );
}

EXDL_API(eglc_samplerParameterf)
{
  /* void glSamplerParameterf(GLuint sampler, GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  sampler)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glSamplerParameterf
    ( STACK_GET_DATA(sampler)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(eglc_samplerParameterfv)
{
  /* void glSamplerParameterfv(GLuint sampler, GLenum pname, const GLfloat* param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   sampler)
    STACK_FMT_DATA(GLenum,   pname)
    STACK_FMT_DATA(GLfloat,  param[])
  STACK_FMT_END()

    glSamplerParameterfv
    ( STACK_GET_DATA(sampler)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(param)
    );
}

EXDL_API(eglc_samplerParameterIiv)
{
  /* void glSamplerParameterIiv(GLuint sampler, GLenum pname, const GLint* param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, sampler)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param[])
  STACK_FMT_END()

    glSamplerParameterIiv
    ( STACK_GET_DATA(sampler)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(param)
    );
}

EXDL_API(eglc_samplerParameterIuiv)
{
  /* void glSamplerParameterIuiv(GLuint sampler, GLenum pname, const GLuint* param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  sampler)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLuint,  param[])
  STACK_FMT_END()

    glSamplerParameterIuiv
    ( STACK_GET_DATA(sampler)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(param)
    );
}

EXDL_API(eglc_getSamplerParameteriv)
{
  /* void glGetSamplerParameteriv(GLuint sampler, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, sampler)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetSamplerParameteriv
    ( STACK_GET_DATA(sampler)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getSamplerParameterIiv)
{
  /* void glGetSamplerParameterIiv(GLuint sampler, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, sampler)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetSamplerParameterIiv
    ( STACK_GET_DATA(sampler)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getSamplerParameterfv)
{
  /* void glGetSamplerParameterfv(GLuint sampler, GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   sampler)
    STACK_FMT_DATA(GLenum,   pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLfloat))

    glGetSamplerParameterfv
    ( STACK_GET_DATA(sampler)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getSamplerParameterIuiv)
{
  /* void glGetSamplerParameterIuiv(GLuint sampler, GLenum pname, GLuint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  sampler)
    STACK_FMT_DATA(GLenum,  pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLuint))

    glGetSamplerParameterIuiv
    ( STACK_GET_DATA(sampler)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_texture_rgb10_a2ui */

/* GL_ARB_texture_swizzle */

/* GL_ARB_timer_query */

EXDL_API(eglc_queryCounter)
{
  /* void glQueryCounter(GLuint id, GLenum target) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, id)
    STACK_FMT_DATA(GLenum, target)
  STACK_FMT_END()

    glQueryCounter
    ( STACK_GET_DATA(id)
    , STACK_GET_DATA(target)
    );
}

EXDL_API(eglc_getQueryObjecti64v)
{
  /* void glGetQueryObjecti64v(GLuint id, GLenum pname, GLint64* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   id)
    STACK_FMT_DATA(GLenum,   pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint64, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint64))

    glGetQueryObjecti64v
    ( STACK_GET_DATA(id)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getQueryObjectui64v)
{
  /* void glGetQueryObjectui64v(GLuint id, GLenum pname, GLuint64* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    id)
    STACK_FMT_DATA(GLenum,    pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint64, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLuint64))

    glGetQueryObjectui64v
    ( STACK_GET_DATA(id)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_vertex_type_2_10_10_10_rev */

EXDL_API(eglc_vertexP2ui)
{
  /* void glVertexP2ui(GLenum type, GLuint value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, value)
  STACK_FMT_END()

    glVertexP2ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eglc_vertexP2uiv)
{
  /* void glVertexP2uiv(GLenum type, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glVertexP2uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_vertexP3ui)
{
  /* void glVertexP3ui(GLenum type, GLuint value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, value)
  STACK_FMT_END()

    glVertexP3ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eglc_vertexP3uiv)
{
  /* void glVertexP3uiv(GLenum type, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glVertexP3uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_vertexP4ui)
{
  /* void glVertexP4ui(GLenum type, GLuint value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, value)
  STACK_FMT_END()

    glVertexP4ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eglc_vertexP4uiv)
{
  /* void glVertexP4uiv(GLenum type, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glVertexP4uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_texCoordP1ui)
{
  /* void glTexCoordP1ui(GLenum type, GLuint coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, coords)
  STACK_FMT_END()

    glTexCoordP1ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(coords)
    );
}

EXDL_API(eglc_texCoordP1uiv)
{
  /* void glTexCoordP1uiv(GLenum type, const GLuint* coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  coords[])
  STACK_FMT_END()

    glTexCoordP1uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(coords)
    );
}

EXDL_API(eglc_texCoordP2ui)
{
  /* void glTexCoordP2ui(GLenum type, GLuint coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, coords)
  STACK_FMT_END()

    glTexCoordP2ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(coords)
    );
}

EXDL_API(eglc_texCoordP2uiv)
{
  /* void glTexCoordP2uiv(GLenum type, const GLuint* coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  coords[])
  STACK_FMT_END()

    glTexCoordP2uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(coords)
    );
}

EXDL_API(eglc_texCoordP3ui)
{
  /* void glTexCoordP3ui(GLenum type, GLuint coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, coords)
  STACK_FMT_END()

    glTexCoordP3ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(coords)
    );
}

EXDL_API(eglc_texCoordP3uiv)
{
  /* void glTexCoordP3uiv(GLenum type, const GLuint* coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  coords[])
  STACK_FMT_END()

    glTexCoordP3uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(coords)
    );
}

EXDL_API(eglc_texCoordP4ui)
{
  /* void glTexCoordP4ui(GLenum type, GLuint coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, coords)
  STACK_FMT_END()

    glTexCoordP4ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(coords)
    );
}

EXDL_API(eglc_texCoordP4uiv)
{
  /* void glTexCoordP4uiv(GLenum type, const GLuint* coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  coords[])
  STACK_FMT_END()

    glTexCoordP4uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(coords)
    );
}

EXDL_API(eglc_multiTexCoordP1ui)
{
  /* void glMultiTexCoordP1ui(GLenum texture, GLenum type, GLuint coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, texture)
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, coords)
  STACK_FMT_END()

    glMultiTexCoordP1ui
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(coords)
    );
}

EXDL_API(eglc_multiTexCoordP1uiv)
{
  /* void glMultiTexCoordP1uiv(GLenum texture, GLenum type, const GLuint* coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  texture)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  coords[])
  STACK_FMT_END()

    glMultiTexCoordP1uiv
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(coords)
    );
}

EXDL_API(eglc_multiTexCoordP2ui)
{
  /* void glMultiTexCoordP2ui(GLenum texture, GLenum type, GLuint coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, texture)
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, coords)
  STACK_FMT_END()

    glMultiTexCoordP2ui
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(coords)
    );
}

EXDL_API(eglc_multiTexCoordP2uiv)
{
  /* void glMultiTexCoordP2uiv(GLenum texture, GLenum type, const GLuint* coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  texture)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  coords[])
  STACK_FMT_END()

    glMultiTexCoordP2uiv
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(coords)
    );
}

EXDL_API(eglc_multiTexCoordP3ui)
{
  /* void glMultiTexCoordP3ui(GLenum texture, GLenum type, GLuint coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, texture)
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, coords)
  STACK_FMT_END()

    glMultiTexCoordP3ui
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(coords)
    );
}

EXDL_API(eglc_multiTexCoordP3uiv)
{
  /* void glMultiTexCoordP3uiv(GLenum texture, GLenum type, const GLuint* coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  texture)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  coords[])
  STACK_FMT_END()

    glMultiTexCoordP3uiv
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(coords)
    );
}

EXDL_API(eglc_multiTexCoordP4ui)
{
  /* void glMultiTexCoordP4ui(GLenum texture, GLenum type, GLuint coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, texture)
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, coords)
  STACK_FMT_END()

    glMultiTexCoordP4ui
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(coords)
    );
}

EXDL_API(eglc_multiTexCoordP4uiv)
{
  /* void glMultiTexCoordP4uiv(GLenum texture, GLenum type, const GLuint* coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  texture)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  coords[])
  STACK_FMT_END()

    glMultiTexCoordP4uiv
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(coords)
    );
}

EXDL_API(eglc_normalP3ui)
{
  /* void glNormalP3ui(GLenum type, GLuint coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, coords)
  STACK_FMT_END()

    glNormalP3ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(coords)
    );
}

EXDL_API(eglc_normalP3uiv)
{
  /* void glNormalP3uiv(GLenum type, const GLuint* coords) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  coords[])
  STACK_FMT_END()

    glNormalP3uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(coords)
    );
}

EXDL_API(eglc_colorP3ui)
{
  /* void glColorP3ui(GLenum type, GLuint color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, color)
  STACK_FMT_END()

    glColorP3ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(color)
    );
}

EXDL_API(eglc_colorP3uiv)
{
  /* void glColorP3uiv(GLenum type, const GLuint* color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  color[])
  STACK_FMT_END()

    glColorP3uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(color)
    );
}

EXDL_API(eglc_colorP4ui)
{
  /* void glColorP4ui(GLenum type, GLuint color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, color)
  STACK_FMT_END()

    glColorP4ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(color)
    );
}

EXDL_API(eglc_colorP4uiv)
{
  /* void glColorP4uiv(GLenum type, const GLuint* color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  color[])
  STACK_FMT_END()

    glColorP4uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(color)
    );
}

EXDL_API(eglc_secondaryColorP3ui)
{
  /* void glSecondaryColorP3ui(GLenum type, GLuint color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, color)
  STACK_FMT_END()

    glSecondaryColorP3ui
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(color)
    );
}

EXDL_API(eglc_secondaryColorP3uiv)
{
  /* void glSecondaryColorP3uiv(GLenum type, const GLuint* color) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  color[])
  STACK_FMT_END()

    glSecondaryColorP3uiv
    ( STACK_GET_DATA(type)
    , STACK_GET_ADDR(color)
    );
}

EXDL_API(eglc_vertexAttribP1ui)
{
  /* void glVertexAttribP1ui(GLuint index, GLenum type, GLboolean normalized, GLuint value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLenum,    type)
    STACK_FMT_DATA(GLboolean, normalized)
    STACK_FMT_DATA(GLuint,    value)
  STACK_FMT_END()

    glVertexAttribP1ui
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eglc_vertexAttribP1uiv)
{
  /* void glVertexAttribP1uiv(GLuint index, GLenum type, GLboolean normalized, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,        index)
    STACK_FMT_DATA(GLenum,        type)
    STACK_FMT_DATA(GLboolean,     normalized)
    STACK_FMT_DATA(GLuint,        value[])
  STACK_FMT_END()

    glVertexAttribP1uiv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_vertexAttribP2ui)
{
  /* void glVertexAttribP2ui(GLuint index, GLenum type, GLboolean normalized, GLuint value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLenum,    type)
    STACK_FMT_DATA(GLboolean, normalized)
    STACK_FMT_DATA(GLuint,    value)
  STACK_FMT_END()

    glVertexAttribP2ui
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eglc_vertexAttribP2uiv)
{
  /* void glVertexAttribP2uiv(GLuint index, GLenum type, GLboolean normalized, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,        index)
    STACK_FMT_DATA(GLenum,        type)
    STACK_FMT_DATA(GLboolean,     normalized)
    STACK_FMT_DATA(GLuint,        value[])
  STACK_FMT_END()

    glVertexAttribP2uiv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_vertexAttribP3ui)
{
  /* void glVertexAttribP3ui(GLuint index, GLenum type, GLboolean normalized, GLuint value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLenum,    type)
    STACK_FMT_DATA(GLboolean, normalized)
    STACK_FMT_DATA(GLuint,    value)
  STACK_FMT_END()

    glVertexAttribP3ui
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eglc_vertexAttribP3uiv)
{
  /* void glVertexAttribP3uiv(GLuint index, GLenum type, GLboolean normalized, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,        index)
    STACK_FMT_DATA(GLenum,        type)
    STACK_FMT_DATA(GLboolean,     normalized)
    STACK_FMT_DATA(GLuint,        value[])
  STACK_FMT_END()

    glVertexAttribP3uiv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_vertexAttribP4ui)
{
  /* void glVertexAttribP4ui(GLuint index, GLenum type, GLboolean normalized, GLuint value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLenum,    type)
    STACK_FMT_DATA(GLboolean, normalized)
    STACK_FMT_DATA(GLuint,    value)
  STACK_FMT_END()

    glVertexAttribP4ui
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eglc_vertexAttribP4uiv)
{
  /* void glVertexAttribP4uiv(GLuint index, GLenum type, GLboolean normalized, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,        index)
    STACK_FMT_DATA(GLenum,        type)
    STACK_FMT_DATA(GLboolean,     normalized)
    STACK_FMT_DATA(GLuint,        value[])
  STACK_FMT_END()

    glVertexAttribP4uiv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_ADDR(value)
    );
}

/* GL_ARB_draw_indirect */

EXDL_API(eglc_drawArraysIndirect)
{
  /* void glDrawArraysIndirect(GLenum mode, const GLvoid* indirect) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLvoid,  indirect[])
  STACK_FMT_END()

    glDrawArraysIndirect
    ( STACK_GET_DATA(mode)
    , STACK_GET_ADDR(indirect)
    );
}

EXDL_API(eglc_drawElementsIndirect)
{
  /* void glDrawElementsIndirect(GLenum mode, GLenum type, const GLvoid* indirect) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  indirect[])
  STACK_FMT_END()

    glDrawElementsIndirect
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(indirect)
    );
}

/* GL_ARB_gpu_shader5 */

/* GL_ARB_gpu_shader_fp64 */

EXDL_API(eglc_uniform1d)
{
  /* void glUniform1d(GLint location, GLdouble x) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLdouble, x)
  STACK_FMT_END()

    glUniform1d
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(x)
    );
}

EXDL_API(eglc_uniform2d)
{
  /* void glUniform2d(GLint location, GLdouble x, GLdouble y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
  STACK_FMT_END()

    glUniform2d
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(eglc_uniform3d)
{
  /* void glUniform3d(GLint location, GLdouble x, GLdouble y, GLdouble z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
  STACK_FMT_END()

    glUniform3d
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(eglc_uniform4d)
{
  /* void glUniform4d(GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
    STACK_FMT_DATA(GLdouble, w)
  STACK_FMT_END()

    glUniform4d
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(eglc_uniform1dv)
{
  /* void glUniform1dv(GLint location, GLsizei count, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniform1dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform2dv)
{
  /* void glUniform2dv(GLint location, GLsizei count, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniform2dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform3dv)
{
  /* void glUniform3dv(GLint location, GLsizei count, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniform3dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniform4dv)
{
  /* void glUniform4dv(GLint location, GLsizei count, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniform4dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix2dv)
{
  /* void glUniformMatrix2dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniformMatrix2dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix3dv)
{
  /* void glUniformMatrix3dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniformMatrix3dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix4dv)
{
  /* void glUniformMatrix4dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniformMatrix4dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix2x3dv)
{
  /* void glUniformMatrix2x3dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniformMatrix2x3dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix2x4dv)
{
  /* void glUniformMatrix2x4dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniformMatrix2x4dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix3x2dv)
{
  /* void glUniformMatrix3x2dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniformMatrix3x2dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix3x4dv)
{
  /* void glUniformMatrix3x4dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniformMatrix3x4dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix4x2dv)
{
  /* void glUniformMatrix4x2dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniformMatrix4x2dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_uniformMatrix4x3dv)
{
  /* void glUniformMatrix4x3dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glUniformMatrix4x3dv
    ( STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_getUniformdv)
{
  /* void glGetUniformdv(GLuint program, GLint location, GLdouble* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLdouble, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(location) * sizeof(GLdouble))

    glGetUniformdv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_shader_subroutine */

EXDL_API(eglc_getSubroutineUniformLocation)
{
  /* GLint glGetSubroutineUniformLocation(GLuint program, GLenum shadertype, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLenum,  shadertype)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

  CATCH_RESULT(GLint)

    glGetSubroutineUniformLocation
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(shadertype)
    , STACK_GET_ADDR(name)
    );

  THROW_RESULT(GLint)
}

EXDL_API(eglc_getSubroutineIndex)
{
  /* GLuint glGetSubroutineIndex(GLuint program, GLenum shadertype, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLenum,  shadertype)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

  CATCH_RESULT(GLuint)

    glGetSubroutineIndex
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(shadertype)
    , STACK_GET_ADDR(name)
    );

  THROW_RESULT(GLuint)
}

EXDL_API(eglc_getActiveSubroutineUniformiv)
{
  /* void glGetActiveSubroutineUniformiv(GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLenum, shadertype)
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetActiveSubroutineUniformiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(shadertype)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getActiveSubroutineUniformName)
{
  /* void glGetActiveSubroutineUniformName(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLenum,   shadertype)
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLsizei,  bufsize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  name)
  FRAME_FMT_END()

    glGetActiveSubroutineUniformName
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(shadertype)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(bufsize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(name)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getActiveSubroutineName)
{
  /* void glGetActiveSubroutineName(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLenum,   shadertype)
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLsizei,  bufsize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  name)
  FRAME_FMT_END()

    glGetActiveSubroutineName
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(shadertype)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(bufsize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(name)
    );

  THROW_FRAME()
}

EXDL_API(eglc_uniformSubroutinesuiv)
{
  /* void glUniformSubroutinesuiv(GLenum shadertype, GLsizei count, const GLuint* indices) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  shadertype)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLuint,  indices[])
  STACK_FMT_END()

    glUniformSubroutinesuiv
    ( STACK_GET_DATA(shadertype)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(indices)
    );
}

EXDL_API(eglc_getUniformSubroutineuiv)
{
  /* void glGetUniformSubroutineuiv(GLenum shadertype, GLint location, GLuint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  shadertype)
    STACK_FMT_DATA(GLint,   location)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(location) * sizeof(GLuint))

    glGetUniformSubroutineuiv
    ( STACK_GET_DATA(shadertype)
    , STACK_GET_DATA(location)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getProgramStageiv)
{
  /* void glGetProgramStageiv(GLuint program, GLenum shadertype, GLenum pname, GLint* values) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLenum, shadertype)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetProgramStageiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(shadertype)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()
}

/* GL_ARB_tessellation_shader */

EXDL_API(eglc_patchParameteri)
{
  /* void glPatchParameteri(GLenum pname, GLint value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  value)
  STACK_FMT_END()

    glPatchParameteri
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(eglc_patchParameterfv)
{
  /* void glPatchParameterfv(GLenum pname, const GLfloat* values) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   pname)
    STACK_FMT_DATA(GLfloat,  values[])
  STACK_FMT_END()

    glPatchParameterfv
    ( STACK_GET_DATA(pname)
    , STACK_GET_ADDR(values)
    );
}

/* GL_ARB_texture_buffer_object_rgb32 */

/* GL_ARB_transform_feedback2 */

EXDL_API(eglc_bindTransformFeedback)
{
  /* void glBindTransformFeedback(GLenum target, GLuint id) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, id)
  STACK_FMT_END()

    glBindTransformFeedback
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(id)
    );
}

EXDL_API(eglc_deleteTransformFeedbacks)
{
  /* void glDeleteTransformFeedbacks(GLsizei n, const GLuint* ids) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLuint,  ids[])
  STACK_FMT_END()

    glDeleteTransformFeedbacks
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(ids)
    );
}

EXDL_API(eglc_genTransformFeedbacks)
{
  /* void glGenTransformFeedbacks(GLsizei n, GLuint* ids) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, ids)
  FRAME_FMT_END()

    glGenTransformFeedbacks
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(ids)
    );

  THROW_FRAME()
}

EXDL_API(eglc_isTransformFeedback)
{
  /* GLboolean glIsTransformFeedback(GLuint id) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, id)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsTransformFeedback
    ( STACK_GET_DATA(id)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_pauseTransformFeedback)
{
  /* void glPauseTransformFeedback(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glPauseTransformFeedback
  (
  );
}

EXDL_API(eglc_resumeTransformFeedback)
{
  /* void glResumeTransformFeedback(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glResumeTransformFeedback
  (
  );
}

EXDL_API(eglc_drawTransformFeedback)
{
  /* void glDrawTransformFeedback(GLenum mode, GLuint id) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
    STACK_FMT_DATA(GLuint, id)
  STACK_FMT_END()

    glDrawTransformFeedback
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(id)
    );
}

/* GL_ARB_transform_feedback3 */

EXDL_API(eglc_drawTransformFeedbackStream)
{
  /* void glDrawTransformFeedbackStream(GLenum mode, GLuint id, GLuint stream) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
    STACK_FMT_DATA(GLuint, id)
    STACK_FMT_DATA(GLuint, stream)
  STACK_FMT_END()

    glDrawTransformFeedbackStream
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(id)
    , STACK_GET_DATA(stream)
    );
}

EXDL_API(eglc_beginQueryIndexed)
{
  /* void glBeginQueryIndexed(GLenum target, GLuint index, GLuint id) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLuint, id)
  STACK_FMT_END()

    glBeginQueryIndexed
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(id)
    );
}

EXDL_API(eglc_endQueryIndexed)
{
  /* void glEndQueryIndexed(GLenum target, GLuint index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, index)
  STACK_FMT_END()

    glEndQueryIndexed
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    );
}

EXDL_API(eglc_getQueryIndexediv)
{
  /* void glGetQueryIndexediv(GLenum target, GLuint index, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetQueryIndexediv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_ES2_compatibility */

EXDL_API(eglc_releaseShaderCompiler)
{
  /* void glReleaseShaderCompiler(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glReleaseShaderCompiler
  (
  );
}

EXDL_API(eglc_shaderBinary)
{
  /* void glShaderBinary(GLsizei count, const GLuint* shaders, GLenum binaryformat, const GLvoid* binary, GLsizei length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_LPTR(GLuint*, shaders)
    STACK_FMT_DATA(GLenum,  binaryformat)
    STACK_FMT_LPTR(GLvoid*, binary)
    STACK_FMT_DATA(GLsizei, length)
  STACK_FMT_END()

    glShaderBinary
    ( STACK_GET_DATA(count)
    , STACK_GET_DATA(shaders)
    , STACK_GET_DATA(binaryformat)
    , STACK_GET_DATA(binary)
    , STACK_GET_DATA(length)
    );
}

EXDL_API(eglc_getShaderPrecisionFormat)
{
  /* void glGetShaderPrecisionFormat(GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, shadertype)
    STACK_FMT_DATA(GLenum, precisiontype)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, range)
    FRAME_FMT_DATA(GLint, precision)
  FRAME_FMT_END()

    glGetShaderPrecisionFormat
    ( STACK_GET_DATA(shadertype)
    , STACK_GET_DATA(precisiontype)
    , FRAME_GET_ADDR(range)
    , FRAME_GET_ADDR(precision)
    );

  THROW_FRAME()
}

EXDL_API(eglc_depthRangef)
{
  /* void glDepthRangef(GLfloat n, GLfloat f) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, n)
    STACK_FMT_DATA(GLfloat, f)
  STACK_FMT_END()

    glDepthRangef
    ( STACK_GET_DATA(n)
    , STACK_GET_DATA(f)
    );
}

EXDL_API(eglc_clearDepthf)
{
  /* void glClearDepthf(GLfloat d) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, d)
  STACK_FMT_END()

    glClearDepthf
    ( STACK_GET_DATA(d)
    );
}

/* GL_ARB_get_program_binary */

EXDL_API(eglc_getProgramBinary)
{
  /* void glGetProgramBinary(GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, GLvoid* binary) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLenum,  binaryFormat)
    FRAME_FMT_DATA(GLvoid,  binary)
  FRAME_FMT_END()

    glGetProgramBinary
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(binaryFormat)
    , FRAME_GET_ADDR(binary)
    );

  THROW_FRAME()
}

EXDL_API(eglc_programBinary)
{
  /* void glProgramBinary(GLuint program, GLenum binaryFormat, const GLvoid* binary, GLsizei length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLenum,  binaryFormat)
    STACK_FMT_LPTR(GLvoid*, binary)
    STACK_FMT_DATA(GLsizei, length)
  STACK_FMT_END()

    glProgramBinary
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(binaryFormat)
    , STACK_GET_DATA(binary)
    , STACK_GET_DATA(length)
    );
}

EXDL_API(eglc_programParameteri)
{
  /* void glProgramParameteri(GLuint program, GLenum pname, GLint value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  value)
  STACK_FMT_END()

    glProgramParameteri
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(value)
    );
}

/* GL_ARB_separate_shader_objects */

EXDL_API(eglc_useProgramStages)
{
  /* void glUseProgramStages(GLuint pipeline, GLbitfield stages, GLuint program) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,     pipeline)
    STACK_FMT_DATA(GLbitfield, stages)
    STACK_FMT_DATA(GLuint,     program)
  STACK_FMT_END()

    glUseProgramStages
    ( STACK_GET_DATA(pipeline)
    , STACK_GET_DATA(stages)
    , STACK_GET_DATA(program)
    );
}

EXDL_API(eglc_activeShaderProgram)
{
  /* void glActiveShaderProgram(GLuint pipeline, GLuint program) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, pipeline)
    STACK_FMT_DATA(GLuint, program)
  STACK_FMT_END()

    glActiveShaderProgram
    ( STACK_GET_DATA(pipeline)
    , STACK_GET_DATA(program)
    );
}

EXDL_API(eglc_createShaderProgramv)
{
  /* GLuint glCreateShaderProgramv(GLenum type, GLsizei count, const GLchar** strings) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   type)
    STACK_FMT_DATA(GLsizei,  count)
    STACK_FMT_DATA(GLchar ,  strings[])
  STACK_FMT_END()

  CATCH_RESULT(GLuint)

    glCreateShaderProgramv
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(strings)
    );

  THROW_RESULT(GLuint)
}

EXDL_API(eglc_bindProgramPipeline)
{
  /* void glBindProgramPipeline(GLuint pipeline) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, pipeline)
  STACK_FMT_END()

    glBindProgramPipeline
    ( STACK_GET_DATA(pipeline)
    );
}

EXDL_API(eglc_deleteProgramPipelines)
{
  /* void glDeleteProgramPipelines(GLsizei n, const GLuint* pipelines) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLuint,  pipelines[])
  STACK_FMT_END()

    glDeleteProgramPipelines
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(pipelines)
    );
}

EXDL_API(eglc_genProgramPipelines)
{
  /* void glGenProgramPipelines(GLsizei n, GLuint* pipelines) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, pipelines)
  FRAME_FMT_END()

    glGenProgramPipelines
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(pipelines)
    );

  THROW_FRAME()
}

EXDL_API(eglc_isProgramPipeline)
{
  /* GLboolean glIsProgramPipeline(GLuint pipeline) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, pipeline)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsProgramPipeline
    ( STACK_GET_DATA(pipeline)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(eglc_getProgramPipelineiv)
{
  /* void glGetProgramPipelineiv(GLuint pipeline, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, pipeline)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetProgramPipelineiv
    ( STACK_GET_DATA(pipeline)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_programUniform1i)
{
  /* void glProgramUniform1i(GLuint program, GLint location, GLint v0) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLint,  v0)
  STACK_FMT_END()

    glProgramUniform1i
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    );
}

EXDL_API(eglc_programUniform1iv)
{
  /* void glProgramUniform1iv(GLuint program, GLint location, GLsizei count, const GLint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,       program)
    STACK_FMT_DATA(GLint,        location)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_DATA(GLint,        value[])
  STACK_FMT_END()

    glProgramUniform1iv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform1f)
{
  /* void glProgramUniform1f(GLuint program, GLint location, GLfloat v0) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLfloat, v0)
  STACK_FMT_END()

    glProgramUniform1f
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    );
}

EXDL_API(eglc_programUniform1fv)
{
  /* void glProgramUniform1fv(GLuint program, GLint location, GLsizei count, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLsizei,  count)
    STACK_FMT_DATA(GLfloat,  value[])
  STACK_FMT_END()

    glProgramUniform1fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform1d)
{
  /* void glProgramUniform1d(GLuint program, GLint location, GLdouble v0) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLdouble, v0)
  STACK_FMT_END()

    glProgramUniform1d
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    );
}

EXDL_API(eglc_programUniform1dv)
{
  /* void glProgramUniform1dv(GLuint program, GLint location, GLsizei count, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniform1dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform1ui)
{
  /* void glProgramUniform1ui(GLuint program, GLint location, GLuint v0) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLuint, v0)
  STACK_FMT_END()

    glProgramUniform1ui
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    );
}

EXDL_API(eglc_programUniform1uiv)
{
  /* void glProgramUniform1uiv(GLuint program, GLint location, GLsizei count, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glProgramUniform1uiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform2i)
{
  /* void glProgramUniform2i(GLuint program, GLint location, GLint v0, GLint v1) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLint,  v0)
    STACK_FMT_DATA(GLint,  v1)
  STACK_FMT_END()

    glProgramUniform2i
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    );
}

EXDL_API(eglc_programUniform2iv)
{
  /* void glProgramUniform2iv(GLuint program, GLint location, GLsizei count, const GLint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,       program)
    STACK_FMT_DATA(GLint,        location)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_DATA(GLint,        value[])
  STACK_FMT_END()

    glProgramUniform2iv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform2f)
{
  /* void glProgramUniform2f(GLuint program, GLint location, GLfloat v0, GLfloat v1) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLfloat, v0)
    STACK_FMT_DATA(GLfloat, v1)
  STACK_FMT_END()

    glProgramUniform2f
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    );
}

EXDL_API(eglc_programUniform2fv)
{
  /* void glProgramUniform2fv(GLuint program, GLint location, GLsizei count, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLsizei,  count)
    STACK_FMT_DATA(GLfloat,  value[])
  STACK_FMT_END()

    glProgramUniform2fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform2d)
{
  /* void glProgramUniform2d(GLuint program, GLint location, GLdouble v0, GLdouble v1) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLdouble, v0)
    STACK_FMT_DATA(GLdouble, v1)
  STACK_FMT_END()

    glProgramUniform2d
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    );
}

EXDL_API(eglc_programUniform2dv)
{
  /* void glProgramUniform2dv(GLuint program, GLint location, GLsizei count, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniform2dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform2ui)
{
  /* void glProgramUniform2ui(GLuint program, GLint location, GLuint v0, GLuint v1) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLuint, v0)
    STACK_FMT_DATA(GLuint, v1)
  STACK_FMT_END()

    glProgramUniform2ui
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    );
}

EXDL_API(eglc_programUniform2uiv)
{
  /* void glProgramUniform2uiv(GLuint program, GLint location, GLsizei count, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glProgramUniform2uiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform3i)
{
  /* void glProgramUniform3i(GLuint program, GLint location, GLint v0, GLint v1, GLint v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLint,  v0)
    STACK_FMT_DATA(GLint,  v1)
    STACK_FMT_DATA(GLint,  v2)
  STACK_FMT_END()

    glProgramUniform3i
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    );
}

EXDL_API(eglc_programUniform3iv)
{
  /* void glProgramUniform3iv(GLuint program, GLint location, GLsizei count, const GLint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,       program)
    STACK_FMT_DATA(GLint,        location)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_DATA(GLint,        value[])
  STACK_FMT_END()

    glProgramUniform3iv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform3f)
{
  /* void glProgramUniform3f(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLfloat, v0)
    STACK_FMT_DATA(GLfloat, v1)
    STACK_FMT_DATA(GLfloat, v2)
  STACK_FMT_END()

    glProgramUniform3f
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    );
}

EXDL_API(eglc_programUniform3fv)
{
  /* void glProgramUniform3fv(GLuint program, GLint location, GLsizei count, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLsizei,  count)
    STACK_FMT_DATA(GLfloat,  value[])
  STACK_FMT_END()

    glProgramUniform3fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform3d)
{
  /* void glProgramUniform3d(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLdouble, v0)
    STACK_FMT_DATA(GLdouble, v1)
    STACK_FMT_DATA(GLdouble, v2)
  STACK_FMT_END()

    glProgramUniform3d
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    );
}

EXDL_API(eglc_programUniform3dv)
{
  /* void glProgramUniform3dv(GLuint program, GLint location, GLsizei count, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniform3dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform3ui)
{
  /* void glProgramUniform3ui(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLuint, v0)
    STACK_FMT_DATA(GLuint, v1)
    STACK_FMT_DATA(GLuint, v2)
  STACK_FMT_END()

    glProgramUniform3ui
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    );
}

EXDL_API(eglc_programUniform3uiv)
{
  /* void glProgramUniform3uiv(GLuint program, GLint location, GLsizei count, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glProgramUniform3uiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform4i)
{
  /* void glProgramUniform4i(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLint,  v0)
    STACK_FMT_DATA(GLint,  v1)
    STACK_FMT_DATA(GLint,  v2)
    STACK_FMT_DATA(GLint,  v3)
  STACK_FMT_END()

    glProgramUniform4i
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    , STACK_GET_DATA(v3)
    );
}

EXDL_API(eglc_programUniform4iv)
{
  /* void glProgramUniform4iv(GLuint program, GLint location, GLsizei count, const GLint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,       program)
    STACK_FMT_DATA(GLint,        location)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_DATA(GLint,        value[])
  STACK_FMT_END()

    glProgramUniform4iv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform4f)
{
  /* void glProgramUniform4f(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLfloat, v0)
    STACK_FMT_DATA(GLfloat, v1)
    STACK_FMT_DATA(GLfloat, v2)
    STACK_FMT_DATA(GLfloat, v3)
  STACK_FMT_END()

    glProgramUniform4f
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    , STACK_GET_DATA(v3)
    );
}

EXDL_API(eglc_programUniform4fv)
{
  /* void glProgramUniform4fv(GLuint program, GLint location, GLsizei count, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLsizei,  count)
    STACK_FMT_DATA(GLfloat,  value[])
  STACK_FMT_END()

    glProgramUniform4fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform4d)
{
  /* void glProgramUniform4d(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLdouble, v0)
    STACK_FMT_DATA(GLdouble, v1)
    STACK_FMT_DATA(GLdouble, v2)
    STACK_FMT_DATA(GLdouble, v3)
  STACK_FMT_END()

    glProgramUniform4d
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    , STACK_GET_DATA(v3)
    );
}

EXDL_API(eglc_programUniform4dv)
{
  /* void glProgramUniform4dv(GLuint program, GLint location, GLsizei count, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniform4dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniform4ui)
{
  /* void glProgramUniform4ui(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLint,  location)
    STACK_FMT_DATA(GLuint, v0)
    STACK_FMT_DATA(GLuint, v1)
    STACK_FMT_DATA(GLuint, v2)
    STACK_FMT_DATA(GLuint, v3)
  STACK_FMT_END()

    glProgramUniform4ui
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(v0)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    , STACK_GET_DATA(v3)
    );
}

EXDL_API(eglc_programUniform4uiv)
{
  /* void glProgramUniform4uiv(GLuint program, GLint location, GLsizei count, const GLuint* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLuint,  value[])
  STACK_FMT_END()

    glProgramUniform4uiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix2fv)
{
  /* void glProgramUniformMatrix2fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,         program)
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glProgramUniformMatrix2fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix3fv)
{
  /* void glProgramUniformMatrix3fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,         program)
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glProgramUniformMatrix3fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix4fv)
{
  /* void glProgramUniformMatrix4fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,         program)
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glProgramUniformMatrix4fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix2dv)
{
  /* void glProgramUniformMatrix2dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniformMatrix2dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix3dv)
{
  /* void glProgramUniformMatrix3dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniformMatrix3dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix4dv)
{
  /* void glProgramUniformMatrix4dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniformMatrix4dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix2x3fv)
{
  /* void glProgramUniformMatrix2x3fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,         program)
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glProgramUniformMatrix2x3fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix3x2fv)
{
  /* void glProgramUniformMatrix3x2fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,         program)
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glProgramUniformMatrix3x2fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix2x4fv)
{
  /* void glProgramUniformMatrix2x4fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,         program)
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glProgramUniformMatrix2x4fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix4x2fv)
{
  /* void glProgramUniformMatrix4x2fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,         program)
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glProgramUniformMatrix4x2fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix3x4fv)
{
  /* void glProgramUniformMatrix3x4fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,         program)
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glProgramUniformMatrix3x4fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix4x3fv)
{
  /* void glProgramUniformMatrix4x3fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,         program)
    STACK_FMT_DATA(GLint,          location)
    STACK_FMT_DATA(GLsizei,        count)
    STACK_FMT_DATA(GLboolean,      transpose)
    STACK_FMT_DATA(GLfloat,        value[])
  STACK_FMT_END()

    glProgramUniformMatrix4x3fv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix2x3dv)
{
  /* void glProgramUniformMatrix2x3dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniformMatrix2x3dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix3x2dv)
{
  /* void glProgramUniformMatrix3x2dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniformMatrix3x2dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix2x4dv)
{
  /* void glProgramUniformMatrix2x4dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniformMatrix2x4dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix4x2dv)
{
  /* void glProgramUniformMatrix4x2dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniformMatrix4x2dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix3x4dv)
{
  /* void glProgramUniformMatrix3x4dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniformMatrix3x4dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_programUniformMatrix4x3dv)
{
  /* void glProgramUniformMatrix4x3dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLboolean, transpose)
    STACK_FMT_DATA(GLdouble,  value[])
  STACK_FMT_END()

    glProgramUniformMatrix4x3dv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(transpose)
    , STACK_GET_ADDR(value)
    );
}

EXDL_API(eglc_validateProgramPipeline)
{
  /* void glValidateProgramPipeline(GLuint pipeline) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, pipeline)
  STACK_FMT_END()

    glValidateProgramPipeline
    ( STACK_GET_DATA(pipeline)
    );
}

EXDL_API(eglc_getProgramPipelineInfoLog)
{
  /* void glGetProgramPipelineInfoLog(GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   pipeline)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  infoLog)
  FRAME_FMT_END()

    glGetProgramPipelineInfoLog
    ( STACK_GET_DATA(pipeline)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(infoLog)
    );

  THROW_FRAME()
}

/* GL_ARB_vertex_attrib_64bit */

EXDL_API(eglc_vertexAttribL1d)
{
  /* void glVertexAttribL1d(GLuint index, GLdouble x) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLdouble, x)
  STACK_FMT_END()

    glVertexAttribL1d
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    );
}

EXDL_API(eglc_vertexAttribL2d)
{
  /* void glVertexAttribL2d(GLuint index, GLdouble x, GLdouble y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
  STACK_FMT_END()

    glVertexAttribL2d
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(eglc_vertexAttribL3d)
{
  /* void glVertexAttribL3d(GLuint index, GLdouble x, GLdouble y, GLdouble z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
  STACK_FMT_END()

    glVertexAttribL3d
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(eglc_vertexAttribL4d)
{
  /* void glVertexAttribL4d(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
    STACK_FMT_DATA(GLdouble, w)
  STACK_FMT_END()

    glVertexAttribL4d
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(eglc_vertexAttribL1dv)
{
  /* void glVertexAttribL1dv(GLuint index, const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLdouble,  v[])
  STACK_FMT_END()

    glVertexAttribL1dv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribL2dv)
{
  /* void glVertexAttribL2dv(GLuint index, const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLdouble,  v[])
  STACK_FMT_END()

    glVertexAttribL2dv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribL3dv)
{
  /* void glVertexAttribL3dv(GLuint index, const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLdouble,  v[])
  STACK_FMT_END()

    glVertexAttribL3dv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribL4dv)
{
  /* void glVertexAttribL4dv(GLuint index, const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLdouble,  v[])
  STACK_FMT_END()

    glVertexAttribL4dv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_vertexAttribLPointer)
{
  /* void glVertexAttribLPointer(GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLint,   size)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLsizei, stride)
    STACK_FMT_DATA(GLvoid,  pointer[])
  STACK_FMT_END()

    glVertexAttribLPointer
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(stride)
    , STACK_GET_ADDR(pointer)
    );
}

EXDL_API(eglc_getVertexAttribLdv)
{
  /* void glGetVertexAttribLdv(GLuint index, GLenum pname, GLdouble* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    index)
    STACK_FMT_DATA(GLenum,    pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLdouble, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLdouble))

    glGetVertexAttribLdv
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_viewport_array */

EXDL_API(eglc_viewportArrayv)
{
  /* void glViewportArrayv(GLuint first, GLsizei count, const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   first)
    STACK_FMT_DATA(GLsizei,  count)
    STACK_FMT_DATA(GLfloat,  v[])
  STACK_FMT_END()

    glViewportArrayv
    ( STACK_GET_DATA(first)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_viewportIndexedf)
{
  /* void glViewportIndexedf(GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
    STACK_FMT_DATA(GLfloat, w)
    STACK_FMT_DATA(GLfloat, h)
  STACK_FMT_END()

    glViewportIndexedf
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(w)
    , STACK_GET_DATA(h)
    );
}

EXDL_API(eglc_viewportIndexedfv)
{
  /* void glViewportIndexedfv(GLuint index, const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLfloat,  v[])
  STACK_FMT_END()

    glViewportIndexedfv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_scissorArrayv)
{
  /* void glScissorArrayv(GLuint first, GLsizei count, const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,       first)
    STACK_FMT_DATA(GLsizei,      count)
    STACK_FMT_DATA(GLint,        v[])
  STACK_FMT_END()

    glScissorArrayv
    ( STACK_GET_DATA(first)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_scissorIndexed)
{
  /* void glScissorIndexed(GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  index)
    STACK_FMT_DATA(GLint,   left)
    STACK_FMT_DATA(GLint,   bottom)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
  STACK_FMT_END()

    glScissorIndexed
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(left)
    , STACK_GET_DATA(bottom)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

EXDL_API(eglc_scissorIndexedv)
{
  /* void glScissorIndexedv(GLuint index, const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, index)
    STACK_FMT_DATA(GLint,  v[])
  STACK_FMT_END()

    glScissorIndexedv
    ( STACK_GET_DATA(index)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_depthRangeArrayv)
{
  /* void glDepthRangeArrayv(GLuint first, GLsizei count, const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    first)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_DATA(GLdouble,  v[])
  STACK_FMT_END()

    glDepthRangeArrayv
    ( STACK_GET_DATA(first)
    , STACK_GET_DATA(count)
    , STACK_GET_ADDR(v)
    );
}

EXDL_API(eglc_depthRangeIndexed)
{
  /* void glDepthRangeIndexed(GLuint index, GLdouble n, GLdouble f) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLdouble, n)
    STACK_FMT_DATA(GLdouble, f)
  STACK_FMT_END()

    glDepthRangeIndexed
    ( STACK_GET_DATA(index)
    , STACK_GET_DATA(n)
    , STACK_GET_DATA(f)
    );
}

EXDL_API(eglc_getFloati_v)
{
  /* void glGetFloati_v(GLenum target, GLuint index, GLfloat* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLuint,   index)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, data[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(index) * sizeof(GLfloat))

    glGetFloati_v
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getDoublei_v)
{
  /* void glGetDoublei_v(GLenum target, GLuint index, GLdouble* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,    target)
    STACK_FMT_DATA(GLuint,    index)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLdouble, data[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(index) * sizeof(GLdouble))

    glGetDoublei_v
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(index)
    , FRAME_GET_ADDR(data)
    );

  THROW_FRAME()
}

/* GL_ARB_cl_event */

EXDL_API(eglc_createSyncFromCLeventARB)
{
  /* GLsync glCreateSyncFromCLeventARB(struct _cl_context* context, struct _cl_event* event, GLbitfield flags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(struct _cl_context*, context)
    STACK_FMT_LPTR(struct _cl_event*,   event)
    STACK_FMT_DATA(GLbitfield,          flags)
  STACK_FMT_END()

  CATCH_RESULT(GLsync)

    glCreateSyncFromCLeventARB
    ( STACK_GET_DATA(context)
    , STACK_GET_DATA(event)
    , STACK_GET_DATA(flags)
    );

  THROW_RESULT(GLsync)
}

/* GL_ARB_debug_output */

EXDL_API(eglc_debugMessageControlARB)
{
  /* void glDebugMessageControlARB(GLenum source, GLenum type, GLenum severity, GLsizei count, const GLuint* ids, GLboolean enabled) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,    source)
    STACK_FMT_DATA(GLenum,    type)
    STACK_FMT_DATA(GLenum,    severity)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_LPTR(GLuint*,   ids)
    STACK_FMT_DATA(GLboolean, enabled)
  STACK_FMT_END()

    glDebugMessageControlARB
    ( STACK_GET_DATA(source)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(severity)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(ids)
    , STACK_GET_DATA(enabled)
    );
}

EXDL_API(eglc_debugMessageInsertARB)
{
  /* void glDebugMessageInsertARB(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar* buf) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  source)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  id)
    STACK_FMT_DATA(GLenum,  severity)
    STACK_FMT_DATA(GLsizei, length)
    STACK_FMT_DATA(GLchar,  buf[])
  STACK_FMT_END()

    glDebugMessageInsertARB
    ( STACK_GET_DATA(source)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(id)
    , STACK_GET_DATA(severity)
    , STACK_GET_DATA(length)
    , STACK_GET_ADDR(buf)
    );
}

EXDL_API(eglc_debugMessageCallbackARB)
{
  /* void glDebugMessageCallbackARB(GLDEBUGPROCARB callback, const GLvoid* userParam) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLDEBUGPROCARB, callback)
    STACK_FMT_DATA(GLvoid,         userParam[])
  STACK_FMT_END()

    glDebugMessageCallbackARB
    ( STACK_GET_DATA(callback)
    , STACK_GET_ADDR(userParam)
    );
}

EXDL_API(eglc_getDebugMessageLogARB)
{
  /* GLuint glGetDebugMessageLogARB(GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   count)
    STACK_FMT_DATA(GLsizei,  bufsize)
    STACK_FMT_LPTR(GLenum*,  sources)
    STACK_FMT_LPTR(GLenum*,  types)
    STACK_FMT_LPTR(GLuint*,  ids)
    STACK_FMT_LPTR(GLenum*,  severities)
    STACK_FMT_LPTR(GLsizei*, lengths)
    STACK_FMT_LPTR(GLchar*,  messageLog)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, exdl)
  FRAME_FMT_END()

  FRAME_SET_DATA(exdl) =

    glGetDebugMessageLogARB
    ( STACK_GET_DATA(count)
    , STACK_GET_DATA(bufsize)
    , STACK_GET_DATA(sources)
    , STACK_GET_DATA(types)
    , STACK_GET_DATA(ids)
    , STACK_GET_DATA(severities)
    , STACK_GET_DATA(lengths)
    , STACK_GET_DATA(messageLog)
    );

  THROW_FRAME()
}

/* GL_ARB_robustness */

EXDL_API(eglc_getGraphicsResetStatusARB)
{
  /* GLenum glGetGraphicsResetStatusARB(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(GLenum)

    glGetGraphicsResetStatusARB
    (
    );

  THROW_RESULT(GLenum)
}

EXDL_API(eglc_getnTexImageARB)
{
  /* void glGetnTexImageARB(GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, GLvoid* img) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLsizei, bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLvoid, img)
  FRAME_FMT_END()

    glGetnTexImageARB
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(img)
    );

  THROW_FRAME()
}

EXDL_API(eglc_readnPixelsARB)
{
  /* void glReadnPixelsARB(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, GLvoid* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLsizei, bufSize)
    STACK_FMT_DATA(GLvoid,  data[])
  STACK_FMT_END()

    glReadnPixelsARB
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(bufSize)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_getnCompressedTexImageARB)
{
  /* void glGetnCompressedTexImageARB(GLenum target, GLint lod, GLsizei bufSize, GLvoid* img) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   lod)
    STACK_FMT_DATA(GLsizei, bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLvoid, img)
  FRAME_FMT_END()

    glGetnCompressedTexImageARB
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(lod)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(img)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getnUniformfvARB)
{
  /* void glGetnUniformfvARB(GLuint program, GLint location, GLsizei bufSize, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLint,    location)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, params)
  FRAME_FMT_END()

    glGetnUniformfvARB
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getnUniformivARB)
{
  /* void glGetnUniformivARB(GLuint program, GLint location, GLsizei bufSize, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLsizei, bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint,  params)
  FRAME_FMT_END()

    glGetnUniformivARB
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getnUniformuivARB)
{
  /* void glGetnUniformuivARB(GLuint program, GLint location, GLsizei bufSize, GLuint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLint,   location)
    STACK_FMT_DATA(GLsizei, bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, params)
  FRAME_FMT_END()

    glGetnUniformuivARB
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getnUniformdvARB)
{
  /* void glGetnUniformdvARB(GLuint program, GLint location, GLsizei bufSize, GLdouble* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    program)
    STACK_FMT_DATA(GLint,     location)
    STACK_FMT_DATA(GLsizei,   bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLdouble, params)
  FRAME_FMT_END()

    glGetnUniformdvARB
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(location)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_shader_stencil_export */

/* GL_ARB_base_instance */

EXDL_API(eglc_drawArraysInstancedBaseInstance)
{
  /* void glDrawArraysInstancedBaseInstance(GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLint,   first)
    STACK_FMT_DATA(GLsizei, count)
    STACK_FMT_DATA(GLsizei, instancecount)
    STACK_FMT_DATA(GLuint,  baseinstance)
  STACK_FMT_END()

    glDrawArraysInstancedBaseInstance
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(first)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(instancecount)
    , STACK_GET_DATA(baseinstance)
    );
}

EXDL_API(eglc_drawElementsInstancedBaseInstance)
{
  /* void glDrawElementsInstancedBaseInstance(GLenum mode, GLsizei count, GLenum type, const void* indices, GLsizei instancecount, GLuint baseinstance) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,      mode)
    STACK_FMT_DATA(GLsizei,     count)
    STACK_FMT_DATA(GLenum,      type)
    STACK_FMT_LPTR(void*,       indices)
    STACK_FMT_DATA(GLsizei,     instancecount)
    STACK_FMT_DATA(GLuint,      baseinstance)
  STACK_FMT_END()

    glDrawElementsInstancedBaseInstance
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(indices)
    , STACK_GET_DATA(instancecount)
    , STACK_GET_DATA(baseinstance)
    );
}

EXDL_API(eglc_drawElementsInstancedBaseVertexBaseInstance)
{
  /* void glDrawElementsInstancedBaseVertexBaseInstance(GLenum mode, GLsizei count, GLenum type, const void* indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,      mode)
    STACK_FMT_DATA(GLsizei,     count)
    STACK_FMT_DATA(GLenum,      type)
    STACK_FMT_LPTR(void*,       indices)
    STACK_FMT_DATA(GLsizei,     instancecount)
    STACK_FMT_DATA(GLint,       basevertex)
    STACK_FMT_DATA(GLuint,      baseinstance)
  STACK_FMT_END()

    glDrawElementsInstancedBaseVertexBaseInstance
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(indices)
    , STACK_GET_DATA(instancecount)
    , STACK_GET_DATA(basevertex)
    , STACK_GET_DATA(baseinstance)
    );
}

/* GL_ARB_shading_language_420pack */

/* GL_ARB_transform_feedback_instanced */

EXDL_API(eglc_drawTransformFeedbackInstanced)
{
  /* void glDrawTransformFeedbackInstanced(GLenum mode, GLuint id, GLsizei instancecount) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLuint,  id)
    STACK_FMT_DATA(GLsizei, instancecount)
  STACK_FMT_END()

    glDrawTransformFeedbackInstanced
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(id)
    , STACK_GET_DATA(instancecount)
    );
}

EXDL_API(eglc_drawTransformFeedbackStreamInstanced)
{
  /* void glDrawTransformFeedbackStreamInstanced(GLenum mode, GLuint id, GLuint stream, GLsizei instancecount) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  mode)
    STACK_FMT_DATA(GLuint,  id)
    STACK_FMT_DATA(GLuint,  stream)
    STACK_FMT_DATA(GLsizei, instancecount)
  STACK_FMT_END()

    glDrawTransformFeedbackStreamInstanced
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(id)
    , STACK_GET_DATA(stream)
    , STACK_GET_DATA(instancecount)
    );
}

/* GL_ARB_compressed_texture_pixel_storage */

/* GL_ARB_conservative_depth */

/* GL_ARB_internalformat_query */

EXDL_API(eglc_getInternalformativ)
{
  /* void glGetInternalformativ(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLsizei, bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint,  params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(bufSize) * sizeof(GLint))

    glGetInternalformativ
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_map_buffer_alignment */

/* GL_ARB_shader_atomic_counters */

EXDL_API(eglc_getActiveAtomicCounterBufferiv)
{
  /* void glGetActiveAtomicCounterBufferiv(GLuint program, GLuint bufferIndex, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLuint, bufferIndex)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetActiveAtomicCounterBufferiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(bufferIndex)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_shader_image_load_store */

EXDL_API(eglc_bindImageTexture)
{
  /* void glBindImageTexture(GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    unit)
    STACK_FMT_DATA(GLuint,    texture)
    STACK_FMT_DATA(GLint,     level)
    STACK_FMT_DATA(GLboolean, layered)
    STACK_FMT_DATA(GLint,     layer)
    STACK_FMT_DATA(GLenum,    access)
    STACK_FMT_DATA(GLenum,    format)
  STACK_FMT_END()

    glBindImageTexture
    ( STACK_GET_DATA(unit)
    , STACK_GET_DATA(texture)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(layered)
    , STACK_GET_DATA(layer)
    , STACK_GET_DATA(access)
    , STACK_GET_DATA(format)
    );
}

EXDL_API(eglc_memoryBarrier)
{
  /* void glMemoryBarrier(GLbitfield barriers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLbitfield, barriers)
  STACK_FMT_END()

    glMemoryBarrier
    ( STACK_GET_DATA(barriers)
    );
}

/* GL_ARB_shading_language_packing */

/* GL_ARB_texture_storage */

EXDL_API(eglc_texStorage1D)
{
  /* void glTexStorage1D(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLsizei, levels)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
  STACK_FMT_END()

    glTexStorage1D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(levels)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    );
}

EXDL_API(eglc_texStorage2D)
{
  /* void glTexStorage2D(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLsizei, levels)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
  STACK_FMT_END()

    glTexStorage2D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(levels)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

EXDL_API(eglc_texStorage3D)
{
  /* void glTexStorage3D(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLsizei, levels)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLsizei, depth)
  STACK_FMT_END()

    glTexStorage3D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(levels)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    );
}

EXDL_API(eglc_textureStorage1DEXT)
{
  /* void glTextureStorage1DEXT(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  texture)
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLsizei, levels)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
  STACK_FMT_END()

    glTextureStorage1DEXT
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(target)
    , STACK_GET_DATA(levels)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    );
}

EXDL_API(eglc_textureStorage2DEXT)
{
  /* void glTextureStorage2DEXT(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  texture)
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLsizei, levels)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
  STACK_FMT_END()

    glTextureStorage2DEXT
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(target)
    , STACK_GET_DATA(levels)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

EXDL_API(eglc_textureStorage3DEXT)
{
  /* void glTextureStorage3DEXT(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  texture)
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLsizei, levels)
    STACK_FMT_DATA(GLenum,  internalformat)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLsizei, depth)
  STACK_FMT_END()

    glTextureStorage3DEXT
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(target)
    , STACK_GET_DATA(levels)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    );
}

/* GL_KHR_texture_compression_astc_ldr */

/* GL_KHR_debug */

EXDL_API(eglc_debugMessageControl)
{
  /* void glDebugMessageControl(GLenum source, GLenum type, GLenum severity, GLsizei count, const GLuint* ids, GLboolean enabled) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,    source)
    STACK_FMT_DATA(GLenum,    type)
    STACK_FMT_DATA(GLenum,    severity)
    STACK_FMT_DATA(GLsizei,   count)
    STACK_FMT_LPTR(GLuint*,   ids)
    STACK_FMT_DATA(GLboolean, enabled)
  STACK_FMT_END()

    glDebugMessageControl
    ( STACK_GET_DATA(source)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(severity)
    , STACK_GET_DATA(count)
    , STACK_GET_DATA(ids)
    , STACK_GET_DATA(enabled)
    );
}

EXDL_API(eglc_debugMessageInsert)
{
  /* void glDebugMessageInsert(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar* buf) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  source)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLuint,  id)
    STACK_FMT_DATA(GLenum,  severity)
    STACK_FMT_DATA(GLsizei, length)
    STACK_FMT_DATA(GLchar,  buf[])
  STACK_FMT_END()

    glDebugMessageInsert
    ( STACK_GET_DATA(source)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(id)
    , STACK_GET_DATA(severity)
    , STACK_GET_DATA(length)
    , STACK_GET_ADDR(buf)
    );
}

EXDL_API(eglc_debugMessageCallback)
{
  /* void glDebugMessageCallback(GLDEBUGPROC callback, const void* userParam) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLDEBUGPROC, callback)
    STACK_FMT_DATA(void,        userParam[])
  STACK_FMT_END()

    glDebugMessageCallback
    ( STACK_GET_DATA(callback)
    , STACK_GET_ADDR(userParam)
    );
}

EXDL_API(eglc_getDebugMessageLog)
{
  /* GLuint glGetDebugMessageLog(GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   count)
    STACK_FMT_DATA(GLsizei,  bufsize)
    STACK_FMT_LPTR(GLenum*,  sources)
    STACK_FMT_LPTR(GLenum*,  types)
    STACK_FMT_LPTR(GLuint*,  ids)
    STACK_FMT_LPTR(GLenum*,  severities)
    STACK_FMT_LPTR(GLsizei*, lengths)
    STACK_FMT_LPTR(GLchar*,  messageLog)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, exdl)
  FRAME_FMT_END()

  FRAME_SET_DATA(exdl) =

    glGetDebugMessageLog
    ( STACK_GET_DATA(count)
    , STACK_GET_DATA(bufsize)
    , STACK_GET_DATA(sources)
    , STACK_GET_DATA(types)
    , STACK_GET_DATA(ids)
    , STACK_GET_DATA(severities)
    , STACK_GET_DATA(lengths)
    , STACK_GET_DATA(messageLog)
    );

  THROW_FRAME()
}

EXDL_API(eglc_pushDebugGroup)
{
  /* void glPushDebugGroup(GLenum source, GLuint id, GLsizei length, const GLchar* message) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  source)
    STACK_FMT_DATA(GLuint,  id)
    STACK_FMT_DATA(GLsizei, length)
    STACK_FMT_DATA(GLchar,  message[])
  STACK_FMT_END()

    glPushDebugGroup
    ( STACK_GET_DATA(source)
    , STACK_GET_DATA(id)
    , STACK_GET_DATA(length)
    , STACK_GET_ADDR(message)
    );
}

EXDL_API(eglc_popDebugGroup)
{
  /* void glPopDebugGroup(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glPopDebugGroup
  (
  );
}

EXDL_API(eglc_objectLabel)
{
  /* void glObjectLabel(GLenum identifier, GLuint name, GLsizei length, const GLchar* label) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  identifier)
    STACK_FMT_DATA(GLuint,  name)
    STACK_FMT_DATA(GLsizei, length)
    STACK_FMT_DATA(GLchar,  label[])
  STACK_FMT_END()

    glObjectLabel
    ( STACK_GET_DATA(identifier)
    , STACK_GET_DATA(name)
    , STACK_GET_DATA(length)
    , STACK_GET_ADDR(label)
    );
}

EXDL_API(eglc_getObjectLabel)
{
  /* void glGetObjectLabel(GLenum identifier, GLuint name, GLsizei bufSize, GLsizei* length, GLchar* label) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   identifier)
    STACK_FMT_DATA(GLuint,   name)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  label)
  FRAME_FMT_END()

    glGetObjectLabel
    ( STACK_GET_DATA(identifier)
    , STACK_GET_DATA(name)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(label)
    );

  THROW_FRAME()
}

EXDL_API(eglc_objectPtrLabel)
{
  /* void glObjectPtrLabel(const void* ptr, GLsizei length, const GLchar* label) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(void*,   ptr)
    STACK_FMT_DATA(GLsizei, length)
    STACK_FMT_DATA(GLchar,  label[])
  STACK_FMT_END()

    glObjectPtrLabel
    ( STACK_GET_DATA(ptr)
    , STACK_GET_DATA(length)
    , STACK_GET_ADDR(label)
    );
}

EXDL_API(eglc_getObjectPtrLabel)
{
  /* void glGetObjectPtrLabel(const void* ptr, GLsizei bufSize, GLsizei* length, GLchar* label) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(void*,    ptr)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  label)
  FRAME_FMT_END()

    glGetObjectPtrLabel
    ( STACK_GET_DATA(ptr)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(label)
    );

  THROW_FRAME()
}

/* GL_ARB_arrays_of_arrays */

/* GL_ARB_clear_buffer_object */

EXDL_API(eglc_clearBufferData)
{
  /* void glClearBufferData(GLenum target, GLenum internalformat, GLenum format, GLenum type, const void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,      target)
    STACK_FMT_DATA(GLenum,      internalformat)
    STACK_FMT_DATA(GLenum,      format)
    STACK_FMT_DATA(GLenum,      type)
    STACK_FMT_DATA(void,        data[])
  STACK_FMT_END()

    glClearBufferData
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_clearBufferSubData)
{
  /* void glClearBufferSubData(GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,      target)
    STACK_FMT_DATA(GLenum,      internalformat)
    STACK_FMT_DATA(GLintptr,    offset)
    STACK_FMT_DATA(GLsizeiptr,  size)
    STACK_FMT_DATA(GLenum,      format)
    STACK_FMT_DATA(GLenum,      type)
    STACK_FMT_DATA(void,        data[])
  STACK_FMT_END()

    glClearBufferSubData
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_clearNamedBufferDataEXT)
{
  /* void glClearNamedBufferDataEXT(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,      buffer)
    STACK_FMT_DATA(GLenum,      internalformat)
    STACK_FMT_DATA(GLenum,      format)
    STACK_FMT_DATA(GLenum,      type)
    STACK_FMT_DATA(void,        data[])
  STACK_FMT_END()

    glClearNamedBufferDataEXT
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(data)
    );
}

EXDL_API(eglc_clearNamedBufferSubDataEXT)
{
  /* void glClearNamedBufferSubDataEXT(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, GLsizeiptr offset, GLsizeiptr size, const void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,      buffer)
    STACK_FMT_DATA(GLenum,      internalformat)
    STACK_FMT_DATA(GLenum,      format)
    STACK_FMT_DATA(GLenum,      type)
    STACK_FMT_DATA(GLsizeiptr,  offset)
    STACK_FMT_DATA(GLsizeiptr,  size)
    STACK_FMT_DATA(void,        data[])
  STACK_FMT_END()

    glClearNamedBufferSubDataEXT
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(size)
    , STACK_GET_ADDR(data)
    );
}

/* GL_ARB_compute_shader */

EXDL_API(eglc_dispatchCompute)
{
  /* void glDispatchCompute(GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, num_groups_x)
    STACK_FMT_DATA(GLuint, num_groups_y)
    STACK_FMT_DATA(GLuint, num_groups_z)
  STACK_FMT_END()

    glDispatchCompute
    ( STACK_GET_DATA(num_groups_x)
    , STACK_GET_DATA(num_groups_y)
    , STACK_GET_DATA(num_groups_z)
    );
}

EXDL_API(eglc_dispatchComputeIndirect)
{
  /* void glDispatchComputeIndirect(GLintptr indirect) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLintptr, indirect)
  STACK_FMT_END()

    glDispatchComputeIndirect
    ( STACK_GET_DATA(indirect)
    );
}

/* GL_ARB_copy_image */

EXDL_API(eglc_copyImageSubData)
{
  /* void glCopyImageSubData(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  srcName)
    STACK_FMT_DATA(GLenum,  srcTarget)
    STACK_FMT_DATA(GLint,   srcLevel)
    STACK_FMT_DATA(GLint,   srcX)
    STACK_FMT_DATA(GLint,   srcY)
    STACK_FMT_DATA(GLint,   srcZ)
    STACK_FMT_DATA(GLuint,  dstName)
    STACK_FMT_DATA(GLenum,  dstTarget)
    STACK_FMT_DATA(GLint,   dstLevel)
    STACK_FMT_DATA(GLint,   dstX)
    STACK_FMT_DATA(GLint,   dstY)
    STACK_FMT_DATA(GLint,   dstZ)
    STACK_FMT_DATA(GLsizei, srcWidth)
    STACK_FMT_DATA(GLsizei, srcHeight)
    STACK_FMT_DATA(GLsizei, srcDepth)
  STACK_FMT_END()

    glCopyImageSubData
    ( STACK_GET_DATA(srcName)
    , STACK_GET_DATA(srcTarget)
    , STACK_GET_DATA(srcLevel)
    , STACK_GET_DATA(srcX)
    , STACK_GET_DATA(srcY)
    , STACK_GET_DATA(srcZ)
    , STACK_GET_DATA(dstName)
    , STACK_GET_DATA(dstTarget)
    , STACK_GET_DATA(dstLevel)
    , STACK_GET_DATA(dstX)
    , STACK_GET_DATA(dstY)
    , STACK_GET_DATA(dstZ)
    , STACK_GET_DATA(srcWidth)
    , STACK_GET_DATA(srcHeight)
    , STACK_GET_DATA(srcDepth)
    );
}

/* GL_ARB_texture_view */

EXDL_API(eglc_textureView)
{
  /* void glTextureView(GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, texture)
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLuint, origtexture)
    STACK_FMT_DATA(GLenum, internalformat)
    STACK_FMT_DATA(GLuint, minlevel)
    STACK_FMT_DATA(GLuint, numlevels)
    STACK_FMT_DATA(GLuint, minlayer)
    STACK_FMT_DATA(GLuint, numlayers)
  STACK_FMT_END()

    glTextureView
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(target)
    , STACK_GET_DATA(origtexture)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(minlevel)
    , STACK_GET_DATA(numlevels)
    , STACK_GET_DATA(minlayer)
    , STACK_GET_DATA(numlayers)
    );
}

/* GL_ARB_vertex_attrib_binding */

EXDL_API(eglc_bindVertexBuffer)
{
  /* void glBindVertexBuffer(GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   bindingindex)
    STACK_FMT_DATA(GLuint,   buffer)
    STACK_FMT_DATA(GLintptr, offset)
    STACK_FMT_DATA(GLsizei,  stride)
  STACK_FMT_END()

    glBindVertexBuffer
    ( STACK_GET_DATA(bindingindex)
    , STACK_GET_DATA(buffer)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(stride)
    );
}

EXDL_API(eglc_vertexAttribFormat)
{
  /* void glVertexAttribFormat(GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    attribindex)
    STACK_FMT_DATA(GLint,     size)
    STACK_FMT_DATA(GLenum,    type)
    STACK_FMT_DATA(GLboolean, normalized)
    STACK_FMT_DATA(GLuint,    relativeoffset)
  STACK_FMT_END()

    glVertexAttribFormat
    ( STACK_GET_DATA(attribindex)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_DATA(relativeoffset)
    );
}

EXDL_API(eglc_vertexAttribIFormat)
{
  /* void glVertexAttribIFormat(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, attribindex)
    STACK_FMT_DATA(GLint,  size)
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, relativeoffset)
  STACK_FMT_END()

    glVertexAttribIFormat
    ( STACK_GET_DATA(attribindex)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(relativeoffset)
    );
}

EXDL_API(eglc_vertexAttribLFormat)
{
  /* void glVertexAttribLFormat(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, attribindex)
    STACK_FMT_DATA(GLint,  size)
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, relativeoffset)
  STACK_FMT_END()

    glVertexAttribLFormat
    ( STACK_GET_DATA(attribindex)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(relativeoffset)
    );
}

EXDL_API(eglc_vertexAttribBinding)
{
  /* void glVertexAttribBinding(GLuint attribindex, GLuint bindingindex) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, attribindex)
    STACK_FMT_DATA(GLuint, bindingindex)
  STACK_FMT_END()

    glVertexAttribBinding
    ( STACK_GET_DATA(attribindex)
    , STACK_GET_DATA(bindingindex)
    );
}

EXDL_API(eglc_vertexBindingDivisor)
{
  /* void glVertexBindingDivisor(GLuint bindingindex, GLuint divisor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, bindingindex)
    STACK_FMT_DATA(GLuint, divisor)
  STACK_FMT_END()

    glVertexBindingDivisor
    ( STACK_GET_DATA(bindingindex)
    , STACK_GET_DATA(divisor)
    );
}

EXDL_API(eglc_vertexArrayBindVertexBufferEXT)
{
  /* void glVertexArrayBindVertexBufferEXT(GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   vaobj)
    STACK_FMT_DATA(GLuint,   bindingindex)
    STACK_FMT_DATA(GLuint,   buffer)
    STACK_FMT_DATA(GLintptr, offset)
    STACK_FMT_DATA(GLsizei,  stride)
  STACK_FMT_END()

    glVertexArrayBindVertexBufferEXT
    ( STACK_GET_DATA(vaobj)
    , STACK_GET_DATA(bindingindex)
    , STACK_GET_DATA(buffer)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(stride)
    );
}

EXDL_API(eglc_vertexArrayVertexAttribFormatEXT)
{
  /* void glVertexArrayVertexAttribFormatEXT(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    vaobj)
    STACK_FMT_DATA(GLuint,    attribindex)
    STACK_FMT_DATA(GLint,     size)
    STACK_FMT_DATA(GLenum,    type)
    STACK_FMT_DATA(GLboolean, normalized)
    STACK_FMT_DATA(GLuint,    relativeoffset)
  STACK_FMT_END()

    glVertexArrayVertexAttribFormatEXT
    ( STACK_GET_DATA(vaobj)
    , STACK_GET_DATA(attribindex)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(normalized)
    , STACK_GET_DATA(relativeoffset)
    );
}

EXDL_API(eglc_vertexArrayVertexAttribIFormatEXT)
{
  /* void glVertexArrayVertexAttribIFormatEXT(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, vaobj)
    STACK_FMT_DATA(GLuint, attribindex)
    STACK_FMT_DATA(GLint,  size)
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, relativeoffset)
  STACK_FMT_END()

    glVertexArrayVertexAttribIFormatEXT
    ( STACK_GET_DATA(vaobj)
    , STACK_GET_DATA(attribindex)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(relativeoffset)
    );
}

EXDL_API(eglc_vertexArrayVertexAttribLFormatEXT)
{
  /* void glVertexArrayVertexAttribLFormatEXT(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, vaobj)
    STACK_FMT_DATA(GLuint, attribindex)
    STACK_FMT_DATA(GLint,  size)
    STACK_FMT_DATA(GLenum, type)
    STACK_FMT_DATA(GLuint, relativeoffset)
  STACK_FMT_END()

    glVertexArrayVertexAttribLFormatEXT
    ( STACK_GET_DATA(vaobj)
    , STACK_GET_DATA(attribindex)
    , STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(relativeoffset)
    );
}

EXDL_API(eglc_vertexArrayVertexAttribBindingEXT)
{
  /* void glVertexArrayVertexAttribBindingEXT(GLuint vaobj, GLuint attribindex, GLuint bindingindex) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, vaobj)
    STACK_FMT_DATA(GLuint, attribindex)
    STACK_FMT_DATA(GLuint, bindingindex)
  STACK_FMT_END()

    glVertexArrayVertexAttribBindingEXT
    ( STACK_GET_DATA(vaobj)
    , STACK_GET_DATA(attribindex)
    , STACK_GET_DATA(bindingindex)
    );
}

EXDL_API(eglc_vertexArrayVertexBindingDivisorEXT)
{
  /* void glVertexArrayVertexBindingDivisorEXT(GLuint vaobj, GLuint bindingindex, GLuint divisor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, vaobj)
    STACK_FMT_DATA(GLuint, bindingindex)
    STACK_FMT_DATA(GLuint, divisor)
  STACK_FMT_END()

    glVertexArrayVertexBindingDivisorEXT
    ( STACK_GET_DATA(vaobj)
    , STACK_GET_DATA(bindingindex)
    , STACK_GET_DATA(divisor)
    );
}

/* GL_ARB_robustness_isolation */

/* GL_ARB_ES3_compatibility */

/* GL_ARB_explicit_uniform_location */

/* GL_ARB_fragment_layer_viewport */

/* GL_ARB_framebuffer_no_attachments */

EXDL_API(eglc_framebufferParameteri)
{
  /* void glFramebufferParameteri(GLenum target, GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glFramebufferParameteri
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(eglc_getFramebufferParameteriv)
{
  /* void glGetFramebufferParameteriv(GLenum target, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetFramebufferParameteriv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_namedFramebufferParameteriEXT)
{
  /* void glNamedFramebufferParameteriEXT(GLuint framebuffer, GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, framebuffer)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glNamedFramebufferParameteriEXT
    ( STACK_GET_DATA(framebuffer)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(eglc_getNamedFramebufferParameterivEXT)
{
  /* void glGetNamedFramebufferParameterivEXT(GLuint framebuffer, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, framebuffer)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params)
  FRAME_FMT_END()

    glGetNamedFramebufferParameterivEXT
    ( STACK_GET_DATA(framebuffer)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_internalformat_query2 */

EXDL_API(eglc_getInternalformati64v)
{
  /* void glGetInternalformati64v(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLenum,   internalformat)
    STACK_FMT_DATA(GLenum,   pname)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint64, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(bufSize) * sizeof(GLint64))

    glGetInternalformati64v
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

/* GL_ARB_invalidate_subdata */

EXDL_API(eglc_invalidateTexSubImage)
{
  /* void glInvalidateTexSubImage(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  texture)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLint,   xoffset)
    STACK_FMT_DATA(GLint,   yoffset)
    STACK_FMT_DATA(GLint,   zoffset)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLsizei, depth)
  STACK_FMT_END()

    glInvalidateTexSubImage
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(xoffset)
    , STACK_GET_DATA(yoffset)
    , STACK_GET_DATA(zoffset)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    );
}

EXDL_API(eglc_invalidateTexImage)
{
  /* void glInvalidateTexImage(GLuint texture, GLint level) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, texture)
    STACK_FMT_DATA(GLint,  level)
  STACK_FMT_END()

    glInvalidateTexImage
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(level)
    );
}

EXDL_API(eglc_invalidateBufferSubData)
{
  /* void glInvalidateBufferSubData(GLuint buffer, GLintptr offset, GLsizeiptr length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,     buffer)
    STACK_FMT_DATA(GLintptr,   offset)
    STACK_FMT_DATA(GLsizeiptr, length)
  STACK_FMT_END()

    glInvalidateBufferSubData
    ( STACK_GET_DATA(buffer)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(length)
    );
}

EXDL_API(eglc_invalidateBufferData)
{
  /* void glInvalidateBufferData(GLuint buffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, buffer)
  STACK_FMT_END()

    glInvalidateBufferData
    ( STACK_GET_DATA(buffer)
    );
}

EXDL_API(eglc_invalidateFramebuffer)
{
  /* void glInvalidateFramebuffer(GLenum target, GLsizei numAttachments, const GLenum* attachments) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLsizei, numAttachments)
    STACK_FMT_DATA(GLenum,  attachments[])
  STACK_FMT_END()

    glInvalidateFramebuffer
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(numAttachments)
    , STACK_GET_ADDR(attachments)
    );
}

EXDL_API(eglc_invalidateSubFramebuffer)
{
  /* void glInvalidateSubFramebuffer(GLenum target, GLsizei numAttachments, const GLenum* attachments, GLint x, GLint y, GLsizei width, GLsizei height) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLsizei, numAttachments)
    STACK_FMT_LPTR(GLenum*, attachments)
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
  STACK_FMT_END()

    glInvalidateSubFramebuffer
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(numAttachments)
    , STACK_GET_DATA(attachments)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    );
}

/* GL_ARB_multi_draw_indirect */

EXDL_API(eglc_multiDrawArraysIndirect)
{
  /* void glMultiDrawArraysIndirect(GLenum mode, const void* indirect, GLsizei drawcount, GLsizei stride) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,      mode)
    STACK_FMT_LPTR(void*,       indirect)
    STACK_FMT_DATA(GLsizei,     drawcount)
    STACK_FMT_DATA(GLsizei,     stride)
  STACK_FMT_END()

    glMultiDrawArraysIndirect
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(indirect)
    , STACK_GET_DATA(drawcount)
    , STACK_GET_DATA(stride)
    );
}

EXDL_API(eglc_multiDrawElementsIndirect)
{
  /* void glMultiDrawElementsIndirect(GLenum mode, GLenum type, const void* indirect, GLsizei drawcount, GLsizei stride) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,      mode)
    STACK_FMT_DATA(GLenum,      type)
    STACK_FMT_LPTR(void*,       indirect)
    STACK_FMT_DATA(GLsizei,     drawcount)
    STACK_FMT_DATA(GLsizei,     stride)
  STACK_FMT_END()

    glMultiDrawElementsIndirect
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(indirect)
    , STACK_GET_DATA(drawcount)
    , STACK_GET_DATA(stride)
    );
}

/* GL_ARB_program_interface_query */

EXDL_API(eglc_getProgramInterfaceiv)
{
  /* void glGetProgramInterfaceiv(GLuint program, GLenum programInterface, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLenum, programInterface)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(pname) * sizeof(GLint))

    glGetProgramInterfaceiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(programInterface)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getProgramResourceIndex)
{
  /* GLuint glGetProgramResourceIndex(GLuint program, GLenum programInterface, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLenum,  programInterface)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

  CATCH_RESULT(GLuint)

    glGetProgramResourceIndex
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(programInterface)
    , STACK_GET_ADDR(name)
    );

  THROW_RESULT(GLuint)
}

EXDL_API(eglc_getProgramResourceName)
{
  /* void glGetProgramResourceName(GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei* length, GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLenum,   programInterface)
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length)
    FRAME_FMT_DATA(GLchar,  name)
  FRAME_FMT_END()

    glGetProgramResourceName
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(programInterface)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(name)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getProgramResourceiv)
{
  /* void glGetProgramResourceiv(GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, const GLenum* props, GLsizei bufSize, GLsizei* length, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,   program)
    STACK_FMT_DATA(GLenum,   programInterface)
    STACK_FMT_DATA(GLuint,   index)
    STACK_FMT_DATA(GLsizei,  propCount)
    STACK_FMT_LPTR(GLenum*,  props)
    STACK_FMT_DATA(GLsizei,  bufSize)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLsizei, length[1])
    FRAME_FMT_DATA(GLint,   params[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(bufSize) * sizeof(GLint))

    glGetProgramResourceiv
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(programInterface)
    , STACK_GET_DATA(index)
    , STACK_GET_DATA(propCount)
    , STACK_GET_DATA(props)
    , STACK_GET_DATA(bufSize)
    , FRAME_GET_ADDR(length)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(eglc_getProgramResourceLocation)
{
  /* GLint glGetProgramResourceLocation(GLuint program, GLenum programInterface, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLenum,  programInterface)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

  CATCH_RESULT(GLint)

    glGetProgramResourceLocation
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(programInterface)
    , STACK_GET_ADDR(name)
    );

  THROW_RESULT(GLint)
}

EXDL_API(eglc_getProgramResourceLocationIndex)
{
  /* GLint glGetProgramResourceLocationIndex(GLuint program, GLenum programInterface, const GLchar* name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  program)
    STACK_FMT_DATA(GLenum,  programInterface)
    STACK_FMT_DATA(GLchar,  name[])
  STACK_FMT_END()

  CATCH_RESULT(GLint)

    glGetProgramResourceLocationIndex
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(programInterface)
    , STACK_GET_ADDR(name)
    );

  THROW_RESULT(GLint)
}

/* GL_ARB_robust_buffer_access_behavior */

/* GL_ARB_shader_image_size */

/* GL_ARB_shader_storage_buffer_object */

EXDL_API(eglc_shaderStorageBlockBinding)
{
  /* void glShaderStorageBlockBinding(GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, program)
    STACK_FMT_DATA(GLuint, storageBlockIndex)
    STACK_FMT_DATA(GLuint, storageBlockBinding)
  STACK_FMT_END()

    glShaderStorageBlockBinding
    ( STACK_GET_DATA(program)
    , STACK_GET_DATA(storageBlockIndex)
    , STACK_GET_DATA(storageBlockBinding)
    );
}

/* GL_ARB_stencil_texturing */

/* GL_ARB_texture_buffer_range */

EXDL_API(eglc_texBufferRange)
{
  /* void glTexBufferRange(GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,     target)
    STACK_FMT_DATA(GLenum,     internalformat)
    STACK_FMT_DATA(GLuint,     buffer)
    STACK_FMT_DATA(GLintptr,   offset)
    STACK_FMT_DATA(GLsizeiptr, size)
  STACK_FMT_END()

    glTexBufferRange
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(buffer)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(size)
    );
}

EXDL_API(eglc_textureBufferRangeEXT)
{
  /* void glTextureBufferRangeEXT(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,     texture)
    STACK_FMT_DATA(GLenum,     target)
    STACK_FMT_DATA(GLenum,     internalformat)
    STACK_FMT_DATA(GLuint,     buffer)
    STACK_FMT_DATA(GLintptr,   offset)
    STACK_FMT_DATA(GLsizeiptr, size)
  STACK_FMT_END()

    glTextureBufferRangeEXT
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(target)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(buffer)
    , STACK_GET_DATA(offset)
    , STACK_GET_DATA(size)
    );
}

/* GL_ARB_texture_query_levels */

/* GL_ARB_texture_storage_multisample */

EXDL_API(eglc_texStorage2DMultisample)
{
  /* void glTexStorage2DMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,    target)
    STACK_FMT_DATA(GLsizei,   samples)
    STACK_FMT_DATA(GLenum,    internalformat)
    STACK_FMT_DATA(GLsizei,   width)
    STACK_FMT_DATA(GLsizei,   height)
    STACK_FMT_DATA(GLboolean, fixedsamplelocations)
  STACK_FMT_END()

    glTexStorage2DMultisample
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(samples)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(fixedsamplelocations)
    );
}

EXDL_API(eglc_texStorage3DMultisample)
{
  /* void glTexStorage3DMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,    target)
    STACK_FMT_DATA(GLsizei,   samples)
    STACK_FMT_DATA(GLenum,    internalformat)
    STACK_FMT_DATA(GLsizei,   width)
    STACK_FMT_DATA(GLsizei,   height)
    STACK_FMT_DATA(GLsizei,   depth)
    STACK_FMT_DATA(GLboolean, fixedsamplelocations)
  STACK_FMT_END()

    glTexStorage3DMultisample
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(samples)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    , STACK_GET_DATA(fixedsamplelocations)
    );
}

EXDL_API(eglc_textureStorage2DMultisampleEXT)
{
  /* void glTextureStorage2DMultisampleEXT(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    texture)
    STACK_FMT_DATA(GLenum,    target)
    STACK_FMT_DATA(GLsizei,   samples)
    STACK_FMT_DATA(GLenum,    internalformat)
    STACK_FMT_DATA(GLsizei,   width)
    STACK_FMT_DATA(GLsizei,   height)
    STACK_FMT_DATA(GLboolean, fixedsamplelocations)
  STACK_FMT_END()

    glTextureStorage2DMultisampleEXT
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(target)
    , STACK_GET_DATA(samples)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(fixedsamplelocations)
    );
}

EXDL_API(eglc_textureStorage3DMultisampleEXT)
{
  /* void glTextureStorage3DMultisampleEXT(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,    texture)
    STACK_FMT_DATA(GLenum,    target)
    STACK_FMT_DATA(GLsizei,   samples)
    STACK_FMT_DATA(GLenum,    internalformat)
    STACK_FMT_DATA(GLsizei,   width)
    STACK_FMT_DATA(GLsizei,   height)
    STACK_FMT_DATA(GLsizei,   depth)
    STACK_FMT_DATA(GLboolean, fixedsamplelocations)
  STACK_FMT_END()

    glTextureStorage3DMultisampleEXT
    ( STACK_GET_DATA(texture)
    , STACK_GET_DATA(target)
    , STACK_GET_DATA(samples)
    , STACK_GET_DATA(internalformat)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(depth)
    , STACK_GET_DATA(fixedsamplelocations)
    );
}

#endif // COMPILE_GLCOREARB
