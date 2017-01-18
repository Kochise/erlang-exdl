%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_gl.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_gl).

-include("exdl.hrl").

-ifdef(COMPILE_GL).

%% 1- EXPORT

%-compile(export_all).

-export( [ accum/2
         , alphaFunc/2
         , areTexturesResident/3
         , arrayElement/1
         , begin/1
         , bindTexture/2
         , bitmap/7
         , blendFunc/2
         , callList/1
         , callLists/3
         , clear/1
         , clearAccum/4
         , clearColor/4
         , clearDepth/1
         , clearIndex/1
         , clearStencil/1
         , clipPlane/2
         , color3b/3
         , color3bv/1
         , color3d/3
         , color3dv/1
         , color3f/3
         , color3fv/1
         , color3i/3
         , color3iv/1
         , color3s/3
         , color3sv/1
         , color3ub/3
         , color3ubv/1
         , color3ui/3
         , color3uiv/1
         , color3us/3
         , color3usv/1
         , color4b/4
         , color4bv/1
         , color4d/4
         , color4dv/1
         , color4f/4
         , color4fv/1
         , color4i/4
         , color4iv/1
         , color4s/4
         , color4sv/1
         , color4ub/4
         , color4ubv/1
         , color4ui/4
         , color4uiv/1
         , color4us/4
         , color4usv/1
         , colorMask/4
         , colorMaterial/2
         , colorPointer/4
         , copyPixels/5
         , copyTexImage1D/7
         , copyTexImage2D/8
         , copyTexSubImage1D/6
         , copyTexSubImage2D/8
         , cullFace/1
         , deleteLists/2
         , deleteTextures/2
         , depthFunc/1
         , depthMask/1
         , depthRange/2
         , disable/1
         , disableClientState/1
         , drawArrays/3
         , drawBuffer/1
         , drawElements/4
         , drawPixels/5
         , edgeFlag/1
         , edgeFlagPointer/2
         , edgeFlagv/1
         , enable/1
         , enableClientState/1
         , end/0
         , endList/0
         , evalCoord1d/1
         , evalCoord1dv/1
         , evalCoord1f/1
         , evalCoord1fv/1
         , evalCoord2d/2
         , evalCoord2dv/1
         , evalCoord2f/2
         , evalCoord2fv/1
         , evalMesh1/3
         , evalMesh2/5
         , evalPoint1/1
         , evalPoint2/2
         , feedbackBuffer/3
         , finish/0
         , flush/0
         , fogf/2
         , fogfv/2
         , fogi/2
         , fogiv/2
         , frontFace/1
         , frustum/6
         , genLists/1
         , genTextures/1
         , getBooleanv/1
         , getClipPlane/1
         , getDoublev/1
         , getError/0
         , getFloatv/1
         , getIntegerv/1
         , getLightfv/2
         , getLightiv/2
         , getMapdv/2
         , getMapfv/2
         , getMapiv/2
         , getMaterialfv/2
         , getMaterialiv/2
         , getPixelMapfv/1
         , getPixelMapuiv/1
         , getPixelMapusv/1
         , getPointerv/1
         , getPolygonStipple/0
         , getString/1
         , getTexEnvfv/2
         , getTexEnviv/2
         , getTexGendv/2
         , getTexGenfv/2
         , getTexGeniv/2
         , getTexImage/4
         , getTexLevelParameterfv/3
         , getTexLevelParameteriv/3
         , getTexParameterfv/2
         , getTexParameteriv/2
         , hint/2
         , indexMask/1
         , indexPointer/3
         , indexd/1
         , indexdv/1
         , indexf/1
         , indexfv/1
         , indexi/1
         , indexiv/1
         , indexs/1
         , indexsv/1
         , indexub/1
         , indexubv/1
         , initNames/0
         , interleavedArrays/3
         , isEnabled/1
         , isList/1
         , isTexture/1
         , lightModelf/2
         , lightModelfv/2
         , lightModeli/2
         , lightModeliv/2
         , lightf/3
         , lightfv/3
         , lighti/3
         , lightiv/3
         , lineStipple/2
         , lineWidth/1
         , listBase/1
         , loadIdentity/0
         , loadMatrixd/1
         , loadMatrixf/1
         , loadName/1
         , logicOp/1
         , map1d/6
         , map1f/6
         , map2d/10
         , map2f/10
         , mapGrid1d/3
         , mapGrid1f/3
         , mapGrid2d/6
         , mapGrid2f/6
         , materialf/3
         , materialfv/3
         , materiali/3
         , materialiv/3
         , matrixMode/1
         , multMatrixd/1
         , multMatrixf/1
         , newList/2
         , normal3b/3
         , normal3bv/1
         , normal3d/3
         , normal3dv/1
         , normal3f/3
         , normal3fv/1
         , normal3i/3
         , normal3iv/1
         , normal3s/3
         , normal3sv/1
         , normalPointer/3
         , ortho/6
         , passThrough/1
         , pixelMapfv/3
         , pixelMapuiv/3
         , pixelMapusv/3
         , pixelStoref/2
         , pixelStorei/2
         , pixelTransferf/2
         , pixelTransferi/2
         , pixelZoom/2
         , pointSize/1
         , polygonMode/2
         , polygonOffset/2
         , polygonStipple/1
         , popAttrib/0
         , popClientAttrib/0
         , popMatrix/0
         , popName/0
         , prioritizeTextures/3
         , pushAttrib/1
         , pushClientAttrib/1
         , pushMatrix/0
         , pushName/1
         , rasterPos2d/2
         , rasterPos2dv/1
         , rasterPos2f/2
         , rasterPos2fv/1
         , rasterPos2i/2
         , rasterPos2iv/1
         , rasterPos2s/2
         , rasterPos2sv/1
         , rasterPos3d/3
         , rasterPos3dv/1
         , rasterPos3f/3
         , rasterPos3fv/1
         , rasterPos3i/3
         , rasterPos3iv/1
         , rasterPos3s/3
         , rasterPos3sv/1
         , rasterPos4d/4
         , rasterPos4dv/1
         , rasterPos4f/4
         , rasterPos4fv/1
         , rasterPos4i/4
         , rasterPos4iv/1
         , rasterPos4s/4
         , rasterPos4sv/1
         , readBuffer/1
         , readPixels/7
         , rectd/4
         , rectdv/2
         , rectf/4
         , rectfv/2
         , recti/4
         , rectiv/2
         , rects/4
         , rectsv/2
         , renderMode/1
         , rotated/4
         , rotatef/4
         , scaled/3
         , scalef/3
         , scissor/4
         , selectBuffer/2
         , shadeModel/1
         , stencilFunc/3
         , stencilMask/1
         , stencilOp/3
         , texCoord1d/1
         , texCoord1dv/1
         , texCoord1f/1
         , texCoord1fv/1
         , texCoord1i/1
         , texCoord1iv/1
         , texCoord1s/1
         , texCoord1sv/1
         , texCoord2d/2
         , texCoord2dv/1
         , texCoord2f/2
         , texCoord2fv/1
         , texCoord2i/2
         , texCoord2iv/1
         , texCoord2s/2
         , texCoord2sv/1
         , texCoord3d/3
         , texCoord3dv/1
         , texCoord3f/3
         , texCoord3fv/1
         , texCoord3i/3
         , texCoord3iv/1
         , texCoord3s/3
         , texCoord3sv/1
         , texCoord4d/4
         , texCoord4dv/1
         , texCoord4f/4
         , texCoord4fv/1
         , texCoord4i/4
         , texCoord4iv/1
         , texCoord4s/4
         , texCoord4sv/1
         , texCoordPointer/4
         , texEnvf/3
         , texEnvfv/3
         , texEnvi/3
         , texEnviv/3
         , texGend/3
         , texGendv/3
         , texGenf/3
         , texGenfv/3
         , texGeni/3
         , texGeniv/3
         , texImage1D/8
         , texImage2D/9
         , texParameterf/3
         , texParameterfv/3
         , texParameteri/3
         , texParameteriv/3
         , texSubImage1D/7
         , texSubImage2D/9
         , translated/3
         , translatef/3
         , vertex2d/2
         , vertex2dv/1
         , vertex2f/2
         , vertex2fv/1
         , vertex2i/2
         , vertex2iv/1
         , vertex2s/2
         , vertex2sv/1
         , vertex3d/3
         , vertex3dv/1
         , vertex3f/3
         , vertex3fv/1
         , vertex3i/3
         , vertex3iv/1
         , vertex3s/3
         , vertex3sv/1
         , vertex4d/4
         , vertex4dv/1
         , vertex4f/4
         , vertex4fv/1
         , vertex4i/4
         , vertex4iv/1
         , vertex4s/4
         , vertex4sv/1
         , vertexPointer/4
         , viewport/4
         ]
       ).

%% 2- INCLUDE

-include("exdl_gl.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       accum
%% Args:       Op, Value
%% Returns:    ok
%% C-API func: void glAccum(GLenum op, GLfloat value)

accum(Op, Value)
 -> cast
    ( ?glAccum
    , <<Op:?GLenum
      , Value:?GLfloat
      >>
    )
.

%% Func:       alphaFunc
%% Args:       Func, Ref
%% Returns:    ok
%% C-API func: void glAlphaFunc(GLenum func, GLclampf ref)

alphaFunc(Func, Ref)
 -> cast
    ( ?glAlphaFunc
    , <<Func:?GLenum
      , Ref:?GLclampf
      >>
    )
.

%% Func:       areTexturesResident
%% Args:       N, Textures, Residences
%% Returns:    Exdl
%% C-API func: GLboolean glAreTexturesResident(GLsizei n, const GLuint* textures, GLboolean* residences)

areTexturesResident(N, Textures, Residences)
 -> case
      call
      ( ?glAreTexturesResident
      , <<N:?GLsizei
        , Textures:?_PTR
        , Residences:?_PTR
        >>
      )
    of
      <<Exdl:?GLboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       arrayElement
%% Args:       I
%% Returns:    ok
%% C-API func: void glArrayElement(GLint i)

arrayElement(I)
 -> cast
    ( ?glArrayElement
    , <<I:?GLint
      >>
    )
.

%% Func:       begin
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glBegin(GLenum mode)

begin(Mode)
 -> cast
    ( ?glBegin
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       bindTexture
%% Args:       Target, Texture
%% Returns:    ok
%% C-API func: void glBindTexture(GLenum target, GLuint texture)

bindTexture(Target, Texture)
 -> cast
    ( ?glBindTexture
    , <<Target:?GLenum
      , Texture:?GLuint
      >>
    )
.

%% Func:       bitmap
%% Args:       Width, Height, Xorig, Yorig, Xmove, Ymove, Bitmap
%% Returns:    ok
%% C-API func: void glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte* bitmap)

bitmap(Width, Height, Xorig, Yorig, Xmove, Ymove, Bitmap)
 -> cast
    ( ?glBitmap
    , <<Width:?GLsizei
      , Height:?GLsizei
      , Xorig:?GLfloat
      , Yorig:?GLfloat
      , Xmove:?GLfloat
      , Ymove:?GLfloat
      , Bitmap:?_PTR
      >>
    )
.

%% Func:       blendFunc
%% Args:       Sfactor, Dfactor
%% Returns:    ok
%% C-API func: void glBlendFunc(GLenum sfactor, GLenum dfactor)

blendFunc(Sfactor, Dfactor)
 -> cast
    ( ?glBlendFunc
    , <<Sfactor:?GLenum
      , Dfactor:?GLenum
      >>
    )
.

%% Func:       callList
%% Args:       List
%% Returns:    ok
%% C-API func: void glCallList(GLuint list)

callList(List)
 -> cast
    ( ?glCallList
    , <<List:?GLuint
      >>
    )
.

%% Func:       callLists
%% Args:       N, Type, Lists
%% Returns:    ok
%% C-API func: void glCallLists(GLsizei n, GLenum type, const GLvoid* lists)

callLists(N, Type, Lists)
 -> cast
    ( ?glCallLists
    , <<N:?GLsizei
      , Type:?GLenum
      , Lists:?_PTR
      >>
    )
.

%% Func:       clear
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glClear(GLbitfield mask)

clear(Mask)
 -> cast
    ( ?glClear
    , <<Mask:?GLbitfield
      >>
    )
.

%% Func:       clearAccum
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)

