%%
%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_glu.erl,v 1.2 2005/06/29 14:45:39 dgud Exp $
%%

-module(exdl_glu).

-include("exdl.hrl").

-ifdef(COMPILE_GLU).

%% 0- RECORD

-record(quadricPtr, {ptr}).
-record(nurbsPtr  , {ptr}).
-record(tessPtr  ,  {ptr}).

-define(EXDL_TESS_VTXDATA_MATERIAL,  1).
-define(EXDL_TESS_VTXDATA_TEXCOORD2, 2).
-define(EXDL_TESS_VTXDATA_NORMAL  ,  4).
-define(EXDL_TESS_VTXDATA_COLOR  ,   8).

%% 1- EXPORT

%-compile(export_all).

%% Vieving and matrix operations.
-export( [ lookAt/9
         , ortho2D/4
         , perspective/4
         , pickMatrix/5
         , project/6
         , unProject/6
         ]
       ).

%% Tesselation.
-export( [ newTess/0
         , tessBeginPolygon/1
         , tessEndPolygon/1
         , tessBeginContour/1
         , tessEndContour/1
         , tessProperty/3
         , getTessProperty/2
         , tessCallback/3
         , tessVertex/2
         , tessVertex/3
         , tessNormal/4
         , deleteTess/1
         ]
       ).

%% Qadrics.
-export( [ newQuadric/0
         , deleteQuadric/1
         , quadricDrawStyle/2
         , quadricNormals/2
         , quadricOrientation/2
         , quadricTexture/2
         , cylinder/6
         , disk/5
         , partialDisk/7
         , sphere/4
         ]
       ).
   
%% Nurbs.
-export( [ newNurbsRenderer/0
         , deleteNurbsRenderer/1
         , beginCurve/1
         , endCurve/1
         , beginSurface/1
         , endSurface/1
         , beginTrim/1
         , endTrim/1
         , nurbsCurve/7
         , nurbsSurface/11
         , nurbsProperty/3
         , getNurbsProperty/2
         , pwlCurve/5
         , loadSamplingMatrices/4
         ]
       ).

%% Images & textures.
-export( [ scaleImage/9
         , build1DMipmaps/6
         , build2DMipmaps/7
         ]
       ).

%% Info functions.
-export( [ getString/1
         , errorString/1
         ]
       ).

%% 2- INCLUDE

-include("exdl.hrl").

-include("exdl_util.hrl").

-include("exdl_gl.hrl").
-include("exdl_glu.hrl").
%-include("exdl_glu_fp.hrl").

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

convert_vtxdata([{normal, {X, Y, Z}} | T], Ops, Acc)
 -> convert_vtxdata
    ( T
    , Ops bor ?EXDL_TESS_VTXDATA_NORMAL
    , [ <<X:32/native-float
        , Y:32/native-float
        , Z:32/native-float
        >>
      | Acc
      ]
    )
; convert_vtxdata([{material, Face, Pname, {R, G, B}} | T], Ops, Acc)
 -> convert_vtxdata
    ( T
    , Ops bor ?EXDL_TESS_VTXDATA_MATERIAL
    , [ <<Face:16/native-unsigned
        , Pname:16/native-unsigned
        , R:?GLclampf
        , G:?GLclampf
        , B:?GLclampf
        , 1:?GLclampf
        >>
      | Acc
      ]
    )
; convert_vtxdata([{material, Face, Pname, {R, G, B, A}} | T], Ops, Acc)
 -> convert_vtxdata
    ( T
    , Ops bor ?EXDL_TESS_VTXDATA_MATERIAL
    , [ <<Face:16/native-unsigned
        , Pname:16/native-unsigned
        , R:?GLclampf
        , G:?GLclampf
        , B:?GLclampf
        , A:?GLclampf
        >>
      | Acc
      ]
    )
; convert_vtxdata([{color, {R, G, B}} | T], Ops, Acc)
 -> convert_vtxdata
    ( T
    , Ops bor ?EXDL_TESS_VTXDATA_COLOR
    , [ <<R:?GLclampf
        , G:?GLclampf
        , B:?GLclampf
        , 1:?GLclampf
        >>
      | Acc
      ]
    )
