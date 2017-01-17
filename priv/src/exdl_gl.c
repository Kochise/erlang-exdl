/*
 *  Copyright (c) 2003 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_gl.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_GL

EXDL_API(egl_accum)
{
  /* void glAccum(GLenum op, GLfloat value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  op)
    STACK_FMT_DATA(GLfloat, value)
  STACK_FMT_END()

    glAccum
    ( STACK_GET_DATA(op)
    , STACK_GET_DATA(value)
    );
}

EXDL_API(egl_alphaFunc)
{
  /* void glAlphaFunc(GLenum func, GLclampf ref) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   func)
    STACK_FMT_DATA(GLclampf, ref)
  STACK_FMT_END()

    glAlphaFunc
    ( STACK_GET_DATA(func)
    , STACK_GET_DATA(ref)
    );
}

EXDL_API(egl_areTexturesResident)
{
  /* GLboolean glAreTexturesResident(GLsizei n, const GLuint* textures, GLboolean* residences) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLuint,  textures[])
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLboolean status)
    FRAME_FMT_ADD(GLboolean residences[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(n) * sizeof(GLboolean))

  FRAME_SET_DATA(status) =
//  CATCH_RESULT(GLboolean)

    glAreTexturesResident
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(textures)
    , FRAME_GET_ADDR(residences)
    );

  THROW_FRAME()
}

EXDL_API(egl_arrayElement)
{
  /* void glArrayElement(GLint i) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, i)
  STACK_FMT_END()

    glArrayElement
    ( STACK_GET_DATA(i)
    );
}

EXDL_API(egl_begin)
{
  /* void glBegin(GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glBegin
    ( STACK_GET_DATA(mode)
    );
}

EXDL_API(egl_bindTexture)
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

EXDL_API(egl_bitmap)
{
  /* void glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte* bitmap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLfloat, xorig)
    STACK_FMT_DATA(GLfloat, yorig)
    STACK_FMT_DATA(GLfloat, xmove)
    STACK_FMT_DATA(GLfloat, ymove)
    STACK_FMT_DATA(GLubyte, bitmap[])
  STACK_FMT_END()

    glBitmap
    ( STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(xorig)
    , STACK_GET_DATA(yorig)
    , STACK_GET_DATA(xmove)
    , STACK_GET_DATA(ymove)
    , STACK_GET_ADDR(bitmap)
    );

  exdl_free_binaries(sd);
}

EXDL_API(egl_blendFunc)
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

EXDL_API(egl_callList)
{
  /* void glCallList(GLuint list) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, list)
  STACK_FMT_END()

    glCallList
    ( STACK_GET_DATA(list)
    );
}

EXDL_API(egl_callLists)
{
  /* void glCallLists(GLsizei n, GLenum type, const GLvoid* lists) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid*, lists)
  STACK_FMT_END()

    glCallLists
    ( STACK_GET_DATA(n)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(lists)
    );
}

EXDL_API(egl_clear)
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

EXDL_API(egl_clearAccum)
{
  /* void glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, red)
    STACK_FMT_DATA(GLfloat, green)
    STACK_FMT_DATA(GLfloat, blue)
    STACK_FMT_DATA(GLfloat, alpha)
  STACK_FMT_END()

    glClearAccum
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(egl_clearColor)
{
  /* void glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLclampf, red)
    STACK_FMT_DATA(GLclampf, green)
    STACK_FMT_DATA(GLclampf, blue)
    STACK_FMT_DATA(GLclampf, alpha)
  STACK_FMT_END()

    glClearColor
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(egl_clearDepth)
{
  /* void glClearDepth(GLclampd depth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLclampd, depth)
  STACK_FMT_END()

    glClearDepth
    ( STACK_GET_DATA(depth)
    );
}

EXDL_API(egl_clearIndex)
{
  /* void glClearIndex(GLfloat c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, c)
  STACK_FMT_END()

    glClearIndex
    ( STACK_GET_DATA(c)
    );
}

EXDL_API(egl_clearStencil)
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

EXDL_API(egl_clipPlane)
{
  /* void glClipPlane(GLenum plane, const GLdouble* equation) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   plane)
    STACK_FMT_DATA(GLdouble, equation[4])
  STACK_FMT_END()

    glClipPlane
    ( STACK_GET_DATA(plane)
    , STACK_GET_ADDR(equation)
    );
}

EXDL_API(egl_color3b)
{
  /* void glColor3b(GLbyte red, GLbyte green, GLbyte blue) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLbyte, red)
    STACK_FMT_DATA(GLbyte, green)
    STACK_FMT_DATA(GLbyte, blue)
  STACK_FMT_END()

    glColor3b
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    );
}

EXDL_API(egl_color3bv)
{
  /* void glColor3bv(const GLbyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLbyte, v[3])
  STACK_FMT_END()

    glColor3bv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color3d)
{
  /* void glColor3d(GLdouble red, GLdouble green, GLdouble blue) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, red)
    STACK_FMT_DATA(GLdouble, green)
    STACK_FMT_DATA(GLdouble, blue)
  STACK_FMT_END()

    glColor3d
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    );
}

EXDL_API(egl_color3dv)
{
  /* void glColor3dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[3])
  STACK_FMT_END()

    glColor3dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color3f)
{
  /* void glColor3f(GLfloat red, GLfloat green, GLfloat blue) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, red)
    STACK_FMT_DATA(GLfloat, green)
    STACK_FMT_DATA(GLfloat, blue)
  STACK_FMT_END()

    glColor3f
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    );
}

EXDL_API(egl_color3fv)
{
  /* void glColor3fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[3])
  STACK_FMT_END()

    glColor3fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color3i)
{
  /* void glColor3i(GLint red, GLint green, GLint blue) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, red)
    STACK_FMT_DATA(GLint, green)
    STACK_FMT_DATA(GLint, blue)
  STACK_FMT_END()

    glColor3i
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    );
}

EXDL_API(egl_color3iv)
{
  /* void glColor3iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[3])
  STACK_FMT_END()

    glColor3iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color3s)
{
  /* void glColor3s(GLshort red, GLshort green, GLshort blue) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, red)
    STACK_FMT_DATA(GLshort, green)
    STACK_FMT_DATA(GLshort, blue)
  STACK_FMT_END()

    glColor3s
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    );
}

EXDL_API(egl_color3sv)
{
  /* void glColor3sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[3])
  STACK_FMT_END()

    glColor3sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color3ub)
{
  /* void glColor3ub(GLubyte red, GLubyte green, GLubyte blue) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLubyte, red)
    STACK_FMT_DATA(GLubyte, green)
    STACK_FMT_DATA(GLubyte, blue)
  STACK_FMT_END()

    glColor3ub
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    );
}

EXDL_API(egl_color3ubv)
{
  /* void glColor3ubv(const GLubyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLubyte, v[3])
  STACK_FMT_END()

    glColor3ubv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color3ui)
{
  /* void glColor3ui(GLuint red, GLuint green, GLuint blue) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, red)
    STACK_FMT_DATA(GLuint, green)
    STACK_FMT_DATA(GLuint, blue)
  STACK_FMT_END()

    glColor3ui
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    );
}

EXDL_API(egl_color3uiv)
{
  /* void glColor3uiv(const GLuint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, v[3])
  STACK_FMT_END()

    glColor3uiv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color3us)
{
  /* void glColor3us(GLushort red, GLushort green, GLushort blue) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLushort, red)
    STACK_FMT_DATA(GLushort, green)
    STACK_FMT_DATA(GLushort, blue)
  STACK_FMT_END()

    glColor3us
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    );
}

EXDL_API(egl_color3usv)
{
  /* void glColor3usv(const GLushort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLushort, v[3])
  STACK_FMT_END()

    glColor3usv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color4b)
{
  /* void glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLbyte, red)
    STACK_FMT_DATA(GLbyte, green)
    STACK_FMT_DATA(GLbyte, blue)
    STACK_FMT_DATA(GLbyte, alpha)
  STACK_FMT_END()

    glColor4b
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(egl_color4bv)
{
  /* void glColor4bv(const GLbyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLbyte, v[4])
  STACK_FMT_END()

    glColor4bv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color4d)
{
  /* void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, red)
    STACK_FMT_DATA(GLdouble, green)
    STACK_FMT_DATA(GLdouble, blue)
    STACK_FMT_DATA(GLdouble, alpha)
  STACK_FMT_END()

    glColor4d
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(egl_color4dv)
{
  /* void glColor4dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[4])
  STACK_FMT_END()

    glColor4dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color4f)
{
  /* void glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, red)
    STACK_FMT_DATA(GLfloat, green)
    STACK_FMT_DATA(GLfloat, blue)
    STACK_FMT_DATA(GLfloat, alpha)
  STACK_FMT_END()

    glColor4f
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(egl_color4fv)
{
  /* void glColor4fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[4])
  STACK_FMT_END()

    glColor4fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color4i)
{
  /* void glColor4i(GLint red, GLint green, GLint blue, GLint alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, red)
    STACK_FMT_DATA(GLint, green)
    STACK_FMT_DATA(GLint, blue)
    STACK_FMT_DATA(GLint, alpha)
  STACK_FMT_END()

    glColor4i
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(egl_color4iv)
{
  /* void glColor4iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[4])
  STACK_FMT_END()

    glColor4iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color4s)
{
  /* void glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, red)
    STACK_FMT_DATA(GLshort, green)
    STACK_FMT_DATA(GLshort, blue)
    STACK_FMT_DATA(GLshort, alpha)
  STACK_FMT_END()

    glColor4s
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(egl_color4sv)
{
  /* void glColor4sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[4])
  STACK_FMT_END()

    glColor4sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color4ub)
{
  /* void glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLubyte, red)
    STACK_FMT_DATA(GLubyte, green)
    STACK_FMT_DATA(GLubyte, blue)
    STACK_FMT_DATA(GLubyte, alpha)
  STACK_FMT_END()

    glColor4ub
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(egl_color4ubv)
{
  /* void glColor4ubv(const GLubyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLubyte, v[4])
  STACK_FMT_END()

    glColor4ubv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color4ui)
{
  /* void glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, red)
    STACK_FMT_DATA(GLuint, green)
    STACK_FMT_DATA(GLuint, blue)
    STACK_FMT_DATA(GLuint, alpha)
  STACK_FMT_END()

    glColor4ui
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(egl_color4uiv)
{
  /* void glColor4uiv(const GLuint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, v[4])
  STACK_FMT_END()

    glColor4uiv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_color4us)
{
  /* void glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLushort, red)
    STACK_FMT_DATA(GLushort, green)
    STACK_FMT_DATA(GLushort, blue)
    STACK_FMT_DATA(GLushort, alpha)
  STACK_FMT_END()

    glColor4us
    ( STACK_GET_DATA(red)
    , STACK_GET_DATA(green)
    , STACK_GET_DATA(blue)
    , STACK_GET_DATA(alpha)
    );
}

EXDL_API(egl_color4usv)
{
  /* void glColor4usv(const GLushort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLushort, v[4])
  STACK_FMT_END()

    glColor4usv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_colorMask)
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

EXDL_API(egl_colorMaterial)
{
  /* void glColorMaterial(GLenum face, GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, face)
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glColorMaterial
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(mode)
    );
}

EXDL_API(egl_colorPointer)
{
  /* void glColorPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   size)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLsizei, stride)
    STACK_FMT_DATA(GLvoid,  pointer[])
  STACK_FMT_END()

    glColorPointer
    ( STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(stride)
    , STACK_GET_ADDR(pointer)
    );

  exdl_free_binaries(sd);
}

EXDL_API(egl_copyPixels)
{
  /* void glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLenum,  type)
  STACK_FMT_END()

    glCopyPixels
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(type)
    );
}

EXDL_API(egl_copyTexImage1D)
{
  /* void glCopyTexImage1D(GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLint border) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLenum,  internalFormat)
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLint,   border)
  STACK_FMT_END()

    glCopyTexImage1D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(internalFormat)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(border)
    );
}

EXDL_API(egl_copyTexImage2D)
{
  /* void glCopyTexImage2D(GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLint,   level)
    STACK_FMT_DATA(GLenum,  internalFormat)
    STACK_FMT_DATA(GLint,   x)
    STACK_FMT_DATA(GLint,   y)
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLint,   border)
  STACK_FMT_END()

    glCopyTexImage2D
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(internalFormat)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(border)
    );
}

EXDL_API(egl_copyTexSubImage1D)
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

EXDL_API(egl_copyTexSubImage2D)
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

EXDL_API(egl_cullFace)
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

EXDL_API(egl_deleteLists)
{
  /* void glDeleteLists(GLuint list, GLsizei range) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint,  list)
    STACK_FMT_DATA(GLsizei, range)
  STACK_FMT_END()

    glDeleteLists
    ( STACK_GET_DATA(list)
    , STACK_GET_DATA(range)
    );
}

EXDL_API(egl_deleteTextures)
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

EXDL_API(egl_depthFunc)
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

EXDL_API(egl_depthMask)
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

EXDL_API(egl_depthRange)
{
  /* void glDepthRange(GLclampd zNear, GLclampd zFar) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLclampd, zNear)
    STACK_FMT_DATA(GLclampd, zFar)
  STACK_FMT_END()

    glDepthRange
    ( STACK_GET_DATA(zNear)
    , STACK_GET_DATA(zFar)
    );
}

EXDL_API(egl_disable)
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

EXDL_API(egl_disableClientState)
{
  /* void glDisableClientState(GLenum array) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, array)
  STACK_FMT_END()

    glDisableClientState
    ( STACK_GET_DATA(array)
    );
}

EXDL_API(egl_drawArrays)
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

EXDL_API(egl_drawBuffer)
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

EXDL_API(egl_drawElements)
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

  exdl_free_binaries(sd);
}

EXDL_API(egl_drawPixels)
{
  /* void glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, width)
    STACK_FMT_DATA(GLsizei, height)
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLvoid,  pixels[])
  STACK_FMT_END()

    glDrawPixels
    ( STACK_GET_DATA(width)
    , STACK_GET_DATA(height)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(pixels)
    );

  exdl_free_binaries(sd);
}

EXDL_API(egl_edgeFlag)
{
  /* void glEdgeFlag(GLboolean flag) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLboolean, flag)
  STACK_FMT_END()

    glEdgeFlag
    ( STACK_GET_DATA(flag)
    );
}

EXDL_API(egl_edgeFlagPointer)
{
  /* void glEdgeFlagPointer(GLsizei stride, const GLvoid* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, stride)
    STACK_FMT_DATA(GLvoid,  pointer[])
  STACK_FMT_END()

    glEdgeFlagPointer
    ( STACK_GET_DATA(stride)
    , STACK_GET_ADDR(pointer)
    );

  exdl_free_binaries(sd);
}

EXDL_API(egl_edgeFlagv)
{
  /* void glEdgeFlagv(const GLboolean* flag) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLboolean, flag[])
  STACK_FMT_END()

    glEdgeFlagv
    ( STACK_GET_ADDR(flag)
    );
}

EXDL_API(egl_enable)
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

EXDL_API(egl_enableClientState)
{
  /* void glEnableClientState(GLenum array) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, array)
  STACK_FMT_END()

    glEnableClientState
    ( STACK_GET_DATA(array)
    );
}

EXDL_API(egl_end)
{
  /* void glEnd(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glEnd
  (
  );
}

EXDL_API(egl_endList)
{
  /* void glEndList(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glEndList
  (
  );
}

EXDL_API(egl_evalCoord1d)
{
  /* void glEvalCoord1d(GLdouble u) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, u)
  STACK_FMT_END()

    glEvalCoord1d
    ( STACK_GET_DATA(u)
    );
}

EXDL_API(egl_evalCoord1dv)
{
  /* void glEvalCoord1dv(const GLdouble* u) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, u[1])
  STACK_FMT_END()

    glEvalCoord1dv
    ( STACK_GET_ADDR(u)
    );
}

EXDL_API(egl_evalCoord1f)
{
  /* void glEvalCoord1f(GLfloat u) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, u)
  STACK_FMT_END()

    glEvalCoord1f
    ( STACK_GET_DATA(u)
    );
}

EXDL_API(egl_evalCoord1fv)
{
  /* void glEvalCoord1fv(const GLfloat* u) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, u[1])
  STACK_FMT_END()

    glEvalCoord1fv
    ( STACK_GET_ADDR(u)
    );
}

EXDL_API(egl_evalCoord2d)
{
  /* void glEvalCoord2d(GLdouble u, GLdouble v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, u)
    STACK_FMT_DATA(GLdouble, v)
  STACK_FMT_END()

    glEvalCoord2d
    ( STACK_GET_DATA(u)
    , STACK_GET_DATA(v)
    );
}

EXDL_API(egl_evalCoord2dv)
{
  /* void glEvalCoord2dv(const GLdouble* u) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, u[2])
  STACK_FMT_END()

    glEvalCoord2dv
    ( STACK_GET_ADDR(u)
    );
}

EXDL_API(egl_evalCoord2f)
{
  /* void glEvalCoord2f(GLfloat u, GLfloat v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, u)
    STACK_FMT_DATA(GLfloat, v)
  STACK_FMT_END()

    glEvalCoord2f
    ( STACK_GET_DATA(u)
    , STACK_GET_DATA(v)
    );
}

EXDL_API(egl_evalCoord2fv)
{
  /* void glEvalCoord2fv(const GLfloat* u) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, u[2])
  STACK_FMT_END()

    glEvalCoord2fv
    ( STACK_GET_ADDR(u)
    );
}

EXDL_API(egl_evalMesh1)
{
  /* void glEvalMesh1(GLenum mode, GLint i1, GLint i2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
    STACK_FMT_DATA(GLint,  i1)
    STACK_FMT_DATA(GLint,  i2)
  STACK_FMT_END()

    glEvalMesh1
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(i1)
    , STACK_GET_DATA(i2)
    );
}

EXDL_API(egl_evalMesh2)
{
  /* void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
    STACK_FMT_DATA(GLint,  i1)
    STACK_FMT_DATA(GLint,  i2)
    STACK_FMT_DATA(GLint,  j1)
    STACK_FMT_DATA(GLint,  j2)
  STACK_FMT_END()

    glEvalMesh2
    ( STACK_GET_DATA(mode)
    , STACK_GET_DATA(i1)
    , STACK_GET_DATA(i2)
    , STACK_GET_DATA(j1)
    , STACK_GET_DATA(j2)
    );
}

EXDL_API(egl_evalPoint1)
{
  /* void glEvalPoint1(GLint i) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, i)
  STACK_FMT_END()

    glEvalPoint1
    ( STACK_GET_DATA(i)
    );
}

EXDL_API(egl_evalPoint2)
{
  /* void glEvalPoint2(GLint i, GLint j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, i)
    STACK_FMT_DATA(GLint, j)
  STACK_FMT_END()

    glEvalPoint2
    ( STACK_GET_DATA(i)
    , STACK_GET_DATA(j)
    );
}

EXDL_API(egl_feedbackBuffer)
{
  /* void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat* buffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, size)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLfloat, buffer[])
  STACK_FMT_END()

    glFeedbackBuffer
    ( STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_ADDR(buffer)
    );

  exdl_free_binaries(sd);
}

EXDL_API(egl_finish)
{
  /* void glFinish(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glFinish
  (
  );
}

EXDL_API(egl_flush)
{
  /* void glFlush(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glFlush
  (
  );
}

EXDL_API(egl_fogf)
{
  /* void glFogf(GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glFogf
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_fogfv)
{
  /* void glFogfv(GLenum pname, const GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, params[])
  STACK_FMT_END()

    glFogfv
    ( STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_fogi)
{
  /* void glFogi(GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glFogi
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_fogiv)
{
  /* void glFogiv(GLenum pname, const GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  params[])
  STACK_FMT_END()

    glFogiv
    ( STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_frontFace)
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

EXDL_API(egl_frustum)
{
  /* void glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, left)
    STACK_FMT_DATA(GLdouble, right)
    STACK_FMT_DATA(GLdouble, bottom)
    STACK_FMT_DATA(GLdouble, top)
    STACK_FMT_DATA(GLdouble, zNear)
    STACK_FMT_DATA(GLdouble, zFar)
  STACK_FMT_END()

    glFrustum
    ( STACK_GET_DATA(left)
    , STACK_GET_DATA(right)
    , STACK_GET_DATA(bottom)
    , STACK_GET_DATA(top)
    , STACK_GET_DATA(zNear)
    , STACK_GET_DATA(zFar)
    );
}

EXDL_API(egl_genLists)
{
  /* GLuint glGenLists(GLsizei range) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, range)
  STACK_FMT_END()

  CATCH_RESULT(GLuint)

    glGenLists
    ( STACK_GET_DATA(range)
    );

  THROW_RESULT(GLuint)
}

EXDL_API(egl_genTextures)
{
  /* void glGenTextures(GLsizei n, GLuint* textures) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, n)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLuint textures[])
  FRAME_FMT_SIZE(STACK_GET_DATA(n) * sizeof(GLuint))

    glGenTextures
    ( STACK_GET_DATA(n)
    , FRAME_GET_ADDR(textures)
    );

  THROW_FRAME()
}

EXDL_API(egl_getBooleanv)
{
  /* void glGetBooleanv(GLenum pname, GLboolean* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLboolean params[16])
  FRAME_FMT_END()

    glGetBooleanv
    ( STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getClipPlane)
{
  /* void glGetClipPlane(GLenum plane, GLdouble* equation) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  plane)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLdouble equation[4])
  FRAME_FMT_END()

    glGetClipPlane
    ( STACK_GET_DATA(plane)
    , FRAME_GET_ADDR(equation)
    );

  THROW_FRAME()
}

EXDL_API(egl_getDoublev)
{
  /* void glGetDoublev(GLenum pname, GLdouble* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLdouble params[16])
  FRAME_FMT_END()

    glGetDoublev
    ( STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getError)
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

EXDL_API(egl_getFloatv)
{
  /* void glGetFloatv(GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLfloat params[16])
  FRAME_FMT_END()

    glGetFloatv
    ( STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getIntegerv)
{
  /* void glGetIntegerv(GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLint params[16])
  FRAME_FMT_END()

    glGetIntegerv
    ( STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getLightfv)
{
  /* void glGetLightfv(GLenum light, GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, light)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLfloat params[4])
  FRAME_FMT_END()

    glGetLightfv
    ( STACK_GET_DATA(light)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getLightiv)
{
  /* void glGetLightiv(GLenum light, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, light)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLint params[4])
  FRAME_FMT_END()

    glGetLightiv
    ( STACK_GET_DATA(light)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getMapdv)
{
  /* void glGetMapdv(GLenum target, GLenum query, GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLenum,   query)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLdouble, v[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(query) * sizeof(GLdouble))

    glGetMapdv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(query)
    , FRAME_GET_ADDR(v)
    );

  THROW_FRAME()

  exdl_free_binaries(sd);
}

EXDL_API(egl_getMapfv)
{
  /* void glGetMapfv(GLenum target, GLenum query, GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLenum,  query)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, v[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(query) * sizeof(GLfloat))

    glGetMapfv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(query)
    , FRAME_GET_ADDR(v)
    );

  THROW_FRAME()

  exdl_free_binaries(sd);
}

EXDL_API(egl_getMapiv)
{
  /* void glGetMapiv(GLenum target, GLenum query, GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, query)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLint, v[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(query) * sizeof(GLint))

    glGetMapiv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(query)
    , FRAME_GET_ADDR(v)
    );

  THROW_FRAME()

  exdl_free_binaries(sd);
}

EXDL_API(egl_getMaterialfv)
{
  /* void glGetMaterialfv(GLenum face, GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, face)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLfloat params[4])
  FRAME_FMT_END()

    glGetMaterialfv
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getMaterialiv)
{
  /* void glGetMaterialiv(GLenum face, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, face)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLint params[4])
  FRAME_FMT_END()

    glGetMaterialiv
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getPixelMapfv)
{
  /* void glGetPixelMapfv(GLenum map, GLfloat* values) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  map)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLfloat, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(map) * sizeof(GLfloat))

    glGetPixelMapfv
    ( STACK_GET_DATA(map)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()

  exdl_free_binaries(sd);
}

EXDL_API(egl_getPixelMapuiv)
{
  /* void glGetPixelMapuiv(GLenum map, GLuint* values) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, map)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLuint, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(map) * sizeof(GLuint))

    glGetPixelMapuiv
    ( STACK_GET_DATA(map)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()

  exdl_free_binaries(sd);
}

EXDL_API(egl_getPixelMapusv)
{
  /* void glGetPixelMapusv(GLenum map, GLushort* values) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   map)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(GLushort, values[1])
  FRAME_FMT_SIZE(STACK_GET_DATA(map) * sizeof(GLushort))

    glGetPixelMapusv
    ( STACK_GET_DATA(map)
    , FRAME_GET_ADDR(values)
    );

  THROW_FRAME()

  exdl_free_binaries(sd);
}

EXDL_API(egl_getPointerv)
{
  /* void glGetPointerv(GLenum pname, GLvoid** params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  pname)
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

EXDL_API(egl_getPolygonStipple)
{
  /* void glGetPolygonStipple(GLubyte* mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLubyte mask[128])
  FRAME_FMT_END()

    glGetPolygonStipple
    ( FRAME_GET_ADDR(mask)
    );

  THROW_FRAME()
}

EXDL_API(egl_getString)
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

  THROW_STRING()
}

EXDL_API(egl_getTexEnvfv)
{
  /* void glGetTexEnvfv(GLenum target, GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLfloat params[4])
  FRAME_FMT_END()

    glGetTexEnvfv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getTexEnviv)
{
  /* void glGetTexEnviv(GLenum target, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLint params[4])
  FRAME_FMT_END()

    glGetTexEnviv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getTexGendv)
{
  /* void glGetTexGendv(GLenum coord, GLenum pname, GLdouble* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, coord)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLdouble params[4])
  FRAME_FMT_END()

    glGetTexGendv
    ( STACK_GET_DATA(coord)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getTexGenfv)
{
  /* void glGetTexGenfv(GLenum coord, GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, coord)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLfloat params[4])
  FRAME_FMT_END()

    glGetTexGenfv
    ( STACK_GET_DATA(coord)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getTexGeniv)
{
  /* void glGetTexGeniv(GLenum coord, GLenum pname, GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, coord)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLint params[4])
  FRAME_FMT_END()

    glGetTexGeniv
    ( STACK_GET_DATA(coord)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getTexImage)
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
    FRAME_FMT_DATA(GLvoid, pixels[])
  FRAME_FMT_END()

    glGetTexImage
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(format)
    , STACK_GET_DATA(type)
    , FRAME_GET_ADDR(pixels)
    );

  THROW_FRAME()

  exdl_free_binaries(sd);
}

EXDL_API(egl_getTexLevelParameterfv)
{
  /* void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLint,  level)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLfloat params[1])
  FRAME_FMT_END()

    glGetTexLevelParameterfv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getTexLevelParameteriv)
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
    FRAME_FMT_ADD(GLint params[1])
  FRAME_FMT_END()

    glGetTexLevelParameteriv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(level)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getTexParameterfv)
{
  /* void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_ADD(GLfloat params[4])
  FRAME_FMT_END()

    glGetTexParameterfv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_getTexParameteriv)
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
    FRAME_FMT_ADD(GLint params[4])
  FRAME_FMT_END()

    glGetTexParameteriv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , FRAME_GET_ADDR(params)
    );

  THROW_FRAME()
}

EXDL_API(egl_hint)
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

EXDL_API(egl_indexMask)
{
  /* void glIndexMask(GLuint mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, mask)
  STACK_FMT_END()

    glIndexMask
    ( STACK_GET_DATA(mask)
    );
}

EXDL_API(egl_indexPointer)
{
  /* void glIndexPointer(GLenum type, GLsizei stride, const GLvoid* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLsizei, stride)
    STACK_FMT_DATA(GLvoid,  pointer[])
  STACK_FMT_END()

    glIndexPointer
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(stride)
    , STACK_GET_ADDR(pointer)
    );

  exdl_free_binaries(sd);
}

EXDL_API(egl_indexd)
{
  /* void glIndexd(GLdouble c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, c)
  STACK_FMT_END()

    glIndexd
    ( STACK_GET_DATA(c)
    );
}

EXDL_API(egl_indexdv)
{
  /* void glIndexdv(const GLdouble* c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, c[1])
  STACK_FMT_END()

    glIndexdv
    ( STACK_GET_ADDR(c)
    );
}

EXDL_API(egl_indexf)
{
  /* void glIndexf(GLfloat c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, c)
  STACK_FMT_END()

    glIndexf
    ( STACK_GET_DATA(c)
    );
}

EXDL_API(egl_indexfv)
{
  /* void glIndexfv(const GLfloat* c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, c[1])
  STACK_FMT_END()

    glIndexfv
    ( STACK_GET_ADDR(c)
    );
}

EXDL_API(egl_indexi)
{
  /* void glIndexi(GLint c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, c)
  STACK_FMT_END()

    glIndexi
    ( STACK_GET_DATA(c)
    );
}

EXDL_API(egl_indexiv)
{
  /* void glIndexiv(const GLint* c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, c[1])
  STACK_FMT_END()

    glIndexiv
    ( STACK_GET_ADDR(c)
    );
}

EXDL_API(egl_indexs)
{
  /* void glIndexs(GLshort c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, c)
  STACK_FMT_END()

    glIndexs
    ( STACK_GET_DATA(c)
    );
}

EXDL_API(egl_indexsv)
{
  /* void glIndexsv(const GLshort* c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, c[1])
  STACK_FMT_END()

    glIndexsv
    ( STACK_GET_ADDR(c)
    );
}

EXDL_API(egl_indexub)
{
  /* void glIndexub(GLubyte c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLubyte, c)
  STACK_FMT_END()

    glIndexub
    ( STACK_GET_DATA(c)
    );
}

EXDL_API(egl_indexubv)
{
  /* void glIndexubv(const GLubyte* c) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLubyte, c[1])
  STACK_FMT_END()

    glIndexubv
    ( STACK_GET_ADDR(c)
    );
}

EXDL_API(egl_initNames)
{
  /* void glInitNames(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glInitNames
  (
  );
}

EXDL_API(egl_interleavedArrays)
{
  /* void glInterleavedArrays(GLenum format, GLsizei stride, const GLvoid* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  format)
    STACK_FMT_DATA(GLsizei, stride)
    STACK_FMT_DATA(GLvoid,  pointer[])
  STACK_FMT_END()

    glInterleavedArrays
    ( STACK_GET_DATA(format)
    , STACK_GET_DATA(stride)
    , STACK_GET_ADDR(pointer)
    );

  exdl_free_binaries(sd);
}

EXDL_API(egl_isEnabled)
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

EXDL_API(egl_isList)
{
  /* GLboolean glIsList(GLuint list) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, list)
  STACK_FMT_END()

  CATCH_RESULT(GLboolean)

    glIsList
    ( STACK_GET_DATA(list)
    );

  THROW_RESULT(GLboolean)
}

EXDL_API(egl_isTexture)
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

EXDL_API(egl_lightModelf)
{
  /* void glLightModelf(GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glLightModelf
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_lightModelfv)
{
  /* void glLightModelfv(GLenum pname, const GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, params[])
  STACK_FMT_END()

    glLightModelfv
    ( STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_lightModeli)
{
  /* void glLightModeli(GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glLightModeli
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_lightModeliv)
{
  /* void glLightModeliv(GLenum pname, const GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  params[])
  STACK_FMT_END()

    glLightModeliv
    ( STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_lightf)
{
  /* void glLightf(GLenum light, GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  light)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glLightf
    ( STACK_GET_DATA(light)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_lightfv)
{
  /* void glLightfv(GLenum light, GLenum pname, const GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  light)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, params[])
  STACK_FMT_END()

    glLightfv
    ( STACK_GET_DATA(light)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_lighti)
{
  /* void glLighti(GLenum light, GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, light)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glLighti
    ( STACK_GET_DATA(light)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_lightiv)
{
  /* void glLightiv(GLenum light, GLenum pname, const GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, light)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  params[])
  STACK_FMT_END()

    glLightiv
    ( STACK_GET_DATA(light)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_lineStipple)
{
  /* void glLineStipple(GLint factor, GLushort pattern) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    factor)
    STACK_FMT_DATA(GLushort, pattern)
  STACK_FMT_END()

    glLineStipple
    ( STACK_GET_DATA(factor)
    , STACK_GET_DATA(pattern)
    );
}

EXDL_API(egl_lineWidth)
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

EXDL_API(egl_listBase)
{
  /* void glListBase(GLuint base) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, base)
  STACK_FMT_END()

    glListBase
    ( STACK_GET_DATA(base)
    );
}

EXDL_API(egl_loadIdentity)
{
  /* void glLoadIdentity(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glLoadIdentity
  (
  );
}

EXDL_API(egl_loadMatrixd)
{
  /* void glLoadMatrixd(const GLdouble* m) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, m[16])
  STACK_FMT_END()

    glLoadMatrixd
    ( STACK_GET_ADDR(m)
    );
}

EXDL_API(egl_loadMatrixf)
{
  /* void glLoadMatrixf(const GLfloat* m) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, m[16])
  STACK_FMT_END()

    glLoadMatrixf
    ( STACK_GET_ADDR(m)
    );
}

EXDL_API(egl_loadName)
{
  /* void glLoadName(GLuint name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, name)
  STACK_FMT_END()

    glLoadName
    ( STACK_GET_DATA(name)
    );
}

EXDL_API(egl_logicOp)
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

EXDL_API(egl_map1d)
{
  /* void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble* points) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLdouble, u1)
    STACK_FMT_DATA(GLdouble, u2)
    STACK_FMT_DATA(GLint,    stride)
    STACK_FMT_DATA(GLint,    order)
    STACK_FMT_DATA(GLdouble, points[])
  STACK_FMT_END()

    glMap1d
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(u1)
    , STACK_GET_DATA(u2)
    , STACK_GET_DATA(stride)
    , STACK_GET_DATA(order)
    , STACK_GET_ADDR(points)
    );
}

EXDL_API(egl_map1f)
{
  /* void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat* points) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLfloat, u1)
    STACK_FMT_DATA(GLfloat, u2)
    STACK_FMT_DATA(GLint,   stride)
    STACK_FMT_DATA(GLint,   order)
    STACK_FMT_DATA(GLfloat, points[])
  STACK_FMT_END()

    glMap1f
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(u1)
    , STACK_GET_DATA(u2)
    , STACK_GET_DATA(stride)
    , STACK_GET_DATA(order)
    , STACK_GET_ADDR(points)
    );
}

EXDL_API(egl_map2d)
{
  /* void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble* points) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   target)
    STACK_FMT_DATA(GLdouble, u1)
    STACK_FMT_DATA(GLdouble, u2)
    STACK_FMT_DATA(GLint,    ustride)
    STACK_FMT_DATA(GLint,    uorder)
    STACK_FMT_DATA(GLdouble, v1)
    STACK_FMT_DATA(GLdouble, v2)
    STACK_FMT_DATA(GLint,    vstride)
    STACK_FMT_DATA(GLint,    vorder)
    STACK_FMT_DATA(GLdouble, points[])
  STACK_FMT_END()

    glMap2d
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(u1)
    , STACK_GET_DATA(u2)
    , STACK_GET_DATA(ustride)
    , STACK_GET_DATA(uorder)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    , STACK_GET_DATA(vstride)
    , STACK_GET_DATA(vorder)
    , STACK_GET_ADDR(points)
    );
}

EXDL_API(egl_map2f)
{
  /* void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat* points) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLfloat, u1)
    STACK_FMT_DATA(GLfloat, u2)
    STACK_FMT_DATA(GLint,   ustride)
    STACK_FMT_DATA(GLint,   uorder)
    STACK_FMT_DATA(GLfloat, v1)
    STACK_FMT_DATA(GLfloat, v2)
    STACK_FMT_DATA(GLint,   vstride)
    STACK_FMT_DATA(GLint,   vorder)
    STACK_FMT_DATA(GLfloat, points[])
  STACK_FMT_END()

    glMap2f
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(u1)
    , STACK_GET_DATA(u2)
    , STACK_GET_DATA(ustride)
    , STACK_GET_DATA(uorder)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    , STACK_GET_DATA(vstride)
    , STACK_GET_DATA(vorder)
    , STACK_GET_ADDR(points)
    );
}

EXDL_API(egl_mapGrid1d)
{
  /* void glMapGrid1d(GLint un, GLdouble u1, GLdouble u2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    un)
    STACK_FMT_DATA(GLdouble, u1)
    STACK_FMT_DATA(GLdouble, u2)
  STACK_FMT_END()

    glMapGrid1d
    ( STACK_GET_DATA(un)
    , STACK_GET_DATA(u1)
    , STACK_GET_DATA(u2)
    );
}

EXDL_API(egl_mapGrid1f)
{
  /* void glMapGrid1f(GLint un, GLfloat u1, GLfloat u2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   un)
    STACK_FMT_DATA(GLfloat, u1)
    STACK_FMT_DATA(GLfloat, u2)
  STACK_FMT_END()

    glMapGrid1f
    ( STACK_GET_DATA(un)
    , STACK_GET_DATA(u1)
    , STACK_GET_DATA(u2)
    );
}

EXDL_API(egl_mapGrid2d)
{
  /* void glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,    un)
    STACK_FMT_DATA(GLdouble, u1)
    STACK_FMT_DATA(GLdouble, u2)
    STACK_FMT_DATA(GLint,    vn)
    STACK_FMT_DATA(GLdouble, v1)
    STACK_FMT_DATA(GLdouble, v2)
  STACK_FMT_END()

    glMapGrid2d
    ( STACK_GET_DATA(un)
    , STACK_GET_DATA(u1)
    , STACK_GET_DATA(u2)
    , STACK_GET_DATA(vn)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    );
}

EXDL_API(egl_mapGrid2f)
{
  /* void glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   un)
    STACK_FMT_DATA(GLfloat, u1)
    STACK_FMT_DATA(GLfloat, u2)
    STACK_FMT_DATA(GLint,   vn)
    STACK_FMT_DATA(GLfloat, v1)
    STACK_FMT_DATA(GLfloat, v2)
  STACK_FMT_END()

    glMapGrid2f
    ( STACK_GET_DATA(un)
    , STACK_GET_DATA(u1)
    , STACK_GET_DATA(u2)
    , STACK_GET_DATA(vn)
    , STACK_GET_DATA(v1)
    , STACK_GET_DATA(v2)
    );
}

EXDL_API(egl_materialf)
{
  /* void glMaterialf(GLenum face, GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  face)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glMaterialf
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_materialfv)
{
  /* void glMaterialfv(GLenum face, GLenum pname, const GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  face)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, params[])
  STACK_FMT_END()

    glMaterialfv
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_materiali)
{
  /* void glMateriali(GLenum face, GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, face)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glMateriali
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_materialiv)
{
  /* void glMaterialiv(GLenum face, GLenum pname, const GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, face)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  params[])
  STACK_FMT_END()

    glMaterialiv
    ( STACK_GET_DATA(face)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_matrixMode)
{
  /* void glMatrixMode(GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glMatrixMode
    ( STACK_GET_DATA(mode)
    );
}

EXDL_API(egl_multMatrixd)
{
  /* void glMultMatrixd(const GLdouble* m) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, m[16])
  STACK_FMT_END()

    glMultMatrixd
    ( STACK_GET_ADDR(m)
    );
}

EXDL_API(egl_multMatrixf)
{
  /* void glMultMatrixf(const GLfloat* m) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, m[16])
  STACK_FMT_END()

    glMultMatrixf
    ( STACK_GET_ADDR(m)
    );
}

EXDL_API(egl_newList)
{
  /* void glNewList(GLuint list, GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, list)
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glNewList
    ( STACK_GET_DATA(list)
    , STACK_GET_DATA(mode)
    );
}

EXDL_API(egl_normal3b)
{
  /* void glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLbyte, nx)
    STACK_FMT_DATA(GLbyte, ny)
    STACK_FMT_DATA(GLbyte, nz)
  STACK_FMT_END()

    glNormal3b
    ( STACK_GET_DATA(nx)
    , STACK_GET_DATA(ny)
    , STACK_GET_DATA(nz)
    );
}

EXDL_API(egl_normal3bv)
{
  /* void glNormal3bv(const GLbyte* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLbyte, v[3])
  STACK_FMT_END()

    glNormal3bv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_normal3d)
{
  /* void glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, nx)
    STACK_FMT_DATA(GLdouble, ny)
    STACK_FMT_DATA(GLdouble, nz)
  STACK_FMT_END()

    glNormal3d
    ( STACK_GET_DATA(nx)
    , STACK_GET_DATA(ny)
    , STACK_GET_DATA(nz)
    );
}

EXDL_API(egl_normal3dv)
{
  /* void glNormal3dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[3])
  STACK_FMT_END()

    glNormal3dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_normal3f)
{
  /* void glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, nx)
    STACK_FMT_DATA(GLfloat, ny)
    STACK_FMT_DATA(GLfloat, nz)
  STACK_FMT_END()

    glNormal3f
    ( STACK_GET_DATA(nx)
    , STACK_GET_DATA(ny)
    , STACK_GET_DATA(nz)
    );
}

EXDL_API(egl_normal3fv)
{
  /* void glNormal3fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[3])
  STACK_FMT_END()

    glNormal3fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_normal3i)
{
  /* void glNormal3i(GLint nx, GLint ny, GLint nz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, nx)
    STACK_FMT_DATA(GLint, ny)
    STACK_FMT_DATA(GLint, nz)
  STACK_FMT_END()

    glNormal3i
    ( STACK_GET_DATA(nx)
    , STACK_GET_DATA(ny)
    , STACK_GET_DATA(nz)
    );
}

EXDL_API(egl_normal3iv)
{
  /* void glNormal3iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[3])
  STACK_FMT_END()

    glNormal3iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_normal3s)
{
  /* void glNormal3s(GLshort nx, GLshort ny, GLshort nz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, nx)
    STACK_FMT_DATA(GLshort, ny)
    STACK_FMT_DATA(GLshort, nz)
  STACK_FMT_END()

    glNormal3s
    ( STACK_GET_DATA(nx)
    , STACK_GET_DATA(ny)
    , STACK_GET_DATA(nz)
    );
}

EXDL_API(egl_normal3sv)
{
  /* void glNormal3sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[3])
  STACK_FMT_END()

    glNormal3sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_normalPointer)
{
  /* void glNormalPointer(GLenum type, GLsizei stride, const GLvoid* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLsizei, stride)
    STACK_FMT_DATA(GLvoid,  pointer[])
  STACK_FMT_END()

    glNormalPointer
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(stride)
    , STACK_GET_ADDR(pointer)
    );

  exdl_free_binaries(sd);
}

EXDL_API(egl_ortho)
{
  /* void glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, left)
    STACK_FMT_DATA(GLdouble, right)
    STACK_FMT_DATA(GLdouble, bottom)
    STACK_FMT_DATA(GLdouble, top)
    STACK_FMT_DATA(GLdouble, zNear)
    STACK_FMT_DATA(GLdouble, zFar)
  STACK_FMT_END()

    glOrtho
    ( STACK_GET_DATA(left)
    , STACK_GET_DATA(right)
    , STACK_GET_DATA(bottom)
    , STACK_GET_DATA(top)
    , STACK_GET_DATA(zNear)
    , STACK_GET_DATA(zFar)
    );
}

EXDL_API(egl_passThrough)
{
  /* void glPassThrough(GLfloat token) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, token)
  STACK_FMT_END()

    glPassThrough
    ( STACK_GET_DATA(token)
    );
}

EXDL_API(egl_pixelMapfv)
{
  /* void glPixelMapfv(GLenum map, GLsizei mapsize, const GLfloat* values) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  map)
    STACK_FMT_DATA(GLint,   mapsize)
    STACK_FMT_DATA(GLfloat, values[])
  STACK_FMT_END()

    glPixelMapfv
    ( STACK_GET_DATA(map)
    , STACK_GET_DATA(mapsize)
    , STACK_GET_ADDR(values)
    );
}

EXDL_API(egl_pixelMapuiv)
{
  /* void glPixelMapuiv(GLenum map, GLsizei mapsize, const GLuint* values) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, map)
    STACK_FMT_DATA(GLint,  mapsize)
    STACK_FMT_DATA(GLuint, values[])
  STACK_FMT_END()

    glPixelMapuiv
    ( STACK_GET_DATA(map)
    , STACK_GET_DATA(mapsize)
    , STACK_GET_ADDR(values)
    );
}

EXDL_API(egl_pixelMapusv)
{
  /* void glPixelMapusv(GLenum map, GLsizei mapsize, const GLushort* values) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   map)
    STACK_FMT_DATA(GLint,    mapsize)
    STACK_FMT_DATA(GLushort, values[])
  STACK_FMT_END()

    glPixelMapusv
    ( STACK_GET_DATA(map)
    , STACK_GET_DATA(mapsize)
    , STACK_GET_ADDR(values)
    );
}

EXDL_API(egl_pixelStoref)
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

EXDL_API(egl_pixelStorei)
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

EXDL_API(egl_pixelTransferf)
{
  /* void glPixelTransferf(GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glPixelTransferf
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_pixelTransferi)
{
  /* void glPixelTransferi(GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glPixelTransferi
    ( STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_pixelZoom)
{
  /* void glPixelZoom(GLfloat xfactor, GLfloat yfactor) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, xfactor)
    STACK_FMT_DATA(GLfloat, yfactor)
  STACK_FMT_END()

    glPixelZoom
    ( STACK_GET_DATA(xfactor)
    , STACK_GET_DATA(yfactor)
    );
}

EXDL_API(egl_pointSize)
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

EXDL_API(egl_polygonMode)
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

EXDL_API(egl_polygonOffset)
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

EXDL_API(egl_polygonStipple)
{
  /* void glPolygonStipple(const GLubyte* mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLubyte, mask[])
  STACK_FMT_END()

    glPolygonStipple
    ( STACK_GET_ADDR(mask)
    );
}

EXDL_API(egl_popAttrib)
{
  /* void glPopAttrib(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glPopAttrib
  (
  );
}

EXDL_API(egl_popClientAttrib)
{
  /* void glPopClientAttrib(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glPopClientAttrib
  (
  );
}

EXDL_API(egl_popMatrix)
{
  /* void glPopMatrix(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glPopMatrix
  (
  );
}

EXDL_API(egl_popName)
{
  /* void glPopName(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glPopName
  (
  );
}

EXDL_API(egl_prioritizeTextures)
{
  /* void glPrioritizeTextures(GLsizei n, const GLuint* textures, const GLclampf* priorities) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei,  n)
    STACK_FMT_DATA(GLuint   textures[1]) /* fake size, */
    STACK_FMT_DATA(GLclampf, priorities[1])
  STACK_FMT_END()

    glPrioritizeTextures
    ( STACK_GET_DATA(n)
    , STACK_GET_ADDR(textures)
    , STACK_GET_ADDR(textures)
    + STACK_GET_DATA(n) * sizeof(GLuint) /* priorities */
    );
}