clearAccum(Red, Green, Blue, Alpha)
 -> cast
    ( ?glClearAccum
    , <<Red:?GLfloat
      , Green:?GLfloat
      , Blue:?GLfloat
      , Alpha:?GLfloat
      >>
    )
.

%% Func:       clearColor
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)

clearColor(Red, Green, Blue, Alpha)
 -> cast
    ( ?glClearColor
    , <<Red:?GLclampf
      , Green:?GLclampf
      , Blue:?GLclampf
      , Alpha:?GLclampf
      >>
    )
.

%% Func:       clearDepth
%% Args:       Depth
%% Returns:    ok
%% C-API func: void glClearDepth(GLclampd depth)

clearDepth(Depth)
 -> cast
    ( ?glClearDepth
    , <<Depth:?GLclampd
      >>
    )
.

%% Func:       clearIndex
%% Args:       C
%% Returns:    ok
%% C-API func: void glClearIndex(GLfloat c)

clearIndex(C)
 -> cast
    ( ?glClearIndex
    , <<C:?GLfloat
      >>
    )
.

%% Func:       clearStencil
%% Args:       S
%% Returns:    ok
%% C-API func: void glClearStencil(GLint s)

clearStencil(S)
 -> cast
    ( ?glClearStencil
    , <<S:?GLint
      >>
    )
.

%% Func:       clipPlane
%% Args:       Plane, Equation
%% Returns:    ok
%% C-API func: void glClipPlane(GLenum plane, const GLdouble* equation)

clipPlane(Plane, Equation)
 -> cast
    ( ?glClipPlane
    , <<Plane:?GLenum
      , Equation:?_PTR
      >>
    )
.

%% Func:       color3b
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3b(GLbyte red, GLbyte green, GLbyte blue)

color3b(Red, Green, Blue)
 -> cast
    ( ?glColor3b
    , <<Red:?GLbyte
      , Green:?GLbyte
      , Blue:?GLbyte
      >>
    )
.

%% Func:       color3bv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor3bv(const GLbyte* v)

