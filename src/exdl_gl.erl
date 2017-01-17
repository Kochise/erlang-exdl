%%
%%  Copyright (c) 2005 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_gl.erl,v 1.11 2006/05/15 14:45:44 dgud Exp $
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

-include("exdl_glext.hrl"). % for GL_MAX_3D_TEXTURE_SIZE
-include("exdl_util.hrl").

-include("exdl_gl.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

-import( exdl_util
       , [ bin2list/2
         , bin2list/3
         , term2bin/2
         , term2bin/3
         , matrix2bin/2
         ]
       ).

%% 4- FUNCTIONS

%% Backward compability
glBegin(Arg)
 -> 'begin'(Arg)
.

glEnd()
 -> 'end'()
.

swapBuffers()
 -> sdl_video:gl_swapBuffers
    (
    )
.

%%%% GL START HERE

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
%% Args:       N, <<[Textures]>>
%% Returns:    {?GL_BYTE, [Residences]}
%% C-API func: GLboolean glAreTexturesResident(GLsizei n, const GLuint* textures, GLboolean* residences)

areTexturesResident(N, Textures)
 -> NewTextures
    = if
        is_list(Textures)
      ; is_tuple(Textures)
          -> term2bin
             ( Textures
             , N
             , ?GL_UNSIGNED_INT
             )
      ; is_binary(Textures)
          -> Textures
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Textures
               }
             )
      end
  , Bin
    = call
      ( ?glAreTexturesResident
      , [ <<N:?GLsizei
          >>
        , NewTextures
        ]
      )
  , case
      Bin
    of 
      <<Ret:?GLboolean
      , Residences:N/binary-unit:?GL_BYTE_SIZE
      >>
        -> { Ret /= ?GL_FALSE
           , bin2list
             ( N
             , ?GL_BYTE
             , Residences
             )
           }
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
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

%% Func:       'begin'
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glBegin(GLenum mode)

'begin'(Mode)
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
%% Args:       Width, Height, Xorig, Yorig, Xmove, Ymove, <<[Bitmap]>>
%% Returns:    ok
%% C-API func: void glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte* bitmap)

bitmap(Width, Height, Xorig, Yorig, Xmove, Ymove, Bitmap)
 -> %% Maybe NULL or offset sometimes
    NewBitmap
    = if
        is_integer(Bitmap)
          -> Bitmap
      ; true
          -> sdl:send_bin
             ( Bitmap
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glBitmap
    , [ <<Width:?GLsizei
        , Height:?GLsizei
        , Xorig:?GLfloat
        , Yorig:?GLfloat
        , Xmove:?GLfloat
        , Ymove:?GLfloat
        , NewBitmap:?_PTR
        >>
      ]
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
%% Args:       N, Type, <<[Lists]>>
%% Returns:    ok
%% C-API func: void glCallLists(GLsizei n, GLenum type, const GLvoid* lists)

callLists(N, Type, Lists)
 -> NewLists
    = if
        is_list(Lists)
      ; is_tuple(Lists)
          -> term2bin
             ( Lists
             , N
             , Type
             )
      ; is_binary(Lists)
          -> Lists
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Lists
               }
             )
      end
  , cast
    ( ?glCallLists
    , [ <<N:?GLsizei
        , Type:?GLenum
        >>
      , NewLists
      ]
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
%% Args:       Plane, <<[Equation]>>
%% Returns:    ok
%% C-API func: void glClipPlane(GLenum plane, const GLdouble* equation)

clipPlane(Plane, Equation)
 -> NewEquation
    = if
        is_list(Equation)
      ; is_tuple(Equation)
          -> term2bin
             ( Equation
             , 4
             , ?GL_DOUBLE
             )
      ; is_binary(Equation)
          -> Equation
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Equation
               }
             )
      end
  , cast
    ( ?glClipPlane
    , [ <<Plane:?GLenum
        >>
      , NewEquation
      ]
    )
.

%% Func:       color3b
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3b(GLbyte red, GLbyte green, GLbyte blue)

-ifdef(UseAllGlFunc).
  color3b(Red, Green, Blue)
   -> cast
      ( ?glColor3b
      , <<Red:?GLbyte
        , Green:?GLbyte
        , Blue:?GLbyte
        >>
      )
  .
-else.
  color3b(Red, Green, Blue)
   -> cast
      ( ?glColor3bv
      , <<Red:?GLbyte
        , Green:?GLbyte
        , Blue:?GLbyte
        >>
      )
  .
-endif.

%% Func:       color3bv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glColor3bv(const GLbyte* v)

color3bv({V1, V2, V3})
 -> cast
    ( ?glColor3bv
    , <<V1:?GLbyte
      , V2:?GLbyte
      , V3:?GLbyte
      >>
    )
.

%% Func:       color3d
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3d(GLdouble red, GLdouble green, GLdouble blue)

-ifdef(UseAllGlFunc).
  color3d(Red, Green, Blue)
   -> cast
      ( ?glColor3d
      , <<Red:?GLdouble
        , Green:?GLdouble
        , Blue:?GLdouble
        >>
      )
  .
-else.
  color3d(Red, Green, Blue)
   -> cast
      ( ?glColor3dv
      , <<Red:?GLdouble
        , Green:?GLdouble
        , Blue:?GLdouble
        >>
      )
  .
-endif.

%% Func:       color3dv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glColor3dv(const GLdouble* v)

color3dv({V1, V2, V3})
 -> cast
    ( ?glColor3dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      , V3:?GLdouble
      >>
    )
.

%% Func:       color3f
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3f(GLfloat red, GLfloat green, GLfloat blue)

-ifdef(UseAllGlFunc).
  color3f(Red, Green, Blue)
   -> cast
      ( ?glColor3f
      , <<Red:?GLfloat
        , Green:?GLfloat
        , Blue:?GLfloat
        >>
      )
  .
-else.
  color3f(Red, Green, Blue)
   -> cast
      ( ?glColor3fv
      , <<Red:?GLfloat
        , Green:?GLfloat
        , Blue:?GLfloat
        >>
      )
  .
-endif.

%% Func:       color3fv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glColor3fv(const GLfloat* v)

color3fv({V1, V2, V3})
 -> cast
    ( ?glColor3fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      >>
    )
.

%% Func:       color3i
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3i(GLint red, GLint green, GLint blue)

-ifdef(UseAllGlFunc).
  color3i(Red, Green, Blue)
   -> cast
      ( ?glColor3i
      , <<Red:?GLint
        , Green:?GLint
        , Blue:?GLint
        >>
      )
  .
-else.
  color3i(Red, Green, Blue)
   -> cast
      ( ?glColor3iv
      , <<Red:?GLint
        , Green:?GLint
        , Blue:?GLint
        >>
      )
  .
-endif.

%% Func:       color3iv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glColor3iv(const GLint* v)

color3iv({V1, V2, V3})
 -> cast
    ( ?glColor3iv
    , <<V1:?GLint
      , V2:?GLint
      , V3:?GLint
      >>
    )
.

%% Func:       color3s
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3s(GLshort red, GLshort green, GLshort blue)

-ifdef(UseAllGlFunc).
  color3s(Red, Green, Blue)
   -> cast
      ( ?glColor3s
      , <<Red:?GLshort
        , Green:?GLshort
        , Blue:?GLshort
        >>
      )
  .
-else.
  color3s(Red, Green, Blue)
   -> cast
      ( ?glColor3sv
      , <<Red:?GLshort
        , Green:?GLshort
        , Blue:?GLshort
        >>
      )
  .
-endif.

%% Func:       color3sv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glColor3sv(const GLshort* v)

color3sv({V1, V2, V3})
 -> cast
    ( ?glColor3sv
    , <<V1:?GLshort
      , V2:?GLshort
      , V3:?GLshort
      >>
    )
.

%% Func:       color3ub
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3ub(GLubyte red, GLubyte green, GLubyte blue)

-ifdef(UseAllGlFunc).
  color3ub(Red, Green, Blue)
   -> cast
      ( ?glColor3ub
      , <<Red:?GLubyte
        , Green:?GLubyte
        , Blue:?GLubyte
        >>
      )
  .
-else.
  color3ub(Red, Green, Blue)
   -> cast
      ( ?glColor3ubv
      , <<Red:?GLubyte
        , Green:?GLubyte
        , Blue:?GLubyte
        >>
      )
  .
-endif.

%% Func:       color3ubv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glColor3ubv(const GLubyte* v)

color3ubv({V1, V2, V3})
 -> cast
    ( ?glColor3ubv
    , <<V1:?GLubyte
      , V2:?GLubyte
      , V3:?GLubyte
      >>
    )
.

%% Func:       color3ui
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3ui(GLuint red, GLuint green, GLuint blue)

-ifdef(UseAllGlFunc).
  color3ui(Red, Green, Blue)
   -> cast
      ( ?glColor3ui
      , <<Red:?GLuint
        , Green:?GLuint
        , Blue:?GLuint
        >>
      )
  .
-else.
  color3ui(Red, Green, Blue)
   -> cast
      ( ?glColor3uiv
      , <<Red:?GLuint
        , Green:?GLuint
        , Blue:?GLuint
        >>
      )
  .
-endif.

%% Func:       color3uiv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glColor3uiv(const GLuint* v)

color3uiv({V1, V2, V3})
 -> cast
    ( ?glColor3uiv
    , <<V1:?GLuint
      , V2:?GLuint
      , V3:?GLuint
      >>
    )
.

%% Func:       color3us
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3us(GLushort red, GLushort green, GLushort blue)

-ifdef(UseAllGlFunc).
  color3us(Red, Green, Blue)
   -> cast
      ( ?glColor3us
      , <<Red:?GLushort
        , Green:?GLushort
        , Blue:?GLushort
        >>
      )
  .
-else.
  color3us(Red, Green, Blue)
   -> cast
      ( ?glColor3usv
      , <<Red:?GLushort
        , Green:?GLushort
        , Blue:?GLushort
        >>
      )
  .
-endif.

%% Func:       color3usv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glColor3usv(const GLushort* v)

color3usv({V1, V2, V3})
 -> cast
    ( ?glColor3usv
    , <<V1:?GLushort
      , V2:?GLushort
      , V3:?GLushort
      >>
    )
.

%% Func:       color4b
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha)

-ifdef(UseAllGlFunc).
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
-else.
  color4b(Red, Green, Blue, Alpha)
   -> cast
      ( ?glColor4bv
      , <<Red:?GLbyte
        , Green:?GLbyte
        , Blue:?GLbyte
        , Alpha:?GLbyte
        >>
      )
  .
-endif.

%% Func:       color4bv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glColor4bv(const GLbyte* v)

color4bv({V1, V2, V3, V4})
 -> cast
    ( ?glColor4bv
    , <<V1:?GLbyte
      , V2:?GLbyte
      , V3:?GLbyte
      , V4:?GLbyte
      >>
    )
.

%% Func:       color4d
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha)

-ifdef(UseAllGlFunc).
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
-else.
  color4d(Red, Green, Blue, Alpha)
   -> cast
      ( ?glColor4dv
      , <<Red:?GLdouble
        , Green:?GLdouble
        , Blue:?GLdouble
        , Alpha:?GLdouble
        >>
      )
  .
-endif.

%% Func:       color4dv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glColor4dv(const GLdouble* v)

color4dv({V1, V2, V3, V4})
 -> cast
    ( ?glColor4dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      , V3:?GLdouble
      , V4:?GLdouble
      >>
    )
.

%% Func:       color4f
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)

-ifdef(UseAllGlFunc).
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
-else.
  color4f(Red, Green, Blue, Alpha)
   -> cast
      ( ?glColor4fv
      , <<Red:?GLfloat
        , Green:?GLfloat
        , Blue:?GLfloat
        , Alpha:?GLfloat
        >>
      )
  .
-endif.

%% Func:       color4fv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glColor4fv(const GLfloat* v)

color4fv({V1, V2, V3, V4})
 -> cast
    ( ?glColor4fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      , V4:?GLfloat
      >>
    )
.

%% Func:       color4i
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4i(GLint red, GLint green, GLint blue, GLint alpha)

-ifdef(UseAllGlFunc).
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
-else.
  color4i(Red, Green, Blue, Alpha)
   -> cast
      ( ?glColor4iv
      , <<Red:?GLint
        , Green:?GLint
        , Blue:?GLint
        , Alpha:?GLint
        >>
      )
  .
-endif.

%% Func:       color4iv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glColor4iv(const GLint* v)

color4iv({V1, V2, V3, V4})
 -> cast
    ( ?glColor4iv
    , <<V1:?GLint
      , V2:?GLint
      , V3:?GLint
      , V4:?GLint
      >>
    )
.

%% Func:       color4s
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha)

-ifdef(UseAllGlFunc).
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
-else.
  color4s(Red, Green, Blue, Alpha)
   -> cast
      ( ?glColor4sv
      , <<Red:?GLshort
        , Green:?GLshort
        , Blue:?GLshort
        , Alpha:?GLshort
        >>
      )
  .
-endif.

%% Func:       color4sv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glColor4sv(const GLshort* v)

color4sv({V1, V2, V3, V4})
 -> cast
    ( ?glColor4sv
    , <<V1:?GLshort
      , V2:?GLshort
      , V3:?GLshort
      , V4:?GLshort
      >>
    )
.

%% Func:       color4ub
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha)

-ifdef(UseAllGlFunc).
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
-else.
  color4ub(Red, Green, Blue, Alpha)
   -> cast
      ( ?glColor4ubv
      , <<Red:?GLubyte
        , Green:?GLubyte
        , Blue:?GLubyte
        , Alpha:?GLubyte
        >>
      )
  .
-endif.

%% Func:       color4ubv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glColor4ubv(const GLubyte* v)

color4ubv({V1, V2, V3, V4})
 -> cast
    ( ?glColor4ubv
    , <<V1:?GLubyte
      , V2:?GLubyte
      , V3:?GLubyte
      , V4:?GLubyte
      >>
    )
.

%% Func:       color4ui
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha)

-ifdef(UseAllGlFunc).
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
-else.
  color4ui(Red, Green, Blue, Alpha)
   -> cast
      ( ?glColor4uiv
      , <<Red:?GLuint
        , Green:?GLuint
          , Blue:?GLuint
          , Alpha:?GLuint
          >>
        )
  .
-endif.

%% Func:       color4uiv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glColor4uiv(const GLuint* v)

color4uiv({V1, V2, V3, V4})
 -> cast
    ( ?glColor4uiv
    , <<V1:?GLuint
      , V2:?GLuint
      , V3:?GLuint
      , V4:?GLuint
      >>
    )
.

%% Func:       color4us
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha)

-ifdef(UseAllGlFunc).
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
-else.
  color4us(Red, Green, Blue, Alpha)
   -> cast
      ( ?glColor4usv
      , <<Red:?GLushort
        , Green:?GLushort
        , Blue:?GLushort
        , Alpha:?GLushort
        >>
      )
  .
-endif.

%% Func:       color4usv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glColor4usv(const GLushort* v)

color4usv({V1, V2, V3, V4})
 -> cast
    ( ?glColor4usv
    , <<V1:?GLushort
      , V2:?GLushort
      , V3:?GLushort
      , V4:?GLushort
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
%% Args:       Size, Type, Stride, <<[Pointer]>>
%% Returns:    ok
%% C-API func: void glColorPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

colorPointer(Size, Type, Stride, Pointer)
 -> %% Maybe NULL or offset sometimes
    NewPointer =
      if
        is_integer(Pointer)
          -> Pointer
      ; true
          -> sdl:send_bin
             ( Pointer
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glColorPointer
    , [ <<Size:?GLint
        , Type:?GLenum
        , Stride:?GLsizei
        , NewPointer:?_PTR
        >>
      ]
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
%% Args:       N, <<[Textures]>>
%% Returns:    ok
%% C-API func: void glDeleteTextures(GLsizei n, const GLuint* textures)

deleteTextures(N, Textures)
 -> NewTextures
    = if
        is_list(Textures)
      ; is_tuple(Textures)
          -> term2bin
             ( Textures
             , N
             , ?GL_UNSIGNED_INT
             )
      ; is_binary(Textures)
          -> Textures
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Textures
               }
             )
      end
  , cast
    ( ?glDeleteTextures
    , [ <<N:?GLsizei
        >>
      , NewTextures
      ]
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
%% Args:       Mode, Count, Type, <<[Indices]>>
%% Returns:    ok
%% C-API func: void glDrawElements(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices)

drawElements(Mode, Count, Type, Indices)
 -> NewIndices
    = if
        is_integer(Indices)
          -> Indices
      ; is_list(Indices)
      ; is_tuple(Indices)
          -> term2bin
             ( Indices
             , Count
             , Type
             )
      ; is_binary(Indices)
          -> Indices
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Indices
               }
             )
      end
  , cast
    ( ?glDrawElements
    , [ <<Mode:?GLenum
        , Count:?GLsizei
        , Type:?GLenum
        , NewIndices:?_PTR
        >>
      ]
    )
.

%% Func:       drawPixels
%% Args:       Width, Height, Format, Type, <<[Pixels]>>
%% Returns:    ok
%% C-API func: void glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels)

