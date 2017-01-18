%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_glu.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_glu).

-include("exdl.hrl").

-ifdef(COMPILE_GLU).

%% 1- EXPORT

%-compile(export_all).

-export( [ errorString/1
         , errorUnicodeStringEXT/1
         , getString/1
         , ortho2D/4
         , perspective/4
         , pickMatrix/5
         , lookAt/9
         , project/9
         , unProject/9
         , scaleImage/9
         , build1DMipmaps/6
         , build2DMipmaps/7
         ]
       ).

%% glued there

-export( [ newQuadric/0
         , deleteQuadric/1
         , quadricNormals/2
         , quadricTexture/2
         , quadricOrientation/2
         , quadricDrawStyle/2
         , cylinder/6
         , disk/5
         , partialDisk/7
         , sphere/4
         , quadricCallback/3
         , newTess/0
         , deleteTess/1
         , tessBeginPolygon/2
         , tessBeginContour/1
         , tessVertex/3
         , tessEndContour/1
         , tessEndPolygon/1
         , tessProperty/3
         , tessNormal/4
         , tessCallback/3
         , getTessProperty/2
         , newNurbsRenderer/0
         , deleteNurbsRenderer/1
         , beginSurface/1
         , beginCurve/1
         , endCurve/1
         , endSurface/1
         , beginTrim/1
         , endTrim/1
         , pwlCurve/5
         , nurbsCurve/7
         , nurbsSurface/11
         , loadSamplingMatrices/4
         , nurbsProperty/3
         , getNurbsProperty/2
         , nurbsCallback/3
         ]
       ).

%% Backwards compatibility for old tesselator

-export( [ beginPolygon/1
         , nextContour/2
         , endPolygon/1
         ]
       ).

%% Triangulator

-export( [ doTriangulate/3
         ]
       ).

%% 2- INCLUDE