; convert_vtxdata([{color, {R, G, B, A}} | T], Ops, Acc)
 -> convert_vtxdata
    ( T
    , Ops bor ?EXDL_TESS_VTXDATA_COLOR
    , [ <<R:?GLclampf
        , G:?GLclampf
        , B:?GLclampf
        , A:?GLclampf
        >>
      | Acc
      ]
    )
; convert_vtxdata([{texcoord2, {U, V}} | T], Ops, Acc)
 -> convert_vtxdata
    ( T
    , Ops bor ?EXDL_TESS_VTXDATA_TEXCOORD2
    , [ <<U:32/native-float
        , V:32/native-float
        >>
      | Acc
      ]
    )
; convert_vtxdata([], Ops, Acc)
  -> [ Acc
     , Ops
     ]
.

%% Sort here so that we know that all data for all vertices
%% come in the same order; the driver depends on it...
tessVertex(#tessPtr{ptr = Tobj}, {X, Y, Z}, VtxData0)
 -> VtxData
    = convert_vtxdata
      ( lists:sort(VtxData0)
      , 0
      , []
      )
  , Data
    = [ <<Tobj:?_PTR
        , X:?GLdouble
        , Y:?GLdouble
        , Z:?GLdouble
        >>
      | VtxData
      ]
  , cast
    ( ?gluTessVertex
    , Data
    )
.











%% Func:       pwlCurve 
%% Args:       Nurb, Count, <<[Data]>>, Stride, Type
%% Returns:    ok
%% C-API func: void gluPwlCurve(GLUnurbs* nurb, GLint count, const GLfloat* data, GLint stride, GLenum type)

pwlCurve(Nurb=#nurbsPtr{}, Count, Data, Stride, Type)
 -> sdl:send_bin
    ( Data
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?gluPwlCurve
    , <<(Nurb#nurbsPtr.ptr):?_PTR
      , Count:?GLint
      , Stride:?GLint
      , Type:?GLenum
      >>
    )
.

%% Func:       errorString
%% Args:       Error
%% Returns:    [?GL_UNSIGNED_BYTE]
%% C-API func: GLubyte* gluErrorString(GLenum error)

errorString(Error)
 -> Bin
    = call
      ( ?gluErrorString
      , <<Error:?GLenum
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

%% Func:       getString
%% Args:       Name
%% Returns:    [?GL_UNSIGNED_BYTE]
%% C-API func: GLubyte* gluGetString(GLenum name)

getString(Name)
 -> Bin
    = call
      ( ?gluGetString
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
%% Args:       X, Y, DelX, DelY, <<[Viewport]>>
%% Returns:    ok
%% C-API func: void gluPickMatrix(GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, const GLint* viewport)

pickMatrix(X, Y, DelX, DelY, Viewport)
 -> NewViewport
    = if
        is_list(Viewport)
      ; is_tuple(Viewport)
          -> term2bin
             ( Viewport
             , 4
             , ?GLint
             )
      ; is_binary(Viewport)
          -> Viewport
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Viewport
               }
             )
      end
  , cast
    ( ?gluPickMatrix
    , [ <<X:?GLdouble
        , Y:?GLdouble
        , DelX:?GLdouble
        , DelY:?GLdouble
        >>
      , NewViewport
      ]
    )
.

%% Func:       lookAt
%% Args:       EyeX, EyeY, EyeZ, CenterX, CenterY, CenterZ, UpX, UpY, UpZ
%% Returns:    ok
%% C-API func: void gluLookAt(GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ)

lookAt(EyeX, EyeY, EyeZ, CenterX, CenterY, CenterZ, UpX, UpY, UpZ)
 -> cast
    ( ?gluLookAt
    , <<EyeX:?GLdouble
      , EyeY:?GLdouble
      , EyeZ:?GLdouble
      , CenterX:?GLdouble
      , CenterY:?GLdouble
      , CenterZ:?GLdouble
      , UpX:?GLdouble
      , UpY:?GLdouble
      , UpZ:?GLdouble
      >>
    )
.

%% Func:       project
%% Args:       ObjX, ObjY, ObjZ, <<[Model]>>, <<[Proj]>>, <<[View]>>
%% Returns:    {WinX, WinY, WinZ} | error
%% C-API func: GLint gluProject(GLdouble objX, GLdouble objY, GLdouble objZ, const GLdouble* model, const GLdouble* proj, const GLint* view, GLdouble* winX, GLdouble* winY, GLdouble* winZ)

project(ObjX, ObjY, ObjZ, Model, Proj, View)
 -> NewModel
    = if
        is_list(Model)
      ; is_tuple(Model)
          -> term2bin
             ( Model
             , 16
             , ?GLdouble
             )
      ; is_binary(Model)
          -> Model
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Model
               }
             )
      end
  , NewProj
    = if
        is_list(Proj)
      ; is_tuple(Proj)
          -> term2bin
             ( Proj
             , 16
             , ?GLdouble
             )
      ; is_binary(Proj)
          -> Proj
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Proj
               }
             )
      end
  , NewView
    = if
        is_list(View)
      ; is_tuple(View)
          -> term2bin
             ( View
             , 4
             , ?GLint
             )
      ; is_binary(View)
          -> View
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , View
               }
             )
      end
  , Res
    = call
      ( ?gluProject
      , [ <<ObjX:?GLdouble
          , ObjY:?GLdouble
          , ObjZ:?GLdouble
          >>
        , NewModel
        , NewProj
        , NewView
        ]
      )
  , case
      Res
    of
      <<WinX:?GLdouble
      , WinY:?GLdouble
      , WinZ:?GLdouble
      >>
        -> { WinX
           , WinY
           , WinZ
           }
    ; []
        -> error
    end