drawPixels(Width, Height, Format, Type, Pixels)
 -> %% Maybe NULL or offset sometimes
    NewPixels
    = if
        is_integer(Pixels)
          -> Pixels
      ; true
          -> sdl:send_bin
             ( Pixels
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glDrawPixels
    , [ <<Width:?GLsizei
        , Height:?GLsizei
        , Format:?GLenum
        , Type:?GLenum
        , NewPixels:?_PTR
        >>
      ]
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
%% Args:       Stride, <<[Pointer]>>
%% Returns:    ok
%% C-API func: void glEdgeFlagPointer(GLsizei stride, const GLboolean* pointer)

edgeFlagPointer(Stride, Pointer)
 -> %% Maybe NULL or offset sometimes
    NewPointer
    = if
        is_integer(Pointer)
          -> Pointer
      ; true
          -> sdl:send_bin
             ( Pointer
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glEdgeFlagPointer
    , [ <<Stride:?GLsizei
        , NewPointer:?_PTR
        >>
      ]
    )
.

%% Func:       edgeFlagv
%% Args:       <<[Flag]>>
%% Returns:    ok
%% C-API func: void glEdgeFlagv(const GLboolean* flag)

edgeFlagv(Flag)
 -> NewFlag
    = if
        is_list(Flag)
      ; is_tuple(Flag)
          -> term2bin
             ( Flag
             , 1
             , ?GL_BYTE
             )
      ; is_binary(Flag)
          -> Flag
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Flag
               }
             )
      end
  , cast
    ( ?glEdgeFlagv
    , [ NewFlag
      ]
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

%% Func:       'end'
%% Args:       none
%% Returns:    ok
%% C-API func: void glEnd(void)

'end'()
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

-ifdef(UseAllGlFunc).
  evalCoord1d(U)
   -> cast
      ( ?glEvalCoord1d
      , <<U:?GLdouble
        >>
      )
  .
-else.
  evalCoord1d(U)
   -> cast
      ( ?glEvalCoord1dv
      , <<U:?GLdouble
        >>
      )
  .
-endif.

%% Func:       evalCoord1dv
%% Args:       {U1}
%% Returns:    ok
%% C-API func: void glEvalCoord1dv(const GLdouble* u)

evalCoord1dv({U1})
 -> cast
    ( ?glEvalCoord1dv
    , <<U1:?GLdouble
      >>
    )
.

%% Func:       evalCoord1f
%% Args:       U
%% Returns:    ok
%% C-API func: void glEvalCoord1f(GLfloat u)

-ifdef(UseAllGlFunc).
  evalCoord1f(U)
   -> cast
      ( ?glEvalCoord1f
      , <<U:?GLfloat
        >>
      )
  .
-else.
  evalCoord1f(U)
   -> cast
      ( ?glEvalCoord1fv
      , <<U:?GLfloat
        >>
      )
  .
-endif.

%% Func:       evalCoord1fv
%% Args:       {U1}
%% Returns:    ok
%% C-API func: void glEvalCoord1fv(const GLfloat* u)

evalCoord1fv({U1})
 -> cast
    ( ?glEvalCoord1fv
    , <<U1:?GLfloat
      >>
    )
.

%% Func:       evalCoord2d
%% Args:       U, V
%% Returns:    ok
%% C-API func: void glEvalCoord2d(GLdouble u, GLdouble v)

-ifdef(UseAllGlFunc).
  evalCoord2d(U, V)
   -> cast
      ( ?glEvalCoord2d
      , <<U:?GLdouble
        , V:?GLdouble
        >>
      )
  .
-else.
  evalCoord2d(U, V)
   -> cast
      ( ?glEvalCoord2dv
      , <<U:?GLdouble
        , V:?GLdouble
        >>
      )
  .
-endif.

%% Func:       evalCoord2dv
%% Args:       {U1, U2}
%% Returns:    ok
%% C-API func: void glEvalCoord2dv(const GLdouble* u)

evalCoord2dv({U1, U2})
 -> cast
    ( ?glEvalCoord2dv
    , <<U1:?GLdouble
      , U2:?GLdouble
      >>
    )
.

%% Func:       evalCoord2f
%% Args:       U, V
%% Returns:    ok
%% C-API func: void glEvalCoord2f(GLfloat u, GLfloat v)

-ifdef(UseAllGlFunc).
  evalCoord2f(U, V)
   -> cast
      ( ?glEvalCoord2f
      , <<U:?GLfloat
        , V:?GLfloat
        >>
      )
  .
-else.
  evalCoord2f(U, V)
   -> cast
      ( ?glEvalCoord2fv
      , <<U:?GLfloat
        , V:?GLfloat
        >>
      )
  .
-endif.

%% Func:       evalCoord2fv
%% Args:       {U1, U2}
%% Returns:    ok
%% C-API func: void glEvalCoord2fv(const GLfloat* u)

evalCoord2fv({U1, U2})
 -> cast
    ( ?glEvalCoord2fv
    , <<U1:?GLfloat
      , U2:?GLfloat
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
%% Args:       Size, Type, #sdlmem{} = Buffer
%% Returns:    ok
%% C-API func: void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat* buffer)

feedbackBuffer(Size, Type, #sdlmem{bin=Buffer})
 -> sdl:send_bin
    ( Buffer
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?glFeedbackBuffer
    , <<Size:?GLsizei
      , Type:?GLenum
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
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glFogfv(GLenum pname, const GLfloat* params)

fogfv(Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glFogfv
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glFogiv(GLenum pname, const GLint* params)

fogiv(Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glFogiv
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Returns:    ?GL_UNSIGNED_INT
%% C-API func: GLuint glGenLists(GLsizei range)

genLists(Range)
 -> Bin
    = call
      ( ?glGenLists
      , <<Range:?GLsizei
        >>
      )
  , case
      Bin
    of 
      <<Ret:?GLuint
      >>
        -> Ret
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       genTextures
%% Args:       N
%% Returns:    [Textures]
%% C-API func: void glGenTextures(GLsizei n, GLuint* textures)

genTextures(N)
 -> Bin
    = call
      ( ?glGenTextures
      , <<N:?GLsizei
        >>
      )
  , case
      Bin
    of 
      <<Textures:N/binary-unit:?GL_UNSIGNED_INT_SIZE
      >>
        -> bin2list
           ( N
           , ?GL_UNSIGNED_INT
           , Textures
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getBooleanv
%% Args:       Pname
%% Returns:    [Params]
%% C-API func: void glGetBooleanv(GLenum pname, GLboolean* params)

getBooleanv(Pname)
 -> Bin
    = call
      ( ?glGetBooleanv
      , <<Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_ACCUM_ALPHA_BITS                   -> 1
      ; ?GL_ACCUM_BLUE_BITS                    -> 1
      ; ?GL_ACCUM_CLEAR_VALUE                  -> 4
      ; ?GL_ACCUM_GREEN_BITS                   -> 1
      ; ?GL_ACCUM_RED_BITS                     -> 1
      ; ?GL_ALPHA_BIAS                         -> 1
      ; ?GL_ALPHA_BITS                         -> 1
      ; ?GL_ALPHA_SCALE                        -> 1
      ; ?GL_ALPHA_TEST                         -> 1
      ; ?GL_ALPHA_TEST_FUNC                    -> 1
      ; ?GL_ALPHA_TEST_REF                     -> 1
      ; ?GL_ATTRIB_STACK_DEPTH                 -> 1
      ; ?GL_AUTO_NORMAL                        -> 1
      ; ?GL_AUX_BUFFERS                        -> 1
      ; ?GL_BLEND                              -> 1
      ; ?GL_BLEND_DST                          -> 1
      ; ?GL_BLEND_SRC                          -> 1
      ; ?GL_BLUE_BIAS                          -> 1
      ; ?GL_BLUE_BITS                          -> 1
      ; ?GL_BLUE_SCALE                         -> 1
      ; ?GL_CLIENT_ATTRIB_STACK_DEPTH          -> 1
      ; ?GL_CLIP_PLANE0                        -> 1
      ; ?GL_CLIP_PLANE1                        -> 1
      ; ?GL_CLIP_PLANE2                        -> 1
      ; ?GL_CLIP_PLANE3                        -> 1
      ; ?GL_CLIP_PLANE4                        -> 1
      ; ?GL_CLIP_PLANE5                        -> 1
      ; ?GL_COLOR_ARRAY                        -> 1
      ; ?GL_COLOR_ARRAY_SIZE                   -> 1
      ; ?GL_COLOR_ARRAY_STRIDE                 -> 1
      ; ?GL_COLOR_ARRAY_TYPE                   -> 1
      ; ?GL_COLOR_CLEAR_VALUE                  -> 4
      ; ?GL_COLOR_LOGIC_OP                     -> 1
      ; ?GL_COLOR_MATERIAL                     -> 1
      ; ?GL_COLOR_MATERIAL_FACE                -> 1
      ; ?GL_COLOR_MATERIAL_PARAMETER           -> 1
      ; ?GL_COLOR_WRITEMASK                    -> 4
    % -ifdef(GL_CONVOLUTION_1D_EXT).
    % ; ?GL_CONVOLUTION_1D_EXT                 -> 1
    % ; ?GL_CONVOLUTION_2D_EXT                 -> 1
    % -endif().
      ; ?GL_CULL_FACE                          -> 1
      ; ?GL_CULL_FACE_MODE                     -> 1
      ; ?GL_CURRENT_COLOR                      -> 4
      ; ?GL_CURRENT_INDEX                      -> 1
      ; ?GL_CURRENT_NORMAL                     -> 3
      ; ?GL_CURRENT_RASTER_COLOR               -> 4
      ; ?GL_CURRENT_RASTER_DISTANCE            -> 1
      ; ?GL_CURRENT_RASTER_INDEX               -> 1
      ; ?GL_CURRENT_RASTER_POSITION            -> 4
      ; ?GL_CURRENT_RASTER_POSITION_VALID      -> 1
      ; ?GL_CURRENT_RASTER_TEXTURE_COORDS      -> 4
      ; ?GL_CURRENT_TEXTURE_COORDS             -> 4
      ; ?GL_DEPTH_BIAS                         -> 1
      ; ?GL_DEPTH_BITS                         -> 1
      ; ?GL_DEPTH_CLEAR_VALUE                  -> 1
      ; ?GL_DEPTH_FUNC                         -> 1
      ; ?GL_DEPTH_RANGE                        -> 2
      ; ?GL_DEPTH_SCALE                        -> 1
      ; ?GL_DEPTH_TEST                         -> 1
      ; ?GL_DEPTH_WRITEMASK                    -> 1
      ; ?GL_DITHER                             -> 1
      ; ?GL_DOUBLEBUFFER                       -> 1
      ; ?GL_DRAW_BUFFER                        -> 1
      ; ?GL_EDGE_FLAG                          -> 1
      ; ?GL_EDGE_FLAG_ARRAY                    -> 1
      ; ?GL_EDGE_FLAG_ARRAY_STRIDE             -> 1
      ; ?GL_FOG                                -> 1
      ; ?GL_FOG_COLOR                          -> 4
      ; ?GL_FOG_DENSITY                        -> 1
      ; ?GL_FOG_END                            -> 1
      ; ?GL_FOG_HINT                           -> 1
      ; ?GL_FOG_INDEX                          -> 1
      ; ?GL_FOG_MODE                           -> 1
      ; ?GL_FOG_START                          -> 1
      ; ?GL_FRONT_FACE                         -> 1
    % ; ?GL_GLOBAL_ALPHA_FACTOR_SUN            -> 1
      ; ?GL_GREEN_BIAS                         -> 1
      ; ?GL_GREEN_BITS                         -> 1
      ; ?GL_GREEN_SCALE                        -> 1
    % -ifdef(GL_HISTOGRAM_EXT).
    % ; ?GL_HISTOGRAM_EXT                      -> 1
    % -endif().
      ; ?GL_INDEX_ARRAY                        -> 1
      ; ?GL_INDEX_ARRAY_STRIDE                 -> 1
      ; ?GL_INDEX_ARRAY_TYPE                   -> 1
      ; ?GL_INDEX_BITS                         -> 1
      ; ?GL_INDEX_CLEAR_VALUE                  -> 1
      ; ?GL_INDEX_LOGIC_OP                     -> 1
      ; ?GL_INDEX_MODE                         -> 1
      ; ?GL_INDEX_OFFSET                       -> 1
      ; ?GL_INDEX_SHIFT                        -> 1
      ; ?GL_INDEX_WRITEMASK                    -> 1
      ; ?GL_LIGHT0                             -> 1
      ; ?GL_LIGHT1                             -> 1
      ; ?GL_LIGHT2                             -> 1
      ; ?GL_LIGHT3                             -> 1
      ; ?GL_LIGHT4                             -> 1
      ; ?GL_LIGHT5                             -> 1
      ; ?GL_LIGHT6                             -> 1
      ; ?GL_LIGHT7                             -> 1
    % ; ?GL_LIGHT8                             -> 1
    % ; ?GL_LIGHT9                             -> 1
      ; ?GL_LIGHTING                           -> 1
      ; ?GL_LIGHT_MODEL_AMBIENT                -> 4
      ; ?GL_LIGHT_MODEL_LOCAL_VIEWER           -> 1
      ; ?GL_LIGHT_MODEL_TWO_SIDE               -> 1
      ; ?GL_LINE_SMOOTH                        -> 1
      ; ?GL_LINE_SMOOTH_HINT                   -> 1
      ; ?GL_LINE_STIPPLE                       -> 1
      ; ?GL_LINE_STIPPLE_PATTERN               -> 1
      ; ?GL_LINE_STIPPLE_REPEAT                -> 1
      ; ?GL_LINE_WIDTH                         -> 1
      ; ?GL_LINE_WIDTH_GRANULARITY             -> 1
      ; ?GL_LINE_WIDTH_RANGE                   -> 2
      ; ?GL_LIST_BASE                          -> 1
      ; ?GL_LIST_INDEX                         -> 1
      ; ?GL_LIST_MODE                          -> 1
      ; ?GL_LOGIC_OP_MODE                      -> 1
      ; ?GL_MAP1_COLOR_4                       -> 1
      ; ?GL_MAP1_GRID_DOMAIN                   -> 2
      ; ?GL_MAP1_GRID_SEGMENTS                 -> 1
      ; ?GL_MAP1_INDEX                         -> 1
      ; ?GL_MAP1_NORMAL                        -> 1
      ; ?GL_MAP1_TEXTURE_COORD_1               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_2               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_3               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_4               -> 1
      ; ?GL_MAP1_VERTEX_3                      -> 1
      ; ?GL_MAP1_VERTEX_4                      -> 1
      ; ?GL_MAP2_COLOR_4                       -> 1
      ; ?GL_MAP2_GRID_DOMAIN                   -> 4
      ; ?GL_MAP2_GRID_SEGMENTS                 -> 2
      ; ?GL_MAP2_INDEX                         -> 1
      ; ?GL_MAP2_NORMAL                        -> 1
      ; ?GL_MAP2_TEXTURE_COORD_1               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_2               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_3               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_4               -> 1
      ; ?GL_MAP2_VERTEX_3                      -> 1
      ; ?GL_MAP2_VERTEX_4                      -> 1
      ; ?GL_MAP_COLOR                          -> 1
      ; ?GL_MAP_STENCIL                        -> 1
      ; ?GL_MATRIX_MODE                        -> 1
      ; ?GL_MAX_3D_TEXTURE_SIZE                -> 1
      ; ?GL_MAX_CLIENT_ATTRIB_STACK_DEPTH      -> 1
      ; ?GL_MAX_ATTRIB_STACK_DEPTH             -> 1
      ; ?GL_MAX_CLIP_PLANES                    -> 1
      ; ?GL_MAX_ELEMENTS_INDICES               -> 1
      ; ?GL_MAX_ELEMENTS_VERTICES              -> 1
      ; ?GL_MAX_EVAL_ORDER                     -> 1
      ; ?GL_MAX_LIGHTS                         -> 1
      ; ?GL_MAX_LIST_NESTING                   -> 1
      ; ?GL_MAX_MODELVIEW_STACK_DEPTH          -> 1
      ; ?GL_MAX_NAME_STACK_DEPTH               -> 1
      ; ?GL_MAX_PIXEL_MAP_TABLE                -> 1
      ; ?GL_MAX_PROJECTION_STACK_DEPTH         -> 1
      ; ?GL_MAX_TEXTURE_SIZE                   -> 1
      ; ?GL_MAX_TEXTURE_STACK_DEPTH            -> 1
      ; ?GL_MAX_VERTEX_UNITS_ARB               -> 1
      ; ?GL_MAX_VIEWPORT_DIMS                  -> 2
      ; ?GL_MODELVIEW_MATRIX                   -> 16
    % ; ?GL_MINMAX_EXT                         -> 1
      ; ?GL_MODELVIEW_STACK_DEPTH              -> 1
      ; ?GL_NAME_STACK_DEPTH                   -> 1
      ; ?GL_NORMAL_ARRAY                       -> 1
      ; ?GL_NORMAL_ARRAY_STRIDE                -> 1
      ; ?GL_NORMAL_ARRAY_TYPE                  -> 1
      ; ?GL_NORMALIZE                          -> 1
      ; ?GL_NUM_COMPRESSED_TEXTURE_FORMATS     -> 1
      ; ?GL_PACK_ALIGNMENT                     -> 1
      ; ?GL_PACK_LSB_FIRST                     -> 1
      ; ?GL_PACK_ROW_LENGTH                    -> 1
      ; ?GL_PACK_SKIP_PIXELS                   -> 1
      ; ?GL_PACK_SKIP_ROWS                     -> 1
      ; ?GL_PACK_SWAP_BYTES                    -> 1
      ; ?GL_PERSPECTIVE_CORRECTION_HINT        -> 1
      ; ?GL_PIXEL_MAP_A_TO_A_SIZE              -> 1
      ; ?GL_PIXEL_MAP_B_TO_B_SIZE              -> 1
      ; ?GL_PIXEL_MAP_G_TO_G_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_A_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_B_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_G_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_I_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_R_SIZE              -> 1
      ; ?GL_PIXEL_MAP_R_TO_R_SIZE              -> 1
      ; ?GL_PIXEL_MAP_S_TO_S_SIZE              -> 1
      ; ?GL_POINT_SIZE                         -> 1
      ; ?GL_POINT_SIZE_GRANULARITY             -> 1
      ; ?GL_POINT_SIZE_RANGE                   -> 2
      ; ?GL_POINT_SMOOTH                       -> 1
      ; ?GL_POINT_SMOOTH_HINT                  -> 1
      ; ?GL_POLYGON_MODE                       -> 2
      ; ?GL_POLYGON_OFFSET_FACTOR              -> 1
      ; ?GL_POLYGON_OFFSET_UNITS               -> 1
      ; ?GL_POLYGON_OFFSET_FILL                -> 1
      ; ?GL_POLYGON_OFFSET_LINE                -> 1
      ; ?GL_POLYGON_OFFSET_POINT               -> 1
    % ; ?GL_POLYGON_OFFSET_BIAS_EXT            -> 1
    % ; ?GL_POLYGON_OFFSET_FACTOR_EXT          -> 1
    % ; ?GL_POLYGON_OFFSET_EXT                 -> 1
      ; ?GL_POLYGON_SMOOTH                     -> 1
      ; ?GL_POLYGON_SMOOTH_HINT                -> 1
      ; ?GL_POLYGON_STIPPLE                    -> 1
    % ; ?GL_POST_CONVOLUTION_ALPHA_BIAS_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_BLUE_BIAS_EXT     -> 1
    % ; ?GL_POST_CONVOLUTION_GREEN_BIAS_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_RED_BIAS_EXT      -> 1
    % ; ?GL_POST_CONVOLUTION_ALPHA_SCALE_EXT   -> 1
    % ; ?GL_POST_CONVOLUTION_BLUE_SCALE_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_GREEN_SCALE_EXT   -> 1
    % ; ?GL_POST_CONVOLUTION_RED_SCALE_EXT     -> 1
      ; ?GL_PROJECTION_MATRIX                  -> 16
      ; ?GL_PROJECTION_STACK_DEPTH             -> 1
      ; ?GL_READ_BUFFER                        -> 1
      ; ?GL_RED_BIAS                           -> 1
      ; ?GL_RED_BITS                           -> 1
      ; ?GL_RED_SCALE                          -> 1
      ; ?GL_RENDER_MODE                        -> 1
      ; ?GL_RGBA_MODE                          -> 1
      ; ?GL_SCISSOR_BOX                        -> 4
      ; ?GL_SCISSOR_TEST                       -> 1
    % ; ?GL_SEPARABLE_2D_EXT                   -> 1
      ; ?GL_SHADE_MODEL                        -> 1
      ; ?GL_STENCIL_BITS                       -> 1
      ; ?GL_STENCIL_CLEAR_VALUE                -> 1
      ; ?GL_STENCIL_FAIL                       -> 1
      ; ?GL_STENCIL_FUNC                       -> 1
      ; ?GL_STENCIL_PASS_DEPTH_FAIL            -> 1
      ; ?GL_STENCIL_PASS_DEPTH_PASS            -> 1
      ; ?GL_STENCIL_REF                        -> 1
      ; ?GL_STENCIL_TEST                       -> 1
      ; ?GL_STENCIL_VALUE_MASK                 -> 1
      ; ?GL_STENCIL_WRITEMASK                  -> 1
      ; ?GL_STEREO                             -> 1
      ; ?GL_SUBPIXEL_BITS                      -> 1
      ; ?GL_TEXTURE_1D                         -> 1
    % ; ?GL_TEXTURE_1D_BINDING                 -> 1
      ; ?GL_TEXTURE_2D                         -> 1
    % ; ?GL_TEXTURE_2D_BINDING                 -> 1
      ; ?GL_TEXTURE_COORD_ARRAY                -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_SIZE           -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_STRIDE         -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_TYPE           -> 1
      ; ?GL_TEXTURE_GEN_Q                      -> 1
      ; ?GL_TEXTURE_GEN_R                      -> 1
      ; ?GL_TEXTURE_GEN_S                      -> 1
      ; ?GL_TEXTURE_GEN_T                      -> 1
      ; ?GL_TEXTURE_MATRIX                     -> 16
      ; ?GL_TEXTURE_STACK_DEPTH                -> 1
      ; ?GL_UNPACK_ALIGNMENT                   -> 1
      ; ?GL_UNPACK_LSB_FIRST                   -> 1
      ; ?GL_UNPACK_ROW_LENGTH                  -> 1
      ; ?GL_UNPACK_SKIP_PIXELS                 -> 1
      ; ?GL_UNPACK_SKIP_ROWS                   -> 1
    % ; ?GL_UNPACK_CONSTANT_DATA_SUNX          -> 1
      ; ?GL_UNPACK_SWAP_BYTES                  -> 1
      ; ?GL_VERTEX_ARRAY                       -> 1
      ; ?GL_VERTEX_ARRAY_SIZE                  -> 1
      ; ?GL_VERTEX_ARRAY_STRIDE                -> 1
      ; ?GL_VERTEX_ARRAY_TYPE                  -> 1
      ; ?GL_VIEWPORT                           -> 4
      ; ?GL_ZOOM_X                             -> 1
      ; ?GL_ZOOM_Y                             -> 1
      ; ?GL_MAX_TEXTURE_UNITS                  -> 1
   %%    Unknown length use 16 so far the greatest known return value
      ; _Else                                  -> 16                  
      end
  , ParamsBump
    = 16 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_BYTE_SIZE
      , _:ParamsBump/binary-unit:?GL_BYTE_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_BYTE
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getClipPlane
%% Args:       Plane
%% Returns:    [Equation]
%% C-API func: void glGetClipPlane(GLenum plane, GLdouble* equation)

getClipPlane(Plane)
 -> Bin
    = call
      ( ?glGetClipPlane
      , <<Plane:?GLenum
        >>
      )
  , case
      Bin
    of 
      <<Equation:4/binary-unit:?GL_DOUBLE_SIZE
      >>
        -> bin2list
           ( 4
           , ?GL_DOUBLE
           , Equation
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getDoublev
%% Args:       Pname
%% Returns:    [Params]
%% C-API func: void glGetDoublev(GLenum pname, GLdouble* params)

getDoublev(Pname)
 -> Bin
    = call
      ( ?glGetDoublev
      , <<Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_ACCUM_ALPHA_BITS                   -> 1
      ; ?GL_ACCUM_BLUE_BITS                    -> 1
      ; ?GL_ACCUM_CLEAR_VALUE                  -> 4
      ; ?GL_ACCUM_GREEN_BITS                   -> 1
      ; ?GL_ACCUM_RED_BITS                     -> 1
      ; ?GL_ALPHA_BIAS                         -> 1
      ; ?GL_ALPHA_BITS                         -> 1
      ; ?GL_ALPHA_SCALE                        -> 1
      ; ?GL_ALPHA_TEST                         -> 1
      ; ?GL_ALPHA_TEST_FUNC                    -> 1
      ; ?GL_ALPHA_TEST_REF                     -> 1
      ; ?GL_ATTRIB_STACK_DEPTH                 -> 1
      ; ?GL_AUTO_NORMAL                        -> 1
      ; ?GL_AUX_BUFFERS                        -> 1
      ; ?GL_BLEND                              -> 1
      ; ?GL_BLEND_DST                          -> 1
      ; ?GL_BLEND_SRC                          -> 1
      ; ?GL_BLUE_BIAS                          -> 1
      ; ?GL_BLUE_BITS                          -> 1
      ; ?GL_BLUE_SCALE                         -> 1
      ; ?GL_CLIENT_ATTRIB_STACK_DEPTH          -> 1
      ; ?GL_CLIP_PLANE0                        -> 1
      ; ?GL_CLIP_PLANE1                        -> 1
      ; ?GL_CLIP_PLANE2                        -> 1
      ; ?GL_CLIP_PLANE3                        -> 1
      ; ?GL_CLIP_PLANE4                        -> 1
      ; ?GL_CLIP_PLANE5                        -> 1
      ; ?GL_COLOR_ARRAY                        -> 1
      ; ?GL_COLOR_ARRAY_SIZE                   -> 1
      ; ?GL_COLOR_ARRAY_STRIDE                 -> 1
      ; ?GL_COLOR_ARRAY_TYPE                   -> 1
      ; ?GL_COLOR_CLEAR_VALUE                  -> 4
      ; ?GL_COLOR_LOGIC_OP                     -> 1
      ; ?GL_COLOR_MATERIAL                     -> 1
      ; ?GL_COLOR_MATERIAL_FACE                -> 1
      ; ?GL_COLOR_MATERIAL_PARAMETER           -> 1
      ; ?GL_COLOR_WRITEMASK                    -> 4
    % -ifdef(GL_CONVOLUTION_1D_EXT).
    % ; ?GL_CONVOLUTION_1D_EXT                 -> 1
    % ; ?GL_CONVOLUTION_2D_EXT                 -> 1
    % -endif().
      ; ?GL_CULL_FACE                          -> 1
      ; ?GL_CULL_FACE_MODE                     -> 1
      ; ?GL_CURRENT_COLOR                      -> 4
      ; ?GL_CURRENT_INDEX                      -> 1
      ; ?GL_CURRENT_NORMAL                     -> 3
      ; ?GL_CURRENT_RASTER_COLOR               -> 4
      ; ?GL_CURRENT_RASTER_DISTANCE            -> 1
      ; ?GL_CURRENT_RASTER_INDEX               -> 1
      ; ?GL_CURRENT_RASTER_POSITION            -> 4
      ; ?GL_CURRENT_RASTER_POSITION_VALID      -> 1
      ; ?GL_CURRENT_RASTER_TEXTURE_COORDS      -> 4
      ; ?GL_CURRENT_TEXTURE_COORDS             -> 4
      ; ?GL_DEPTH_BIAS                         -> 1
      ; ?GL_DEPTH_BITS                         -> 1
      ; ?GL_DEPTH_CLEAR_VALUE                  -> 1
      ; ?GL_DEPTH_FUNC                         -> 1
      ; ?GL_DEPTH_RANGE                        -> 2
      ; ?GL_DEPTH_SCALE                        -> 1
      ; ?GL_DEPTH_TEST                         -> 1
      ; ?GL_DEPTH_WRITEMASK                    -> 1
      ; ?GL_DITHER                             -> 1
      ; ?GL_DOUBLEBUFFER                       -> 1
      ; ?GL_DRAW_BUFFER                        -> 1
      ; ?GL_EDGE_FLAG                          -> 1
      ; ?GL_EDGE_FLAG_ARRAY                    -> 1
      ; ?GL_EDGE_FLAG_ARRAY_STRIDE             -> 1
      ; ?GL_FOG                                -> 1
      ; ?GL_FOG_COLOR                          -> 4
      ; ?GL_FOG_DENSITY                        -> 1
      ; ?GL_FOG_END                            -> 1
      ; ?GL_FOG_HINT                           -> 1
      ; ?GL_FOG_INDEX                          -> 1
      ; ?GL_FOG_MODE                           -> 1
      ; ?GL_FOG_START                          -> 1
      ; ?GL_FRONT_FACE                         -> 1
    % ; ?GL_GLOBAL_ALPHA_FACTOR_SUN            -> 1
      ; ?GL_GREEN_BIAS                         -> 1
      ; ?GL_GREEN_BITS                         -> 1
      ; ?GL_GREEN_SCALE                        -> 1
    % -ifdef(GL_HISTOGRAM_EXT).
    % ; ?GL_HISTOGRAM_EXT                      -> 1
    % -endif().
      ; ?GL_INDEX_ARRAY                        -> 1
      ; ?GL_INDEX_ARRAY_STRIDE                 -> 1
      ; ?GL_INDEX_ARRAY_TYPE                   -> 1
      ; ?GL_INDEX_BITS                         -> 1
      ; ?GL_INDEX_CLEAR_VALUE                  -> 1
      ; ?GL_INDEX_LOGIC_OP                     -> 1
      ; ?GL_INDEX_MODE                         -> 1
      ; ?GL_INDEX_OFFSET                       -> 1
      ; ?GL_INDEX_SHIFT                        -> 1
      ; ?GL_INDEX_WRITEMASK                    -> 1
      ; ?GL_LIGHT0                             -> 1
      ; ?GL_LIGHT1                             -> 1
      ; ?GL_LIGHT2                             -> 1
      ; ?GL_LIGHT3                             -> 1
      ; ?GL_LIGHT4                             -> 1
      ; ?GL_LIGHT5                             -> 1
      ; ?GL_LIGHT6                             -> 1
      ; ?GL_LIGHT7                             -> 1
    % ; ?GL_LIGHT8                             -> 1
    % ; ?GL_LIGHT9                             -> 1
      ; ?GL_LIGHTING                           -> 1
      ; ?GL_LIGHT_MODEL_AMBIENT                -> 4
      ; ?GL_LIGHT_MODEL_LOCAL_VIEWER           -> 1
      ; ?GL_LIGHT_MODEL_TWO_SIDE               -> 1
      ; ?GL_LINE_SMOOTH                        -> 1
      ; ?GL_LINE_SMOOTH_HINT                   -> 1
      ; ?GL_LINE_STIPPLE                       -> 1
      ; ?GL_LINE_STIPPLE_PATTERN               -> 1
      ; ?GL_LINE_STIPPLE_REPEAT                -> 1
      ; ?GL_LINE_WIDTH                         -> 1
      ; ?GL_LINE_WIDTH_GRANULARITY             -> 1
      ; ?GL_LINE_WIDTH_RANGE                   -> 2
      ; ?GL_LIST_BASE                          -> 1
      ; ?GL_LIST_INDEX                         -> 1
      ; ?GL_LIST_MODE                          -> 1
      ; ?GL_LOGIC_OP_MODE                      -> 1
      ; ?GL_MAP1_COLOR_4                       -> 1
      ; ?GL_MAP1_GRID_DOMAIN                   -> 2
      ; ?GL_MAP1_GRID_SEGMENTS                 -> 1
      ; ?GL_MAP1_INDEX                         -> 1
      ; ?GL_MAP1_NORMAL                        -> 1
      ; ?GL_MAP1_TEXTURE_COORD_1               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_2               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_3               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_4               -> 1
      ; ?GL_MAP1_VERTEX_3                      -> 1
      ; ?GL_MAP1_VERTEX_4                      -> 1
      ; ?GL_MAP2_COLOR_4                       -> 1
      ; ?GL_MAP2_GRID_DOMAIN                   -> 4
      ; ?GL_MAP2_GRID_SEGMENTS                 -> 2
      ; ?GL_MAP2_INDEX                         -> 1
      ; ?GL_MAP2_NORMAL                        -> 1
      ; ?GL_MAP2_TEXTURE_COORD_1               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_2               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_3               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_4               -> 1
      ; ?GL_MAP2_VERTEX_3                      -> 1
      ; ?GL_MAP2_VERTEX_4                      -> 1
      ; ?GL_MAP_COLOR                          -> 1
      ; ?GL_MAP_STENCIL                        -> 1
      ; ?GL_MATRIX_MODE                        -> 1
      ; ?GL_MAX_3D_TEXTURE_SIZE                -> 1
      ; ?GL_MAX_CLIENT_ATTRIB_STACK_DEPTH      -> 1
      ; ?GL_MAX_ATTRIB_STACK_DEPTH             -> 1
      ; ?GL_MAX_CLIP_PLANES                    -> 1
      ; ?GL_MAX_ELEMENTS_INDICES               -> 1
      ; ?GL_MAX_ELEMENTS_VERTICES              -> 1
      ; ?GL_MAX_EVAL_ORDER                     -> 1
      ; ?GL_MAX_LIGHTS                         -> 1
      ; ?GL_MAX_LIST_NESTING                   -> 1
      ; ?GL_MAX_MODELVIEW_STACK_DEPTH          -> 1
      ; ?GL_MAX_NAME_STACK_DEPTH               -> 1
      ; ?GL_MAX_PIXEL_MAP_TABLE                -> 1
      ; ?GL_MAX_PROJECTION_STACK_DEPTH         -> 1
      ; ?GL_MAX_TEXTURE_SIZE                   -> 1
      ; ?GL_MAX_TEXTURE_STACK_DEPTH            -> 1
      ; ?GL_MAX_VERTEX_UNITS_ARB               -> 1
      ; ?GL_MAX_VIEWPORT_DIMS                  -> 2
      ; ?GL_MODELVIEW_MATRIX                   -> 16
    % ; ?GL_MINMAX_EXT                         -> 1
      ; ?GL_MODELVIEW_STACK_DEPTH              -> 1
      ; ?GL_NAME_STACK_DEPTH                   -> 1
      ; ?GL_NORMAL_ARRAY                       -> 1
      ; ?GL_NORMAL_ARRAY_STRIDE                -> 1
      ; ?GL_NORMAL_ARRAY_TYPE                  -> 1
      ; ?GL_NORMALIZE                          -> 1
      ; ?GL_NUM_COMPRESSED_TEXTURE_FORMATS     -> 1
      ; ?GL_PACK_ALIGNMENT                     -> 1
      ; ?GL_PACK_LSB_FIRST                     -> 1
      ; ?GL_PACK_ROW_LENGTH                    -> 1
      ; ?GL_PACK_SKIP_PIXELS                   -> 1
      ; ?GL_PACK_SKIP_ROWS                     -> 1
      ; ?GL_PACK_SWAP_BYTES                    -> 1
      ; ?GL_PERSPECTIVE_CORRECTION_HINT        -> 1
      ; ?GL_PIXEL_MAP_A_TO_A_SIZE              -> 1
      ; ?GL_PIXEL_MAP_B_TO_B_SIZE              -> 1
      ; ?GL_PIXEL_MAP_G_TO_G_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_A_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_B_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_G_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_I_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_R_SIZE              -> 1
      ; ?GL_PIXEL_MAP_R_TO_R_SIZE              -> 1
      ; ?GL_PIXEL_MAP_S_TO_S_SIZE              -> 1
      ; ?GL_POINT_SIZE                         -> 1
      ; ?GL_POINT_SIZE_GRANULARITY             -> 1
      ; ?GL_POINT_SIZE_RANGE                   -> 2
      ; ?GL_POINT_SMOOTH                       -> 1
      ; ?GL_POINT_SMOOTH_HINT                  -> 1
      ; ?GL_POLYGON_MODE                       -> 2
      ; ?GL_POLYGON_OFFSET_FACTOR              -> 1
      ; ?GL_POLYGON_OFFSET_UNITS               -> 1
      ; ?GL_POLYGON_OFFSET_FILL                -> 1
      ; ?GL_POLYGON_OFFSET_LINE                -> 1
      ; ?GL_POLYGON_OFFSET_POINT               -> 1
    % ; ?GL_POLYGON_OFFSET_BIAS_EXT            -> 1
    % ; ?GL_POLYGON_OFFSET_FACTOR_EXT          -> 1
    % ; ?GL_POLYGON_OFFSET_EXT                 -> 1
      ; ?GL_POLYGON_SMOOTH                     -> 1
      ; ?GL_POLYGON_SMOOTH_HINT                -> 1
      ; ?GL_POLYGON_STIPPLE                    -> 1
    % ; ?GL_POST_CONVOLUTION_ALPHA_BIAS_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_BLUE_BIAS_EXT     -> 1
    % ; ?GL_POST_CONVOLUTION_GREEN_BIAS_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_RED_BIAS_EXT      -> 1
    % ; ?GL_POST_CONVOLUTION_ALPHA_SCALE_EXT   -> 1
    % ; ?GL_POST_CONVOLUTION_BLUE_SCALE_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_GREEN_SCALE_EXT   -> 1
    % ; ?GL_POST_CONVOLUTION_RED_SCALE_EXT     -> 1
      ; ?GL_PROJECTION_MATRIX                  -> 16
      ; ?GL_PROJECTION_STACK_DEPTH             -> 1
      ; ?GL_READ_BUFFER                        -> 1
      ; ?GL_RED_BIAS                           -> 1
      ; ?GL_RED_BITS                           -> 1
      ; ?GL_RED_SCALE                          -> 1
      ; ?GL_RENDER_MODE                        -> 1
      ; ?GL_RGBA_MODE                          -> 1
      ; ?GL_SCISSOR_BOX                        -> 4
      ; ?GL_SCISSOR_TEST                       -> 1
    % ; ?GL_SEPARABLE_2D_EXT                   -> 1
      ; ?GL_SHADE_MODEL                        -> 1
      ; ?GL_STENCIL_BITS                       -> 1
      ; ?GL_STENCIL_CLEAR_VALUE                -> 1
      ; ?GL_STENCIL_FAIL                       -> 1
      ; ?GL_STENCIL_FUNC                       -> 1
      ; ?GL_STENCIL_PASS_DEPTH_FAIL            -> 1
      ; ?GL_STENCIL_PASS_DEPTH_PASS            -> 1
      ; ?GL_STENCIL_REF                        -> 1
      ; ?GL_STENCIL_TEST                       -> 1
      ; ?GL_STENCIL_VALUE_MASK                 -> 1
      ; ?GL_STENCIL_WRITEMASK                  -> 1
      ; ?GL_STEREO                             -> 1
      ; ?GL_SUBPIXEL_BITS                      -> 1
      ; ?GL_TEXTURE_1D                         -> 1
    % ; ?GL_TEXTURE_1D_BINDING                 -> 1
      ; ?GL_TEXTURE_2D                         -> 1
    % ; ?GL_TEXTURE_2D_BINDING                 -> 1
      ; ?GL_TEXTURE_COORD_ARRAY                -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_SIZE           -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_STRIDE         -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_TYPE           -> 1
      ; ?GL_TEXTURE_GEN_Q                      -> 1
      ; ?GL_TEXTURE_GEN_R                      -> 1
      ; ?GL_TEXTURE_GEN_S                      -> 1
      ; ?GL_TEXTURE_GEN_T                      -> 1
      ; ?GL_TEXTURE_MATRIX                     -> 16
      ; ?GL_TEXTURE_STACK_DEPTH                -> 1
      ; ?GL_UNPACK_ALIGNMENT                   -> 1
      ; ?GL_UNPACK_LSB_FIRST                   -> 1
      ; ?GL_UNPACK_ROW_LENGTH                  -> 1
      ; ?GL_UNPACK_SKIP_PIXELS                 -> 1
      ; ?GL_UNPACK_SKIP_ROWS                   -> 1
    % ; ?GL_UNPACK_CONSTANT_DATA_SUNX          -> 1
      ; ?GL_UNPACK_SWAP_BYTES                  -> 1
      ; ?GL_VERTEX_ARRAY                       -> 1
      ; ?GL_VERTEX_ARRAY_SIZE                  -> 1
      ; ?GL_VERTEX_ARRAY_STRIDE                -> 1
      ; ?GL_VERTEX_ARRAY_TYPE                  -> 1
      ; ?GL_VIEWPORT                           -> 4
      ; ?GL_ZOOM_X                             -> 1
      ; ?GL_ZOOM_Y                             -> 1
      ; ?GL_MAX_TEXTURE_UNITS                  -> 1
   %%    Unknown length use 16 so far the greatest known return value
      ; _Else                                  -> 16                  
      end
  , ParamsBump
    = 16 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_DOUBLE_SIZE
      , _:ParamsBump/binary-unit:?GL_DOUBLE_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_DOUBLE
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getError
%% Args:       none
%% Returns:    ?GL_INT
%% C-API func: GLenum glGetError(void)

getError()
 -> Bin
    = call
      ( ?glGetError
      , [
        ]
      )
  , case
      Bin
    of 
      <<Ret:?GLenum
      >>
        -> Ret
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getFloatv
%% Args:       Pname
%% Returns:    [Params]
%% C-API func: void glGetFloatv(GLenum pname, GLfloat* params)

getFloatv(Pname)
 -> Bin
    = call
      ( ?glGetFloatv
      , <<Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_ACCUM_ALPHA_BITS                   -> 1
      ; ?GL_ACCUM_BLUE_BITS                    -> 1
      ; ?GL_ACCUM_CLEAR_VALUE                  -> 4
      ; ?GL_ACCUM_GREEN_BITS                   -> 1
      ; ?GL_ACCUM_RED_BITS                     -> 1
      ; ?GL_ALPHA_BIAS                         -> 1
      ; ?GL_ALPHA_BITS                         -> 1
      ; ?GL_ALPHA_SCALE                        -> 1
      ; ?GL_ALPHA_TEST                         -> 1
      ; ?GL_ALPHA_TEST_FUNC                    -> 1
      ; ?GL_ALPHA_TEST_REF                     -> 1
      ; ?GL_ATTRIB_STACK_DEPTH                 -> 1
      ; ?GL_AUTO_NORMAL                        -> 1
      ; ?GL_AUX_BUFFERS                        -> 1
      ; ?GL_BLEND                              -> 1
      ; ?GL_BLEND_DST                          -> 1
      ; ?GL_BLEND_SRC                          -> 1
      ; ?GL_BLUE_BIAS                          -> 1
      ; ?GL_BLUE_BITS                          -> 1
      ; ?GL_BLUE_SCALE                         -> 1
      ; ?GL_CLIENT_ATTRIB_STACK_DEPTH          -> 1
      ; ?GL_CLIP_PLANE0                        -> 1
      ; ?GL_CLIP_PLANE1                        -> 1
      ; ?GL_CLIP_PLANE2                        -> 1
      ; ?GL_CLIP_PLANE3                        -> 1
      ; ?GL_CLIP_PLANE4                        -> 1
      ; ?GL_CLIP_PLANE5                        -> 1
      ; ?GL_COLOR_ARRAY                        -> 1
      ; ?GL_COLOR_ARRAY_SIZE                   -> 1
      ; ?GL_COLOR_ARRAY_STRIDE                 -> 1
      ; ?GL_COLOR_ARRAY_TYPE                   -> 1
      ; ?GL_COLOR_CLEAR_VALUE                  -> 4
      ; ?GL_COLOR_LOGIC_OP                     -> 1
      ; ?GL_COLOR_MATERIAL                     -> 1
      ; ?GL_COLOR_MATERIAL_FACE                -> 1
      ; ?GL_COLOR_MATERIAL_PARAMETER           -> 1
      ; ?GL_COLOR_WRITEMASK                    -> 4
    % -ifdef(GL_CONVOLUTION_1D_EXT).
    % ; ?GL_CONVOLUTION_1D_EXT                 -> 1
    % ; ?GL_CONVOLUTION_2D_EXT                 -> 1
    % -endif().
      ; ?GL_CULL_FACE                          -> 1
      ; ?GL_CULL_FACE_MODE                     -> 1
      ; ?GL_CURRENT_COLOR                      -> 4
      ; ?GL_CURRENT_INDEX                      -> 1
      ; ?GL_CURRENT_NORMAL                     -> 3
      ; ?GL_CURRENT_RASTER_COLOR               -> 4
      ; ?GL_CURRENT_RASTER_DISTANCE            -> 1
      ; ?GL_CURRENT_RASTER_INDEX               -> 1
      ; ?GL_CURRENT_RASTER_POSITION            -> 4
      ; ?GL_CURRENT_RASTER_POSITION_VALID      -> 1
      ; ?GL_CURRENT_RASTER_TEXTURE_COORDS      -> 4
      ; ?GL_CURRENT_TEXTURE_COORDS             -> 4
      ; ?GL_DEPTH_BIAS                         -> 1
      ; ?GL_DEPTH_BITS                         -> 1
      ; ?GL_DEPTH_CLEAR_VALUE                  -> 1
      ; ?GL_DEPTH_FUNC                         -> 1
      ; ?GL_DEPTH_RANGE                        -> 2
      ; ?GL_DEPTH_SCALE                        -> 1
      ; ?GL_DEPTH_TEST                         -> 1
      ; ?GL_DEPTH_WRITEMASK                    -> 1
      ; ?GL_DITHER                             -> 1
      ; ?GL_DOUBLEBUFFER                       -> 1
      ; ?GL_DRAW_BUFFER                        -> 1
      ; ?GL_EDGE_FLAG                          -> 1
      ; ?GL_EDGE_FLAG_ARRAY                    -> 1
      ; ?GL_EDGE_FLAG_ARRAY_STRIDE             -> 1
      ; ?GL_FOG                                -> 1
      ; ?GL_FOG_COLOR                          -> 4
      ; ?GL_FOG_DENSITY                        -> 1
      ; ?GL_FOG_END                            -> 1
      ; ?GL_FOG_HINT                           -> 1
      ; ?GL_FOG_INDEX                          -> 1
      ; ?GL_FOG_MODE                           -> 1
      ; ?GL_FOG_START                          -> 1
      ; ?GL_FRONT_FACE                         -> 1
    % ; ?GL_GLOBAL_ALPHA_FACTOR_SUN            -> 1
      ; ?GL_GREEN_BIAS                         -> 1
      ; ?GL_GREEN_BITS                         -> 1
      ; ?GL_GREEN_SCALE                        -> 1
    % -ifdef(GL_HISTOGRAM_EXT).
    % ; ?GL_HISTOGRAM_EXT                      -> 1
    % -endif().
      ; ?GL_INDEX_ARRAY                        -> 1
      ; ?GL_INDEX_ARRAY_STRIDE                 -> 1
      ; ?GL_INDEX_ARRAY_TYPE                   -> 1
      ; ?GL_INDEX_BITS                         -> 1
      ; ?GL_INDEX_CLEAR_VALUE                  -> 1
      ; ?GL_INDEX_LOGIC_OP                     -> 1
      ; ?GL_INDEX_MODE                         -> 1
      ; ?GL_INDEX_OFFSET                       -> 1
      ; ?GL_INDEX_SHIFT                        -> 1
      ; ?GL_INDEX_WRITEMASK                    -> 1
      ; ?GL_LIGHT0                             -> 1
      ; ?GL_LIGHT1                             -> 1
      ; ?GL_LIGHT2                             -> 1
      ; ?GL_LIGHT3                             -> 1
      ; ?GL_LIGHT4                             -> 1
      ; ?GL_LIGHT5                             -> 1
      ; ?GL_LIGHT6                             -> 1
      ; ?GL_LIGHT7                             -> 1
    % ; ?GL_LIGHT8                             -> 1
    % ; ?GL_LIGHT9                             -> 1
      ; ?GL_LIGHTING                           -> 1
      ; ?GL_LIGHT_MODEL_AMBIENT                -> 4
      ; ?GL_LIGHT_MODEL_LOCAL_VIEWER           -> 1
      ; ?GL_LIGHT_MODEL_TWO_SIDE               -> 1
      ; ?GL_LINE_SMOOTH                        -> 1
      ; ?GL_LINE_SMOOTH_HINT                   -> 1
      ; ?GL_LINE_STIPPLE                       -> 1
      ; ?GL_LINE_STIPPLE_PATTERN               -> 1
      ; ?GL_LINE_STIPPLE_REPEAT                -> 1
      ; ?GL_LINE_WIDTH                         -> 1
      ; ?GL_LINE_WIDTH_GRANULARITY             -> 1
      ; ?GL_LINE_WIDTH_RANGE                   -> 2
      ; ?GL_LIST_BASE                          -> 1
      ; ?GL_LIST_INDEX                         -> 1
      ; ?GL_LIST_MODE                          -> 1
      ; ?GL_LOGIC_OP_MODE                      -> 1
      ; ?GL_MAP1_COLOR_4                       -> 1
      ; ?GL_MAP1_GRID_DOMAIN                   -> 2
      ; ?GL_MAP1_GRID_SEGMENTS                 -> 1
      ; ?GL_MAP1_INDEX                         -> 1
      ; ?GL_MAP1_NORMAL                        -> 1
      ; ?GL_MAP1_TEXTURE_COORD_1               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_2               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_3               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_4               -> 1
      ; ?GL_MAP1_VERTEX_3                      -> 1
      ; ?GL_MAP1_VERTEX_4                      -> 1
      ; ?GL_MAP2_COLOR_4                       -> 1
      ; ?GL_MAP2_GRID_DOMAIN                   -> 4
      ; ?GL_MAP2_GRID_SEGMENTS                 -> 2
      ; ?GL_MAP2_INDEX                         -> 1
      ; ?GL_MAP2_NORMAL                        -> 1
      ; ?GL_MAP2_TEXTURE_COORD_1               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_2               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_3               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_4               -> 1
      ; ?GL_MAP2_VERTEX_3                      -> 1
      ; ?GL_MAP2_VERTEX_4                      -> 1
      ; ?GL_MAP_COLOR                          -> 1
      ; ?GL_MAP_STENCIL                        -> 1
      ; ?GL_MATRIX_MODE                        -> 1
      ; ?GL_MAX_3D_TEXTURE_SIZE                -> 1
      ; ?GL_MAX_CLIENT_ATTRIB_STACK_DEPTH      -> 1
      ; ?GL_MAX_ATTRIB_STACK_DEPTH             -> 1
      ; ?GL_MAX_CLIP_PLANES                    -> 1
      ; ?GL_MAX_ELEMENTS_INDICES               -> 1
      ; ?GL_MAX_ELEMENTS_VERTICES              -> 1
      ; ?GL_MAX_EVAL_ORDER                     -> 1
      ; ?GL_MAX_LIGHTS                         -> 1
      ; ?GL_MAX_LIST_NESTING                   -> 1
      ; ?GL_MAX_MODELVIEW_STACK_DEPTH          -> 1
      ; ?GL_MAX_NAME_STACK_DEPTH               -> 1
      ; ?GL_MAX_PIXEL_MAP_TABLE                -> 1
      ; ?GL_MAX_PROJECTION_STACK_DEPTH         -> 1
      ; ?GL_MAX_TEXTURE_SIZE                   -> 1
      ; ?GL_MAX_TEXTURE_STACK_DEPTH            -> 1
      ; ?GL_MAX_VERTEX_UNITS_ARB               -> 1
      ; ?GL_MAX_VIEWPORT_DIMS                  -> 2
      ; ?GL_MODELVIEW_MATRIX                   -> 16
    % ; ?GL_MINMAX_EXT                         -> 1
      ; ?GL_MODELVIEW_STACK_DEPTH              -> 1
      ; ?GL_NAME_STACK_DEPTH                   -> 1
      ; ?GL_NORMAL_ARRAY                       -> 1
      ; ?GL_NORMAL_ARRAY_STRIDE                -> 1
      ; ?GL_NORMAL_ARRAY_TYPE                  -> 1
      ; ?GL_NORMALIZE                          -> 1
      ; ?GL_NUM_COMPRESSED_TEXTURE_FORMATS     -> 1
      ; ?GL_PACK_ALIGNMENT                     -> 1
      ; ?GL_PACK_LSB_FIRST                     -> 1
      ; ?GL_PACK_ROW_LENGTH                    -> 1
      ; ?GL_PACK_SKIP_PIXELS                   -> 1
      ; ?GL_PACK_SKIP_ROWS                     -> 1
      ; ?GL_PACK_SWAP_BYTES                    -> 1
      ; ?GL_PERSPECTIVE_CORRECTION_HINT        -> 1
      ; ?GL_PIXEL_MAP_A_TO_A_SIZE              -> 1
      ; ?GL_PIXEL_MAP_B_TO_B_SIZE              -> 1
      ; ?GL_PIXEL_MAP_G_TO_G_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_A_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_B_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_G_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_I_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_R_SIZE              -> 1
      ; ?GL_PIXEL_MAP_R_TO_R_SIZE              -> 1
      ; ?GL_PIXEL_MAP_S_TO_S_SIZE              -> 1
      ; ?GL_POINT_SIZE                         -> 1
      ; ?GL_POINT_SIZE_GRANULARITY             -> 1
      ; ?GL_POINT_SIZE_RANGE                   -> 2
      ; ?GL_POINT_SMOOTH                       -> 1
      ; ?GL_POINT_SMOOTH_HINT                  -> 1
      ; ?GL_POLYGON_MODE                       -> 2
      ; ?GL_POLYGON_OFFSET_FACTOR              -> 1
      ; ?GL_POLYGON_OFFSET_UNITS               -> 1
      ; ?GL_POLYGON_OFFSET_FILL                -> 1
      ; ?GL_POLYGON_OFFSET_LINE                -> 1
      ; ?GL_POLYGON_OFFSET_POINT               -> 1
    % ; ?GL_POLYGON_OFFSET_BIAS_EXT            -> 1
    % ; ?GL_POLYGON_OFFSET_FACTOR_EXT          -> 1
    % ; ?GL_POLYGON_OFFSET_EXT                 -> 1
      ; ?GL_POLYGON_SMOOTH                     -> 1
      ; ?GL_POLYGON_SMOOTH_HINT                -> 1
      ; ?GL_POLYGON_STIPPLE                    -> 1
    % ; ?GL_POST_CONVOLUTION_ALPHA_BIAS_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_BLUE_BIAS_EXT     -> 1
    % ; ?GL_POST_CONVOLUTION_GREEN_BIAS_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_RED_BIAS_EXT      -> 1
    % ; ?GL_POST_CONVOLUTION_ALPHA_SCALE_EXT   -> 1
    % ; ?GL_POST_CONVOLUTION_BLUE_SCALE_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_GREEN_SCALE_EXT   -> 1
    % ; ?GL_POST_CONVOLUTION_RED_SCALE_EXT     -> 1
      ; ?GL_PROJECTION_MATRIX                  -> 16
      ; ?GL_PROJECTION_STACK_DEPTH             -> 1
      ; ?GL_READ_BUFFER                        -> 1
      ; ?GL_RED_BIAS                           -> 1
      ; ?GL_RED_BITS                           -> 1
      ; ?GL_RED_SCALE                          -> 1
      ; ?GL_RENDER_MODE                        -> 1
      ; ?GL_RGBA_MODE                          -> 1
      ; ?GL_SCISSOR_BOX                        -> 4
      ; ?GL_SCISSOR_TEST                       -> 1
    % ; ?GL_SEPARABLE_2D_EXT                   -> 1
      ; ?GL_SHADE_MODEL                        -> 1
      ; ?GL_STENCIL_BITS                       -> 1
      ; ?GL_STENCIL_CLEAR_VALUE                -> 1
      ; ?GL_STENCIL_FAIL                       -> 1
      ; ?GL_STENCIL_FUNC                       -> 1
      ; ?GL_STENCIL_PASS_DEPTH_FAIL            -> 1
      ; ?GL_STENCIL_PASS_DEPTH_PASS            -> 1
      ; ?GL_STENCIL_REF                        -> 1
      ; ?GL_STENCIL_TEST                       -> 1
      ; ?GL_STENCIL_VALUE_MASK                 -> 1
      ; ?GL_STENCIL_WRITEMASK                  -> 1
      ; ?GL_STEREO                             -> 1
      ; ?GL_SUBPIXEL_BITS                      -> 1
      ; ?GL_TEXTURE_1D                         -> 1
    % ; ?GL_TEXTURE_1D_BINDING                 -> 1
      ; ?GL_TEXTURE_2D                         -> 1
    % ; ?GL_TEXTURE_2D_BINDING                 -> 1
      ; ?GL_TEXTURE_COORD_ARRAY                -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_SIZE           -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_STRIDE         -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_TYPE           -> 1
      ; ?GL_TEXTURE_GEN_Q                      -> 1
      ; ?GL_TEXTURE_GEN_R                      -> 1
      ; ?GL_TEXTURE_GEN_S                      -> 1
      ; ?GL_TEXTURE_GEN_T                      -> 1
      ; ?GL_TEXTURE_MATRIX                     -> 16
      ; ?GL_TEXTURE_STACK_DEPTH                -> 1
      ; ?GL_UNPACK_ALIGNMENT                   -> 1
      ; ?GL_UNPACK_LSB_FIRST                   -> 1
      ; ?GL_UNPACK_ROW_LENGTH                  -> 1
      ; ?GL_UNPACK_SKIP_PIXELS                 -> 1
      ; ?GL_UNPACK_SKIP_ROWS                   -> 1
    % ; ?GL_UNPACK_CONSTANT_DATA_SUNX          -> 1
      ; ?GL_UNPACK_SWAP_BYTES                  -> 1
      ; ?GL_VERTEX_ARRAY                       -> 1
      ; ?GL_VERTEX_ARRAY_SIZE                  -> 1
      ; ?GL_VERTEX_ARRAY_STRIDE                -> 1
      ; ?GL_VERTEX_ARRAY_TYPE                  -> 1
      ; ?GL_VIEWPORT                           -> 4
      ; ?GL_ZOOM_X                             -> 1
      ; ?GL_ZOOM_Y                             -> 1
      ; ?GL_MAX_TEXTURE_UNITS                  -> 1
   %%    Unknown length use 16 so far the greatest known return value
      ; _Else                                  -> 16                  
      end
  , ParamsBump
    = 16 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_FLOAT_SIZE
      , _:ParamsBump/binary-unit:?GL_FLOAT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_FLOAT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getIntegerv
%% Args:       Pname
%% Returns:    [Params]
%% C-API func: void glGetIntegerv(GLenum pname, GLint* params)

getIntegerv(Pname)
 -> Bin
    = call
      ( ?glGetIntegerv
      , <<Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_ACCUM_ALPHA_BITS                   -> 1
      ; ?GL_ACCUM_BLUE_BITS                    -> 1
      ; ?GL_ACCUM_CLEAR_VALUE                  -> 4
      ; ?GL_ACCUM_GREEN_BITS                   -> 1
      ; ?GL_ACCUM_RED_BITS                     -> 1
      ; ?GL_ALPHA_BIAS                         -> 1
      ; ?GL_ALPHA_BITS                         -> 1
      ; ?GL_ALPHA_SCALE                        -> 1
      ; ?GL_ALPHA_TEST                         -> 1
      ; ?GL_ALPHA_TEST_FUNC                    -> 1
      ; ?GL_ALPHA_TEST_REF                     -> 1
      ; ?GL_ATTRIB_STACK_DEPTH                 -> 1
      ; ?GL_AUTO_NORMAL                        -> 1
      ; ?GL_AUX_BUFFERS                        -> 1
      ; ?GL_BLEND                              -> 1
      ; ?GL_BLEND_DST                          -> 1
      ; ?GL_BLEND_SRC                          -> 1
      ; ?GL_BLUE_BIAS                          -> 1
      ; ?GL_BLUE_BITS                          -> 1
      ; ?GL_BLUE_SCALE                         -> 1
      ; ?GL_CLIENT_ATTRIB_STACK_DEPTH          -> 1
      ; ?GL_CLIP_PLANE0                        -> 1
      ; ?GL_CLIP_PLANE1                        -> 1
      ; ?GL_CLIP_PLANE2                        -> 1
      ; ?GL_CLIP_PLANE3                        -> 1
      ; ?GL_CLIP_PLANE4                        -> 1
      ; ?GL_CLIP_PLANE5                        -> 1
      ; ?GL_COLOR_ARRAY                        -> 1
      ; ?GL_COLOR_ARRAY_SIZE                   -> 1
      ; ?GL_COLOR_ARRAY_STRIDE                 -> 1
      ; ?GL_COLOR_ARRAY_TYPE                   -> 1
      ; ?GL_COLOR_CLEAR_VALUE                  -> 4
      ; ?GL_COLOR_LOGIC_OP                     -> 1
      ; ?GL_COLOR_MATERIAL                     -> 1
      ; ?GL_COLOR_MATERIAL_FACE                -> 1
      ; ?GL_COLOR_MATERIAL_PARAMETER           -> 1
      ; ?GL_COLOR_WRITEMASK                    -> 4
    % -ifdef(GL_CONVOLUTION_1D_EXT).
    % ; ?GL_CONVOLUTION_1D_EXT                 -> 1
    % ; ?GL_CONVOLUTION_2D_EXT                 -> 1
    % -endif().
      ; ?GL_CULL_FACE                          -> 1
      ; ?GL_CULL_FACE_MODE                     -> 1
      ; ?GL_CURRENT_COLOR                      -> 4
      ; ?GL_CURRENT_INDEX                      -> 1
      ; ?GL_CURRENT_NORMAL                     -> 3
      ; ?GL_CURRENT_RASTER_COLOR               -> 4
      ; ?GL_CURRENT_RASTER_DISTANCE            -> 1
      ; ?GL_CURRENT_RASTER_INDEX               -> 1
      ; ?GL_CURRENT_RASTER_POSITION            -> 4
      ; ?GL_CURRENT_RASTER_POSITION_VALID      -> 1
      ; ?GL_CURRENT_RASTER_TEXTURE_COORDS      -> 4
      ; ?GL_CURRENT_TEXTURE_COORDS             -> 4
      ; ?GL_DEPTH_BIAS                         -> 1
      ; ?GL_DEPTH_BITS                         -> 1
      ; ?GL_DEPTH_CLEAR_VALUE                  -> 1
      ; ?GL_DEPTH_FUNC                         -> 1
      ; ?GL_DEPTH_RANGE                        -> 2
      ; ?GL_DEPTH_SCALE                        -> 1
      ; ?GL_DEPTH_TEST                         -> 1
      ; ?GL_DEPTH_WRITEMASK                    -> 1
      ; ?GL_DITHER                             -> 1
      ; ?GL_DOUBLEBUFFER                       -> 1
      ; ?GL_DRAW_BUFFER                        -> 1
      ; ?GL_EDGE_FLAG                          -> 1
      ; ?GL_EDGE_FLAG_ARRAY                    -> 1
      ; ?GL_EDGE_FLAG_ARRAY_STRIDE             -> 1
      ; ?GL_FOG                                -> 1
      ; ?GL_FOG_COLOR                          -> 4
      ; ?GL_FOG_DENSITY                        -> 1
      ; ?GL_FOG_END                            -> 1
      ; ?GL_FOG_HINT                           -> 1
      ; ?GL_FOG_INDEX                          -> 1
      ; ?GL_FOG_MODE                           -> 1
      ; ?GL_FOG_START                          -> 1
      ; ?GL_FRONT_FACE                         -> 1
    % ; ?GL_GLOBAL_ALPHA_FACTOR_SUN            -> 1
      ; ?GL_GREEN_BIAS                         -> 1
      ; ?GL_GREEN_BITS                         -> 1
      ; ?GL_GREEN_SCALE                        -> 1
    % -ifdef(GL_HISTOGRAM_EXT).
    % ; ?GL_HISTOGRAM_EXT                      -> 1
    % -endif().
      ; ?GL_INDEX_ARRAY                        -> 1
      ; ?GL_INDEX_ARRAY_STRIDE                 -> 1
      ; ?GL_INDEX_ARRAY_TYPE                   -> 1
      ; ?GL_INDEX_BITS                         -> 1
      ; ?GL_INDEX_CLEAR_VALUE                  -> 1
      ; ?GL_INDEX_LOGIC_OP                     -> 1
      ; ?GL_INDEX_MODE                         -> 1
      ; ?GL_INDEX_OFFSET                       -> 1
      ; ?GL_INDEX_SHIFT                        -> 1
      ; ?GL_INDEX_WRITEMASK                    -> 1
      ; ?GL_LIGHT0                             -> 1
      ; ?GL_LIGHT1                             -> 1
      ; ?GL_LIGHT2                             -> 1
      ; ?GL_LIGHT3                             -> 1
      ; ?GL_LIGHT4                             -> 1
      ; ?GL_LIGHT5                             -> 1
      ; ?GL_LIGHT6                             -> 1
      ; ?GL_LIGHT7                             -> 1
    % ; ?GL_LIGHT8                             -> 1
    % ; ?GL_LIGHT9                             -> 1
      ; ?GL_LIGHTING                           -> 1
      ; ?GL_LIGHT_MODEL_AMBIENT                -> 4
      ; ?GL_LIGHT_MODEL_LOCAL_VIEWER           -> 1
      ; ?GL_LIGHT_MODEL_TWO_SIDE               -> 1
      ; ?GL_LINE_SMOOTH                        -> 1
      ; ?GL_LINE_SMOOTH_HINT                   -> 1
      ; ?GL_LINE_STIPPLE                       -> 1
      ; ?GL_LINE_STIPPLE_PATTERN               -> 1
      ; ?GL_LINE_STIPPLE_REPEAT                -> 1
      ; ?GL_LINE_WIDTH                         -> 1
      ; ?GL_LINE_WIDTH_GRANULARITY             -> 1
      ; ?GL_LINE_WIDTH_RANGE                   -> 2
      ; ?GL_LIST_BASE                          -> 1
      ; ?GL_LIST_INDEX                         -> 1
      ; ?GL_LIST_MODE                          -> 1
      ; ?GL_LOGIC_OP_MODE                      -> 1
      ; ?GL_MAP1_COLOR_4                       -> 1
      ; ?GL_MAP1_GRID_DOMAIN                   -> 2
      ; ?GL_MAP1_GRID_SEGMENTS                 -> 1
      ; ?GL_MAP1_INDEX                         -> 1
      ; ?GL_MAP1_NORMAL                        -> 1
      ; ?GL_MAP1_TEXTURE_COORD_1               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_2               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_3               -> 1
      ; ?GL_MAP1_TEXTURE_COORD_4               -> 1
      ; ?GL_MAP1_VERTEX_3                      -> 1
      ; ?GL_MAP1_VERTEX_4                      -> 1
      ; ?GL_MAP2_COLOR_4                       -> 1
      ; ?GL_MAP2_GRID_DOMAIN                   -> 4
      ; ?GL_MAP2_GRID_SEGMENTS                 -> 2
      ; ?GL_MAP2_INDEX                         -> 1
      ; ?GL_MAP2_NORMAL                        -> 1
      ; ?GL_MAP2_TEXTURE_COORD_1               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_2               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_3               -> 1
      ; ?GL_MAP2_TEXTURE_COORD_4               -> 1
      ; ?GL_MAP2_VERTEX_3                      -> 1
      ; ?GL_MAP2_VERTEX_4                      -> 1
      ; ?GL_MAP_COLOR                          -> 1
      ; ?GL_MAP_STENCIL                        -> 1
      ; ?GL_MATRIX_MODE                        -> 1
      ; ?GL_MAX_3D_TEXTURE_SIZE                -> 1
      ; ?GL_MAX_CLIENT_ATTRIB_STACK_DEPTH      -> 1
      ; ?GL_MAX_ATTRIB_STACK_DEPTH             -> 1
      ; ?GL_MAX_CLIP_PLANES                    -> 1
      ; ?GL_MAX_ELEMENTS_INDICES               -> 1
      ; ?GL_MAX_ELEMENTS_VERTICES              -> 1
      ; ?GL_MAX_EVAL_ORDER                     -> 1
      ; ?GL_MAX_LIGHTS                         -> 1
      ; ?GL_MAX_LIST_NESTING                   -> 1
      ; ?GL_MAX_MODELVIEW_STACK_DEPTH          -> 1
      ; ?GL_MAX_NAME_STACK_DEPTH               -> 1
      ; ?GL_MAX_PIXEL_MAP_TABLE                -> 1
      ; ?GL_MAX_PROJECTION_STACK_DEPTH         -> 1
      ; ?GL_MAX_TEXTURE_SIZE                   -> 1
      ; ?GL_MAX_TEXTURE_STACK_DEPTH            -> 1
      ; ?GL_MAX_VERTEX_UNITS_ARB               -> 1
      ; ?GL_MAX_VIEWPORT_DIMS                  -> 2
      ; ?GL_MODELVIEW_MATRIX                   -> 16
    % ; ?GL_MINMAX_EXT                         -> 1
      ; ?GL_MODELVIEW_STACK_DEPTH              -> 1
      ; ?GL_NAME_STACK_DEPTH                   -> 1
      ; ?GL_NORMAL_ARRAY                       -> 1
      ; ?GL_NORMAL_ARRAY_STRIDE                -> 1
      ; ?GL_NORMAL_ARRAY_TYPE                  -> 1
      ; ?GL_NORMALIZE                          -> 1
      ; ?GL_NUM_COMPRESSED_TEXTURE_FORMATS     -> 1
      ; ?GL_PACK_ALIGNMENT                     -> 1
      ; ?GL_PACK_LSB_FIRST                     -> 1
      ; ?GL_PACK_ROW_LENGTH                    -> 1
      ; ?GL_PACK_SKIP_PIXELS                   -> 1
      ; ?GL_PACK_SKIP_ROWS                     -> 1
      ; ?GL_PACK_SWAP_BYTES                    -> 1
      ; ?GL_PERSPECTIVE_CORRECTION_HINT        -> 1
      ; ?GL_PIXEL_MAP_A_TO_A_SIZE              -> 1
      ; ?GL_PIXEL_MAP_B_TO_B_SIZE              -> 1
      ; ?GL_PIXEL_MAP_G_TO_G_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_A_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_B_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_G_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_I_SIZE              -> 1
      ; ?GL_PIXEL_MAP_I_TO_R_SIZE              -> 1
      ; ?GL_PIXEL_MAP_R_TO_R_SIZE              -> 1
      ; ?GL_PIXEL_MAP_S_TO_S_SIZE              -> 1
      ; ?GL_POINT_SIZE                         -> 1
      ; ?GL_POINT_SIZE_GRANULARITY             -> 1
      ; ?GL_POINT_SIZE_RANGE                   -> 2
      ; ?GL_POINT_SMOOTH                       -> 1
      ; ?GL_POINT_SMOOTH_HINT                  -> 1
      ; ?GL_POLYGON_MODE                       -> 2
      ; ?GL_POLYGON_OFFSET_FACTOR              -> 1
      ; ?GL_POLYGON_OFFSET_UNITS               -> 1
      ; ?GL_POLYGON_OFFSET_FILL                -> 1
      ; ?GL_POLYGON_OFFSET_LINE                -> 1
      ; ?GL_POLYGON_OFFSET_POINT               -> 1
    % ; ?GL_POLYGON_OFFSET_BIAS_EXT            -> 1
    % ; ?GL_POLYGON_OFFSET_FACTOR_EXT          -> 1
    % ; ?GL_POLYGON_OFFSET_EXT                 -> 1
      ; ?GL_POLYGON_SMOOTH                     -> 1
      ; ?GL_POLYGON_SMOOTH_HINT                -> 1
      ; ?GL_POLYGON_STIPPLE                    -> 1
    % ; ?GL_POST_CONVOLUTION_ALPHA_BIAS_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_BLUE_BIAS_EXT     -> 1
    % ; ?GL_POST_CONVOLUTION_GREEN_BIAS_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_RED_BIAS_EXT      -> 1
    % ; ?GL_POST_CONVOLUTION_ALPHA_SCALE_EXT   -> 1
    % ; ?GL_POST_CONVOLUTION_BLUE_SCALE_EXT    -> 1
    % ; ?GL_POST_CONVOLUTION_GREEN_SCALE_EXT   -> 1
    % ; ?GL_POST_CONVOLUTION_RED_SCALE_EXT     -> 1
      ; ?GL_PROJECTION_MATRIX                  -> 16
      ; ?GL_PROJECTION_STACK_DEPTH             -> 1
      ; ?GL_READ_BUFFER                        -> 1
      ; ?GL_RED_BIAS                           -> 1
      ; ?GL_RED_BITS                           -> 1
      ; ?GL_RED_SCALE                          -> 1
      ; ?GL_RENDER_MODE                        -> 1
      ; ?GL_RGBA_MODE                          -> 1
      ; ?GL_SCISSOR_BOX                        -> 4
      ; ?GL_SCISSOR_TEST                       -> 1
    % ; ?GL_SEPARABLE_2D_EXT                   -> 1
      ; ?GL_SHADE_MODEL                        -> 1
      ; ?GL_STENCIL_BITS                       -> 1
      ; ?GL_STENCIL_CLEAR_VALUE                -> 1
      ; ?GL_STENCIL_FAIL                       -> 1
      ; ?GL_STENCIL_FUNC                       -> 1
      ; ?GL_STENCIL_PASS_DEPTH_FAIL            -> 1
      ; ?GL_STENCIL_PASS_DEPTH_PASS            -> 1
      ; ?GL_STENCIL_REF                        -> 1
      ; ?GL_STENCIL_TEST                       -> 1
      ; ?GL_STENCIL_VALUE_MASK                 -> 1
      ; ?GL_STENCIL_WRITEMASK                  -> 1
      ; ?GL_STEREO                             -> 1
      ; ?GL_SUBPIXEL_BITS                      -> 1
      ; ?GL_TEXTURE_1D                         -> 1
    % ; ?GL_TEXTURE_1D_BINDING                 -> 1
      ; ?GL_TEXTURE_2D                         -> 1
    % ; ?GL_TEXTURE_2D_BINDING                 -> 1
      ; ?GL_TEXTURE_COORD_ARRAY                -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_SIZE           -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_STRIDE         -> 1
      ; ?GL_TEXTURE_COORD_ARRAY_TYPE           -> 1
      ; ?GL_TEXTURE_GEN_Q                      -> 1
      ; ?GL_TEXTURE_GEN_R                      -> 1
      ; ?GL_TEXTURE_GEN_S                      -> 1
      ; ?GL_TEXTURE_GEN_T                      -> 1
      ; ?GL_TEXTURE_MATRIX                     -> 16
      ; ?GL_TEXTURE_STACK_DEPTH                -> 1
      ; ?GL_UNPACK_ALIGNMENT                   -> 1
      ; ?GL_UNPACK_LSB_FIRST                   -> 1
      ; ?GL_UNPACK_ROW_LENGTH                  -> 1
      ; ?GL_UNPACK_SKIP_PIXELS                 -> 1
      ; ?GL_UNPACK_SKIP_ROWS                   -> 1
    % ; ?GL_UNPACK_CONSTANT_DATA_SUNX          -> 1
      ; ?GL_UNPACK_SWAP_BYTES                  -> 1
      ; ?GL_VERTEX_ARRAY                       -> 1
      ; ?GL_VERTEX_ARRAY_SIZE                  -> 1
      ; ?GL_VERTEX_ARRAY_STRIDE                -> 1
      ; ?GL_VERTEX_ARRAY_TYPE                  -> 1
      ; ?GL_VIEWPORT                           -> 4
      ; ?GL_ZOOM_X                             -> 1
      ; ?GL_ZOOM_Y                             -> 1
      ; ?GL_MAX_TEXTURE_UNITS                  -> 1
   %%    Unknown length use 16 so far the greatest known return value
      ; _Else                                  -> 16                  
      end
  , ParamsBump
    = 16 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_INT_SIZE
      , _:ParamsBump/binary-unit:?GL_INT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_INT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getLightfv
%% Args:       Light, Pname
%% Returns:    [Params]
%% C-API func: void glGetLightfv(GLenum light, GLenum pname, GLfloat* params)

getLightfv(Light, Pname)
 -> Bin
    = call
      ( ?glGetLightfv
      , <<Light:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_AMBIENT               -> 4
      ; ?GL_DIFFUSE               -> 4
      ; ?GL_SPECULAR              -> 4
      ; ?GL_POSITION              -> 4
      ; ?GL_SPOT_DIRECTION        -> 3
      ; ?GL_SPOT_EXPONENT         -> 1
      ; ?GL_SPOT_CUTOFF           -> 1
      ; ?GL_CONSTANT_ATTENUATION  -> 1
      ; ?GL_LINEAR_ATTENUATION    -> 1
      ; ?GL_QUADRATIC_ATTENUATION -> 1
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_FLOAT_SIZE
      , _:ParamsBump/binary-unit:?GL_FLOAT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_FLOAT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getLightiv
%% Args:       Light, Pname
%% Returns:    [Params]
%% C-API func: void glGetLightiv(GLenum light, GLenum pname, GLint* params)

getLightiv(Light, Pname)
 -> Bin
    = call
      ( ?glGetLightiv
      , <<Light:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_AMBIENT               -> 4
      ; ?GL_DIFFUSE               -> 4
      ; ?GL_SPECULAR              -> 4
      ; ?GL_POSITION              -> 4
      ; ?GL_SPOT_DIRECTION        -> 3
      ; ?GL_SPOT_EXPONENT         -> 1
      ; ?GL_SPOT_CUTOFF           -> 1
      ; ?GL_CONSTANT_ATTENUATION  -> 1
      ; ?GL_LINEAR_ATTENUATION    -> 1
      ; ?GL_QUADRATIC_ATTENUATION -> 1
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_INT_SIZE
      , _:ParamsBump/binary-unit:?GL_INT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_INT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getMapdv
%% Args:       Target, Query, #sdlmem{} = V
%% Returns:    ok
%% C-API func: void glGetMapdv(GLenum target, GLenum query, GLdouble* v)

getMapdv(Target, Query, #sdlmem{bin=V})
 -> sdl:send_bin
    ( V
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?glGetMapdv
    , <<Target:?GLenum
      , Query:?GLenum
      >>
    )
.

%% Func:       getMapfv
%% Args:       Target, Query, #sdlmem{} = V
%% Returns:    ok
%% C-API func: void glGetMapfv(GLenum target, GLenum query, GLfloat* v)

getMapfv(Target, Query, #sdlmem{bin=V})
 -> sdl:send_bin
    ( V
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?glGetMapfv
    , <<Target:?GLenum
      , Query:?GLenum
      >>
    )
.

%% Func:       getMapiv
%% Args:       Target, Query, #sdlmem{} = V
%% Returns:    ok
%% C-API func: void glGetMapiv(GLenum target, GLenum query, GLint* v)

getMapiv(Target, Query, #sdlmem{bin=V})
 -> sdl:send_bin
    ( V
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?glGetMapiv
    , <<Target:?GLenum
      , Query:?GLenum
      >>
    )
.

%% Func:       getMaterialfv
%% Args:       Face, Pname
%% Returns:    [Params]
%% C-API func: void glGetMaterialfv(GLenum face, GLenum pname, GLfloat* params)

getMaterialfv(Face, Pname)
 -> Bin
    = call
      ( ?glGetMaterialfv
      , <<Face:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of 
        ?GL_AMBIENT       -> 4
      ; ?GL_DIFFUSE       -> 4
      ; ?GL_SPECULAR      -> 4
      ; ?GL_EMISSION      -> 4
      ; ?GL_SHININESS     -> 1
      ; ?GL_COLOR_INDEXES -> 3
      ; _                 -> 4
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_FLOAT_SIZE
      , _:ParamsBump/binary-unit:?GL_FLOAT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_FLOAT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getMaterialiv
%% Args:       Face, Pname
%% Returns:    [Params]
%% C-API func: void glGetMaterialiv(GLenum face, GLenum pname, GLint* params)

getMaterialiv(Face, Pname)
 -> Bin
    = call
      ( ?glGetMaterialiv
      , <<Face:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of 
        ?GL_AMBIENT       -> 4
      ; ?GL_DIFFUSE       -> 4
      ; ?GL_SPECULAR      -> 4
      ; ?GL_EMISSION      -> 4
      ; ?GL_SHININESS     -> 1
      ; ?GL_COLOR_INDEXES -> 3
      ; _                 -> 4
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_INT_SIZE
      , _:ParamsBump/binary-unit:?GL_INT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_INT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getPixelMapfv
%% Args:       Map, #sdlmem{} = Values
%% Returns:    ok
%% C-API func: void glGetPixelMapfv(GLenum map, GLfloat* values)

getPixelMapfv(Map, #sdlmem{bin=Values})
 -> sdl:send_bin
    ( Values
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?glGetPixelMapfv
    , <<Map:?GLenum
      >>
    )
.

%% Func:       getPixelMapuiv
%% Args:       Map, #sdlmem{} = Values
%% Returns:    ok
%% C-API func: void glGetPixelMapuiv(GLenum map, GLuint* values)

getPixelMapuiv(Map, #sdlmem{bin=Values})
 -> sdl:send_bin
    ( Values
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?glGetPixelMapuiv
    , <<Map:?GLenum
      >>
    )
.

%% Func:       getPixelMapusv
%% Args:       Map, #sdlmem{} = Values
%% Returns:    ok
%% C-API func: void glGetPixelMapusv(GLenum map, GLushort* values)

getPixelMapusv(Map, #sdlmem{bin=Values})
 -> sdl:send_bin
    ( Values
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?glGetPixelMapusv
    , <<Map:?GLenum
      >>
    )
.

%% Func:       getPointerv
%% Args:       Pname
%% Returns:    Params=#sdlmem{}
%% C-API func: void glGetPointerv(GLenum pname, GLvoid** params)

getPointerv(Pname)
 -> Bin
    = call
      ( ?glGetPointerv
      , <<Pname:?GLenum
        >>
      )
  , case
      Bin
    of 
      <<Params:32/big-unsigned
      >>
        -> erlang:error
           ( { nyi
             , ?MODULE
             , ?LINE
             }
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
  , Params
.

%% Func:       getPolygonStipple
%% Args:       
%% Returns:    [Mask]
%% C-API func: void glGetPolygonStipple(GLubyte* mask)

getPolygonStipple()
 -> Bin
    = call
      ( ?glGetPolygonStipple
      , [
        ]
      )
  , case
      Bin
    of 
      <<Mask:128/binary-unit:?GL_UNSIGNED_BYTE_SIZE
      >>
        -> bin2list
           ( 128
           , ?GL_UNSIGNED_BYTE
           , Mask
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getString
%% Args:       Name
%% Returns:    [?GL_UNSIGNED_BYTE]
%% C-API func: GLubyte* glGetString(GLenum name)

getString(Name)
 -> Bin
    = call
      ( ?glGetString
      , <<Name:?GLenum
        >>
      )
  , case
      Bin
    of 
      Ret
        -> bin2list
           ( undefined
           , ?GL_UNSIGNED_BYTE
           , Ret
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
     end
.

%% Func:       getTexEnvfv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexEnvfv(GLenum target, GLenum pname, GLfloat* params)

getTexEnvfv(Target, Pname)
 -> Bin
    = call
      ( ?glGetTexEnvfv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_TEXTURE_ENV_MODE   -> 1
      ; ?GL_TEXTURE_ENV_COLOR  -> 4
      ; _                      -> 4
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_FLOAT_SIZE
      , _:ParamsBump/binary-unit:?GL_FLOAT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_FLOAT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getTexEnviv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexEnviv(GLenum target, GLenum pname, GLint* params)

getTexEnviv(Target, Pname)
 -> Bin
    = call
      ( ?glGetTexEnviv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_TEXTURE_ENV_MODE   -> 1
      ; ?GL_TEXTURE_ENV_COLOR  -> 4
      ; _                      -> 4
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_INT_SIZE
      , _:ParamsBump/binary-unit:?GL_INT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_INT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getTexGendv
%% Args:       Coord, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexGendv(GLenum coord, GLenum pname, GLdouble* params)

getTexGendv(Coord, Pname)
 -> Bin
    = call
      ( ?glGetTexGendv
      , <<Coord:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_TEXTURE_GEN_MODE -> 1
      ; ?GL_OBJECT_PLANE     -> 4
      ; ?GL_EYE_PLANE        -> 4
      ; _                    -> 4
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_DOUBLE_SIZE
      , _:ParamsBump/binary-unit:?GL_DOUBLE_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_DOUBLE
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getTexGenfv
%% Args:       Coord, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexGenfv(GLenum coord, GLenum pname, GLfloat* params)

getTexGenfv(Coord, Pname)
 -> Bin
    = call
      ( ?glGetTexGenfv
      , <<Coord:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_TEXTURE_GEN_MODE -> 1
      ; ?GL_OBJECT_PLANE     -> 4
      ; ?GL_EYE_PLANE        -> 4
      ; _                    -> 4
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_FLOAT_SIZE
      , _:ParamsBump/binary-unit:?GL_FLOAT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_FLOAT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getTexGeniv
%% Args:       Coord, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexGeniv(GLenum coord, GLenum pname, GLint* params)

getTexGeniv(Coord, Pname)
 -> Bin
    = call
      ( ?glGetTexGeniv
      , <<Coord:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_TEXTURE_GEN_MODE -> 1
      ; ?GL_OBJECT_PLANE     -> 4
      ; ?GL_EYE_PLANE        -> 4
      ; _                    -> 4
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_INT_SIZE
      , _:ParamsBump/binary-unit:?GL_INT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_INT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getTexImage
%% Args:       Target, Level, Format, Type, #sdlmem{} = Pixels
%% Returns:    ok
%% C-API func: void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels)

getTexImage(Target, Level, Format, Type, #sdlmem{bin=Pixels})
 -> sdl:send_bin
    ( Pixels
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?glGetTexImage
    , <<Target:?GLenum
      , Level:?GLint
      , Format:?GLenum
      , Type:?GLenum
      >>
    )
.

%% Func:       getTexLevelParameterfv
%% Args:       Target, Level, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat* params)

getTexLevelParameterfv(Target, Level, Pname)
 -> Bin
    = call
      ( ?glGetTexLevelParameterfv
      , <<Target:?GLenum
        , Level:?GLint
        , Pname:?GLenum
        >>
      )
  , case
      Bin
    of 
      <<Params:?GLfloat
      >>
        -> Params
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getTexLevelParameteriv
%% Args:       Target, Level, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint* params)

getTexLevelParameteriv(Target, Level, Pname)
 -> Bin
    = call
      ( ?glGetTexLevelParameteriv
      , <<Target:?GLenum
        , Level:?GLint
        , Pname:?GLenum
        >>
      )
  , case
      Bin
    of 
      <<Params:?GLint
      >>
        -> Params
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getTexParameterfv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat* params)

getTexParameterfv(Target, Pname)
 -> Bin
    = call
      ( ?glGetTexParameterfv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_TEXTURE_MAG_FILTER   -> 1
      ; ?GL_TEXTURE_MIN_FILTER   -> 1
      ; ?GL_TEXTURE_WRAP_S       -> 1
      ; ?GL_TEXTURE_WRAP_T       -> 1
      ; ?GL_TEXTURE_BORDER_COLOR -> 4
      ; ?GL_TEXTURE_PRIORITY     -> 1
      ; ?GL_TEXTURE_RESIDENT     -> 1
      ; _                        -> 4
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_FLOAT_SIZE
      , _:ParamsBump/binary-unit:?GL_FLOAT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_FLOAT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       getTexParameteriv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexParameteriv(GLenum target, GLenum pname, GLint* params)

getTexParameteriv(Target, Pname)
 -> Bin
    = call
      ( ?glGetTexParameteriv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        ?GL_TEXTURE_MAG_FILTER   -> 1
      ; ?GL_TEXTURE_MIN_FILTER   -> 1
      ; ?GL_TEXTURE_WRAP_S       -> 1
      ; ?GL_TEXTURE_WRAP_T       -> 1
      ; ?GL_TEXTURE_BORDER_COLOR -> 4
      ; ?GL_TEXTURE_PRIORITY     -> 1
      ; ?GL_TEXTURE_RESIDENT     -> 1
      ; _                        -> 4
      end
  , ParamsBump
    = 4 - ParamsLen
  , case
      Bin
    of 
      <<Params:ParamsLen/binary-unit:?GL_INT_SIZE
      , _:ParamsBump/binary-unit:?GL_INT_SIZE
      >>
        -> bin2list
           ( ParamsLen
           , ?GL_INT
           , Params
           )
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
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
%% Args:       Type, Stride, <<[Pointer]>>
%% Returns:    ok
%% C-API func: void glIndexPointer(GLenum type, GLsizei stride, const GLvoid* pointer)

indexPointer(Type, Stride, Pointer)
 -> %% Maybe NULL or offset sometimes
    NewPointer
    = if
        is_integer(Pointer)
          -> Pointer
      ; true
          -> sdl:send_bin
             ( Pointer
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glIndexPointer
    , [ <<Type:?GLenum
        , Stride:?GLsizei
        , NewPointer:?_PTR
        >>
      ]
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
%% Args:       <<[C]>>
%% Returns:    ok
%% C-API func: void glIndexdv(const GLdouble* c)

indexdv(C)
 -> NewC
    = if
        is_list(C)
      ; is_tuple(C)
          -> term2bin
             ( C
             , 1
             , ?GL_DOUBLE
             )
      ; is_binary(C)
          -> C
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , C
               }
             )
      end
  , cast
    ( ?glIndexdv
    , [ NewC
      ]
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
%% Args:       <<[C]>>
%% Returns:    ok
%% C-API func: void glIndexfv(const GLfloat* c)

indexfv(C)
 -> NewC
    = if
        is_list(C)
      ; is_tuple(C)
          -> term2bin
             ( C
             , 1
             , ?GL_FLOAT
             )
      ; is_binary(C)
          -> C
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , C
               }
             )
      end
  , cast
    ( ?glIndexfv
    , [ NewC
      ]
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
%% Args:       <<[C]>>
%% Returns:    ok
%% C-API func: void glIndexiv(const GLint* c)

indexiv(C)
 -> NewC
    = if
        is_list(C)
      ; is_tuple(C)
          -> term2bin
             ( C
             , 1
             , ?GL_INT
             )
      ; is_binary(C)
          -> C
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , C
               }
             )
      end
  , cast
    ( ?glIndexiv
    , [ NewC
      ]
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
%% Args:       <<[C]>>
%% Returns:    ok
%% C-API func: void glIndexsv(const GLshort* c)

indexsv(C)
 -> NewC
    = if
        is_list(C)
      ; is_tuple(C)
          -> term2bin
             ( C
             , 1
             , ?GL_SHORT
             )
      ; is_binary(C)
          -> C
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , C
               }
             )
      end
  , cast
    ( ?glIndexsv
    , [ NewC
      ]
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
%% Args:       <<[C]>>
%% Returns:    ok
%% C-API func: void glIndexubv(const GLubyte* c)

indexubv(C)
 -> NewC
    = if
        is_list(C)
      ; is_tuple(C)
          -> term2bin
             ( C
             , 1
             , ?GL_UNSIGNED_BYTE
             )
      ; is_binary(C)
          -> C
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , C
               }
             )
      end
  , cast
    ( ?glIndexubv
    , [ NewC
      ]
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
%% Args:       Format, Stride, <<[Pointer]>>
%% Returns:    ok
%% C-API func: void glInterleavedArrays(GLenum format, GLsizei stride, const GLvoid* pointer)

interleavedArrays(Format, Stride, Pointer)
 -> %% Maybe NULL or offset sometimes
    NewPointer
    = if
        is_integer(Pointer)
          -> Pointer
      ; true
          -> sdl:send_bin
             ( Pointer
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glInterleavedArrays
    , [ <<Format:?GLenum
        , Stride:?GLsizei
        , NewPointer:?_PTR
        >>
      ]
    )
.

%% Func:       isEnabled
%% Args:       Cap
%% Returns:    ?GL_BYTE
%% C-API func: GLboolean glIsEnabled(GLenum cap)

isEnabled(Cap)
 -> Bin
    = call
      ( ?glIsEnabled
      , <<Cap:?GLenum
        >>
      )
  , case
      Bin
    of 
      <<Ret:?GLboolean
      >>
        -> Ret /= ?GL_FALSE
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       isList
%% Args:       List
%% Returns:    ?GL_BYTE
%% C-API func: GLboolean glIsList(GLuint list)

isList(List)
 -> Bin
    = call
      ( ?glIsList
      , <<List:?GLuint
        >>
      )
  , case
      Bin
    of 
      <<Ret:?GLboolean
      >>
        -> Ret /= ?GL_FALSE
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
    end
.

%% Func:       isTexture
%% Args:       Texture
%% Returns:    ?GL_BYTE
%% C-API func: GLboolean glIsTexture(GLuint texture)

isTexture(Texture)
 -> Bin
    = call
      ( ?glIsTexture
      , <<Texture:?GLuint>>
      )
  , case
      Bin
    of 
      <<Ret:?GLboolean
      >>
        -> Ret /= ?GL_FALSE
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
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
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glLightModelfv(GLenum pname, const GLfloat* params)

lightModelfv(Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glLightModelfv
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glLightModeliv(GLenum pname, const GLint* params)

lightModeliv(Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glLightModeliv
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       Light, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glLightfv(GLenum light, GLenum pname, const GLfloat* params)

lightfv(Light, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen
             = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glLightfv
    , [ <<Light:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       Light, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glLightiv(GLenum light, GLenum pname, const GLint* params)

lightiv(Light, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native>>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glLightiv
    , [ <<Light:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       <<[M]>>
%% Returns:    ok
%% C-API func: void glLoadMatrixd(const GLdouble* m)

loadMatrixd(M)
 -> NewM
    = if
        is_list(M)
      ; is_tuple(M)
          -> matrix2bin
             ( M
             , ?GL_DOUBLE
             )
      ; is_binary(M)
          -> M
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , M
               }
             )
      end
  , cast
    ( ?glLoadMatrixd
    , [ NewM
      ]
    )
.

%% Func:       loadMatrixf
%% Args:       <<[M]>>
%% Returns:    ok
%% C-API func: void glLoadMatrixf(const GLfloat* m)

loadMatrixf(M)
 -> NewM
    = if
        is_list(M)
      ; is_tuple(M)
          -> matrix2bin
             ( M
             , ?GL_FLOAT
             )
      ; is_binary(M)
          -> M
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , M
               }
             )
      end
  , cast
    ( ?glLoadMatrixf
    , [ NewM
      ]
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
%% Args:       Target, U1, U2, Stride, Order, <<[Points]>>
%% Returns:    ok
%% C-API func: void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble* points)

map1d(Target, U1, U2, Stride, Order, Points)
 -> NewPoints
    = if
        is_list(Points)
          -> PointsLen
             = length(Points)
           , [ <<PointsLen:32/native
               >>
             , term2bin
               ( Points
               , PointsLen
               , ?GL_DOUBLE
               )
             ]
      ; is_tuple(Points)
          -> PointsLen
             = size(Points)
           , [ <<PointsLen:32/native
               >>
             , term2bin
               ( Points
               , PointsLen
               , ?GL_DOUBLE
               )
             ]
      ; is_binary(Points)
          -> [ <<(size(Points) div 8):32/native
               >>
             , Points
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Points
               }
             )
      end
  , cast
    ( ?glMap1d
    , [ <<Target:?GLenum
        , U1:?GLdouble
        , U2:?GLdouble
        , Stride:?GLint
        , Order:?GLint
        >>
      , NewPoints
      ]
    )
.

%% Func:       map1f
%% Args:       Target, U1, U2, Stride, Order, <<[Points]>>
%% Returns:    ok
%% C-API func: void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat* points)

map1f(Target, U1, U2, Stride, Order, Points)
 -> NewPoints
    = if
        is_list(Points)
          -> PointsLen
             = length(Points)
           , [ <<PointsLen:32/native
               >>
             , term2bin
               ( Points
               , PointsLen
               , ?GL_FLOAT
               )
             ]
      ; is_tuple(Points)
          -> PointsLen
             = size(Points)
           , [ <<PointsLen:32/native
               >>
             , term2bin
               ( Points
               , PointsLen
               , ?GL_FLOAT
               )
             ]
      ; is_binary(Points)
          -> [ <<(size(Points) div 4):32/native
               >>
             , Points
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Points
               }
             )
      end
  , cast
    ( ?glMap1f
    , [ <<Target:?GLenum
        , U1:?GLfloat
        , U2:?GLfloat
        , Stride:?GLint
        , Order:?GLint
        >>
      , NewPoints
      ]
    )
.

%% Func:       map2d
%% Args:       Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, <<[Points]>>
%% Returns:    ok
%% C-API func: void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble* points)

map2d(Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, Points)
 -> NewPoints
    = if
        is_list(Points)
          -> PointsLen = length(Points)
           , [ <<PointsLen:32/native
               >>
             , term2bin
               ( Points
               , PointsLen
               , ?GL_DOUBLE
               )
             ]
      ; is_tuple(Points)
          -> PointsLen = size(Points)
           , [ <<PointsLen:32/native
               >>
             , term2bin
               ( Points
               , PointsLen
               , ?GL_DOUBLE
               )
             ]
      ; is_binary(Points)
          -> [ <<(size(Points) div 8):32/native
               >>
             , Points
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Points
               }
             )
      end
  , cast
    ( ?glMap2d
    , [ <<Target:?GLenum
        , U1:?GLdouble
        , U2:?GLdouble
        , Ustride:?GLint
        , Uorder:?GLint
        , V1:?GLdouble
        , V2:?GLdouble
        , Vstride:?GLint
        , Vorder:?GLint
        >>
      , NewPoints
      ]
    )
.

%% Func:       map2f
%% Args:       Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, <<[Points]>>
%% Returns:    ok
%% C-API func: void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat* points)

map2f(Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, Points)
 -> NewPoints
    = if
        is_list(Points)
          -> PointsLen = length(Points)
           , [ <<PointsLen:32/native
               >>
             , term2bin
               ( Points
               , PointsLen
               , ?GL_FLOAT
               )
             ]
      ; is_tuple(Points)
          -> PointsLen = size(Points)
           , [ <<PointsLen:32/native
               >>
             , term2bin
               ( Points
               , PointsLen
               , ?GL_FLOAT
               )
             ]
      ; is_binary(Points)
          -> [ <<(size(Points) div 4):32/native
               >>
             , Points
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Points
               }
             )
      end
  , cast
    ( ?glMap2f
    , [ <<Target:?GLenum
        , U1:?GLfloat
        , U2:?GLfloat
        , Ustride:?GLint
        , Uorder:?GLint
        , V1:?GLfloat
        , V2:?GLfloat
        , Vstride:?GLint
        , Vorder:?GLint
        >>
      , NewPoints
      ]
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
%% Args:       Face, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMaterialfv(GLenum face, GLenum pname, const GLfloat* params)

materialfv(Face, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glMaterialfv
    , [ <<Face:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       Face, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMaterialiv(GLenum face, GLenum pname, const GLint* params)

materialiv(Face, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glMaterialiv
    , [ <<Face:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       <<[M]>>
%% Returns:    ok
%% C-API func: void glMultMatrixd(const GLdouble* m)

multMatrixd(M)
 -> NewM
    = if
        is_list(M)
      ; is_tuple(M)
          -> matrix2bin
             ( M
             , ?GL_DOUBLE
             )
      ; is_binary(M)
          -> M
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , M
               }
             )
      end
  , cast
    ( ?glMultMatrixd
    , [ NewM
      ]
    )
.

%% Func:       multMatrixf
%% Args:       <<[M]>>
%% Returns:    ok
%% C-API func: void glMultMatrixf(const GLfloat* m)

multMatrixf(M)
 -> NewM
    = if
        is_list(M)
      ; is_tuple(M)
          -> matrix2bin
             ( M
             , ?GL_FLOAT
             )
      ; is_binary(M)
          -> M
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , M
               }
             )
      end
  , cast
    ( ?glMultMatrixf
    , [ NewM
      ]
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

-ifdef(UseAllGlFunc).
  normal3b(Nx, Ny, Nz)
   -> cast
      ( ?glNormal3b
      , <<Nx:?GLbyte
        , Ny:?GLbyte
        , Nz:?GLbyte
        >>
      )
  .
-else.
  normal3b(Nx, Ny, Nz)
   -> cast
      ( ?glNormal3bv
      , <<Nx:?GLbyte
        , Ny:?GLbyte
        , Nz:?GLbyte
        >>
      )
  .
-endif.

%% Func:       normal3bv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glNormal3bv(const GLbyte* v)

normal3bv({V1, V2, V3})
 -> cast
    ( ?glNormal3bv
    , <<V1:?GLbyte
      , V2:?GLbyte
      , V3:?GLbyte
      >>
    )
.

%% Func:       normal3d
%% Args:       Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz)

-ifdef(UseAllGlFunc).
  normal3d(Nx, Ny, Nz)
   -> cast
      ( ?glNormal3d
      , <<Nx:?GLdouble
        , Ny:?GLdouble
        , Nz:?GLdouble
        >>
      )
  .
-else.
  normal3d(Nx, Ny, Nz)
   -> cast
      ( ?glNormal3dv
      , <<Nx:?GLdouble
        , Ny:?GLdouble
        , Nz:?GLdouble
        >>
      )
  .
-endif.

%% Func:       normal3dv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glNormal3dv(const GLdouble* v)

normal3dv({V1, V2, V3})
 -> cast
    ( ?glNormal3dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      , V3:?GLdouble
      >>
    )
.

%% Func:       normal3f
%% Args:       Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz)

-ifdef(UseAllGlFunc).
  normal3f(Nx, Ny, Nz)
   -> cast
      ( ?glNormal3f
      , <<Nx:?GLfloat
        , Ny:?GLfloat
        , Nz:?GLfloat
        >>
      )
  .
-else.
  normal3f(Nx, Ny, Nz)
   -> cast
      ( ?glNormal3fv
      , <<Nx:?GLfloat
        , Ny:?GLfloat
        , Nz:?GLfloat
        >>
      )
  .
-endif.

%% Func:       normal3fv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glNormal3fv(const GLfloat* v)

normal3fv({V1, V2, V3})
 -> cast
    ( ?glNormal3fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      >>
    )
.

%% Func:       normal3i
%% Args:       Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormal3i(GLint nx, GLint ny, GLint nz)

-ifdef(UseAllGlFunc).
  normal3i(Nx, Ny, Nz)
   -> cast
      ( ?glNormal3i
      , <<Nx:?GLint
        , Ny:?GLint
        , Nz:?GLint
        >>
      )
  .
-else.
  normal3i(Nx, Ny, Nz)
   -> cast
      ( ?glNormal3iv
      , <<Nx:?GLint
        , Ny:?GLint
        , Nz:?GLint
        >>
      )
  .
-endif.

%% Func:       normal3iv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glNormal3iv(const GLint* v)

normal3iv({V1, V2, V3})
 -> cast
    ( ?glNormal3iv
    , <<V1:?GLint
      , V2:?GLint
      , V3:?GLint
      >>
    )
.

%% Func:       normal3s
%% Args:       Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormal3s(GLshort nx, GLshort ny, GLshort nz)

-ifdef(UseAllGlFunc).
  normal3s(Nx, Ny, Nz)
   -> cast
      ( ?glNormal3s
      , <<Nx:?GLshort
        , Ny:?GLshort
        , Nz:?GLshort
        >>
      )
  .
-else.
  normal3s(Nx, Ny, Nz)
   -> cast
      ( ?glNormal3sv
      , <<Nx:?GLshort
        , Ny:?GLshort
        , Nz:?GLshort
        >>
      )
  .
-endif.

%% Func:       normal3sv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glNormal3sv(const GLshort* v)

normal3sv({V1, V2, V3})
 -> cast
    ( ?glNormal3sv
    , <<V1:?GLshort
      , V2:?GLshort
      , V3:?GLshort
      >>
    )
.

%% Func:       normalPointer
%% Args:       Type, Stride, <<[Pointer]>>
%% Returns:    ok
%% C-API func: void glNormalPointer(GLenum type, GLsizei stride, const GLvoid* pointer)

normalPointer(Type, Stride, Pointer)
 -> %% Maybe NULL or offset sometimes
    NewPointer
    = if
        is_integer(Pointer)
          -> Pointer
      ; true
          -> sdl:send_bin
             ( Pointer
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glNormalPointer
    , [ <<Type:?GLenum
        , Stride:?GLsizei
        , NewPointer:?_PTR
        >>
      ]
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
%% Args:       Map, Mapsize, <<[Values]>>
%% Returns:    ok
%% C-API func: void glPixelMapfv(GLenum map, GLint mapsize, const GLfloat* values)

pixelMapfv(Map, Mapsize, Values)
 -> NewValues
    = if
        is_list(Values)
      ; is_tuple(Values)
          -> term2bin
             ( Values
             , Mapsize
             , ?GL_FLOAT
             )
      ; is_binary(Values)
          -> Values
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Values
               }
             )
      end
  , cast
    ( ?glPixelMapfv
    , [ <<Map:?GLenum
        , Mapsize:?GLint
        >>
      , NewValues
      ]
    )
.

%% Func:       pixelMapuiv
%% Args:       Map, Mapsize, <<[Values]>>
%% Returns:    ok
%% C-API func: void glPixelMapuiv(GLenum map, GLint mapsize, const GLuint* values)

pixelMapuiv(Map, Mapsize, Values)
 -> NewValues
    = if
        is_list(Values)
      ; is_tuple(Values)
          -> term2bin
             ( Values
             , Mapsize
             , ?GL_UNSIGNED_INT
             )
      ; is_binary(Values)
          -> Values
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Values
               }
             )
      end
  , cast
    ( ?glPixelMapuiv
    , [ <<Map:?GLenum
        , Mapsize:?GLint
        >>
      , NewValues
      ]
    )
.

%% Func:       pixelMapusv
%% Args:       Map, Mapsize, <<[Values]>>
%% Returns:    ok
%% C-API func: void glPixelMapusv(GLenum map, GLint mapsize, const GLushort* values)

pixelMapusv(Map, Mapsize, Values)
 -> NewValues
    = if
        is_list(Values)
      ; is_tuple(Values)
          -> term2bin
             ( Values
             , Mapsize
             , ?GL_UNSIGNED_SHORT
             )
      ; is_binary(Values)
          -> Values
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Values
               }
             )
      end
  , cast
    ( ?glPixelMapusv
    , [ <<Map:?GLenum
        , Mapsize:?GLint
        >>
      , NewValues
      ]
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
%% Args:       <<[Mask]>>
%% Returns:    ok
%% C-API func: void glPolygonStipple(const GLubyte* mask)

polygonStipple(Mask)
 -> NewMask
    = if
        is_list(Mask)
      ; is_tuple(Mask)
          -> term2bin
             ( Mask
             , 128
             , ?GL_UNSIGNED_BYTE
             )
	    ; is_binary(Mask)
          -> Mask
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Mask
               }
             )
      end
  , cast
    ( ?glPolygonStipple
    , [ NewMask
      ]
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
%% Args:       N, <<[Textures]>>, <<[Priorities]>>
%% Returns:    ok
%% C-API func: void glPrioritizeTextures(GLsizei n, const GLuint* textures, const GLclampf* priorities)

prioritizeTextures(N, Textures, Priorities)
 -> NewTextures
    = if
        is_list(Textures)
      ; is_tuple(Textures)
          -> term2bin
             ( Textures
             , N
             , ?GL_UNSIGNED_INT
             )
      ; is_binary(Textures)
          -> Textures
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Textures
               }
             )
      end
  , NewPriorities
    = if
        is_list(Priorities)
      ; is_tuple(Priorities)
          -> term2bin
             ( Priorities
             , N
             , ?GL_FLOAT
             )
      ; is_binary(Priorities)
          -> Priorities
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Priorities
               }
             )
      end
  , cast
    ( ?glPrioritizeTextures
    , [ <<N:?GLsizei
        >>
      , NewTextures
      , NewPriorities
      ]
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

-ifdef(UseAllGlFunc).
  rasterPos2d(X, Y)
   -> cast
      ( ?glRasterPos2d
      , <<X:?GLdouble
        , Y:?GLdouble
        >>
      )
  .
-else.
  rasterPos2d(X, Y)
   -> cast
      ( ?glRasterPos2dv
      , <<X:?GLdouble
        , Y:?GLdouble
        >>
      )
  .
-endif.

%% Func:       rasterPos2dv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glRasterPos2dv(const GLdouble* v)

rasterPos2dv({V1, V2})
 -> cast
    ( ?glRasterPos2dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      >>
    )
.

%% Func:       rasterPos2f
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glRasterPos2f(GLfloat x, GLfloat y)

-ifdef(UseAllGlFunc).
  rasterPos2f(X, Y)
   -> cast
      ( ?glRasterPos2f
      , <<X:?GLfloat
        , Y:?GLfloat
        >>
      )
  .
-else.
  rasterPos2f(X, Y)
   -> cast
      ( ?glRasterPos2fv
      , <<X:?GLfloat
        , Y:?GLfloat
        >>
      )
  .
-endif.

%% Func:       rasterPos2fv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glRasterPos2fv(const GLfloat* v)

rasterPos2fv({V1, V2})
 -> cast
    ( ?glRasterPos2fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      >>
    )
.

%% Func:       rasterPos2i
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glRasterPos2i(GLint x, GLint y)

-ifdef(UseAllGlFunc).
  rasterPos2i(X, Y)
   -> cast
      ( ?glRasterPos2i
      , <<X:?GLint
        , Y:?GLint
        >>
      )
  .
-else.
  rasterPos2i(X, Y)
   -> cast
      ( ?glRasterPos2iv
      , <<X:?GLint
        , Y:?GLint
        >>
      )
  .
-endif.

%% Func:       rasterPos2iv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glRasterPos2iv(const GLint* v)

rasterPos2iv({V1, V2})
 -> cast
    ( ?glRasterPos2iv
    , <<V1:?GLint
      , V2:?GLint
      >>
    )
.

%% Func:       rasterPos2s
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glRasterPos2s(GLshort x, GLshort y)

-ifdef(UseAllGlFunc).
  rasterPos2s(X, Y)
   -> cast
      ( ?glRasterPos2s
      , <<X:?GLshort
        , Y:?GLshort
        >>
      )
  .
-else.
  rasterPos2s(X, Y)
   -> cast
      ( ?glRasterPos2sv
      , <<X:?GLshort
        , Y:?GLshort
        >>
      )
  .
-endif.

%% Func:       rasterPos2sv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glRasterPos2sv(const GLshort* v)

rasterPos2sv({V1, V2})
 -> cast
    ( ?glRasterPos2sv
    , <<V1:?GLshort
      , V2:?GLshort
      >>
    )
.

%% Func:       rasterPos3d
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z)

-ifdef(UseAllGlFunc).
  rasterPos3d(X, Y, Z)
   -> cast
      ( ?glRasterPos3d
      , <<X:?GLdouble
        , Y:?GLdouble
        , Z:?GLdouble
        >>
      )
  .
-else.
  rasterPos3d(X, Y, Z)
   -> cast
      ( ?glRasterPos3dv
      , <<X:?GLdouble
        , Y:?GLdouble
        , Z:?GLdouble
        >>
      )
  .
-endif.

%% Func:       rasterPos3dv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glRasterPos3dv(const GLdouble* v)

rasterPos3dv({V1, V2, V3})
 -> cast
    ( ?glRasterPos3dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      , V3:?GLdouble
      >>
    )
.

%% Func:       rasterPos3f
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z)

-ifdef(UseAllGlFunc).
  rasterPos3f(X, Y, Z)
   -> cast
      ( ?glRasterPos3f
      , <<X:?GLfloat
        , Y:?GLfloat
        , Z:?GLfloat
        >>
      )
  .
-else.
  rasterPos3f(X, Y, Z)
   -> cast
      ( ?glRasterPos3fv
      , <<X:?GLfloat
        , Y:?GLfloat
        , Z:?GLfloat
        >>
      )
  .
-endif.

%% Func:       rasterPos3fv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glRasterPos3fv(const GLfloat* v)

rasterPos3fv({V1, V2, V3})
 -> cast
    ( ?glRasterPos3fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      >>
    )
.

%% Func:       rasterPos3i
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glRasterPos3i(GLint x, GLint y, GLint z)

-ifdef(UseAllGlFunc).
  rasterPos3i(X, Y, Z)
   -> cast
      ( ?glRasterPos3i
      , <<X:?GLint
        , Y:?GLint
        , Z:?GLint
        >>
      )
  .
-else.
  rasterPos3i(X, Y, Z)
   -> cast
      ( ?glRasterPos3iv
      , <<X:?GLint
        , Y:?GLint
        , Z:?GLint
        >>
      )
  .
-endif.

%% Func:       rasterPos3iv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glRasterPos3iv(const GLint* v)

rasterPos3iv({V1, V2, V3})
 -> cast
    ( ?glRasterPos3iv
    , <<V1:?GLint
      , V2:?GLint
      , V3:?GLint
      >>
    )
.

%% Func:       rasterPos3s
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glRasterPos3s(GLshort x, GLshort y, GLshort z)

-ifdef(UseAllGlFunc).
  rasterPos3s(X, Y, Z)
   -> cast
      ( ?glRasterPos3s
      , <<X:?GLshort
        , Y:?GLshort
        , Z:?GLshort
        >>
      )
  .
-else.
  rasterPos3s(X, Y, Z)
   -> cast
      ( ?glRasterPos3sv
      , <<X:?GLshort
        , Y:?GLshort
        , Z:?GLshort
        >>
      )
  .
-endif.

%% Func:       rasterPos3sv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glRasterPos3sv(const GLshort* v)

rasterPos3sv({V1, V2, V3})
 -> cast
    ( ?glRasterPos3sv
    , <<V1:?GLshort
      , V2:?GLshort
      , V3:?GLshort
      >>
    )
.

%% Func:       rasterPos4d
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)

-ifdef(UseAllGlFunc).
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
-else.
  rasterPos4d(X, Y, Z, W)
   -> cast
      ( ?glRasterPos4dv
      , <<X:?GLdouble
        , Y:?GLdouble
        , Z:?GLdouble
        , W:?GLdouble
        >>
      )
  .
-endif.

%% Func:       rasterPos4dv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glRasterPos4dv(const GLdouble* v)

rasterPos4dv({V1, V2, V3, V4})
 -> cast
    ( ?glRasterPos4dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      , V3:?GLdouble
      , V4:?GLdouble
      >>
    )
.

%% Func:       rasterPos4f
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

-ifdef(UseAllGlFunc).
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
-else.
  rasterPos4f(X, Y, Z, W)
   -> cast
      ( ?glRasterPos4fv
      , <<X:?GLfloat
        , Y:?GLfloat
        , Z:?GLfloat
        , W:?GLfloat
        >>
      )
  .
-endif.

%% Func:       rasterPos4fv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glRasterPos4fv(const GLfloat* v)

rasterPos4fv({V1, V2, V3, V4})
 -> cast
    ( ?glRasterPos4fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      , V4:?GLfloat
      >>
    )
.

%% Func:       rasterPos4i
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glRasterPos4i(GLint x, GLint y, GLint z, GLint w)

-ifdef(UseAllGlFunc).
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
-else.
  rasterPos4i(X, Y, Z, W)
   -> cast
      ( ?glRasterPos4iv
      , <<X:?GLint
        , Y:?GLint
        , Z:?GLint
        , W:?GLint
        >>
      )
  .
-endif.

%% Func:       rasterPos4iv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glRasterPos4iv(const GLint* v)

rasterPos4iv({V1, V2, V3, V4})
 -> cast
    ( ?glRasterPos4iv
    , <<V1:?GLint
      , V2:?GLint
      , V3:?GLint
      , V4:?GLint
      >>
    )
.

%% Func:       rasterPos4s
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w)

-ifdef(UseAllGlFunc).
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
-else.
  rasterPos4s(X, Y, Z, W)
   -> cast
      ( ?glRasterPos4sv
      , <<X:?GLshort
        , Y:?GLshort
        , Z:?GLshort
        , W:?GLshort
        >>
      )
  .
-endif.

%% Func:       rasterPos4sv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glRasterPos4sv(const GLshort* v)

rasterPos4sv({V1, V2, V3, V4})
 -> cast
    ( ?glRasterPos4sv
    , <<V1:?GLshort
      , V2:?GLshort
      , V3:?GLshort
      , V4:?GLshort
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
%% Args:       X, Y, Width, Height, Format, Type, #sdlmem{} = Pixels
%% Returns:    ok
%% C-API func: void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels)

readPixels(X, Y, Width, Height, Format, Type, #sdlmem{bin=Pixels})
 -> sdl:send_bin
    ( Pixels
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?glReadPixels
    , <<X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
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
%% Args:       <<[V1]>>, <<[V2]>>
%% Returns:    ok
%% C-API func: void glRectdv(const GLdouble* v1, const GLdouble* v2)

rectdv(V1, V2)
 -> NewV1
    = if
        is_list(V1)
      ; is_tuple(V1)
          -> term2bin
             ( V1
             , 2
             , ?GL_DOUBLE
             )
      ; is_binary(V1)
          -> V1
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , V1
               }
             )
      end
  , NewV2
    = if
        is_list(V2)
      ; is_tuple(V2)
          -> term2bin
             ( V2
             , 2
             , ?GL_DOUBLE
             )
      ; is_binary(V2)
          -> V2
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , V2
               }
             )
      end
  , cast
    ( ?glRectdv
    , [ NewV1
      , NewV2
      ]
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
%% Args:       <<[V1]>>, <<[V2]>>
%% Returns:    ok
%% C-API func: void glRectfv(const GLfloat* v1, const GLfloat* v2)

rectfv(V1, V2)
 -> NewV1
    = if
        is_list(V1)
      ; is_tuple(V1)
          -> term2bin
             ( V1
             , 2
             , ?GL_FLOAT
             )
      ; is_binary(V1)
          -> V1
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , V1
               }
             )
      end
  , NewV2
    = if
        is_list(V2)
      ; is_tuple(V2)
          -> term2bin
             ( V2
             , 2
             , ?GL_FLOAT
             )
      ; is_binary(V2)
          -> V2
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , V2
               }
             )
      end
  , cast
    ( ?glRectfv
    , [ NewV1
      , NewV2
      ]
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
%% Args:       <<[V1]>>, <<[V2]>>
%% Returns:    ok
%% C-API func: void glRectiv(const GLint* v1, const GLint* v2)

rectiv(V1, V2)
 -> NewV1
    = if
        is_list(V1)
      ; is_tuple(V1)
          -> term2bin
             ( V1
             , 2
             , ?GL_INT
             )
      ; is_binary(V1)
          -> V1
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , V1
               }
             )
      end
  , NewV2
    = if
        is_list(V2)
      ; is_tuple(V2)
          -> term2bin
             ( V2
             , 2
             , ?GL_INT
             )
      ; is_binary(V2)
          -> V2
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , V2
               }
             )
      end
  , cast
    ( ?glRectiv
    , [ NewV1
      , NewV2
      ]
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
%% Args:       <<[V1]>>, <<[V2]>>
%% Returns:    ok
%% C-API func: void glRectsv(const GLshort* v1, const GLshort* v2)

rectsv(V1, V2)
 -> NewV1
    = if
        is_list(V1)
      ; is_tuple(V1)
          -> term2bin
             ( V1
             , 2
             , ?GL_SHORT
             )
      ; is_binary(V1)
          -> V1
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , V1
               }
             )
      end
  , NewV2
    = if
        is_list(V2)
      ; is_tuple(V2)
          -> term2bin
             ( V2
             , 2
             , ?GL_SHORT
             )
      ; is_binary(V2)
          -> V2
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , V2
               }
             )
      end
  , cast
    ( ?glRectsv
    , [ NewV1
      , NewV2
      ]
    )