-include("exdl_glu.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       errorString
%% Args:       ErrCode
%% Returns:    Exdl
%% C-API func: const GLubyte* gluErrorString(GLenum errCode)

errorString(ErrCode)
 -> case
      call
      ( ?gluErrorString
      , <<ErrCode:?GLenum
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

%% Func:       errorUnicodeStringEXT
%% Args:       ErrCode
%% Returns:    Exdl
%% C-API func: const wchar_t* gluErrorUnicodeStringEXT(GLenum errCode)

errorUnicodeStringEXT(ErrCode)
 -> case
      call
      ( ?gluErrorUnicodeStringEXT
      , <<ErrCode:?GLenum
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

%% Func:       getString
%% Args:       Name
%% Returns:    Exdl
%% C-API func: const GLubyte* gluGetString(GLenum name)

getString(Name)
 -> case
      call
      ( ?gluGetString
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

%% Func:       ortho2D
%% Args:       Left, Right, Bottom, Top
%% Returns:    ok
%% C-API func: void gluOrtho2D(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top)

ortho2D(Left, Right, Bottom, Top)
 -> cast
    ( ?gluOrtho2D
    , <<Left:?GLdouble
      , Right:?GLdouble
      , Bottom:?GLdouble
      , Top:?GLdouble
      >>
    )
.

%% Func:       perspective
%% Args:       Fovy, Aspect, ZNear, ZFar
%% Returns:    ok
%% C-API func: void gluPerspective(GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar)

perspective(Fovy, Aspect, ZNear, ZFar)
 -> cast
    ( ?gluPerspective
    , <<Fovy:?GLdouble
      , Aspect:?GLdouble
      , ZNear:?GLdouble
      , ZFar:?GLdouble
      >>
    )
.

%% Func:       pickMatrix
%% Args:       X, Y, Width, Height, Viewport[4]
%% Returns:    ok
%% C-API func: void gluPickMatrix(GLdouble x, GLdouble y, GLdouble width, GLdouble height, GLint viewport[4])

pickMatrix(X, Y, Width, Height, Viewport[4])
 -> cast
    ( ?gluPickMatrix
    , <<X:?GLdouble
      , Y:?GLdouble
      , Width:?GLdouble
      , Height:?GLdouble
      , Viewport[4]:?GLint
      >>
    )
.

%% Func:       lookAt
%% Args:       Eyex, Eyey, Eyez, Centerx, Centery, Centerz, Upx, Upy, Upz
%% Returns:    ok
%% C-API func: void gluLookAt(GLdouble eyex, GLdouble eyey, GLdouble eyez, GLdouble centerx, GLdouble centery, GLdouble centerz, GLdouble upx, GLdouble upy, GLdouble upz)

lookAt(Eyex, Eyey, Eyez, Centerx, Centery, Centerz, Upx, Upy, Upz)
 -> cast
    ( ?gluLookAt
    , <<Eyex:?GLdouble
      , Eyey:?GLdouble
      , Eyez:?GLdouble
      , Centerx:?GLdouble
      , Centery:?GLdouble
      , Centerz:?GLdouble
      , Upx:?GLdouble
      , Upy:?GLdouble
      , Upz:?GLdouble
      >>
    )
.

%% Func:       project
%% Args:       Objx, Objy, Objz, ModelMatrix[16], ProjMatrix[16], Viewport[4], Winx, Winy, Winz
%% Returns:    Exdl
%% C-API func: int gluProject(GLdouble objx, GLdouble objy, GLdouble objz, const GLdouble modelMatrix[16], const GLdouble projMatrix[16], const GLint viewport[4], GLdouble* winx, GLdouble* winy, GLdouble* winz)

project(Objx, Objy, Objz, ModelMatrix[16], ProjMatrix[16], Viewport[4], Winx, Winy, Winz)
 -> case
      call
      ( ?gluProject
      , <<Objx:?GLdouble
        , Objy:?GLdouble
        , Objz:?GLdouble
        , ModelMatrix[16]:?GLdouble
        , ProjMatrix[16]:?GLdouble
        , Viewport[4]:?GLint
        , Winx:?_PTR
        , Winy:?_PTR
        , Winz:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       unProject
%% Args:       Winx, Winy, Winz, ModelMatrix[16], ProjMatrix[16], Viewport[4], Objx, Objy, Objz
%% Returns:    Exdl
%% C-API func: int gluUnProject(GLdouble winx, GLdouble winy, GLdouble winz, const GLdouble modelMatrix[16], const GLdouble projMatrix[16], const GLint viewport[4], GLdouble* objx, GLdouble* objy, GLdouble* objz)

unProject(Winx, Winy, Winz, ModelMatrix[16], ProjMatrix[16], Viewport[4], Objx, Objy, Objz)
 -> case
      call
      ( ?gluUnProject
      , <<Winx:?GLdouble
        , Winy:?GLdouble
        , Winz:?GLdouble
        , ModelMatrix[16]:?GLdouble
        , ProjMatrix[16]:?GLdouble
        , Viewport[4]:?GLint
        , Objx:?_PTR
        , Objy:?_PTR
        , Objz:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       scaleImage
%% Args:       Format, Widthin, Heightin, Typein, Datain, Widthout, Heightout, Typeout, Dataout
%% Returns:    Exdl
%% C-API func: int gluScaleImage(GLenum format, GLint widthin, GLint heightin, GLenum typein, const void* datain, GLint widthout, GLint heightout, GLenum typeout, void* dataout)

scaleImage(Format, Widthin, Heightin, Typein, Datain, Widthout, Heightout, Typeout, Dataout)
 -> case
      call
      ( ?gluScaleImage
      , <<Format:?GLenum
        , Widthin:?GLint
        , Heightin:?GLint
        , Typein:?GLenum
        , Datain:?_PTR
        , Widthout:?GLint
        , Heightout:?GLint
        , Typeout:?GLenum
        , Dataout:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       build1DMipmaps
%% Args:       Target, Components, Width, Format, Type, Data
%% Returns:    Exdl
%% C-API func: int gluBuild1DMipmaps(GLenum target, GLint components, GLint width, GLenum format, GLenum type, const void* data)

build1DMipmaps(Target, Components, Width, Format, Type, Data)
 -> case
      call
      ( ?gluBuild1DMipmaps
      , <<Target:?GLenum
        , Components:?GLint
        , Width:?GLint
        , Format:?GLenum
        , Type:?GLenum
        , Data:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       build2DMipmaps
%% Args:       Target, Components, Width, Height, Format, Type, Data
%% Returns:    Exdl
%% C-API func: int gluBuild2DMipmaps(GLenum target, GLint components, GLint width, GLint height, GLenum format, GLenum type, const void* data)

build2DMipmaps(Target, Components, Width, Height, Format, Type, Data)
 -> case
      call
      ( ?gluBuild2DMipmaps
      , <<Target:?GLenum
        , Components:?GLint
        , Width:?GLint
        , Height:?GLint
        , Format:?GLenum
        , Type:?GLenum
        , Data:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% glued there

%% Func:       newQuadric
%% Args:       none
%% Returns:    Exdl
%% C-API func: GLUquadric* gluNewQuadric(void)

newQuadric()
 -> case
      call
      ( ?gluNewQuadric
      , [
        ]
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

%% Func:       deleteQuadric
%% Args:       State
%% Returns:    ok
%% C-API func: void gluDeleteQuadric(GLUquadric* state)

deleteQuadric(State)
 -> cast
    ( ?gluDeleteQuadric
    , <<State:?_PTR
      >>
    )
.

%% Func:       quadricNormals
%% Args:       QuadObject, Normals
%% Returns:    ok
%% C-API func: void gluQuadricNormals(GLUquadric* quadObject, GLenum normals)

quadricNormals(QuadObject, Normals)
 -> cast
    ( ?gluQuadricNormals
    , <<QuadObject:?_PTR
      , Normals:?GLenum
      >>
    )
.

%% Func:       quadricTexture
%% Args:       QuadObject, TextureCoords
%% Returns:    ok
%% C-API func: void gluQuadricTexture(GLUquadric* quadObject, GLboolean textureCoords)

quadricTexture(QuadObject, TextureCoords)
 -> cast
    ( ?gluQuadricTexture
    , <<QuadObject:?_PTR
      , TextureCoords:?GLboolean
      >>
    )
.

%% Func:       quadricOrientation
%% Args:       QuadObject, Orientation
%% Returns:    ok
%% C-API func: void gluQuadricOrientation(GLUquadric* quadObject, GLenum orientation)

quadricOrientation(QuadObject, Orientation)
 -> cast
    ( ?gluQuadricOrientation
    , <<QuadObject:?_PTR
      , Orientation:?GLenum
      >>
    )
.

%% Func:       quadricDrawStyle
%% Args:       QuadObject, DrawStyle
%% Returns:    ok
%% C-API func: void gluQuadricDrawStyle(GLUquadric* quadObject, GLenum drawStyle)

quadricDrawStyle(QuadObject, DrawStyle)
 -> cast
    ( ?gluQuadricDrawStyle
    , <<QuadObject:?_PTR
      , DrawStyle:?GLenum
      >>
    )
.

%% Func:       cylinder
%% Args:       Qobj, BaseRadius, TopRadius, Height, Slices, Stacks
%% Returns:    ok
%% C-API func: void gluCylinder(GLUquadric* qobj, GLdouble baseRadius, GLdouble topRadius, GLdouble height, GLint slices, GLint stacks)

cylinder(Qobj, BaseRadius, TopRadius, Height, Slices, Stacks)
 -> cast
    ( ?gluCylinder
    , <<Qobj:?_PTR
      , BaseRadius:?GLdouble
      , TopRadius:?GLdouble
      , Height:?GLdouble
      , Slices:?GLint
      , Stacks:?GLint
      >>
    )
.

%% Func:       disk
%% Args:       Qobj, InnerRadius, OuterRadius, Slices, Loops
%% Returns:    ok
%% C-API func: void gluDisk(GLUquadric* qobj, GLdouble innerRadius, GLdouble outerRadius, GLint slices, GLint loops)

disk(Qobj, InnerRadius, OuterRadius, Slices, Loops)
 -> cast
    ( ?gluDisk
    , <<Qobj:?_PTR
      , InnerRadius:?GLdouble
      , OuterRadius:?GLdouble
      , Slices:?GLint
      , Loops:?GLint
      >>
    )
.

%% Func:       partialDisk
%% Args:       Qobj, InnerRadius, OuterRadius, Slices, Loops, StartAngle, SweepAngle
%% Returns:    ok
%% C-API func: void gluPartialDisk(GLUquadric* qobj, GLdouble innerRadius, GLdouble outerRadius, GLint slices, GLint loops, GLdouble startAngle, GLdouble sweepAngle)

partialDisk(Qobj, InnerRadius, OuterRadius, Slices, Loops, StartAngle, SweepAngle)
 -> cast
    ( ?gluPartialDisk
    , <<Qobj:?_PTR
      , InnerRadius:?GLdouble
      , OuterRadius:?GLdouble
      , Slices:?GLint
      , Loops:?GLint
      , StartAngle:?GLdouble
      , SweepAngle:?GLdouble
      >>
    )
.

%% Func:       sphere
%% Args:       Qobj, Radius, Slices, Stacks
%% Returns:    ok
%% C-API func: void gluSphere(GLUquadric* qobj, GLdouble radius, GLint slices, GLint stacks)

sphere(Qobj, Radius, Slices, Stacks)
 -> cast
    ( ?gluSphere
    , <<Qobj:?_PTR
      , Radius:?GLdouble
      , Slices:?GLint
      , Stacks:?GLint
      >>
    )
.

%% Func:       quadricCallback
%% Args:       Fn
%% Returns:    ok
%% C-API func: void gluQuadricCallback(GLUquadric* qobj, GLenum which, void(CALLBACK* fn)())

quadricCallback(Fn)
 -> cast
    ( ?gluQuadricCallback
    , <<Qobj:?_PTR
      , Which:?GLenum
      , Fn:?_PTR
      >>
    )
.

%% Func:       newTess
%% Args:       none
%% Returns:    Exdl
%% C-API func: GLUtesselator* gluNewTess(void)

newTess()
 -> case
      call
      ( ?gluNewTess
      , [
        ]
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

%% Func:       deleteTess
%% Args:       Tess
%% Returns:    ok
%% C-API func: void gluDeleteTess(GLUtesselator* tess)

deleteTess(Tess)
 -> cast
    ( ?gluDeleteTess
    , <<Tess:?_PTR
      >>
    )
.

%% Func:       tessBeginPolygon
%% Args:       Tess, PolygonData
%% Returns:    ok
%% C-API func: void gluTessBeginPolygon(GLUtesselator* tess, void* polygon_data)

tessBeginPolygon(Tess, PolygonData)
 -> cast
    ( ?gluTessBeginPolygon
    , <<Tess:?_PTR
      , PolygonData:?_PTR
      >>
    )
.

%% Func:       tessBeginContour
%% Args:       Tess
%% Returns:    ok
%% C-API func: void gluTessBeginContour(GLUtesselator* tess)

tessBeginContour(Tess)
 -> cast
    ( ?gluTessBeginContour
    , <<Tess:?_PTR
      >>
    )
.

%% Func:       tessVertex
%% Args:       Tess, Coords[3], Data
%% Returns:    ok
%% C-API func: void gluTessVertex(GLUtesselator* tess, GLdouble coords[3], void* data)

tessVertex(Tess, Coords[3], Data)
 -> cast
    ( ?gluTessVertex
    , <<Tess:?_PTR
      , Coords[3]:?GLdouble
      , Data:?_PTR
      >>
    )
.

%% Func:       tessEndContour
%% Args:       Tess
%% Returns:    ok
%% C-API func: void gluTessEndContour(GLUtesselator* tess)

tessEndContour(Tess)
 -> cast
    ( ?gluTessEndContour
    , <<Tess:?_PTR
      >>
    )
.

%% Func:       tessEndPolygon
%% Args:       Tess
%% Returns:    ok
%% C-API func: void gluTessEndPolygon(GLUtesselator* tess)

tessEndPolygon(Tess)
 -> cast
    ( ?gluTessEndPolygon
    , <<Tess:?_PTR
      >>
    )
.

%% Func:       tessProperty
%% Args:       Tess, Which, Value
%% Returns:    ok
%% C-API func: void gluTessProperty(GLUtesselator* tess, GLenum which, GLdouble value)

tessProperty(Tess, Which, Value)
 -> cast
    ( ?gluTessProperty
    , <<Tess:?_PTR
      , Which:?GLenum
      , Value:?GLdouble
      >>
    )
.

%% Func:       tessNormal
%% Args:       Tess, X, Y, Z
%% Returns:    ok
%% C-API func: void gluTessNormal(GLUtesselator* tess, GLdouble x, GLdouble y, GLdouble z)

tessNormal(Tess, X, Y, Z)
 -> cast
    ( ?gluTessNormal
    , <<Tess:?_PTR
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       tessCallback
%% Args:       Fn
%% Returns:    ok
%% C-API func: void gluTessCallback(GLUtesselator* tess, GLenum which, void(CALLBACK* fn)())

tessCallback(Fn)
 -> cast
    ( ?gluTessCallback
    , <<Tess:?_PTR
      , Which:?GLenum
      , Fn:?_PTR
      >>
    )
.

%% Func:       getTessProperty
%% Args:       Tess, Which
%% Returns:    { Value }
%% C-API func: void gluGetTessProperty(GLUtesselator* tess, GLenum which, GLdouble* value)

getTessProperty(Tess, Which)
 -> case
      call
      ( ?gluGetTessProperty
      , <<Tess:?_PTR
        , Which:?GLenum
        >>
      )
    of
      <<Value:?GLdouble
      >>
        -> { Value }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       newNurbsRenderer
%% Args:       none
%% Returns:    Exdl
%% C-API func: GLUnurbs* gluNewNurbsRenderer(void)

newNurbsRenderer()
 -> case
      call
      ( ?gluNewNurbsRenderer
      , [
        ]
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

%% Func:       deleteNurbsRenderer
%% Args:       Nobj
%% Returns:    ok
%% C-API func: void gluDeleteNurbsRenderer(GLUnurbs* nobj)

deleteNurbsRenderer(Nobj)
 -> cast
    ( ?gluDeleteNurbsRenderer
    , <<Nobj:?_PTR
      >>
    )
.

%% Func:       beginSurface
%% Args:       Nobj
%% Returns:    ok
%% C-API func: void gluBeginSurface(GLUnurbs* nobj)

beginSurface(Nobj)
 -> cast
    ( ?gluBeginSurface
    , <<Nobj:?_PTR
      >>
    )
.

%% Func:       beginCurve
%% Args:       Nobj
%% Returns:    ok
%% C-API func: void gluBeginCurve(GLUnurbs* nobj)

beginCurve(Nobj)
 -> cast
    ( ?gluBeginCurve
    , <<Nobj:?_PTR
      >>
    )
.

%% Func:       endCurve
%% Args:       Nobj
%% Returns:    ok
%% C-API func: void gluEndCurve(GLUnurbs* nobj)

endCurve(Nobj)
 -> cast
    ( ?gluEndCurve
    , <<Nobj:?_PTR
      >>
    )
.

%% Func:       endSurface
%% Args:       Nobj
%% Returns:    ok
%% C-API func: void gluEndSurface(GLUnurbs* nobj)

endSurface(Nobj)
 -> cast
    ( ?gluEndSurface
    , <<Nobj:?_PTR
      >>
    )
.

%% Func:       beginTrim
%% Args:       Nobj
%% Returns:    ok
%% C-API func: void gluBeginTrim(GLUnurbs* nobj)

beginTrim(Nobj)
 -> cast
    ( ?gluBeginTrim
    , <<Nobj:?_PTR
      >>
    )
.

%% Func:       endTrim
%% Args:       Nobj
%% Returns:    ok
%% C-API func: void gluEndTrim(GLUnurbs* nobj)

endTrim(Nobj)
 -> cast
    ( ?gluEndTrim
    , <<Nobj:?_PTR
      >>
    )
.

%% Func:       pwlCurve
%% Args:       Nobj, Count, Array, Stride, Type
%% Returns:    ok
%% C-API func: void gluPwlCurve(GLUnurbs* nobj, GLint count, GLfloat* array, GLint stride, GLenum type)

pwlCurve(Nobj, Count, Array, Stride, Type)
 -> cast
    ( ?gluPwlCurve
    , <<Nobj:?_PTR
      , Count:?GLint
      , Array:?_PTR
      , Stride:?GLint
      , Type:?GLenum
      >>
    )
.

%% Func:       nurbsCurve
%% Args:       Nobj, Nknots, Knot, Stride, Ctlarray, Order, Type
%% Returns:    ok
%% C-API func: void gluNurbsCurve(GLUnurbs* nobj, GLint nknots, GLfloat* knot, GLint stride, GLfloat* ctlarray, GLint order, GLenum type)

nurbsCurve(Nobj, Nknots, Knot, Stride, Ctlarray, Order, Type)
 -> cast
    ( ?gluNurbsCurve
    , <<Nobj:?_PTR
      , Nknots:?GLint
      , Knot:?_PTR
      , Stride:?GLint
      , Ctlarray:?_PTR
      , Order:?GLint
      , Type:?GLenum
      >>
    )
.

%% Func:       nurbsSurface
%% Args:       Nobj, SknotCount, Sknot, TknotCount, Tknot, SStride, TStride, Ctlarray, Sorder, Torder, Type
%% Returns:    ok
%% C-API func: void gluNurbsSurface(GLUnurbs* nobj, GLint sknot_count, float* sknot, GLint tknot_count, GLfloat* tknot, GLint s_stride, GLint t_stride, GLfloat* ctlarray, GLint sorder, GLint torder, GLenum type)

nurbsSurface(Nobj, SknotCount, Sknot, TknotCount, Tknot, SStride, TStride, Ctlarray, Sorder, Torder, Type)
 -> cast
    ( ?gluNurbsSurface
    , <<Nobj:?_PTR
      , SknotCount:?GLint
      , Sknot:?_PTR
      , TknotCount:?GLint
      , Tknot:?_PTR
      , SStride:?GLint
      , TStride:?GLint
      , Ctlarray:?_PTR
      , Sorder:?GLint
      , Torder:?GLint
      , Type:?GLenum
      >>
    )
.

%% Func:       loadSamplingMatrices
%% Args:       Nobj, ModelMatrix[16], ProjMatrix[16], Viewport[4]
%% Returns:    ok
%% C-API func: void gluLoadSamplingMatrices(GLUnurbs* nobj, const GLfloat modelMatrix[16], const GLfloat projMatrix[16], const GLint viewport[4])

loadSamplingMatrices(Nobj, ModelMatrix[16], ProjMatrix[16], Viewport[4])
 -> cast
    ( ?gluLoadSamplingMatrices
    , <<Nobj:?_PTR
      , ModelMatrix[16]:?GLfloat
      , ProjMatrix[16]:?GLfloat
      , Viewport[4]:?GLint
      >>
    )
.

%% Func:       nurbsProperty
%% Args:       Nobj, Property, Value
%% Returns:    ok
%% C-API func: void gluNurbsProperty(GLUnurbs* nobj, GLenum property, GLfloat value)

nurbsProperty(Nobj, Property, Value)
 -> cast
    ( ?gluNurbsProperty
    , <<Nobj:?_PTR
      , Property:?GLenum
      , Value:?GLfloat
      >>
    )
.

%% Func:       getNurbsProperty
%% Args:       Nobj, Property
%% Returns:    { Value }
%% C-API func: void gluGetNurbsProperty(GLUnurbs* nobj, GLenum property, GLfloat* value)

getNurbsProperty(Nobj, Property)
 -> case
      call
      ( ?gluGetNurbsProperty
      , <<Nobj:?_PTR
        , Property:?GLenum
        >>
      )
    of
      <<Value:?GLfloat
      >>
        -> { Value }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       nurbsCallback
%% Args:       Fn
%% Returns:    ok
%% C-API func: void gluNurbsCallback(GLUnurbs* nobj, GLenum which, void(CALLBACK* fn)())

nurbsCallback(Fn)
 -> cast
    ( ?gluNurbsCallback
    , <<Nobj:?_PTR
      , Which:?GLenum
      , Fn:?_PTR
      >>
    )
.

%% Backwards compatibility for old tesselator

%% Func:       beginPolygon
%% Args:       Tess
%% Returns:    ok
%% C-API func: void gluBeginPolygon(GLUtesselator* tess)

beginPolygon(Tess)
 -> cast
    ( ?gluBeginPolygon
    , <<Tess:?_PTR
      >>
    )
.

%% Func:       nextContour
%% Args:       Tess, Type
%% Returns:    ok
%% C-API func: void gluNextContour(GLUtesselator* tess, GLenum type)

nextContour(Tess, Type)
 -> cast
    ( ?gluNextContour
    , <<Tess:?_PTR
      , Type:?GLenum
      >>
    )
.

%% Func:       endPolygon
%% Args:       Tess
%% Returns:    ok
%% C-API func: void gluEndPolygon(GLUtesselator* tess)

endPolygon(Tess)
 -> cast
    ( ?gluEndPolygon
    , <<Tess:?_PTR
      >>
    )
.

%% Triangulator

%% Func:       doTriangulate
%% Args:       Sd, Len, Buff
%% Returns:    ok
%% C-API func: void gluDoTriangulate(exdl_data_ptr sd, int len, char* buff)

doTriangulate(Sd, Len, Buff)
 -> cast
    ( ?gluDoTriangulate
    , <<Sd:?Exdl_data_ptr
      , Len:?Int
      , Buff:?_PTR
      >>
    )
.


-endif. % COMPILE_GLU