.

%% Func:       unProject
%% Args:       WinX, WinY, WinZ, <<[Model]>>, <<[Proj]>>, <<[View]>>
%% Returns:    {ObjX, ObjY, ObjZ} | error
%% C-API func: GLint gluUnProject(GLdouble winX, GLdouble winY, GLdouble winZ, const GLdouble* model, const GLdouble* proj, const GLint* view, GLdouble* objX, GLdouble* objY, GLdouble* objZ)

unProject(WinX, WinY, WinZ, Model, Proj, View)
 -> NewModel
    = if
        is_list(Model)
      ; is_tuple(Model)
          -> term2bin
             ( Model
             , 16
             , ?GLdouble
             )
      ; is_binary(Model)
          -> Model
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Model
               }
             )
      end
  , NewProj
    = if
        is_list(Proj)
      ; is_tuple(Proj)
          -> term2bin
             ( Proj
             , 16
             , ?GLdouble
             )
      ; is_binary(Proj)
          -> Proj
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Proj
               }
             )
      end
  , NewView
    = if
        is_list(View)
      ; is_tuple(View)
          -> term2bin
             ( View
             , 4
             , ?GLint
             )
      ; is_binary(View)
          -> View
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , View
               }
             )
    end
  , Res
    = call
      ( ?gluUnProject
      , [ <<WinX:?GLdouble
          , WinY:?GLdouble
          , WinZ:?GLdouble
          >>
        , NewModel
        , NewProj
        , NewView
        ]
      )
  , case
      Res
    of
      <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
        -> { X
           , Y
           , Z
           }
    ; []
        -> error
    end
.

%% Func:       scaleImage
%% Args:       Format, WIn, HIn, TypeIn, <<[DataIn]>>, WOut, HOut, TypeOut, #sdlmem{} = DataOut
%% Returns:    ?GLint
%% C-API func: GLint gluScaleImage(GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, const void* dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut)