.

%% Func:       renderMode
%% Args:       Mode
%% Returns:    ?GL_INT
%% C-API func: GLint glRenderMode(GLenum mode)

renderMode(Mode)
 -> Bin
    = call
      ( ?glRenderMode
      , <<Mode:?GLenum
        >>
      )
  , case
      Bin
    of 
      <<Ret:?GLint
      >>
        -> Ret
    ; Else
        -> erlang:error
           ( { ?MODULE
             , ?LINE
             , badtype
             , Else
             }
           )
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
%% Args:       Size, #sdlmem{} = Buffer
%% Returns:    ok
%% C-API func: void glSelectBuffer(GLsizei size, GLuint* buffer)

selectBuffer(Size, #sdlmem{bin=Buffer})
 -> sdl:send_bin
    ( Buffer
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?glSelectBuffer
    , <<Size:?GLsizei
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

-ifdef(UseAllGlFunc).
  texCoord1d(S)
   -> cast
      ( ?glTexCoord1d
      , <<S:?GLdouble
        >>
      )
  .
-else.
  texCoord1d(S)
   -> cast
      ( ?glTexCoord1dv
      , <<S:?GLdouble
        >>
      )
  .
-endif.

%% Func:       texCoord1dv
%% Args:       {V1}
%% Returns:    ok
%% C-API func: void glTexCoord1dv(const GLdouble* v)

texCoord1dv({V1})
 -> cast
    ( ?glTexCoord1dv
    , <<V1:?GLdouble
      >>
    )
.

%% Func:       texCoord1f
%% Args:       S
%% Returns:    ok
%% C-API func: void glTexCoord1f(GLfloat s)

-ifdef(UseAllGlFunc).
  texCoord1f(S)
   -> cast
      ( ?glTexCoord1f
      , <<S:?GLfloat
        >>
      )
  .
-else.
  texCoord1f(S)
   -> cast
      ( ?glTexCoord1fv
      , <<S:?GLfloat
        >>
      )
  .
-endif.

%% Func:       texCoord1fv
%% Args:       {V1}
%% Returns:    ok
%% C-API func: void glTexCoord1fv(const GLfloat* v)

texCoord1fv({V1})
 -> cast
    ( ?glTexCoord1fv
    , <<V1:?GLfloat
      >>
    )
.

%% Func:       texCoord1i
%% Args:       S
%% Returns:    ok
%% C-API func: void glTexCoord1i(GLint s)

-ifdef(UseAllGlFunc).
  texCoord1i(S)
   -> cast
      ( ?glTexCoord1i
      , <<S:?GLint
        >>
      )
  .
-else.
  texCoord1i(S)
   -> cast
      ( ?glTexCoord1iv
      , <<S:?GLint
        >>
      )
  .
-endif.

%% Func:       texCoord1iv
%% Args:       {V1}
%% Returns:    ok
%% C-API func: void glTexCoord1iv(const GLint* v)

texCoord1iv({V1})
 -> cast
    ( ?glTexCoord1iv
    , <<V1:?GLint
      >>
    )
.

%% Func:       texCoord1s
%% Args:       S
%% Returns:    ok
%% C-API func: void glTexCoord1s(GLshort s)

-ifdef(UseAllGlFunc).
  texCoord1s(S)
   -> cast
      ( ?glTexCoord1s
      , <<S:?GLshort
        >>
      )
  .
-else.
  texCoord1s(S)
   -> cast
      ( ?glTexCoord1sv
      , <<S:?GLshort
        >>
      )
  .
-endif.

%% Func:       texCoord1sv
%% Args:       {V1}
%% Returns:    ok
%% C-API func: void glTexCoord1sv(const GLshort* v)

texCoord1sv({V1})
 -> cast
    ( ?glTexCoord1sv
    , <<V1:?GLshort
      >>
    )
.

%% Func:       texCoord2d
%% Args:       S, T
%% Returns:    ok
%% C-API func: void glTexCoord2d(GLdouble s, GLdouble t)

-ifdef(UseAllGlFunc).
  texCoord2d(S, T)
   -> cast
      ( ?glTexCoord2d
      , <<S:?GLdouble
        , T:?GLdouble
        >>
      )
  .
-else.
  texCoord2d(S, T)
   -> cast
      ( ?glTexCoord2dv
      , <<S:?GLdouble
        , T:?GLdouble
        >>
      )
  .
-endif.

%% Func:       texCoord2dv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glTexCoord2dv(const GLdouble* v)

texCoord2dv({V1, V2})
 -> cast
    ( ?glTexCoord2dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      >>
    )
.

%% Func:       texCoord2f
%% Args:       S, T
%% Returns:    ok
%% C-API func: void glTexCoord2f(GLfloat s, GLfloat t)

-ifdef(UseAllGlFunc).
  texCoord2f(S, T)
   -> cast
      ( ?glTexCoord2f
      , <<S:?GLfloat
        , T:?GLfloat
        >>
      )
  .
-else.
  texCoord2f(S, T)
   -> cast
      ( ?glTexCoord2fv
      , <<S:?GLfloat
        , T:?GLfloat
        >>
      )
  .
-endif.

%% Func:       texCoord2fv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glTexCoord2fv(const GLfloat* v)

texCoord2fv({V1, V2})
 -> cast
    ( ?glTexCoord2fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      >>
    )
.

%% Func:       texCoord2i
%% Args:       S, T
%% Returns:    ok
%% C-API func: void glTexCoord2i(GLint s, GLint t)

-ifdef(UseAllGlFunc).
  texCoord2i(S, T)
   -> cast
      ( ?glTexCoord2i
      , <<S:?GLint
        , T:?GLint
        >>
      )
  .
-else.
  texCoord2i(S, T)
   -> cast
      ( ?glTexCoord2iv
      , <<S:?GLint
        , T:?GLint
        >>
      )
  .
-endif.

%% Func:       texCoord2iv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glTexCoord2iv(const GLint* v)

texCoord2iv({V1, V2})
 -> cast
    ( ?glTexCoord2iv
    , <<V1:?GLint
      , V2:?GLint
      >>
    )
.

%% Func:       texCoord2s
%% Args:       S, T
%% Returns:    ok
%% C-API func: void glTexCoord2s(GLshort s, GLshort t)

-ifdef(UseAllGlFunc).
  texCoord2s(S, T)
   -> cast
      ( ?glTexCoord2s
      , <<S:?GLshort
        , T:?GLshort
        >>
      )
  .
-else.
  texCoord2s(S, T)
   -> cast
      ( ?glTexCoord2sv
      , <<S:?GLshort
        , T:?GLshort
        >>
      )
  .
-endif.

%% Func:       texCoord2sv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glTexCoord2sv(const GLshort* v)

texCoord2sv({V1, V2})
 -> cast
    ( ?glTexCoord2sv
    , <<V1:?GLshort
      , V2:?GLshort
      >>
    )
.

%% Func:       texCoord3d
%% Args:       S, T, R
%% Returns:    ok
%% C-API func: void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r)

-ifdef(UseAllGlFunc).
  texCoord3d(S, T, R)
   -> cast
      ( ?glTexCoord3d
      , <<S:?GLdouble
        , T:?GLdouble
        , R:?GLdouble
        >>
      )
  .
-else.
  texCoord3d(S, T, R)
   -> cast
      ( ?glTexCoord3dv
      , <<S:?GLdouble
        , T:?GLdouble
        , R:?GLdouble
        >>
      )
  .
-endif.

%% Func:       texCoord3dv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glTexCoord3dv(const GLdouble* v)

texCoord3dv({V1, V2, V3})
 -> cast
    ( ?glTexCoord3dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      , V3:?GLdouble
      >>
    )
.

%% Func:       texCoord3f
%% Args:       S, T, R
%% Returns:    ok
%% C-API func: void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r)

