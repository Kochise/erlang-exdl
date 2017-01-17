%%  Copyright (c) 2012 Kochise
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_gl3.hrl,v 1.7 2012/08/24 14:45:39 koch Exp $
%%     $Id: exdl_glcorearb.hrl,v 1.7 2014/04/17 14:45:39 koch Exp $
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

-ifndef(GL_VERSION_1_1).
  -define(GL_VERSION_1_1,                                      1).

%% AttribMask
  -define(GL_DEPTH_BUFFER_BIT,                                 16#00000100).
  -define(GL_STENCIL_BUFFER_BIT,                               16#00000400).
  -define(GL_COLOR_BUFFER_BIT,                                 16#00004000).
%% Boolean
  -define(GL_FALSE,                                            0).
  -define(GL_TRUE,                                             1).
%% BeginMode
  -define(GL_POINTS,                                           16#0000).
  -define(GL_LINES,                                            16#0001).
  -define(GL_LINE_LOOP,                                        16#0002).
  -define(GL_LINE_STRIP,                                       16#0003).
  -define(GL_TRIANGLES,                                        16#0004).
  -define(GL_TRIANGLE_STRIP,                                   16#0005).
  -define(GL_TRIANGLE_FAN,                                     16#0006).
  -define(GL_QUADS,                                            16#0007).
%% AlphaFunction
  -define(GL_NEVER,                                            16#0200).
  -define(GL_LESS,                                             16#0201).
  -define(GL_EQUAL,                                            16#0202).
  -define(GL_LEQUAL,                                           16#0203).
  -define(GL_GREATER,                                          16#0204).
  -define(GL_NOTEQUAL,                                         16#0205).
  -define(GL_GEQUAL,                                           16#0206).
  -define(GL_ALWAYS,                                           16#0207).
%% BlendingFactorDest
  -define(GL_ZERO,                                             0).
  -define(GL_ONE,                                              1).
  -define(GL_SRC_COLOR,                                        16#0300).
  -define(GL_ONE_MINUS_SRC_COLOR,                              16#0301).
  -define(GL_SRC_ALPHA,                                        16#0302).
  -define(GL_ONE_MINUS_SRC_ALPHA,                              16#0303).
  -define(GL_DST_ALPHA,                                        16#0304).
  -define(GL_ONE_MINUS_DST_ALPHA,                              16#0305).
%% BlendingFactorSrc
  -define(GL_DST_COLOR,                                        16#0306).
  -define(GL_ONE_MINUS_DST_COLOR,                              16#0307).
  -define(GL_SRC_ALPHA_SATURATE,                               16#0308).
%% DrawBufferMode
  -define(GL_NONE,                                             0).
  -define(GL_FRONT_LEFT,                                       16#0400).
  -define(GL_FRONT_RIGHT,                                      16#0401).
  -define(GL_BACK_LEFT,                                        16#0402).
  -define(GL_BACK_RIGHT,                                       16#0403).
  -define(GL_FRONT,                                            16#0404).
  -define(GL_BACK,                                             16#0405).
  -define(GL_LEFT,                                             16#0406).
  -define(GL_RIGHT,                                            16#0407).
  -define(GL_FRONT_AND_BACK,                                   16#0408).
%% ErrorCode
  -define(GL_NO_ERROR,                                         0).
  -define(GL_INVALID_ENUM,                                     16#0500).
  -define(GL_INVALID_VALUE,                                    16#0501).
  -define(GL_INVALID_OPERATION,                                16#0502).
  -define(GL_OUT_OF_MEMORY,                                    16#0505).
%% FrontFaceDirection
  -define(GL_CW,                                               16#0900).
  -define(GL_CCW,                                              16#0901).
%% GetPName
  -define(GL_POINT_SIZE,                                       16#0B11).
  -define(GL_POINT_SIZE_RANGE,                                 16#0B12).
  -define(GL_POINT_SIZE_GRANULARITY,                           16#0B13).
  -define(GL_LINE_SMOOTH,                                      16#0B20).
  -define(GL_LINE_WIDTH,                                       16#0B21).
  -define(GL_LINE_WIDTH_RANGE,                                 16#0B22).
  -define(GL_LINE_WIDTH_GRANULARITY,                           16#0B23).
  -define(GL_POLYGON_MODE,                                     16#0B40).
  -define(GL_POLYGON_SMOOTH,                                   16#0B41).
  -define(GL_CULL_FACE,                                        16#0B44).
  -define(GL_CULL_FACE_MODE,                                   16#0B45).
  -define(GL_FRONT_FACE,                                       16#0B46).
  -define(GL_DEPTH_RANGE,                                      16#0B70).
  -define(GL_DEPTH_TEST,                                       16#0B71).
  -define(GL_DEPTH_WRITEMASK,                                  16#0B72).
  -define(GL_DEPTH_CLEAR_VALUE,                                16#0B73).
  -define(GL_DEPTH_FUNC,                                       16#0B74).
  -define(GL_STENCIL_TEST,                                     16#0B90).
  -define(GL_STENCIL_CLEAR_VALUE,                              16#0B91).
  -define(GL_STENCIL_FUNC,                                     16#0B92).
  -define(GL_STENCIL_VALUE_MASK,                               16#0B93).
  -define(GL_STENCIL_FAIL,                                     16#0B94).
  -define(GL_STENCIL_PASS_DEPTH_FAIL,                          16#0B95).
  -define(GL_STENCIL_PASS_DEPTH_PASS,                          16#0B96).
  -define(GL_STENCIL_REF,                                      16#0B97).
  -define(GL_STENCIL_WRITEMASK,                                16#0B98).
  -define(GL_VIEWPORT,                                         16#0BA2).
  -define(GL_DITHER,                                           16#0BD0).
  -define(GL_BLEND_DST,                                        16#0BE0).
  -define(GL_BLEND_SRC,                                        16#0BE1).
  -define(GL_BLEND,                                            16#0BE2).
  -define(GL_LOGIC_OP_MODE,                                    16#0BF0).
  -define(GL_COLOR_LOGIC_OP,                                   16#0BF2).
  -define(GL_DRAW_BUFFER,                                      16#0C01).
  -define(GL_READ_BUFFER,                                      16#0C02).
  -define(GL_SCISSOR_BOX,                                      16#0C10).
  -define(GL_SCISSOR_TEST,                                     16#0C11).
  -define(GL_COLOR_CLEAR_VALUE,                                16#0C22).
  -define(GL_COLOR_WRITEMASK,                                  16#0C23).
  -define(GL_DOUBLEBUFFER,                                     16#0C32).
  -define(GL_STEREO,                                           16#0C33).
  -define(GL_LINE_SMOOTH_HINT,                                 16#0C52).
  -define(GL_POLYGON_SMOOTH_HINT,                              16#0C53).
  -define(GL_UNPACK_SWAP_BYTES,                                16#0CF0).
  -define(GL_UNPACK_LSB_FIRST,                                 16#0CF1).
  -define(GL_UNPACK_ROW_LENGTH,                                16#0CF2).
  -define(GL_UNPACK_SKIP_ROWS,                                 16#0CF3).
  -define(GL_UNPACK_SKIP_PIXELS,                               16#0CF4).
  -define(GL_UNPACK_ALIGNMENT,                                 16#0CF5).
  -define(GL_PACK_SWAP_BYTES,                                  16#0D00).
  -define(GL_PACK_LSB_FIRST,                                   16#0D01).
  -define(GL_PACK_ROW_LENGTH,                                  16#0D02).
  -define(GL_PACK_SKIP_ROWS,                                   16#0D03).
  -define(GL_PACK_SKIP_PIXELS,                                 16#0D04).
  -define(GL_PACK_ALIGNMENT,                                   16#0D05).
  -define(GL_MAX_TEXTURE_SIZE,                                 16#0D33).
  -define(GL_MAX_VIEWPORT_DIMS,                                16#0D3A).
  -define(GL_SUBPIXEL_BITS,                                    16#0D50).
  -define(GL_TEXTURE_1D,                                       16#0DE0).
  -define(GL_TEXTURE_2D,                                       16#0DE1).
  -define(GL_POLYGON_OFFSET_UNITS,                             16#2A00).
  -define(GL_POLYGON_OFFSET_POINT,                             16#2A01).
  -define(GL_POLYGON_OFFSET_LINE,                              16#2A02).
  -define(GL_POLYGON_OFFSET_FILL,                              16#8037).
  -define(GL_POLYGON_OFFSET_FACTOR,                            16#8038).
  -define(GL_TEXTURE_BINDING_1D,                               16#8068).
  -define(GL_TEXTURE_BINDING_2D,                               16#8069).
%% GetTextureParameter
  -define(GL_TEXTURE_WIDTH,                                    16#1000).
  -define(GL_TEXTURE_HEIGHT,                                   16#1001).
  -define(GL_TEXTURE_INTERNAL_FORMAT,                          16#1003).
  -define(GL_TEXTURE_BORDER_COLOR,                             16#1004).
  -define(GL_TEXTURE_RED_SIZE,                                 16#805C).
  -define(GL_TEXTURE_GREEN_SIZE,                               16#805D).
  -define(GL_TEXTURE_BLUE_SIZE,                                16#805E).
  -define(GL_TEXTURE_ALPHA_SIZE,                               16#805F).
%% HintMode
  -define(GL_DONT_CARE,                                        16#1100).
  -define(GL_FASTEST,                                          16#1101).
  -define(GL_NICEST,                                           16#1102).
%% DataType
  -define(GL_BYTE,                                             16#1400).
  -define(GL_UNSIGNED_BYTE,                                    16#1401).
  -define(GL_SHORT,                                            16#1402).
  -define(GL_UNSIGNED_SHORT,                                   16#1403).
  -define(GL_INT,                                              16#1404).
  -define(GL_UNSIGNED_INT,                                     16#1405).
  -define(GL_FLOAT,                                            16#1406).
  -define(GL_DOUBLE,                                           16#140A).
%% ErrorCode
  -define(GL_STACK_OVERFLOW,                                   16#0503).
  -define(GL_STACK_UNDERFLOW,                                  16#0504).
%% LogicOp
  -define(GL_CLEAR,                                            16#1500).
  -define(GL_AND,                                              16#1501).
  -define(GL_AND_REVERSE,                                      16#1502).
  -define(GL_COPY,                                             16#1503).
  -define(GL_AND_INVERTED,                                     16#1504).
  -define(GL_NOOP,                                             16#1505).
  -define(GL_XOR,                                              16#1506).
  -define(GL_OR,                                               16#1507).
  -define(GL_NOR,                                              16#1508).
  -define(GL_EQUIV,                                            16#1509).
  -define(GL_INVERT,                                           16#150A).
  -define(GL_OR_REVERSE,                                       16#150B).
  -define(GL_COPY_INVERTED,                                    16#150C).
  -define(GL_OR_INVERTED,                                      16#150D).
  -define(GL_NAND,                                             16#150E).
  -define(GL_SET,                                              16#150F).
%% MatrixMode (for gl3.h, FBO attachment type)
  -define(GL_TEXTURE,                                          16#1702).
%% PixelCopyType
  -define(GL_COLOR,                                            16#1800).
  -define(GL_DEPTH,                                            16#1801).
  -define(GL_STENCIL,                                          16#1802).
%% PixelFormat
  -define(GL_STENCIL_INDEX,                                    16#1901).
  -define(GL_DEPTH_COMPONENT,                                  16#1902).
  -define(GL_RED,                                              16#1903).
  -define(GL_GREEN,                                            16#1904).
  -define(GL_BLUE,                                             16#1905).
  -define(GL_ALPHA,                                            16#1906).
  -define(GL_RGB,                                              16#1907).
  -define(GL_RGBA,                                             16#1908).
%% PolygonMode
  -define(GL_POINT,                                            16#1B00).
  -define(GL_LINE,                                             16#1B01).
  -define(GL_FILL,                                             16#1B02).
%% StencilOp
  -define(GL_KEEP,                                             16#1E00).
  -define(GL_REPLACE,                                          16#1E01).
  -define(GL_INCR,                                             16#1E02).
  -define(GL_DECR,                                             16#1E03).
%% StringName
  -define(GL_VENDOR,                                           16#1F00).
  -define(GL_RENDERER,                                         16#1F01).
  -define(GL_VERSION,                                          16#1F02).
  -define(GL_EXTENSIONS,                                       16#1F03).
%% TextureMagFilter
  -define(GL_NEAREST,                                          16#2600).
  -define(GL_LINEAR,                                           16#2601).
%% TextureMinFilter
  -define(GL_NEAREST_MIPMAP_NEAREST,                           16#2700).
  -define(GL_LINEAR_MIPMAP_NEAREST,                            16#2701).
  -define(GL_NEAREST_MIPMAP_LINEAR,                            16#2702).
  -define(GL_LINEAR_MIPMAP_LINEAR,                             16#2703).
%% TextureParameterName
  -define(GL_TEXTURE_MAG_FILTER,                               16#2800).
  -define(GL_TEXTURE_MIN_FILTER,                               16#2801).
  -define(GL_TEXTURE_WRAP_S,                                   16#2802).
  -define(GL_TEXTURE_WRAP_T,                                   16#2803).
%% TextureTarget
  -define(GL_PROXY_TEXTURE_1D,                                 16#8063).
  -define(GL_PROXY_TEXTURE_2D,                                 16#8064).
%% TextureWrapMode
  -define(GL_REPEAT,                                           16#2901).
%% PixelInternalFormat
  -define(GL_R3_G3_B2,                                         16#2A10).
  -define(GL_RGB4,                                             16#804F).
  -define(GL_RGB5,                                             16#8050).
  -define(GL_RGB8,                                             16#8051).
  -define(GL_RGB10,                                            16#8052).
  -define(GL_RGB12,                                            16#8053).
  -define(GL_RGB16,                                            16#8054).
  -define(GL_RGBA2,                                            16#8055).
  -define(GL_RGBA4,                                            16#8056).
  -define(GL_RGB5_A1,                                          16#8057).
  -define(GL_RGBA8,                                            16#8058).
  -define(GL_RGB10_A2,                                         16#8059).
  -define(GL_RGBA12,                                           16#805A).
  -define(GL_RGBA16,                                           16#805B).
-endif.

-ifndef(GL_VERSION_1_2).
  -define(GL_VERSION_1_2,                                      1).

  -define(GL_UNSIGNED_BYTE_3_3_2,                              16#8032).
  -define(GL_UNSIGNED_SHORT_4_4_4_4,                           16#8033).
  -define(GL_UNSIGNED_SHORT_5_5_5_1,                           16#8034).
  -define(GL_UNSIGNED_INT_8_8_8_8,                             16#8035).
  -define(GL_UNSIGNED_INT_10_10_10_2,                          16#8036).
  -define(GL_TEXTURE_BINDING_3D,                               16#806A).
  -define(GL_PACK_SKIP_IMAGES,                                 16#806B).
  -define(GL_PACK_IMAGE_HEIGHT,                                16#806C).
  -define(GL_UNPACK_SKIP_IMAGES,                               16#806D).
  -define(GL_UNPACK_IMAGE_HEIGHT,                              16#806E).
  -define(GL_TEXTURE_3D,                                       16#806F).
  -define(GL_PROXY_TEXTURE_3D,                                 16#8070).
  -define(GL_TEXTURE_DEPTH,                                    16#8071).
  -define(GL_TEXTURE_WRAP_R,                                   16#8072).
  -define(GL_MAX_3D_TEXTURE_SIZE,                              16#8073).
  -define(GL_UNSIGNED_BYTE_2_3_3_REV,                          16#8362).
  -define(GL_UNSIGNED_SHORT_5_6_5,                             16#8363).
  -define(GL_UNSIGNED_SHORT_5_6_5_REV,                         16#8364).
  -define(GL_UNSIGNED_SHORT_4_4_4_4_REV,                       16#8365).
  -define(GL_UNSIGNED_SHORT_1_5_5_5_REV,                       16#8366).
  -define(GL_UNSIGNED_INT_8_8_8_8_REV,                         16#8367).
  -define(GL_UNSIGNED_INT_2_10_10_10_REV,                      16#8368).
  -define(GL_BGR,                                              16#80E0).
  -define(GL_BGRA,                                             16#80E1).
  -define(GL_MAX_ELEMENTS_VERTICES,                            16#80E8).
  -define(GL_MAX_ELEMENTS_INDICES,                             16#80E9).
  -define(GL_CLAMP_TO_EDGE,                                    16#812F).
  -define(GL_TEXTURE_MIN_LOD,                                  16#813A).
  -define(GL_TEXTURE_MAX_LOD,                                  16#813B).
  -define(GL_TEXTURE_BASE_LEVEL,                               16#813C).
  -define(GL_TEXTURE_MAX_LEVEL,                                16#813D).
  -define(GL_SMOOTH_POINT_SIZE_RANGE,                          16#0B12).
  -define(GL_SMOOTH_POINT_SIZE_GRANULARITY,                    16#0B13).
  -define(GL_SMOOTH_LINE_WIDTH_RANGE,                          16#0B22).
  -define(GL_SMOOTH_LINE_WIDTH_GRANULARITY,                    16#0B23).
  -define(GL_ALIASED_LINE_WIDTH_RANGE,                         16#846E).
-endif.

-ifndef(GL_ARB_imaging).
  -define(GL_ARB_imaging,                                      1).

  -define(GL_CONSTANT_COLOR,                                   16#8001).
  -define(GL_ONE_MINUS_CONSTANT_COLOR,                         16#8002).
  -define(GL_CONSTANT_ALPHA,                                   16#8003).
  -define(GL_ONE_MINUS_CONSTANT_ALPHA,                         16#8004).
  -define(GL_BLEND_COLOR,                                      16#8005).
  -define(GL_FUNC_ADD,                                         16#8006).
  -define(GL_MIN,                                              16#8007).
  -define(GL_MAX,                                              16#8008).
  -define(GL_BLEND_EQUATION,                                   16#8009).
  -define(GL_FUNC_SUBTRACT,                                    16#800A).
  -define(GL_FUNC_REVERSE_SUBTRACT,                            16#800B).
-endif.

-ifndef(GL_VERSION_1_3).
  -define(GL_VERSION_1_3,                                      1).

  -define(GL_TEXTURE0,                                         16#84C0).
  -define(GL_TEXTURE1,                                         16#84C1).
  -define(GL_TEXTURE2,                                         16#84C2).
  -define(GL_TEXTURE3,                                         16#84C3).
  -define(GL_TEXTURE4,                                         16#84C4).
  -define(GL_TEXTURE5,                                         16#84C5).
  -define(GL_TEXTURE6,                                         16#84C6).
  -define(GL_TEXTURE7,                                         16#84C7).
  -define(GL_TEXTURE8,                                         16#84C8).
  -define(GL_TEXTURE9,                                         16#84C9).
  -define(GL_TEXTURE10,                                        16#84CA).
  -define(GL_TEXTURE11,                                        16#84CB).
  -define(GL_TEXTURE12,                                        16#84CC).
  -define(GL_TEXTURE13,                                        16#84CD).
  -define(GL_TEXTURE14,                                        16#84CE).
  -define(GL_TEXTURE15,                                        16#84CF).
  -define(GL_TEXTURE16,                                        16#84D0).
  -define(GL_TEXTURE17,                                        16#84D1).
  -define(GL_TEXTURE18,                                        16#84D2).
  -define(GL_TEXTURE19,                                        16#84D3).
  -define(GL_TEXTURE20,                                        16#84D4).
  -define(GL_TEXTURE21,                                        16#84D5).
  -define(GL_TEXTURE22,                                        16#84D6).
  -define(GL_TEXTURE23,                                        16#84D7).
  -define(GL_TEXTURE24,                                        16#84D8).
  -define(GL_TEXTURE25,                                        16#84D9).
  -define(GL_TEXTURE26,                                        16#84DA).
  -define(GL_TEXTURE27,                                        16#84DB).
  -define(GL_TEXTURE28,                                        16#84DC).
  -define(GL_TEXTURE29,                                        16#84DD).
  -define(GL_TEXTURE30,                                        16#84DE).
  -define(GL_TEXTURE31,                                        16#84DF).
  -define(GL_ACTIVE_TEXTURE,                                   16#84E0).
  -define(GL_MULTISAMPLE,                                      16#809D).
  -define(GL_SAMPLE_ALPHA_TO_COVERAGE,                         16#809E).
  -define(GL_SAMPLE_ALPHA_TO_ONE,                              16#809F).
  -define(GL_SAMPLE_COVERAGE,                                  16#80A0).
  -define(GL_SAMPLE_BUFFERS,                                   16#80A8).
  -define(GL_SAMPLES,                                          16#80A9).
  -define(GL_SAMPLE_COVERAGE_VALUE,                            16#80AA).
  -define(GL_SAMPLE_COVERAGE_INVERT,                           16#80AB).
  -define(GL_TEXTURE_CUBE_MAP,                                 16#8513).
  -define(GL_TEXTURE_BINDING_CUBE_MAP,                         16#8514).
  -define(GL_TEXTURE_CUBE_MAP_POSITIVE_X,                      16#8515).
  -define(GL_TEXTURE_CUBE_MAP_NEGATIVE_X,                      16#8516).
  -define(GL_TEXTURE_CUBE_MAP_POSITIVE_Y,                      16#8517).
  -define(GL_TEXTURE_CUBE_MAP_NEGATIVE_Y,                      16#8518).
  -define(GL_TEXTURE_CUBE_MAP_POSITIVE_Z,                      16#8519).
  -define(GL_TEXTURE_CUBE_MAP_NEGATIVE_Z,                      16#851A).
  -define(GL_PROXY_TEXTURE_CUBE_MAP,                           16#851B).
  -define(GL_MAX_CUBE_MAP_TEXTURE_SIZE,                        16#851C).
  -define(GL_COMPRESSED_RGB,                                   16#84ED).
  -define(GL_COMPRESSED_RGBA,                                  16#84EE).
  -define(GL_TEXTURE_COMPRESSION_HINT,                         16#84EF).
  -define(GL_TEXTURE_COMPRESSED_IMAGE_SIZE,                    16#86A0).
  -define(GL_TEXTURE_COMPRESSED,                               16#86A1).
  -define(GL_NUM_COMPRESSED_TEXTURE_FORMATS,                   16#86A2).
  -define(GL_COMPRESSED_TEXTURE_FORMATS,                       16#86A3).
  -define(GL_CLAMP_TO_BORDER,                                  16#812D).
-endif.

-ifndef(GL_VERSION_1_4).
  -define(GL_VERSION_1_4,                                      1).

  -define(GL_BLEND_DST_RGB,                                    16#80C8).
  -define(GL_BLEND_SRC_RGB,                                    16#80C9).
  -define(GL_BLEND_DST_ALPHA,                                  16#80CA).
  -define(GL_BLEND_SRC_ALPHA,                                  16#80CB).
  -define(GL_POINT_FADE_THRESHOLD_SIZE,                        16#8128).
  -define(GL_DEPTH_COMPONENT16,                                16#81A5).
  -define(GL_DEPTH_COMPONENT24,                                16#81A6).
  -define(GL_DEPTH_COMPONENT32,                                16#81A7).
  -define(GL_MIRRORED_REPEAT,                                  16#8370).
  -define(GL_MAX_TEXTURE_LOD_BIAS,                             16#84FD).
  -define(GL_TEXTURE_LOD_BIAS,                                 16#8501).
  -define(GL_INCR_WRAP,                                        16#8507).
  -define(GL_DECR_WRAP,                                        16#8508).
  -define(GL_TEXTURE_DEPTH_SIZE,                               16#884A).
  -define(GL_TEXTURE_COMPARE_MODE,                             16#884C).
  -define(GL_TEXTURE_COMPARE_FUNC,                             16#884D).
-endif.

-ifndef(GL_VERSION_1_5).
  -define(GL_VERSION_1_5,                                      1).

  -define(GL_BUFFER_SIZE,                                      16#8764).
  -define(GL_BUFFER_USAGE,                                     16#8765).
  -define(GL_QUERY_COUNTER_BITS,                               16#8864).
  -define(GL_CURRENT_QUERY,                                    16#8865).
  -define(GL_QUERY_RESULT,                                     16#8866).
  -define(GL_QUERY_RESULT_AVAILABLE,                           16#8867).
  -define(GL_ARRAY_BUFFER,                                     16#8892).
  -define(GL_ELEMENT_ARRAY_BUFFER,                             16#8893).
  -define(GL_ARRAY_BUFFER_BINDING,                             16#8894).
  -define(GL_ELEMENT_ARRAY_BUFFER_BINDING,                     16#8895).
  -define(GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING,               16#889F).
  -define(GL_READ_ONLY,                                        16#88B8).
  -define(GL_WRITE_ONLY,                                       16#88B9).
  -define(GL_READ_WRITE,                                       16#88BA).
  -define(GL_BUFFER_ACCESS,                                    16#88BB).
  -define(GL_BUFFER_MAPPED,                                    16#88BC).
  -define(GL_BUFFER_MAP_POINTER,                               16#88BD).
  -define(GL_STREAM_DRAW,                                      16#88E0).
  -define(GL_STREAM_READ,                                      16#88E1).
  -define(GL_STREAM_COPY,                                      16#88E2).
  -define(GL_STATIC_DRAW,                                      16#88E4).
  -define(GL_STATIC_READ,                                      16#88E5).
  -define(GL_STATIC_COPY,                                      16#88E6).
  -define(GL_DYNAMIC_DRAW,                                     16#88E8).
  -define(GL_DYNAMIC_READ,                                     16#88E9).
  -define(GL_DYNAMIC_COPY,                                     16#88EA).
  -define(GL_SAMPLES_PASSED,                                   16#8914).
  -define(GL_SRC1_ALPHA,                                       16#8589).
-endif.

-ifndef(GL_VERSION_2_0).
  -define(GL_VERSION_2_0,                                      1).

  -define(GL_BLEND_EQUATION_RGB,                               16#8009).
  -define(GL_VERTEX_ATTRIB_ARRAY_ENABLED,                      16#8622).
  -define(GL_VERTEX_ATTRIB_ARRAY_SIZE,                         16#8623).
  -define(GL_VERTEX_ATTRIB_ARRAY_STRIDE,                       16#8624).
  -define(GL_VERTEX_ATTRIB_ARRAY_TYPE,                         16#8625).
  -define(GL_CURRENT_VERTEX_ATTRIB,                            16#8626).
  -define(GL_VERTEX_PROGRAM_POINT_SIZE,                        16#8642).
  -define(GL_VERTEX_ATTRIB_ARRAY_POINTER,                      16#8645).
  -define(GL_STENCIL_BACK_FUNC,                                16#8800).
  -define(GL_STENCIL_BACK_FAIL,                                16#8801).
  -define(GL_STENCIL_BACK_PASS_DEPTH_FAIL,                     16#8802).
  -define(GL_STENCIL_BACK_PASS_DEPTH_PASS,                     16#8803).
  -define(GL_MAX_DRAW_BUFFERS,                                 16#8824).
  -define(GL_DRAW_BUFFER0,                                     16#8825).
  -define(GL_DRAW_BUFFER1,                                     16#8826).
  -define(GL_DRAW_BUFFER2,                                     16#8827).
  -define(GL_DRAW_BUFFER3,                                     16#8828).
  -define(GL_DRAW_BUFFER4,                                     16#8829).
  -define(GL_DRAW_BUFFER5,                                     16#882A).
  -define(GL_DRAW_BUFFER6,                                     16#882B).
  -define(GL_DRAW_BUFFER7,                                     16#882C).
  -define(GL_DRAW_BUFFER8,                                     16#882D).
  -define(GL_DRAW_BUFFER9,                                     16#882E).
  -define(GL_DRAW_BUFFER10,                                    16#882F).
  -define(GL_DRAW_BUFFER11,                                    16#8830).
  -define(GL_DRAW_BUFFER12,                                    16#8831).
  -define(GL_DRAW_BUFFER13,                                    16#8832).
  -define(GL_DRAW_BUFFER14,                                    16#8833).
  -define(GL_DRAW_BUFFER15,                                    16#8834).
  -define(GL_BLEND_EQUATION_ALPHA,                             16#883D).
  -define(GL_MAX_VERTEX_ATTRIBS,                               16#8869).
  -define(GL_VERTEX_ATTRIB_ARRAY_NORMALIZED,                   16#886A).
  -define(GL_MAX_TEXTURE_IMAGE_UNITS,                          16#8872).
  -define(GL_FRAGMENT_SHADER,                                  16#8B30).
  -define(GL_VERTEX_SHADER,                                    16#8B31).
  -define(GL_MAX_FRAGMENT_UNIFORM_COMPONENTS,                  16#8B49).
  -define(GL_MAX_VERTEX_UNIFORM_COMPONENTS,                    16#8B4A).
  -define(GL_MAX_VARYING_FLOATS,                               16#8B4B).
  -define(GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS,                   16#8B4C).
  -define(GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS,                 16#8B4D).
  -define(GL_SHADER_TYPE,                                      16#8B4F).
  -define(GL_FLOAT_VEC2,                                       16#8B50).
  -define(GL_FLOAT_VEC3,                                       16#8B51).
  -define(GL_FLOAT_VEC4,                                       16#8B52).
  -define(GL_INT_VEC2,                                         16#8B53).
  -define(GL_INT_VEC3,                                         16#8B54).
  -define(GL_INT_VEC4,                                         16#8B55).
  -define(GL_BOOL,                                             16#8B56).
  -define(GL_BOOL_VEC2,                                        16#8B57).
  -define(GL_BOOL_VEC3,                                        16#8B58).
  -define(GL_BOOL_VEC4,                                        16#8B59).
  -define(GL_FLOAT_MAT2,                                       16#8B5A).
  -define(GL_FLOAT_MAT3,                                       16#8B5B).
  -define(GL_FLOAT_MAT4,                                       16#8B5C).
  -define(GL_SAMPLER_1D,                                       16#8B5D).
  -define(GL_SAMPLER_2D,                                       16#8B5E).
  -define(GL_SAMPLER_3D,                                       16#8B5F).
  -define(GL_SAMPLER_CUBE,                                     16#8B60).
  -define(GL_SAMPLER_1D_SHADOW,                                16#8B61).
  -define(GL_SAMPLER_2D_SHADOW,                                16#8B62).
  -define(GL_DELETE_STATUS,                                    16#8B80).
  -define(GL_COMPILE_STATUS,                                   16#8B81).
  -define(GL_LINK_STATUS,                                      16#8B82).
  -define(GL_VALIDATE_STATUS,                                  16#8B83).
  -define(GL_INFO_LOG_LENGTH,                                  16#8B84).
  -define(GL_ATTACHED_SHADERS,                                 16#8B85).
  -define(GL_ACTIVE_UNIFORMS,                                  16#8B86).
  -define(GL_ACTIVE_UNIFORM_MAX_LENGTH,                        16#8B87).
  -define(GL_SHADER_SOURCE_LENGTH,                             16#8B88).
  -define(GL_ACTIVE_ATTRIBUTES,                                16#8B89).
  -define(GL_ACTIVE_ATTRIBUTE_MAX_LENGTH,                      16#8B8A).
  -define(GL_FRAGMENT_SHADER_DERIVATIVE_HINT,                  16#8B8B).
  -define(GL_SHADING_LANGUAGE_VERSION,                         16#8B8C).
  -define(GL_CURRENT_PROGRAM,                                  16#8B8D).
  -define(GL_POINT_SPRITE_COORD_ORIGIN,                        16#8CA0).
  -define(GL_LOWER_LEFT,                                       16#8CA1).
  -define(GL_UPPER_LEFT,                                       16#8CA2).
  -define(GL_STENCIL_BACK_REF,                                 16#8CA3).
  -define(GL_STENCIL_BACK_VALUE_MASK,                          16#8CA4).
  -define(GL_STENCIL_BACK_WRITEMASK,                           16#8CA5).
-endif.

-ifndef(GL_VERSION_2_1).
  -define(GL_VERSION_2_1,                                      1).

  -define(GL_PIXEL_PACK_BUFFER,                                16#88EB).
  -define(GL_PIXEL_UNPACK_BUFFER,                              16#88EC).
  -define(GL_PIXEL_PACK_BUFFER_BINDING,                        16#88ED).
  -define(GL_PIXEL_UNPACK_BUFFER_BINDING,                      16#88EF).
  -define(GL_FLOAT_MAT2x3,                                     16#8B65).
  -define(GL_FLOAT_MAT2x4,                                     16#8B66).
  -define(GL_FLOAT_MAT3x2,                                     16#8B67).
  -define(GL_FLOAT_MAT3x4,                                     16#8B68).
  -define(GL_FLOAT_MAT4x2,                                     16#8B69).
  -define(GL_FLOAT_MAT4x3,                                     16#8B6A).
  -define(GL_SRGB,                                             16#8C40).
  -define(GL_SRGB8,                                            16#8C41).
  -define(GL_SRGB_ALPHA,                                       16#8C42).
  -define(GL_SRGB8_ALPHA8,                                     16#8C43).
  -define(GL_COMPRESSED_SRGB,                                  16#8C48).
  -define(GL_COMPRESSED_SRGB_ALPHA,                            16#8C49).
-endif.

-ifndef(GL_VERSION_3_0).
  -define(GL_VERSION_3_0,                                      1).

  -define(GL_COMPARE_REF_TO_TEXTURE,                           16#884E).
  -define(GL_CLIP_DISTANCE0,                                   16#3000).
  -define(GL_CLIP_DISTANCE1,                                   16#3001).
  -define(GL_CLIP_DISTANCE2,                                   16#3002).
  -define(GL_CLIP_DISTANCE3,                                   16#3003).
  -define(GL_CLIP_DISTANCE4,                                   16#3004).
  -define(GL_CLIP_DISTANCE5,                                   16#3005).
  -define(GL_CLIP_DISTANCE6,                                   16#3006).
  -define(GL_CLIP_DISTANCE7,                                   16#3007).
  -define(GL_MAX_CLIP_DISTANCES,                               16#0D32).
  -define(GL_MAJOR_VERSION,                                    16#821B).
  -define(GL_MINOR_VERSION,                                    16#821C).
  -define(GL_NUM_EXTENSIONS,                                   16#821D).
  -define(GL_CONTEXT_FLAGS,                                    16#821E).
% -define(GL_DEPTH_BUFFER,                                     16#8223).
% -define(GL_STENCIL_BUFFER,                                   16#8224).
  -define(GL_COMPRESSED_RED,                                   16#8225).
  -define(GL_COMPRESSED_RG,                                    16#8226).
  -define(GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT,              16#0001).
  -define(GL_RGBA32F,                                          16#8814).
  -define(GL_RGB32F,                                           16#8815).
  -define(GL_RGBA16F,                                          16#881A).
  -define(GL_RGB16F,                                           16#881B).
  -define(GL_VERTEX_ATTRIB_ARRAY_INTEGER,                      16#88FD).
  -define(GL_MAX_ARRAY_TEXTURE_LAYERS,                         16#88FF).
  -define(GL_MIN_PROGRAM_TEXEL_OFFSET,                         16#8904).
  -define(GL_MAX_PROGRAM_TEXEL_OFFSET,                         16#8905).
  -define(GL_CLAMP_READ_COLOR,                                 16#891C).
  -define(GL_FIXED_ONLY,                                       16#891D).
  -define(GL_MAX_VARYING_COMPONENTS,                           16#8B4B).
  -define(GL_TEXTURE_1D_ARRAY,                                 16#8C18).
  -define(GL_PROXY_TEXTURE_1D_ARRAY,                           16#8C19).
  -define(GL_TEXTURE_2D_ARRAY,                                 16#8C1A).
  -define(GL_PROXY_TEXTURE_2D_ARRAY,                           16#8C1B).
  -define(GL_TEXTURE_BINDING_1D_ARRAY,                         16#8C1C).
  -define(GL_TEXTURE_BINDING_2D_ARRAY,                         16#8C1D).
  -define(GL_R11F_G11F_B10F,                                   16#8C3A).
  -define(GL_UNSIGNED_INT_10F_11F_11F_REV,                     16#8C3B).
  -define(GL_RGB9_E5,                                          16#8C3D).
  -define(GL_UNSIGNED_INT_5_9_9_9_REV,                         16#8C3E).
  -define(GL_TEXTURE_SHARED_SIZE,                              16#8C3F).
  -define(GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH,            16#8C76).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_MODE,                   16#8C7F).
  -define(GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS,       16#8C80).
  -define(GL_TRANSFORM_FEEDBACK_VARYINGS,                      16#8C83).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_START,                  16#8C84).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_SIZE,                   16#8C85).
  -define(GL_PRIMITIVES_GENERATED,                             16#8C87).
  -define(GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN,            16#8C88).
  -define(GL_RASTERIZER_DISCARD,                               16#8C89).
  -define(GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS,    16#8C8A).
  -define(GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS,          16#8C8B).
  -define(GL_INTERLEAVED_ATTRIBS,                              16#8C8C).
  -define(GL_SEPARATE_ATTRIBS,                                 16#8C8D).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER,                        16#8C8E).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_BINDING,                16#8C8F).
  -define(GL_RGBA32UI,                                         16#8D70).
  -define(GL_RGB32UI,                                          16#8D71).
  -define(GL_RGBA16UI,                                         16#8D76).
  -define(GL_RGB16UI,                                          16#8D77).
  -define(GL_RGBA8UI,                                          16#8D7C).
  -define(GL_RGB8UI,                                           16#8D7D).
  -define(GL_RGBA32I,                                          16#8D82).
  -define(GL_RGB32I,                                           16#8D83).
  -define(GL_RGBA16I,                                          16#8D88).
  -define(GL_RGB16I,                                           16#8D89).
  -define(GL_RGBA8I,                                           16#8D8E).
  -define(GL_RGB8I,                                            16#8D8F).
  -define(GL_RED_INTEGER,                                      16#8D94).
  -define(GL_GREEN_INTEGER,                                    16#8D95).
  -define(GL_BLUE_INTEGER,                                     16#8D96).
  -define(GL_RGB_INTEGER,                                      16#8D98).
  -define(GL_RGBA_INTEGER,                                     16#8D99).
  -define(GL_BGR_INTEGER,                                      16#8D9A).
  -define(GL_BGRA_INTEGER,                                     16#8D9B).
  -define(GL_SAMPLER_1D_ARRAY,                                 16#8DC0).
  -define(GL_SAMPLER_2D_ARRAY,                                 16#8DC1).
  -define(GL_SAMPLER_1D_ARRAY_SHADOW,                          16#8DC3).
  -define(GL_SAMPLER_2D_ARRAY_SHADOW,                          16#8DC4).
  -define(GL_SAMPLER_CUBE_SHADOW,                              16#8DC5).
  -define(GL_UNSIGNED_INT_VEC2,                                16#8DC6).
  -define(GL_UNSIGNED_INT_VEC3,                                16#8DC7).
  -define(GL_UNSIGNED_INT_VEC4,                                16#8DC8).
  -define(GL_INT_SAMPLER_1D,                                   16#8DC9).
  -define(GL_INT_SAMPLER_2D,                                   16#8DCA).
  -define(GL_INT_SAMPLER_3D,                                   16#8DCB).
  -define(GL_INT_SAMPLER_CUBE,                                 16#8DCC).
  -define(GL_INT_SAMPLER_1D_ARRAY,                             16#8DCE).
  -define(GL_INT_SAMPLER_2D_ARRAY,                             16#8DCF).
  -define(GL_UNSIGNED_INT_SAMPLER_1D,                          16#8DD1).
  -define(GL_UNSIGNED_INT_SAMPLER_2D,                          16#8DD2).
  -define(GL_UNSIGNED_INT_SAMPLER_3D,                          16#8DD3).
  -define(GL_UNSIGNED_INT_SAMPLER_CUBE,                        16#8DD4).
  -define(GL_UNSIGNED_INT_SAMPLER_1D_ARRAY,                    16#8DD6).
  -define(GL_UNSIGNED_INT_SAMPLER_2D_ARRAY,                    16#8DD7).
  -define(GL_QUERY_WAIT,                                       16#8E13).
  -define(GL_QUERY_NO_WAIT,                                    16#8E14).
  -define(GL_QUERY_BY_REGION_WAIT,                             16#8E15).
  -define(GL_QUERY_BY_REGION_NO_WAIT,                          16#8E16).
  -define(GL_BUFFER_ACCESS_FLAGS,                              16#911F).
  -define(GL_BUFFER_MAP_LENGTH,                                16#9120).
  -define(GL_BUFFER_MAP_OFFSET,                                16#9121).
  %% Reuse tokens from ARB_depth_buffer_float
  %% reuse GL_DEPTH_COMPONENT32F
  %% reuse GL_DEPTH32F_STENCIL8
  %% reuse GL_FLOAT_32_UNSIGNED_INT_24_8_REV
  %% Reuse tokens from ARB_framebuffer_object
  %% reuse GL_INVALID_FRAMEBUFFER_OPERATION
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
  %% reuse GL_FRAMEBUFFER_DEFAULT
  %% reuse GL_FRAMEBUFFER_UNDEFINED
  %% reuse GL_DEPTH_STENCIL_ATTACHMENT
  %% reuse GL_INDEX
  %% reuse GL_MAX_RENDERBUFFER_SIZE
  %% reuse GL_DEPTH_STENCIL
  %% reuse GL_UNSIGNED_INT_24_8
  %% reuse GL_DEPTH24_STENCIL8
  %% reuse GL_TEXTURE_STENCIL_SIZE
  %% reuse GL_TEXTURE_RED_TYPE
  %% reuse GL_TEXTURE_GREEN_TYPE
  %% reuse GL_TEXTURE_BLUE_TYPE
  %% reuse GL_TEXTURE_ALPHA_TYPE
  %% reuse GL_TEXTURE_DEPTH_TYPE
  %% reuse GL_UNSIGNED_NORMALIZED
  %% reuse GL_FRAMEBUFFER_BINDING
  %% reuse GL_DRAW_FRAMEBUFFER_BINDING
  %% reuse GL_RENDERBUFFER_BINDING
  %% reuse GL_READ_FRAMEBUFFER
  %% reuse GL_DRAW_FRAMEBUFFER
  %% reuse GL_READ_FRAMEBUFFER_BINDING
  %% reuse GL_RENDERBUFFER_SAMPLES
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
  %% reuse GL_FRAMEBUFFER_COMPLETE
  %% reuse GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
  %% reuse GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
  %% reuse GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
  %% reuse GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
  %% reuse GL_FRAMEBUFFER_UNSUPPORTED
  %% reuse GL_MAX_COLOR_ATTACHMENTS
  %% reuse GL_COLOR_ATTACHMENT0
  %% reuse GL_COLOR_ATTACHMENT1
  %% reuse GL_COLOR_ATTACHMENT2
  %% reuse GL_COLOR_ATTACHMENT3
  %% reuse GL_COLOR_ATTACHMENT4
  %% reuse GL_COLOR_ATTACHMENT5
  %% reuse GL_COLOR_ATTACHMENT6
  %% reuse GL_COLOR_ATTACHMENT7
  %% reuse GL_COLOR_ATTACHMENT8
  %% reuse GL_COLOR_ATTACHMENT9
  %% reuse GL_COLOR_ATTACHMENT10
  %% reuse GL_COLOR_ATTACHMENT11
  %% reuse GL_COLOR_ATTACHMENT12
  %% reuse GL_COLOR_ATTACHMENT13
  %% reuse GL_COLOR_ATTACHMENT14
  %% reuse GL_COLOR_ATTACHMENT15
  %% reuse GL_DEPTH_ATTACHMENT
  %% reuse GL_STENCIL_ATTACHMENT
  %% reuse GL_FRAMEBUFFER
  %% reuse GL_RENDERBUFFER
  %% reuse GL_RENDERBUFFER_WIDTH
  %% reuse GL_RENDERBUFFER_HEIGHT
  %% reuse GL_RENDERBUFFER_INTERNAL_FORMAT
  %% reuse GL_STENCIL_INDEX1
  %% reuse GL_STENCIL_INDEX4
  %% reuse GL_STENCIL_INDEX8
  %% reuse GL_STENCIL_INDEX16
  %% reuse GL_RENDERBUFFER_RED_SIZE
  %% reuse GL_RENDERBUFFER_GREEN_SIZE
  %% reuse GL_RENDERBUFFER_BLUE_SIZE
  %% reuse GL_RENDERBUFFER_ALPHA_SIZE
  %% reuse GL_RENDERBUFFER_DEPTH_SIZE
  %% reuse GL_RENDERBUFFER_STENCIL_SIZE
  %% reuse GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
  %% reuse GL_MAX_SAMPLES
  %% Reuse tokens from ARB_framebuffer_sRGB
  %% reuse GL_FRAMEBUFFER_SRGB
  %% Reuse tokens from ARB_half_float_vertex
  %% reuse GL_HALF_FLOAT
  %% Reuse tokens from ARB_map_buffer_range
  %% reuse GL_MAP_READ_BIT
  %% reuse GL_MAP_WRITE_BIT
  %% reuse GL_MAP_INVALIDATE_RANGE_BIT
  %% reuse GL_MAP_INVALIDATE_BUFFER_BIT
  %% reuse GL_MAP_FLUSH_EXPLICIT_BIT
  %% reuse GL_MAP_UNSYNCHRONIZED_BIT
  %% Reuse tokens from ARB_texture_compression_rgtc
  %% reuse GL_COMPRESSED_RED_RGTC1
  %% reuse GL_COMPRESSED_SIGNED_RED_RGTC1
  %% reuse GL_COMPRESSED_RG_RGTC2
  %% reuse GL_COMPRESSED_SIGNED_RG_RGTC2
  %% Reuse tokens from ARB_texture_rg
  %% reuse GL_RG
  %% reuse GL_RG_INTEGER
  %% reuse GL_R8
  %% reuse GL_R16
  %% reuse GL_RG8
  %% reuse GL_RG16
  %% reuse GL_R16F
  %% reuse GL_R32F
  %% reuse GL_RG16F
  %% reuse GL_RG32F
  %% reuse GL_R8I
  %% reuse GL_R8UI
  %% reuse GL_R16I
  %% reuse GL_R16UI
  %% reuse GL_R32I
  %% reuse GL_R32UI
  %% reuse GL_RG8I
  %% reuse GL_RG8UI
  %% reuse GL_RG16I
  %% reuse GL_RG16UI
  %% reuse GL_RG32I
  %% reuse GL_RG32UI
  %% Reuse tokens from ARB_vertex_array_object
  %% reuse GL_VERTEX_ARRAY_BINDING
-endif.

-ifndef(GL_VERSION_3_1).
  -define(GL_VERSION_3_1,                                      1).

  -define(GL_SAMPLER_2D_RECT,                                  16#8B63).
  -define(GL_SAMPLER_2D_RECT_SHADOW,                           16#8B64).
  -define(GL_SAMPLER_BUFFER,                                   16#8DC2).
  -define(GL_INT_SAMPLER_2D_RECT,                              16#8DCD).
  -define(GL_INT_SAMPLER_BUFFER,                               16#8DD0).
  -define(GL_UNSIGNED_INT_SAMPLER_2D_RECT,                     16#8DD5).
  -define(GL_UNSIGNED_INT_SAMPLER_BUFFER,                      16#8DD8).
  -define(GL_TEXTURE_BUFFER,                                   16#8C2A).
  -define(GL_MAX_TEXTURE_BUFFER_SIZE,                          16#8C2B).
  -define(GL_TEXTURE_BINDING_BUFFER,                           16#8C2C).
  -define(GL_TEXTURE_BUFFER_DATA_STORE_BINDING,                16#8C2D).
  -define(GL_TEXTURE_RECTANGLE,                                16#84F5).
  -define(GL_TEXTURE_BINDING_RECTANGLE,                        16#84F6).
  -define(GL_PROXY_TEXTURE_RECTANGLE,                          16#84F7).
  -define(GL_MAX_RECTANGLE_TEXTURE_SIZE,                       16#84F8).
  -define(GL_RED_SNORM,                                        16#8F90).
  -define(GL_RG_SNORM,                                         16#8F91).
  -define(GL_RGB_SNORM,                                        16#8F92).
  -define(GL_RGBA_SNORM,                                       16#8F93).
  -define(GL_R8_SNORM,                                         16#8F94).
  -define(GL_RG8_SNORM,                                        16#8F95).
  -define(GL_RGB8_SNORM,                                       16#8F96).
  -define(GL_RGBA8_SNORM,                                      16#8F97).
  -define(GL_R16_SNORM,                                        16#8F98).
  -define(GL_RG16_SNORM,                                       16#8F99).
  -define(GL_RGB16_SNORM,                                      16#8F9A).
  -define(GL_RGBA16_SNORM,                                     16#8F9B).
  -define(GL_SIGNED_NORMALIZED,                                16#8F9C).
  -define(GL_PRIMITIVE_RESTART,                                16#8F9D).
  -define(GL_PRIMITIVE_RESTART_INDEX,                          16#8F9E).
  %% Reuse tokens from ARB_copy_buffer
  %% reuse GL_COPY_READ_BUFFER
  %% reuse GL_COPY_WRITE_BUFFER
  %% Reuse tokens from ARB_draw_instanced (none)
  %% Reuse tokens from ARB_uniform_buffer_object
  %% reuse GL_UNIFORM_BUFFER
  %% reuse GL_UNIFORM_BUFFER_BINDING
  %% reuse GL_UNIFORM_BUFFER_START
  %% reuse GL_UNIFORM_BUFFER_SIZE
  %% reuse GL_MAX_VERTEX_UNIFORM_BLOCKS
  %% reuse GL_MAX_FRAGMENT_UNIFORM_BLOCKS
  %% reuse GL_MAX_COMBINED_UNIFORM_BLOCKS
  %% reuse GL_MAX_UNIFORM_BUFFER_BINDINGS
  %% reuse GL_MAX_UNIFORM_BLOCK_SIZE
  %% reuse GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
  %% reuse GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
  %% reuse GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
  %% reuse GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
  %% reuse GL_ACTIVE_UNIFORM_BLOCKS
  %% reuse GL_UNIFORM_TYPE
  %% reuse GL_UNIFORM_SIZE
  %% reuse GL_UNIFORM_NAME_LENGTH
  %% reuse GL_UNIFORM_BLOCK_INDEX
  %% reuse GL_UNIFORM_OFFSET
  %% reuse GL_UNIFORM_ARRAY_STRIDE
  %% reuse GL_UNIFORM_MATRIX_STRIDE
  %% reuse GL_UNIFORM_IS_ROW_MAJOR
  %% reuse GL_UNIFORM_BLOCK_BINDING
  %% reuse GL_UNIFORM_BLOCK_DATA_SIZE
  %% reuse GL_UNIFORM_BLOCK_NAME_LENGTH
  %% reuse GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
  %% reuse GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
  %% reuse GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
  %% reuse GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
  %% reuse GL_INVALID_INDEX
-endif.

-ifndef(GL_VERSION_3_2).
  -define(GL_VERSION_3_2,                                      1).

  -define(GL_CONTEXT_CORE_PROFILE_BIT,                         16#00000001).
  -define(GL_CONTEXT_COMPATIBILITY_PROFILE_BIT,                16#00000002).
  -define(GL_LINES_ADJACENCY,                                  16#000A).
  -define(GL_LINE_STRIP_ADJACENCY,                             16#000B).
  -define(GL_TRIANGLES_ADJACENCY,                              16#000C).
  -define(GL_TRIANGLE_STRIP_ADJACENCY,                         16#000D).
  -define(GL_PROGRAM_POINT_SIZE,                               16#8642).
  -define(GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS,                 16#8C29).
  -define(GL_FRAMEBUFFER_ATTACHMENT_LAYERED,                   16#8DA7).
  -define(GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS,             16#8DA8).
  -define(GL_GEOMETRY_SHADER,                                  16#8DD9).
  -define(GL_GEOMETRY_VERTICES_OUT,                            16#8916).
  -define(GL_GEOMETRY_INPUT_TYPE,                              16#8917).
  -define(GL_GEOMETRY_OUTPUT_TYPE,                             16#8918).
  -define(GL_MAX_GEOMETRY_UNIFORM_COMPONENTS,                  16#8DDF).
  -define(GL_MAX_GEOMETRY_OUTPUT_VERTICES,                     16#8DE0).
  -define(GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS,             16#8DE1).
  -define(GL_MAX_VERTEX_OUTPUT_COMPONENTS,                     16#9122).
  -define(GL_MAX_GEOMETRY_INPUT_COMPONENTS,                    16#9123).
  -define(GL_MAX_GEOMETRY_OUTPUT_COMPONENTS,                   16#9124).
  -define(GL_MAX_FRAGMENT_INPUT_COMPONENTS,                    16#9125).
  -define(GL_CONTEXT_PROFILE_MASK,                             16#9126).
  %% reuse GL_MAX_VARYING_COMPONENTS
  %% reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
  %% Reuse tokens from ARB_depth_clamp
  %% reuse GL_DEPTH_CLAMP
  %% Reuse tokens from ARB_draw_elements_base_vertex (none)
  %% Reuse tokens from ARB_fragment_coord_conventions (none)
  %% Reuse tokens from ARB_provoking_vertex
  %% reuse GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
  %% reuse GL_FIRST_VERTEX_CONVENTION
  %% reuse GL_LAST_VERTEX_CONVENTION
  %% reuse GL_PROVOKING_VERTEX
  %% Reuse tokens from ARB_seamless_cube_map
  %% reuse GL_TEXTURE_CUBE_MAP_SEAMLESS
  %% Reuse tokens from ARB_sync
  %% reuse GL_MAX_SERVER_WAIT_TIMEOUT
  %% reuse GL_OBJECT_TYPE
  %% reuse GL_SYNC_CONDITION
  %% reuse GL_SYNC_STATUS
  %% reuse GL_SYNC_FLAGS
  %% reuse GL_SYNC_FENCE
  %% reuse GL_SYNC_GPU_COMMANDS_COMPLETE
  %% reuse GL_UNSIGNALED
  %% reuse GL_SIGNALED
  %% reuse GL_ALREADY_SIGNALED
  %% reuse GL_TIMEOUT_EXPIRED
  %% reuse GL_CONDITION_SATISFIED
  %% reuse GL_WAIT_FAILED
  %% reuse GL_TIMEOUT_IGNORED
  %% reuse GL_SYNC_FLUSH_COMMANDS_BIT
  %% reuse GL_TIMEOUT_IGNORED
  %% Reuse tokens from ARB_texture_multisample
  %% reuse GL_SAMPLE_POSITION
  %% reuse GL_SAMPLE_MASK
  %% reuse GL_SAMPLE_MASK_VALUE
  %% reuse GL_MAX_SAMPLE_MASK_WORDS
  %% reuse GL_TEXTURE_2D_MULTISAMPLE
  %% reuse GL_PROXY_TEXTURE_2D_MULTISAMPLE
  %% reuse GL_TEXTURE_2D_MULTISAMPLE_ARRAY
  %% reuse GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
  %% reuse GL_TEXTURE_BINDING_2D_MULTISAMPLE
  %% reuse GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
  %% reuse GL_TEXTURE_SAMPLES
  %% reuse GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
  %% reuse GL_SAMPLER_2D_MULTISAMPLE
  %% reuse GL_INT_SAMPLER_2D_MULTISAMPLE
  %% reuse GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
  %% reuse GL_SAMPLER_2D_MULTISAMPLE_ARRAY
  %% reuse GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
  %% reuse GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
  %% reuse GL_MAX_COLOR_TEXTURE_SAMPLES
  %% reuse GL_MAX_DEPTH_TEXTURE_SAMPLES
  %% reuse GL_MAX_INTEGER_SAMPLES
  %% Don't need to reuse tokens from ARB_vertex_array_bgra since they're already in 1.2 core
-endif.

-ifndef(GL_VERSION_3_3).
  -define(GL_VERSION_3_3,                                      1).

  -define(GL_VERTEX_ATTRIB_ARRAY_DIVISOR,                      16#88FE).
  %% Reuse tokens from ARB_blend_func_extended
  %% reuse GL_SRC1_COLOR
  %% reuse GL_ONE_MINUS_SRC1_COLOR
  %% reuse GL_ONE_MINUS_SRC1_ALPHA
  %% reuse GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
  %% Reuse tokens from ARB_explicit_attrib_location (none)
  %% Reuse tokens from ARB_occlusion_query2
  %% reuse GL_ANY_SAMPLES_PASSED
  %% Reuse tokens from ARB_sampler_objects
  %% reuse GL_SAMPLER_BINDING
  %% Reuse tokens from ARB_shader_bit_encoding (none)
  %% Reuse tokens from ARB_texture_rgb10_a2ui
  %% reuse GL_RGB10_A2UI
  %% Reuse tokens from ARB_texture_swizzle
  %% reuse GL_TEXTURE_SWIZZLE_R
  %% reuse GL_TEXTURE_SWIZZLE_G
  %% reuse GL_TEXTURE_SWIZZLE_B
  %% reuse GL_TEXTURE_SWIZZLE_A
  %% reuse GL_TEXTURE_SWIZZLE_RGBA
  %% Reuse tokens from ARB_timer_query
  %% reuse GL_TIME_ELAPSED
  %% reuse GL_TIMESTAMP
  %% Reuse tokens from ARB_vertex_type_2_10_10_10_rev
  %% reuse GL_INT_2_10_10_10_REV
-endif.

-ifndef(GL_VERSION_4_0).
  -define(GL_VERSION_4_0,                                      1).

  -define(GL_SAMPLE_SHADING,                                   16#8C36).
  -define(GL_MIN_SAMPLE_SHADING_VALUE,                         16#8C37).
  -define(GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET,                16#8E5E).
  -define(GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET,                16#8E5F).
  -define(GL_TEXTURE_CUBE_MAP_ARRAY,                           16#9009).
  -define(GL_TEXTURE_BINDING_CUBE_MAP_ARRAY,                   16#900A).
  -define(GL_PROXY_TEXTURE_CUBE_MAP_ARRAY,                     16#900B).
  -define(GL_SAMPLER_CUBE_MAP_ARRAY,                           16#900C).
  -define(GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW,                    16#900D).
  -define(GL_INT_SAMPLER_CUBE_MAP_ARRAY,                       16#900E).
  -define(GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY,              16#900F).
  %% Reuse tokens from ARB_texture_query_lod (none)
  %% Reuse tokens from ARB_draw_buffers_blend (none)
  %% Reuse tokens from ARB_draw_indirect
  %% reuse GL_DRAW_INDIRECT_BUFFER
  %% reuse GL_DRAW_INDIRECT_BUFFER_BINDING
  %% Reuse tokens from ARB_gpu_shader5
  %% reuse GL_GEOMETRY_SHADER_INVOCATIONS
  %% reuse GL_MAX_GEOMETRY_SHADER_INVOCATIONS
  %% reuse GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
  %% reuse GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
  %% reuse GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
  %% reuse GL_MAX_VERTEX_STREAMS
  %% Reuse tokens from ARB_gpu_shader_fp64
  %% reuse GL_DOUBLE_VEC2
  %% reuse GL_DOUBLE_VEC3
  %% reuse GL_DOUBLE_VEC4
  %% reuse GL_DOUBLE_MAT2
  %% reuse GL_DOUBLE_MAT3
  %% reuse GL_DOUBLE_MAT4
  %% reuse GL_DOUBLE_MAT2x3
  %% reuse GL_DOUBLE_MAT2x4
  %% reuse GL_DOUBLE_MAT3x2
  %% reuse GL_DOUBLE_MAT3x4
  %% reuse GL_DOUBLE_MAT4x2
  %% reuse GL_DOUBLE_MAT4x3
  %% Reuse tokens from ARB_shader_subroutine
  %% reuse GL_ACTIVE_SUBROUTINES
  %% reuse GL_ACTIVE_SUBROUTINE_UNIFORMS
  %% reuse GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
  %% reuse GL_ACTIVE_SUBROUTINE_MAX_LENGTH
  %% reuse GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
  %% reuse GL_MAX_SUBROUTINES
  %% reuse GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
  %% reuse GL_NUM_COMPATIBLE_SUBROUTINES
  %% reuse GL_COMPATIBLE_SUBROUTINES
  %% Reuse tokens from ARB_tessellation_shader
  %% reuse GL_PATCHES
  %% reuse GL_PATCH_VERTICES
  %% reuse GL_PATCH_DEFAULT_INNER_LEVEL
  %% reuse GL_PATCH_DEFAULT_OUTER_LEVEL
  %% reuse GL_TESS_CONTROL_OUTPUT_VERTICES
  %% reuse GL_TESS_GEN_MODE
  %% reuse GL_TESS_GEN_SPACING
  %% reuse GL_TESS_GEN_VERTEX_ORDER
  %% reuse GL_TESS_GEN_POINT_MODE
  %% reuse GL_ISOLINES
  %% reuse GL_FRACTIONAL_ODD
  %% reuse GL_FRACTIONAL_EVEN
  %% reuse GL_MAX_PATCH_VERTICES
  %% reuse GL_MAX_TESS_GEN_LEVEL
  %% reuse GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
  %% reuse GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
  %% reuse GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
  %% reuse GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
  %% reuse GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
  %% reuse GL_MAX_TESS_PATCH_COMPONENTS
  %% reuse GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
  %% reuse GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
  %% reuse GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
  %% reuse GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
  %% reuse GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
  %% reuse GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
  %% reuse GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
  %% reuse GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
  %% reuse GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
  %% reuse GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
  %% reuse GL_TESS_EVALUATION_SHADER
  %% reuse GL_TESS_CONTROL_SHADER
  %% Reuse tokens from ARB_texture_buffer_object_rgb32 (none)
  %% Reuse tokens from ARB_transform_feedback2
  %% reuse GL_TRANSFORM_FEEDBACK
  %% reuse GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
  %% reuse GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
  %% reuse GL_TRANSFORM_FEEDBACK_BINDING
  %% Reuse tokens from ARB_transform_feedback3
  %% reuse GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
  %% reuse GL_MAX_VERTEX_STREAMS
-endif.

-ifndef(GL_VERSION_4_1).
  -define(GL_VERSION_4_1,                                      1).

  %% Reuse tokens from ARB_ES2_compatibility
  %% reuse GL_FIXED
  %% reuse GL_IMPLEMENTATION_COLOR_READ_TYPE
  %% reuse GL_IMPLEMENTATION_COLOR_READ_FORMAT
  %% reuse GL_LOW_FLOAT
  %% reuse GL_MEDIUM_FLOAT
  %% reuse GL_HIGH_FLOAT
  %% reuse GL_LOW_INT
  %% reuse GL_MEDIUM_INT
  %% reuse GL_HIGH_INT
  %% reuse GL_SHADER_COMPILER
  %% reuse GL_SHADER_BINARY_FORMATS
  %% reuse GL_NUM_SHADER_BINARY_FORMATS
  %% reuse GL_MAX_VERTEX_UNIFORM_VECTORS
  %% reuse GL_MAX_VARYING_VECTORS
  %% reuse GL_MAX_FRAGMENT_UNIFORM_VECTORS
  %% reuse GL_RGB565
  %% Reuse tokens from ARB_get_program_binary
  %% reuse GL_PROGRAM_BINARY_RETRIEVABLE_HINT
  %% reuse GL_PROGRAM_BINARY_LENGTH
  %% reuse GL_NUM_PROGRAM_BINARY_FORMATS
  %% reuse GL_PROGRAM_BINARY_FORMATS
  %% Reuse tokens from ARB_separate_shader_objects
  %% reuse GL_VERTEX_SHADER_BIT
  %% reuse GL_FRAGMENT_SHADER_BIT
  %% reuse GL_GEOMETRY_SHADER_BIT
  %% reuse GL_TESS_CONTROL_SHADER_BIT
  %% reuse GL_TESS_EVALUATION_SHADER_BIT
  %% reuse GL_ALL_SHADER_BITS
  %% reuse GL_PROGRAM_SEPARABLE
  %% reuse GL_ACTIVE_PROGRAM
  %% reuse GL_PROGRAM_PIPELINE_BINDING
  %% Reuse tokens from ARB_shader_precision (none)
  %% Reuse tokens from ARB_vertex_attrib_64bit - all are in GL 3.0 and 4.0 already
  %% Reuse tokens from ARB_viewport_array - some are in GL 1.1 and ARB_provoking_vertex already
  %% reuse GL_MAX_VIEWPORTS
  %% reuse GL_VIEWPORT_SUBPIXEL_BITS
  %% reuse GL_VIEWPORT_BOUNDS_RANGE
  %% reuse GL_LAYER_PROVOKING_VERTEX
  %% reuse GL_VIEWPORT_INDEX_PROVOKING_VERTEX
  %% reuse GL_UNDEFINED_VERTEX
-endif.

-ifndef(GL_VERSION_4_2).
  -define(GL_VERSION_4_2,                                      1).

  %% Reuse tokens from ARB_base_instance (none)
  %% Reuse tokens from ARB_shading_language_420pack (none)
  %% Reuse tokens from ARB_transform_feedback_instanced (none)
  %% Reuse tokens from ARB_compressed_texture_pixel_storage
  %% reuse GL_UNPACK_COMPRESSED_BLOCK_WIDTH
  %% reuse GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
  %% reuse GL_UNPACK_COMPRESSED_BLOCK_DEPTH
  %% reuse GL_UNPACK_COMPRESSED_BLOCK_SIZE
  %% reuse GL_PACK_COMPRESSED_BLOCK_WIDTH
  %% reuse GL_PACK_COMPRESSED_BLOCK_HEIGHT
  %% reuse GL_PACK_COMPRESSED_BLOCK_DEPTH
  %% reuse GL_PACK_COMPRESSED_BLOCK_SIZE
  %% Reuse tokens from ARB_conservative_depth (none)
  %% Reuse tokens from ARB_internalformat_query
  %% reuse GL_NUM_SAMPLE_COUNTS
  %% Reuse tokens from ARB_map_buffer_alignment
  %% reuse GL_MIN_MAP_BUFFER_ALIGNMENT
  %% Reuse tokens from ARB_shader_atomic_counters
  %% reuse GL_ATOMIC_COUNTER_BUFFER
  %% reuse GL_ATOMIC_COUNTER_BUFFER_BINDING
  %% reuse GL_ATOMIC_COUNTER_BUFFER_START
  %% reuse GL_ATOMIC_COUNTER_BUFFER_SIZE
  %% reuse GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
  %% reuse GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
  %% reuse GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
  %% reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
  %% reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
  %% reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
  %% reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
  %% reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
  %% reuse GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
  %% reuse GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
  %% reuse GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
  %% reuse GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
  %% reuse GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
  %% reuse GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
  %% reuse GL_MAX_VERTEX_ATOMIC_COUNTERS
  %% reuse GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
  %% reuse GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
  %% reuse GL_MAX_GEOMETRY_ATOMIC_COUNTERS
  %% reuse GL_MAX_FRAGMENT_ATOMIC_COUNTERS
  %% reuse GL_MAX_COMBINED_ATOMIC_COUNTERS
  %% reuse GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
  %% reuse GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
  %% reuse GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
  %% reuse GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
  %% reuse GL_UNSIGNED_INT_ATOMIC_COUNTER
  %% Reuse tokens from ARB_shader_image_load_store
  %% reuse GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
  %% reuse GL_ELEMENT_ARRAY_BARRIER_BIT
  %% reuse GL_UNIFORM_BARRIER_BIT
  %% reuse GL_TEXTURE_FETCH_BARRIER_BIT
  %% reuse GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
  %% reuse GL_COMMAND_BARRIER_BIT
  %% reuse GL_PIXEL_BUFFER_BARRIER_BIT
  %% reuse GL_TEXTURE_UPDATE_BARRIER_BIT
  %% reuse GL_BUFFER_UPDATE_BARRIER_BIT
  %% reuse GL_FRAMEBUFFER_BARRIER_BIT
  %% reuse GL_TRANSFORM_FEEDBACK_BARRIER_BIT
  %% reuse GL_ATOMIC_COUNTER_BARRIER_BIT
  %% reuse GL_ALL_BARRIER_BITS
  %% reuse GL_MAX_IMAGE_UNITS
  %% reuse GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
  %% reuse GL_IMAGE_BINDING_NAME
  %% reuse GL_IMAGE_BINDING_LEVEL
  %% reuse GL_IMAGE_BINDING_LAYERED
  %% reuse GL_IMAGE_BINDING_LAYER
  %% reuse GL_IMAGE_BINDING_ACCESS
  %% reuse GL_IMAGE_1D
  %% reuse GL_IMAGE_2D
  %% reuse GL_IMAGE_3D
  %% reuse GL_IMAGE_2D_RECT
  %% reuse GL_IMAGE_CUBE
  %% reuse GL_IMAGE_BUFFER
  %% reuse GL_IMAGE_1D_ARRAY
  %% reuse GL_IMAGE_2D_ARRAY
  %% reuse GL_IMAGE_CUBE_MAP_ARRAY
  %% reuse GL_IMAGE_2D_MULTISAMPLE
  %% reuse GL_IMAGE_2D_MULTISAMPLE_ARRAY
  %% reuse GL_INT_IMAGE_1D
  %% reuse GL_INT_IMAGE_2D
  %% reuse GL_INT_IMAGE_3D
  %% reuse GL_INT_IMAGE_2D_RECT
  %% reuse GL_INT_IMAGE_CUBE
  %% reuse GL_INT_IMAGE_BUFFER
  %% reuse GL_INT_IMAGE_1D_ARRAY
  %% reuse GL_INT_IMAGE_2D_ARRAY
  %% reuse GL_INT_IMAGE_CUBE_MAP_ARRAY
  %% reuse GL_INT_IMAGE_2D_MULTISAMPLE
  %% reuse GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
  %% reuse GL_UNSIGNED_INT_IMAGE_1D
  %% reuse GL_UNSIGNED_INT_IMAGE_2D
  %% reuse GL_UNSIGNED_INT_IMAGE_3D
  %% reuse GL_UNSIGNED_INT_IMAGE_2D_RECT
  %% reuse GL_UNSIGNED_INT_IMAGE_CUBE
  %% reuse GL_UNSIGNED_INT_IMAGE_BUFFER
  %% reuse GL_UNSIGNED_INT_IMAGE_1D_ARRAY
  %% reuse GL_UNSIGNED_INT_IMAGE_2D_ARRAY
  %% reuse GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
  %% reuse GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
  %% reuse GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
  %% reuse GL_MAX_IMAGE_SAMPLES
  %% reuse GL_IMAGE_BINDING_FORMAT
  %% reuse GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
  %% reuse GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
  %% reuse GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
  %% reuse GL_MAX_VERTEX_IMAGE_UNIFORMS
  %% reuse GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
  %% reuse GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
  %% reuse GL_MAX_GEOMETRY_IMAGE_UNIFORMS
  %% reuse GL_MAX_FRAGMENT_IMAGE_UNIFORMS
  %% reuse GL_MAX_COMBINED_IMAGE_UNIFORMS
  %% Reuse tokens from ARB_shading_language_packing (none)
  %% Reuse tokens from ARB_texture_storage
  %% reuse GL_TEXTURE_IMMUTABLE_FORMAT
-endif.

-ifndef(GL_VERSION_4_3).
  -define(GL_VERSION_4_3,                                      1).

  -define(GL_NUM_SHADING_LANGUAGE_VERSIONS,                    16#82E9).
  -define(GL_VERTEX_ATTRIB_ARRAY_LONG,                         16#874E).
  %% Reuse tokens from ARB_arrays_of_arrays (none, GLSL only)
  %% Reuse tokens from ARB_fragment_layer_viewport (none, GLSL only)
  %% Reuse tokens from ARB_shader_image_size (none, GLSL only)
  %% Reuse tokens from ARB_ES3_compatibility
  %% reuse GL_COMPRESSED_RGB8_ETC2
  %% reuse GL_COMPRESSED_SRGB8_ETC2
  %% reuse GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2
  %% reuse GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2
  %% reuse GL_COMPRESSED_RGBA8_ETC2_EAC
  %% reuse GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC
  %% reuse GL_COMPRESSED_R11_EAC
  %% reuse GL_COMPRESSED_SIGNED_R11_EAC
  %% reuse GL_COMPRESSED_RG11_EAC
  %% reuse GL_COMPRESSED_SIGNED_RG11_EAC
  %% reuse GL_PRIMITIVE_RESTART_FIXED_INDEX
  %% reuse GL_ANY_SAMPLES_PASSED_CONSERVATIVE
  %% reuse GL_MAX_ELEMENT_INDEX
  %% Reuse tokens from ARB_clear_buffer_object (none)
  %% Reuse tokens from ARB_compute_shader
  %% reuse GL_COMPUTE_SHADER
  %% reuse GL_MAX_COMPUTE_UNIFORM_BLOCKS
  %% reuse GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS
  %% reuse GL_MAX_COMPUTE_IMAGE_UNIFORMS
  %% reuse GL_MAX_COMPUTE_SHARED_MEMORY_SIZE
  %% reuse GL_MAX_COMPUTE_UNIFORM_COMPONENTS
  %% reuse GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
  %% reuse GL_MAX_COMPUTE_ATOMIC_COUNTERS
  %% reuse GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
  %% reuse GL_MAX_COMPUTE_LOCAL_INVOCATIONS
  %% reuse GL_MAX_COMPUTE_WORK_GROUP_COUNT
  %% reuse GL_MAX_COMPUTE_WORK_GROUP_SIZE
  %% reuse GL_COMPUTE_LOCAL_WORK_SIZE
  %% reuse GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER
  %% reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER
  %% reuse GL_DISPATCH_INDIRECT_BUFFER
  %% reuse GL_DISPATCH_INDIRECT_BUFFER_BINDING
  %% Reuse tokens from ARB_copy_image (none)
  %% Reuse tokens from KHR_debug
  %% reuse GL_DEBUG_OUTPUT_SYNCHRONOUS
  %% reuse GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH
  %% reuse GL_DEBUG_CALLBACK_FUNCTION
  %% reuse GL_DEBUG_CALLBACK_USER_PARAM
  %% reuse GL_DEBUG_SOURCE_API
  %% reuse GL_DEBUG_SOURCE_WINDOW_SYSTEM
  %% reuse GL_DEBUG_SOURCE_SHADER_COMPILER
  %% reuse GL_DEBUG_SOURCE_THIRD_PARTY
  %% reuse GL_DEBUG_SOURCE_APPLICATION
  %% reuse GL_DEBUG_SOURCE_OTHER
  %% reuse GL_DEBUG_TYPE_ERROR
  %% reuse GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR
  %% reuse GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR
  %% reuse GL_DEBUG_TYPE_PORTABILITY
  %% reuse GL_DEBUG_TYPE_PERFORMANCE
  %% reuse GL_DEBUG_TYPE_OTHER
  %% reuse GL_MAX_DEBUG_MESSAGE_LENGTH
  %% reuse GL_MAX_DEBUG_LOGGED_MESSAGES
  %% reuse GL_DEBUG_LOGGED_MESSAGES
  %% reuse GL_DEBUG_SEVERITY_HIGH
  %% reuse GL_DEBUG_SEVERITY_MEDIUM
  %% reuse GL_DEBUG_SEVERITY_LOW
  %% reuse GL_DEBUG_TYPE_MARKER
  %% reuse GL_DEBUG_TYPE_PUSH_GROUP
  %% reuse GL_DEBUG_TYPE_POP_GROUP
  %% reuse GL_DEBUG_SEVERITY_NOTIFICATION
  %% reuse GL_MAX_DEBUG_GROUP_STACK_DEPTH
  %% reuse GL_DEBUG_GROUP_STACK_DEPTH
  %% reuse GL_BUFFER
  %% reuse GL_SHADER
  %% reuse GL_PROGRAM
  %% reuse GL_QUERY
  %% reuse GL_PROGRAM_PIPELINE
  %% reuse GL_SAMPLER
  %% reuse GL_DISPLAY_LIST
  %% reuse GL_MAX_LABEL_LENGTH
  %% reuse GL_DEBUG_OUTPUT
  %% reuse GL_CONTEXT_FLAG_DEBUG_BIT
  %% reuse GL_STACK_UNDERFLOW
  %% reuse GL_STACK_OVERFLOW
  %% Reuse tokens from ARB_explicit_uniform_location
  %% reuse GL_MAX_UNIFORM_LOCATIONS
  %% Reuse tokens from ARB_framebuffer_no_attachments
  %% reuse GL_FRAMEBUFFER_DEFAULT_WIDTH
  %% reuse GL_FRAMEBUFFER_DEFAULT_HEIGHT
  %% reuse GL_FRAMEBUFFER_DEFAULT_LAYERS
  %% reuse GL_FRAMEBUFFER_DEFAULT_SAMPLES
  %% reuse GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
  %% reuse GL_MAX_FRAMEBUFFER_WIDTH
  %% reuse GL_MAX_FRAMEBUFFER_HEIGHT
  %% reuse GL_MAX_FRAMEBUFFER_LAYERS
  %% reuse GL_MAX_FRAMEBUFFER_SAMPLES
  %% Reuse tokens from ARB_internalformat_query2
  %% reuse GL_INTERNALFORMAT_SUPPORTED
  %% reuse GL_INTERNALFORMAT_PREFERRED
  %% reuse GL_INTERNALFORMAT_RED_SIZE
  %% reuse GL_INTERNALFORMAT_GREEN_SIZE
  %% reuse GL_INTERNALFORMAT_BLUE_SIZE
  %% reuse GL_INTERNALFORMAT_ALPHA_SIZE
  %% reuse GL_INTERNALFORMAT_DEPTH_SIZE
  %% reuse GL_INTERNALFORMAT_STENCIL_SIZE
  %% reuse GL_INTERNALFORMAT_SHARED_SIZE
  %% reuse GL_INTERNALFORMAT_RED_TYPE
  %% reuse GL_INTERNALFORMAT_GREEN_TYPE
  %% reuse GL_INTERNALFORMAT_BLUE_TYPE
  %% reuse GL_INTERNALFORMAT_ALPHA_TYPE
  %% reuse GL_INTERNALFORMAT_DEPTH_TYPE
  %% reuse GL_INTERNALFORMAT_STENCIL_TYPE
  %% reuse GL_MAX_WIDTH
  %% reuse GL_MAX_HEIGHT
  %% reuse GL_MAX_DEPTH
  %% reuse GL_MAX_LAYERS
  %% reuse GL_MAX_COMBINED_DIMENSIONS
  %% reuse GL_COLOR_COMPONENTS
  %% reuse GL_DEPTH_COMPONENTS
  %% reuse GL_STENCIL_COMPONENTS
  %% reuse GL_COLOR_RENDERABLE
  %% reuse GL_DEPTH_RENDERABLE
  %% reuse GL_STENCIL_RENDERABLE
  %% reuse GL_FRAMEBUFFER_RENDERABLE
  %% reuse GL_FRAMEBUFFER_RENDERABLE_LAYERED
  %% reuse GL_FRAMEBUFFER_BLEND
  %% reuse GL_READ_PIXELS
  %% reuse GL_READ_PIXELS_FORMAT
  %% reuse GL_READ_PIXELS_TYPE
  %% reuse GL_TEXTURE_IMAGE_FORMAT
  %% reuse GL_TEXTURE_IMAGE_TYPE
  %% reuse GL_GET_TEXTURE_IMAGE_FORMAT
  %% reuse GL_GET_TEXTURE_IMAGE_TYPE
  %% reuse GL_MIPMAP
  %% reuse GL_MANUAL_GENERATE_MIPMAP
  %% reuse GL_AUTO_GENERATE_MIPMAP
  %% reuse GL_COLOR_ENCODING
  %% reuse GL_SRGB_READ
  %% reuse GL_SRGB_WRITE
  %% reuse GL_FILTER
  %% reuse GL_VERTEX_TEXTURE
  %% reuse GL_TESS_CONTROL_TEXTURE
  %% reuse GL_TESS_EVALUATION_TEXTURE
  %% reuse GL_GEOMETRY_TEXTURE
  %% reuse GL_FRAGMENT_TEXTURE
  %% reuse GL_COMPUTE_TEXTURE
  %% reuse GL_TEXTURE_SHADOW
  %% reuse GL_TEXTURE_GATHER
  %% reuse GL_TEXTURE_GATHER_SHADOW
  %% reuse GL_SHADER_IMAGE_LOAD
  %% reuse GL_SHADER_IMAGE_STORE
  %% reuse GL_SHADER_IMAGE_ATOMIC
  %% reuse GL_IMAGE_TEXEL_SIZE
  %% reuse GL_IMAGE_COMPATIBILITY_CLASS
  %% reuse GL_IMAGE_PIXEL_FORMAT
  %% reuse GL_IMAGE_PIXEL_TYPE
  %% reuse GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST
  %% reuse GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST
  %% reuse GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE
  %% reuse GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE
  %% reuse GL_TEXTURE_COMPRESSED_BLOCK_WIDTH
  %% reuse GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT
  %% reuse GL_TEXTURE_COMPRESSED_BLOCK_SIZE
  %% reuse GL_CLEAR_BUFFER
  %% reuse GL_TEXTURE_VIEW
  %% reuse GL_VIEW_COMPATIBILITY_CLASS
  %% reuse GL_FULL_SUPPORT
  %% reuse GL_CAVEAT_SUPPORT
  %% reuse GL_IMAGE_CLASS_4_X_32
  %% reuse GL_IMAGE_CLASS_2_X_32
  %% reuse GL_IMAGE_CLASS_1_X_32
  %% reuse GL_IMAGE_CLASS_4_X_16
  %% reuse GL_IMAGE_CLASS_2_X_16
  %% reuse GL_IMAGE_CLASS_1_X_16
  %% reuse GL_IMAGE_CLASS_4_X_8
  %% reuse GL_IMAGE_CLASS_2_X_8
  %% reuse GL_IMAGE_CLASS_1_X_8
  %% reuse GL_IMAGE_CLASS_11_11_10
  %% reuse GL_IMAGE_CLASS_10_10_10_2
  %% reuse GL_VIEW_CLASS_128_BITS
  %% reuse GL_VIEW_CLASS_96_BITS
  %% reuse GL_VIEW_CLASS_64_BITS
  %% reuse GL_VIEW_CLASS_48_BITS
  %% reuse GL_VIEW_CLASS_32_BITS
  %% reuse GL_VIEW_CLASS_24_BITS
  %% reuse GL_VIEW_CLASS_16_BITS
  %% reuse GL_VIEW_CLASS_8_BITS
  %% reuse GL_VIEW_CLASS_S3TC_DXT1_RGB
  %% reuse GL_VIEW_CLASS_S3TC_DXT1_RGBA
  %% reuse GL_VIEW_CLASS_S3TC_DXT3_RGBA
  %% reuse GL_VIEW_CLASS_S3TC_DXT5_RGBA
  %% reuse GL_VIEW_CLASS_RGTC1_RED
  %% reuse GL_VIEW_CLASS_RGTC2_RG
  %% reuse GL_VIEW_CLASS_BPTC_UNORM
  %% reuse GL_VIEW_CLASS_BPTC_FLOAT
  %% Reuse tokens from ARB_invalidate_subdata (none)
  %% Reuse tokens from ARB_multi_draw_indirect (none)
  %% Reuse tokens from ARB_program_interface_query
  %% reuse GL_UNIFORM
  %% reuse GL_UNIFORM_BLOCK
  %% reuse GL_PROGRAM_INPUT
  %% reuse GL_PROGRAM_OUTPUT
  %% reuse GL_BUFFER_VARIABLE
  %% reuse GL_SHADER_STORAGE_BLOCK
  %% reuse GL_VERTEX_SUBROUTINE
  %% reuse GL_TESS_CONTROL_SUBROUTINE
  %% reuse GL_TESS_EVALUATION_SUBROUTINE
  %% reuse GL_GEOMETRY_SUBROUTINE
  %% reuse GL_FRAGMENT_SUBROUTINE
  %% reuse GL_COMPUTE_SUBROUTINE
  %% reuse GL_VERTEX_SUBROUTINE_UNIFORM
  %% reuse GL_TESS_CONTROL_SUBROUTINE_UNIFORM
  %% reuse GL_TESS_EVALUATION_SUBROUTINE_UNIFORM
  %% reuse GL_GEOMETRY_SUBROUTINE_UNIFORM
  %% reuse GL_FRAGMENT_SUBROUTINE_UNIFORM
  %% reuse GL_COMPUTE_SUBROUTINE_UNIFORM
  %% reuse GL_TRANSFORM_FEEDBACK_VARYING
  %% reuse GL_ACTIVE_RESOURCES
  %% reuse GL_MAX_NAME_LENGTH
  %% reuse GL_MAX_NUM_ACTIVE_VARIABLES
  %% reuse GL_MAX_NUM_COMPATIBLE_SUBROUTINES
  %% reuse GL_NAME_LENGTH
  %% reuse GL_TYPE
  %% reuse GL_ARRAY_SIZE
  %% reuse GL_OFFSET
  %% reuse GL_BLOCK_INDEX
  %% reuse GL_ARRAY_STRIDE
  %% reuse GL_MATRIX_STRIDE
  %% reuse GL_IS_ROW_MAJOR
  %% reuse GL_ATOMIC_COUNTER_BUFFER_INDEX
  %% reuse GL_BUFFER_BINDING
  %% reuse GL_BUFFER_DATA_SIZE
  %% reuse GL_NUM_ACTIVE_VARIABLES
  %% reuse GL_ACTIVE_VARIABLES
  %% reuse GL_REFERENCED_BY_VERTEX_SHADER
  %% reuse GL_REFERENCED_BY_TESS_CONTROL_SHADER
  %% reuse GL_REFERENCED_BY_TESS_EVALUATION_SHADER
  %% reuse GL_REFERENCED_BY_GEOMETRY_SHADER
  %% reuse GL_REFERENCED_BY_FRAGMENT_SHADER
  %% reuse GL_REFERENCED_BY_COMPUTE_SHADER
  %% reuse GL_TOP_LEVEL_ARRAY_SIZE
  %% reuse GL_TOP_LEVEL_ARRAY_STRIDE
  %% reuse GL_LOCATION
  %% reuse GL_LOCATION_INDEX
  %% reuse GL_IS_PER_PATCH
  %% Reuse tokens from ARB_robust_buffer_access_behavior (none)
  %% Reuse tokens from ARB_shader_storage_buffer_object
  %% reuse GL_SHADER_STORAGE_BUFFER
  %% reuse GL_SHADER_STORAGE_BUFFER_BINDING
  %% reuse GL_SHADER_STORAGE_BUFFER_START
  %% reuse GL_SHADER_STORAGE_BUFFER_SIZE
  %% reuse GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS
  %% reuse GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS
  %% reuse GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS
  %% reuse GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS
  %% reuse GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS
  %% reuse GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS
  %% reuse GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS
  %% reuse GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS
  %% reuse GL_MAX_SHADER_STORAGE_BLOCK_SIZE
  %% reuse GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT
  %% reuse GL_SHADER_STORAGE_BARRIER_BIT
  %% reuse GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
  %% Reuse tokens from ARB_stencil_texturing
  %% reuse GL_DEPTH_STENCIL_TEXTURE_MODE
  %% Reuse tokens from ARB_texture_buffer_range
  %% reuse GL_TEXTURE_BUFFER_OFFSET
  %% reuse GL_TEXTURE_BUFFER_SIZE
  %% reuse GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT
  %% Reuse tokens from ARB_texture_query_levels (none)
  %% Reuse tokens from ARB_texture_storage_multisample (none)
  %% Reuse tokens from ARB_texture_view
  %% reuse GL_TEXTURE_VIEW_MIN_LEVEL
  %% reuse GL_TEXTURE_VIEW_NUM_LEVELS
  %% reuse GL_TEXTURE_VIEW_MIN_LAYER
  %% reuse GL_TEXTURE_VIEW_NUM_LAYERS
  %% reuse GL_TEXTURE_IMMUTABLE_LEVELS
  %% Reuse tokens from ARB_vertex_attrib_binding
  %% reuse GL_VERTEX_ATTRIB_BINDING
  %% reuse GL_VERTEX_ATTRIB_RELATIVE_OFFSET
  %% reuse GL_VERTEX_BINDING_DIVISOR
  %% reuse GL_VERTEX_BINDING_OFFSET
  %% reuse GL_VERTEX_BINDING_STRIDE
  %% reuse GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
  %% reuse GL_MAX_VERTEX_ATTRIB_BINDINGS
-endif.

-ifndef(GL_ARB_depth_buffer_float).
  -define(GL_ARB_depth_buffer_float,                           1).

  -define(GL_DEPTH_COMPONENT32F,                               16#8CAC).
  -define(GL_DEPTH32F_STENCIL8,                                16#8CAD).
  -define(GL_FLOAT_32_UNSIGNED_INT_24_8_REV,                   16#8DAD).
-endif.

-ifndef(GL_ARB_framebuffer_object).
  -define(GL_ARB_framebuffer_object,                           1).

  -define(GL_INVALID_FRAMEBUFFER_OPERATION,                    16#0506).
  -define(GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING,            16#8210).
  -define(GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE,            16#8211).
  -define(GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE,                  16#8212).
  -define(GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE,                16#8213).
  -define(GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE,                 16#8214).
  -define(GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE,                16#8215).
  -define(GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE,                16#8216).
  -define(GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE,              16#8217).
  -define(GL_FRAMEBUFFER_DEFAULT,                              16#8218).
  -define(GL_FRAMEBUFFER_UNDEFINED,                            16#8219).
  -define(GL_DEPTH_STENCIL_ATTACHMENT,                         16#821A).
  -define(GL_MAX_RENDERBUFFER_SIZE,                            16#84E8).
  -define(GL_DEPTH_STENCIL,                                    16#84F9).
  -define(GL_UNSIGNED_INT_24_8,                                16#84FA).
  -define(GL_DEPTH24_STENCIL8,                                 16#88F0).
  -define(GL_TEXTURE_STENCIL_SIZE,                             16#88F1).
  -define(GL_TEXTURE_RED_TYPE,                                 16#8C10).
  -define(GL_TEXTURE_GREEN_TYPE,                               16#8C11).
  -define(GL_TEXTURE_BLUE_TYPE,                                16#8C12).
  -define(GL_TEXTURE_ALPHA_TYPE,                               16#8C13).
  -define(GL_TEXTURE_DEPTH_TYPE,                               16#8C16).
  -define(GL_UNSIGNED_NORMALIZED,                              16#8C17).
  -define(GL_FRAMEBUFFER_BINDING,                              16#8CA6).
  -define(GL_DRAW_FRAMEBUFFER_BINDING,                         ?GL_FRAMEBUFFER_BINDING).
  -define(GL_RENDERBUFFER_BINDING,                             16#8CA7).
  -define(GL_READ_FRAMEBUFFER,                                 16#8CA8).
  -define(GL_DRAW_FRAMEBUFFER,                                 16#8CA9).
  -define(GL_READ_FRAMEBUFFER_BINDING,                         16#8CAA).
  -define(GL_RENDERBUFFER_SAMPLES,                             16#8CAB).
  -define(GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE,               16#8CD0).
  -define(GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME,               16#8CD1).
  -define(GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL,             16#8CD2).
  -define(GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE,     16#8CD3).
  -define(GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,             16#8CD4).
  -define(GL_FRAMEBUFFER_COMPLETE,                             16#8CD5).
  -define(GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT,                16#8CD6).
  -define(GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT,        16#8CD7).
  -define(GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER,               16#8CDB).
  -define(GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER,               16#8CDC).
  -define(GL_FRAMEBUFFER_UNSUPPORTED,                          16#8CDD).
  -define(GL_MAX_COLOR_ATTACHMENTS,                            16#8CDF).
  -define(GL_COLOR_ATTACHMENT0,                                16#8CE0).
  -define(GL_COLOR_ATTACHMENT1,                                16#8CE1).
  -define(GL_COLOR_ATTACHMENT2,                                16#8CE2).
  -define(GL_COLOR_ATTACHMENT3,                                16#8CE3).
  -define(GL_COLOR_ATTACHMENT4,                                16#8CE4).
  -define(GL_COLOR_ATTACHMENT5,                                16#8CE5).
  -define(GL_COLOR_ATTACHMENT6,                                16#8CE6).
  -define(GL_COLOR_ATTACHMENT7,                                16#8CE7).
  -define(GL_COLOR_ATTACHMENT8,                                16#8CE8).
  -define(GL_COLOR_ATTACHMENT9,                                16#8CE9).
  -define(GL_COLOR_ATTACHMENT10,                               16#8CEA).
  -define(GL_COLOR_ATTACHMENT11,                               16#8CEB).
  -define(GL_COLOR_ATTACHMENT12,                               16#8CEC).
  -define(GL_COLOR_ATTACHMENT13,                               16#8CED).
  -define(GL_COLOR_ATTACHMENT14,                               16#8CEE).
  -define(GL_COLOR_ATTACHMENT15,                               16#8CEF).
  -define(GL_DEPTH_ATTACHMENT,                                 16#8D00).
  -define(GL_STENCIL_ATTACHMENT,                               16#8D20).
  -define(GL_FRAMEBUFFER,                                      16#8D40).
  -define(GL_RENDERBUFFER,                                     16#8D41).
  -define(GL_RENDERBUFFER_WIDTH,                               16#8D42).
  -define(GL_RENDERBUFFER_HEIGHT,                              16#8D43).
  -define(GL_RENDERBUFFER_INTERNAL_FORMAT,                     16#8D44).
  -define(GL_STENCIL_INDEX1,                                   16#8D46).
  -define(GL_STENCIL_INDEX4,                                   16#8D47).
  -define(GL_STENCIL_INDEX8,                                   16#8D48).
  -define(GL_STENCIL_INDEX16,                                  16#8D49).
  -define(GL_RENDERBUFFER_RED_SIZE,                            16#8D50).
  -define(GL_RENDERBUFFER_GREEN_SIZE,                          16#8D51).
  -define(GL_RENDERBUFFER_BLUE_SIZE,                           16#8D52).
  -define(GL_RENDERBUFFER_ALPHA_SIZE,                          16#8D53).
  -define(GL_RENDERBUFFER_DEPTH_SIZE,                          16#8D54).
  -define(GL_RENDERBUFFER_STENCIL_SIZE,                        16#8D55).
  -define(GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE,               16#8D56).
  -define(GL_MAX_SAMPLES,                                      16#8D57).
-endif.

-ifndef(GL_ARB_framebuffer_sRGB).
  -define(GL_ARB_framebuffer_sRGB,                             1).

  -define(GL_FRAMEBUFFER_SRGB,                                 16#8DB9).
-endif.

-ifndef(GL_ARB_half_float_vertex).
  -define(GL_ARB_half_float_vertex,                            1).

  -define(GL_HALF_FLOAT,                                       16#140B).
-endif.

-ifndef(GL_ARB_map_buffer_range).
  -define(GL_ARB_map_buffer_range,                             1).

  -define(GL_MAP_READ_BIT,                                     16#0001).
  -define(GL_MAP_WRITE_BIT,                                    16#0002).
  -define(GL_MAP_INVALIDATE_RANGE_BIT,                         16#0004).
  -define(GL_MAP_INVALIDATE_BUFFER_BIT,                        16#0008).
  -define(GL_MAP_FLUSH_EXPLICIT_BIT,                           16#0010).
  -define(GL_MAP_UNSYNCHRONIZED_BIT,                           16#0020).
-endif.

-ifndef(GL_ARB_texture_compression_rgtc).
  -define(GL_ARB_texture_compression_rgtc,                     1).

  -define(GL_COMPRESSED_RED_RGTC1,                             16#8DBB).
  -define(GL_COMPRESSED_SIGNED_RED_RGTC1,                      16#8DBC).
  -define(GL_COMPRESSED_RG_RGTC2,                              16#8DBD).
  -define(GL_COMPRESSED_SIGNED_RG_RGTC2,                       16#8DBE).
-endif.

-ifndef(GL_ARB_texture_rg).
  -define(GL_ARB_texture_rg,                                   1).

  -define(GL_RG,                                               16#8227).
  -define(GL_RG_INTEGER,                                       16#8228).
  -define(GL_R8,                                               16#8229).
  -define(GL_R16,                                              16#822A).
  -define(GL_RG8,                                              16#822B).
  -define(GL_RG16,                                             16#822C).
  -define(GL_R16F,                                             16#822D).
  -define(GL_R32F,                                             16#822E).
  -define(GL_RG16F,                                            16#822F).
  -define(GL_RG32F,                                            16#8230).
  -define(GL_R8I,                                              16#8231).
  -define(GL_R8UI,                                             16#8232).
  -define(GL_R16I,                                             16#8233).
  -define(GL_R16UI,                                            16#8234).
  -define(GL_R32I,                                             16#8235).
  -define(GL_R32UI,                                            16#8236).
  -define(GL_RG8I,                                             16#8237).
  -define(GL_RG8UI,                                            16#8238).
  -define(GL_RG16I,                                            16#8239).
  -define(GL_RG16UI,                                           16#823A).
  -define(GL_RG32I,                                            16#823B).
  -define(GL_RG32UI,                                           16#823C).
-endif.

-ifndef(GL_ARB_vertex_array_object).
  -define(GL_ARB_vertex_array_object,                          1).

  -define(GL_VERTEX_ARRAY_BINDING,                             16#85B5).
-endif.

-ifndef(GL_ARB_uniform_buffer_object).
  -define(GL_ARB_uniform_buffer_object,                        1).

  -define(GL_UNIFORM_BUFFER,                                   16#8A11).
  -define(GL_UNIFORM_BUFFER_BINDING,                           16#8A28).
  -define(GL_UNIFORM_BUFFER_START,                             16#8A29).
  -define(GL_UNIFORM_BUFFER_SIZE,                              16#8A2A).
  -define(GL_MAX_VERTEX_UNIFORM_BLOCKS,                        16#8A2B).
  -define(GL_MAX_GEOMETRY_UNIFORM_BLOCKS,                      16#8A2C).
  -define(GL_MAX_FRAGMENT_UNIFORM_BLOCKS,                      16#8A2D).
  -define(GL_MAX_COMBINED_UNIFORM_BLOCKS,                      16#8A2E).
  -define(GL_MAX_UNIFORM_BUFFER_BINDINGS,                      16#8A2F).
  -define(GL_MAX_UNIFORM_BLOCK_SIZE,                           16#8A30).
  -define(GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS,           16#8A31).
  -define(GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS,         16#8A32).
  -define(GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS,         16#8A33).
  -define(GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT,                  16#8A34).
  -define(GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH,             16#8A35).
  -define(GL_ACTIVE_UNIFORM_BLOCKS,                            16#8A36).
  -define(GL_UNIFORM_TYPE,                                     16#8A37).
  -define(GL_UNIFORM_SIZE,                                     16#8A38).
  -define(GL_UNIFORM_NAME_LENGTH,                              16#8A39).
  -define(GL_UNIFORM_BLOCK_INDEX,                              16#8A3A).
  -define(GL_UNIFORM_OFFSET,                                   16#8A3B).
  -define(GL_UNIFORM_ARRAY_STRIDE,                             16#8A3C).
  -define(GL_UNIFORM_MATRIX_STRIDE,                            16#8A3D).
  -define(GL_UNIFORM_IS_ROW_MAJOR,                             16#8A3E).
  -define(GL_UNIFORM_BLOCK_BINDING,                            16#8A3F).
  -define(GL_UNIFORM_BLOCK_DATA_SIZE,                          16#8A40).
  -define(GL_UNIFORM_BLOCK_NAME_LENGTH,                        16#8A41).
  -define(GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS,                    16#8A42).
  -define(GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES,             16#8A43).
  -define(GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER,        16#8A44).
  -define(GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER,      16#8A45).
  -define(GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER,      16#8A46).
  -define(GL_INVALID_INDEX,                                    16#FFFFFFFFu).
-endif.

-ifndef(GL_ARB_copy_buffer).
  -define(GL_ARB_copy_buffer,                                  1).

  -define(GL_COPY_READ_BUFFER_BINDING,                         16#8F36).
  -define(GL_COPY_READ_BUFFER,                                 ?GL_COPY_READ_BUFFER_BINDING).
  -define(GL_COPY_WRITE_BUFFER_BINDING,                        16#8F37).
  -define(GL_COPY_WRITE_BUFFER,                                ?GL_COPY_WRITE_BUFFER_BINDING).
-endif.

-ifndef(GL_ARB_depth_clamp).
  -define(GL_ARB_depth_clamp,                                  1).

  -define(GL_DEPTH_CLAMP,                                      16#864F).
-endif.

-ifndef(GL_ARB_draw_elements_base_vertex).
  -define(GL_ARB_draw_elements_base_vertex,                    1).

-endif.

-ifndef(GL_ARB_fragment_coord_conventions).
  -define(GL_ARB_fragment_coord_conventions,                   1).

-endif.

-ifndef(GL_ARB_provoking_vertex).
  -define(GL_ARB_provoking_vertex,                             1).

  -define(GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION,         16#8E4C).
  -define(GL_FIRST_VERTEX_CONVENTION,                          16#8E4D).
  -define(GL_LAST_VERTEX_CONVENTION,                           16#8E4E).
  -define(GL_PROVOKING_VERTEX,                                 16#8E4F).
-endif.

-ifndef(GL_ARB_seamless_cube_map).
  -define(GL_ARB_seamless_cube_map,                            1).

  -define(GL_TEXTURE_CUBE_MAP_SEAMLESS,                        16#884F).
-endif.

-ifndef(GL_ARB_sync).
  -define(GL_ARB_sync,                                         1).

  -define(GL_MAX_SERVER_WAIT_TIMEOUT,                          16#9111).
  -define(GL_OBJECT_TYPE,                                      16#9112).
  -define(GL_SYNC_CONDITION,                                   16#9113).
  -define(GL_SYNC_STATUS,                                      16#9114).
  -define(GL_SYNC_FLAGS,                                       16#9115).
  -define(GL_SYNC_FENCE,                                       16#9116).
  -define(GL_SYNC_GPU_COMMANDS_COMPLETE,                       16#9117).
  -define(GL_UNSIGNALED,                                       16#9118).
  -define(GL_SIGNALED,                                         16#9119).
  -define(GL_ALREADY_SIGNALED,                                 16#911A).
  -define(GL_TIMEOUT_EXPIRED,                                  16#911B).
  -define(GL_CONDITION_SATISFIED,                              16#911C).
  -define(GL_WAIT_FAILED,                                      16#911D).
  -define(GL_SYNC_FLUSH_COMMANDS_BIT,                          16#00000001).
  -define(GL_TIMEOUT_IGNORED,                                  16#FFFFFFFFFFFFFFFFull).
-endif.

-ifndef(GL_ARB_texture_multisample).
  -define(GL_ARB_texture_multisample,                          1).

  -define(GL_SAMPLE_POSITION,                                  16#8E50).
  -define(GL_SAMPLE_MASK,                                      16#8E51).
  -define(GL_SAMPLE_MASK_VALUE,                                16#8E52).
  -define(GL_MAX_SAMPLE_MASK_WORDS,                            16#8E59).
  -define(GL_TEXTURE_2D_MULTISAMPLE,                           16#9100).
  -define(GL_PROXY_TEXTURE_2D_MULTISAMPLE,                     16#9101).
  -define(GL_TEXTURE_2D_MULTISAMPLE_ARRAY,                     16#9102).
  -define(GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY,               16#9103).
  -define(GL_TEXTURE_BINDING_2D_MULTISAMPLE,                   16#9104).
  -define(GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY,             16#9105).
  -define(GL_TEXTURE_SAMPLES,                                  16#9106).
  -define(GL_TEXTURE_FIXED_SAMPLE_LOCATIONS,                   16#9107).
  -define(GL_SAMPLER_2D_MULTISAMPLE,                           16#9108).
  -define(GL_INT_SAMPLER_2D_MULTISAMPLE,                       16#9109).
  -define(GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE,              16#910A).
  -define(GL_SAMPLER_2D_MULTISAMPLE_ARRAY,                     16#910B).
  -define(GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY,                 16#910C).
  -define(GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY,        16#910D).
  -define(GL_MAX_COLOR_TEXTURE_SAMPLES,                        16#910E).
  -define(GL_MAX_DEPTH_TEXTURE_SAMPLES,                        16#910F).
  -define(GL_MAX_INTEGER_SAMPLES,                              16#9110).
-endif.

-ifndef(GL_ARB_vertex_array_bgra).
  -define(GL_ARB_vertex_array_bgra,                            1).

%% reuse GL_BGRA
-endif.

-ifndef(GL_ARB_draw_buffers_blend).
  -define(GL_ARB_draw_buffers_blend,                           1).

-endif.

-ifndef(GL_ARB_sample_shading).
  -define(GL_ARB_sample_shading,                               1).

  -define(GL_SAMPLE_SHADING_ARB,                               16#8C36).
  -define(GL_MIN_SAMPLE_SHADING_VALUE_ARB,                     16#8C37).
-endif.

-ifndef(GL_ARB_texture_cube_map_array).
  -define(GL_ARB_texture_cube_map_array,                       1).

  -define(GL_TEXTURE_CUBE_MAP_ARRAY_ARB,                       16#9009).
  -define(GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB,               16#900A).
  -define(GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB,                 16#900B).
  -define(GL_SAMPLER_CUBE_MAP_ARRAY_ARB,                       16#900C).
  -define(GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB,                16#900D).
  -define(GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB,                   16#900E).
  -define(GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB,          16#900F).
-endif.

-ifndef(GL_ARB_texture_gather).
  -define(GL_ARB_texture_gather,                               1).

  -define(GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB,            16#8E5E).
  -define(GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB,            16#8E5F).
  -define(GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB,        16#8F9F).
-endif.

-ifndef(GL_ARB_texture_query_lod).
  -define(GL_ARB_texture_query_lod,                            1).

-endif.

-ifndef(GL_ARB_shading_language_include
  -define(GL_ARB_shading_language_include,                     1).

  -define(GL_SHADER_INCLUDE_ARB,                               16#8DAE).
  -define(GL_NAMED_STRING_LENGTH_ARB,                          16#8DE9).
  -define(GL_NAMED_STRING_TYPE_ARB,                            16#8DEA).
-endif.

-ifndef(GL_ARB_texture_compression_bptc
  -define(GL_ARB_texture_compression_bptc,                     1).

  -define(GL_COMPRESSED_RGBA_BPTC_UNORM_ARB,                   16#8E8C).
  -define(GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB,             16#8E8D).
  -define(GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB,             16#8E8E).
  -define(GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB,           16#8E8F).
-endif.


-ifndef(GL_ARB_blend_func_extended).
  -define(GL_ARB_blend_func_extended,                          1).

  -define(GL_SRC1_COLOR,                                       16#88F9).
%% reuse GL_SRC1_ALPHA
  -define(GL_ONE_MINUS_SRC1_COLOR,                             16#88FA).
  -define(GL_ONE_MINUS_SRC1_ALPHA,                             16#88FB).
  -define(GL_MAX_DUAL_SOURCE_DRAW_BUFFERS,                     16#88FC).
-endif.

-ifndef(GL_ARB_explicit_attrib_location).
  -define(GL_ARB_explicit_attrib_location,                     1).

-endif.

-ifndef(GL_ARB_occlusion_query2).
  -define(GL_ARB_occlusion_query2,                             1).

  -define(GL_ANY_SAMPLES_PASSED,                               16#8C2F).
-endif.

-ifndef(GL_ARB_sampler_objects).
  -define(GL_ARB_sampler_objects,                              1).

  -define(GL_SAMPLER_BINDING,                                  16#8919).
-endif.

-ifndef(GL_ARB_shader_bit_encoding).
  -define(GL_ARB_shader_bit_encoding,                          1).

-endif.

-ifndef(GL_ARB_texture_rgb10_a2ui).
  -define(GL_ARB_texture_rgb10_a2ui,                           1).

  -define(GL_RGB10_A2UI,                                       16#906F).
-endif.

-ifndef(GL_ARB_texture_swizzle).
  -define(GL_ARB_texture_swizzle,                              1).

  -define(GL_TEXTURE_SWIZZLE_R,                                16#8E42).
  -define(GL_TEXTURE_SWIZZLE_G,                                16#8E43).
  -define(GL_TEXTURE_SWIZZLE_B,                                16#8E44).
  -define(GL_TEXTURE_SWIZZLE_A,                                16#8E45).
  -define(GL_TEXTURE_SWIZZLE_RGBA,                             16#8E46).
-endif.

-ifndef(GL_ARB_timer_query).
  -define(GL_ARB_timer_query,                                  1).

  -define(GL_TIME_ELAPSED,                                     16#88BF).
  -define(GL_TIMESTAMP,                                        16#8E28).
-endif.

-ifndef(GL_ARB_vertex_type_2_10_10_10_rev).
  -define(GL_ARB_vertex_type_2_10_10_10_rev,                   1).

%% reuse GL_UNSIGNED_INT_2_10_10_10_REV
  -define(GL_INT_2_10_10_10_REV,                               16#8D9F).
-endif.

-ifndef(GL_ARB_draw_indirect).
  -define(GL_ARB_draw_indirect,                                1).

  -define(GL_DRAW_INDIRECT_BUFFER,                             16#8F3F).
  -define(GL_DRAW_INDIRECT_BUFFER_BINDING,                     16#8F43).
-endif.

-ifndef(GL_ARB_gpu_shader5).
  -define(GL_ARB_gpu_shader5,                                  1).

  -define(GL_GEOMETRY_SHADER_INVOCATIONS,                      16#887F).
  -define(GL_MAX_GEOMETRY_SHADER_INVOCATIONS,                  16#8E5A).
  -define(GL_MIN_FRAGMENT_INTERPOLATION_OFFSET,                16#8E5B).
  -define(GL_MAX_FRAGMENT_INTERPOLATION_OFFSET,                16#8E5C).
  -define(GL_FRAGMENT_INTERPOLATION_OFFSET_BITS,               16#8E5D).
%% reuse GL_MAX_VERTEX_STREAMS
-endif.

-ifndef(GL_ARB_gpu_shader_fp64).
  -define(GL_ARB_gpu_shader_fp64,                              1).

%% reuse GL_DOUBLE
  -define(GL_DOUBLE_VEC2,                                      16#8FFC).
  -define(GL_DOUBLE_VEC3,                                      16#8FFD).
  -define(GL_DOUBLE_VEC4,                                      16#8FFE).
  -define(GL_DOUBLE_MAT2,                                      16#8F46).
  -define(GL_DOUBLE_MAT3,                                      16#8F47).
  -define(GL_DOUBLE_MAT4,                                      16#8F48).
  -define(GL_DOUBLE_MAT2x3,                                    16#8F49).
  -define(GL_DOUBLE_MAT2x4,                                    16#8F4A).
  -define(GL_DOUBLE_MAT3x2,                                    16#8F4B).
  -define(GL_DOUBLE_MAT3x4,                                    16#8F4C).
  -define(GL_DOUBLE_MAT4x2,                                    16#8F4D).
  -define(GL_DOUBLE_MAT4x3,                                    16#8F4E).
-endif.

-ifndef(GL_ARB_shader_subroutine).
  -define(GL_ARB_shader_subroutine,                            1).

  -define(GL_ACTIVE_SUBROUTINES,                               16#8DE5).
  -define(GL_ACTIVE_SUBROUTINE_UNIFORMS,                       16#8DE6).
  -define(GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS,              16#8E47).
  -define(GL_ACTIVE_SUBROUTINE_MAX_LENGTH,                     16#8E48).
  -define(GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH,             16#8E49).
  -define(GL_MAX_SUBROUTINES,                                  16#8DE7).
  -define(GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS,                 16#8DE8).
  -define(GL_NUM_COMPATIBLE_SUBROUTINES,                       16#8E4A).
  -define(GL_COMPATIBLE_SUBROUTINES,                           16#8E4B).
%% reuse GL_UNIFORM_SIZE
%% reuse GL_UNIFORM_NAME_LENGTH
-endif.

-ifndef(GL_ARB_tessellation_shader).
  -define(GL_ARB_tessellation_shader,                          1).

  -define(GL_PATCHES,                                          16#000E).
  -define(GL_PATCH_VERTICES,                                   16#8E72).
  -define(GL_PATCH_DEFAULT_INNER_LEVEL,                        16#8E73).
  -define(GL_PATCH_DEFAULT_OUTER_LEVEL,                        16#8E74).
  -define(GL_TESS_CONTROL_OUTPUT_VERTICES,                     16#8E75).
  -define(GL_TESS_GEN_MODE,                                    16#8E76).
  -define(GL_TESS_GEN_SPACING,                                 16#8E77).
  -define(GL_TESS_GEN_VERTEX_ORDER,                            16#8E78).
  -define(GL_TESS_GEN_POINT_MODE,                              16#8E79).
%% reuse GL_TRIANGLES
%% reuse GL_QUADS
  -define(GL_ISOLINES,                                         16#8E7A).
%% reuse GL_EQUAL
  -define(GL_FRACTIONAL_ODD,                                   16#8E7B).
  -define(GL_FRACTIONAL_EVEN,                                  16#8E7C).
%% reuse GL_CCW
%% reuse GL_CW
  -define(GL_MAX_PATCH_VERTICES,                               16#8E7D).
  -define(GL_MAX_TESS_GEN_LEVEL,                               16#8E7E).
  -define(GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS,              16#8E7F).
  -define(GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS,           16#8E80).
  -define(GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS,             16#8E81).
  -define(GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS,          16#8E82).
  -define(GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS,               16#8E83).
  -define(GL_MAX_TESS_PATCH_COMPONENTS,                        16#8E84).
  -define(GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS,         16#8E85).
  -define(GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS,            16#8E86).
  -define(GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS,                  16#8E89).
  -define(GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS,               16#8E8A).
  -define(GL_MAX_TESS_CONTROL_INPUT_COMPONENTS,                16#886C).
  -define(GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS,             16#886D).
  -define(GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS,     16#8E1E).
  -define(GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS,  16#8E1F).
  -define(GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER,  16#84F0).
  -define(GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER, 16#84F1).
  -define(GL_TESS_EVALUATION_SHADER,                           16#8E87).
  -define(GL_TESS_CONTROL_SHADER,                              16#8E88).
-endif.

-ifndef(GL_ARB_texture_buffer_object_rgb32).
  -define(GL_ARB_texture_buffer_object_rgb32,                  1).

%% reuse GL_RGB32F
%% reuse GL_RGB32UI
%% reuse GL_RGB32I
-endif.

-ifndef(GL_ARB_transform_feedback2).
  -define(GL_ARB_transform_feedback2,                          1).

  -define(GL_TRANSFORM_FEEDBACK,                               16#8E22).
  -define(GL_TRANSFORM_FEEDBACK_PAUSED,                        16#8E23).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED,                 ?GL_TRANSFORM_FEEDBACK_PAUSED).
  -define(GL_TRANSFORM_FEEDBACK_ACTIVE,                        16#8E24).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE,                 ?GL_TRANSFORM_FEEDBACK_ACTIVE).
  -define(GL_TRANSFORM_FEEDBACK_BINDING,                       16#8E25).
-endif.

-ifndef(GL_ARB_transform_feedback3).
  -define(GL_ARB_transform_feedback3,                          1).

  -define(GL_MAX_TRANSFORM_FEEDBACK_BUFFERS,                   16#8E70).
  -define(GL_MAX_VERTEX_STREAMS,                               16#8E71).
-endif.

-ifndef(GL_ARB_ES2_compatibility).
  -define(GL_ARB_ES2_compatibility,                            1).

  -define(GL_FIXED,                                            16#140C).
  -define(GL_IMPLEMENTATION_COLOR_READ_TYPE,                   16#8B9A).
  -define(GL_IMPLEMENTATION_COLOR_READ_FORMAT,                 16#8B9B).
  -define(GL_LOW_FLOAT,                                        16#8DF0).
  -define(GL_MEDIUM_FLOAT,                                     16#8DF1).
  -define(GL_HIGH_FLOAT,                                       16#8DF2).
  -define(GL_LOW_INT,                                          16#8DF3).
  -define(GL_MEDIUM_INT,                                       16#8DF4).
  -define(GL_HIGH_INT,                                         16#8DF5).
  -define(GL_SHADER_COMPILER,                                  16#8DFA).
  -define(GL_SHADER_BINARY_FORMATS,                            16#8DF8).
  -define(GL_NUM_SHADER_BINARY_FORMATS,                        16#8DF9).
  -define(GL_MAX_VERTEX_UNIFORM_VECTORS,                       16#8DFB).
  -define(GL_MAX_VARYING_VECTORS,                              16#8DFC).
  -define(GL_MAX_FRAGMENT_UNIFORM_VECTORS,                     16#8DFD).
  -define(GL_RGB565,                                           16#8D62).
-endif.

-ifndef(GL_ARB_get_program_binary).
  -define(GL_ARB_get_program_binary,                           1).

  -define(GL_PROGRAM_BINARY_RETRIEVABLE_HINT,                  16#8257).
  -define(GL_PROGRAM_BINARY_LENGTH,                            16#8741).
  -define(GL_NUM_PROGRAM_BINARY_FORMATS,                       16#87FE).
  -define(GL_PROGRAM_BINARY_FORMATS,                           16#87FF).
-endif.

-ifndef(GL_ARB_separate_shader_objects).
  -define(GL_ARB_separate_shader_objects,                      1).

  -define(GL_VERTEX_SHADER_BIT,                                16#00000001).
  -define(GL_FRAGMENT_SHADER_BIT,                              16#00000002).
  -define(GL_GEOMETRY_SHADER_BIT,                              16#00000004).
  -define(GL_TESS_CONTROL_SHADER_BIT,                          16#00000008).
  -define(GL_TESS_EVALUATION_SHADER_BIT,                       16#00000010).
  -define(GL_ALL_SHADER_BITS,                                  16#FFFFFFFF).
  -define(GL_PROGRAM_SEPARABLE,                                16#8258).
  -define(GL_ACTIVE_PROGRAM,                                   16#8259).
  -define(GL_PROGRAM_PIPELINE_BINDING,                         16#825A).
-endif.

-ifndef(GL_ARB_shader_precision).
  -define(GL_ARB_shader_precision,                             1).

-endif.

-ifndef(GL_ARB_vertex_attrib_64bit).
  -define(GL_ARB_vertex_attrib_64bit,                          1).

%% reuse GL_RGB32I
%% reuse GL_DOUBLE_VEC2
%% reuse GL_DOUBLE_VEC3
%% reuse GL_DOUBLE_VEC4
%% reuse GL_DOUBLE_MAT2
%% reuse GL_DOUBLE_MAT3
%% reuse GL_DOUBLE_MAT4
%% reuse GL_DOUBLE_MAT2x3
%% reuse GL_DOUBLE_MAT2x4
%% reuse GL_DOUBLE_MAT3x2
%% reuse GL_DOUBLE_MAT3x4
%% reuse GL_DOUBLE_MAT4x2
%% reuse GL_DOUBLE_MAT4x3
-endif.

-ifndef(GL_ARB_viewport_array).
  -define(GL_ARB_viewport_array,                               1).

%% reuse GL_SCISSOR_BOX
%% reuse GL_VIEWPORT
%% reuse GL_DEPTH_RANGE
%% reuse GL_SCISSOR_TEST
  -define(GL_MAX_VIEWPORTS,                                    16#825B).
  -define(GL_VIEWPORT_SUBPIXEL_BITS,                           16#825C).
  -define(GL_VIEWPORT_BOUNDS_RANGE,                            16#825D).
  -define(GL_LAYER_PROVOKING_VERTEX,                           16#825E).
  -define(GL_VIEWPORT_INDEX_PROVOKING_VERTEX,                  16#825F).
  -define(GL_UNDEFINED_VERTEX,                                 16#8260).
%% reuse GL_FIRST_VERTEX_CONVENTION
%% reuse GL_LAST_VERTEX_CONVENTION
%% reuse GL_PROVOKING_VERTEX
-endif.

-ifndef(GL_ARB_cl_event).
  -define(GL_ARB_cl_event,                                     1).

  -define(GL_SYNC_CL_EVENT_ARB,                                16#8240).
  -define(GL_SYNC_CL_EVENT_COMPLETE_ARB,                       16#8241).
-endif.

-ifndef(GL_ARB_debug_output).
  -define(GL_ARB_debug_output,                                 1).

  -define(GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB,                     16#8242).
  -define(GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB,             16#8243).
  -define(GL_DEBUG_CALLBACK_FUNCTION_ARB,                      16#8244).
  -define(GL_DEBUG_CALLBACK_USER_PARAM_ARB,                    16#8245).
  -define(GL_DEBUG_SOURCE_API_ARB,                             16#8246).
  -define(GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB,                   16#8247).
  -define(GL_DEBUG_SOURCE_SHADER_COMPILER_ARB,                 16#8248).
  -define(GL_DEBUG_SOURCE_THIRD_PARTY_ARB,                     16#8249).
  -define(GL_DEBUG_SOURCE_APPLICATION_ARB,                     16#824A).
  -define(GL_DEBUG_SOURCE_OTHER_ARB,                           16#824B).
  -define(GL_DEBUG_TYPE_ERROR_ARB,                             16#824C).
  -define(GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB,               16#824D).
  -define(GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB,                16#824E).
  -define(GL_DEBUG_TYPE_PORTABILITY_ARB,                       16#824F).
  -define(GL_DEBUG_TYPE_PERFORMANCE_ARB,                       16#8250).
  -define(GL_DEBUG_TYPE_OTHER_ARB,                             16#8251).
  -define(GL_MAX_DEBUG_MESSAGE_LENGTH_ARB,                     16#9143).
  -define(GL_MAX_DEBUG_LOGGED_MESSAGES_ARB,                    16#9144).
  -define(GL_DEBUG_LOGGED_MESSAGES_ARB,                        16#9145).
  -define(GL_DEBUG_SEVERITY_HIGH_ARB,                          16#9146).
  -define(GL_DEBUG_SEVERITY_MEDIUM_ARB,                        16#9147).
  -define(GL_DEBUG_SEVERITY_LOW_ARB,                           16#9148).
-endif.

-ifndef(GL_ARB_robustness).
  -define(GL_ARB_robustness,                                   1).

%% reuse GL_NO_ERROR
  -define(GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB,               16#00000004).
  -define(GL_LOSE_CONTEXT_ON_RESET_ARB,                        16#8252).
  -define(GL_GUILTY_CONTEXT_RESET_ARB,                         16#8253).
  -define(GL_INNOCENT_CONTEXT_RESET_ARB,                       16#8254).
  -define(GL_UNKNOWN_CONTEXT_RESET_ARB,                        16#8255).
  -define(GL_RESET_NOTIFICATION_STRATEGY_ARB,                  16#8256).
  -define(GL_NO_RESET_NOTIFICATION_ARB,                        16#8261).
-endif.

-ifndef(GL_ARB_shader_stencil_export).
  -define(GL_ARB_shader_stencil_export,                        1).

-endif.

-ifndef(GL_ARB_base_instance).
  -define(GL_ARB_base_instance,                                1).

-endif.

-ifndef(GL_ARB_shading_language_420pack).
  -define(GL_ARB_shading_language_420pack,                     1).

-endif.

-ifndef(GL_ARB_transform_feedback_instanced).
  -define(GL_ARB_transform_feedback_instanced,                 1).

-endif.

-ifndef(GL_ARB_compressed_texture_pixel_storage).
  -define(GL_ARB_compressed_texture_pixel_storage,             1).

  -define(GL_UNPACK_COMPRESSED_BLOCK_WIDTH,                    16#9127).
  -define(GL_UNPACK_COMPRESSED_BLOCK_HEIGHT,                   16#9128).
  -define(GL_UNPACK_COMPRESSED_BLOCK_DEPTH,                    16#9129).
  -define(GL_UNPACK_COMPRESSED_BLOCK_SIZE,                     16#912A).
  -define(GL_PACK_COMPRESSED_BLOCK_WIDTH,                      16#912B).
  -define(GL_PACK_COMPRESSED_BLOCK_HEIGHT,                     16#912C).
  -define(GL_PACK_COMPRESSED_BLOCK_DEPTH,                      16#912D).
  -define(GL_PACK_COMPRESSED_BLOCK_SIZE,                       16#912E).
-endif.

-ifndef(GL_ARB_conservative_depth).
  -define(GL_ARB_conservative_depth,                           1).

-endif.

-ifndef(GL_ARB_internalformat_query).
  -define(GL_ARB_internalformat_query,                         1).

  -define(GL_NUM_SAMPLE_COUNTS,                                16#9380).
-endif.

-ifndef(GL_ARB_map_buffer_alignment).
  -define(GL_ARB_map_buffer_alignment,                         1).

  -define(GL_MIN_MAP_BUFFER_ALIGNMENT,                         16#90BC).
-endif.

-ifndef(GL_ARB_shader_atomic_counters).
  -define(GL_ARB_shader_atomic_counters,                       1).

  -define(GL_ATOMIC_COUNTER_BUFFER,                            16#92C0).
  -define(GL_ATOMIC_COUNTER_BUFFER_BINDING,                    16#92C1).
  -define(GL_ATOMIC_COUNTER_BUFFER_START,                      16#92C2).
  -define(GL_ATOMIC_COUNTER_BUFFER_SIZE,                       16#92C3).
  -define(GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE,                  16#92C4).
  -define(GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS,     16#92C5).
  -define(GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES,        16#92C6).
  -define(GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER,          16#92C7).
  -define(GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER,    16#92C8).
  -define(GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER, 16#92C9).
  -define(GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER,        16#92CA).
  -define(GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER,        16#92CB).
  -define(GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS,                16#92CC).
  -define(GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS,          16#92CD).
  -define(GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS,       16#92CE).
  -define(GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS,              16#92CF).
  -define(GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS,              16#92D0).
  -define(GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS,              16#92D1).
  -define(GL_MAX_VERTEX_ATOMIC_COUNTERS,                       16#92D2).
  -define(GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS,                 16#92D3).
  -define(GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS,              16#92D4).
  -define(GL_MAX_GEOMETRY_ATOMIC_COUNTERS,                     16#92D5).
  -define(GL_MAX_FRAGMENT_ATOMIC_COUNTERS,                     16#92D6).
  -define(GL_MAX_COMBINED_ATOMIC_COUNTERS,                     16#92D7).
  -define(GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE,                   16#92D8).
  -define(GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS,               16#92DC).
  -define(GL_ACTIVE_ATOMIC_COUNTER_BUFFERS,                    16#92D9).
  -define(GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX,              16#92DA).
  -define(GL_UNSIGNED_INT_ATOMIC_COUNTER,                      16#92DB).
-endif.

-ifndef(GL_ARB_shader_image_load_store).
  -define(GL_ARB_shader_image_load_store,                      1).

  -define(GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT,                  16#00000001).
  -define(GL_ELEMENT_ARRAY_BARRIER_BIT,                        16#00000002).
  -define(GL_UNIFORM_BARRIER_BIT,                              16#00000004).
  -define(GL_TEXTURE_FETCH_BARRIER_BIT,                        16#00000008).
  -define(GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,                  16#00000020).
  -define(GL_COMMAND_BARRIER_BIT,                              16#00000040).
  -define(GL_PIXEL_BUFFER_BARRIER_BIT,                         16#00000080).
  -define(GL_TEXTURE_UPDATE_BARRIER_BIT,                       16#00000100).
  -define(GL_BUFFER_UPDATE_BARRIER_BIT,                        16#00000200).
  -define(GL_FRAMEBUFFER_BARRIER_BIT,                          16#00000400).
  -define(GL_TRANSFORM_FEEDBACK_BARRIER_BIT,                   16#00000800).
  -define(GL_ATOMIC_COUNTER_BARRIER_BIT,                       16#00001000).
  -define(GL_ALL_BARRIER_BITS,                                 16#FFFFFFFF).
  -define(GL_MAX_IMAGE_UNITS,                                  16#8F38).
  -define(GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS,    16#8F39).
  -define(GL_IMAGE_BINDING_NAME,                               16#8F3A).
  -define(GL_IMAGE_BINDING_LEVEL,                              16#8F3B).
  -define(GL_IMAGE_BINDING_LAYERED,                            16#8F3C).
  -define(GL_IMAGE_BINDING_LAYER,                              16#8F3D).
  -define(GL_IMAGE_BINDING_ACCESS,                             16#8F3E).
  -define(GL_IMAGE_1D,                                         16#904C).
  -define(GL_IMAGE_2D,                                         16#904D).
  -define(GL_IMAGE_3D,                                         16#904E).
  -define(GL_IMAGE_2D_RECT,                                    16#904F).
  -define(GL_IMAGE_CUBE,                                       16#9050).
  -define(GL_IMAGE_BUFFER,                                     16#9051).
  -define(GL_IMAGE_1D_ARRAY,                                   16#9052).
  -define(GL_IMAGE_2D_ARRAY,                                   16#9053).
  -define(GL_IMAGE_CUBE_MAP_ARRAY,                             16#9054).
  -define(GL_IMAGE_2D_MULTISAMPLE,                             16#9055).
  -define(GL_IMAGE_2D_MULTISAMPLE_ARRAY,                       16#9056).
  -define(GL_INT_IMAGE_1D,                                     16#9057).
  -define(GL_INT_IMAGE_2D,                                     16#9058).
  -define(GL_INT_IMAGE_3D,                                     16#9059).
  -define(GL_INT_IMAGE_2D_RECT,                                16#905A).
  -define(GL_INT_IMAGE_CUBE,                                   16#905B).
  -define(GL_INT_IMAGE_BUFFER,                                 16#905C).
  -define(GL_INT_IMAGE_1D_ARRAY,                               16#905D).
  -define(GL_INT_IMAGE_2D_ARRAY,                               16#905E).
  -define(GL_INT_IMAGE_CUBE_MAP_ARRAY,                         16#905F).
  -define(GL_INT_IMAGE_2D_MULTISAMPLE,                         16#9060).
  -define(GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY,                   16#9061).
  -define(GL_UNSIGNED_INT_IMAGE_1D,                            16#9062).
  -define(GL_UNSIGNED_INT_IMAGE_2D,                            16#9063).
  -define(GL_UNSIGNED_INT_IMAGE_3D,                            16#9064).
  -define(GL_UNSIGNED_INT_IMAGE_2D_RECT,                       16#9065).
  -define(GL_UNSIGNED_INT_IMAGE_CUBE,                          16#9066).
  -define(GL_UNSIGNED_INT_IMAGE_BUFFER,                        16#9067).
  -define(GL_UNSIGNED_INT_IMAGE_1D_ARRAY,                      16#9068).
  -define(GL_UNSIGNED_INT_IMAGE_2D_ARRAY,                      16#9069).
  -define(GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY,                16#906A).
  -define(GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE,                16#906B).
  -define(GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY,          16#906C).
  -define(GL_MAX_IMAGE_SAMPLES,                                16#906D).
  -define(GL_IMAGE_BINDING_FORMAT,                             16#906E).
  -define(GL_IMAGE_FORMAT_COMPATIBILITY_TYPE,                  16#90C7).
  -define(GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE,               16#90C8).
  -define(GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS,              16#90C9).
  -define(GL_MAX_VERTEX_IMAGE_UNIFORMS,                        16#90CA).
  -define(GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS,                  16#90CB).
  -define(GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS,               16#90CC).
  -define(GL_MAX_GEOMETRY_IMAGE_UNIFORMS,                      16#90CD).
  -define(GL_MAX_FRAGMENT_IMAGE_UNIFORMS,                      16#90CE).
  -define(GL_MAX_COMBINED_IMAGE_UNIFORMS,                      16#90CF).
-endif.

-ifndef(GL_ARB_shading_language_packing).
  -define(GL_ARB_shading_language_packing,                     1).

-endif.

-ifndef(GL_ARB_texture_storage).
  -define(GL_ARB_texture_storage,                              1).

  -define(GL_TEXTURE_IMMUTABLE_FORMAT,                         16#912F).
-endif.

-ifndef(GL_KHR_texture_compression_astc_ldr).
  -define(GL_KHR_texture_compression_astc_ldr,                 1).

  -define(GL_COMPRESSED_RGBA_ASTC_4x4_KHR,                     16#93B0).
  -define(GL_COMPRESSED_RGBA_ASTC_5x4_KHR,                     16#93B1).
  -define(GL_COMPRESSED_RGBA_ASTC_5x5_KHR,                     16#93B2).
  -define(GL_COMPRESSED_RGBA_ASTC_6x5_KHR,                     16#93B3).
  -define(GL_COMPRESSED_RGBA_ASTC_6x6_KHR,                     16#93B4).
  -define(GL_COMPRESSED_RGBA_ASTC_8x5_KHR,                     16#93B5).
  -define(GL_COMPRESSED_RGBA_ASTC_8x6_KHR,                     16#93B6).
  -define(GL_COMPRESSED_RGBA_ASTC_8x8_KHR,                     16#93B7).
  -define(GL_COMPRESSED_RGBA_ASTC_10x5_KHR,                    16#93B8).
  -define(GL_COMPRESSED_RGBA_ASTC_10x6_KHR,                    16#93B9).
  -define(GL_COMPRESSED_RGBA_ASTC_10x8_KHR,                    16#93BA).
  -define(GL_COMPRESSED_RGBA_ASTC_10x10_KHR,                   16#93BB).
  -define(GL_COMPRESSED_RGBA_ASTC_12x10_KHR,                   16#93BC).
  -define(GL_COMPRESSED_RGBA_ASTC_12x12_KHR,                   16#93BD).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR,             16#93D0).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR,             16#93D1).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR,             16#93D2).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR,             16#93D3).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR,             16#93D4).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR,             16#93D5).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR,             16#93D6).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR,             16#93D7).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR,            16#93D8).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR,            16#93D9).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR,            16#93DA).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR,           16#93DB).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR,           16#93DC).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR,           16#93DD).
-endif.

-ifndef(GL_KHR_debug).
  -define(GL_KHR_debug,                                        1).

  -define(GL_DEBUG_OUTPUT_SYNCHRONOUS,                         16#8242).
  -define(GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH,                 16#8243).
  -define(GL_DEBUG_CALLBACK_FUNCTION,                          16#8244).
  -define(GL_DEBUG_CALLBACK_USER_PARAM,                        16#8245).
  -define(GL_DEBUG_SOURCE_API,                                 16#8246).
  -define(GL_DEBUG_SOURCE_WINDOW_SYSTEM,                       16#8247).
  -define(GL_DEBUG_SOURCE_SHADER_COMPILER,                     16#8248).
  -define(GL_DEBUG_SOURCE_THIRD_PARTY,                         16#8249).
  -define(GL_DEBUG_SOURCE_APPLICATION,                         16#824A).
  -define(GL_DEBUG_SOURCE_OTHER,                               16#824B).
  -define(GL_DEBUG_TYPE_ERROR,                                 16#824C).
  -define(GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR,                   16#824D).
  -define(GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR,                    16#824E).
  -define(GL_DEBUG_TYPE_PORTABILITY,                           16#824F).
  -define(GL_DEBUG_TYPE_PERFORMANCE,                           16#8250).
  -define(GL_DEBUG_TYPE_OTHER,                                 16#8251).
  -define(GL_DEBUG_TYPE_MARKER,                                16#8268).
  -define(GL_DEBUG_TYPE_PUSH_GROUP,                            16#8269).
  -define(GL_DEBUG_TYPE_POP_GROUP,                             16#826A).
  -define(GL_DEBUG_SEVERITY_NOTIFICATION,                      16#826B).
  -define(GL_MAX_DEBUG_GROUP_STACK_DEPTH,                      16#826C).
  -define(GL_DEBUG_GROUP_STACK_DEPTH,                          16#826D).
  -define(GL_BUFFER,                                           16#82E0).
  -define(GL_SHADER,                                           16#82E1).
  -define(GL_PROGRAM,                                          16#82E2).
  -define(GL_QUERY,                                            16#82E3).
  -define(GL_PROGRAM_PIPELINE,                                 16#82E4).
  -define(GL_SAMPLER,                                          16#82E6).
  -define(GL_DISPLAY_LIST,                                     16#82E7).
  %% DISPLAY_LIST used in compatibility profile only
  -define(GL_MAX_LABEL_LENGTH,                                 16#82E8).
  -define(GL_MAX_DEBUG_MESSAGE_LENGTH,                         16#9143).
  -define(GL_MAX_DEBUG_LOGGED_MESSAGES,                        16#9144).
  -define(GL_DEBUG_LOGGED_MESSAGES,                            16#9145).
  -define(GL_DEBUG_SEVERITY_HIGH,                              16#9146).
  -define(GL_DEBUG_SEVERITY_MEDIUM,                            16#9147).
  -define(GL_DEBUG_SEVERITY_LOW,                               16#9148).
  -define(GL_DEBUG_OUTPUT,                                     16#92E0).
  -define(GL_CONTEXT_FLAG_DEBUG_BIT,                           16#00000002).
  %% reuse GL_STACK_UNDERFLOW
  %% reuse GL_STACK_OVERFLOW
-endif.

-ifndef(GL_ARB_arrays_of_arrays).
  -define(GL_ARB_arrays_of_arrays,                             1).

-endif.

-ifndef(GL_ARB_clear_buffer_object).
  -define(GL_ARB_clear_buffer_object,                          1).

-endif.

-ifndef(GL_ARB_compute_shader).
  -define(GL_ARB_compute_shader,                               1).

  -define(GL_COMPUTE_SHADER,                                   16#91B9).
  -define(GL_MAX_COMPUTE_UNIFORM_BLOCKS,                       16#91BB).
  -define(GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS,                  16#91BC).
  -define(GL_MAX_COMPUTE_IMAGE_UNIFORMS,                       16#91BD).
  -define(GL_MAX_COMPUTE_SHARED_MEMORY_SIZE,                   16#8262).
  -define(GL_MAX_COMPUTE_UNIFORM_COMPONENTS,                   16#8263).
  -define(GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS,               16#8264).
  -define(GL_MAX_COMPUTE_ATOMIC_COUNTERS,                      16#8265).
  -define(GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS,          16#8266).
  -define(GL_MAX_COMPUTE_LOCAL_INVOCATIONS,                    16#90EB).
  -define(GL_MAX_COMPUTE_WORK_GROUP_COUNT,                     16#91BE).
  -define(GL_MAX_COMPUTE_WORK_GROUP_SIZE,                      16#91BF).
  -define(GL_COMPUTE_LOCAL_WORK_SIZE,                          16#8267).
  -define(GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER,       16#90EC).
  -define(GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER, 16#90ED).
  -define(GL_DISPATCH_INDIRECT_BUFFER,                         16#90EE).
  -define(GL_DISPATCH_INDIRECT_BUFFER_BINDING,                 16#90EF).
  -define(GL_COMPUTE_SHADER_BIT,                               16#00000020).
-endif.

-ifndef(GL_ARB_copy_image).
  -define(GL_ARB_copy_image,                                   1).

-endif.

-ifndef(GL_ARB_texture_view).
  -define(GL_ARB_texture_view,                                 1).

  -define(GL_TEXTURE_VIEW_MIN_LEVEL,                           16#82DB).
  -define(GL_TEXTURE_VIEW_NUM_LEVELS,                          16#82DC).
  -define(GL_TEXTURE_VIEW_MIN_LAYER,                           16#82DD).
  -define(GL_TEXTURE_VIEW_NUM_LAYERS,                          16#82DE).
  -define(GL_TEXTURE_IMMUTABLE_LEVELS,                         16#82DF).
-endif.

-ifndef(GL_ARB_vertex_attrib_binding).
  -define(GL_ARB_vertex_attrib_binding,                        1).

  -define(GL_VERTEX_ATTRIB_BINDING,                            16#82D4).
  -define(GL_VERTEX_ATTRIB_RELATIVE_OFFSET,                    16#82D5).
  -define(GL_VERTEX_BINDING_DIVISOR,                           16#82D6).
  -define(GL_VERTEX_BINDING_OFFSET,                            16#82D7).
  -define(GL_VERTEX_BINDING_STRIDE,                            16#82D8).
  -define(GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET,                16#82D9).
  -define(GL_MAX_VERTEX_ATTRIB_BINDINGS,                       16#82DA).
-endif.

-ifndef(GL_ARB_robustness_isolation).
  -define(GL_ARB_robustness_isolation,                         1).

-endif.

-ifndef(GL_ARB_ES3_compatibility).
  -define(GL_ARB_ES3_compatibility,                            1).

  -define(GL_COMPRESSED_RGB8_ETC2,                             16#9274).
  -define(GL_COMPRESSED_SRGB8_ETC2,                            16#9275).
  -define(GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2,         16#9276).
  -define(GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2,        16#9277).
  -define(GL_COMPRESSED_RGBA8_ETC2_EAC,                        16#9278).
  -define(GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC,                 16#9279).
  -define(GL_COMPRESSED_R11_EAC,                               16#9270).
  -define(GL_COMPRESSED_SIGNED_R11_EAC,                        16#9271).
  -define(GL_COMPRESSED_RG11_EAC,                              16#9272).
  -define(GL_COMPRESSED_SIGNED_RG11_EAC,                       16#9273).
  -define(GL_PRIMITIVE_RESTART_FIXED_INDEX,                    16#8D69).
  -define(GL_ANY_SAMPLES_PASSED_CONSERVATIVE,                  16#8D6A).
  -define(GL_MAX_ELEMENT_INDEX,                                16#8D6B).
-endif.

-ifndef(GL_ARB_explicit_uniform_location).
  -define(GL_ARB_explicit_uniform_location,                    1).

  -define(GL_MAX_UNIFORM_LOCATIONS,                            16#826E).
-endif.

-ifndef(GL_ARB_fragment_layer_viewport).
  -define(GL_ARB_fragment_layer_viewport,                      1).

-endif.

-ifndef(GL_ARB_framebuffer_no_attachments).
  -define(GL_ARB_framebuffer_no_attachments,                   1).

  -define(GL_FRAMEBUFFER_DEFAULT_WIDTH,                        16#9310).
  -define(GL_FRAMEBUFFER_DEFAULT_HEIGHT,                       16#9311).
  -define(GL_FRAMEBUFFER_DEFAULT_LAYERS,                       16#9312).
  -define(GL_FRAMEBUFFER_DEFAULT_SAMPLES,                      16#9313).
  -define(GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS,       16#9314).
  -define(GL_MAX_FRAMEBUFFER_WIDTH,                            16#9315).
  -define(GL_MAX_FRAMEBUFFER_HEIGHT,                           16#9316).
  -define(GL_MAX_FRAMEBUFFER_LAYERS,                           16#9317).
  -define(GL_MAX_FRAMEBUFFER_SAMPLES,                          16#9318).
-endif.

-ifndef(GL_ARB_internalformat_query2).
  -define(GL_ARB_internalformat_query2,                        1).

  %% reuse GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
  %% reuse GL_NUM_SAMPLE_COUNTS
  %% reuse GL_RENDERBUFFER
  %% reuse GL_SAMPLES
  %% reuse GL_TEXTURE_1D
  %% reuse GL_TEXTURE_1D_ARRAY
  %% reuse GL_TEXTURE_2D
  %% reuse GL_TEXTURE_2D_ARRAY
  %% reuse GL_TEXTURE_3D
  %% reuse GL_TEXTURE_CUBE_MAP
  %% reuse GL_TEXTURE_CUBE_MAP_ARRAY
  %% reuse GL_TEXTURE_RECTANGLE
  %% reuse GL_TEXTURE_BUFFER
  %% reuse GL_TEXTURE_2D_MULTISAMPLE
  %% reuse GL_TEXTURE_2D_MULTISAMPLE_ARRAY
  %% reuse GL_TEXTURE_COMPRESSED
  -define(GL_INTERNALFORMAT_SUPPORTED,                         16#826F).
  -define(GL_INTERNALFORMAT_PREFERRED,                         16#8270).
  -define(GL_INTERNALFORMAT_RED_SIZE,                          16#8271).
  -define(GL_INTERNALFORMAT_GREEN_SIZE,                        16#8272).
  -define(GL_INTERNALFORMAT_BLUE_SIZE,                         16#8273).
  -define(GL_INTERNALFORMAT_ALPHA_SIZE,                        16#8274).
  -define(GL_INTERNALFORMAT_DEPTH_SIZE,                        16#8275).
  -define(GL_INTERNALFORMAT_STENCIL_SIZE,                      16#8276).
  -define(GL_INTERNALFORMAT_SHARED_SIZE,                       16#8277).
  -define(GL_INTERNALFORMAT_RED_TYPE,                          16#8278).
  -define(GL_INTERNALFORMAT_GREEN_TYPE,                        16#8279).
  -define(GL_INTERNALFORMAT_BLUE_TYPE,                         16#827A).
  -define(GL_INTERNALFORMAT_ALPHA_TYPE,                        16#827B).
  -define(GL_INTERNALFORMAT_DEPTH_TYPE,                        16#827C).
  -define(GL_INTERNALFORMAT_STENCIL_TYPE,                      16#827D).
  -define(GL_MAX_WIDTH,                                        16#827E).
  -define(GL_MAX_HEIGHT,                                       16#827F).
  -define(GL_MAX_DEPTH,                                        16#8280).
  -define(GL_MAX_LAYERS,                                       16#8281).
  -define(GL_MAX_COMBINED_DIMENSIONS,                          16#8282).
  -define(GL_COLOR_COMPONENTS,                                 16#8283).
  -define(GL_DEPTH_COMPONENTS,                                 16#8284).
  -define(GL_STENCIL_COMPONENTS,                               16#8285).
  -define(GL_COLOR_RENDERABLE,                                 16#8286).
  -define(GL_DEPTH_RENDERABLE,                                 16#8287).
  -define(GL_STENCIL_RENDERABLE,                               16#8288).
  -define(GL_FRAMEBUFFER_RENDERABLE,                           16#8289).
  -define(GL_FRAMEBUFFER_RENDERABLE_LAYERED,                   16#828A).
  -define(GL_FRAMEBUFFER_BLEND,                                16#828B).
  -define(GL_READ_PIXELS,                                      16#828C).
  -define(GL_READ_PIXELS_FORMAT,                               16#828D).
  -define(GL_READ_PIXELS_TYPE,                                 16#828E).
  -define(GL_TEXTURE_IMAGE_FORMAT,                             16#828F).
  -define(GL_TEXTURE_IMAGE_TYPE,                               16#8290).
  -define(GL_GET_TEXTURE_IMAGE_FORMAT,                         16#8291).
  -define(GL_GET_TEXTURE_IMAGE_TYPE,                           16#8292).
  -define(GL_MIPMAP,                                           16#8293).
  -define(GL_MANUAL_GENERATE_MIPMAP,                           16#8294).
  -define(GL_AUTO_GENERATE_MIPMAP,                             16#8295).
  -define(GL_COLOR_ENCODING,                                   16#8296).
  -define(GL_SRGB_READ,                                        16#8297).
  -define(GL_SRGB_WRITE,                                       16#8298).
  -define(GL_SRGB_DECODE_ARB,                                  16#8299).
  -define(GL_FILTER,                                           16#829A).
  -define(GL_VERTEX_TEXTURE,                                   16#829B).
  -define(GL_TESS_CONTROL_TEXTURE,                             16#829C).
  -define(GL_TESS_EVALUATION_TEXTURE,                          16#829D).
  -define(GL_GEOMETRY_TEXTURE,                                 16#829E).
  -define(GL_FRAGMENT_TEXTURE,                                 16#829F).
  -define(GL_COMPUTE_TEXTURE,                                  16#82A0).
  -define(GL_TEXTURE_SHADOW,                                   16#82A1).
  -define(GL_TEXTURE_GATHER,                                   16#82A2).
  -define(GL_TEXTURE_GATHER_SHADOW,                            16#82A3).
  -define(GL_SHADER_IMAGE_LOAD,                                16#82A4).
  -define(GL_SHADER_IMAGE_STORE,                               16#82A5).
  -define(GL_SHADER_IMAGE_ATOMIC,                              16#82A6).
  -define(GL_IMAGE_TEXEL_SIZE,                                 16#82A7).
  -define(GL_IMAGE_COMPATIBILITY_CLASS,                        16#82A8).
  -define(GL_IMAGE_PIXEL_FORMAT,                               16#82A9).
  -define(GL_IMAGE_PIXEL_TYPE,                                 16#82AA).
  -define(GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST,              16#82AC).
  -define(GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST,            16#82AD).
  -define(GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE,             16#82AE).
  -define(GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE,           16#82AF).
  -define(GL_TEXTURE_COMPRESSED_BLOCK_WIDTH,                   16#82B1).
  -define(GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT,                  16#82B2).
  -define(GL_TEXTURE_COMPRESSED_BLOCK_SIZE,                    16#82B3).
  -define(GL_CLEAR_BUFFER,                                     16#82B4).
  -define(GL_TEXTURE_VIEW,                                     16#82B5).
  -define(GL_VIEW_COMPATIBILITY_CLASS,                         16#82B6).
  -define(GL_FULL_SUPPORT,                                     16#82B7).
  -define(GL_CAVEAT_SUPPORT,                                   16#82B8).
  -define(GL_IMAGE_CLASS_4_X_32,                               16#82B9).
  -define(GL_IMAGE_CLASS_2_X_32,                               16#82BA).
  -define(GL_IMAGE_CLASS_1_X_32,                               16#82BB).
  -define(GL_IMAGE_CLASS_4_X_16,                               16#82BC).
  -define(GL_IMAGE_CLASS_2_X_16,                               16#82BD).
  -define(GL_IMAGE_CLASS_1_X_16,                               16#82BE).
  -define(GL_IMAGE_CLASS_4_X_8,                                16#82BF).
  -define(GL_IMAGE_CLASS_2_X_8,                                16#82C0).
  -define(GL_IMAGE_CLASS_1_X_8,                                16#82C1).
  -define(GL_IMAGE_CLASS_11_11_10,                             16#82C2).
  -define(GL_IMAGE_CLASS_10_10_10_2,                           16#82C3).
  -define(GL_VIEW_CLASS_128_BITS,                              16#82C4).
  -define(GL_VIEW_CLASS_96_BITS,                               16#82C5).
  -define(GL_VIEW_CLASS_64_BITS,                               16#82C6).
  -define(GL_VIEW_CLASS_48_BITS,                               16#82C7).
  -define(GL_VIEW_CLASS_32_BITS,                               16#82C8).
  -define(GL_VIEW_CLASS_24_BITS,                               16#82C9).
  -define(GL_VIEW_CLASS_16_BITS,                               16#82CA).
  -define(GL_VIEW_CLASS_8_BITS,                                16#82CB).
  -define(GL_VIEW_CLASS_S3TC_DXT1_RGB,                         16#82CC).
  -define(GL_VIEW_CLASS_S3TC_DXT1_RGBA,                        16#82CD).
  -define(GL_VIEW_CLASS_S3TC_DXT3_RGBA,                        16#82CE).
  -define(GL_VIEW_CLASS_S3TC_DXT5_RGBA,                        16#82CF).
  -define(GL_VIEW_CLASS_RGTC1_RED,                             16#82D0).
  -define(GL_VIEW_CLASS_RGTC2_RG,                              16#82D1).
  -define(GL_VIEW_CLASS_BPTC_UNORM,                            16#82D2).
  -define(GL_VIEW_CLASS_BPTC_FLOAT,                            16#82D3).
-endif.

-ifndef(GL_ARB_invalidate_subdata).
  -define(GL_ARB_invalidate_subdata,                           1).

-endif.

-ifndef(GL_ARB_multi_draw_indirect).
  -define(GL_ARB_multi_draw_indirect,                          1).

-endif.

-ifndef(GL_ARB_program_interface_query).
  -define(GL_ARB_program_interface_query,                      1).

  -define(GL_UNIFORM,                                          16#92E1).
  -define(GL_UNIFORM_BLOCK,                                    16#92E2).
  -define(GL_PROGRAM_INPUT,                                    16#92E3).
  -define(GL_PROGRAM_OUTPUT,                                   16#92E4).
  -define(GL_BUFFER_VARIABLE,                                  16#92E5).
  -define(GL_SHADER_STORAGE_BLOCK,                             16#92E6).
  %% reuse GL_ATOMIC_COUNTER_BUFFER
  -define(GL_VERTEX_SUBROUTINE,                                16#92E8).
  -define(GL_TESS_CONTROL_SUBROUTINE,                          16#92E9).
  -define(GL_TESS_EVALUATION_SUBROUTINE,                       16#92EA).
  -define(GL_GEOMETRY_SUBROUTINE,                              16#92EB).
  -define(GL_FRAGMENT_SUBROUTINE,                              16#92EC).
  -define(GL_COMPUTE_SUBROUTINE,                               16#92ED).
  -define(GL_VERTEX_SUBROUTINE_UNIFORM,                        16#92EE).
  -define(GL_TESS_CONTROL_SUBROUTINE_UNIFORM,                  16#92EF).
  -define(GL_TESS_EVALUATION_SUBROUTINE_UNIFORM,               16#92F0).
  -define(GL_GEOMETRY_SUBROUTINE_UNIFORM,                      16#92F1).
  -define(GL_FRAGMENT_SUBROUTINE_UNIFORM,                      16#92F2).
  -define(GL_COMPUTE_SUBROUTINE_UNIFORM,                       16#92F3).
  -define(GL_TRANSFORM_FEEDBACK_VARYING,                       16#92F4).
  -define(GL_ACTIVE_RESOURCES,                                 16#92F5).
  -define(GL_MAX_NAME_LENGTH,                                  16#92F6).
  -define(GL_MAX_NUM_ACTIVE_VARIABLES,                         16#92F7).
  -define(GL_MAX_NUM_COMPATIBLE_SUBROUTINES,                   16#92F8).
  -define(GL_NAME_LENGTH,                                      16#92F9).
  -define(GL_TYPE,                                             16#92FA).
  -define(GL_ARRAY_SIZE,                                       16#92FB).
  -define(GL_OFFSET,                                           16#92FC).
  -define(GL_BLOCK_INDEX,                                      16#92FD).
  -define(GL_ARRAY_STRIDE,                                     16#92FE).
  -define(GL_MATRIX_STRIDE,                                    16#92FF).
  -define(GL_IS_ROW_MAJOR,                                     16#9300).
  -define(GL_ATOMIC_COUNTER_BUFFER_INDEX,                      16#9301).
  -define(GL_BUFFER_BINDING,                                   16#9302).
  -define(GL_BUFFER_DATA_SIZE,                                 16#9303).
  -define(GL_NUM_ACTIVE_VARIABLES,                             16#9304).
  -define(GL_ACTIVE_VARIABLES,                                 16#9305).
  -define(GL_REFERENCED_BY_VERTEX_SHADER,                      16#9306).
  -define(GL_REFERENCED_BY_TESS_CONTROL_SHADER,                16#9307).
  -define(GL_REFERENCED_BY_TESS_EVALUATION_SHADER,             16#9308).
  -define(GL_REFERENCED_BY_GEOMETRY_SHADER,                    16#9309).
  -define(GL_REFERENCED_BY_FRAGMENT_SHADER,                    16#930A).
  -define(GL_REFERENCED_BY_COMPUTE_SHADER,                     16#930B).
  -define(GL_TOP_LEVEL_ARRAY_SIZE,                             16#930C).
  -define(GL_TOP_LEVEL_ARRAY_STRIDE,                           16#930D).
  -define(GL_LOCATION,                                         16#930E).
  -define(GL_LOCATION_INDEX,                                   16#930F).
  -define(GL_IS_PER_PATCH,                                     16#92E7).
  %% reuse GL_NUM_COMPATIBLE_SUBROUTINES
  %% reuse GL_COMPATIBLE_SUBROUTINES
-endif.

-ifndef(GL_ARB_robust_buffer_access_behavior).
  -define(GL_ARB_robust_buffer_access_behavior,                1).


-endif.

-ifndef(GL_ARB_shader_image_size).
  -define(GL_ARB_shader_image_size,                            1).


-endif.

-ifndef(GL_ARB_shader_storage_buffer_object).
  -define(GL_ARB_shader_storage_buffer_object,                 1).

  -define(GL_SHADER_STORAGE_BUFFER,                            16#90D2).
  -define(GL_SHADER_STORAGE_BUFFER_BINDING,                    16#90D3).
  -define(GL_SHADER_STORAGE_BUFFER_START,                      16#90D4).
  -define(GL_SHADER_STORAGE_BUFFER_SIZE,                       16#90D5).
  -define(GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS,                 16#90D6).
  -define(GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS,               16#90D7).
  -define(GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS,           16#90D8).
  -define(GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS,        16#90D9).
  -define(GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS,               16#90DA).
  -define(GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS,                16#90DB).
  -define(GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS,               16#90DC).
  -define(GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS,               16#90DD).
  -define(GL_MAX_SHADER_STORAGE_BLOCK_SIZE,                    16#90DE).
  -define(GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT,           16#90DF).
  -define(GL_SHADER_STORAGE_BARRIER_BIT,                       16#2000).
  -define(GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES,             ?GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS).
  %% reuse GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
-endif.

-ifndef(GL_ARB_stencil_texturing).
  -define(GL_ARB_stencil_texturing,                            1).

  -define(GL_DEPTH_STENCIL_TEXTURE_MODE,                       16#90EA).
-endif.

-ifndef(GL_ARB_texture_buffer_range).
  -define(GL_ARB_texture_buffer_range,                         1).

  -define(GL_TEXTURE_BUFFER_OFFSET,                            16#919D).
  -define(GL_TEXTURE_BUFFER_SIZE,                              16#919E).
  -define(GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT,                  16#919F).
-endif.

-ifndef(GL_ARB_texture_query_levels).
  -define(GL_ARB_texture_query_levels,                         1).

-endif.

-ifndef(GL_ARB_texture_storage_multisample).
  -define(GL_ARB_texture_storage_multisample,                  1).

-endif.