EXDL_API(egl_pushAttrib)
{
  /* void glPushAttrib(GLbitfield mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLbitfield, mask)
  STACK_FMT_END()

    glPushAttrib
    ( STACK_GET_DATA(mask)
    );
}

EXDL_API(egl_pushClientAttrib)
{
  /* void glPushClientAttrib(GLbitfield mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLbitfield, mask)
  STACK_FMT_END()

    glPushClientAttrib
    ( STACK_GET_DATA(mask)
    );
}

EXDL_API(egl_pushMatrix)
{
  /* void glPushMatrix(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  glPushMatrix
  (
  );
}

EXDL_API(egl_pushName)
{
  /* void glPushName(GLuint name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLuint, name)
  STACK_FMT_END()

    glPushName
    ( STACK_GET_DATA(name)
    );
}

EXDL_API(egl_rasterPos2d)
{
  /* void glRasterPos2d(GLdouble x, GLdouble y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
  STACK_FMT_END()

    glRasterPos2d
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(egl_rasterPos2dv)
{
  /* void glRasterPos2dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[2])
  STACK_FMT_END()

    glRasterPos2dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos2f)
{
  /* void glRasterPos2f(GLfloat x, GLfloat y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
  STACK_FMT_END()

    glRasterPos2f
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(egl_rasterPos2fv)
{
  /* void glRasterPos2fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[2])
  STACK_FMT_END()

    glRasterPos2fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos2i)
{
  /* void glRasterPos2i(GLint x, GLint y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, x)
    STACK_FMT_DATA(GLint, y)
  STACK_FMT_END()

    glRasterPos2i
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(egl_rasterPos2iv)
{
  /* void glRasterPos2iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[2])
  STACK_FMT_END()

    glRasterPos2iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos2s)
{
  /* void glRasterPos2s(GLshort x, GLshort y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, x)
    STACK_FMT_DATA(GLshort, y)
  STACK_FMT_END()

    glRasterPos2s
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(egl_rasterPos2sv)
{
  /* void glRasterPos2sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[2])
  STACK_FMT_END()

    glRasterPos2sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos3d)
{
  /* void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
  STACK_FMT_END()

    glRasterPos3d
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_rasterPos3dv)
{
  /* void glRasterPos3dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[3])
  STACK_FMT_END()

    glRasterPos3dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos3f)
{
  /* void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
    STACK_FMT_DATA(GLfloat, z)
  STACK_FMT_END()

    glRasterPos3f
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_rasterPos3fv)
{
  /* void glRasterPos3fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[3])
  STACK_FMT_END()

    glRasterPos3fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos3i)
{
  /* void glRasterPos3i(GLint x, GLint y, GLint z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, x)
    STACK_FMT_DATA(GLint, y)
    STACK_FMT_DATA(GLint, z)
  STACK_FMT_END()

    glRasterPos3i
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_rasterPos3iv)
{
  /* void glRasterPos3iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[3])
  STACK_FMT_END()

    glRasterPos3iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos3s)
{
  /* void glRasterPos3s(GLshort x, GLshort y, GLshort z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, x)
    STACK_FMT_DATA(GLshort, y)
    STACK_FMT_DATA(GLshort, z)
  STACK_FMT_END()

    glRasterPos3s
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_rasterPos3sv)
{
  /* void glRasterPos3sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[3])
  STACK_FMT_END()

    glRasterPos3sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos4d)
{
  /* void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
    STACK_FMT_DATA(GLdouble, w)
  STACK_FMT_END()

    glRasterPos4d
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(egl_rasterPos4dv)
{
  /* void glRasterPos4dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[4])
  STACK_FMT_END()

    glRasterPos4dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos4f)
{
  /* void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
    STACK_FMT_DATA(GLfloat, z)
    STACK_FMT_DATA(GLfloat, w)
  STACK_FMT_END()

    glRasterPos4f
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(egl_rasterPos4fv)
{
  /* void glRasterPos4fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[4])
  STACK_FMT_END()

    glRasterPos4fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos4i)
{
  /* void glRasterPos4i(GLint x, GLint y, GLint z, GLint w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, x)
    STACK_FMT_DATA(GLint, y)
    STACK_FMT_DATA(GLint, z)
    STACK_FMT_DATA(GLint, w)
  STACK_FMT_END()

    glRasterPos4i
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(egl_rasterPos4iv)
{
  /* void glRasterPos4iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[4])
  STACK_FMT_END()

    glRasterPos4iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_rasterPos4s)
{
  /* void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, x)
    STACK_FMT_DATA(GLshort, y)
    STACK_FMT_DATA(GLshort, z)
    STACK_FMT_DATA(GLshort, w)
  STACK_FMT_END()

    glRasterPos4s
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(egl_rasterPos4sv)
{
  /* void glRasterPos4sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[4])
  STACK_FMT_END()

    glRasterPos4sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_readBuffer)
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

EXDL_API(egl_readPixels)
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

  exdl_free_binaries(sd);
}

EXDL_API(egl_rectd)
{
  /* void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, x1)
    STACK_FMT_DATA(GLdouble, y1)
    STACK_FMT_DATA(GLdouble, x2)
    STACK_FMT_DATA(GLdouble, y2)
  STACK_FMT_END()

    glRectd
    ( STACK_GET_DATA(x1)
    , STACK_GET_DATA(y1)
    , STACK_GET_DATA(x2)
    , STACK_GET_DATA(y2)
    );
}

EXDL_API(egl_rectdv)
{
  /* void glRectdv(const GLdouble* v1, const GLdouble* v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v1[2])
    STACK_FMT_DATA(GLdouble, v2[2])
  STACK_FMT_END()

    glRectdv
    ( STACK_GET_ADDR(v1)
    , STACK_GET_ADDR(v2)
    );
}

EXDL_API(egl_rectf)
{
  /* void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, x1)
    STACK_FMT_DATA(GLfloat, y1)
    STACK_FMT_DATA(GLfloat, x2)
    STACK_FMT_DATA(GLfloat, y2)
  STACK_FMT_END()

    glRectf
    ( STACK_GET_DATA(x1)
    , STACK_GET_DATA(y1)
    , STACK_GET_DATA(x2)
    , STACK_GET_DATA(y2)
    );
}

EXDL_API(egl_rectfv)
{
  /* void glRectfv(const GLfloat* v1, const GLfloat* v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v1[2])
    STACK_FMT_DATA(GLfloat, v2[2])
  STACK_FMT_END()

    glRectfv
    ( STACK_GET_ADDR(v1)
    , STACK_GET_ADDR(v2)
    );
}

EXDL_API(egl_recti)
{
  /* void glRecti(GLint x1, GLint y1, GLint x2, GLint y2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, x1)
    STACK_FMT_DATA(GLint, y1)
    STACK_FMT_DATA(GLint, x2)
    STACK_FMT_DATA(GLint, y2)
  STACK_FMT_END()

    glRecti
    ( STACK_GET_DATA(x1)
    , STACK_GET_DATA(y1)
    , STACK_GET_DATA(x2)
    , STACK_GET_DATA(y2)
    );
}

EXDL_API(egl_rectiv)
{
  /* void glRectiv(const GLint* v1, const GLint* v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v1[2])
    STACK_FMT_DATA(GLint, v2[2])
  STACK_FMT_END()

    glRectiv
    ( STACK_GET_ADDR(v1)
    , STACK_GET_ADDR(v2)
    );
}

EXDL_API(egl_rects)
{
  /* void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, x1)
    STACK_FMT_DATA(GLshort, y1)
    STACK_FMT_DATA(GLshort, x2)
    STACK_FMT_DATA(GLshort, y2)
  STACK_FMT_END()

    glRects
    ( STACK_GET_DATA(x1)
    , STACK_GET_DATA(y1)
    , STACK_GET_DATA(x2)
    , STACK_GET_DATA(y2)
    );
}

EXDL_API(egl_rectsv)
{
  /* void glRectsv(const GLshort* v1, const GLshort* v2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v1[2])
    STACK_FMT_DATA(GLshort, v2[2])
  STACK_FMT_END()

    glRectsv
    ( STACK_GET_ADDR(v1)
    , STACK_GET_ADDR(v2)
    );
}

EXDL_API(egl_renderMode)
{
  /* GLint glRenderMode(GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

  CATCH_RESULT(GLint)

    glRenderMode
    ( STACK_GET_DATA(mode)
    );

  THROW_RESULT(GLint)
}

EXDL_API(egl_rotated)
{
  /* void glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, angle)
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
  STACK_FMT_END()

    glRotated
    ( STACK_GET_DATA(angle)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_rotatef)
{
  /* void glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, angle)
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
    STACK_FMT_DATA(GLfloat, z)
  STACK_FMT_END()

    glRotatef
    ( STACK_GET_DATA(angle)
    , STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_scaled)
{
  /* void glScaled(GLdouble x, GLdouble y, GLdouble z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
  STACK_FMT_END()

    glScaled
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_scalef)
{
  /* void glScalef(GLfloat x, GLfloat y, GLfloat z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
    STACK_FMT_DATA(GLfloat, z)
  STACK_FMT_END()

    glScalef
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_scissor)
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

EXDL_API(egl_selectBuffer)
{
  /* void glSelectBuffer(GLsizei size, GLuint* buffer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLsizei, size)
    STACK_FMT_DATA(GLuint,  buffer[])
  STACK_FMT_END()

    glSelectBuffer
    ( STACK_GET_DATA(size)
    , STACK_GET_ADDR(buffer)
    );

  exdl_free_binaries(sd);
}

EXDL_API(egl_shadeModel)
{
  /* void glShadeModel(GLenum mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, mode)
  STACK_FMT_END()

    glShadeModel
    ( STACK_GET_DATA(mode)
    );
}

EXDL_API(egl_stencilFunc)
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

EXDL_API(egl_stencilMask)
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

EXDL_API(egl_stencilOp)
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

EXDL_API(egl_texCoord1d)
{
  /* void glTexCoord1d(GLdouble s) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, s)
  STACK_FMT_END()

    glTexCoord1d
    ( STACK_GET_DATA(s)
    );
}

EXDL_API(egl_texCoord1dv)
{
  /* void glTexCoord1dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[1])
  STACK_FMT_END()

    glTexCoord1dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord1f)
{
  /* void glTexCoord1f(GLfloat s) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, s)
  STACK_FMT_END()

    glTexCoord1f
    ( STACK_GET_DATA(s)
    );
}

EXDL_API(egl_texCoord1fv)
{
  /* void glTexCoord1fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[1])
  STACK_FMT_END()

    glTexCoord1fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord1i)
{
  /* void glTexCoord1i(GLint s) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, s)
  STACK_FMT_END()

    glTexCoord1i
    ( STACK_GET_DATA(s)
    );
}

EXDL_API(egl_texCoord1iv)
{
  /* void glTexCoord1iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[1])
  STACK_FMT_END()

    glTexCoord1iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord1s)
{
  /* void glTexCoord1s(GLshort s) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, s)
  STACK_FMT_END()

    glTexCoord1s
    ( STACK_GET_DATA(s)
    );
}

EXDL_API(egl_texCoord1sv)
{
  /* void glTexCoord1sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[1])
  STACK_FMT_END()

    glTexCoord1sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord2d)
{
  /* void glTexCoord2d(GLdouble s, GLdouble t) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, s)
    STACK_FMT_DATA(GLdouble, t)
  STACK_FMT_END()

    glTexCoord2d
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    );
}

EXDL_API(egl_texCoord2dv)
{
  /* void glTexCoord2dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[2])
  STACK_FMT_END()

    glTexCoord2dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord2f)
{
  /* void glTexCoord2f(GLfloat s, GLfloat t) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, s)
    STACK_FMT_DATA(GLfloat, t)
  STACK_FMT_END()

    glTexCoord2f
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    );
}

EXDL_API(egl_texCoord2fv)
{
  /* void glTexCoord2fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[2])
  STACK_FMT_END()

    glTexCoord2fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord2i)
{
  /* void glTexCoord2i(GLint s, GLint t) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, s)
    STACK_FMT_DATA(GLint, t)
  STACK_FMT_END()

    glTexCoord2i
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    );
}

EXDL_API(egl_texCoord2iv)
{
  /* void glTexCoord2iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[2])
  STACK_FMT_END()

    glTexCoord2iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord2s)
{
  /* void glTexCoord2s(GLshort s, GLshort t) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, s)
    STACK_FMT_DATA(GLshort, t)
  STACK_FMT_END()

    glTexCoord2s
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    );
}

EXDL_API(egl_texCoord2sv)
{
  /* void glTexCoord2sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[2])
  STACK_FMT_END()

    glTexCoord2sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord3d)
{
  /* void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, s)
    STACK_FMT_DATA(GLdouble, t)
    STACK_FMT_DATA(GLdouble, r)
  STACK_FMT_END()

    glTexCoord3d
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    , STACK_GET_DATA(r)
    );
}

EXDL_API(egl_texCoord3dv)
{
  /* void glTexCoord3dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[3])
  STACK_FMT_END()

    glTexCoord3dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord3f)
{
  /* void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, s)
    STACK_FMT_DATA(GLfloat, t)
    STACK_FMT_DATA(GLfloat, r)
  STACK_FMT_END()

    glTexCoord3f
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    , STACK_GET_DATA(r)
    );
}

EXDL_API(egl_texCoord3fv)
{
  /* void glTexCoord3fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[3])
  STACK_FMT_END()

    glTexCoord3fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord3i)
{
  /* void glTexCoord3i(GLint s, GLint t, GLint r) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, s)
    STACK_FMT_DATA(GLint, t)
    STACK_FMT_DATA(GLint, r)
  STACK_FMT_END()

    glTexCoord3i
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    , STACK_GET_DATA(r)
    );
}

EXDL_API(egl_texCoord3iv)
{
  /* void glTexCoord3iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[3])
  STACK_FMT_END()

    glTexCoord3iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord3s)
{
  /* void glTexCoord3s(GLshort s, GLshort t, GLshort r) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, s)
    STACK_FMT_DATA(GLshort, t)
    STACK_FMT_DATA(GLshort, r)
  STACK_FMT_END()

    glTexCoord3s
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    , STACK_GET_DATA(r)
    );
}

EXDL_API(egl_texCoord3sv)
{
  /* void glTexCoord3sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[3])
  STACK_FMT_END()

    glTexCoord3sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord4d)
{
  /* void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, s)
    STACK_FMT_DATA(GLdouble, t)
    STACK_FMT_DATA(GLdouble, r)
    STACK_FMT_DATA(GLdouble, q)
  STACK_FMT_END()

    glTexCoord4d
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    , STACK_GET_DATA(r)
    , STACK_GET_DATA(q)
    );
}

EXDL_API(egl_texCoord4dv)
{
  /* void glTexCoord4dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[4])
  STACK_FMT_END()

    glTexCoord4dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord4f)
{
  /* void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, s)
    STACK_FMT_DATA(GLfloat, t)
    STACK_FMT_DATA(GLfloat, r)
    STACK_FMT_DATA(GLfloat, q)
  STACK_FMT_END()

    glTexCoord4f
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    , STACK_GET_DATA(r)
    , STACK_GET_DATA(q)
    );
}

EXDL_API(egl_texCoord4fv)
{
  /* void glTexCoord4fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[4])
  STACK_FMT_END()

    glTexCoord4fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord4i)
{
  /* void glTexCoord4i(GLint s, GLint t, GLint r, GLint q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, s)
    STACK_FMT_DATA(GLint, t)
    STACK_FMT_DATA(GLint, r)
    STACK_FMT_DATA(GLint, q)
  STACK_FMT_END()

    glTexCoord4i
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    , STACK_GET_DATA(r)
    , STACK_GET_DATA(q)
    );
}

EXDL_API(egl_texCoord4iv)
{
  /* void glTexCoord4iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[4])
  STACK_FMT_END()

    glTexCoord4iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoord4s)
{
  /* void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, s)
    STACK_FMT_DATA(GLshort, t)
    STACK_FMT_DATA(GLshort, r)
    STACK_FMT_DATA(GLshort, q)
  STACK_FMT_END()

    glTexCoord4s
    ( STACK_GET_DATA(s)
    , STACK_GET_DATA(t)
    , STACK_GET_DATA(r)
    , STACK_GET_DATA(q)
    );
}

EXDL_API(egl_texCoord4sv)
{
  /* void glTexCoord4sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[4])
  STACK_FMT_END()

    glTexCoord4sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_texCoordPointer)
{
  /* void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   size)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLsizei, stride)
    STACK_FMT_DATA(GLvoid,  pointer[])
  STACK_FMT_END()

    glTexCoordPointer
    ( STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(stride)
    , STACK_GET_ADDR(pointer)
    );

  exdl_free_binaries(sd);
}

EXDL_API(egl_texEnvf)
{
  /* void glTexEnvf(GLenum target, GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glTexEnvf
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_texEnvfv)
{
  /* void glTexEnvfv(GLenum target, GLenum pname, const GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, params[4])
  STACK_FMT_END()

    glTexEnvfv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_texEnvi)
{
  /* void glTexEnvi(GLenum target, GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glTexEnvi
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_texEnviv)
{
  /* void glTexEnviv(GLenum target, GLenum pname, const GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, target)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  params[4])
  STACK_FMT_END()

    glTexEnviv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_texGend)
{
  /* void glTexGend(GLenum coord, GLenum pname, GLdouble param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   coord)
    STACK_FMT_DATA(GLenum,   pname)
    STACK_FMT_DATA(GLdouble, param)
  STACK_FMT_END()

    glTexGend
    ( STACK_GET_DATA(coord)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_texGendv)
{
  /* void glTexGendv(GLenum coord, GLenum pname, const GLdouble* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,   coord)
    STACK_FMT_DATA(GLenum,   pname)
    STACK_FMT_DATA(GLdouble, params[4])
  STACK_FMT_END()

    glTexGendv
    ( STACK_GET_DATA(coord)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_texGenf)
{
  /* void glTexGenf(GLenum coord, GLenum pname, GLfloat param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  coord)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, param)
  STACK_FMT_END()

    glTexGenf
    ( STACK_GET_DATA(coord)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_texGenfv)
{
  /* void glTexGenfv(GLenum coord, GLenum pname, const GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  coord)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, params[4])
  STACK_FMT_END()

    glTexGenfv
    ( STACK_GET_DATA(coord)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_texGeni)
{
  /* void glTexGeni(GLenum coord, GLenum pname, GLint param) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, coord)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  param)
  STACK_FMT_END()

    glTexGeni
    ( STACK_GET_DATA(coord)
    , STACK_GET_DATA(pname)
    , STACK_GET_DATA(param)
    );
}

EXDL_API(egl_texGeniv)
{
  /* void glTexGeniv(GLenum coord, GLenum pname, const GLint* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum, coord)
    STACK_FMT_DATA(GLenum, pname)
    STACK_FMT_DATA(GLint,  params[4])
  STACK_FMT_END()

    glTexGeniv
    ( STACK_GET_DATA(coord)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_texImage1D)
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
  
  exdl_free_binaries(sd);
}

EXDL_API(egl_texImage2D)
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

  exdl_free_binaries(sd);
}

EXDL_API(egl_texParameterf)
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

EXDL_API(egl_texParameterfv)
{
  /* void glTexParameterfv(GLenum target, GLenum pname, const GLfloat* params) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLenum,  target)
    STACK_FMT_DATA(GLenum,  pname)
    STACK_FMT_DATA(GLfloat, params[])
  STACK_FMT_END()

    glTexParameterfv
    ( STACK_GET_DATA(target)
    , STACK_GET_DATA(pname)
    , STACK_GET_ADDR(params)
    );
}

EXDL_API(egl_texParameteri)
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

EXDL_API(egl_texParameteriv)
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

EXDL_API(egl_texSubImage1D)
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
  
  exdl_free_binaries(sd);
}

EXDL_API(egl_texSubImage2D)
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

  exdl_free_binaries(sd);
}

EXDL_API(egl_translated)
{
  /* void glTranslated(GLdouble x, GLdouble y, GLdouble z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
  STACK_FMT_END()

    glTranslated
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_translatef)
{
  /* void glTranslatef(GLfloat x, GLfloat y, GLfloat z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
    STACK_FMT_DATA(GLfloat, z)
  STACK_FMT_END()

    glTranslatef
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_vertex2d)
{
  /* void glVertex2d(GLdouble x, GLdouble y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
  STACK_FMT_END()

    glVertex2d
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(egl_vertex2dv)
{
  /* void glVertex2dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[2])
  STACK_FMT_END()

    glVertex2dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex2f)
{
  /* void glVertex2f(GLfloat x, GLfloat y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
  STACK_FMT_END()

    glVertex2f
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(egl_vertex2fv)
{
  /* void glVertex2fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[2])
  STACK_FMT_END()

    glVertex2fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex2i)
{
  /* void glVertex2i(GLint x, GLint y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, x)
    STACK_FMT_DATA(GLint, y)
  STACK_FMT_END()

    glVertex2i
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(egl_vertex2iv)
{
  /* void glVertex2iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[2])
  STACK_FMT_END()

    glVertex2iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex2s)
{
  /* void glVertex2s(GLshort x, GLshort y) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, x)
    STACK_FMT_DATA(GLshort, y)
  STACK_FMT_END()

    glVertex2s
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    );
}

EXDL_API(egl_vertex2sv)
{
  /* void glVertex2sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[2])
  STACK_FMT_END()

    glVertex2sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex3d)
{
  /* void glVertex3d(GLdouble x, GLdouble y, GLdouble z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
  STACK_FMT_END()

    glVertex3d
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_vertex3dv)
{
  /* void glVertex3dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[3])
  STACK_FMT_END()

    glVertex3dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex3f)
{
  /* void glVertex3f(GLfloat x, GLfloat y, GLfloat z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
    STACK_FMT_DATA(GLfloat, z)
  STACK_FMT_END()

    glVertex3f
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_vertex3fv)
{
  /* void glVertex3fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[3])
  STACK_FMT_END()

    glVertex3fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex3i)
{
  /* void glVertex3i(GLint x, GLint y, GLint z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, x)
    STACK_FMT_DATA(GLint, y)
    STACK_FMT_DATA(GLint, z)
  STACK_FMT_END()

    glVertex3i
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_vertex3iv)
{
  /* void glVertex3iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[3])
  STACK_FMT_END()

    glVertex3iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex3s)
{
  /* void glVertex3s(GLshort x, GLshort y, GLshort z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, x)
    STACK_FMT_DATA(GLshort, y)
    STACK_FMT_DATA(GLshort, z)
  STACK_FMT_END()

    glVertex3s
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    );
}

EXDL_API(egl_vertex3sv)
{
  /* void glVertex3sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[3])
  STACK_FMT_END()

    glVertex3sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex4d)
{
  /* void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, x)
    STACK_FMT_DATA(GLdouble, y)
    STACK_FMT_DATA(GLdouble, z)
    STACK_FMT_DATA(GLdouble, w)
  STACK_FMT_END()

    glVertex4d
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(egl_vertex4dv)
{
  /* void glVertex4dv(const GLdouble* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLdouble, v[4])
  STACK_FMT_END()

    glVertex4dv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex4f)
{
  /* void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, x)
    STACK_FMT_DATA(GLfloat, y)
    STACK_FMT_DATA(GLfloat, z)
    STACK_FMT_DATA(GLfloat, w)
  STACK_FMT_END()

    glVertex4f
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(egl_vertex4fv)
{
  /* void glVertex4fv(const GLfloat* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLfloat, v[4])
  STACK_FMT_END()

    glVertex4fv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex4i)
{
  /* void glVertex4i(GLint x, GLint y, GLint z, GLint w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, x)
    STACK_FMT_DATA(GLint, y)
    STACK_FMT_DATA(GLint, z)
    STACK_FMT_DATA(GLint, w)
  STACK_FMT_END()

    glVertex4i
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(egl_vertex4iv)
{
  /* void glVertex4iv(const GLint* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint, v[4])
  STACK_FMT_END()

    glVertex4iv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertex4s)
{
  /* void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, x)
    STACK_FMT_DATA(GLshort, y)
    STACK_FMT_DATA(GLshort, z)
    STACK_FMT_DATA(GLshort, w)
  STACK_FMT_END()

    glVertex4s
    ( STACK_GET_DATA(x)
    , STACK_GET_DATA(y)
    , STACK_GET_DATA(z)
    , STACK_GET_DATA(w)
    );
}

EXDL_API(egl_vertex4sv)
{
  /* void glVertex4sv(const GLshort* v) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLshort, v[4])
  STACK_FMT_END()

    glVertex4sv
    ( STACK_GET_ADDR(v)
    );
}

EXDL_API(egl_vertexPointer)
{
  /* void glVertexPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(GLint,   size)
    STACK_FMT_DATA(GLenum,  type)
    STACK_FMT_DATA(GLsizei, stride)
    STACK_FMT_DATA(GLvoid,  pointer[])
  STACK_FMT_END()

    glVertexPointer
    ( STACK_GET_DATA(size)
    , STACK_GET_DATA(type)
    , STACK_GET_DATA(stride)
    , STACK_GET_ADDR(pointer)
    );
  
  exdl_free_binaries(sd);
}

EXDL_API(egl_viewport)
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

#endif // COMPILE_GL