-ifdef(UseAllGlFunc).
  texCoord3f(S, T, R)
   -> cast
      ( ?glTexCoord3f
      , <<S:?GLfloat
        , T:?GLfloat
        , R:?GLfloat
        >>
      )
  .
-else.
  texCoord3f(S, T, R)
   -> cast
      ( ?glTexCoord3fv
      , <<S:?GLfloat
        , T:?GLfloat
        , R:?GLfloat
        >>
      )
  .
-endif.

%% Func:       texCoord3fv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glTexCoord3fv(const GLfloat* v)

texCoord3fv({V1, V2, V3})
 -> cast
    ( ?glTexCoord3fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      >>
    )
.

%% Func:       texCoord3i
%% Args:       S, T, R
%% Returns:    ok
%% C-API func: void glTexCoord3i(GLint s, GLint t, GLint r)

-ifdef(UseAllGlFunc).
  texCoord3i(S, T, R)
   -> cast
      ( ?glTexCoord3i
      , <<S:?GLint
        , T:?GLint
        , R:?GLint
        >>
      )
  .
-else.
  texCoord3i(S, T, R)
   -> cast
      ( ?glTexCoord3iv
      , <<S:?GLint
        , T:?GLint
        , R:?GLint
        >>
      )
  .
-endif.

%% Func:       texCoord3iv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glTexCoord3iv(const GLint* v)

