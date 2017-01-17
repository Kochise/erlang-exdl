%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_gl.hrl,v 1.7 2005/06/29 14:45:39 dgud Exp $
%%

%-define(GLvoid,                           32/unsigned-native).
-define(GLboolean,                         8/unsigned).
-define(GLbyte,                            8/signed).
-define(GLshort,                           16/signed-native).
-define(GLint,                             32/signed-native).
-define(GLubyte,                           8/unsigned).
-define(GLushort,                          16/unsigned-native).
-define(GLuint,                            32/unsigned-native).
%-define(GLsizei,                           32/signed-native).
-define(GLhalf,                            16/unsigned-native).
-define(GLfloat,                           32/float-native).
-define(GLclampf,                          32/float-native).
-define(GLdouble,                          64/float-native).
-define(GLclampd,                          64/float-native).
-define(GLenum,                            32/unsigned-native).
-define(GLbitfield,                        32/unsigned-native).

%% Some binary type shortcuts

-define(GL_BYTE_SIZE,                      8).
-define(GL_UNSIGNED_BYTE_SIZE,             8).
-define(GL_SHORT_SIZE,                     16).
-define(GL_UNSIGNED_SHORT_SIZE,            16).
-define(GL_INT_SIZE,                       32).
-define(GL_UNSIGNED_INT_SIZE,              32).
-define(GL_FLOAT_SIZE,                     32).
-define(GL_DOUBLE_SIZE,                    64).

%%%% Version

-define(GL_VERSION_1_1,                    1).

%%%% AccumOp