color3bv(V)
 -> cast
    ( ?glColor3bv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color3d
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3d(GLdouble red, GLdouble green, GLdouble blue)

color3d(Red, Green, Blue)
 -> cast
    ( ?glColor3d
    , <<Red:?GLdouble
      , Green:?GLdouble
      , Blue:?GLdouble
      >>
    )
.

%% Func:       color3dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor3dv(const GLdouble* v)

color3dv(V)
 -> cast
    ( ?glColor3dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color3f
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3f(GLfloat red, GLfloat green, GLfloat blue)

color3f(Red, Green, Blue)
 -> cast
    ( ?glColor3f
    , <<Red:?GLfloat
      , Green:?GLfloat
      , Blue:?GLfloat
      >>
    )
.

%% Func:       color3fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor3fv(const GLfloat* v)

color3fv(V)
 -> cast
    ( ?glColor3fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color3i
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3i(GLint red, GLint green, GLint blue)

color3i(Red, Green, Blue)
 -> cast
    ( ?glColor3i
    , <<Red:?GLint
      , Green:?GLint
      , Blue:?GLint
      >>
    )
.

%% Func:       color3iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor3iv(const GLint* v)

color3iv(V)
 -> cast
    ( ?glColor3iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color3s
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3s(GLshort red, GLshort green, GLshort blue)

color3s(Red, Green, Blue)
 -> cast
    ( ?glColor3s
    , <<Red:?GLshort
      , Green:?GLshort
      , Blue:?GLshort
      >>
    )
.

%% Func:       color3sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor3sv(const GLshort* v)

color3sv(V)
 -> cast
    ( ?glColor3sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color3ub
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3ub(GLubyte red, GLubyte green, GLubyte blue)

color3ub(Red, Green, Blue)
 -> cast
    ( ?glColor3ub
    , <<Red:?GLubyte
      , Green:?GLubyte
      , Blue:?GLubyte
      >>
    )
.

%% Func:       color3ubv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor3ubv(const GLubyte* v)

color3ubv(V)
 -> cast
    ( ?glColor3ubv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color3ui
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3ui(GLuint red, GLuint green, GLuint blue)

color3ui(Red, Green, Blue)
 -> cast
    ( ?glColor3ui
    , <<Red:?GLuint
      , Green:?GLuint
      , Blue:?GLuint
      >>
    )
.

%% Func:       color3uiv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor3uiv(const GLuint* v)

color3uiv(V)
 -> cast
    ( ?glColor3uiv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color3us
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3us(GLushort red, GLushort green, GLushort blue)

color3us(Red, Green, Blue)
 -> cast
    ( ?glColor3us
    , <<Red:?GLushort
      , Green:?GLushort
      , Blue:?GLushort
      >>
    )
.

%% Func:       color3usv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor3usv(const GLushort* v)

color3usv(V)
 -> cast
    ( ?glColor3usv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color4b
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha)

color4b(Red, Green, Blue, Alpha)
 -> cast
    ( ?glColor4b
    , <<Red:?GLbyte
      , Green:?GLbyte
      , Blue:?GLbyte
      , Alpha:?GLbyte
      >>
    )
.

%% Func:       color4bv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor4bv(const GLbyte* v)

color4bv(V)
 -> cast
    ( ?glColor4bv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color4d
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha)

color4d(Red, Green, Blue, Alpha)
 -> cast
    ( ?glColor4d
    , <<Red:?GLdouble
      , Green:?GLdouble
      , Blue:?GLdouble
      , Alpha:?GLdouble
      >>
    )
.

%% Func:       color4dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor4dv(const GLdouble* v)

color4dv(V)
 -> cast
    ( ?glColor4dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color4f
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)

color4f(Red, Green, Blue, Alpha)
 -> cast
    ( ?glColor4f
    , <<Red:?GLfloat
      , Green:?GLfloat
      , Blue:?GLfloat
      , Alpha:?GLfloat
      >>
    )
.

%% Func:       color4fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor4fv(const GLfloat* v)

color4fv(V)
 -> cast
    ( ?glColor4fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color4i
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4i(GLint red, GLint green, GLint blue, GLint alpha)

color4i(Red, Green, Blue, Alpha)
 -> cast
    ( ?glColor4i
    , <<Red:?GLint
      , Green:?GLint
      , Blue:?GLint
      , Alpha:?GLint
      >>
    )
.

%% Func:       color4iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor4iv(const GLint* v)

color4iv(V)
 -> cast
    ( ?glColor4iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color4s
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha)

color4s(Red, Green, Blue, Alpha)
 -> cast
    ( ?glColor4s
    , <<Red:?GLshort
      , Green:?GLshort
      , Blue:?GLshort
      , Alpha:?GLshort
      >>
    )
.

%% Func:       color4sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor4sv(const GLshort* v)

color4sv(V)
 -> cast
    ( ?glColor4sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color4ub
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha)

color4ub(Red, Green, Blue, Alpha)
 -> cast
    ( ?glColor4ub
    , <<Red:?GLubyte
      , Green:?GLubyte
      , Blue:?GLubyte
      , Alpha:?GLubyte
      >>
    )
.

%% Func:       color4ubv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor4ubv(const GLubyte* v)

color4ubv(V)
 -> cast
    ( ?glColor4ubv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color4ui
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha)

color4ui(Red, Green, Blue, Alpha)
 -> cast
    ( ?glColor4ui
    , <<Red:?GLuint
      , Green:?GLuint
      , Blue:?GLuint
      , Alpha:?GLuint
      >>
    )
.

%% Func:       color4uiv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor4uiv(const GLuint* v)

color4uiv(V)
 -> cast
    ( ?glColor4uiv
    , <<V:?_PTR
      >>
    )
.

%% Func:       color4us
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha)

color4us(Red, Green, Blue, Alpha)
 -> cast
    ( ?glColor4us
    , <<Red:?GLushort
      , Green:?GLushort
      , Blue:?GLushort
      , Alpha:?GLushort
      >>
    )
.

%% Func:       color4usv
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor4usv(const GLushort* v)

color4usv(V)
 -> cast
    ( ?glColor4usv
    , <<V:?_PTR
      >>
    )
.

%% Func:       colorMask
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)

colorMask(Red, Green, Blue, Alpha)
 -> cast
    ( ?glColorMask
    , <<Red:?GLboolean
      , Green:?GLboolean
      , Blue:?GLboolean
      , Alpha:?GLboolean
      >>
    )
.

%% Func:       colorMaterial
%% Args:       Face, Mode
%% Returns:    ok
%% C-API func: void glColorMaterial(GLenum face, GLenum mode)

colorMaterial(Face, Mode)
 -> cast
    ( ?glColorMaterial
    , <<Face:?GLenum
      , Mode:?GLenum
      >>
    )
.

%% Func:       colorPointer
%% Args:       Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glColorPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

colorPointer(Size, Type, Stride, Pointer)
 -> cast
    ( ?glColorPointer
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       copyPixels
%% Args:       X, Y, Width, Height, Type
%% Returns:    ok
%% C-API func: void glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type)

copyPixels(X, Y, Width, Height, Type)
 -> cast
    ( ?glCopyPixels
    , <<X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Type:?GLenum
      >>
    )
.

%% Func:       copyTexImage1D
%% Args:       Target, Level, InternalFormat, X, Y, Width, Border
%% Returns:    ok
%% C-API func: void glCopyTexImage1D(GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLint border)

copyTexImage1D(Target, Level, InternalFormat, X, Y, Width, Border)
 -> cast
    ( ?glCopyTexImage1D
    , <<Target:?GLenum
      , Level:?GLint
      , InternalFormat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Border:?GLint
      >>
    )
.

%% Func:       copyTexImage2D
%% Args:       Target, Level, InternalFormat, X, Y, Width, Height, Border
%% Returns:    ok
%% C-API func: void glCopyTexImage2D(GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

copyTexImage2D(Target, Level, InternalFormat, X, Y, Width, Height, Border)
 -> cast
    ( ?glCopyTexImage2D
    , <<Target:?GLenum
      , Level:?GLint
      , InternalFormat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      >>
    )
.

%% Func:       copyTexSubImage1D
%% Args:       Target, Level, Xoffset, X, Y, Width
%% Returns:    ok
%% C-API func: void glCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

copyTexSubImage1D(Target, Level, Xoffset, X, Y, Width)
 -> cast
    ( ?glCopyTexSubImage1D
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      >>
    )
.

%% Func:       copyTexSubImage2D
%% Args:       Target, Level, Xoffset, Yoffset, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

copyTexSubImage2D(Target, Level, Xoffset, Yoffset, X, Y, Width, Height)
 -> cast
    ( ?glCopyTexSubImage2D
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       cullFace
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glCullFace(GLenum mode)

cullFace(Mode)
 -> cast
    ( ?glCullFace
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       deleteLists
%% Args:       List, Range
%% Returns:    ok
%% C-API func: void glDeleteLists(GLuint list, GLsizei range)

deleteLists(List, Range)
 -> cast
    ( ?glDeleteLists
    , <<List:?GLuint
      , Range:?GLsizei
      >>
    )
.

%% Func:       deleteTextures
%% Args:       N, Textures
%% Returns:    ok
%% C-API func: void glDeleteTextures(GLsizei n, const GLuint* textures)

deleteTextures(N, Textures)
 -> cast
    ( ?glDeleteTextures
    , <<N:?GLsizei
      , Textures:?_PTR
      >>
    )
.

%% Func:       depthFunc
%% Args:       Func
%% Returns:    ok
%% C-API func: void glDepthFunc(GLenum func)

depthFunc(Func)
 -> cast
    ( ?glDepthFunc
    , <<Func:?GLenum
      >>
    )
.

%% Func:       depthMask
%% Args:       Flag
%% Returns:    ok
%% C-API func: void glDepthMask(GLboolean flag)

depthMask(Flag)
 -> cast
    ( ?glDepthMask
    , <<Flag:?GLboolean
      >>
    )
.

%% Func:       depthRange
%% Args:       ZNear, ZFar
%% Returns:    ok
%% C-API func: void glDepthRange(GLclampd zNear, GLclampd zFar)

depthRange(ZNear, ZFar)
 -> cast
    ( ?glDepthRange
    , <<ZNear:?GLclampd
      , ZFar:?GLclampd
      >>
    )
.

%% Func:       disable
%% Args:       Cap
%% Returns:    ok
%% C-API func: void glDisable(GLenum cap)

disable(Cap)
 -> cast
    ( ?glDisable
    , <<Cap:?GLenum
      >>
    )
.

%% Func:       disableClientState
%% Args:       Array
%% Returns:    ok
%% C-API func: void glDisableClientState(GLenum array)

disableClientState(Array)
 -> cast
    ( ?glDisableClientState
    , <<Array:?GLenum
      >>
    )
.

%% Func:       drawArrays
%% Args:       Mode, First, Count
%% Returns:    ok
%% C-API func: void glDrawArrays(GLenum mode, GLint first, GLsizei count)

drawArrays(Mode, First, Count)
 -> cast
    ( ?glDrawArrays
    , <<Mode:?GLenum
      , First:?GLint
      , Count:?GLsizei
      >>
    )
.

%% Func:       drawBuffer
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glDrawBuffer(GLenum mode)

drawBuffer(Mode)
 -> cast
    ( ?glDrawBuffer
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       drawElements
%% Args:       Mode, Count, Type, Indices
%% Returns:    ok
%% C-API func: void glDrawElements(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices)

drawElements(Mode, Count, Type, Indices)
 -> cast
    ( ?glDrawElements
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      >>
    )
.

%% Func:       drawPixels
%% Args:       Width, Height, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels)

drawPixels(Width, Height, Format, Type, Pixels)
 -> cast
    ( ?glDrawPixels
    , <<Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       edgeFlag
%% Args:       Flag
%% Returns:    ok
%% C-API func: void glEdgeFlag(GLboolean flag)

edgeFlag(Flag)
 -> cast
    ( ?glEdgeFlag
    , <<Flag:?GLboolean
      >>
    )
.

%% Func:       edgeFlagPointer
%% Args:       Stride, Pointer
%% Returns:    ok
%% C-API func: void glEdgeFlagPointer(GLsizei stride, const GLvoid* pointer)

edgeFlagPointer(Stride, Pointer)
 -> cast
    ( ?glEdgeFlagPointer
    , <<Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       edgeFlagv
%% Args:       Flag
%% Returns:    ok
%% C-API func: void glEdgeFlagv(const GLboolean* flag)

edgeFlagv(Flag)
 -> cast
    ( ?glEdgeFlagv
    , <<Flag:?_PTR
      >>
    )
.

%% Func:       enable
%% Args:       Cap
%% Returns:    ok
%% C-API func: void glEnable(GLenum cap)

enable(Cap)
 -> cast
    ( ?glEnable
    , <<Cap:?GLenum
      >>
    )
.

%% Func:       enableClientState
%% Args:       Array
%% Returns:    ok
%% C-API func: void glEnableClientState(GLenum array)

enableClientState(Array)
 -> cast
    ( ?glEnableClientState
    , <<Array:?GLenum
      >>
    )
.

%% Func:       end
%% Args:       none
%% Returns:    ok
%% C-API func: void glEnd(void)

end()
 -> cast
    ( ?glEnd
    , [
      ]
    )
.

%% Func:       endList
%% Args:       none
%% Returns:    ok
%% C-API func: void glEndList(void)

endList()
 -> cast
    ( ?glEndList
    , [
      ]
    )
.

%% Func:       evalCoord1d
%% Args:       U
%% Returns:    ok
%% C-API func: void glEvalCoord1d(GLdouble u)

evalCoord1d(U)
 -> cast
    ( ?glEvalCoord1d
    , <<U:?GLdouble
      >>
    )
.

%% Func:       evalCoord1dv
%% Args:       U
%% Returns:    ok
%% C-API func: void glEvalCoord1dv(const GLdouble* u)

evalCoord1dv(U)
 -> cast
    ( ?glEvalCoord1dv
    , <<U:?_PTR
      >>
    )
.

%% Func:       evalCoord1f
%% Args:       U
%% Returns:    ok
%% C-API func: void glEvalCoord1f(GLfloat u)

evalCoord1f(U)
 -> cast
    ( ?glEvalCoord1f
    , <<U:?GLfloat
      >>
    )
.

%% Func:       evalCoord1fv
%% Args:       U
%% Returns:    ok
%% C-API func: void glEvalCoord1fv(const GLfloat* u)

evalCoord1fv(U)
 -> cast
    ( ?glEvalCoord1fv
    , <<U:?_PTR
      >>
    )
.

%% Func:       evalCoord2d
%% Args:       U, V
%% Returns:    ok
%% C-API func: void glEvalCoord2d(GLdouble u, GLdouble v)

evalCoord2d(U, V)
 -> cast
    ( ?glEvalCoord2d
    , <<U:?GLdouble
      , V:?GLdouble
      >>
    )
.

%% Func:       evalCoord2dv
%% Args:       U
%% Returns:    ok
%% C-API func: void glEvalCoord2dv(const GLdouble* u)

evalCoord2dv(U)
 -> cast
    ( ?glEvalCoord2dv
    , <<U:?_PTR
      >>
    )
.

%% Func:       evalCoord2f
%% Args:       U, V
%% Returns:    ok
%% C-API func: void glEvalCoord2f(GLfloat u, GLfloat v)

evalCoord2f(U, V)
 -> cast
    ( ?glEvalCoord2f
    , <<U:?GLfloat
      , V:?GLfloat
      >>
    )
.

%% Func:       evalCoord2fv
%% Args:       U
%% Returns:    ok
%% C-API func: void glEvalCoord2fv(const GLfloat* u)

evalCoord2fv(U)
 -> cast
    ( ?glEvalCoord2fv
    , <<U:?_PTR
      >>
    )
.

%% Func:       evalMesh1
%% Args:       Mode, I1, I2
%% Returns:    ok
%% C-API func: void glEvalMesh1(GLenum mode, GLint i1, GLint i2)

evalMesh1(Mode, I1, I2)
 -> cast
    ( ?glEvalMesh1
    , <<Mode:?GLenum
      , I1:?GLint
      , I2:?GLint
      >>
    )
.

%% Func:       evalMesh2
%% Args:       Mode, I1, I2, J1, J2
%% Returns:    ok
%% C-API func: void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2)

evalMesh2(Mode, I1, I2, J1, J2)
 -> cast
    ( ?glEvalMesh2
    , <<Mode:?GLenum
      , I1:?GLint
      , I2:?GLint
      , J1:?GLint
      , J2:?GLint
      >>
    )
.

%% Func:       evalPoint1
%% Args:       I
%% Returns:    ok
%% C-API func: void glEvalPoint1(GLint i)

evalPoint1(I)
 -> cast
    ( ?glEvalPoint1
    , <<I:?GLint
      >>
    )
.

%% Func:       evalPoint2
%% Args:       I, J
%% Returns:    ok
%% C-API func: void glEvalPoint2(GLint i, GLint j)

evalPoint2(I, J)
 -> cast
    ( ?glEvalPoint2
    , <<I:?GLint
      , J:?GLint
      >>
    )
.

%% Func:       feedbackBuffer
%% Args:       Size, Type, Buffer
%% Returns:    ok
%% C-API func: void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat* buffer)

feedbackBuffer(Size, Type, Buffer)
 -> cast
    ( ?glFeedbackBuffer
    , <<Size:?GLsizei
      , Type:?GLenum
      , Buffer:?_PTR
      >>
    )
.

%% Func:       finish
%% Args:       none
%% Returns:    ok
%% C-API func: void glFinish(void)

finish()
 -> cast
    ( ?glFinish
    , [
      ]
    )
.

%% Func:       flush
%% Args:       none
%% Returns:    ok
%% C-API func: void glFlush(void)

flush()
 -> cast
    ( ?glFlush
    , [
      ]
    )
.

%% Func:       fogf
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glFogf(GLenum pname, GLfloat param)

fogf(Pname, Param)
 -> cast
    ( ?glFogf
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       fogfv
%% Args:       Pname, Params
%% Returns:    ok
%% C-API func: void glFogfv(GLenum pname, const GLfloat* params)

fogfv(Pname, Params)
 -> cast
    ( ?glFogfv
    , <<Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       fogi
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glFogi(GLenum pname, GLint param)

fogi(Pname, Param)
 -> cast
    ( ?glFogi
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       fogiv
%% Args:       Pname, Params
%% Returns:    ok
%% C-API func: void glFogiv(GLenum pname, const GLint* params)

fogiv(Pname, Params)
 -> cast
    ( ?glFogiv
    , <<Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       frontFace
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glFrontFace(GLenum mode)

frontFace(Mode)
 -> cast
    ( ?glFrontFace
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       frustum
%% Args:       Left, Right, Bottom, Top, ZNear, ZFar
%% Returns:    ok
%% C-API func: void glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)

frustum(Left, Right, Bottom, Top, ZNear, ZFar)
 -> cast
    ( ?glFrustum
    , <<Left:?GLdouble
      , Right:?GLdouble
      , Bottom:?GLdouble
      , Top:?GLdouble
      , ZNear:?GLdouble
      , ZFar:?GLdouble
      >>
    )
.

%% Func:       genLists
%% Args:       Range
%% Returns:    Exdl
%% C-API func: GLuint glGenLists(GLsizei range)

genLists(Range)
 -> case
      call
      ( ?glGenLists
      , <<Range:?GLsizei
        >>
      )
    of
      <<Exdl:?GLuint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       genTextures
%% Args:       N
%% Returns:    { Textures }
%% C-API func: void glGenTextures(GLsizei n, GLuint* textures)

genTextures(N)
 -> case
      call
      ( ?glGenTextures
      , <<N:?GLsizei
        >>
      )
    of
      <<Textures:?GLuint
      >>
        -> { Textures }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getBooleanv
%% Args:       Pname
%% Returns:    [ Params ]
%% C-API func: void glGetBooleanv(GLenum pname, GLboolean* params)

getBooleanv(Pname)
 -> case
      call
      ( ?glGetBooleanv
      , <<Pname:?GLenum
        >>
      )
    of
      <<Params:?GLboolean
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getClipPlane
%% Args:       Plane
%% Returns:    { Equation }
%% C-API func: void glGetClipPlane(GLenum plane, GLdouble* equation)

getClipPlane(Plane)
 -> case
      call
      ( ?glGetClipPlane
      , <<Plane:?GLenum
        >>
      )
    of
      <<Equation:?GLdouble
      >>
        -> { Equation }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getDoublev
%% Args:       Pname
%% Returns:    [ Params ]
%% C-API func: void glGetDoublev(GLenum pname, GLdouble* params)

getDoublev(Pname)
 -> case
      call
      ( ?glGetDoublev
      , <<Pname:?GLenum
        >>
      )
    of
      <<Params:?GLdouble
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getError
%% Args:       none
%% Returns:    Exdl
%% C-API func: GLenum glGetError(void)

getError()
 -> case
      call
      ( ?glGetError
      , [
        ]
      )
    of
      <<Exdl:?GLenum
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getFloatv
%% Args:       Pname
%% Returns:    [ Params ]
%% C-API func: void glGetFloatv(GLenum pname, GLfloat* params)

getFloatv(Pname)
 -> case
      call
      ( ?glGetFloatv
      , <<Pname:?GLenum
        >>
      )
    of
      <<Params:?GLfloat
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getIntegerv
%% Args:       Pname
%% Returns:    [ Params ]
%% C-API func: void glGetIntegerv(GLenum pname, GLint* params)

getIntegerv(Pname)
 -> case
      call
      ( ?glGetIntegerv
      , <<Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getLightfv
%% Args:       Light, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetLightfv(GLenum light, GLenum pname, GLfloat* params)

getLightfv(Light, Pname)
 -> case
      call
      ( ?glGetLightfv
      , <<Light:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLfloat
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getLightiv
%% Args:       Light, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetLightiv(GLenum light, GLenum pname, GLint* params)

getLightiv(Light, Pname)
 -> case
      call
      ( ?glGetLightiv
      , <<Light:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getMapdv
%% Args:       Target, Query
%% Returns:    [ V ]
%% C-API func: void glGetMapdv(GLenum target, GLenum query, GLdouble* v)

getMapdv(Target, Query)
 -> case
      call
      ( ?glGetMapdv
      , <<Target:?GLenum
        , Query:?GLenum
        >>
      )
    of
      <<V:?GLdouble
      >>
        -> [ V ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getMapfv
%% Args:       Target, Query
%% Returns:    [ V ]
%% C-API func: void glGetMapfv(GLenum target, GLenum query, GLfloat* v)

getMapfv(Target, Query)
 -> case
      call
      ( ?glGetMapfv
      , <<Target:?GLenum
        , Query:?GLenum
        >>
      )
    of
      <<V:?GLfloat
      >>
        -> [ V ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getMapiv
%% Args:       Target, Query
%% Returns:    [ V ]
%% C-API func: void glGetMapiv(GLenum target, GLenum query, GLint* v)

getMapiv(Target, Query)
 -> case
      call
      ( ?glGetMapiv
      , <<Target:?GLenum
        , Query:?GLenum
        >>
      )
    of
      <<V:?GLint
      >>
        -> [ V ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getMaterialfv
%% Args:       Face, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetMaterialfv(GLenum face, GLenum pname, GLfloat* params)

getMaterialfv(Face, Pname)
 -> case
      call
      ( ?glGetMaterialfv
      , <<Face:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLfloat
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getMaterialiv
%% Args:       Face, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetMaterialiv(GLenum face, GLenum pname, GLint* params)

getMaterialiv(Face, Pname)
 -> case
      call
      ( ?glGetMaterialiv
      , <<Face:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getPixelMapfv
%% Args:       Map
%% Returns:    [ Values ]
%% C-API func: void glGetPixelMapfv(GLenum map, GLfloat* values)

getPixelMapfv(Map)
 -> case
      call
      ( ?glGetPixelMapfv
      , <<Map:?GLenum
        >>
      )
    of
      <<Values:?GLfloat
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getPixelMapuiv
%% Args:       Map
%% Returns:    [ Values ]
%% C-API func: void glGetPixelMapuiv(GLenum map, GLuint* values)

getPixelMapuiv(Map)
 -> case
      call
      ( ?glGetPixelMapuiv
      , <<Map:?GLenum
        >>
      )
    of
      <<Values:?GLuint
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getPixelMapusv
%% Args:       Map
%% Returns:    [ Values ]
%% C-API func: void glGetPixelMapusv(GLenum map, GLushort* values)

getPixelMapusv(Map)
 -> case
      call
      ( ?glGetPixelMapusv
      , <<Map:?GLenum
        >>
      )
    of
      <<Values:?GLushort
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getPointerv
%% Args:       Pname
%% Returns:    [ Params ]
%% C-API func: void glGetPointerv(GLenum pname, GLvoid** params)

getPointerv(Pname)
 -> case
      call
      ( ?glGetPointerv
      , <<Pname:?GLenum
        >>
      )
    of
      <<Params:?GLvoid
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getPolygonStipple
%% Args:       none
%% Returns:    { Mask }
%% C-API func: void glGetPolygonStipple(GLubyte* mask)

getPolygonStipple()
 -> case
      call
      ( ?glGetPolygonStipple
      , [
        ]
      )
    of
      <<Mask:?_PTR
      >>
        -> { Mask }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getString
%% Args:       Name
%% Returns:    Exdl
%% C-API func: const GLubyte* glGetString(GLenum name)

getString(Name)
 -> case
      call
      ( ?glGetString
      , <<Name:?GLenum
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTexEnvfv
%% Args:       Target, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexEnvfv(GLenum target, GLenum pname, GLfloat* params)

getTexEnvfv(Target, Pname)
 -> case
      call
      ( ?glGetTexEnvfv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLfloat
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTexEnviv
%% Args:       Target, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexEnviv(GLenum target, GLenum pname, GLint* params)

getTexEnviv(Target, Pname)
 -> case
      call
      ( ?glGetTexEnviv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTexGendv
%% Args:       Coord, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexGendv(GLenum coord, GLenum pname, GLdouble* params)

getTexGendv(Coord, Pname)
 -> case
      call
      ( ?glGetTexGendv
      , <<Coord:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLdouble
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTexGenfv
%% Args:       Coord, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexGenfv(GLenum coord, GLenum pname, GLfloat* params)

getTexGenfv(Coord, Pname)
 -> case
      call
      ( ?glGetTexGenfv
      , <<Coord:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLfloat
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTexGeniv
%% Args:       Coord, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexGeniv(GLenum coord, GLenum pname, GLint* params)

getTexGeniv(Coord, Pname)
 -> case
      call
      ( ?glGetTexGeniv
      , <<Coord:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTexImage
%% Args:       Target, Level, Format, Type
%% Returns:    { Pixels }
%% C-API func: void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels)

getTexImage(Target, Level, Format, Type)
 -> case
      call
      ( ?glGetTexImage
      , <<Target:?GLenum
        , Level:?GLint
        , Format:?GLenum
        , Type:?GLenum
        >>
      )
    of
      <<Pixels:?GLvoid
      >>
        -> { Pixels }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTexLevelParameterfv
%% Args:       Target, Level, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat* params)

getTexLevelParameterfv(Target, Level, Pname)
 -> case
      call
      ( ?glGetTexLevelParameterfv
      , <<Target:?GLenum
        , Level:?GLint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLfloat
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTexLevelParameteriv
%% Args:       Target, Level, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint* params)

getTexLevelParameteriv(Target, Level, Pname)
 -> case
      call
      ( ?glGetTexLevelParameteriv
      , <<Target:?GLenum
        , Level:?GLint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTexParameterfv
%% Args:       Target, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat* params)

getTexParameterfv(Target, Pname)
 -> case
      call
      ( ?glGetTexParameterfv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLfloat
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getTexParameteriv
%% Args:       Target, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexParameteriv(GLenum target, GLenum pname, GLint* params)

getTexParameteriv(Target, Pname)
 -> case
      call
      ( ?glGetTexParameteriv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       hint
%% Args:       Target, Mode
%% Returns:    ok
%% C-API func: void glHint(GLenum target, GLenum mode)

hint(Target, Mode)
 -> cast
    ( ?glHint
    , <<Target:?GLenum
      , Mode:?GLenum
      >>
    )
.

%% Func:       indexMask
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glIndexMask(GLuint mask)

indexMask(Mask)
 -> cast
    ( ?glIndexMask
    , <<Mask:?GLuint
      >>
    )
.

%% Func:       indexPointer
%% Args:       Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glIndexPointer(GLenum type, GLsizei stride, const GLvoid* pointer)

indexPointer(Type, Stride, Pointer)
 -> cast
    ( ?glIndexPointer
    , <<Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       indexd
%% Args:       C
%% Returns:    ok
%% C-API func: void glIndexd(GLdouble c)

indexd(C)
 -> cast
    ( ?glIndexd
    , <<C:?GLdouble
      >>
    )
.

%% Func:       indexdv
%% Args:       C
%% Returns:    ok
%% C-API func: void glIndexdv(const GLdouble* c)

indexdv(C)
 -> cast
    ( ?glIndexdv
    , <<C:?_PTR
      >>
    )
.

%% Func:       indexf
%% Args:       C
%% Returns:    ok
%% C-API func: void glIndexf(GLfloat c)

indexf(C)
 -> cast
    ( ?glIndexf
    , <<C:?GLfloat
      >>
    )
.

%% Func:       indexfv
%% Args:       C
%% Returns:    ok
%% C-API func: void glIndexfv(const GLfloat* c)

indexfv(C)
 -> cast
    ( ?glIndexfv
    , <<C:?_PTR
      >>
    )
.

%% Func:       indexi
%% Args:       C
%% Returns:    ok
%% C-API func: void glIndexi(GLint c)

indexi(C)
 -> cast
    ( ?glIndexi
    , <<C:?GLint
      >>
    )
.

%% Func:       indexiv
%% Args:       C
%% Returns:    ok
%% C-API func: void glIndexiv(const GLint* c)

indexiv(C)
 -> cast
    ( ?glIndexiv
    , <<C:?_PTR
      >>
    )
.

%% Func:       indexs
%% Args:       C
%% Returns:    ok
%% C-API func: void glIndexs(GLshort c)

indexs(C)
 -> cast
    ( ?glIndexs
    , <<C:?GLshort
      >>
    )
.

%% Func:       indexsv
%% Args:       C
%% Returns:    ok
%% C-API func: void glIndexsv(const GLshort* c)

indexsv(C)
 -> cast
    ( ?glIndexsv
    , <<C:?_PTR
      >>
    )
.

%% Func:       indexub
%% Args:       C
%% Returns:    ok
%% C-API func: void glIndexub(GLubyte c)

indexub(C)
 -> cast
    ( ?glIndexub
    , <<C:?GLubyte
      >>
    )
.

%% Func:       indexubv
%% Args:       C
%% Returns:    ok
%% C-API func: void glIndexubv(const GLubyte* c)

indexubv(C)
 -> cast
    ( ?glIndexubv
    , <<C:?_PTR
      >>
    )
.

%% Func:       initNames
%% Args:       none
%% Returns:    ok
%% C-API func: void glInitNames(void)

initNames()
 -> cast
    ( ?glInitNames
    , [
      ]
    )
.

%% Func:       interleavedArrays
%% Args:       Format, Stride, Pointer
%% Returns:    ok
%% C-API func: void glInterleavedArrays(GLenum format, GLsizei stride, const GLvoid* pointer)

interleavedArrays(Format, Stride, Pointer)
 -> cast
    ( ?glInterleavedArrays
    , <<Format:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       isEnabled
%% Args:       Cap
%% Returns:    Exdl
%% C-API func: GLboolean glIsEnabled(GLenum cap)

isEnabled(Cap)
 -> case
      call
      ( ?glIsEnabled
      , <<Cap:?GLenum
        >>
      )
    of
      <<Exdl:?GLboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       isList
%% Args:       List
%% Returns:    Exdl
%% C-API func: GLboolean glIsList(GLuint list)

isList(List)
 -> case
      call
      ( ?glIsList
      , <<List:?GLuint
        >>
      )
    of
      <<Exdl:?GLboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       isTexture
%% Args:       Texture
%% Returns:    Exdl
%% C-API func: GLboolean glIsTexture(GLuint texture)

isTexture(Texture)
 -> case
      call
      ( ?glIsTexture
      , <<Texture:?GLuint
        >>
      )
    of
      <<Exdl:?GLboolean
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       lightModelf
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glLightModelf(GLenum pname, GLfloat param)

lightModelf(Pname, Param)
 -> cast
    ( ?glLightModelf
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       lightModelfv
%% Args:       Pname, Params
%% Returns:    ok
%% C-API func: void glLightModelfv(GLenum pname, const GLfloat* params)

lightModelfv(Pname, Params)
 -> cast
    ( ?glLightModelfv
    , <<Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       lightModeli
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glLightModeli(GLenum pname, GLint param)

lightModeli(Pname, Param)
 -> cast
    ( ?glLightModeli
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       lightModeliv
%% Args:       Pname, Params
%% Returns:    ok
%% C-API func: void glLightModeliv(GLenum pname, const GLint* params)

lightModeliv(Pname, Params)
 -> cast
    ( ?glLightModeliv
    , <<Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       lightf
%% Args:       Light, Pname, Param
%% Returns:    ok
%% C-API func: void glLightf(GLenum light, GLenum pname, GLfloat param)

lightf(Light, Pname, Param)
 -> cast
    ( ?glLightf
    , <<Light:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       lightfv
%% Args:       Light, Pname, Params
%% Returns:    ok
%% C-API func: void glLightfv(GLenum light, GLenum pname, const GLfloat* params)

lightfv(Light, Pname, Params)
 -> cast
    ( ?glLightfv
    , <<Light:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       lighti
%% Args:       Light, Pname, Param
%% Returns:    ok
%% C-API func: void glLighti(GLenum light, GLenum pname, GLint param)

lighti(Light, Pname, Param)
 -> cast
    ( ?glLighti
    , <<Light:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       lightiv
%% Args:       Light, Pname, Params
%% Returns:    ok
%% C-API func: void glLightiv(GLenum light, GLenum pname, const GLint* params)

lightiv(Light, Pname, Params)
 -> cast
    ( ?glLightiv
    , <<Light:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       lineStipple
%% Args:       Factor, Pattern
%% Returns:    ok
%% C-API func: void glLineStipple(GLint factor, GLushort pattern)

lineStipple(Factor, Pattern)
 -> cast
    ( ?glLineStipple
    , <<Factor:?GLint
      , Pattern:?GLushort
      >>
    )
.

%% Func:       lineWidth
%% Args:       Width
%% Returns:    ok
%% C-API func: void glLineWidth(GLfloat width)

lineWidth(Width)
 -> cast
    ( ?glLineWidth
    , <<Width:?GLfloat
      >>
    )
.

%% Func:       listBase
%% Args:       Base
%% Returns:    ok
%% C-API func: void glListBase(GLuint base)

listBase(Base)
 -> cast
    ( ?glListBase
    , <<Base:?GLuint
      >>
    )
.

%% Func:       loadIdentity
%% Args:       none
%% Returns:    ok
%% C-API func: void glLoadIdentity(void)

loadIdentity()
 -> cast
    ( ?glLoadIdentity
    , [
      ]
    )
.

%% Func:       loadMatrixd
%% Args:       M
%% Returns:    ok
%% C-API func: void glLoadMatrixd(const GLdouble* m)

loadMatrixd(M)
 -> cast
    ( ?glLoadMatrixd
    , <<M:?_PTR
      >>
    )
.

%% Func:       loadMatrixf
%% Args:       M
%% Returns:    ok
%% C-API func: void glLoadMatrixf(const GLfloat* m)

loadMatrixf(M)
 -> cast
    ( ?glLoadMatrixf
    , <<M:?_PTR
      >>
    )
.

%% Func:       loadName
%% Args:       Name
%% Returns:    ok
%% C-API func: void glLoadName(GLuint name)

loadName(Name)
 -> cast
    ( ?glLoadName
    , <<Name:?GLuint
      >>
    )
.

%% Func:       logicOp
%% Args:       Opcode
%% Returns:    ok
%% C-API func: void glLogicOp(GLenum opcode)

logicOp(Opcode)
 -> cast
    ( ?glLogicOp
    , <<Opcode:?GLenum
      >>
    )
.

%% Func:       map1d
%% Args:       Target, U1, U2, Stride, Order, Points
%% Returns:    ok
%% C-API func: void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble* points)

map1d(Target, U1, U2, Stride, Order, Points)
 -> cast
    ( ?glMap1d
    , <<Target:?GLenum
      , U1:?GLdouble
      , U2:?GLdouble
      , Stride:?GLint
      , Order:?GLint
      , Points:?_PTR
      >>
    )
.

%% Func:       map1f
%% Args:       Target, U1, U2, Stride, Order, Points
%% Returns:    ok
%% C-API func: void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat* points)

map1f(Target, U1, U2, Stride, Order, Points)
 -> cast
    ( ?glMap1f
    , <<Target:?GLenum
      , U1:?GLfloat
      , U2:?GLfloat
      , Stride:?GLint
      , Order:?GLint
      , Points:?_PTR
      >>
    )
.

%% Func:       map2d
%% Args:       Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, Points
%% Returns:    ok
%% C-API func: void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble* points)

map2d(Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, Points)
 -> cast
    ( ?glMap2d
    , <<Target:?GLenum
      , U1:?GLdouble
      , U2:?GLdouble
      , Ustride:?GLint
      , Uorder:?GLint
      , V1:?GLdouble
      , V2:?GLdouble
      , Vstride:?GLint
      , Vorder:?GLint
      , Points:?_PTR
      >>
    )
.

%% Func:       map2f
%% Args:       Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, Points
%% Returns:    ok
%% C-API func: void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat* points)

map2f(Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, Points)
 -> cast
    ( ?glMap2f
    , <<Target:?GLenum
      , U1:?GLfloat
      , U2:?GLfloat
      , Ustride:?GLint
      , Uorder:?GLint
      , V1:?GLfloat
      , V2:?GLfloat
      , Vstride:?GLint
      , Vorder:?GLint
      , Points:?_PTR
      >>
    )
.

%% Func:       mapGrid1d
%% Args:       Un, U1, U2
%% Returns:    ok
%% C-API func: void glMapGrid1d(GLint un, GLdouble u1, GLdouble u2)

mapGrid1d(Un, U1, U2)
 -> cast
    ( ?glMapGrid1d
    , <<Un:?GLint
      , U1:?GLdouble
      , U2:?GLdouble
      >>
    )
.

%% Func:       mapGrid1f
%% Args:       Un, U1, U2
%% Returns:    ok
%% C-API func: void glMapGrid1f(GLint un, GLfloat u1, GLfloat u2)

mapGrid1f(Un, U1, U2)
 -> cast
    ( ?glMapGrid1f
    , <<Un:?GLint
      , U1:?GLfloat
      , U2:?GLfloat
      >>
    )
.

%% Func:       mapGrid2d
%% Args:       Un, U1, U2, Vn, V1, V2
%% Returns:    ok
%% C-API func: void glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2)

mapGrid2d(Un, U1, U2, Vn, V1, V2)
 -> cast
    ( ?glMapGrid2d
    , <<Un:?GLint
      , U1:?GLdouble
      , U2:?GLdouble
      , Vn:?GLint
      , V1:?GLdouble
      , V2:?GLdouble
      >>
    )
.

%% Func:       mapGrid2f
%% Args:       Un, U1, U2, Vn, V1, V2
%% Returns:    ok
%% C-API func: void glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2)

mapGrid2f(Un, U1, U2, Vn, V1, V2)
 -> cast
    ( ?glMapGrid2f
    , <<Un:?GLint
      , U1:?GLfloat
      , U2:?GLfloat
      , Vn:?GLint
      , V1:?GLfloat
      , V2:?GLfloat
      >>
    )
.

%% Func:       materialf
%% Args:       Face, Pname, Param
%% Returns:    ok
%% C-API func: void glMaterialf(GLenum face, GLenum pname, GLfloat param)

materialf(Face, Pname, Param)
 -> cast
    ( ?glMaterialf
    , <<Face:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       materialfv
%% Args:       Face, Pname, Params
%% Returns:    ok
%% C-API func: void glMaterialfv(GLenum face, GLenum pname, const GLfloat* params)

materialfv(Face, Pname, Params)
 -> cast
    ( ?glMaterialfv
    , <<Face:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       materiali
%% Args:       Face, Pname, Param
%% Returns:    ok
%% C-API func: void glMateriali(GLenum face, GLenum pname, GLint param)

materiali(Face, Pname, Param)
 -> cast
    ( ?glMateriali
    , <<Face:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       materialiv
%% Args:       Face, Pname, Params
%% Returns:    ok
%% C-API func: void glMaterialiv(GLenum face, GLenum pname, const GLint* params)

materialiv(Face, Pname, Params)
 -> cast
    ( ?glMaterialiv
    , <<Face:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       matrixMode
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glMatrixMode(GLenum mode)

matrixMode(Mode)
 -> cast
    ( ?glMatrixMode
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       multMatrixd
%% Args:       M
%% Returns:    ok
%% C-API func: void glMultMatrixd(const GLdouble* m)

multMatrixd(M)
 -> cast
    ( ?glMultMatrixd
    , <<M:?_PTR
      >>
    )
.

%% Func:       multMatrixf
%% Args:       M
%% Returns:    ok
%% C-API func: void glMultMatrixf(const GLfloat* m)

multMatrixf(M)
 -> cast
    ( ?glMultMatrixf
    , <<M:?_PTR
      >>
    )
.

%% Func:       newList
%% Args:       List, Mode
%% Returns:    ok
%% C-API func: void glNewList(GLuint list, GLenum mode)

newList(List, Mode)
 -> cast
    ( ?glNewList
    , <<List:?GLuint
      , Mode:?GLenum
      >>
    )
.

%% Func:       normal3b
%% Args:       Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz)

normal3b(Nx, Ny, Nz)
 -> cast
    ( ?glNormal3b
    , <<Nx:?GLbyte
      , Ny:?GLbyte
      , Nz:?GLbyte
      >>
    )
.

%% Func:       normal3bv
%% Args:       V
%% Returns:    ok
%% C-API func: void glNormal3bv(const GLbyte* v)

normal3bv(V)
 -> cast
    ( ?glNormal3bv
    , <<V:?_PTR
      >>
    )
.

%% Func:       normal3d
%% Args:       Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz)

normal3d(Nx, Ny, Nz)
 -> cast
    ( ?glNormal3d
    , <<Nx:?GLdouble
      , Ny:?GLdouble
      , Nz:?GLdouble
      >>
    )
.

%% Func:       normal3dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glNormal3dv(const GLdouble* v)

normal3dv(V)
 -> cast
    ( ?glNormal3dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       normal3f
%% Args:       Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz)

normal3f(Nx, Ny, Nz)
 -> cast
    ( ?glNormal3f
    , <<Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      >>
    )
.

%% Func:       normal3fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glNormal3fv(const GLfloat* v)

normal3fv(V)
 -> cast
    ( ?glNormal3fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       normal3i
%% Args:       Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormal3i(GLint nx, GLint ny, GLint nz)

normal3i(Nx, Ny, Nz)
 -> cast
    ( ?glNormal3i
    , <<Nx:?GLint
      , Ny:?GLint
      , Nz:?GLint
      >>
    )
.

%% Func:       normal3iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glNormal3iv(const GLint* v)

normal3iv(V)
 -> cast
    ( ?glNormal3iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       normal3s
%% Args:       Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormal3s(GLshort nx, GLshort ny, GLshort nz)

normal3s(Nx, Ny, Nz)
 -> cast
    ( ?glNormal3s
    , <<Nx:?GLshort
      , Ny:?GLshort
      , Nz:?GLshort
      >>
    )
.

%% Func:       normal3sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glNormal3sv(const GLshort* v)

normal3sv(V)
 -> cast
    ( ?glNormal3sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       normalPointer
%% Args:       Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glNormalPointer(GLenum type, GLsizei stride, const GLvoid* pointer)

normalPointer(Type, Stride, Pointer)
 -> cast
    ( ?glNormalPointer
    , <<Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       ortho
%% Args:       Left, Right, Bottom, Top, ZNear, ZFar
%% Returns:    ok
%% C-API func: void glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)

ortho(Left, Right, Bottom, Top, ZNear, ZFar)
 -> cast
    ( ?glOrtho
    , <<Left:?GLdouble
      , Right:?GLdouble
      , Bottom:?GLdouble
      , Top:?GLdouble
      , ZNear:?GLdouble
      , ZFar:?GLdouble
      >>
    )
.

%% Func:       passThrough
%% Args:       Token
%% Returns:    ok
%% C-API func: void glPassThrough(GLfloat token)

passThrough(Token)
 -> cast
    ( ?glPassThrough
    , <<Token:?GLfloat
      >>
    )
.

%% Func:       pixelMapfv
%% Args:       Map, Mapsize, Values
%% Returns:    ok
%% C-API func: void glPixelMapfv(GLenum map, GLsizei mapsize, const GLfloat* values)

pixelMapfv(Map, Mapsize, Values)
 -> cast
    ( ?glPixelMapfv
    , <<Map:?GLenum
      , Mapsize:?GLsizei
      , Values:?_PTR
      >>
    )
.

%% Func:       pixelMapuiv
%% Args:       Map, Mapsize, Values
%% Returns:    ok
%% C-API func: void glPixelMapuiv(GLenum map, GLsizei mapsize, const GLuint* values)

pixelMapuiv(Map, Mapsize, Values)
 -> cast
    ( ?glPixelMapuiv
    , <<Map:?GLenum
      , Mapsize:?GLsizei
      , Values:?_PTR
      >>
    )
.

%% Func:       pixelMapusv
%% Args:       Map, Mapsize, Values
%% Returns:    ok
%% C-API func: void glPixelMapusv(GLenum map, GLsizei mapsize, const GLushort* values)

pixelMapusv(Map, Mapsize, Values)
 -> cast
    ( ?glPixelMapusv
    , <<Map:?GLenum
      , Mapsize:?GLsizei
      , Values:?_PTR
      >>
    )
.

%% Func:       pixelStoref
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPixelStoref(GLenum pname, GLfloat param)

pixelStoref(Pname, Param)
 -> cast
    ( ?glPixelStoref
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       pixelStorei
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPixelStorei(GLenum pname, GLint param)

pixelStorei(Pname, Param)
 -> cast
    ( ?glPixelStorei
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       pixelTransferf
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPixelTransferf(GLenum pname, GLfloat param)

pixelTransferf(Pname, Param)
 -> cast
    ( ?glPixelTransferf
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       pixelTransferi
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPixelTransferi(GLenum pname, GLint param)

pixelTransferi(Pname, Param)
 -> cast
    ( ?glPixelTransferi
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       pixelZoom
%% Args:       Xfactor, Yfactor
%% Returns:    ok
%% C-API func: void glPixelZoom(GLfloat xfactor, GLfloat yfactor)

pixelZoom(Xfactor, Yfactor)
 -> cast
    ( ?glPixelZoom
    , <<Xfactor:?GLfloat
      , Yfactor:?GLfloat
      >>
    )
.

%% Func:       pointSize
%% Args:       Size
%% Returns:    ok
%% C-API func: void glPointSize(GLfloat size)

pointSize(Size)
 -> cast
    ( ?glPointSize
    , <<Size:?GLfloat
      >>
    )
.

%% Func:       polygonMode
%% Args:       Face, Mode
%% Returns:    ok
%% C-API func: void glPolygonMode(GLenum face, GLenum mode)

polygonMode(Face, Mode)
 -> cast
    ( ?glPolygonMode
    , <<Face:?GLenum
      , Mode:?GLenum
      >>
    )
.

%% Func:       polygonOffset
%% Args:       Factor, Units
%% Returns:    ok
%% C-API func: void glPolygonOffset(GLfloat factor, GLfloat units)

polygonOffset(Factor, Units)
 -> cast
    ( ?glPolygonOffset
    , <<Factor:?GLfloat
      , Units:?GLfloat
      >>
    )
.

%% Func:       polygonStipple
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glPolygonStipple(const GLubyte* mask)

polygonStipple(Mask)
 -> cast
    ( ?glPolygonStipple
    , <<Mask:?_PTR
      >>
    )
.

%% Func:       popAttrib
%% Args:       none
%% Returns:    ok
%% C-API func: void glPopAttrib(void)

popAttrib()
 -> cast
    ( ?glPopAttrib
    , [
      ]
    )
.

%% Func:       popClientAttrib
%% Args:       none
%% Returns:    ok
%% C-API func: void glPopClientAttrib(void)

popClientAttrib()
 -> cast
    ( ?glPopClientAttrib
    , [
      ]
    )
.

%% Func:       popMatrix
%% Args:       none
%% Returns:    ok
%% C-API func: void glPopMatrix(void)

popMatrix()
 -> cast
    ( ?glPopMatrix
    , [
      ]
    )
.

%% Func:       popName
%% Args:       none
%% Returns:    ok
%% C-API func: void glPopName(void)

popName()
 -> cast
    ( ?glPopName
    , [
      ]
    )
.

%% Func:       prioritizeTextures
%% Args:       N, Textures, Priorities
%% Returns:    ok
%% C-API func: void glPrioritizeTextures(GLsizei n, const GLuint* textures, const GLclampf* priorities)

prioritizeTextures(N, Textures, Priorities)
 -> cast
    ( ?glPrioritizeTextures
    , <<N:?GLsizei
      , Textures:?_PTR
      , Priorities:?_PTR
      >>
    )
.

%% Func:       pushAttrib
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glPushAttrib(GLbitfield mask)

pushAttrib(Mask)
 -> cast
    ( ?glPushAttrib
    , <<Mask:?GLbitfield
      >>
    )
.

%% Func:       pushClientAttrib
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glPushClientAttrib(GLbitfield mask)

pushClientAttrib(Mask)
 -> cast
    ( ?glPushClientAttrib
    , <<Mask:?GLbitfield
      >>
    )
.

%% Func:       pushMatrix
%% Args:       none
%% Returns:    ok
%% C-API func: void glPushMatrix(void)

pushMatrix()
 -> cast
    ( ?glPushMatrix
    , [
      ]
    )
.

%% Func:       pushName
%% Args:       Name
%% Returns:    ok
%% C-API func: void glPushName(GLuint name)

pushName(Name)
 -> cast
    ( ?glPushName
    , <<Name:?GLuint
      >>
    )
.

%% Func:       rasterPos2d
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glRasterPos2d(GLdouble x, GLdouble y)

rasterPos2d(X, Y)
 -> cast
    ( ?glRasterPos2d
    , <<X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       rasterPos2dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos2dv(const GLdouble* v)

rasterPos2dv(V)
 -> cast
    ( ?glRasterPos2dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos2f
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glRasterPos2f(GLfloat x, GLfloat y)

rasterPos2f(X, Y)
 -> cast
    ( ?glRasterPos2f
    , <<X:?GLfloat
      , Y:?GLfloat
      >>
    )
.

%% Func:       rasterPos2fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos2fv(const GLfloat* v)

rasterPos2fv(V)
 -> cast
    ( ?glRasterPos2fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos2i
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glRasterPos2i(GLint x, GLint y)

rasterPos2i(X, Y)
 -> cast
    ( ?glRasterPos2i
    , <<X:?GLint
      , Y:?GLint
      >>
    )
.

%% Func:       rasterPos2iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos2iv(const GLint* v)

rasterPos2iv(V)
 -> cast
    ( ?glRasterPos2iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos2s
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glRasterPos2s(GLshort x, GLshort y)

rasterPos2s(X, Y)
 -> cast
    ( ?glRasterPos2s
    , <<X:?GLshort
      , Y:?GLshort
      >>
    )
.

%% Func:       rasterPos2sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos2sv(const GLshort* v)

rasterPos2sv(V)
 -> cast
    ( ?glRasterPos2sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos3d
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z)

rasterPos3d(X, Y, Z)
 -> cast
    ( ?glRasterPos3d
    , <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       rasterPos3dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos3dv(const GLdouble* v)

rasterPos3dv(V)
 -> cast
    ( ?glRasterPos3dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos3f
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z)

rasterPos3f(X, Y, Z)
 -> cast
    ( ?glRasterPos3f
    , <<X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       rasterPos3fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos3fv(const GLfloat* v)

rasterPos3fv(V)
 -> cast
    ( ?glRasterPos3fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos3i
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glRasterPos3i(GLint x, GLint y, GLint z)

rasterPos3i(X, Y, Z)
 -> cast
    ( ?glRasterPos3i
    , <<X:?GLint
      , Y:?GLint
      , Z:?GLint
      >>
    )
.

%% Func:       rasterPos3iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos3iv(const GLint* v)

rasterPos3iv(V)
 -> cast
    ( ?glRasterPos3iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos3s
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glRasterPos3s(GLshort x, GLshort y, GLshort z)

rasterPos3s(X, Y, Z)
 -> cast
    ( ?glRasterPos3s
    , <<X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      >>
    )
.

%% Func:       rasterPos3sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos3sv(const GLshort* v)

rasterPos3sv(V)
 -> cast
    ( ?glRasterPos3sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos4d
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)

rasterPos4d(X, Y, Z, W)
 -> cast
    ( ?glRasterPos4d
    , <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       rasterPos4dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos4dv(const GLdouble* v)

rasterPos4dv(V)
 -> cast
    ( ?glRasterPos4dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos4f
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

rasterPos4f(X, Y, Z, W)
 -> cast
    ( ?glRasterPos4f
    , <<X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       rasterPos4fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos4fv(const GLfloat* v)

rasterPos4fv(V)
 -> cast
    ( ?glRasterPos4fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos4i
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glRasterPos4i(GLint x, GLint y, GLint z, GLint w)

rasterPos4i(X, Y, Z, W)
 -> cast
    ( ?glRasterPos4i
    , <<X:?GLint
      , Y:?GLint
      , Z:?GLint
      , W:?GLint
      >>
    )
.

%% Func:       rasterPos4iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos4iv(const GLint* v)

rasterPos4iv(V)
 -> cast
    ( ?glRasterPos4iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       rasterPos4s
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w)

rasterPos4s(X, Y, Z, W)
 -> cast
    ( ?glRasterPos4s
    , <<X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      , W:?GLshort
      >>
    )
.

%% Func:       rasterPos4sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glRasterPos4sv(const GLshort* v)

rasterPos4sv(V)
 -> cast
    ( ?glRasterPos4sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       readBuffer
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glReadBuffer(GLenum mode)

readBuffer(Mode)
 -> cast
    ( ?glReadBuffer
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       readPixels
%% Args:       X, Y, Width, Height, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels)

readPixels(X, Y, Width, Height, Format, Type, Pixels)
 -> cast
    ( ?glReadPixels
    , <<X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       rectd
%% Args:       X1, Y1, X2, Y2
%% Returns:    ok
%% C-API func: void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2)

rectd(X1, Y1, X2, Y2)
 -> cast
    ( ?glRectd
    , <<X1:?GLdouble
      , Y1:?GLdouble
      , X2:?GLdouble
      , Y2:?GLdouble
      >>
    )
.

%% Func:       rectdv
%% Args:       V1, V2
%% Returns:    ok
%% C-API func: void glRectdv(const GLdouble* v1, const GLdouble* v2)

rectdv(V1, V2)
 -> cast
    ( ?glRectdv
    , <<V1:?_PTR
      , V2:?_PTR
      >>
    )
.

%% Func:       rectf
%% Args:       X1, Y1, X2, Y2
%% Returns:    ok
%% C-API func: void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2)

rectf(X1, Y1, X2, Y2)
 -> cast
    ( ?glRectf
    , <<X1:?GLfloat
      , Y1:?GLfloat
      , X2:?GLfloat
      , Y2:?GLfloat
      >>
    )
.

%% Func:       rectfv
%% Args:       V1, V2
%% Returns:    ok
%% C-API func: void glRectfv(const GLfloat* v1, const GLfloat* v2)

rectfv(V1, V2)
 -> cast
    ( ?glRectfv
    , <<V1:?_PTR
      , V2:?_PTR
      >>
    )
.

%% Func:       recti
%% Args:       X1, Y1, X2, Y2
%% Returns:    ok
%% C-API func: void glRecti(GLint x1, GLint y1, GLint x2, GLint y2)

recti(X1, Y1, X2, Y2)
 -> cast
    ( ?glRecti
    , <<X1:?GLint
      , Y1:?GLint
      , X2:?GLint
      , Y2:?GLint
      >>
    )
.

%% Func:       rectiv
%% Args:       V1, V2
%% Returns:    ok
%% C-API func: void glRectiv(const GLint* v1, const GLint* v2)

rectiv(V1, V2)
 -> cast
    ( ?glRectiv
    , <<V1:?_PTR
      , V2:?_PTR
      >>
    )
.

%% Func:       rects
%% Args:       X1, Y1, X2, Y2
%% Returns:    ok
%% C-API func: void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2)

rects(X1, Y1, X2, Y2)
 -> cast
    ( ?glRects
    , <<X1:?GLshort
      , Y1:?GLshort
      , X2:?GLshort
      , Y2:?GLshort
      >>
    )
.

%% Func:       rectsv
%% Args:       V1, V2
%% Returns:    ok
%% C-API func: void glRectsv(const GLshort* v1, const GLshort* v2)

rectsv(V1, V2)
 -> cast
    ( ?glRectsv
    , <<V1:?_PTR
      , V2:?_PTR
      >>
    )
.

%% Func:       renderMode
%% Args:       Mode
%% Returns:    Exdl
%% C-API func: GLint glRenderMode(GLenum mode)

renderMode(Mode)
 -> case
      call
      ( ?glRenderMode
      , <<Mode:?GLenum
        >>
      )
    of
      <<Exdl:?GLint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       rotated
%% Args:       Angle, X, Y, Z
%% Returns:    ok
%% C-API func: void glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z)

rotated(Angle, X, Y, Z)
 -> cast
    ( ?glRotated
    , <<Angle:?GLdouble
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       rotatef
%% Args:       Angle, X, Y, Z
%% Returns:    ok
%% C-API func: void glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z)

rotatef(Angle, X, Y, Z)
 -> cast
    ( ?glRotatef
    , <<Angle:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       scaled
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glScaled(GLdouble x, GLdouble y, GLdouble z)

scaled(X, Y, Z)
 -> cast
    ( ?glScaled
    , <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       scalef
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glScalef(GLfloat x, GLfloat y, GLfloat z)

scalef(X, Y, Z)
 -> cast
    ( ?glScalef
    , <<X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       scissor
%% Args:       X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glScissor(GLint x, GLint y, GLsizei width, GLsizei height)

scissor(X, Y, Width, Height)
 -> cast
    ( ?glScissor
    , <<X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       selectBuffer
%% Args:       Size, Buffer
%% Returns:    ok
%% C-API func: void glSelectBuffer(GLsizei size, GLuint* buffer)

selectBuffer(Size, Buffer)
 -> cast
    ( ?glSelectBuffer
    , <<Size:?GLsizei
      , Buffer:?_PTR
      >>
    )
.

%% Func:       shadeModel
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glShadeModel(GLenum mode)

shadeModel(Mode)
 -> cast
    ( ?glShadeModel
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       stencilFunc
%% Args:       Func, Ref, Mask
%% Returns:    ok
%% C-API func: void glStencilFunc(GLenum func, GLint ref, GLuint mask)

stencilFunc(Func, Ref, Mask)
 -> cast
    ( ?glStencilFunc
    , <<Func:?GLenum
      , Ref:?GLint
      , Mask:?GLuint
      >>
    )
.

%% Func:       stencilMask
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glStencilMask(GLuint mask)

stencilMask(Mask)
 -> cast
    ( ?glStencilMask
    , <<Mask:?GLuint
      >>
    )
.

%% Func:       stencilOp
%% Args:       Fail, Zfail, Zpass
%% Returns:    ok
%% C-API func: void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass)

stencilOp(Fail, Zfail, Zpass)
 -> cast
    ( ?glStencilOp
    , <<Fail:?GLenum
      , Zfail:?GLenum
      , Zpass:?GLenum
      >>
    )
.

%% Func:       texCoord1d
%% Args:       S
%% Returns:    ok
%% C-API func: void glTexCoord1d(GLdouble s)

texCoord1d(S)
 -> cast
    ( ?glTexCoord1d
    , <<S:?GLdouble
      >>
    )
.

%% Func:       texCoord1dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord1dv(const GLdouble* v)

texCoord1dv(V)
 -> cast
    ( ?glTexCoord1dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord1f
%% Args:       S
%% Returns:    ok
%% C-API func: void glTexCoord1f(GLfloat s)

texCoord1f(S)
 -> cast
    ( ?glTexCoord1f
    , <<S:?GLfloat
      >>
    )
.

%% Func:       texCoord1fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord1fv(const GLfloat* v)

texCoord1fv(V)
 -> cast
    ( ?glTexCoord1fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord1i
%% Args:       S
%% Returns:    ok
%% C-API func: void glTexCoord1i(GLint s)

texCoord1i(S)
 -> cast
    ( ?glTexCoord1i
    , <<S:?GLint
      >>
    )
.

%% Func:       texCoord1iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord1iv(const GLint* v)

texCoord1iv(V)
 -> cast
    ( ?glTexCoord1iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord1s
%% Args:       S
%% Returns:    ok
%% C-API func: void glTexCoord1s(GLshort s)

texCoord1s(S)
 -> cast
    ( ?glTexCoord1s
    , <<S:?GLshort
      >>
    )
.

%% Func:       texCoord1sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord1sv(const GLshort* v)

texCoord1sv(V)
 -> cast
    ( ?glTexCoord1sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord2d
%% Args:       S, T
%% Returns:    ok
%% C-API func: void glTexCoord2d(GLdouble s, GLdouble t)

texCoord2d(S, T)
 -> cast
    ( ?glTexCoord2d
    , <<S:?GLdouble
      , T:?GLdouble
      >>
    )
.

%% Func:       texCoord2dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord2dv(const GLdouble* v)

texCoord2dv(V)
 -> cast
    ( ?glTexCoord2dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord2f
%% Args:       S, T
%% Returns:    ok
%% C-API func: void glTexCoord2f(GLfloat s, GLfloat t)

texCoord2f(S, T)
 -> cast
    ( ?glTexCoord2f
    , <<S:?GLfloat
      , T:?GLfloat
      >>
    )
.

%% Func:       texCoord2fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord2fv(const GLfloat* v)

texCoord2fv(V)
 -> cast
    ( ?glTexCoord2fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord2i
%% Args:       S, T
%% Returns:    ok
%% C-API func: void glTexCoord2i(GLint s, GLint t)

texCoord2i(S, T)
 -> cast
    ( ?glTexCoord2i
    , <<S:?GLint
      , T:?GLint
      >>
    )
.

%% Func:       texCoord2iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord2iv(const GLint* v)

texCoord2iv(V)
 -> cast
    ( ?glTexCoord2iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord2s
%% Args:       S, T
%% Returns:    ok
%% C-API func: void glTexCoord2s(GLshort s, GLshort t)

texCoord2s(S, T)
 -> cast
    ( ?glTexCoord2s
    , <<S:?GLshort
      , T:?GLshort
      >>
    )
.

%% Func:       texCoord2sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord2sv(const GLshort* v)

texCoord2sv(V)
 -> cast
    ( ?glTexCoord2sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord3d
%% Args:       S, T, R
%% Returns:    ok
%% C-API func: void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r)

texCoord3d(S, T, R)
 -> cast
    ( ?glTexCoord3d
    , <<S:?GLdouble
      , T:?GLdouble
      , R:?GLdouble
      >>
    )
.

%% Func:       texCoord3dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord3dv(const GLdouble* v)

texCoord3dv(V)
 -> cast
    ( ?glTexCoord3dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord3f
%% Args:       S, T, R
%% Returns:    ok
%% C-API func: void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r)

texCoord3f(S, T, R)
 -> cast
    ( ?glTexCoord3f
    , <<S:?GLfloat
      , T:?GLfloat
      , R:?GLfloat
      >>
    )
.

%% Func:       texCoord3fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord3fv(const GLfloat* v)

texCoord3fv(V)
 -> cast
    ( ?glTexCoord3fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord3i
%% Args:       S, T, R
%% Returns:    ok
%% C-API func: void glTexCoord3i(GLint s, GLint t, GLint r)

texCoord3i(S, T, R)
 -> cast
    ( ?glTexCoord3i
    , <<S:?GLint
      , T:?GLint
      , R:?GLint
      >>
    )
.

%% Func:       texCoord3iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord3iv(const GLint* v)

texCoord3iv(V)
 -> cast
    ( ?glTexCoord3iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord3s
%% Args:       S, T, R
%% Returns:    ok
%% C-API func: void glTexCoord3s(GLshort s, GLshort t, GLshort r)

texCoord3s(S, T, R)
 -> cast
    ( ?glTexCoord3s
    , <<S:?GLshort
      , T:?GLshort
      , R:?GLshort
      >>
    )
.

%% Func:       texCoord3sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord3sv(const GLshort* v)

texCoord3sv(V)
 -> cast
    ( ?glTexCoord3sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord4d
%% Args:       S, T, R, Q
%% Returns:    ok
%% C-API func: void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q)

texCoord4d(S, T, R, Q)
 -> cast
    ( ?glTexCoord4d
    , <<S:?GLdouble
      , T:?GLdouble
      , R:?GLdouble
      , Q:?GLdouble
      >>
    )
.

%% Func:       texCoord4dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord4dv(const GLdouble* v)

texCoord4dv(V)
 -> cast
    ( ?glTexCoord4dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord4f
%% Args:       S, T, R, Q
%% Returns:    ok
%% C-API func: void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q)

texCoord4f(S, T, R, Q)
 -> cast
    ( ?glTexCoord4f
    , <<S:?GLfloat
      , T:?GLfloat
      , R:?GLfloat
      , Q:?GLfloat
      >>
    )
.

%% Func:       texCoord4fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord4fv(const GLfloat* v)

texCoord4fv(V)
 -> cast
    ( ?glTexCoord4fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord4i
%% Args:       S, T, R, Q
%% Returns:    ok
%% C-API func: void glTexCoord4i(GLint s, GLint t, GLint r, GLint q)

texCoord4i(S, T, R, Q)
 -> cast
    ( ?glTexCoord4i
    , <<S:?GLint
      , T:?GLint
      , R:?GLint
      , Q:?GLint
      >>
    )
.

%% Func:       texCoord4iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord4iv(const GLint* v)

texCoord4iv(V)
 -> cast
    ( ?glTexCoord4iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord4s
%% Args:       S, T, R, Q
%% Returns:    ok
%% C-API func: void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q)

texCoord4s(S, T, R, Q)
 -> cast
    ( ?glTexCoord4s
    , <<S:?GLshort
      , T:?GLshort
      , R:?GLshort
      , Q:?GLshort
      >>
    )
.

%% Func:       texCoord4sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord4sv(const GLshort* v)

texCoord4sv(V)
 -> cast
    ( ?glTexCoord4sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoordPointer
%% Args:       Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

texCoordPointer(Size, Type, Stride, Pointer)
 -> cast
    ( ?glTexCoordPointer
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       texEnvf
%% Args:       Target, Pname, Param
%% Returns:    ok
%% C-API func: void glTexEnvf(GLenum target, GLenum pname, GLfloat param)

texEnvf(Target, Pname, Param)
 -> cast
    ( ?glTexEnvf
    , <<Target:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       texEnvfv
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glTexEnvfv(GLenum target, GLenum pname, const GLfloat* params)

texEnvfv(Target, Pname, Params)
 -> cast
    ( ?glTexEnvfv
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       texEnvi
%% Args:       Target, Pname, Param
%% Returns:    ok
%% C-API func: void glTexEnvi(GLenum target, GLenum pname, GLint param)

texEnvi(Target, Pname, Param)
 -> cast
    ( ?glTexEnvi
    , <<Target:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       texEnviv
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glTexEnviv(GLenum target, GLenum pname, const GLint* params)

texEnviv(Target, Pname, Params)
 -> cast
    ( ?glTexEnviv
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       texGend
%% Args:       Coord, Pname, Param
%% Returns:    ok
%% C-API func: void glTexGend(GLenum coord, GLenum pname, GLdouble param)

texGend(Coord, Pname, Param)
 -> cast
    ( ?glTexGend
    , <<Coord:?GLenum
      , Pname:?GLenum
      , Param:?GLdouble
      >>
    )
.

%% Func:       texGendv
%% Args:       Coord, Pname, Params
%% Returns:    ok
%% C-API func: void glTexGendv(GLenum coord, GLenum pname, const GLdouble* params)

texGendv(Coord, Pname, Params)
 -> cast
    ( ?glTexGendv
    , <<Coord:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       texGenf
%% Args:       Coord, Pname, Param
%% Returns:    ok
%% C-API func: void glTexGenf(GLenum coord, GLenum pname, GLfloat param)

texGenf(Coord, Pname, Param)
 -> cast
    ( ?glTexGenf
    , <<Coord:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       texGenfv
%% Args:       Coord, Pname, Params
%% Returns:    ok
%% C-API func: void glTexGenfv(GLenum coord, GLenum pname, const GLfloat* params)

texGenfv(Coord, Pname, Params)
 -> cast
    ( ?glTexGenfv
    , <<Coord:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       texGeni
%% Args:       Coord, Pname, Param
%% Returns:    ok
%% C-API func: void glTexGeni(GLenum coord, GLenum pname, GLint param)

texGeni(Coord, Pname, Param)
 -> cast
    ( ?glTexGeni
    , <<Coord:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       texGeniv
%% Args:       Coord, Pname, Params
%% Returns:    ok
%% C-API func: void glTexGeniv(GLenum coord, GLenum pname, const GLint* params)

texGeniv(Coord, Pname, Params)
 -> cast
    ( ?glTexGeniv
    , <<Coord:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       texImage1D
%% Args:       Target, Level, Internalformat, Width, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

texImage1D(Target, Level, Internalformat, Width, Border, Format, Type, Pixels)
 -> cast
    ( ?glTexImage1D
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLint
      , Width:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       texImage2D
%% Args:       Target, Level, Internalformat, Width, Height, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

texImage2D(Target, Level, Internalformat, Width, Height, Border, Format, Type, Pixels)
 -> cast
    ( ?glTexImage2D
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       texParameterf
%% Args:       Target, Pname, Param
%% Returns:    ok
%% C-API func: void glTexParameterf(GLenum target, GLenum pname, GLfloat param)

texParameterf(Target, Pname, Param)
 -> cast
    ( ?glTexParameterf
    , <<Target:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       texParameterfv
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glTexParameterfv(GLenum target, GLenum pname, const GLfloat* params)

texParameterfv(Target, Pname, Params)
 -> cast
    ( ?glTexParameterfv
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       texParameteri
%% Args:       Target, Pname, Param
%% Returns:    ok
%% C-API func: void glTexParameteri(GLenum target, GLenum pname, GLint param)

texParameteri(Target, Pname, Param)
 -> cast
    ( ?glTexParameteri
    , <<Target:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       texParameteriv
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glTexParameteriv(GLenum target, GLenum pname, const GLint* params)

texParameteriv(Target, Pname, Params)
 -> cast
    ( ?glTexParameteriv
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       texSubImage1D
%% Args:       Target, Level, Xoffset, Width, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels)

texSubImage1D(Target, Level, Xoffset, Width, Format, Type, Pixels)
 -> cast
    ( ?glTexSubImage1D
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Width:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       texSubImage2D
%% Args:       Target, Level, Xoffset, Yoffset, Width, Height, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels)

texSubImage2D(Target, Level, Xoffset, Yoffset, Width, Height, Format, Type, Pixels)
 -> cast
    ( ?glTexSubImage2D
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       translated
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glTranslated(GLdouble x, GLdouble y, GLdouble z)

translated(X, Y, Z)
 -> cast
    ( ?glTranslated
    , <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       translatef
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glTranslatef(GLfloat x, GLfloat y, GLfloat z)

translatef(X, Y, Z)
 -> cast
    ( ?glTranslatef
    , <<X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       vertex2d
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glVertex2d(GLdouble x, GLdouble y)

vertex2d(X, Y)
 -> cast
    ( ?glVertex2d
    , <<X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       vertex2dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex2dv(const GLdouble* v)

vertex2dv(V)
 -> cast
    ( ?glVertex2dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex2f
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glVertex2f(GLfloat x, GLfloat y)

vertex2f(X, Y)
 -> cast
    ( ?glVertex2f
    , <<X:?GLfloat
      , Y:?GLfloat
      >>
    )
.

%% Func:       vertex2fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex2fv(const GLfloat* v)

vertex2fv(V)
 -> cast
    ( ?glVertex2fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex2i
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glVertex2i(GLint x, GLint y)

vertex2i(X, Y)
 -> cast
    ( ?glVertex2i
    , <<X:?GLint
      , Y:?GLint
      >>
    )
.

%% Func:       vertex2iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex2iv(const GLint* v)

vertex2iv(V)
 -> cast
    ( ?glVertex2iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex2s
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glVertex2s(GLshort x, GLshort y)

vertex2s(X, Y)
 -> cast
    ( ?glVertex2s
    , <<X:?GLshort
      , Y:?GLshort
      >>
    )
.

%% Func:       vertex2sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex2sv(const GLshort* v)

vertex2sv(V)
 -> cast
    ( ?glVertex2sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex3d
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glVertex3d(GLdouble x, GLdouble y, GLdouble z)

vertex3d(X, Y, Z)
 -> cast
    ( ?glVertex3d
    , <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       vertex3dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex3dv(const GLdouble* v)

vertex3dv(V)
 -> cast
    ( ?glVertex3dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex3f
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glVertex3f(GLfloat x, GLfloat y, GLfloat z)

vertex3f(X, Y, Z)
 -> cast
    ( ?glVertex3f
    , <<X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       vertex3fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex3fv(const GLfloat* v)

vertex3fv(V)
 -> cast
    ( ?glVertex3fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex3i
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glVertex3i(GLint x, GLint y, GLint z)

vertex3i(X, Y, Z)
 -> cast
    ( ?glVertex3i
    , <<X:?GLint
      , Y:?GLint
      , Z:?GLint
      >>
    )
.

%% Func:       vertex3iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex3iv(const GLint* v)

vertex3iv(V)
 -> cast
    ( ?glVertex3iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex3s
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glVertex3s(GLshort x, GLshort y, GLshort z)

vertex3s(X, Y, Z)
 -> cast
    ( ?glVertex3s
    , <<X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      >>
    )
.

%% Func:       vertex3sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex3sv(const GLshort* v)

vertex3sv(V)
 -> cast
    ( ?glVertex3sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex4d
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)

vertex4d(X, Y, Z, W)
 -> cast
    ( ?glVertex4d
    , <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       vertex4dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex4dv(const GLdouble* v)

vertex4dv(V)
 -> cast
    ( ?glVertex4dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex4f
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

vertex4f(X, Y, Z, W)
 -> cast
    ( ?glVertex4f
    , <<X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       vertex4fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex4fv(const GLfloat* v)

vertex4fv(V)
 -> cast
    ( ?glVertex4fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex4i
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertex4i(GLint x, GLint y, GLint z, GLint w)

vertex4i(X, Y, Z, W)
 -> cast
    ( ?glVertex4i
    , <<X:?GLint
      , Y:?GLint
      , Z:?GLint
      , W:?GLint
      >>
    )
.

%% Func:       vertex4iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex4iv(const GLint* v)

vertex4iv(V)
 -> cast
    ( ?glVertex4iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex4s
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w)

vertex4s(X, Y, Z, W)
 -> cast
    ( ?glVertex4s
    , <<X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      , W:?GLshort
      >>
    )
.

%% Func:       vertex4sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex4sv(const GLshort* v)

vertex4sv(V)
 -> cast
    ( ?glVertex4sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertexPointer
%% Args:       Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glVertexPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

vertexPointer(Size, Type, Stride, Pointer)
 -> cast
    ( ?glVertexPointer
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       viewport
%% Args:       X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glViewport(GLint x, GLint y, GLsizei width, GLsizei height)

viewport(X, Y, Width, Height)
 -> cast
    ( ?glViewport
    , <<X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.


-endif. % COMPILE_GL