texCoord3iv({V1, V2, V3})
 -> cast
    ( ?glTexCoord3iv
    , <<V1:?GLint
      , V2:?GLint
      , V3:?GLint
      >>
    )
.

%% Func:       texCoord3s
%% Args:       S, T, R
%% Returns:    ok
%% C-API func: void glTexCoord3s(GLshort s, GLshort t, GLshort r)

-ifdef(UseAllGlFunc).
  texCoord3s(S, T, R)
   -> cast
      ( ?glTexCoord3s
      , <<S:?GLshort
        , T:?GLshort
        , R:?GLshort
        >>
      )
  .
-else.
  texCoord3s(S, T, R)
   -> cast
      ( ?glTexCoord3sv
      , <<S:?GLshort
        , T:?GLshort
        , R:?GLshort
        >>
      )
  .
-endif.

%% Func:       texCoord3sv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glTexCoord3sv(const GLshort* v)

texCoord3sv({V1, V2, V3})
 -> cast
    ( ?glTexCoord3sv
    , <<V1:?GLshort
      , V2:?GLshort
      , V3:?GLshort
      >>
    )
.

%% Func:       texCoord4d
%% Args:       S, T, R, Q
%% Returns:    ok
%% C-API func: void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q)

-ifdef(UseAllGlFunc).
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
-else.
  texCoord4d(S, T, R, Q)
   -> cast
      ( ?glTexCoord4dv
      , <<S:?GLdouble
        , T:?GLdouble
        , R:?GLdouble
        , Q:?GLdouble
        >>
      )
  .