-define(GL_ACCUM,                          16#0100).
-define(GL_LOAD,                           16#0101).
-define(GL_RETURN,                         16#0102).
-define(GL_MULT,                           16#0103).
-define(GL_ADD,                            16#0104).

%%%% AlphaFunction

-define(GL_NEVER,                          16#0200).
-define(GL_LESS,                           16#0201).
-define(GL_EQUAL,                          16#0202).
-define(GL_LEQUAL,                         16#0203).
-define(GL_GREATER,                        16#0204).
-define(GL_NOTEQUAL,                       16#0205).
-define(GL_GEQUAL,                         16#0206).
-define(GL_ALWAYS,                         16#0207).

%%%% AttribMask

-define(GL_CURRENT_BIT,                    16#00000001).
-define(GL_POINT_BIT,                      16#00000002).
-define(GL_LINE_BIT,                       16#00000004).
-define(GL_POLYGON_BIT,                    16#00000008).
-define(GL_POLYGON_STIPPLE_BIT,            16#00000010).
-define(GL_PIXEL_MODE_BIT,                 16#00000020).
-define(GL_LIGHTING_BIT,                   16#00000040).
-define(GL_FOG_BIT,                        16#00000080).
-define(GL_DEPTH_BUFFER_BIT,               16#00000100).
-define(GL_ACCUM_BUFFER_BIT,               16#00000200).
-define(GL_STENCIL_BUFFER_BIT,             16#00000400).
-define(GL_VIEWPORT_BIT,                   16#00000800).
-define(GL_TRANSFORM_BIT,                  16#00001000).
-define(GL_ENABLE_BIT,                     16#00002000).
-define(GL_COLOR_BUFFER_BIT,               16#00004000).
-define(GL_HINT_BIT,                       16#00008000).
-define(GL_EVAL_BIT,                       16#00010000).
-define(GL_LIST_BIT,                       16#00020000).
-define(GL_TEXTURE_BIT,                    16#00040000).
-define(GL_SCISSOR_BIT,                    16#00080000).
-define(GL_ALL_ATTRIB_BITS,                16#000FFFFF).

%%%% BeginMode

-define(GL_POINTS,                         16#0000).
-define(GL_LINES,                          16#0001).
-define(GL_LINE_LOOP,                      16#0002).
-define(GL_LINE_STRIP,                     16#0003).
-define(GL_TRIANGLES,                      16#0004).
-define(GL_TRIANGLE_STRIP,                 16#0005).
-define(GL_TRIANGLE_FAN,                   16#0006).
-define(GL_QUADS,                          16#0007).
-define(GL_QUAD_STRIP,                     16#0008).
-define(GL_POLYGON,                        16#0009).

%%%% BlendEquationMode

%%%% GL_LOGIC_OP 
%%%% GL_FUNC_ADD 
%%%% GL_MIN 
%%%% GL_MAX 
%%%% GL_FUNC_SUBTRACT 
%%%% GL_FUNC_REVERSE_SUBTRACT 

%%%% BlendingFactorDest

-define(GL_ZERO,                           0).
-define(GL_ONE,                            1).
-define(GL_SRC_COLOR,                      16#0300).
-define(GL_ONE_MINUS_SRC_COLOR,            16#0301).
-define(GL_SRC_ALPHA,                      16#0302).
-define(GL_ONE_MINUS_SRC_ALPHA,            16#0303).
-define(GL_DST_ALPHA,                      16#0304).
-define(GL_ONE_MINUS_DST_ALPHA,            16#0305).

%%%% BlendingFactorSrc

%%%% GL_ZERO 
%%%% GL_ONE 
-define(GL_DST_COLOR,                      16#0306).
-define(GL_ONE_MINUS_DST_COLOR,            16#0307).
-define(GL_SRC_ALPHA_SATURATE,             16#0308).
%%%% GL_SRC_ALPHA 
%%%% GL_ONE_MINUS_SRC_ALPHA 
%%%% GL_DST_ALPHA 
%%%% GL_ONE_MINUS_DST_ALPHA

%%%% Boolean

-define(GL_TRUE,                           1).
-define(GL_FALSE,                          0).

%%%% ClearBufferMask

%%%% GL_COLOR_BUFFER_BIT 
%%%% GL_ACCUM_BUFFER_BIT 
%%%% GL_STENCIL_BUFFER_BIT 
%%%% GL_DEPTH_BUFFER_BIT 

%%%% ClientArrayType

%%%% GL_VERTEX_ARRAY 
%%%% GL_NORMAL_ARRAY 
%%%% GL_COLOR_ARRAY 
%%%% GL_INDEX_ARRAY 
%%%% GL_TEXTURE_COORD_ARRAY 
%%%% GL_EDGE_FLAG_ARRAY

%%%% ClipPlaneName

-define(GL_CLIP_PLANE0,                    16#3000).
-define(GL_CLIP_PLANE1,                    16#3001).
-define(GL_CLIP_PLANE2,                    16#3002).
-define(GL_CLIP_PLANE3,                    16#3003).
-define(GL_CLIP_PLANE4,                    16#3004).
-define(GL_CLIP_PLANE5,                    16#3005).

%%%% ColorMaterialFace

%%%% GL_FRONT 
%%%% GL_BACK 
%%%% GL_FRONT_AND_BACK 

%%%% ColorMaterialParameter

%%%% GL_AMBIENT 
%%%% GL_DIFFUSE 
%%%% GL_SPECULAR 
%%%% GL_EMISSION 
%%%% GL_AMBIENT_AND_DIFFUSE 

%%%% ColorPointerType

%%%% GL_BYTE 
%%%% GL_UNSIGNED_BYTE 
%%%% GL_SHORT 
%%%% GL_UNSIGNED_SHORT 
%%%% GL_INT 
%%%% GL_UNSIGNED_INT 
%%%% GL_FLOAT 
%%%% GL_DOUBLE 

%%%% CullFaceMode

%%%% GL_FRONT
%%%% GL_BACK
%%%% GL_FRONT_AND_BACK

%% DataType
-define(GL_BYTE,                           16#1400).
-define(GL_UNSIGNED_BYTE,                  16#1401).
-define(GL_SHORT,                          16#1402).
-define(GL_UNSIGNED_SHORT,                 16#1403).
-define(GL_INT,                            16#1404).
-define(GL_UNSIGNED_INT,                   16#1405).
-define(GL_FLOAT,                          16#1406).
-define(GL_2_BYTES,                        16#1407).
-define(GL_3_BYTES,                        16#1408).
-define(GL_4_BYTES,                        16#1409).
-define(GL_DOUBLE,                         16#140A).

%% DepthFunction
%%      GL_NEVER
%%      GL_LESS
%%      GL_EQUAL
%%      GL_LEQUAL
%%      GL_GREATER
%%      GL_NOTEQUAL
%%      GL_GEQUAL
%%      GL_ALWAYS

%% DrawBufferMode
-define(GL_NONE,                           0).
-define(GL_FRONT_LEFT,                     16#0400).
-define(GL_FRONT_RIGHT,                    16#0401).
-define(GL_BACK_LEFT,                      16#0402).
-define(GL_BACK_RIGHT,                     16#0403).
-define(GL_FRONT,                          16#0404).
-define(GL_BACK,                           16#0405).
-define(GL_LEFT,                           16#0406).
-define(GL_RIGHT,                          16#0407).
-define(GL_FRONT_AND_BACK,                 16#0408).
-define(GL_AUX0,                           16#0409).
-define(GL_AUX1,                           16#040A).
-define(GL_AUX2,                           16#040B).
-define(GL_AUX3,                           16#040C).

%% Enable
%%      GL_FOG
%%      GL_LIGHTING
%%      GL_TEXTURE_1D
%%      GL_TEXTURE_2D
%%      GL_LINE_STIPPLE
%%      GL_POLYGON_STIPPLE
%%      GL_CULL_FACE
%%      GL_ALPHA_TEST
%%      GL_BLEND
%%      GL_INDEX_LOGIC_OP
%%      GL_COLOR_LOGIC_OP
%%      GL_DITHER
%%      GL_STENCIL_TEST
%%      GL_DEPTH_TEST
%%      GL_CLIP_PLANE0
%%      GL_CLIP_PLANE1
%%      GL_CLIP_PLANE2
%%      GL_CLIP_PLANE3
%%      GL_CLIP_PLANE4
%%      GL_CLIP_PLANE5
%%      GL_LIGHT0
%%      GL_LIGHT1
%%      GL_LIGHT2
%%      GL_LIGHT3
%%      GL_LIGHT4
%%      GL_LIGHT5
%%      GL_LIGHT6
%%      GL_LIGHT7
%%      GL_TEXTURE_GEN_S
%%      GL_TEXTURE_GEN_T
%%      GL_TEXTURE_GEN_R
%%      GL_TEXTURE_GEN_Q
%%      GL_MAP1_VERTEX_3
%%      GL_MAP1_VERTEX_4
%%      GL_MAP1_COLOR_4
%%      GL_MAP1_INDEX
%%      GL_MAP1_NORMAL
%%      GL_MAP1_TEXTURE_COORD_1
%%      GL_MAP1_TEXTURE_COORD_2
%%      GL_MAP1_TEXTURE_COORD_3
%%      GL_MAP1_TEXTURE_COORD_4
%%      GL_MAP2_VERTEX_3
%%      GL_MAP2_VERTEX_4
%%      GL_MAP2_COLOR_4
%%      GL_MAP2_INDEX
%%      GL_MAP2_NORMAL
%%      GL_MAP2_TEXTURE_COORD_1
%%      GL_MAP2_TEXTURE_COORD_2
%%      GL_MAP2_TEXTURE_COORD_3
%%      GL_MAP2_TEXTURE_COORD_4
%%      GL_POINT_SMOOTH
%%      GL_LINE_SMOOTH
%%      GL_POLYGON_SMOOTH
%%      GL_SCISSOR_TEST
%%      GL_COLOR_MATERIAL
%%      GL_NORMALIZE
%%      GL_AUTO_NORMAL
%%      GL_VERTEX_ARRAY
%%      GL_NORMAL_ARRAY
%%      GL_COLOR_ARRAY
%%      GL_INDEX_ARRAY
%%      GL_TEXTURE_COORD_ARRAY
%%      GL_EDGE_FLAG_ARRAY
%%      GL_POLYGON_OFFSET_POINT
%%      GL_POLYGON_OFFSET_LINE
%%      GL_POLYGON_OFFSET_FILL

%% ErrorCode
-define(GL_NO_ERROR,                       0).
-define(GL_INVALID_ENUM,                   16#0500).
-define(GL_INVALID_VALUE,                  16#0501).
-define(GL_INVALID_OPERATION,              16#0502).
-define(GL_STACK_OVERFLOW,                 16#0503).
-define(GL_STACK_UNDERFLOW,                16#0504).
-define(GL_OUT_OF_MEMORY,                  16#0505).

%% FeedBackMode
-define(GL_2D,                             16#0600).
-define(GL_3D,                             16#0601).
-define(GL_3D_COLOR,                       16#0602).
-define(GL_3D_COLOR_TEXTURE,               16#0603).
-define(GL_4D_COLOR_TEXTURE,               16#0604).

%% FeedBackToken
-define(GL_PASS_THROUGH_TOKEN,             16#0700).
-define(GL_POINT_TOKEN,                    16#0701).
-define(GL_LINE_TOKEN,                     16#0702).
-define(GL_POLYGON_TOKEN,                  16#0703).
-define(GL_BITMAP_TOKEN,                   16#0704).
-define(GL_DRAW_PIXEL_TOKEN,               16#0705).
-define(GL_COPY_PIXEL_TOKEN,               16#0706).
-define(GL_LINE_RESET_TOKEN,               16#0707).

%% FogMode
%%      GL_LINEAR
-define(GL_EXP,                            16#0800).
-define(GL_EXP2,                           16#0801).

%% FogParameter
%%      GL_FOG_COLOR
%%      GL_FOG_DENSITY
%%      GL_FOG_END
%%      GL_FOG_INDEX
%%      GL_FOG_MODE
%%      GL_FOG_START

%% FrontFaceDirection
-define(GL_CW,                             16#0900).
-define(GL_CCW,                            16#0901).

%% GetMapTarget
-define(GL_COEFF,                          16#0A00).
-define(GL_ORDER,                          16#0A01).
-define(GL_DOMAIN,                         16#0A02).

%% GetPixelMap
%%      GL_PIXEL_MAP_I_TO_I
%%      GL_PIXEL_MAP_S_TO_S
%%      GL_PIXEL_MAP_I_TO_R
%%      GL_PIXEL_MAP_I_TO_G
%%      GL_PIXEL_MAP_I_TO_B
%%      GL_PIXEL_MAP_I_TO_A
%%      GL_PIXEL_MAP_R_TO_R
%%      GL_PIXEL_MAP_G_TO_G
%%      GL_PIXEL_MAP_B_TO_B
%%      GL_PIXEL_MAP_A_TO_A

%% GetPointerTarget
%%      GL_VERTEX_ARRAY_POINTER
%%      GL_NORMAL_ARRAY_POINTER
%%      GL_COLOR_ARRAY_POINTER
%%      GL_INDEX_ARRAY_POINTER
%%      GL_TEXTURE_COORD_ARRAY_POINTER
%%      GL_EDGE_FLAG_ARRAY_POINTER

%% GetTarget
-define(GL_CURRENT_COLOR,                  16#0B00).
-define(GL_CURRENT_INDEX,                  16#0B01).
-define(GL_CURRENT_NORMAL,                 16#0B02).
-define(GL_CURRENT_TEXTURE_COORDS,         16#0B03).
-define(GL_CURRENT_RASTER_COLOR,           16#0B04).
-define(GL_CURRENT_RASTER_INDEX,           16#0B05).
-define(GL_CURRENT_RASTER_TEXTURE_COORDS,  16#0B06).
-define(GL_CURRENT_RASTER_POSITION,        16#0B07).
-define(GL_CURRENT_RASTER_POSITION_VALID,  16#0B08).
-define(GL_CURRENT_RASTER_DISTANCE,        16#0B09).
-define(GL_POINT_SMOOTH,                   16#0B10).
-define(GL_POINT_SIZE,                     16#0B11).
-define(GL_POINT_SIZE_RANGE,               16#0B12).
-define(GL_POINT_SIZE_GRANULARITY,         16#0B13).
-define(GL_LINE_SMOOTH,                    16#0B20).
-define(GL_LINE_WIDTH,                     16#0B21).
-define(GL_LINE_WIDTH_RANGE,               16#0B22).
-define(GL_LINE_WIDTH_GRANULARITY,         16#0B23).
-define(GL_LINE_STIPPLE,                   16#0B24).
-define(GL_LINE_STIPPLE_PATTERN,           16#0B25).
-define(GL_LINE_STIPPLE_REPEAT,            16#0B26).
-define(GL_LIST_MODE,                      16#0B30).
-define(GL_MAX_LIST_NESTING,               16#0B31).
-define(GL_LIST_BASE,                      16#0B32).
-define(GL_LIST_INDEX,                     16#0B33).
-define(GL_POLYGON_MODE,                   16#0B40).
-define(GL_POLYGON_SMOOTH,                 16#0B41).
-define(GL_POLYGON_STIPPLE,                16#0B42).
-define(GL_EDGE_FLAG,                      16#0B43).
-define(GL_CULL_FACE,                      16#0B44).
-define(GL_CULL_FACE_MODE,                 16#0B45).
-define(GL_FRONT_FACE,                     16#0B46).
-define(GL_LIGHTING,                       16#0B50).
-define(GL_LIGHT_MODEL_LOCAL_VIEWER,       16#0B51).
-define(GL_LIGHT_MODEL_TWO_SIDE,           16#0B52).
-define(GL_LIGHT_MODEL_AMBIENT,            16#0B53).
-define(GL_SHADE_MODEL,                    16#0B54).
-define(GL_COLOR_MATERIAL_FACE,            16#0B55).
-define(GL_COLOR_MATERIAL_PARAMETER,       16#0B56).
-define(GL_COLOR_MATERIAL,                 16#0B57).
-define(GL_FOG,                            16#0B60).
-define(GL_FOG_INDEX,                      16#0B61).
-define(GL_FOG_DENSITY,                    16#0B62).
-define(GL_FOG_START,                      16#0B63).
-define(GL_FOG_END,                        16#0B64).
-define(GL_FOG_MODE,                       16#0B65).
-define(GL_FOG_COLOR,                      16#0B66).
-define(GL_DEPTH_RANGE,                    16#0B70).
-define(GL_DEPTH_TEST,                     16#0B71).
-define(GL_DEPTH_WRITEMASK,                16#0B72).
-define(GL_DEPTH_CLEAR_VALUE,              16#0B73).
-define(GL_DEPTH_FUNC,                     16#0B74).
-define(GL_ACCUM_CLEAR_VALUE,              16#0B80).
-define(GL_STENCIL_TEST,                   16#0B90).
-define(GL_STENCIL_CLEAR_VALUE,            16#0B91).
-define(GL_STENCIL_FUNC,                   16#0B92).
-define(GL_STENCIL_VALUE_MASK,             16#0B93).
-define(GL_STENCIL_FAIL,                   16#0B94).
-define(GL_STENCIL_PASS_DEPTH_FAIL,        16#0B95).
-define(GL_STENCIL_PASS_DEPTH_PASS,        16#0B96).
-define(GL_STENCIL_REF,                    16#0B97).
-define(GL_STENCIL_WRITEMASK,              16#0B98).
-define(GL_MATRIX_MODE,                    16#0BA0).
-define(GL_NORMALIZE,                      16#0BA1).
-define(GL_VIEWPORT,                       16#0BA2).
-define(GL_MODELVIEW_STACK_DEPTH,          16#0BA3).
-define(GL_PROJECTION_STACK_DEPTH,         16#0BA4).
-define(GL_TEXTURE_STACK_DEPTH,            16#0BA5).
-define(GL_MODELVIEW_MATRIX,               16#0BA6).
-define(GL_PROJECTION_MATRIX,              16#0BA7).
-define(GL_TEXTURE_MATRIX,                 16#0BA8).
-define(GL_ATTRIB_STACK_DEPTH,             16#0BB0).
-define(GL_CLIENT_ATTRIB_STACK_DEPTH,      16#0BB1).
-define(GL_ALPHA_TEST,                     16#0BC0).
-define(GL_ALPHA_TEST_FUNC,                16#0BC1).
-define(GL_ALPHA_TEST_REF,                 16#0BC2).
-define(GL_DITHER,                         16#0BD0).
-define(GL_BLEND_DST,                      16#0BE0).
-define(GL_BLEND_SRC,                      16#0BE1).
-define(GL_BLEND,                          16#0BE2).
-define(GL_LOGIC_OP_MODE,                  16#0BF0).
-define(GL_INDEX_LOGIC_OP,                 16#0BF1).
-define(GL_COLOR_LOGIC_OP,                 16#0BF2).
-define(GL_AUX_BUFFERS,                    16#0C00).
-define(GL_DRAW_BUFFER,                    16#0C01).
-define(GL_READ_BUFFER,                    16#0C02).
-define(GL_SCISSOR_BOX,                    16#0C10).
-define(GL_SCISSOR_TEST,                   16#0C11).
-define(GL_INDEX_CLEAR_VALUE,              16#0C20).
-define(GL_INDEX_WRITEMASK,                16#0C21).
-define(GL_COLOR_CLEAR_VALUE,              16#0C22).
-define(GL_COLOR_WRITEMASK,                16#0C23).
-define(GL_INDEX_MODE,                     16#0C30).
-define(GL_RGBA_MODE,                      16#0C31).
-define(GL_DOUBLEBUFFER,                   16#0C32).
-define(GL_STEREO,                         16#0C33).
-define(GL_RENDER_MODE,                    16#0C40).
-define(GL_PERSPECTIVE_CORRECTION_HINT,    16#0C50).
-define(GL_POINT_SMOOTH_HINT,              16#0C51).
-define(GL_LINE_SMOOTH_HINT,               16#0C52).
-define(GL_POLYGON_SMOOTH_HINT,            16#0C53).
-define(GL_FOG_HINT,                       16#0C54).
-define(GL_TEXTURE_GEN_S,                  16#0C60).
-define(GL_TEXTURE_GEN_T,                  16#0C61).
-define(GL_TEXTURE_GEN_R,                  16#0C62).
-define(GL_TEXTURE_GEN_Q,                  16#0C63).
-define(GL_PIXEL_MAP_I_TO_I,               16#0C70).
-define(GL_PIXEL_MAP_S_TO_S,               16#0C71).
-define(GL_PIXEL_MAP_I_TO_R,               16#0C72).
-define(GL_PIXEL_MAP_I_TO_G,               16#0C73).
-define(GL_PIXEL_MAP_I_TO_B,               16#0C74).
-define(GL_PIXEL_MAP_I_TO_A,               16#0C75).
-define(GL_PIXEL_MAP_R_TO_R,               16#0C76).
-define(GL_PIXEL_MAP_G_TO_G,               16#0C77).
-define(GL_PIXEL_MAP_B_TO_B,               16#0C78).
-define(GL_PIXEL_MAP_A_TO_A,               16#0C79).
-define(GL_PIXEL_MAP_I_TO_I_SIZE,          16#0CB0).
-define(GL_PIXEL_MAP_S_TO_S_SIZE,          16#0CB1).
-define(GL_PIXEL_MAP_I_TO_R_SIZE,          16#0CB2).
-define(GL_PIXEL_MAP_I_TO_G_SIZE,          16#0CB3).
-define(GL_PIXEL_MAP_I_TO_B_SIZE,          16#0CB4).
-define(GL_PIXEL_MAP_I_TO_A_SIZE,          16#0CB5).
-define(GL_PIXEL_MAP_R_TO_R_SIZE,          16#0CB6).
-define(GL_PIXEL_MAP_G_TO_G_SIZE,          16#0CB7).
-define(GL_PIXEL_MAP_B_TO_B_SIZE,          16#0CB8).
-define(GL_PIXEL_MAP_A_TO_A_SIZE,          16#0CB9).
-define(GL_UNPACK_SWAP_BYTES,              16#0CF0).
-define(GL_UNPACK_LSB_FIRST,               16#0CF1).
-define(GL_UNPACK_ROW_LENGTH,              16#0CF2).
-define(GL_UNPACK_SKIP_ROWS,               16#0CF3).
-define(GL_UNPACK_SKIP_PIXELS,             16#0CF4).
-define(GL_UNPACK_ALIGNMENT,               16#0CF5).
-define(GL_PACK_SWAP_BYTES,                16#0D00).
-define(GL_PACK_LSB_FIRST,                 16#0D01).
-define(GL_PACK_ROW_LENGTH,                16#0D02).
-define(GL_PACK_SKIP_ROWS,                 16#0D03).
-define(GL_PACK_SKIP_PIXELS,               16#0D04).
-define(GL_PACK_ALIGNMENT,                 16#0D05).
-define(GL_MAP_COLOR,                      16#0D10).
-define(GL_MAP_STENCIL,                    16#0D11).
-define(GL_INDEX_SHIFT,                    16#0D12).
-define(GL_INDEX_OFFSET,                   16#0D13).
-define(GL_RED_SCALE,                      16#0D14).
-define(GL_RED_BIAS,                       16#0D15).
-define(GL_ZOOM_X,                         16#0D16).
-define(GL_ZOOM_Y,                         16#0D17).
-define(GL_GREEN_SCALE,                    16#0D18).
-define(GL_GREEN_BIAS,                     16#0D19).
-define(GL_BLUE_SCALE,                     16#0D1A).
-define(GL_BLUE_BIAS,                      16#0D1B).
-define(GL_ALPHA_SCALE,                    16#0D1C).
-define(GL_ALPHA_BIAS,                     16#0D1D).
-define(GL_DEPTH_SCALE,                    16#0D1E).
-define(GL_DEPTH_BIAS,                     16#0D1F).
-define(GL_MAX_EVAL_ORDER,                 16#0D30).
-define(GL_MAX_LIGHTS,                     16#0D31).
-define(GL_MAX_CLIP_PLANES,                16#0D32).
-define(GL_MAX_TEXTURE_SIZE,               16#0D33).
-define(GL_MAX_PIXEL_MAP_TABLE,            16#0D34).
-define(GL_MAX_ATTRIB_STACK_DEPTH,         16#0D35).
-define(GL_MAX_MODELVIEW_STACK_DEPTH,      16#0D36).
-define(GL_MAX_NAME_STACK_DEPTH,           16#0D37).
-define(GL_MAX_PROJECTION_STACK_DEPTH,     16#0D38).
-define(GL_MAX_TEXTURE_STACK_DEPTH,        16#0D39).
-define(GL_MAX_VIEWPORT_DIMS,              16#0D3A).
-define(GL_MAX_CLIENT_ATTRIB_STACK_DEPTH,  16#0D3B).
-define(GL_SUBPIXEL_BITS,                  16#0D50).
-define(GL_INDEX_BITS,                     16#0D51).
-define(GL_RED_BITS,                       16#0D52).
-define(GL_GREEN_BITS,                     16#0D53).
-define(GL_BLUE_BITS,                      16#0D54).
-define(GL_ALPHA_BITS,                     16#0D55).
-define(GL_DEPTH_BITS,                     16#0D56).
-define(GL_STENCIL_BITS,                   16#0D57).
-define(GL_ACCUM_RED_BITS,                 16#0D58).
-define(GL_ACCUM_GREEN_BITS,               16#0D59).
-define(GL_ACCUM_BLUE_BITS,                16#0D5A).
-define(GL_ACCUM_ALPHA_BITS,               16#0D5B).
-define(GL_NAME_STACK_DEPTH,               16#0D70).
-define(GL_AUTO_NORMAL,                    16#0D80).
-define(GL_MAP1_COLOR_4,                   16#0D90).
-define(GL_MAP1_INDEX,                     16#0D91).
-define(GL_MAP1_NORMAL,                    16#0D92).
-define(GL_MAP1_TEXTURE_COORD_1,           16#0D93).
-define(GL_MAP1_TEXTURE_COORD_2,           16#0D94).
-define(GL_MAP1_TEXTURE_COORD_3,           16#0D95).
-define(GL_MAP1_TEXTURE_COORD_4,           16#0D96).
-define(GL_MAP1_VERTEX_3,                  16#0D97).
-define(GL_MAP1_VERTEX_4,                  16#0D98).
-define(GL_MAP2_COLOR_4,                   16#0DB0).
-define(GL_MAP2_INDEX,                     16#0DB1).
-define(GL_MAP2_NORMAL,                    16#0DB2).
-define(GL_MAP2_TEXTURE_COORD_1,           16#0DB3).
-define(GL_MAP2_TEXTURE_COORD_2,           16#0DB4).
-define(GL_MAP2_TEXTURE_COORD_3,           16#0DB5).
-define(GL_MAP2_TEXTURE_COORD_4,           16#0DB6).
-define(GL_MAP2_VERTEX_3,                  16#0DB7).
-define(GL_MAP2_VERTEX_4,                  16#0DB8).
-define(GL_MAP1_GRID_DOMAIN,               16#0DD0).
-define(GL_MAP1_GRID_SEGMENTS,             16#0DD1).
-define(GL_MAP2_GRID_DOMAIN,               16#0DD2).
-define(GL_MAP2_GRID_SEGMENTS,             16#0DD3).
-define(GL_TEXTURE_1D,                     16#0DE0).
-define(GL_TEXTURE_2D,                     16#0DE1).
-define(GL_FEEDBACK_BUFFER_POINTER,        16#0DF0).
-define(GL_FEEDBACK_BUFFER_SIZE,           16#0DF1).
-define(GL_FEEDBACK_BUFFER_TYPE,           16#0DF2).
-define(GL_SELECTION_BUFFER_POINTER,       16#0DF3).
-define(GL_SELECTION_BUFFER_SIZE,          16#0DF4).
%%      GL_TEXTURE_BINDING_1D
%%      GL_TEXTURE_BINDING_2D
%%      GL_VERTEX_ARRAY
%%      GL_NORMAL_ARRAY
%%      GL_COLOR_ARRAY
%%      GL_INDEX_ARRAY
%%      GL_TEXTURE_COORD_ARRAY
%%      GL_EDGE_FLAG_ARRAY
%%      GL_VERTEX_ARRAY_SIZE
%%      GL_VERTEX_ARRAY_TYPE
%%      GL_VERTEX_ARRAY_STRIDE
%%      GL_NORMAL_ARRAY_TYPE
%%      GL_NORMAL_ARRAY_STRIDE
%%      GL_COLOR_ARRAY_SIZE
%%      GL_COLOR_ARRAY_TYPE
%%      GL_COLOR_ARRAY_STRIDE
%%      GL_INDEX_ARRAY_TYPE
%%      GL_INDEX_ARRAY_STRIDE
%%      GL_TEXTURE_COORD_ARRAY_SIZE
%%      GL_TEXTURE_COORD_ARRAY_TYPE
%%      GL_TEXTURE_COORD_ARRAY_STRIDE
%%      GL_EDGE_FLAG_ARRAY_STRIDE
%%      GL_POLYGON_OFFSET_FACTOR
%%      GL_POLYGON_OFFSET_UNITS

%% GetTextureParameter
%%      GL_TEXTURE_MAG_FILTER
%%      GL_TEXTURE_MIN_FILTER
%%      GL_TEXTURE_WRAP_S
%%      GL_TEXTURE_WRAP_T
-define(GL_TEXTURE_WIDTH,                  16#1000).
-define(GL_TEXTURE_HEIGHT,                 16#1001).
-define(GL_TEXTURE_INTERNAL_FORMAT,        16#1003).
-define(GL_TEXTURE_BORDER_COLOR,           16#1004).
-define(GL_TEXTURE_BORDER,                 16#1005).
%%      GL_TEXTURE_RED_SIZE
%%      GL_TEXTURE_GREEN_SIZE
%%      GL_TEXTURE_BLUE_SIZE
%%      GL_TEXTURE_ALPHA_SIZE
%%      GL_TEXTURE_LUMINANCE_SIZE
%%      GL_TEXTURE_INTENSITY_SIZE
%%      GL_TEXTURE_PRIORITY
%%      GL_TEXTURE_RESIDENT

%% HintMode
-define(GL_DONT_CARE,                      16#1100).
-define(GL_FASTEST,                        16#1101).
-define(GL_NICEST,                         16#1102).

%% HintTarget
%%      GL_PERSPECTIVE_CORRECTION_HINT
%%      GL_POINT_SMOOTH_HINT
%%      GL_LINE_SMOOTH_HINT
%%      GL_POLYGON_SMOOTH_HINT
%%      GL_FOG_HINT
%%      GL_PHONG_HINT

%% IndexPointerType
%%      GL_SHORT
%%      GL_INT
%%      GL_FLOAT
%%      GL_DOUBLE

%% LightModelParameter
%%      GL_LIGHT_MODEL_AMBIENT
%%      GL_LIGHT_MODEL_LOCAL_VIEWER
%%      GL_LIGHT_MODEL_TWO_SIDE

%% LightName
-define(GL_LIGHT0,                         16#4000).
-define(GL_LIGHT1,                         16#4001).
-define(GL_LIGHT2,                         16#4002).
-define(GL_LIGHT3,                         16#4003).
-define(GL_LIGHT4,                         16#4004).
-define(GL_LIGHT5,                         16#4005).
-define(GL_LIGHT6,                         16#4006).
-define(GL_LIGHT7,                         16#4007).

%% LightParameter
-define(GL_AMBIENT,                        16#1200).
-define(GL_DIFFUSE,                        16#1201).
-define(GL_SPECULAR,                       16#1202).
-define(GL_POSITION,                       16#1203).
-define(GL_SPOT_DIRECTION,                 16#1204).
-define(GL_SPOT_EXPONENT,                  16#1205).
-define(GL_SPOT_CUTOFF,                    16#1206).
-define(GL_CONSTANT_ATTENUATION,           16#1207).
-define(GL_LINEAR_ATTENUATION,             16#1208).
-define(GL_QUADRATIC_ATTENUATION,          16#1209).

%% InterleavedArrays
%%      GL_V2F
%%      GL_V3F
%%      GL_C4UB_V2F
%%      GL_C4UB_V3F
%%      GL_C3F_V3F
%%      GL_N3F_V3F
%%      GL_C4F_N3F_V3F
%%      GL_T2F_V3F
%%      GL_T4F_V4F
%%      GL_T2F_C4UB_V3F
%%      GL_T2F_C3F_V3F
%%      GL_T2F_N3F_V3F
%%      GL_T2F_C4F_N3F_V3F
%%      GL_T4F_C4F_N3F_V4F

%% ListMode
-define(GL_COMPILE,                        16#1300).
-define(GL_COMPILE_AND_EXECUTE,            16#1301).

%% ListNameType
%%      GL_BYTE
%%      GL_UNSIGNED_BYTE
%%      GL_SHORT
%%      GL_UNSIGNED_SHORT
%%      GL_INT
%%      GL_UNSIGNED_INT
%%      GL_FLOAT
%%      GL_2_BYTES
%%      GL_3_BYTES
%%      GL_4_BYTES

%% LogicOp
-define(GL_CLEAR,                          16#1500).
-define(GL_AND,                            16#1501).
-define(GL_AND_REVERSE,                    16#1502).
-define(GL_COPY,                           16#1503).
-define(GL_AND_INVERTED,                   16#1504).
-define(GL_NOOP,                           16#1505).
-define(GL_XOR,                            16#1506).
-define(GL_OR,                             16#1507).
-define(GL_NOR,                            16#1508).
-define(GL_EQUIV,                          16#1509).
-define(GL_INVERT,                         16#150A).
-define(GL_OR_REVERSE,                     16#150B).
-define(GL_COPY_INVERTED,                  16#150C).
-define(GL_OR_INVERTED,                    16#150D).
-define(GL_NAND,                           16#150E).
-define(GL_SET,                            16#150F).

%% MapTarget
%%      GL_MAP1_COLOR_4
%%      GL_MAP1_INDEX
%%      GL_MAP1_NORMAL
%%      GL_MAP1_TEXTURE_COORD_1
%%      GL_MAP1_TEXTURE_COORD_2
%%      GL_MAP1_TEXTURE_COORD_3
%%      GL_MAP1_TEXTURE_COORD_4
%%      GL_MAP1_VERTEX_3
%%      GL_MAP1_VERTEX_4
%%      GL_MAP2_COLOR_4
%%      GL_MAP2_INDEX
%%      GL_MAP2_NORMAL
%%      GL_MAP2_TEXTURE_COORD_1
%%      GL_MAP2_TEXTURE_COORD_2
%%      GL_MAP2_TEXTURE_COORD_3
%%      GL_MAP2_TEXTURE_COORD_4
%%      GL_MAP2_VERTEX_3
%%      GL_MAP2_VERTEX_4

%% MaterialFace
%%      GL_FRONT
%%      GL_BACK
%%      GL_FRONT_AND_BACK

%% MaterialParameter
-define(GL_EMISSION,                       16#1600).
-define(GL_SHININESS,                      16#1601).
-define(GL_AMBIENT_AND_DIFFUSE,            16#1602).
-define(GL_COLOR_INDEXES,                  16#1603).
%%      GL_AMBIENT
%%      GL_DIFFUSE
%%      GL_SPECULAR

%% MatrixMode
-define(GL_MODELVIEW,                      16#1700).
-define(GL_PROJECTION,                     16#1701).
-define(GL_TEXTURE,                        16#1702).

%% MeshMode1
%%      GL_POINT
%%      GL_LINE

%% MeshMode2
%%      GL_POINT
%%      GL_LINE
%%      GL_FILL

%% NormalPointerType
%%      GL_BYTE
%%      GL_SHORT
%%      GL_INT
%%      GL_FLOAT
%%      GL_DOUBLE

%% PixelCopyType
-define(GL_COLOR,                          16#1800).
-define(GL_DEPTH,                          16#1801).
-define(GL_STENCIL,                        16#1802).

%% PixelFormat
-define(GL_COLOR_INDEX,                    16#1900).
-define(GL_STENCIL_INDEX,                  16#1901).
-define(GL_DEPTH_COMPONENT,                16#1902).
-define(GL_RED,                            16#1903).
-define(GL_GREEN,                          16#1904).
-define(GL_BLUE,                           16#1905).
-define(GL_ALPHA,                          16#1906).
-define(GL_RGB,                            16#1907).
-define(GL_RGBA,                           16#1908).
-define(GL_LUMINANCE,                      16#1909).
-define(GL_LUMINANCE_ALPHA,                16#190A).

%% PixelMap
%%      GL_PIXEL_MAP_I_TO_I
%%      GL_PIXEL_MAP_S_TO_S
%%      GL_PIXEL_MAP_I_TO_R
%%      GL_PIXEL_MAP_I_TO_G
%%      GL_PIXEL_MAP_I_TO_B
%%      GL_PIXEL_MAP_I_TO_A
%%      GL_PIXEL_MAP_R_TO_R
%%      GL_PIXEL_MAP_G_TO_G
%%      GL_PIXEL_MAP_B_TO_B
%%      GL_PIXEL_MAP_A_TO_A

%% PixelStore
%%      GL_UNPACK_SWAP_BYTES
%%      GL_UNPACK_LSB_FIRST
%%      GL_UNPACK_ROW_LENGTH
%%      GL_UNPACK_SKIP_ROWS
%%      GL_UNPACK_SKIP_PIXELS
%%      GL_UNPACK_ALIGNMENT
%%      GL_PACK_SWAP_BYTES
%%      GL_PACK_LSB_FIRST
%%      GL_PACK_ROW_LENGTH
%%      GL_PACK_SKIP_ROWS
%%      GL_PACK_SKIP_PIXELS
%%      GL_PACK_ALIGNMENT

%% PixelTransfer
%%      GL_MAP_COLOR
%%      GL_MAP_STENCIL
%%      GL_INDEX_SHIFT
%%      GL_INDEX_OFFSET
%%      GL_RED_SCALE
%%      GL_RED_BIAS
%%      GL_GREEN_SCALE
%%      GL_GREEN_BIAS
%%      GL_BLUE_SCALE
%%      GL_BLUE_BIAS
%%      GL_ALPHA_SCALE
%%      GL_ALPHA_BIAS
%%      GL_DEPTH_SCALE
%%      GL_DEPTH_BIAS

%% PixelType
-define(GL_BITMAP,                         16#1A00).
%%      GL_BYTE
%%      GL_UNSIGNED_BYTE
%%      GL_SHORT
%%      GL_UNSIGNED_SHORT
%%      GL_INT
%%      GL_UNSIGNED_INT
%%      GL_FLOAT

%% PolygonMode
-define(GL_POINT,                          16#1B00).
-define(GL_LINE,                           16#1B01).
-define(GL_FILL,                           16#1B02).

%% ReadBufferMode
%%      GL_FRONT_LEFT
%%      GL_FRONT_RIGHT
%%      GL_BACK_LEFT
%%      GL_BACK_RIGHT
%%      GL_FRONT
%%      GL_BACK
%%      GL_LEFT
%%      GL_RIGHT
%%      GL_AUX0
%%      GL_AUX1
%%      GL_AUX2
%%      GL_AUX3

%% RenderingMode
-define(GL_RENDER,                         16#1C00).
-define(GL_FEEDBACK,                       16#1C01).
-define(GL_SELECT,                         16#1C02).

%% ShadingModel
-define(GL_FLAT,                           16#1D00).
-define(GL_SMOOTH,                         16#1D01).

%% StencilFunction
%%      GL_NEVER
%%      GL_LESS
%%      GL_EQUAL
%%      GL_LEQUAL
%%      GL_GREATER
%%      GL_NOTEQUAL
%%      GL_GEQUAL
%%      GL_ALWAYS

%% StencilOp
%%      GL_ZERO
-define(GL_KEEP,                           16#1E00).
-define(GL_REPLACE,                        16#1E01).
-define(GL_INCR,                           16#1E02).
-define(GL_DECR,                           16#1E03).
%%      GL_INVERT

%% StringName
-define(GL_VENDOR,                         16#1F00).
-define(GL_RENDERER,                       16#1F01).
-define(GL_VERSION,                        16#1F02).
-define(GL_EXTENSIONS,                     16#1F03).

%% TextureCoordName
-define(GL_S,                              16#2000).
-define(GL_T,                              16#2001).
-define(GL_R,                              16#2002).
-define(GL_Q,                              16#2003).

%% TexCoordPointerType
%%      GL_SHORT
%%      GL_INT
%%      GL_FLOAT
%%      GL_DOUBLE

%% TextureEnvMode
-define(GL_MODULATE,                       16#2100).
-define(GL_DECAL,                          16#2101).
%%      GL_BLEND
%%      GL_REPLACE

%% TextureEnvParameter
-define(GL_TEXTURE_ENV_MODE,               16#2200).
-define(GL_TEXTURE_ENV_COLOR,              16#2201).

%% TextureEnvTarget
-define(GL_TEXTURE_ENV,                    16#2300).

%% TextureGenMode
-define(GL_EYE_LINEAR,                     16#2400).
-define(GL_OBJECT_LINEAR,                  16#2401).
-define(GL_SPHERE_MAP,                     16#2402).

%% TextureGenParameter
-define(GL_TEXTURE_GEN_MODE,               16#2500).
-define(GL_OBJECT_PLANE,                   16#2501).
-define(GL_EYE_PLANE,                      16#2502).

%% TextureMagFilter
-define(GL_NEAREST,                        16#2600).
-define(GL_LINEAR,                         16#2601).

%% TextureMinFilter
%%      GL_NEAREST
%%      GL_LINEAR
-define(GL_NEAREST_MIPMAP_NEAREST,         16#2700).
-define(GL_LINEAR_MIPMAP_NEAREST,          16#2701).
-define(GL_NEAREST_MIPMAP_LINEAR,          16#2702).
-define(GL_LINEAR_MIPMAP_LINEAR,           16#2703).

%% TextureParameterName
-define(GL_TEXTURE_MAG_FILTER,             16#2800).
-define(GL_TEXTURE_MIN_FILTER,             16#2801).
-define(GL_TEXTURE_WRAP_S,                 16#2802).
-define(GL_TEXTURE_WRAP_T,                 16#2803).
%%      GL_TEXTURE_BORDER_COLOR
%%      GL_TEXTURE_PRIORITY

%% TextureTarget
%%      GL_TEXTURE_1D
%%      GL_TEXTURE_2D
%%      GL_PROXY_TEXTURE_1D
%%      GL_PROXY_TEXTURE_2D

%% TextureWrapMode
-define(GL_CLAMP,                          16#2900).
-define(GL_REPEAT,                         16#2901).

%% VertexPointerType
%%      GL_SHORT
%%      GL_INT
%%      GL_FLOAT
%%      GL_DOUBLE

%% ClientAttribMask
-define(GL_CLIENT_PIXEL_STORE_BIT,         16#00000001).
-define(GL_CLIENT_VERTEX_ARRAY_BIT,        16#00000002).
-define(GL_CLIENT_ALL_ATTRIB_BITS,         16#FFFFFFFF).

%% polygon_offset
-define(GL_POLYGON_OFFSET_FACTOR,          16#8038).
-define(GL_POLYGON_OFFSET_UNITS,           16#2A00).
-define(GL_POLYGON_OFFSET_POINT,           16#2A01).
-define(GL_POLYGON_OFFSET_LINE,            16#2A02).
-define(GL_POLYGON_OFFSET_FILL,            16#8037).

%% texture
-define(GL_ALPHA4,                         16#803B).
-define(GL_ALPHA8,                         16#803C).
-define(GL_ALPHA12,                        16#803D).
-define(GL_ALPHA16,                        16#803E).
-define(GL_LUMINANCE4,                     16#803F).
-define(GL_LUMINANCE8,                     16#8040).
-define(GL_LUMINANCE12,                    16#8041).
-define(GL_LUMINANCE16,                    16#8042).
-define(GL_LUMINANCE4_ALPHA4,              16#8043).
-define(GL_LUMINANCE6_ALPHA2,              16#8044).
-define(GL_LUMINANCE8_ALPHA8,              16#8045).
-define(GL_LUMINANCE12_ALPHA4,             16#8046).
-define(GL_LUMINANCE12_ALPHA12,            16#8047).
-define(GL_LUMINANCE16_ALPHA16,            16#8048).
-define(GL_INTENSITY,                      16#8049).
-define(GL_INTENSITY4,                     16#804A).
-define(GL_INTENSITY8,                     16#804B).
-define(GL_INTENSITY12,                    16#804C).
-define(GL_INTENSITY16,                    16#804D).
-define(GL_R3_G3_B2,                       16#2A10).
-define(GL_RGB4,                           16#804F).
-define(GL_RGB5,                           16#8050).
-define(GL_RGB8,                           16#8051).
-define(GL_RGB10,                          16#8052).
-define(GL_RGB12,                          16#8053).
-define(GL_RGB16,                          16#8054).
-define(GL_RGBA2,                          16#8055).
-define(GL_RGBA4,                          16#8056).
-define(GL_RGB5_A1,                        16#8057).
-define(GL_RGBA8,                          16#8058).
-define(GL_RGB10_A2,                       16#8059).
-define(GL_RGBA12,                         16#805A).
-define(GL_RGBA16,                         16#805B).
-define(GL_TEXTURE_RED_SIZE,               16#805C).
-define(GL_TEXTURE_GREEN_SIZE,             16#805D).
-define(GL_TEXTURE_BLUE_SIZE,              16#805E).
-define(GL_TEXTURE_ALPHA_SIZE,             16#805F).
-define(GL_TEXTURE_LUMINANCE_SIZE,         16#8060).
-define(GL_TEXTURE_INTENSITY_SIZE,         16#8061).
-define(GL_PROXY_TEXTURE_1D,               16#8063).
-define(GL_PROXY_TEXTURE_2D,               16#8064).

%% texture_object
-define(GL_TEXTURE_PRIORITY,               16#8066).
-define(GL_TEXTURE_RESIDENT,               16#8067).
-define(GL_TEXTURE_BINDING_1D,             16#8068).
-define(GL_TEXTURE_BINDING_2D,             16#8069).

%% vertex_array
-define(GL_VERTEX_ARRAY,                   16#8074).
-define(GL_NORMAL_ARRAY,                   16#8075).
-define(GL_COLOR_ARRAY,                    16#8076).
-define(GL_INDEX_ARRAY,                    16#8077).
-define(GL_TEXTURE_COORD_ARRAY,            16#8078).
-define(GL_EDGE_FLAG_ARRAY,                16#8079).
-define(GL_VERTEX_ARRAY_SIZE,              16#807A).
-define(GL_VERTEX_ARRAY_TYPE,              16#807B).
-define(GL_VERTEX_ARRAY_STRIDE,            16#807C).
-define(GL_NORMAL_ARRAY_TYPE,              16#807E).
-define(GL_NORMAL_ARRAY_STRIDE,            16#807F).
-define(GL_COLOR_ARRAY_SIZE,               16#8081).
-define(GL_COLOR_ARRAY_TYPE,               16#8082).
-define(GL_COLOR_ARRAY_STRIDE,             16#8083).
-define(GL_INDEX_ARRAY_TYPE,               16#8085).
-define(GL_INDEX_ARRAY_STRIDE,             16#8086).
-define(GL_TEXTURE_COORD_ARRAY_SIZE,       16#8088).
-define(GL_TEXTURE_COORD_ARRAY_TYPE,       16#8089).
-define(GL_TEXTURE_COORD_ARRAY_STRIDE,     16#808A).
-define(GL_EDGE_FLAG_ARRAY_STRIDE,         16#808C).
-define(GL_VERTEX_ARRAY_POINTER,           16#808E).
-define(GL_NORMAL_ARRAY_POINTER,           16#808F).
-define(GL_COLOR_ARRAY_POINTER,            16#8090).
-define(GL_INDEX_ARRAY_POINTER,            16#8091).
-define(GL_TEXTURE_COORD_ARRAY_POINTER,    16#8092).
-define(GL_EDGE_FLAG_ARRAY_POINTER,        16#8093).
-define(GL_V2F,                            16#2A20).
-define(GL_V3F,                            16#2A21).
-define(GL_C4UB_V2F,                       16#2A22).
-define(GL_C4UB_V3F,                       16#2A23).
-define(GL_C3F_V3F,                        16#2A24).
-define(GL_N3F_V3F,                        16#2A25).
-define(GL_C4F_N3F_V3F,                    16#2A26).
-define(GL_T2F_V3F,                        16#2A27).
-define(GL_T4F_V4F,                        16#2A28).
-define(GL_T2F_C4UB_V3F,                   16#2A29).
-define(GL_T2F_C3F_V3F,                    16#2A2A).
-define(GL_T2F_N3F_V3F,                    16#2A2B).
-define(GL_T2F_C4F_N3F_V3F,                16#2A2C).
-define(GL_T4F_C4F_N3F_V4F,                16#2A2D).

%% Extensions
-define(GL_WIN_swap_hint,                  1).
-define(GL_WIN_draw_range_elements,        1).
%-define(GL_WIN_phong_shading,             1).
%-define(GL_WIN_specular_fog,              1).

%% EXT_vertex_array
-define(GL_DOUBLE_EXT,                     ?GL_DOUBLE).

%% EXT_paletted_texture

%% These must match the GL_COLOR_TABLE_*_SGI enumerants
-define(GL_COLOR_TABLE_FORMAT_EXT,         16#80D8).
-define(GL_COLOR_TABLE_WIDTH_EXT,          16#80D9).
-define(GL_COLOR_TABLE_RED_SIZE_EXT,       16#80DA).
-define(GL_COLOR_TABLE_GREEN_SIZE_EXT,     16#80DB).
-define(GL_COLOR_TABLE_BLUE_SIZE_EXT,      16#80DC).
-define(GL_COLOR_TABLE_ALPHA_SIZE_EXT,     16#80DD).
-define(GL_COLOR_TABLE_LUMINANCE_SIZE_EXT, 16#80DE).
-define(GL_COLOR_TABLE_INTENSITY_SIZE_EXT, 16#80DF).

%% WIN_draw_range_elements
-define(GL_MAX_ELEMENTS_VERTICES_WIN,      16#80E8).
-define(GL_MAX_ELEMENTS_INDICES_WIN,       16#80E9).

%% WIN_phong_shading
%-define(GL_PHONG_WIN,                      16#80EA).
%-define(GL_PHONG_HINT_WIN,                 16#80EB).

%% WIN_specular_fog
%-define(GL_FOG_SPECULAR_TEXTURE_WIN,       16#80EC).

%% For compatibility with OpenGL v1.0
-define(GL_LOGIC_OP,                       ?GL_INDEX_LOGIC_OP).
-define(GL_TEXTURE_COMPONENTS,             ?GL_TEXTURE_INTERNAL_FORMAT).