scaleImage(Format, WIn, HIn, TypeIn, DataIn, WOut, HOut, TypeOut, #sdlmem{bin=DataOut})
 -> sdl:send_bin
    ( DataIn
    , ?MODULE
    , ?LINE
    )
  , sdl:send_bin
    ( DataOut
    )
  , Bin
    = call
      ( ?gluScaleImage
      , <<Format:?GLenum
        , WIn:?GLint
        , HIn:?GLint
        , TypeIn:?GLenum
        , WOut:?GLint
        , HOut:?GLint
        , TypeOut:?GLenum
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

%% Func:       build1DMipmaps
%% Args:       Target, InternalFormat, Width, Format, Type, <<[Data]>>
%% Returns:    ?GLint
%% C-API func: GLint gluBuild1DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, const void* data)

build1DMipmaps(Target, InternalFormat, Width, Format, Type, Data)
 -> sdl:send_bin
    ( Data
    , ?MODULE
    , ?LINE
    )
  , Bin
    = call
      ( ?gluBuild1DMipmaps
      , <<Target:?GLenum
        , InternalFormat:?GLint
        , Width:?GLint
        , Format:?GLenum
        , Type:?GLenum
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

%% Func:       build2DMipmaps
%% Args:       Target, InternalFormat, Width, Height, Format, Type, <<[Data]>>
%% Returns:    ?GLint
%% C-API func: GLint gluBuild2DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void* data)

build2DMipmaps(Target, InternalFormat, Width, Height, Format, Type, Data)
 -> sdl:send_bin
    ( Data
    , ?MODULE
    , ?LINE
    )
  , Bin
    = call
      ( ?gluBuild2DMipmaps
      , <<Target:?GLenum
        , InternalFormat:?GLint
        , Width:?GLint
        , Height:?GLint
        , Format:?GLenum
        , Type:?GLenum
        >>
      )
  , case
      Bin
    of 
      <<Ret:?GLint
      >>
        ->  Ret
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

% %% Func:       build3DMipmaps
% %% Args:       Target, InternalFormat, Width, Height, Depth, Format, Type, <<[Data]>>
% %% Returns:    ?GLint
% %% C-API func: GLint gluBuild3DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void* data)
%
% build3DMipmaps(Target, InternalFormat, Width, Height, Depth, Format, Type, Data) -> 
%     NewData = if
%       is_binary(Data)      -> [<<0:32/native, (size(Data)):32/native-unsigned>>, Data];
%       record(Data, sdlmem) -> <<1:32/native, (Data#sdlmem.ptr):32/big-unsigned>>;
%       true                 -> erlang:error({?MODULE, ?LINE, unsupported_type, Data})
%     end, 
%     Bin = call(?gluBuild3DMipmaps, [<<Target:?GLenum, InternalFormat:?GLint, Width:?GLint, Height:?GLint, Depth:?GLint, Format:?GLenum, Type:?GLenum>>,NewData]), 
%     case Bin of 
%       <<Ret:?GLint>> -> Ret;
%       Else                     -> erlang:error({?MODULE, ?LINE, badtype, Else})
%     end.

%% Func:       cylinder
%% Args:       Quad, Base, Top, Height, Slices, Stacks
%% Returns:    ok
%% C-API func: void gluCylinder(GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks)

cylinder(Quad=#quadricPtr{}, Base, Top, Height, Slices, Stacks)
 -> cast
    ( ?gluCylinder
    , <<(Quad#quadricPtr.ptr):?_PTR
      , Base:?GLdouble
      , Top:?GLdouble
      , Height:?GLdouble
      , Slices:?GLint
      , Stacks:?GLint
      >>
    )
.

%% Func:       newQuadric 
%% Args:       none
%% Returns:    [QuadricPtr]
%% C-API func: GLUquadric* gluNewQuadric()

newQuadric()
 -> Bin
    = call
      ( ?gluNewQuadric
      , [
        ]
      )
  , case
      Bin
    of 
      <<Ret:?_PTR
      >>
        -> #quadricPtr{ptr=Ret}
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

%% Func:       deleteQuadric
%% Args:       Quad
%% Returns:    ok
%% C-API func: void gluDeleteQuadric(GLUquadric* quad)

deleteQuadric(Quad=#quadricPtr{})
 -> cast
    ( ?gluDeleteQuadric
    , <<(Quad#quadricPtr.ptr):?_PTR
      >>
    )
.

%% Func:       quadricNormals
%% Args:       Quad, Normal
%% Returns:    ok
%% C-API func: void gluQuadricNormals(GLUquadric* quad, GLenum normal)

quadricNormals(Quad=#quadricPtr{}, Normal)
 -> cast
    ( ?gluQuadricNormals
    , <<(Quad#quadricPtr.ptr):?_PTR
      , Normal:?GLenum
      >>
    )
.

%% Func:       quadricTexture
%% Args:       Quad, Texture
%% Returns:    ok
%% C-API func: void gluQuadricTexture(GLUquadric* quad, GLboolean texture)

quadricTexture(Quad=#quadricPtr{}, Texture)
 -> cast
    ( ?gluQuadricTexture
    , <<(Quad#quadricPtr.ptr):?_PTR
      , Texture:?GLboolean
      >>
    )
.

%% Func:       quadricOrientation
%% Args:       Quad, Orientation
%% Returns:    ok
%% C-API func: void gluQuadricOrientation(GLUquadric* quad, GLenum orientation)

quadricOrientation(Quad=#quadricPtr{}, Orientation)
 -> cast
    ( ?gluQuadricOrientation
    , <<(Quad#quadricPtr.ptr):?_PTR
      , Orientation:?GLenum
      >>
    )
.

%% Func:       quadricDrawStyle
%% Args:       Quad, Draw
%% Returns:    ok
%% C-API func: void gluQuadricDrawStyle(GLUquadric* quad, GLenum draw)

quadricDrawStyle(Quad=#quadricPtr{}, Draw)
 -> cast
    ( ?gluQuadricDrawStyle
    , <<(Quad#quadricPtr.ptr):?_PTR
      , Draw:?GLenum
      >>
    )
.

%% Func:       cylinder
%% Args:       Quad, Base, Top, Height, Slices, Stacks
%% Returns:    ok
%% C-API func: void gluCylinder(GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks)

cylinder(Quad=#quadricPtr{}, Base, Top, Height, Slices, Stacks)
 -> cast
    ( ?gluCylinder
    , <<(Quad#quadricPtr.ptr):?_PTR
      , Base:?GLdouble
      , Top:?GLdouble
      , Height:?GLdouble
      , Slices:?GLint
      , Stacks:?GLint
      >>
    )
.

%% Func:       disk
%% Args:       Quad, Inner, Outer, Slices, Loops
%% Returns:    ok
%% C-API func: void gluDisk(GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops)

disk(Quad=#quadricPtr{}, Inner, Outer, Slices, Loops)
 -> cast
    (?gluDisk
    , <<(Quad#quadricPtr.ptr):?_PTR
      , Inner:?GLdouble
      , Outer:?GLdouble
      , Slices:?GLint
      , Loops:?GLint
      >>
    )
.

%% Func:       partialDisk
%% Args:       Quad, Inner, Outer, Slices, Loops, Start, Sweep
%% Returns:    ok
%% C-API func: void gluPartialDisk(GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep)

partialDisk(Quad=#quadricPtr{}, Inner, Outer, Slices, Loops, Start, Sweep)
 -> cast
    ( ?gluPartialDisk
    , <<(Quad#quadricPtr.ptr):?_PTR
      , Inner:?GLdouble
      , Outer:?GLdouble
      , Slices:?GLint
      , Loops:?GLint
      , Start:?GLdouble
      , Sweep:?GLdouble
      >>
    )
.

%% Func:       sphere
%% Args:       Quad, Radius, Slices, Stacks
%% Returns:    ok
%% C-API func: void gluSphere(GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks)

sphere(Quad=#quadricPtr{}, Radius, Slices, Stacks)
 -> cast
    ( ?gluSphere
    , <<(Quad#quadricPtr.ptr):?_PTR
      , Radius:?GLdouble
      , Slices:?GLint
      , Stacks:?GLint
      >>
    )
.

%% Func:       newTess
%% Args:       
%% Returns:    [TessPtr]
%% C-API func: GLUtesselator* gluNewTess()

newTess()
 -> Bin
    = call
      ( ?gluNewTess
      , [
        ]
      )
  , case
      Bin
    of 
      <<Ret:?_PTR
      >>
        -> #tessPtr{ptr=Ret}
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

%% Func:       deleteTess
%% Args:       Tess
%% Returns:    ok
%% C-API func: void gluDeleteTess(GLUtesselator* tess)

deleteTess(Tess=#tessPtr{})
 -> cast
    ( ?gluDeleteTess
    , <<(Tess#tessPtr.ptr):?_PTR
      >>
    )
.

%% Func:       tessBeginPolygon
%% Args:       TessObject
%% Returns:    ok
%% C-API func: void gluTessBeginPolygon(GLUtesselator* tobj)

tessBeginPolygon(#tessPtr{ptr=Tobj})
 -> cast
    ( ?gluTessBeginPolygon
    , <<Tobj:?_PTR
      >>
    )
.

%% Func:       tessBeginContour
%% Args:       Tess
%% Returns:    ok
%% C-API func: void gluTessBeginContour(GLUtesselator* tess)

tessBeginContour(#tessPtr{ptr=Ptr})
 -> cast
    ( ?gluTessBeginContour
    , <<Ptr:?_PTR
      >>
    )
.

%% Func:       tessVertex
%% Args:       Tobj, Coords[, VtxData]
%% Returns:    ok
%% C-API func: void gluTessVertex(GLUtesselator* tobj, GLdouble coords[3], void* vertex_data)
%% Desc:       VtxData is a tuple-list of extra data supported types are 
%%             [{normal, {X,Y,Z}}, {color, {R,G,B[,A]}}, {texcoord2, {U,V}}]
%%             Use ?EXDL_TESSCB_VERTEX_DATA callback to call apropriate gl functions
%%             on the extra data.

tessVertex(#tessPtr{ptr = Tobj}, {X, Y, Z})
 -> cast
    ( ?gluTessVertex
    , <<Tobj:?_PTR
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       tessEndContour
%% Args:       Tess
%% Returns:    ok
%% C-API func: void gluTessEndContour(GLUtesselator* tess)

tessEndContour(#tessPtr{ptr=Ptr})
 -> cast
    ( ?gluTessEndContour
    , <<Ptr:?_PTR
      >>
    )
.

%% Func:       tessEndPolygon
%% Args:       Tess
%% Returns:    ok
%% C-API func: void gluTessEndPolygon(GLUtesselator* tess)

tessEndPolygon(#tessPtr{ptr=Ptr})
 -> cast
    ( ?gluTessEndPolygon
    , <<Ptr:?_PTR
      >>
    )
.

%% Func:       tessProperty
%% Args:       Tess, Which, Data
%% Returns:    ok
%% C-API func: void gluTessProperty(GLUtesselator* tess, GLenum which, GLdouble data)

tessProperty(Tess=#tessPtr{}, Which, Data)
 -> cast
    ( ?gluTessProperty
    , <<(Tess#tessPtr.ptr):?_PTR
      , Which:?GLenum
      , Data:?GLdouble
      >>
    )
.

%% Func:       tessNormal
%% Args:       Tess, ValueX, ValueY, ValueZ
%% Returns:    ok
%% C-API func: void gluTessNormal(GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ)

tessNormal(#tessPtr{ptr=Ptr}, ValueX, ValueY, ValueZ)
 -> cast
    ( ?gluTessNormal
    , <<Ptr:?_PTR
      , ValueX:?GLdouble
      , ValueY:?GLdouble
      , ValueZ:?GLdouble
      >>
    )
.

%% Func:       tessCallback
%% Args:       Which, EXDL_TESSCB one of the callback functions defined in glu.hrl
%% Returns:    ok
%% C-API func: void gluTessCallback(GLUtesselator* tobj, GLenum which, void (GLCALLBACK* fn)())
%% Desc:       EXDL have some predefined functions which must be supplied as callbacks funcs,
%%             see glu.hrl. New callbacks may be defined in the future, input and or 
%%             implementations are welcomed.

tessCallback(#tessPtr{ptr=Tobj}, Which, EXDL_TESSCB)
 -> cast
    ( ?gluTessCallback
    , <<Tobj:?_PTR
      , Which:?GLenum
      , EXDL_TESSCB:?_PTR
      >>
    )
.

%% Func:       getTessProperty
%% Args:       Tess, Which
%% Returns:    [Data]
%% C-API func: void gluGetTessProperty(GLUtesselator* tess, GLenum which, GLdouble* data)

getTessProperty(Tess=#tessPtr{}, Which)
 -> Bin
    = call
      ( ?gluGetTessProperty
      , <<(Tess#tessPtr.ptr):?_PTR
        , Which:?GLenum
        >>
      )
  , case
      Bin
    of 
      <<Data:?GLdouble
      >>
        -> Data
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

%% Func:       newNurbsRenderer
%% Args:       
%% Returns:    [NurbsPtr]
%% C-API func: GLUnurbs* gluNewNurbsRenderer()

newNurbsRenderer()
 -> Bin
    = call
      ( ?gluNewNurbsRenderer
      , [
        ]
      )
  , case
      Bin
    of 
      <<Ret:?_PTR
      >>
        -> #nurbsPtr{ptr=Ret}
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

%% Func:       deleteNurbsRenderer
%% Args:       Nurb
%% Returns:    ok
%% C-API func: void gluDeleteNurbsRenderer(GLUnurbs* nurb)

deleteNurbsRenderer(Nurb=#nurbsPtr{})
 -> cast
    ( ?gluDeleteNurbsRenderer
    , <<(Nurb#nurbsPtr.ptr):?_PTR
      >>
    )
.

%% Func:       beginSurface
%% Args:       Nurb
%% Returns:    ok
%% C-API func: void gluBeginSurface(GLUnurbs* nurb)

beginSurface(Nurb=#nurbsPtr{})
 -> cast
    ( ?gluBeginSurface
    , <<(Nurb#nurbsPtr.ptr):?_PTR
      >>
    )
.

%% Func:       beginCurve
%% Args:       Nurb
%% Returns:    ok
%% C-API func: void gluBeginCurve(GLUnurbs* nurb)

beginCurve(Nurb=#nurbsPtr{})
 -> cast
    ( ?gluBeginCurve
    , <<(Nurb#nurbsPtr.ptr):?_PTR
      >>
    )
.

%% Func:       endSurface
%% Args:       Nurb
%% Returns:    ok
%% C-API func: void gluEndSurface(GLUnurbs* nurb)

endSurface(Nurb=#nurbsPtr{})
 -> cast
    ( ?gluEndSurface
    , <<(Nurb#nurbsPtr.ptr):?_PTR
      >>
    )
.

%% Func:       endCurve
%% Args:       Nurb
%% Returns:    ok
%% C-API func: void gluEndCurve(GLUnurbs* nurb)

endCurve(Nurb=#nurbsPtr{})
 -> cast
    ( ?gluEndCurve
    , <<(Nurb#nurbsPtr.ptr):?_PTR
      >>
    )
.

%% Func:       beginTrim
%% Args:       Nurb
%% Returns:    ok
%% C-API func: void gluBeginTrim(GLUnurbs* nurb)

beginTrim(Nurb=#nurbsPtr{})
 -> cast
    ( ?gluBeginTrim
    , <<(Nurb#nurbsPtr.ptr):?_PTR
      >>
    )
.

%% Func:       endTrim
%% Args:       Nurb
%% Returns:    ok
%% C-API func: void gluEndTrim(GLUnurbs* nurb)

endTrim(Nurb=#nurbsPtr{})
 -> cast
    ( ?gluEndTrim
    , <<(Nurb#nurbsPtr.ptr):?_PTR
      >>
    )
.

%% Func:       pwlCurve
%% Args:       Nurb, Count, <<[Data]>>, Stride, Type
%% Returns:    ok
%% C-API func: void gluPwlCurve(GLUnurbs* nurb, GLint count, const GLfloat* data, GLint stride, GLenum type)

pwlCurve(Nurb=#nurbsPtr{}, Count, Data, Stride, Type)
 -> sdl:send_bin
    ( Data
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?gluPwlCurve
    , <<(Nurb#nurbsPtr.ptr):?_PTR
      , Count:?GLint
      , Stride:?GLint
      , Type:?GLenum
      >>
    )
.

%% Func:       nurbsCurve
%% Args:       Nurb, KnotCount, <<[Knots]>>, Stride, <<[Control]>>, Order, Type
%% Returns:    ok
%% C-API func: void gluNurbsCurve(GLUnurbs* nurb, GLint knotCount, const GLfloat* knots, GLint stride, const GLfloat* control, GLint order, GLenum type)

nurbsCurve(Nurb=#nurbsPtr{}, KnotCount, Knots, Stride, Control, Order, Type)
 -> NewKnots
    = if
        is_list(Knots)
      ; is_tuple(Knots)
          -> term2bin
             ( Knots
             , KnotCount
             , ?GLfloat
             )
      ; is_binary(Knots)
          -> Knots
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Knots
               }
             )
      end
  , sdl:send_bin
    ( Control
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?gluNurbsCurve
    , [ <<(Nurb#nurbsPtr.ptr):?_PTR
        , KnotCount:?GLint
        >>
      , NewKnots
      , <<Stride:?GLint
        , Order:?GLint
        , Type:?GLenum
        >>
      ]
    )
.

%% Func:       nurbsSurface
%% Args:       Nurb, SKnotCount, <<[SKnots]>>, TKnotCount, <<[TKnots]>>, SStride, TStride, <<[Control]>>, SOrder, TOrder, Type
%% Returns:    ok
%% C-API func: void gluNurbsSurface(GLUnurbs* nurb, GLint sKnotCount, const GLfloat* sKnots, GLint tKnotCount, const GLfloat* tKnots, GLint sStride, GLint tStride, const GLfloat* control, GLint sOrder, GLint tOrder, GLenum type)

nurbsSurface(Nurb=#nurbsPtr{}, SKnotCount, SKnots, TKnotCount, TKnots, SStride, TStride, Control, SOrder, TOrder, Type)
 -> NewSKnots
    = if
        is_list(SKnots)
      ; is_tuple(SKnots)
          -> term2bin
             ( SKnots
             , SKnotCount
             , ?GLfloat
             )
      ; is_binary(SKnots)
          -> SKnots
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , SKnots
               }
             )
      end
  , NewTKnots
    = if
        is_list(TKnots)
      ; is_tuple(TKnots)
          -> term2bin
             ( TKnots
             , TKnotCount
             , ?GLfloat
             )
      ; is_binary(TKnots)
          -> TKnots
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , TKnots
               }
             )
      end
  , sdl:send_bin
    ( Control
    , ?MODULE
    , ?LINE
    )
  , cast
    ( ?gluNurbsSurface
    , [ <<(Nurb#nurbsPtr.ptr):?_PTR
        , SKnotCount:?GLint
        >>
      , NewSKnots
      , <<TKnotCount:?GLint
        >>
      , NewTKnots
      , <<SStride:?GLint
        , TStride:?GLint
        , SOrder:?GLint
        , TOrder:?GLint
        , Type:?GLenum
        >>
      ]
    )
.

%% Func:       loadSamplingMatrices
%% Args:       Nurb, <<[Model]>>, <<[Perspective]>>, <<[View]>>
%% Returns:    ok
%% C-API func: void gluLoadSamplingMatrices(GLUnurbs* nurb, const GLfloat* model, const GLfloat* perspective, const GLint* view)

loadSamplingMatrices(Nurb=#nurbsPtr{}, Model, Perspective, View)
 -> NewModel
    = if
        is_list(Model)
      ; is_tuple(Model)
          -> matrix2bin
             ( Model
             , ?GL_FLOAT
             )
      ; is_binary(Model)
          -> Model
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Model
               }
             )
      end
  , NewPerspective
    = if
        is_list(Perspective)
      ; is_tuple(Perspective)
          -> term2bin
             ( Perspective
             , 16
             , ?GL_FLOAT
             )
      ; is_binary(Perspective)
          -> Perspective
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Perspective
               }
             )
      end
  , NewView
    = if
        is_list(View)
      ; is_tuple(View)
          -> term2bin
             ( View
             , 16
             , ?GL_INT
             )
      ; is_binary(View)
          -> View
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , View
               }
             )
      end
  , cast
    ( ?gluLoadSamplingMatrices
    , [ <<(Nurb#nurbsPtr.ptr):?_PTR
        >>
      , NewModel
      , NewPerspective
      , NewView
      ]
    )
.

%% Func:       nurbsProperty
%% Args:       Nurb, Property, Value
%% Returns:    ok
%% C-API func: void gluNurbsProperty(GLUnurbs* nurb, GLenum property, GLfloat value)

nurbsProperty(Nurb=#nurbsPtr{}, Property, Value)
 -> cast
    ( ?gluNurbsProperty
    , <<(Nurb#nurbsPtr.ptr):?_PTR
      , Property:?GLenum
      , Value:?GLfloat
      >>
    )
.

%% Func:       getNurbsProperty
%% Args:       Nurb, Property
%% Returns:    [Data]
%% C-API func: void gluGetNurbsProperty(GLUnurbs* nurb, GLenum property, GLfloat* data)

getNurbsProperty(Nurb=#nurbsPtr{}, Property)
 -> Bin
    = call
      ( ?gluGetNurbsProperty
      , <<(Nurb#nurbsPtr.ptr):?_PTR
        , Property:?GLenum
        >>
      )
  , case
      Bin
    of 
      <<Data:?GLfloat
      >>
        -> Data
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

-endif. % COMPILE_GLU