-endif.

%% Func:       texCoord4dv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glTexCoord4dv(const GLdouble* v)

texCoord4dv({V1, V2, V3, V4})
 -> cast
    ( ?glTexCoord4dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      , V3:?GLdouble
      , V4:?GLdouble
      >>
    )
.

%% Func:       texCoord4f
%% Args:       S, T, R, Q
%% Returns:    ok
%% C-API func: void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q)

-ifdef(UseAllGlFunc).
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
-else.
  texCoord4f(S, T, R, Q)
   -> cast
      ( ?glTexCoord4fv
      , <<S:?GLfloat
        , T:?GLfloat
        , R:?GLfloat
        , Q:?GLfloat
        >>
      )
  .
-endif.

%% Func:       texCoord4fv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glTexCoord4fv(const GLfloat* v)

texCoord4fv({V1, V2, V3, V4})
 -> cast
    ( ?glTexCoord4fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      , V4:?GLfloat
      >>
    )
.

%% Func:       texCoord4i
%% Args:       S, T, R, Q
%% Returns:    ok
%% C-API func: void glTexCoord4i(GLint s, GLint t, GLint r, GLint q)

-ifdef(UseAllGlFunc).
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
-else.
  texCoord4i(S, T, R, Q)
   -> cast
      ( ?glTexCoord4iv
      , <<S:?GLint
        , T:?GLint
        , R:?GLint
        , Q:?GLint
        >>
      )
  .
-endif.

%% Func:       texCoord4iv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glTexCoord4iv(const GLint* v)

texCoord4iv({V1, V2, V3, V4})
 -> cast
    ( ?glTexCoord4iv
    , <<V1:?GLint
      , V2:?GLint
      , V3:?GLint
      , V4:?GLint
      >>
    )
.

%% Func:       texCoord4s
%% Args:       S, T, R, Q
%% Returns:    ok
%% C-API func: void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q)

-ifdef(UseAllGlFunc).
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
-else.
  texCoord4s(S, T, R, Q)
   -> cast
      ( ?glTexCoord4sv
      , <<S:?GLshort
        , T:?GLshort
        , R:?GLshort
        , Q:?GLshort
        >>
      )
  .
-endif.

%% Func:       texCoord4sv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glTexCoord4sv(const GLshort* v)

texCoord4sv({V1, V2, V3, V4})
 -> cast
    ( ?glTexCoord4sv
    , <<V1:?GLshort
      , V2:?GLshort
      , V3:?GLshort
      , V4:?GLshort
      >>
    )
.

%% Func:       texCoordPointer
%% Args:       Size, Type, Stride, <<[Pointer]>>
%% Returns:    ok
%% C-API func: void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

texCoordPointer(Size, Type, Stride, Pointer)
 -> %% Maybe NULL or offset sometimes
    NewPointer
    = if
        is_integer(Pointer)
          -> Pointer
      ; true
          -> sdl:send_bin
             ( Pointer
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glTexCoordPointer
    , [ <<Size:?GLint
        , Type:?GLenum
        , Stride:?GLsizei
        , NewPointer:?_PTR
        >>
      ]
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
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexEnvfv(GLenum target, GLenum pname, const GLfloat* params)

texEnvfv(Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glTexEnvfv
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexEnviv(GLenum target, GLenum pname, const GLint* params)

texEnviv(Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glTexEnviv
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       Coord, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexGendv(GLenum coord, GLenum pname, const GLdouble* params)

texGendv(Coord, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
      ; is_tuple(Params)
          -> term2bin
             ( Params
             , 4
             , ?GL_DOUBLE
             )
      ; is_binary(Params)
          -> Params
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glTexGendv
    , [ <<Coord:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       Coord, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexGenfv(GLenum coord, GLenum pname, const GLfloat* params)

texGenfv(Coord, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
      ; is_tuple(Params)
          -> term2bin
             ( Params
             , 4
             , ?GL_FLOAT
             )
      ; is_binary(Params)
          -> Params
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glTexGenfv
    , [ <<Coord:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       Coord, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexGeniv(GLenum coord, GLenum pname, const GLint* params)

texGeniv(Coord, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
      ; is_tuple(Params)
          -> term2bin
             ( Params
             , 4
             , ?GL_INT
             )
      ; is_binary(Params)
          -> Params
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glTexGeniv
    , [ <<Coord:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       texImage1D
%% Args:       Target, Level, Internalformat, Width, Border, Format, Type, <<[Pixels]>>
%% Returns:    ok
%% C-API func: void glTexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

texImage1D(Target, Level, Internalformat, Width, Border, Format, Type, Pixels)
 -> %% Maybe NULL or offset sometimes
    NewPixels
    = if
        is_integer(Pixels)
          -> Pixels
      ; true
          -> sdl:send_bin
             ( Pixels
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glTexImage1D
    , [ <<Target:?GLenum
        , Level:?GLint
        , Internalformat:?GLint
        , Width:?GLsizei
        , Border:?GLint
        , Format:?GLenum
        , Type:?GLenum
        , NewPixels:?_PTR
        >>
      ]
    )
.

%% Func:       texImage2D
%% Args:       Target, Level, Internalformat, Width, Height, Border, Format, Type, <<[Pixels]>>
%% Returns:    ok
%% C-API func: void glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

texImage2D(Target, Level, Internalformat, Width, Height, Border, Format, Type, Pixels)
 -> %% Maybe NULL or offset sometimes
    NewPixels
    = if
        is_integer(Pixels)
          -> Pixels
      ; true
          -> sdl:send_bin
             ( Pixels
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glTexImage2D
    , [ <<Target:?GLenum
        , Level:?GLint
        , Internalformat:?GLint
        , Width:?GLsizei
        , Height:?GLsizei
        , Border:?GLint
        , Format:?GLenum
        , Type:?GLenum
        , NewPixels:?_PTR
        >>
      ]
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
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexParameterfv(GLenum target, GLenum pname, const GLfloat* params)

texParameterfv(Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_FLOAT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glTexParameterfv
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
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
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexParameteriv(GLenum target, GLenum pname, const GLint* params)

texParameteriv(Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
           , [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_INT
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 4):32/native
               >>
             , Params
             ]
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Params
               }
             )
      end
  , cast
    ( ?glTexParameteriv
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       texSubImage1D
%% Args:       Target, Level, Xoffset, Width, Format, Type, <<[Pixels]>>
%% Returns:    ok
%% C-API func: void glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels)

texSubImage1D(Target, Level, Xoffset, Width, Format, Type, Pixels)
 -> %% Maybe NULL or offset sometimes
    NewPixels
    = if
        is_integer(Pixels)
          -> Pixels
      ; true
          -> sdl:send_bin
             ( Pixels
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glTexSubImage1D
    , [ <<Target:?GLenum
        , Level:?GLint
        , Xoffset:?GLint
        , Width:?GLsizei
        , Format:?GLenum
        , Type:?GLenum
        , NewPixels:?_PTR
        >>
      ]
    )
.

%% Func:       texSubImage2D
%% Args:       Target, Level, Xoffset, Yoffset, Width, Height, Format, Type, <<[Pixels]>>
%% Returns:    ok
%% C-API func: void glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels)

texSubImage2D(Target, Level, Xoffset, Yoffset, Width, Height, Format, Type, Pixels)
 -> %% Maybe NULL or offset sometimes
    NewPixels
    = if
        is_integer(Pixels)
          -> Pixels
      ; true
          -> sdl:send_bin
             ( Pixels
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glTexSubImage2D
    , [ <<Target:?GLenum
        , Level:?GLint
        , Xoffset:?GLint
        , Yoffset:?GLint
        , Width:?GLsizei
        , Height:?GLsizei
        , Format:?GLenum
        , Type:?GLenum
        , NewPixels:?_PTR
        >>
      ]
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

-ifdef(UseAllGlFunc).
  vertex2d(X, Y)
   -> cast
      ( ?glVertex2d
      , <<X:?GLdouble
        , Y:?GLdouble
        >>
      )
  .
-else.
  vertex2d(X, Y)
   -> cast
      ( ?glVertex2dv
      , <<X:?GLdouble
        , Y:?GLdouble
        >>
      )
  .
-endif.

%% Func:       vertex2dv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glVertex2dv(const GLdouble* v)

vertex2dv({V1, V2})
 -> cast
    ( ?glVertex2dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      >>
    )
.

%% Func:       vertex2f
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glVertex2f(GLfloat x, GLfloat y)

-ifdef(UseAllGlFunc).
  vertex2f(X, Y)
   -> cast
      ( ?glVertex2f
      , <<X:?GLfloat
        , Y:?GLfloat
        >>
      )
  .
-else.
  vertex2f(X, Y)
   -> cast
      ( ?glVertex2fv
      , <<X:?GLfloat
        , Y:?GLfloat
        >>
      )
  .
-endif.

%% Func:       vertex2fv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glVertex2fv(const GLfloat* v)

vertex2fv({V1, V2})
 -> cast
    ( ?glVertex2fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      >>
    )
.

%% Func:       vertex2i
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glVertex2i(GLint x, GLint y)

-ifdef(UseAllGlFunc).
  vertex2i(X, Y)
   -> cast
      ( ?glVertex2i
      , <<X:?GLint
        , Y:?GLint
        >>
      )
  .
-else.
  vertex2i(X, Y)
   -> cast
      ( ?glVertex2iv
      , <<X:?GLint
        , Y:?GLint
        >>
      )
  .
-endif.

%% Func:       vertex2iv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glVertex2iv(const GLint* v)

vertex2iv({V1, V2})
 -> cast
    ( ?glVertex2iv
    , <<V1:?GLint
      , V2:?GLint
      >>
    )
.

%% Func:       vertex2s
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glVertex2s(GLshort x, GLshort y)

-ifdef(UseAllGlFunc).
  vertex2s(X, Y)
   -> cast
      ( ?glVertex2s
      , <<X:?GLshort
        , Y:?GLshort
        >>
      )
  .
-else.
  vertex2s(X, Y)
   -> cast
      ( ?glVertex2sv
      , <<X:?GLshort
        , Y:?GLshort
        >>
      )
  .
-endif.

%% Func:       vertex2sv
%% Args:       {V1, V2}
%% Returns:    ok
%% C-API func: void glVertex2sv(const GLshort* v)

vertex2sv({V1, V2})
 -> cast
    ( ?glVertex2sv
    , <<V1:?GLshort
      , V2:?GLshort
      >>
    )
.

%% Func:       vertex3d
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glVertex3d(GLdouble x, GLdouble y, GLdouble z)

-ifdef(UseAllGlFunc).
  vertex3d(X, Y, Z)
   -> cast
      ( ?glVertex3d
      , <<X:?GLdouble
        , Y:?GLdouble
        , Z:?GLdouble
        >>
      )
  .
-else.
  vertex3d(X, Y, Z)
   -> cast
      ( ?glVertex3dv
      , <<X:?GLdouble
        , Y:?GLdouble
        , Z:?GLdouble
        >>
      )
  .
-endif.

%% Func:       vertex3dv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glVertex3dv(const GLdouble* v)

vertex3dv({V1, V2, V3})
 -> cast
    ( ?glVertex3dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      , V3:?GLdouble
      >>
    )
.

%% Func:       vertex3f
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glVertex3f(GLfloat x, GLfloat y, GLfloat z)

-ifdef(UseAllGlFunc).
  vertex3f(X, Y, Z)
   -> cast
      ( ?glVertex3f
      , <<X:?GLfloat
        , Y:?GLfloat
        , Z:?GLfloat
        >>
      )
  .
-else.
  vertex3f(X, Y, Z)
   -> cast
      ( ?glVertex3fv
      , <<X:?GLfloat
        , Y:?GLfloat
        , Z:?GLfloat
        >>
      )
  .
-endif.

%% Func:       vertex3fv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glVertex3fv(const GLfloat* v)

vertex3fv({V1, V2, V3})
 -> cast
    ( ?glVertex3fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      >>
    )
.

%% Func:       vertex3i
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glVertex3i(GLint x, GLint y, GLint z)

-ifdef(UseAllGlFunc).
  vertex3i(X, Y, Z)
   -> cast
      ( ?glVertex3i
      , <<X:?GLint
        , Y:?GLint
        , Z:?GLint
        >>
      )
  .
-else.
  vertex3i(X, Y, Z)
   -> cast
      ( ?glVertex3iv
      , <<X:?GLint
        , Y:?GLint
        , Z:?GLint
        >>
      )
  .
-endif.

%% Func:       vertex3iv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glVertex3iv(const GLint* v)

vertex3iv({V1, V2, V3})
 -> cast
    ( ?glVertex3iv
    , <<V1:?GLint
      , V2:?GLint
      , V3:?GLint
      >>
    )
.

%% Func:       vertex3s
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glVertex3s(GLshort x, GLshort y, GLshort z)

-ifdef(UseAllGlFunc).
  vertex3s(X, Y, Z)
   -> cast
      ( ?glVertex3s
      , <<X:?GLshort
        , Y:?GLshort
        , Z:?GLshort
        >>
      )
  .
-else.
  vertex3s(X, Y, Z)
   -> cast
      ( ?glVertex3sv
      , <<X:?GLshort
        , Y:?GLshort
        , Z:?GLshort
        >>
      )
  .
-endif.

%% Func:       vertex3sv
%% Args:       {V1, V2, V3}
%% Returns:    ok
%% C-API func: void glVertex3sv(const GLshort* v)

vertex3sv({V1, V2, V3})
 -> cast
    ( ?glVertex3sv
    , <<V1:?GLshort
      , V2:?GLshort
      , V3:?GLshort
      >>
    )
.

%% Func:       vertex4d
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)

-ifdef(UseAllGlFunc).
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
-else.
  vertex4d(X, Y, Z, W)
   -> cast
      ( ?glVertex4dv
      , <<X:?GLdouble
        , Y:?GLdouble
        , Z:?GLdouble
        , W:?GLdouble
        >>
      )
  .
-endif.

%% Func:       vertex4dv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glVertex4dv(const GLdouble* v)

vertex4dv({V1, V2, V3, V4})
 -> cast
    ( ?glVertex4dv
    , <<V1:?GLdouble
      , V2:?GLdouble
      , V3:?GLdouble
      , V4:?GLdouble
      >>
    )
.

%% Func:       vertex4f
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

-ifdef(UseAllGlFunc).
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
-else.
  vertex4f(X, Y, Z, W)
   -> cast
      ( ?glVertex4fv
      , <<X:?GLfloat
        , Y:?GLfloat
        , Z:?GLfloat
        , W:?GLfloat
        >>
      )
  .
-endif.

%% Func:       vertex4fv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glVertex4fv(const GLfloat* v)

vertex4fv({V1, V2, V3, V4})
 -> cast
    ( ?glVertex4fv
    , <<V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      , V4:?GLfloat
      >>
    )
.

%% Func:       vertex4i
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertex4i(GLint x, GLint y, GLint z, GLint w)

-ifdef(UseAllGlFunc).
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
-else.
  vertex4i(X, Y, Z, W)
   -> cast
      ( ?glVertex4iv
      , <<X:?GLint
        , Y:?GLint
        , Z:?GLint
        , W:?GLint
        >>
      )
  .
-endif.

%% Func:       vertex4iv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glVertex4iv(const GLint* v)

vertex4iv({V1, V2, V3, V4})
 -> cast
    ( ?glVertex4iv
    , <<V1:?GLint
      , V2:?GLint
      , V3:?GLint
      , V4:?GLint
      >>
    )
.

%% Func:       vertex4s
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w)

-ifdef(UseAllGlFunc).
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
-else.
  vertex4s(X, Y, Z, W)
   -> cast
      ( ?glVertex4sv
      , <<X:?GLshort
        , Y:?GLshort
        , Z:?GLshort
        , W:?GLshort
        >>
      )
  .
-endif.

%% Func:       vertex4sv
%% Args:       {V1, V2, V3, V4}
%% Returns:    ok
%% C-API func: void glVertex4sv(const GLshort* v)

vertex4sv({V1, V2, V3, V4})
 -> cast
    ( ?glVertex4sv
    , <<V1:?GLshort
      , V2:?GLshort
      , V3:?GLshort
      , V4:?GLshort
      >>
    )
.

%% Func:       vertexPointer
%% Args:       Size, Type, Stride, <<[Pointer]>>
%% Returns:    ok
%% C-API func: void glVertexPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

vertexPointer(Size, Type, Stride, Pointer)
 -> %% Maybe NULL or offset sometimes
    NewPointer
    = if
        is_integer(Pointer)
          -> Pointer
      ; true
          -> sdl:send_bin
             ( Pointer
             , ?MODULE
             , ?LINE
             )
          ,  0
      end
  , cast
    ( ?glVertexPointer
    , [ <<Size:?GLint
        , Type:?GLenum
        , Stride:?GLsizei
        , NewPointer:?_PTR
        >>
      ]
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
