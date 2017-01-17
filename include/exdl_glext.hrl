%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_glext.hrl,v 1.7 2005/06/29 14:45:39 dgud Exp $
%%

%%%% Version 

%%%% Extensions 

-define(GL_ARB_imaging,                                        1).
-define(GL_ARB_multitexture,                                   1).

%%% OpenGL v1.2 and later

%%%% Current version at http://oss.sgi.com/projects/ogl-sample/registry/ 

-define(GL_GLEXT_VERSION,                                      86).

%%%% GL types for "half" precision lpar s10e5 rpar float data in host memory

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
  -define(GL_RESCALE_NORMAL,                                   16#803A).
  -define(GL_LIGHT_MODEL_COLOR_CONTROL,                        16#81F8).
  -define(GL_SINGLE_COLOR,                                     16#81F9).
  -define(GL_SEPARATE_SPECULAR_COLOR,                          16#81FA).
  -define(GL_ALIASED_POINT_SIZE_RANGE,                         16#846D).
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
  -define(GL_CONVOLUTION_1D,                                   16#8010).
  -define(GL_CONVOLUTION_2D,                                   16#8011).
  -define(GL_SEPARABLE_2D,                                     16#8012).
  -define(GL_CONVOLUTION_BORDER_MODE,                          16#8013).
  -define(GL_CONVOLUTION_FILTER_SCALE,                         16#8014).
  -define(GL_CONVOLUTION_FILTER_BIAS,                          16#8015).
  -define(GL_REDUCE,                                           16#8016).
  -define(GL_CONVOLUTION_FORMAT,                               16#8017).
  -define(GL_CONVOLUTION_WIDTH,                                16#8018).
  -define(GL_CONVOLUTION_HEIGHT,                               16#8019).
  -define(GL_MAX_CONVOLUTION_WIDTH,                            16#801A).
  -define(GL_MAX_CONVOLUTION_HEIGHT,                           16#801B).
  -define(GL_POST_CONVOLUTION_RED_SCALE,                       16#801C).
  -define(GL_POST_CONVOLUTION_GREEN_SCALE,                     16#801D).
  -define(GL_POST_CONVOLUTION_BLUE_SCALE,                      16#801E).
  -define(GL_POST_CONVOLUTION_ALPHA_SCALE,                     16#801F).
  -define(GL_POST_CONVOLUTION_RED_BIAS,                        16#8020).
  -define(GL_POST_CONVOLUTION_GREEN_BIAS,                      16#8021).
  -define(GL_POST_CONVOLUTION_BLUE_BIAS,                       16#8022).
  -define(GL_POST_CONVOLUTION_ALPHA_BIAS,                      16#8023).
  -define(GL_HISTOGRAM,                                        16#8024).
  -define(GL_PROXY_HISTOGRAM,                                  16#8025).
  -define(GL_HISTOGRAM_WIDTH,                                  16#8026).
  -define(GL_HISTOGRAM_FORMAT,                                 16#8027).
  -define(GL_HISTOGRAM_RED_SIZE,                               16#8028).
  -define(GL_HISTOGRAM_GREEN_SIZE,                             16#8029).
  -define(GL_HISTOGRAM_BLUE_SIZE,                              16#802A).
  -define(GL_HISTOGRAM_ALPHA_SIZE,                             16#802B).
  -define(GL_HISTOGRAM_LUMINANCE_SIZE,                         16#802C).
  -define(GL_HISTOGRAM_SINK,                                   16#802D).
  -define(GL_MINMAX,                                           16#802E).
  -define(GL_MINMAX_FORMAT,                                    16#802F).
  -define(GL_MINMAX_SINK,                                      16#8030).
  -define(GL_TABLE_TOO_LARGE,                                  16#8031).
  -define(GL_COLOR_MATRIX,                                     16#80B1).
  -define(GL_COLOR_MATRIX_STACK_DEPTH,                         16#80B2).
  -define(GL_MAX_COLOR_MATRIX_STACK_DEPTH,                     16#80B3).
  -define(GL_POST_COLOR_MATRIX_RED_SCALE,                      16#80B4).
  -define(GL_POST_COLOR_MATRIX_GREEN_SCALE,                    16#80B5).
  -define(GL_POST_COLOR_MATRIX_BLUE_SCALE,                     16#80B6).
  -define(GL_POST_COLOR_MATRIX_ALPHA_SCALE,                    16#80B7).
  -define(GL_POST_COLOR_MATRIX_RED_BIAS,                       16#80B8).
  -define(GL_POST_COLOR_MATRIX_GREEN_BIAS,                     16#80B9).
  -define(GL_POST_COLOR_MATRIX_BLUE_BIAS,                      16#80BA).
  -define(GL_POST_COLOR_MATRIX_ALPHA_BIAS,                     16#80BB).
  -define(GL_COLOR_TABLE,                                      16#80D0).
  -define(GL_POST_CONVOLUTION_COLOR_TABLE,                     16#80D1).
  -define(GL_POST_COLOR_MATRIX_COLOR_TABLE,                    16#80D2).
  -define(GL_PROXY_COLOR_TABLE,                                16#80D3).
  -define(GL_PROXY_POST_CONVOLUTION_COLOR_TABLE,               16#80D4).
  -define(GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE,              16#80D5).
  -define(GL_COLOR_TABLE_SCALE,                                16#80D6).
  -define(GL_COLOR_TABLE_BIAS,                                 16#80D7).
  -define(GL_COLOR_TABLE_FORMAT,                               16#80D8).
  -define(GL_COLOR_TABLE_WIDTH,                                16#80D9).
  -define(GL_COLOR_TABLE_RED_SIZE,                             16#80DA).
  -define(GL_COLOR_TABLE_GREEN_SIZE,                           16#80DB).
  -define(GL_COLOR_TABLE_BLUE_SIZE,                            16#80DC).
  -define(GL_COLOR_TABLE_ALPHA_SIZE,                           16#80DD).
  -define(GL_COLOR_TABLE_LUMINANCE_SIZE,                       16#80DE).
  -define(GL_COLOR_TABLE_INTENSITY_SIZE,                       16#80DF).
  -define(GL_CONSTANT_BORDER,                                  16#8151).
  -define(GL_REPLICATE_BORDER,                                 16#8153).
  -define(GL_CONVOLUTION_BORDER_COLOR,                         16#8154).
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
  -define(GL_CLIENT_ACTIVE_TEXTURE,                            16#84E1).
  -define(GL_MAX_TEXTURE_UNITS,                                16#84E2).
  -define(GL_TRANSPOSE_MODELVIEW_MATRIX,                       16#84E3).
  -define(GL_TRANSPOSE_PROJECTION_MATRIX,                      16#84E4).
  -define(GL_TRANSPOSE_TEXTURE_MATRIX,                         16#84E5).
  -define(GL_TRANSPOSE_COLOR_MATRIX,                           16#84E6).
  -define(GL_MULTISAMPLE_BIT,                                  16#20000000).
  -define(GL_NORMAL_MAP,                                       16#8511).
  -define(GL_REFLECTION_MAP,                                   16#8512).
  -define(GL_COMPRESSED_ALPHA,                                 16#84E9).
  -define(GL_COMPRESSED_LUMINANCE,                             16#84EA).
  -define(GL_COMPRESSED_LUMINANCE_ALPHA,                       16#84EB).
  -define(GL_COMPRESSED_INTENSITY,                             16#84EC).
% -define(GL_CLAMP_TO_BORDER_SGIS,                             16#812D).
  -define(GL_COMBINE,                                          16#8570).
  -define(GL_COMBINE_RGB,                                      16#8571).
  -define(GL_COMBINE_ALPHA,                                    16#8572).
  -define(GL_SOURCE0_RGB,                                      16#8580).
  -define(GL_SOURCE1_RGB,                                      16#8581).
  -define(GL_SOURCE2_RGB,                                      16#8582).
  -define(GL_SOURCE0_ALPHA,                                    16#8588).
  -define(GL_SOURCE1_ALPHA,                                    16#8589).
  -define(GL_SOURCE2_ALPHA,                                    16#858A).
  -define(GL_OPERAND0_RGB,                                     16#8590).
  -define(GL_OPERAND1_RGB,                                     16#8591).
  -define(GL_OPERAND2_RGB,                                     16#8592).
  -define(GL_OPERAND0_ALPHA,                                   16#8598).
  -define(GL_OPERAND1_ALPHA,                                   16#8599).
  -define(GL_OPERAND2_ALPHA,                                   16#859A).
  -define(GL_RGB_SCALE,                                        16#8573).
  -define(GL_ADD_SIGNED,                                       16#8574).
  -define(GL_INTERPOLATE,                                      16#8575).
  -define(GL_SUBTRACT,                                         16#84E7).
  -define(GL_CONSTANT,                                         16#8576).
  -define(GL_PRIMARY_COLOR,                                    16#8577).
  -define(GL_PREVIOUS,                                         16#8578).
  -define(GL_DOT3_RGB,                                         16#86AE).
  -define(GL_DOT3_RGBA,                                        16#86AF).
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
  -define(GL_DEPTH_TEXTURE_MODE,                               16#884B).
  -define(GL_TEXTURE_COMPARE_MODE,                             16#884C).
  -define(GL_TEXTURE_COMPARE_FUNC,                             16#884D).
  -define(GL_POINT_SIZE_MIN,                                   16#8126).
  -define(GL_POINT_SIZE_MAX,                                   16#8127).
  -define(GL_POINT_DISTANCE_ATTENUATION,                       16#8129).
  -define(GL_GENERATE_MIPMAP,                                  16#8191).
  -define(GL_GENERATE_MIPMAP_HINT,                             16#8192).
  -define(GL_FOG_COORDINATE_SOURCE,                            16#8450).
  -define(GL_FOG_COORDINATE,                                   16#8451).
  -define(GL_FRAGMENT_DEPTH,                                   16#8452).
  -define(GL_CURRENT_FOG_COORDINATE,                           16#8453).
  -define(GL_FOG_COORDINATE_ARRAY_TYPE,                        16#8454).
  -define(GL_FOG_COORDINATE_ARRAY_STRIDE,                      16#8455).
  -define(GL_FOG_COORDINATE_ARRAY_POINTER,                     16#8456).
  -define(GL_FOG_COORDINATE_ARRAY,                             16#8457).
  -define(GL_COLOR_SUM,                                        16#8458).
  -define(GL_CURRENT_SECONDARY_COLOR,                          16#8459).
  -define(GL_SECONDARY_COLOR_ARRAY_SIZE,                       16#845A).
  -define(GL_SECONDARY_COLOR_ARRAY_TYPE,                       16#845B).
  -define(GL_SECONDARY_COLOR_ARRAY_STRIDE,                     16#845C).
  -define(GL_SECONDARY_COLOR_ARRAY_POINTER,                    16#845D).
  -define(GL_SECONDARY_COLOR_ARRAY,                            16#845E).
  -define(GL_TEXTURE_FILTER_CONTROL,                           16#8500).
  -define(GL_COMPARE_R_TO_TEXTURE,                             16#884E).
-endif.

%%%% GL types for handling large vertex buffer objects 
-ifndef(GL_VERSION_1_5).
  -define(GL_VERSION_1_5,                                      1).

  %% GL types for handling large vertex buffer objects
  -define(GLintptr,                                            32/signed-native).
  -define(GLsizeiptr,                                          32/signed-native).

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
  -define(GL_VERTEX_ARRAY_BUFFER_BINDING,                      16#8896).
  -define(GL_NORMAL_ARRAY_BUFFER_BINDING,                      16#8897).
  -define(GL_COLOR_ARRAY_BUFFER_BINDING,                       16#8898).
  -define(GL_INDEX_ARRAY_BUFFER_BINDING,                       16#8899).
  -define(GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING,               16#889A).
  -define(GL_EDGE_FLAG_ARRAY_BUFFER_BINDING,                   16#889B).
  -define(GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING,             16#889C).
  -define(GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING,              16#889D).
  -define(GL_WEIGHT_ARRAY_BUFFER_BINDING,                      16#889E).
  -define(GL_FOG_COORD_SRC,                                    ?GL_FOG_COORDINATE_SOURCE).
  -define(GL_FOG_COORD,                                        ?GL_FOG_COORDINATE).
  -define(GL_CURRENT_FOG_COORD,                                ?GL_CURRENT_FOG_COORDINATE).
  -define(GL_FOG_COORD_ARRAY_TYPE,                             ?GL_FOG_COORDINATE_ARRAY_TYPE).
  -define(GL_FOG_COORD_ARRAY_STRIDE,                           ?GL_FOG_COORDINATE_ARRAY_STRIDE).
  -define(GL_FOG_COORD_ARRAY_POINTER,                          ?GL_FOG_COORDINATE_ARRAY_POINTER).
  -define(GL_FOG_COORD_ARRAY,                                  ?GL_FOG_COORDINATE_ARRAY).
  -define(GL_FOG_COORD_ARRAY_BUFFER_BINDING,                   ?GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING).
  -define(GL_SRC0_RGB,                                         ?GL_SOURCE0_RGB).
  -define(GL_SRC1_RGB,                                         ?GL_SOURCE1_RGB).
  -define(GL_SRC2_RGB,                                         ?GL_SOURCE2_RGB).
  -define(GL_SRC0_ALPHA,                                       ?GL_SOURCE0_ALPHA).
  -define(GL_SRC1_ALPHA,                                       ?GL_SOURCE1_ALPHA).
  -define(GL_SRC2_ALPHA,                                       ?GL_SOURCE2_ALPHA).
-endif.

%%%% GL type for program/shader text 
-ifndef(GL_VERSION_2_0).
  -define(GL_VERSION_2_0,                                      1).

  %% GL type for program/shader text
  -define(GLchar,                                              8/signed).

  -define(GL_BLEND_EQUATION_RGB,                               16#8809).
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
  -define(GL_VERTEX_PROGRAM_TWO_SIDE,                          16#8643).
  -define(GL_POINT_SPRITE,                                     16#8861).
  -define(GL_COORD_REPLACE,                                    16#8862).
  -define(GL_MAX_TEXTURE_COORDS,                               16#8871).
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
  -define(GL_CURRENT_RASTER_SECONDARY_COLOR,                   16#845F).
  -define(GL_SLUMINANCE_ALPHA,                                 16#8C44).
  -define(GL_SLUMINANCE8_ALPHA8,                               16#8C45).
  -define(GL_SLUMINANCE,                                       16#8C46).
  -define(GL_SLUMINANCE8,                                      16#8C47).
  -define(GL_COMPRESSED_SLUMINANCE,                            16#8C4A).
  -define(GL_COMPRESSED_SLUMINANCE_ALPHA,                      16#8C4B).
-endif.

-ifndef(GL_VERSION_3_0).
  -define(GL_VERSION_3_0,                                      1).

  -define(GL_COMPARE_REF_TO_TEXTURE,                           ?16#884E).
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
%% reuse tokens from ARB_depth_buffer_float
%% reuse GL_DEPTH_COMPONENT32F
%% reuse GL_DEPTH32F_STENCIL8
%% reuse GL_FLOAT_32_UNSIGNED_INT_24_8_REV
%% reuse tokens from ARB_framebuffer_object
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
%% reuse tokens from ARB_framebuffer_sRGB
%% reuse GL_FRAMEBUFFER_SRGB
%% reuse tokens from ARB_half_float_vertex
%% reuse GL_HALF_FLOAT
%% reuse tokens from ARB_map_buffer_range
%% reuse GL_MAP_READ_BIT
%% reuse GL_MAP_WRITE_BIT
%% reuse GL_MAP_INVALIDATE_RANGE_BIT
%% reuse GL_MAP_INVALIDATE_BUFFER_BIT
%% reuse GL_MAP_FLUSH_EXPLICIT_BIT
%% reuse GL_MAP_UNSYNCHRONIZED_BIT
%% reuse tokens from ARB_texture_compression_rgtc
%% reuse GL_COMPRESSED_RED_RGTC1
%% reuse GL_COMPRESSED_SIGNED_RED_RGTC1
%% reuse GL_COMPRESSED_RG_RGTC2
%% reuse GL_COMPRESSED_SIGNED_RG_RGTC2
%% reuse tokens from ARB_texture_rg
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
%% reuse tokens from ARB_vertex_array_object
%% reuse GL_VERTEX_ARRAY_BINDING
  -define(GL_CLAMP_VERTEX_COLOR,                               16#891A).
  -define(GL_CLAMP_FRAGMENT_COLOR,                             16#891B).
  -define(GL_ALPHA_INTEGER,                                    16#8D97).
%% Reuse tokens from ARB_framebuffer_object
%% reuse GL_TEXTURE_LUMINANCE_TYPE
%% reuse GL_TEXTURE_INTENSITY_TYPE
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

-ifndef(GL_ARB_multitexture).
  -define(GL_ARB_multitexture,                                 1).

  -define(GL_TEXTURE0_ARB,                                     16#84C0).
  -define(GL_TEXTURE1_ARB,                                     16#84C1).
  -define(GL_TEXTURE2_ARB,                                     16#84C2).
  -define(GL_TEXTURE3_ARB,                                     16#84C3).
  -define(GL_TEXTURE4_ARB,                                     16#84C4).
  -define(GL_TEXTURE5_ARB,                                     16#84C5).
  -define(GL_TEXTURE6_ARB,                                     16#84C6).
  -define(GL_TEXTURE7_ARB,                                     16#84C7).
  -define(GL_TEXTURE8_ARB,                                     16#84C8).
  -define(GL_TEXTURE9_ARB,                                     16#84C9).
  -define(GL_TEXTURE10_ARB,                                    16#84CA).
  -define(GL_TEXTURE11_ARB,                                    16#84CB).
  -define(GL_TEXTURE12_ARB,                                    16#84CC).
  -define(GL_TEXTURE13_ARB,                                    16#84CD).
  -define(GL_TEXTURE14_ARB,                                    16#84CE).
  -define(GL_TEXTURE15_ARB,                                    16#84CF).
  -define(GL_TEXTURE16_ARB,                                    16#84D0).
  -define(GL_TEXTURE17_ARB,                                    16#84D1).
  -define(GL_TEXTURE18_ARB,                                    16#84D2).
  -define(GL_TEXTURE19_ARB,                                    16#84D3).
  -define(GL_TEXTURE20_ARB,                                    16#84D4).
  -define(GL_TEXTURE21_ARB,                                    16#84D5).
  -define(GL_TEXTURE22_ARB,                                    16#84D6).
  -define(GL_TEXTURE23_ARB,                                    16#84D7).
  -define(GL_TEXTURE24_ARB,                                    16#84D8).
  -define(GL_TEXTURE25_ARB,                                    16#84D9).
  -define(GL_TEXTURE26_ARB,                                    16#84DA).
  -define(GL_TEXTURE27_ARB,                                    16#84DB).
  -define(GL_TEXTURE28_ARB,                                    16#84DC).
  -define(GL_TEXTURE29_ARB,                                    16#84DD).
  -define(GL_TEXTURE30_ARB,                                    16#84DE).
  -define(GL_TEXTURE31_ARB,                                    16#84DF).
  -define(GL_ACTIVE_TEXTURE_ARB,                               16#84E0).
  -define(GL_CLIENT_ACTIVE_TEXTURE_ARB,                        16#84E1).
  -define(GL_MAX_TEXTURE_UNITS_ARB,                            16#84E2).
-endif.

-ifndef(GL_ARB_transpose_matrix).
  -define(GL_ARB_transpose_matrix,                             1).

  -define(GL_TRANSPOSE_MODELVIEW_MATRIX_ARB,                   16#84E3).
  -define(GL_TRANSPOSE_PROJECTION_MATRIX_ARB,                  16#84E4).
  -define(GL_TRANSPOSE_TEXTURE_MATRIX_ARB,                     16#84E5).
  -define(GL_TRANSPOSE_COLOR_MATRIX_ARB,                       16#84E6).
-endif.

-ifndef(GL_ARB_multisample).
  -define(GL_ARB_multisample,                                  1).

  -define(GL_MULTISAMPLE_ARB,                                  16#809D).
  -define(GL_SAMPLE_ALPHA_TO_COVERAGE_ARB,                     16#809E).
  -define(GL_SAMPLE_ALPHA_TO_ONE_ARB,                          16#809F).
  -define(GL_SAMPLE_COVERAGE_ARB,                              16#80A0).
  -define(GL_SAMPLE_BUFFERS_ARB,                               16#80A8).
  -define(GL_SAMPLES_ARB,                                      16#80A9).
  -define(GL_SAMPLE_COVERAGE_VALUE_ARB,                        16#80AA).
  -define(GL_SAMPLE_COVERAGE_INVERT_ARB,                       16#80AB).
  -define(GL_MULTISAMPLE_BIT_ARB,                              16#20000000).
-endif.

-ifndef(GL_ARB_texture_env_add).
  -define(GL_ARB_texture_env_add,                              1).

-endif.

-ifndef(GL_ARB_texture_cube_map).
  -define(GL_ARB_texture_cube_map,                             1).

  -define(GL_NORMAL_MAP_ARB,                                   16#8511).
  -define(GL_REFLECTION_MAP_ARB,                               16#8512).
  -define(GL_TEXTURE_CUBE_MAP_ARB,                             16#8513).
  -define(GL_TEXTURE_BINDING_CUBE_MAP_ARB,                     16#8514).
  -define(GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB,                  16#8515).
  -define(GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB,                  16#8516).
  -define(GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB,                  16#8517).
  -define(GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB,                  16#8518).
  -define(GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB,                  16#8519).
  -define(GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB,                  16#851A).
  -define(GL_PROXY_TEXTURE_CUBE_MAP_ARB,                       16#851B).
  -define(GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB,                    16#851C).
-endif.

-ifndef(GL_ARB_texture_compression).
  -define(GL_ARB_texture_compression,                          1).

  -define(GL_COMPRESSED_ALPHA_ARB,                             16#84E9).
  -define(GL_COMPRESSED_LUMINANCE_ARB,                         16#84EA).
  -define(GL_COMPRESSED_LUMINANCE_ALPHA_ARB,                   16#84EB).
  -define(GL_COMPRESSED_INTENSITY_ARB,                         16#84EC).
  -define(GL_COMPRESSED_RGB_ARB,                               16#84ED).
  -define(GL_COMPRESSED_RGBA_ARB,                              16#84EE).
  -define(GL_TEXTURE_COMPRESSION_HINT_ARB,                     16#84EF).
  -define(GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB,                16#86A0).
  -define(GL_TEXTURE_COMPRESSED_ARB,                           16#86A1).
  -define(GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB,               16#86A2).
  -define(GL_COMPRESSED_TEXTURE_FORMATS_ARB,                   16#86A3).
-endif.

-ifndef(GL_ARB_texture_border_clamp).
  -define(GL_ARB_texture_border_clamp,                         1).

  -define(GL_CLAMP_TO_BORDER_ARB,                              16#812D).
-endif.

-ifndef(GL_ARB_point_parameters).
  -define(GL_ARB_point_parameters,                             1).

  -define(GL_POINT_SIZE_MIN_ARB,                               16#8126).
  -define(GL_POINT_SIZE_MAX_ARB,                               16#8127).
  -define(GL_POINT_FADE_THRESHOLD_SIZE_ARB,                    16#8128).
  -define(GL_POINT_DISTANCE_ATTENUATION_ARB,                   16#8129).
-endif.

-ifndef(GL_ARB_vertex_blend).
  -define(GL_ARB_vertex_blend,                                 1).

  -define(GL_MAX_VERTEX_UNITS_ARB,                             16#86A4).
  -define(GL_MAX_VERTEX_UNITS,                                 16#86A4).
  -define(GL_ACTIVE_VERTEX_UNITS_ARB,                          16#86A5).
  -define(GL_ACTIVE_VERTEX_UNITS,                              16#86A5).
  -define(GL_WEIGHT_SUM_UNITY_ARB,                             16#86A6).
  -define(GL_WEIGHT_SUM_UNITY,                                 16#86A6).
  -define(GL_VERTEX_BLEND_ARB,                                 16#86A7).
  -define(GL_VERTEX_BLEND,                                     16#86A7).
  -define(GL_CURRENT_WEIGHT_ARB,                               16#86A8).
  -define(GL_CURRENT_WEIGHT,                                   16#86A8).
  -define(GL_WEIGHT_ARRAY_TYPE_ARB,                            16#86A9).
  -define(GL_WEIGHT_ARRAY_TYPE,                                16#86A9).
  -define(GL_WEIGHT_ARRAY_STRIDE_ARB,                          16#86AA).
  -define(GL_WEIGHT_ARRAY_STRIDE,                              16#86AA).
  -define(GL_WEIGHT_ARRAY_SIZE_ARB,                            16#86AB).
  -define(GL_WEIGHT_ARRAY_SIZE,                                16#86AB).
  -define(GL_WEIGHT_ARRAY_POINTER_ARB,                         16#86AC).
  -define(GL_WEIGHT_ARRAY_POINTER,                             16#86AC).
  -define(GL_WEIGHT_ARRAY_ARB,                                 16#86AD).
  -define(GL_WEIGHT_ARRAY,                                     16#86AD).
  -define(GL_MODELVIEW0_ARB,                                   16#1700).
  -define(GL_MODELVIEW0,                                       16#1700).
  -define(GL_MODELVIEW1_ARB,                                   16#850A).
  -define(GL_MODELVIEW1,                                       16#850A).
  -define(GL_MODELVIEW2_ARB,                                   16#8722).
  -define(GL_MODELVIEW2,                                       16#8722).
  -define(GL_MODELVIEW3_ARB,                                   16#8723).
  -define(GL_MODELVIEW3,                                       16#8723).
  -define(GL_MODELVIEW4_ARB,                                   16#8724).
  -define(GL_MODELVIEW4,                                       16#8724).
  -define(GL_MODELVIEW5_ARB,                                   16#8725).
  -define(GL_MODELVIEW5,                                       16#8725).
  -define(GL_MODELVIEW6_ARB,                                   16#8726).
  -define(GL_MODELVIEW6,                                       16#8726).
  -define(GL_MODELVIEW7_ARB,                                   16#8727).
  -define(GL_MODELVIEW7,                                       16#8727).
  -define(GL_MODELVIEW8_ARB,                                   16#8728).
  -define(GL_MODELVIEW8,                                       16#8728).
  -define(GL_MODELVIEW9_ARB,                                   16#8729).
  -define(GL_MODELVIEW9,                                       16#8729).
  -define(GL_MODELVIEW10_ARB,                                  16#872A).
  -define(GL_MODELVIEW10,                                      16#872A).
  -define(GL_MODELVIEW11_ARB,                                  16#872B).
  -define(GL_MODELVIEW11,                                      16#872B).
  -define(GL_MODELVIEW12_ARB,                                  16#872C).
  -define(GL_MODELVIEW12,                                      16#872C).
  -define(GL_MODELVIEW13_ARB,                                  16#872D).
  -define(GL_MODELVIEW13,                                      16#872D).
  -define(GL_MODELVIEW14_ARB,                                  16#872E).
  -define(GL_MODELVIEW14,                                      16#872E).
  -define(GL_MODELVIEW15_ARB,                                  16#872F).
  -define(GL_MODELVIEW15,                                      16#872F).
  -define(GL_MODELVIEW16_ARB,                                  16#8730).
  -define(GL_MODELVIEW16,                                      16#8730).
  -define(GL_MODELVIEW17_ARB,                                  16#8731).
  -define(GL_MODELVIEW17,                                      16#8731).
  -define(GL_MODELVIEW18_ARB,                                  16#8732).
  -define(GL_MODELVIEW18,                                      16#8732).
  -define(GL_MODELVIEW19_ARB,                                  16#8733).
  -define(GL_MODELVIEW19,                                      16#8733).
  -define(GL_MODELVIEW20_ARB,                                  16#8734).
  -define(GL_MODELVIEW20,                                      16#8734).
  -define(GL_MODELVIEW21_ARB,                                  16#8735).
  -define(GL_MODELVIEW21,                                      16#8735).
  -define(GL_MODELVIEW22_ARB,                                  16#8736).
  -define(GL_MODELVIEW22,                                      16#8736).
  -define(GL_MODELVIEW23_ARB,                                  16#8737).
  -define(GL_MODELVIEW23,                                      16#8737).
  -define(GL_MODELVIEW24_ARB,                                  16#8738).
  -define(GL_MODELVIEW24,                                      16#8738).
  -define(GL_MODELVIEW25_ARB,                                  16#8739).
  -define(GL_MODELVIEW25,                                      16#8739).
  -define(GL_MODELVIEW26_ARB,                                  16#873A).
  -define(GL_MODELVIEW26,                                      16#873A).
  -define(GL_MODELVIEW27_ARB,                                  16#873B).
  -define(GL_MODELVIEW27,                                      16#873B).
  -define(GL_MODELVIEW28_ARB,                                  16#873C).
  -define(GL_MODELVIEW28,                                      16#873C).
  -define(GL_MODELVIEW29_ARB,                                  16#873D).
  -define(GL_MODELVIEW29,                                      16#873D).
  -define(GL_MODELVIEW30_ARB,                                  16#873E).
  -define(GL_MODELVIEW30,                                      16#873E).
  -define(GL_MODELVIEW31_ARB,                                  16#873F).
  -define(GL_MODELVIEW31,                                      16#873F).
-endif.

-ifndef(GL_ARB_matrix_palette).
  -define(GL_ARB_matrix_palette,                               1).

  -define(GL_MATRIX_PALETTE_ARB,                               16#8840).
  -define(GL_MATRIX_PALETTE,                                   16#8840).
  -define(GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB,               16#8841).
  -define(GL_MAX_MATRIX_PALETTE_STACK_DEPTH,                   16#8841).
  -define(GL_MAX_PALETTE_MATRICES_ARB,                         16#8842).
  -define(GL_MAX_PALETTE_MATRICES,                             16#8842).
  -define(GL_CURRENT_PALETTE_MATRIX_ARB,                       16#8843).
  -define(GL_CURRENT_PALETTE_MATRIX,                           16#8843).
  -define(GL_MATRIX_INDEX_ARRAY_ARB,                           16#8844).
  -define(GL_MATRIX_INDEX_ARRAY,                               16#8844).
  -define(GL_CURRENT_MATRIX_INDEX_ARB,                         16#8845).
  -define(GL_CURRENT_MATRIX_INDEX,                             16#8845).
  -define(GL_MATRIX_INDEX_ARRAY_SIZE_ARB,                      16#8846).
  -define(GL_MATRIX_INDEX_ARRAY_SIZE,                          16#8846).
  -define(GL_MATRIX_INDEX_ARRAY_TYPE_ARB,                      16#8847).
  -define(GL_MATRIX_INDEX_ARRAY_TYPE,                          16#8847).
  -define(GL_MATRIX_INDEX_ARRAY_STRIDE_ARB,                    16#8848).
  -define(GL_MATRIX_INDEX_ARRAY_STRIDE,                        16#8848).
  -define(GL_MATRIX_INDEX_ARRAY_POINTER_ARB,                   16#8849).
  -define(GL_MATRIX_INDEX_ARRAY_POINTER,                       16#8849).
-endif.

-ifndef(GL_ARB_texture_env_combine).
  -define(GL_ARB_texture_env_combine,                          1).

  -define(GL_COMBINE_ARB,                                      16#8570).
  -define(GL_COMBINE_RGB_ARB,                                  16#8571).
  -define(GL_COMBINE_ALPHA_ARB,                                16#8572).
  -define(GL_SOURCE0_RGB_ARB,                                  16#8580).
  -define(GL_SOURCE1_RGB_ARB,                                  16#8581).
  -define(GL_SOURCE2_RGB_ARB,                                  16#8582).
  -define(GL_SOURCE0_ALPHA_ARB,                                16#8588).
  -define(GL_SOURCE1_ALPHA_ARB,                                16#8589).
  -define(GL_SOURCE2_ALPHA_ARB,                                16#858A).
  -define(GL_OPERAND0_RGB_ARB,                                 16#8590).
  -define(GL_OPERAND1_RGB_ARB,                                 16#8591).
  -define(GL_OPERAND2_RGB_ARB,                                 16#8592).
  -define(GL_OPERAND0_ALPHA_ARB,                               16#8598).
  -define(GL_OPERAND1_ALPHA_ARB,                               16#8599).
  -define(GL_OPERAND2_ALPHA_ARB,                               16#859A).
  -define(GL_RGB_SCALE_ARB,                                    16#8573).
  -define(GL_ADD_SIGNED_ARB,                                   16#8574).
  -define(GL_INTERPOLATE_ARB,                                  16#8575).
  -define(GL_SUBTRACT_ARB,                                     16#84E7).
  -define(GL_CONSTANT_ARB,                                     16#8576).
  -define(GL_PRIMARY_COLOR_ARB,                                16#8577).
  -define(GL_PREVIOUS_ARB,                                     16#8578).
-endif.

-ifndef(GL_ARB_texture_env_crossbar).
  -define(GL_ARB_texture_env_crossbar,                         1).

-endif.

-ifndef(GL_ARB_texture_env_dot3).
  -define(GL_ARB_texture_env_dot3,                             1).

  -define(GL_DOT3_RGB_ARB,                                     16#86AE).
  -define(GL_DOT3_RGBA_ARB,                                    16#86AF).
-endif.

-ifndef(GL_ARB_texture_mirrored_repeat).
  -define(GL_ARB_texture_mirrored_repeat,                      1).

  -define(GL_MIRRORED_REPEAT_ARB,                              16#8370).
-endif.

-ifndef(GL_ARB_depth_texture).
  -define(GL_ARB_depth_texture,                                1).

  -define(GL_DEPTH_COMPONENT16_ARB,                            16#81A5).
  -define(GL_DEPTH_COMPONENT24_ARB,                            16#81A6).
  -define(GL_DEPTH_COMPONENT32_ARB,                            16#81A7).
  -define(GL_TEXTURE_DEPTH_SIZE_ARB,                           16#884A).
  -define(GL_DEPTH_TEXTURE_MODE_ARB,                           16#884B).
-endif.

-ifndef(GL_ARB_shadow).
  -define(GL_ARB_shadow,                                       1).

  -define(GL_TEXTURE_COMPARE_MODE_ARB,                         16#884C).
  -define(GL_TEXTURE_COMPARE_FUNC_ARB,                         16#884D).
  -define(GL_COMPARE_R_TO_TEXTURE_ARB,                         16#884E).
-endif.

-ifndef(GL_ARB_shadow_ambient).
  -define(GL_ARB_shadow_ambient,                               1).

  -define(GL_TEXTURE_COMPARE_FAIL_VALUE_ARB,                   16#80BF).
  -define(GL_TEXTURE_COMPARE_FAIL_VALUE,                       16#80BF).
-endif.

-ifndef(GL_ARB_window_pos).
  -define(GL_ARB_window_pos,                                   1).

-endif.

-ifndef(GL_ARB_vertex_program).
  -define(GL_ARB_vertex_program,                               1).

  -define(GL_COLOR_SUM_ARB,                                    16#8458).
% -define(GL_COLOR_SUM,                                        16#8458).
  -define(GL_VERTEX_PROGRAM_ARB,                               16#8620).
  -define(GL_VERTEX_PROGRAM,                                   16#8620).
  -define(GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB,                  16#8622).
% -define(GL_VERTEX_ATTRIB_ARRAY_ENABLED,                      16#8622).
  -define(GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB,                     16#8623).
% -define(GL_VERTEX_ATTRIB_ARRAY_SIZE,                         16#8623).
  -define(GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB,                   16#8624).
% -define(GL_VERTEX_ATTRIB_ARRAY_STRIDE,                       16#8624).
  -define(GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB,                     16#8625).
% -define(GL_VERTEX_ATTRIB_ARRAY_TYPE,                         16#8625).
  -define(GL_CURRENT_VERTEX_ATTRIB_ARB,                        16#8626).
% -define(GL_CURRENT_VERTEX_ATTRIB,                            16#8626).
  -define(GL_PROGRAM_LENGTH_ARB,                               16#8627).
  -define(GL_PROGRAM_LENGTH,                                   16#8627).
  -define(GL_PROGRAM_STRING_ARB,                               16#8628).
  -define(GL_PROGRAM_STRING,                                   16#8628).
  -define(GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB,               16#862E).
  -define(GL_MAX_PROGRAM_MATRIX_STACK_DEPTH,                   16#862E).
  -define(GL_MAX_PROGRAM_MATRICES_ARB,                         16#862F).
  -define(GL_MAX_PROGRAM_MATRICES,                             16#862F).
  -define(GL_CURRENT_MATRIX_STACK_DEPTH_ARB,                   16#8640).
  -define(GL_CURRENT_MATRIX_STACK_DEPTH,                       16#8640).
  -define(GL_CURRENT_MATRIX_ARB,                               16#8641).
  -define(GL_CURRENT_MATRIX,                                   16#8641).
  -define(GL_VERTEX_PROGRAM_POINT_SIZE_ARB,                    16#8642).
% -define(GL_VERTEX_PROGRAM_POINT_SIZE,                        16#8642).
  -define(GL_VERTEX_PROGRAM_TWO_SIDE_ARB,                      16#8643).
% -define(GL_VERTEX_PROGRAM_TWO_SIDE,                          16#8643).
  -define(GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB,                  16#8645).
% -define(GL_VERTEX_ATTRIB_ARRAY_POINTER,                      16#8645).
  -define(GL_PROGRAM_ERROR_POSITION_ARB,                       16#864B).
  -define(GL_PROGRAM_ERROR_POSITION,                           16#864B).
  -define(GL_PROGRAM_BINDING_ARB,                              16#8677).
  -define(GL_PROGRAM_BINDING,                                  16#8677).
  -define(GL_MAX_VERTEX_ATTRIBS_ARB,                           16#8869).
% -define(GL_MAX_VERTEX_ATTRIBS,                               16#8869).
  -define(GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB,               16#886A).
% -define(GL_VERTEX_ATTRIB_ARRAY_NORMALIZED,                   16#886A).
  -define(GL_PROGRAM_ERROR_STRING_ARB,                         16#8874).
  -define(GL_PROGRAM_ERROR_STRING,                             16#8874).
  -define(GL_PROGRAM_FORMAT_ASCII_ARB,                         16#8875).
  -define(GL_PROGRAM_FORMAT_ASCII,                             16#8875).
  -define(GL_PROGRAM_FORMAT_ARB,                               16#8876).
  -define(GL_PROGRAM_FORMAT,                                   16#8876).
  -define(GL_PROGRAM_INSTRUCTIONS_ARB,                         16#88A0).
  -define(GL_PROGRAM_INSTRUCTIONS,                             16#88A0).
  -define(GL_MAX_PROGRAM_INSTRUCTIONS_ARB,                     16#88A1).
  -define(GL_MAX_PROGRAM_INSTRUCTIONS,                         16#88A1).
  -define(GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB,                  16#88A2).
  -define(GL_PROGRAM_NATIVE_INSTRUCTIONS,                      16#88A2).
  -define(GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB,              16#88A3).
  -define(GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS,                  16#88A3).
  -define(GL_PROGRAM_TEMPORARIES_ARB,                          16#88A4).
  -define(GL_PROGRAM_TEMPORARIES,                              16#88A4).
  -define(GL_MAX_PROGRAM_TEMPORARIES_ARB,                      16#88A5).
  -define(GL_MAX_PROGRAM_TEMPORARIES,                          16#88A5).
  -define(GL_PROGRAM_NATIVE_TEMPORARIES_ARB,                   16#88A6).
  -define(GL_PROGRAM_NATIVE_TEMPORARIES,                       16#88A6).
  -define(GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB,               16#88A7).
  -define(GL_MAX_PROGRAM_NATIVE_TEMPORARIES,                   16#88A7).
  -define(GL_PROGRAM_PARAMETERS_ARB,                           16#88A8).
  -define(GL_PROGRAM_PARAMETERS,                               16#88A8).
  -define(GL_MAX_PROGRAM_PARAMETERS_ARB,                       16#88A9).
  -define(GL_MAX_PROGRAM_PARAMETERS,                           16#88A9).
  -define(GL_PROGRAM_NATIVE_PARAMETERS_ARB,                    16#88AA).
  -define(GL_PROGRAM_NATIVE_PARAMETERS,                        16#88AA).
  -define(GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB,                16#88AB).
  -define(GL_MAX_PROGRAM_NATIVE_PARAMETERS,                    16#88AB).
  -define(GL_PROGRAM_ATTRIBS_ARB,                              16#88AC).
  -define(GL_PROGRAM_ATTRIBS,                                  16#88AC).
  -define(GL_MAX_PROGRAM_ATTRIBS_ARB,                          16#88AD).
  -define(GL_MAX_PROGRAM_ATTRIBS,                              16#88AD).
  -define(GL_PROGRAM_NATIVE_ATTRIBS_ARB,                       16#88AE).
  -define(GL_PROGRAM_NATIVE_ATTRIBS,                           16#88AE).
  -define(GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB,                   16#88AF).
  -define(GL_MAX_PROGRAM_NATIVE_ATTRIBS,                       16#88AF).
  -define(GL_PROGRAM_ADDRESS_REGISTERS_ARB,                    16#88B0).
  -define(GL_PROGRAM_ADDRESS_REGISTERS,                        16#88B0).
  -define(GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB,                16#88B1).
  -define(GL_MAX_PROGRAM_ADDRESS_REGISTERS,                    16#88B1).
  -define(GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB,             16#88B2).
  -define(GL_PROGRAM_NATIVE_ADDRESS_REGISTERS,                 16#88B2).
  -define(GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB,         16#88B3).
  -define(GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS,             16#88B3).
  -define(GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB,                 16#88B4).
  -define(GL_MAX_PROGRAM_LOCAL_PARAMETERS,                     16#88B4).
  -define(GL_MAX_PROGRAM_ENV_PARAMETERS_ARB,                   16#88B5).
  -define(GL_MAX_PROGRAM_ENV_PARAMETERS,                       16#88B5).
  -define(GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB,                  16#88B6).
  -define(GL_PROGRAM_UNDER_NATIVE_LIMITS,                      16#88B6).
  -define(GL_TRANSPOSE_CURRENT_MATRIX_ARB,                     16#88B7).
  -define(GL_TRANSPOSE_CURRENT_MATRIX,                         16#88B7).
  -define(GL_MATRIX0_ARB,                                      16#88C0).
  -define(GL_MATRIX0,                                          16#88C0).
  -define(GL_MATRIX1_ARB,                                      16#88C1).
  -define(GL_MATRIX1,                                          16#88C1).
  -define(GL_MATRIX2_ARB,                                      16#88C2).
  -define(GL_MATRIX2,                                          16#88C2).
  -define(GL_MATRIX3_ARB,                                      16#88C3).
  -define(GL_MATRIX3,                                          16#88C3).
  -define(GL_MATRIX4_ARB,                                      16#88C4).
  -define(GL_MATRIX4,                                          16#88C4).
  -define(GL_MATRIX5_ARB,                                      16#88C5).
  -define(GL_MATRIX5,                                          16#88C5).
  -define(GL_MATRIX6_ARB,                                      16#88C6).
  -define(GL_MATRIX6,                                          16#88C6).
  -define(GL_MATRIX7_ARB,                                      16#88C7).
  -define(GL_MATRIX7,                                          16#88C7).
  -define(GL_MATRIX8_ARB,                                      16#88C8).
  -define(GL_MATRIX8,                                          16#88C8).
  -define(GL_MATRIX9_ARB,                                      16#88C9).
  -define(GL_MATRIX9,                                          16#88C9).
  -define(GL_MATRIX10_ARB,                                     16#88CA).
  -define(GL_MATRIX10,                                         16#88CA).
  -define(GL_MATRIX11_ARB,                                     16#88CB).
  -define(GL_MATRIX11,                                         16#88CB).
  -define(GL_MATRIX12_ARB,                                     16#88CC).
  -define(GL_MATRIX12,                                         16#88CC).
  -define(GL_MATRIX13_ARB,                                     16#88CD).
  -define(GL_MATRIX13,                                         16#88CD).
  -define(GL_MATRIX14_ARB,                                     16#88CE).
  -define(GL_MATRIX14,                                         16#88CE).
  -define(GL_MATRIX15_ARB,                                     16#88CF).
  -define(GL_MATRIX15,                                         16#88CF).
  -define(GL_MATRIX16_ARB,                                     16#88D0).
  -define(GL_MATRIX16,                                         16#88D0).
  -define(GL_MATRIX17_ARB,                                     16#88D1).
  -define(GL_MATRIX17,                                         16#88D1).
  -define(GL_MATRIX18_ARB,                                     16#88D2).
  -define(GL_MATRIX18,                                         16#88D2).
  -define(GL_MATRIX19_ARB,                                     16#88D3).
  -define(GL_MATRIX19,                                         16#88D3).
  -define(GL_MATRIX20_ARB,                                     16#88D4).
  -define(GL_MATRIX20,                                         16#88D4).
  -define(GL_MATRIX21_ARB,                                     16#88D5).
  -define(GL_MATRIX21,                                         16#88D5).
  -define(GL_MATRIX22_ARB,                                     16#88D6).
  -define(GL_MATRIX22,                                         16#88D6).
  -define(GL_MATRIX23_ARB,                                     16#88D7).
  -define(GL_MATRIX23,                                         16#88D7).
  -define(GL_MATRIX24_ARB,                                     16#88D8).
  -define(GL_MATRIX24,                                         16#88D8).
  -define(GL_MATRIX25_ARB,                                     16#88D9).
  -define(GL_MATRIX25,                                         16#88D9).
  -define(GL_MATRIX26_ARB,                                     16#88DA).
  -define(GL_MATRIX26,                                         16#88DA).
  -define(GL_MATRIX27_ARB,                                     16#88DB).
  -define(GL_MATRIX27,                                         16#88DB).
  -define(GL_MATRIX28_ARB,                                     16#88DC).
  -define(GL_MATRIX28,                                         16#88DC).
  -define(GL_MATRIX29_ARB,                                     16#88DD).
  -define(GL_MATRIX29,                                         16#88DD).
  -define(GL_MATRIX30_ARB,                                     16#88DE).
  -define(GL_MATRIX30,                                         16#88DE).
  -define(GL_MATRIX31_ARB,                                     16#88DF).
  -define(GL_MATRIX31,                                         16#88DF).
-endif.

%%%% All ARB_fragment_program entry points are shared with ARB_vertex_program.

-ifndef(GL_ARB_fragment_program).
  -define(GL_ARB_fragment_program,                             1).

  -define(GL_FRAGMENT_PROGRAM_ARB,                             16#8804).
  -define(GL_FRAGMENT_PROGRAM,                                 16#8804).
  -define(GL_PROGRAM_ALU_INSTRUCTIONS_ARB,                     16#8805).
  -define(GL_PROGRAM_ALU_INSTRUCTIONS,                         16#8805).
  -define(GL_PROGRAM_TEX_INSTRUCTIONS_ARB,                     16#8806).
  -define(GL_PROGRAM_TEX_INSTRUCTIONS,                         16#8806).
  -define(GL_PROGRAM_TEX_INDIRECTIONS_ARB,                     16#8807).
  -define(GL_PROGRAM_TEX_INDIRECTIONS,                         16#8807).
  -define(GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB,              16#8808).
  -define(GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS,                  16#8808).
  -define(GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB,              16#8809).
  -define(GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS,                  16#8809).
  -define(GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB,              16#880A).
  -define(GL_PROGRAM_NATIVE_TEX_INDIRECTIONS,                  16#880A).
  -define(GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB,                 16#880B).
  -define(GL_MAX_PROGRAM_ALU_INSTRUCTIONS,                     16#880B).
  -define(GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB,                 16#880C).
  -define(GL_MAX_PROGRAM_TEX_INSTRUCTIONS,                     16#880C).
  -define(GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB,                 16#880D).
  -define(GL_MAX_PROGRAM_TEX_INDIRECTIONS,                     16#880D).
  -define(GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB,          16#880E).
  -define(GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS,              16#880E).
  -define(GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB,          16#880F).
  -define(GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS,              16#880F).
  -define(GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB,          16#8810).
  -define(GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS,              16#8810).
  -define(GL_MAX_TEXTURE_COORDS_ARB,                           16#8871).
% -define(GL_MAX_TEXTURE_COORDS,                               16#8871).
  -define(GL_MAX_TEXTURE_IMAGE_UNITS_ARB,                      16#8872).
% -define(GL_MAX_TEXTURE_IMAGE_UNITS,                          16#8872).
-endif.

-ifndef(GL_ARB_vertex_buffer_object).
  -define(GL_ARB_vertex_buffer_object,                         1).

  %% GL types for handling large vertex buffer objects
  -define(GLintptrARB,                                         32/signed-native).
  -define(GLsizeiptrARB,                                       32/signed-native).

  -define(GL_BUFFER_SIZE_ARB,                                  16#8764).
  -define(GL_BUFFER_USAGE_ARB,                                 16#8765).
  -define(GL_ARRAY_BUFFER_ARB,                                 16#8892).
  -define(GL_ELEMENT_ARRAY_BUFFER_ARB,                         16#8893).
  -define(GL_ARRAY_BUFFER_BINDING_ARB,                         16#8894).
  -define(GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB,                 16#8895).
  -define(GL_VERTEX_ARRAY_BUFFER_BINDING_ARB,                  16#8896).
  -define(GL_NORMAL_ARRAY_BUFFER_BINDING_ARB,                  16#8897).
  -define(GL_COLOR_ARRAY_BUFFER_BINDING_ARB,                   16#8898).
  -define(GL_INDEX_ARRAY_BUFFER_BINDING_ARB,                   16#8899).
  -define(GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB,           16#889A).
  -define(GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB,               16#889B).
  -define(GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB,         16#889C).
  -define(GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB,          16#889D).
  -define(GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB,                  16#889E).
  -define(GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB,           16#889F).
  -define(GL_READ_ONLY_ARB,                                    16#88B8).
  -define(GL_WRITE_ONLY_ARB,                                   16#88B9).
  -define(GL_READ_WRITE_ARB,                                   16#88BA).
  -define(GL_BUFFER_ACCESS_ARB,                                16#88BB).
  -define(GL_BUFFER_MAPPED_ARB,                                16#88BC).
  -define(GL_BUFFER_MAP_POINTER_ARB,                           16#88BD).
  -define(GL_STREAM_DRAW_ARB,                                  16#88E0).
  -define(GL_STREAM_READ_ARB,                                  16#88E1).
  -define(GL_STREAM_COPY_ARB,                                  16#88E2).
  -define(GL_STATIC_DRAW_ARB,                                  16#88E4).
  -define(GL_STATIC_READ_ARB,                                  16#88E5).
  -define(GL_STATIC_COPY_ARB,                                  16#88E6).
  -define(GL_DYNAMIC_DRAW_ARB,                                 16#88E8).
  -define(GL_DYNAMIC_READ_ARB,                                 16#88E9).
  -define(GL_DYNAMIC_COPY_ARB,                                 16#88EA).
-endif.

-ifndef(GL_ARB_occlusion_query).
  -define(GL_ARB_occlusion_query,                              1).

  -define(GL_QUERY_COUNTER_BITS_ARB,                           16#8864).
  -define(GL_CURRENT_QUERY_ARB,                                16#8865).
  -define(GL_QUERY_RESULT_ARB,                                 16#8866).
  -define(GL_QUERY_RESULT_AVAILABLE_ARB,                       16#8867).
  -define(GL_SAMPLES_PASSED_ARB,                               16#8914).
-endif.

%%%% GL types for handling shader object handles and program/shader text 
-ifndef(GL_ARB_shader_objects).
  -define(GL_ARB_shader_objects,                               1).

  %% GL types for handling shader object handles and program/shader text
  -define(GLcharARB,                                           8/signed).
  -define(GLhandleARB,                                         32/unsigned-native).

  -define(GL_PROGRAM_OBJECT_ARB,                               16#8B40).
  -define(GL_PROGRAM_OBJECT,                                   16#8B40).
  -define(GL_SHADER_OBJECT_ARB,                                16#8B48).
  -define(GL_SHADER_OBJECT,                                    16#8B48).
  -define(GL_OBJECT_TYPE_ARB,                                  16#8B4E).
  -define(GL_OBJECT_TYPE,                                      16#8B4E).
  -define(GL_OBJECT_SUBTYPE_ARB,                               16#8B4F).
  -define(GL_OBJECT_SUBTYPE,                                   16#8B4F).
  -define(GL_FLOAT_VEC2_ARB,                                   16#8B50).
% -define(GL_FLOAT_VEC2,                                       16#8B50).
  -define(GL_FLOAT_VEC3_ARB,                                   16#8B51).
% -define(GL_FLOAT_VEC3,                                       16#8B51).
  -define(GL_FLOAT_VEC4_ARB,                                   16#8B52).
% -define(GL_FLOAT_VEC4,                                       16#8B52).
  -define(GL_INT_VEC2_ARB,                                     16#8B53).
% -define(GL_INT_VEC2,                                         16#8B53).
  -define(GL_INT_VEC3_ARB,                                     16#8B54).
% -define(GL_INT_VEC3,                                         16#8B54).
  -define(GL_INT_VEC4_ARB,                                     16#8B55).
% -define(GL_INT_VEC4,                                         16#8B55).
  -define(GL_BOOL_ARB,                                         16#8B56).
% -define(GL_BOOL,                                             16#8B56).
  -define(GL_BOOL_VEC2_ARB,                                    16#8B57).
% -define(GL_BOOL_VEC2,                                        16#8B57).
  -define(GL_BOOL_VEC3_ARB,                                    16#8B58).
% -define(GL_BOOL_VEC3,                                        16#8B58).
  -define(GL_BOOL_VEC4_ARB,                                    16#8B59).
% -define(GL_BOOL_VEC4,                                        16#8B59).
  -define(GL_FLOAT_MAT2_ARB,                                   16#8B5A).
% -define(GL_FLOAT_MAT2,                                       16#8B5A).
  -define(GL_FLOAT_MAT3_ARB,                                   16#8B5B).
% -define(GL_FLOAT_MAT3,                                       16#8B5B).
  -define(GL_FLOAT_MAT4_ARB,                                   16#8B5C).
% -define(GL_FLOAT_MAT4,                                       16#8B5C).
  -define(GL_SAMPLER_1D_ARB,                                   16#8B5D).
% -define(GL_SAMPLER_1D,                                       16#8B5D).
  -define(GL_SAMPLER_2D_ARB,                                   16#8B5E).
% -define(GL_SAMPLER_2D,                                       16#8B5E).
  -define(GL_SAMPLER_3D_ARB,                                   16#8B5F).
% -define(GL_SAMPLER_3D,                                       16#8B5F).
  -define(GL_SAMPLER_CUBE_ARB,                                 16#8B60).
% -define(GL_SAMPLER_CUBE,                                     16#8B60).
  -define(GL_SAMPLER_1D_SHADOW_ARB,                            16#8B61).
% -define(GL_SAMPLER_1D_SHADOW,                                16#8B61).
  -define(GL_SAMPLER_2D_SHADOW_ARB,                            16#8B62).
% -define(GL_SAMPLER_2D_SHADOW,                                16#8B62).
  -define(GL_SAMPLER_2D_RECT_ARB,                              16#8B63).
  -define(GL_SAMPLER_2D_RECT,                                  16#8B63).
  -define(GL_SAMPLER_2D_RECT_SHADOW_ARB,                       16#8B64).
  -define(GL_SAMPLER_2D_RECT_SHADOW,                           16#8B64).
  -define(GL_OBJECT_DELETE_STATUS_ARB,                         16#8B80).
  -define(GL_OBJECT_DELETE_STATUS,                             16#8B80).
  -define(GL_OBJECT_COMPILE_STATUS_ARB,                        16#8B81).
  -define(GL_OBJECT_COMPILE_STATUS,                            16#8B81).
  -define(GL_OBJECT_LINK_STATUS_ARB,                           16#8B82).
  -define(GL_OBJECT_LINK_STATUS,                               16#8B82).
  -define(GL_OBJECT_VALIDATE_STATUS_ARB,                       16#8B83).
  -define(GL_OBJECT_VALIDATE_STATUS,                           16#8B83).
  -define(GL_OBJECT_INFO_LOG_LENGTH_ARB,                       16#8B84).
  -define(GL_OBJECT_INFO_LOG_LENGTH,                           16#8B84).
  -define(GL_OBJECT_ATTACHED_OBJECTS_ARB,                      16#8B85).
  -define(GL_OBJECT_ATTACHED_OBJECTS,                          16#8B85).
  -define(GL_OBJECT_ACTIVE_UNIFORMS_ARB,                       16#8B86).
  -define(GL_OBJECT_ACTIVE_UNIFORMS,                           16#8B86).
  -define(GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB,             16#8B87).
  -define(GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH,                 16#8B87).
  -define(GL_OBJECT_SHADER_SOURCE_LENGTH_ARB,                  16#8B88).
  -define(GL_OBJECT_SHADER_SOURCE_LENGTH,                      16#8B88).
-endif.

-ifndef(GL_ARB_vertex_shader).
  -define(GL_ARB_vertex_shader,                                1).

  -define(GL_VERTEX_SHADER_ARB,                                16#8B31).
  -define(GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB,                16#8B4A).
  -define(GL_MAX_VARYING_FLOATS_ARB,                           16#8B4B).
  -define(GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB,               16#8B4C).
  -define(GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB,             16#8B4D).
  -define(GL_OBJECT_ACTIVE_ATTRIBUTES_ARB,                     16#8B89).
  -define(GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB,           16#8B8A).
-endif.

-ifndef(GL_ARB_fragment_shader).
  -define(GL_ARB_fragment_shader,                              1).

  -define(GL_FRAGMENT_SHADER_ARB,                              16#8B30).
  -define(GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB,              16#8B49).
  -define(GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB,              16#8B8B).
-endif.

-ifndef(GL_ARB_shading_language_100).
  -define(GL_ARB_shading_language_100,                         1).

  -define(GL_SHADING_LANGUAGE_VERSION_ARB,                     16#8B8C).
-endif.

-ifndef(GL_ARB_texture_non_power_of_two).
  -define(GL_ARB_texture_non_power_of_two,                     1).

-endif.

-ifndef(GL_ARB_point_sprite).
  -define(GL_ARB_point_sprite,                                 1).

  -define(GL_POINT_SPRITE_ARB,                                 16#8861).
  -define(GL_COORD_REPLACE_ARB,                                16#8862).
-endif.

-ifndef(GL_ARB_fragment_program_shadow).
  -define(GL_ARB_fragment_program_shadow,                      1).

-endif.

-ifndef(GL_ARB_draw_buffers).
  -define(GL_ARB_draw_buffers,                                 1).

  -define(GL_MAX_DRAW_BUFFERS_ARB,                             16#8824).
  -define(GL_DRAW_BUFFER0_ARB,                                 16#8825).
  -define(GL_DRAW_BUFFER1_ARB,                                 16#8826).
  -define(GL_DRAW_BUFFER2_ARB,                                 16#8827).
  -define(GL_DRAW_BUFFER3_ARB,                                 16#8828).
  -define(GL_DRAW_BUFFER4_ARB,                                 16#8829).
  -define(GL_DRAW_BUFFER5_ARB,                                 16#882A).
  -define(GL_DRAW_BUFFER6_ARB,                                 16#882B).
  -define(GL_DRAW_BUFFER7_ARB,                                 16#882C).
  -define(GL_DRAW_BUFFER8_ARB,                                 16#882D).
  -define(GL_DRAW_BUFFER9_ARB,                                 16#882E).
  -define(GL_DRAW_BUFFER10_ARB,                                16#882F).
  -define(GL_DRAW_BUFFER11_ARB,                                16#8830).
  -define(GL_DRAW_BUFFER12_ARB,                                16#8831).
  -define(GL_DRAW_BUFFER13_ARB,                                16#8832).
  -define(GL_DRAW_BUFFER14_ARB,                                16#8833).
  -define(GL_DRAW_BUFFER15_ARB,                                16#8834).
-endif.

-ifndef(GL_ARB_texture_rectangle).
  -define(GL_ARB_texture_rectangle,                            1).

  -define(GL_TEXTURE_RECTANGLE_ARB,                            16#84F5).
  -define(GL_TEXTURE_BINDING_RECTANGLE_ARB,                    16#84F6).
  -define(GL_PROXY_TEXTURE_RECTANGLE_ARB,                      16#84F7).
  -define(GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB,                   16#84F8).
-endif.

-ifndef(GL_ARB_color_buffer_float).
  -define(GL_ARB_color_buffer_float,                           1).

  -define(GL_RGBA_FLOAT_MODE_ARB,                              16#8820).
  -define(GL_CLAMP_VERTEX_COLOR_ARB,                           16#891A).
  -define(GL_CLAMP_FRAGMENT_COLOR_ARB,                         16#891B).
  -define(GL_CLAMP_READ_COLOR_ARB,                             16#891C).
  -define(GL_FIXED_ONLY_ARB,                                   16#891D).
-endif.

-ifndef(GL_ARB_half_float_pixel).
  -define(GL_ARB_half_float_pixel,                             1).

  -define(GLhalfARB,                                           16/unsigned-native).

  -define(GL_HALF_FLOAT_ARB,                                   16#140B).
-endif.

-ifndef(GL_ARB_instanced_arrays).
  -define(GL_ARB_instanced_arrays,                             1).

  -define(GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB,                  16#88FE).
-endif.

-ifndef(GL_ARB_texture_float).
  -define(GL_ARB_texture_float,                                1).

  -define(GL_TEXTURE_RED_TYPE_ARB,                             16#8C10).
  -define(GL_TEXTURE_GREEN_TYPE_ARB,                           16#8C11).
  -define(GL_TEXTURE_BLUE_TYPE_ARB,                            16#8C12).
  -define(GL_TEXTURE_ALPHA_TYPE_ARB,                           16#8C13).
  -define(GL_TEXTURE_LUMINANCE_TYPE_ARB,                       16#8C14).
  -define(GL_TEXTURE_INTENSITY_TYPE_ARB,                       16#8C15).
  -define(GL_TEXTURE_DEPTH_TYPE_ARB,                           16#8C16).
  -define(GL_UNSIGNED_NORMALIZED_ARB,                          16#8C17).
  -define(GL_RGBA32F_ARB,                                      16#8814).
  -define(GL_RGB32F_ARB,                                       16#8815).
  -define(GL_ALPHA32F_ARB,                                     16#8816).
  -define(GL_INTENSITY32F_ARB,                                 16#8817).
  -define(GL_LUMINANCE32F_ARB,                                 16#8818).
  -define(GL_LUMINANCE_ALPHA32F_ARB,                           16#8819).
  -define(GL_RGBA16F_ARB,                                      16#881A).
  -define(GL_RGB16F_ARB,                                       16#881B).
  -define(GL_ALPHA16F_ARB,                                     16#881C).
  -define(GL_INTENSITY16F_ARB,                                 16#881D).
  -define(GL_LUMINANCE16F_ARB,                                 16#881E).
  -define(GL_LUMINANCE_ALPHA16F_ARB,                           16#881F).
-endif.

-ifndef(GL_ARB_pixel_buffer_object).
  -define(GL_ARB_pixel_buffer_object,                          1).

  -define(GL_PIXEL_PACK_BUFFER_ARB,                            16#88EB).
  -define(GL_PIXEL_UNPACK_BUFFER_ARB,                          16#88EC).
  -define(GL_PIXEL_PACK_BUFFER_BINDING_ARB,                    16#88ED).
  -define(GL_PIXEL_UNPACK_BUFFER_BINDING_ARB,                  16#88EF).
-endif.

-ifndef(GL_ARB_depth_buffer_float).
  -define(GL_ARB_depth_buffer_float,                           1).

  -define(GL_DEPTH_COMPONENT32F,                               16#8CAC).
  -define(GL_DEPTH32F_STENCIL8,                                16#8CAD).
  -define(GL_FLOAT_32_UNSIGNED_INT_24_8_REV,                   16#8DAD).
-endif.

-ifndef(GL_ARB_draw_instanced).
  -define(GL_ARB_draw_instanced,                               1).

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
  -define(GL_INDEX,                                            16#8222).
  -define(GL_TEXTURE_LUMINANCE_TYPE,                           16#8C14).
  -define(GL_TEXTURE_INTENSITY_TYPE,                           16#8C15).
-endif.

-ifndef(GL_ARB_framebuffer_sRGB).
  -define(GL_ARB_framebuffer_sRGB,                             1).

  -define(GL_FRAMEBUFFER_SRGB,                                 16#8DB9).
-endif.

-ifndef(GL_ARB_geometry_shader4).
  -define(GL_ARB_geometry_shader4,                             1).

  -define(GL_LINES_ADJACENCY_ARB,                              16#000A).
  -define(GL_LINE_STRIP_ADJACENCY_ARB,                         16#000B).
  -define(GL_TRIANGLES_ADJACENCY_ARB,                          16#000C).
  -define(GL_TRIANGLE_STRIP_ADJACENCY_ARB,                     16#000D).
  -define(GL_PROGRAM_POINT_SIZE_ARB,                           16#8642).
  -define(GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB,             16#8C29).
  -define(GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB,               16#8DA7).
  -define(GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB,         16#8DA8).
  -define(GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB,           16#8DA9).
  -define(GL_GEOMETRY_SHADER_ARB,                              16#8DD9).
  -define(GL_GEOMETRY_VERTICES_OUT_ARB,                        16#8DDA).
  -define(GL_GEOMETRY_INPUT_TYPE_ARB,                          16#8DDB).
  -define(GL_GEOMETRY_OUTPUT_TYPE_ARB,                         16#8DDC).
  -define(GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB,              16#8DDD).
  -define(GL_MAX_VERTEX_VARYING_COMPONENTS_ARB,                16#8DDE).
  -define(GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB,              16#8DDF).
  -define(GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB,                 16#8DE0).
  -define(GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB,         16#8DE1).
%% reuse GL_MAX_VARYING_COMPONENTS
%% reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
-endif.

-ifndef(GL_ARB_half_float_vertex).
  -define(GL_ARB_half_float_vertex,                            1).

  -define(GL_HALF_FLOAT,                                       16#140B).
-endif.

-ifndef(GL_ARB_instanced_arrays).
  -define(GL_ARB_instanced_arrays,                             1).
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

-ifndef(GL_ARB_texture_buffer_object).
  -define(GL_ARB_texture_buffer_object,                        1).

  -define(GL_TEXTURE_BUFFER_ARB,                               16#8C2A).
  -define(GL_MAX_TEXTURE_BUFFER_SIZE_ARB,                      16#8C2B).
  -define(GL_TEXTURE_BINDING_BUFFER_ARB,                       16#8C2C).
  -define(GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB,            16#8C2D).
  -define(GL_TEXTURE_BUFFER_FORMAT_ARB,                        16#8C2E).
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
  -define(GL_INVALID_INDEX,                                    16#FFFFFFFF).
-endif.

-ifndef(GL_ARB_compatibility).
  %% ARB_compatibility just defines tokens from core 3.0
-endif.

-ifndef(GL_ARB_copy_buffer).
  -define(GL_ARB_copy_buffer,                                  1).

  -define(GL_COPY_READ_BUFFER_BINDING,                         16#8F36).
  -define(GL_COPY_READ_BUFFER,                                 ?GL_COPY_READ_BUFFER_BINDING).
  -define(GL_COPY_WRITE_BUFFER_BINDING,                        16#8F37).
  -define(GL_COPY_WRITE_BUFFER,                                ?GL_COPY_WRITE_BUFFER_BINDING).
-endif.

-ifndef(GL_ARB_shader_texture_lod).
  -define(GL_ARB_shader_texture_lod,                           1).

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
  -define(GL_TIMEOUT_IGNORED,                                  16#FFFFFFFFFFFFFFFF).
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

-ifndef(GL_ARB_shading_language_include).
  -define(GL_ARB_shading_language_include,                     1).

  -define(GL_SHADER_INCLUDE_ARB,                               16#8DAE).
  -define(GL_NAMED_STRING_LENGTH_ARB,                          16#8DE9).
  -define(GL_NAMED_STRING_TYPE_ARB,                            16#8DEA).
-endif.

-ifndef(GL_ARB_texture_compression_bptc).
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
%% GL_MAX_VERTEX_STREAMS
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

#ifndef GL_KHR_texture_compression_astc_ldr
#define GL_COMPRESSED_RGBA_ASTC_4x4_KHR   0x93B0
#define GL_COMPRESSED_RGBA_ASTC_5x4_KHR   0x93B1
#define GL_COMPRESSED_RGBA_ASTC_5x5_KHR   0x93B2
#define GL_COMPRESSED_RGBA_ASTC_6x5_KHR   0x93B3
#define GL_COMPRESSED_RGBA_ASTC_6x6_KHR   0x93B4
#define GL_COMPRESSED_RGBA_ASTC_8x5_KHR   0x93B5
#define GL_COMPRESSED_RGBA_ASTC_8x6_KHR   0x93B6
#define GL_COMPRESSED_RGBA_ASTC_8x8_KHR   0x93B7
#define GL_COMPRESSED_RGBA_ASTC_10x5_KHR  0x93B8
#define GL_COMPRESSED_RGBA_ASTC_10x6_KHR  0x93B9
#define GL_COMPRESSED_RGBA_ASTC_10x8_KHR  0x93BA
#define GL_COMPRESSED_RGBA_ASTC_10x10_KHR 0x93BB
#define GL_COMPRESSED_RGBA_ASTC_12x10_KHR 0x93BC
#define GL_COMPRESSED_RGBA_ASTC_12x12_KHR 0x93BD
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR 0x93D0
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR 0x93D1
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR 0x93D2
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR 0x93D3
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR 0x93D4
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR 0x93D5
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR 0x93D6
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR 0x93D7
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR 0x93D8
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR 0x93D9
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR 0x93DA
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR 0x93DB
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR 0x93DC
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR 0x93DD
#endif

#ifndef GL_KHR_debug
#define GL_DEBUG_OUTPUT_SYNCHRONOUS       0x8242
#define GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH 0x8243
#define GL_DEBUG_CALLBACK_FUNCTION        0x8244
#define GL_DEBUG_CALLBACK_USER_PARAM      0x8245
#define GL_DEBUG_SOURCE_API               0x8246
#define GL_DEBUG_SOURCE_WINDOW_SYSTEM     0x8247
#define GL_DEBUG_SOURCE_SHADER_COMPILER   0x8248
#define GL_DEBUG_SOURCE_THIRD_PARTY       0x8249
#define GL_DEBUG_SOURCE_APPLICATION       0x824A
#define GL_DEBUG_SOURCE_OTHER             0x824B
#define GL_DEBUG_TYPE_ERROR               0x824C
#define GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR 0x824D
#define GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR  0x824E
#define GL_DEBUG_TYPE_PORTABILITY         0x824F
#define GL_DEBUG_TYPE_PERFORMANCE         0x8250
#define GL_DEBUG_TYPE_OTHER               0x8251
#define GL_DEBUG_TYPE_MARKER              0x8268
#define GL_DEBUG_TYPE_PUSH_GROUP          0x8269
#define GL_DEBUG_TYPE_POP_GROUP           0x826A
#define GL_DEBUG_SEVERITY_NOTIFICATION    0x826B
#define GL_MAX_DEBUG_GROUP_STACK_DEPTH    0x826C
#define GL_DEBUG_GROUP_STACK_DEPTH        0x826D
#define GL_BUFFER                         0x82E0
#define GL_SHADER                         0x82E1
#define GL_PROGRAM                        0x82E2
#define GL_QUERY                          0x82E3
#define GL_PROGRAM_PIPELINE               0x82E4
#define GL_SAMPLER                        0x82E6
#define GL_DISPLAY_LIST                   0x82E7
/* DISPLAY_LIST used in compatibility profile only */
#define GL_MAX_LABEL_LENGTH               0x82E8
#define GL_MAX_DEBUG_MESSAGE_LENGTH       0x9143
#define GL_MAX_DEBUG_LOGGED_MESSAGES      0x9144
#define GL_DEBUG_LOGGED_MESSAGES          0x9145
#define GL_DEBUG_SEVERITY_HIGH            0x9146
#define GL_DEBUG_SEVERITY_MEDIUM          0x9147
#define GL_DEBUG_SEVERITY_LOW             0x9148
#define GL_DEBUG_OUTPUT                   0x92E0
#define GL_CONTEXT_FLAG_DEBUG_BIT         0x00000002
/* reuse GL_STACK_UNDERFLOW */
/* reuse GL_STACK_OVERFLOW */
#endif

#ifndef GL_ARB_arrays_of_arrays
#endif

#ifndef GL_ARB_clear_buffer_object
#endif

#ifndef GL_ARB_compute_shader
#define GL_COMPUTE_SHADER                 0x91B9
#define GL_MAX_COMPUTE_UNIFORM_BLOCKS     0x91BB
#define GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS 0x91BC
#define GL_MAX_COMPUTE_IMAGE_UNIFORMS     0x91BD
#define GL_MAX_COMPUTE_SHARED_MEMORY_SIZE 0x8262
#define GL_MAX_COMPUTE_UNIFORM_COMPONENTS 0x8263
#define GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS 0x8264
#define GL_MAX_COMPUTE_ATOMIC_COUNTERS    0x8265
#define GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS 0x8266
#define GL_MAX_COMPUTE_LOCAL_INVOCATIONS  0x90EB
#define GL_MAX_COMPUTE_WORK_GROUP_COUNT   0x91BE
#define GL_MAX_COMPUTE_WORK_GROUP_SIZE    0x91BF
#define GL_COMPUTE_LOCAL_WORK_SIZE        0x8267
#define GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER 0x90EC
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER 0x90ED
#define GL_DISPATCH_INDIRECT_BUFFER       0x90EE
#define GL_DISPATCH_INDIRECT_BUFFER_BINDING 0x90EF
#define GL_COMPUTE_SHADER_BIT             0x00000020
#endif

#ifndef GL_ARB_copy_image
#endif

#ifndef GL_ARB_texture_view
#define GL_TEXTURE_VIEW_MIN_LEVEL         0x82DB
#define GL_TEXTURE_VIEW_NUM_LEVELS        0x82DC
#define GL_TEXTURE_VIEW_MIN_LAYER         0x82DD
#define GL_TEXTURE_VIEW_NUM_LAYERS        0x82DE
#define GL_TEXTURE_IMMUTABLE_LEVELS       0x82DF
#endif

#ifndef GL_ARB_vertex_attrib_binding
#define GL_VERTEX_ATTRIB_BINDING          0x82D4
#define GL_VERTEX_ATTRIB_RELATIVE_OFFSET  0x82D5
#define GL_VERTEX_BINDING_DIVISOR         0x82D6
#define GL_VERTEX_BINDING_OFFSET          0x82D7
#define GL_VERTEX_BINDING_STRIDE          0x82D8
#define GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET 0x82D9
#define GL_MAX_VERTEX_ATTRIB_BINDINGS     0x82DA
#endif

#ifndef GL_ARB_robustness_isolation
#endif

#ifndef GL_ARB_ES3_compatibility
#define GL_COMPRESSED_RGB8_ETC2           0x9274
#define GL_COMPRESSED_SRGB8_ETC2          0x9275
#define GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 0x9276
#define GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 0x9277
#define GL_COMPRESSED_RGBA8_ETC2_EAC      0x9278
#define GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC 0x9279
#define GL_COMPRESSED_R11_EAC             0x9270
#define GL_COMPRESSED_SIGNED_R11_EAC      0x9271
#define GL_COMPRESSED_RG11_EAC            0x9272
#define GL_COMPRESSED_SIGNED_RG11_EAC     0x9273
#define GL_PRIMITIVE_RESTART_FIXED_INDEX  0x8D69
#define GL_ANY_SAMPLES_PASSED_CONSERVATIVE 0x8D6A
#define GL_MAX_ELEMENT_INDEX              0x8D6B
#endif

#ifndef GL_ARB_explicit_uniform_location
#define GL_MAX_UNIFORM_LOCATIONS          0x826E
#endif

#ifndef GL_ARB_fragment_layer_viewport
#endif

#ifndef GL_ARB_framebuffer_no_attachments
#define GL_FRAMEBUFFER_DEFAULT_WIDTH      0x9310
#define GL_FRAMEBUFFER_DEFAULT_HEIGHT     0x9311
#define GL_FRAMEBUFFER_DEFAULT_LAYERS     0x9312
#define GL_FRAMEBUFFER_DEFAULT_SAMPLES    0x9313
#define GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS 0x9314
#define GL_MAX_FRAMEBUFFER_WIDTH          0x9315
#define GL_MAX_FRAMEBUFFER_HEIGHT         0x9316
#define GL_MAX_FRAMEBUFFER_LAYERS         0x9317
#define GL_MAX_FRAMEBUFFER_SAMPLES        0x9318
#endif

#ifndef GL_ARB_internalformat_query2
/* reuse GL_IMAGE_FORMAT_COMPATIBILITY_TYPE */
/* reuse GL_NUM_SAMPLE_COUNTS */
/* reuse GL_RENDERBUFFER */
/* reuse GL_SAMPLES */
/* reuse GL_TEXTURE_1D */
/* reuse GL_TEXTURE_1D_ARRAY */
/* reuse GL_TEXTURE_2D */
/* reuse GL_TEXTURE_2D_ARRAY */
/* reuse GL_TEXTURE_3D */
/* reuse GL_TEXTURE_CUBE_MAP */
/* reuse GL_TEXTURE_CUBE_MAP_ARRAY */
/* reuse GL_TEXTURE_RECTANGLE */
/* reuse GL_TEXTURE_BUFFER */
/* reuse GL_TEXTURE_2D_MULTISAMPLE */
/* reuse GL_TEXTURE_2D_MULTISAMPLE_ARRAY */
/* reuse GL_TEXTURE_COMPRESSED */
#define GL_INTERNALFORMAT_SUPPORTED       0x826F
#define GL_INTERNALFORMAT_PREFERRED       0x8270
#define GL_INTERNALFORMAT_RED_SIZE        0x8271
#define GL_INTERNALFORMAT_GREEN_SIZE      0x8272
#define GL_INTERNALFORMAT_BLUE_SIZE       0x8273
#define GL_INTERNALFORMAT_ALPHA_SIZE      0x8274
#define GL_INTERNALFORMAT_DEPTH_SIZE      0x8275
#define GL_INTERNALFORMAT_STENCIL_SIZE    0x8276
#define GL_INTERNALFORMAT_SHARED_SIZE     0x8277
#define GL_INTERNALFORMAT_RED_TYPE        0x8278
#define GL_INTERNALFORMAT_GREEN_TYPE      0x8279
#define GL_INTERNALFORMAT_BLUE_TYPE       0x827A
#define GL_INTERNALFORMAT_ALPHA_TYPE      0x827B
#define GL_INTERNALFORMAT_DEPTH_TYPE      0x827C
#define GL_INTERNALFORMAT_STENCIL_TYPE    0x827D
#define GL_MAX_WIDTH                      0x827E
#define GL_MAX_HEIGHT                     0x827F
#define GL_MAX_DEPTH                      0x8280
#define GL_MAX_LAYERS                     0x8281
#define GL_MAX_COMBINED_DIMENSIONS        0x8282
#define GL_COLOR_COMPONENTS               0x8283
#define GL_DEPTH_COMPONENTS               0x8284
#define GL_STENCIL_COMPONENTS             0x8285
#define GL_COLOR_RENDERABLE               0x8286
#define GL_DEPTH_RENDERABLE               0x8287
#define GL_STENCIL_RENDERABLE             0x8288
#define GL_FRAMEBUFFER_RENDERABLE         0x8289
#define GL_FRAMEBUFFER_RENDERABLE_LAYERED 0x828A
#define GL_FRAMEBUFFER_BLEND              0x828B
#define GL_READ_PIXELS                    0x828C
#define GL_READ_PIXELS_FORMAT             0x828D
#define GL_READ_PIXELS_TYPE               0x828E
#define GL_TEXTURE_IMAGE_FORMAT           0x828F
#define GL_TEXTURE_IMAGE_TYPE             0x8290
#define GL_GET_TEXTURE_IMAGE_FORMAT       0x8291
#define GL_GET_TEXTURE_IMAGE_TYPE         0x8292
#define GL_MIPMAP                         0x8293
#define GL_MANUAL_GENERATE_MIPMAP         0x8294
#define GL_AUTO_GENERATE_MIPMAP           0x8295
#define GL_COLOR_ENCODING                 0x8296
#define GL_SRGB_READ                      0x8297
#define GL_SRGB_WRITE                     0x8298
#define GL_SRGB_DECODE_ARB                0x8299
#define GL_FILTER                         0x829A
#define GL_VERTEX_TEXTURE                 0x829B
#define GL_TESS_CONTROL_TEXTURE           0x829C
#define GL_TESS_EVALUATION_TEXTURE        0x829D
#define GL_GEOMETRY_TEXTURE               0x829E
#define GL_FRAGMENT_TEXTURE               0x829F
#define GL_COMPUTE_TEXTURE                0x82A0
#define GL_TEXTURE_SHADOW                 0x82A1
#define GL_TEXTURE_GATHER                 0x82A2
#define GL_TEXTURE_GATHER_SHADOW          0x82A3
#define GL_SHADER_IMAGE_LOAD              0x82A4
#define GL_SHADER_IMAGE_STORE             0x82A5
#define GL_SHADER_IMAGE_ATOMIC            0x82A6
#define GL_IMAGE_TEXEL_SIZE               0x82A7
#define GL_IMAGE_COMPATIBILITY_CLASS      0x82A8
#define GL_IMAGE_PIXEL_FORMAT             0x82A9
#define GL_IMAGE_PIXEL_TYPE               0x82AA
#define GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST 0x82AC
#define GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST 0x82AD
#define GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE 0x82AE
#define GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE 0x82AF
#define GL_TEXTURE_COMPRESSED_BLOCK_WIDTH 0x82B1
#define GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT 0x82B2
#define GL_TEXTURE_COMPRESSED_BLOCK_SIZE  0x82B3
#define GL_CLEAR_BUFFER                   0x82B4
#define GL_TEXTURE_VIEW                   0x82B5
#define GL_VIEW_COMPATIBILITY_CLASS       0x82B6
#define GL_FULL_SUPPORT                   0x82B7
#define GL_CAVEAT_SUPPORT                 0x82B8
#define GL_IMAGE_CLASS_4_X_32             0x82B9
#define GL_IMAGE_CLASS_2_X_32             0x82BA
#define GL_IMAGE_CLASS_1_X_32             0x82BB
#define GL_IMAGE_CLASS_4_X_16             0x82BC
#define GL_IMAGE_CLASS_2_X_16             0x82BD
#define GL_IMAGE_CLASS_1_X_16             0x82BE
#define GL_IMAGE_CLASS_4_X_8              0x82BF
#define GL_IMAGE_CLASS_2_X_8              0x82C0
#define GL_IMAGE_CLASS_1_X_8              0x82C1
#define GL_IMAGE_CLASS_11_11_10           0x82C2
#define GL_IMAGE_CLASS_10_10_10_2         0x82C3
#define GL_VIEW_CLASS_128_BITS            0x82C4
#define GL_VIEW_CLASS_96_BITS             0x82C5
#define GL_VIEW_CLASS_64_BITS             0x82C6
#define GL_VIEW_CLASS_48_BITS             0x82C7
#define GL_VIEW_CLASS_32_BITS             0x82C8
#define GL_VIEW_CLASS_24_BITS             0x82C9
#define GL_VIEW_CLASS_16_BITS             0x82CA
#define GL_VIEW_CLASS_8_BITS              0x82CB
#define GL_VIEW_CLASS_S3TC_DXT1_RGB       0x82CC
#define GL_VIEW_CLASS_S3TC_DXT1_RGBA      0x82CD
#define GL_VIEW_CLASS_S3TC_DXT3_RGBA      0x82CE
#define GL_VIEW_CLASS_S3TC_DXT5_RGBA      0x82CF
#define GL_VIEW_CLASS_RGTC1_RED           0x82D0
#define GL_VIEW_CLASS_RGTC2_RG            0x82D1
#define GL_VIEW_CLASS_BPTC_UNORM          0x82D2
#define GL_VIEW_CLASS_BPTC_FLOAT          0x82D3
#endif

#ifndef GL_ARB_invalidate_subdata
#endif

#ifndef GL_ARB_multi_draw_indirect
#endif

#ifndef GL_ARB_program_interface_query
#define GL_UNIFORM                        0x92E1
#define GL_UNIFORM_BLOCK                  0x92E2
#define GL_PROGRAM_INPUT                  0x92E3
#define GL_PROGRAM_OUTPUT                 0x92E4
#define GL_BUFFER_VARIABLE                0x92E5
#define GL_SHADER_STORAGE_BLOCK           0x92E6
/* reuse GL_ATOMIC_COUNTER_BUFFER */
#define GL_VERTEX_SUBROUTINE              0x92E8
#define GL_TESS_CONTROL_SUBROUTINE        0x92E9
#define GL_TESS_EVALUATION_SUBROUTINE     0x92EA
#define GL_GEOMETRY_SUBROUTINE            0x92EB
#define GL_FRAGMENT_SUBROUTINE            0x92EC
#define GL_COMPUTE_SUBROUTINE             0x92ED
#define GL_VERTEX_SUBROUTINE_UNIFORM      0x92EE
#define GL_TESS_CONTROL_SUBROUTINE_UNIFORM 0x92EF
#define GL_TESS_EVALUATION_SUBROUTINE_UNIFORM 0x92F0
#define GL_GEOMETRY_SUBROUTINE_UNIFORM    0x92F1
#define GL_FRAGMENT_SUBROUTINE_UNIFORM    0x92F2
#define GL_COMPUTE_SUBROUTINE_UNIFORM     0x92F3
#define GL_TRANSFORM_FEEDBACK_VARYING     0x92F4
#define GL_ACTIVE_RESOURCES               0x92F5
#define GL_MAX_NAME_LENGTH                0x92F6
#define GL_MAX_NUM_ACTIVE_VARIABLES       0x92F7
#define GL_MAX_NUM_COMPATIBLE_SUBROUTINES 0x92F8
#define GL_NAME_LENGTH                    0x92F9
#define GL_TYPE                           0x92FA
#define GL_ARRAY_SIZE                     0x92FB
#define GL_OFFSET                         0x92FC
#define GL_BLOCK_INDEX                    0x92FD
#define GL_ARRAY_STRIDE                   0x92FE
#define GL_MATRIX_STRIDE                  0x92FF
#define GL_IS_ROW_MAJOR                   0x9300
#define GL_ATOMIC_COUNTER_BUFFER_INDEX    0x9301
#define GL_BUFFER_BINDING                 0x9302
#define GL_BUFFER_DATA_SIZE               0x9303
#define GL_NUM_ACTIVE_VARIABLES           0x9304
#define GL_ACTIVE_VARIABLES               0x9305
#define GL_REFERENCED_BY_VERTEX_SHADER    0x9306
#define GL_REFERENCED_BY_TESS_CONTROL_SHADER 0x9307
#define GL_REFERENCED_BY_TESS_EVALUATION_SHADER 0x9308
#define GL_REFERENCED_BY_GEOMETRY_SHADER  0x9309
#define GL_REFERENCED_BY_FRAGMENT_SHADER  0x930A
#define GL_REFERENCED_BY_COMPUTE_SHADER   0x930B
#define GL_TOP_LEVEL_ARRAY_SIZE           0x930C
#define GL_TOP_LEVEL_ARRAY_STRIDE         0x930D
#define GL_LOCATION                       0x930E
#define GL_LOCATION_INDEX                 0x930F
#define GL_IS_PER_PATCH                   0x92E7
/* reuse GL_NUM_COMPATIBLE_SUBROUTINES */
/* reuse GL_COMPATIBLE_SUBROUTINES */
#endif

#ifndef GL_ARB_robust_buffer_access_behavior
#endif

#ifndef GL_ARB_shader_image_size
#endif

#ifndef GL_ARB_shader_storage_buffer_object
#define GL_SHADER_STORAGE_BUFFER          0x90D2
#define GL_SHADER_STORAGE_BUFFER_BINDING  0x90D3
#define GL_SHADER_STORAGE_BUFFER_START    0x90D4
#define GL_SHADER_STORAGE_BUFFER_SIZE     0x90D5
#define GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS 0x90D6
#define GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS 0x90D7
#define GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS 0x90D8
#define GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS 0x90D9
#define GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS 0x90DA
#define GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS 0x90DB
#define GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS 0x90DC
#define GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS 0x90DD
#define GL_MAX_SHADER_STORAGE_BLOCK_SIZE  0x90DE
#define GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT 0x90DF
#define GL_SHADER_STORAGE_BARRIER_BIT     0x2000
#define GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
/* reuse GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS */
#endif

#ifndef GL_ARB_stencil_texturing
#define GL_DEPTH_STENCIL_TEXTURE_MODE     0x90EA
#endif

#ifndef GL_ARB_texture_buffer_range
#define GL_TEXTURE_BUFFER_OFFSET          0x919D
#define GL_TEXTURE_BUFFER_SIZE            0x919E
#define GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT 0x919F
#endif

#ifndef GL_ARB_texture_query_levels
#endif

#ifndef GL_ARB_texture_storage_multisample
#endif

-ifndef(GL_EXT_abgr).
  -define(GL_EXT_abgr,                                         1).

  -define(GL_ABGR_EXT,                                         16#8000).
-endif.

-ifndef(GL_EXT_blend_color).
  -define(GL_EXT_blend_color,                                  1).

  -define(GL_CONSTANT_COLOR_EXT,                               16#8001).
  -define(GL_ONE_MINUS_CONSTANT_COLOR_EXT,                     16#8002).
  -define(GL_CONSTANT_ALPHA_EXT,                               16#8003).
  -define(GL_ONE_MINUS_CONSTANT_ALPHA_EXT,                     16#8004).
  -define(GL_BLEND_COLOR_EXT,                                  16#8005).
-endif.

-ifndef(GL_EXT_polygon_offset).
  -define(GL_EXT_polygon_offset,                               1).

  -define(GL_POLYGON_OFFSET_EXT,                               16#8037).
  -define(GL_POLYGON_OFFSET_FACTOR_EXT,                        16#8038).
  -define(GL_POLYGON_OFFSET_BIAS_EXT,                          16#8039).
-endif.

-ifndef(GL_EXT_texture).
  -define(GL_EXT_texture,                                      1).

  -define(GL_ALPHA4_EXT,                                       16#803B).
  -define(GL_ALPHA8_EXT,                                       16#803C).
  -define(GL_ALPHA12_EXT,                                      16#803D).
  -define(GL_ALPHA16_EXT,                                      16#803E).
  -define(GL_LUMINANCE4_EXT,                                   16#803F).
  -define(GL_LUMINANCE8_EXT,                                   16#8040).
  -define(GL_LUMINANCE12_EXT,                                  16#8041).
  -define(GL_LUMINANCE16_EXT,                                  16#8042).
  -define(GL_LUMINANCE4_ALPHA4_EXT,                            16#8043).
  -define(GL_LUMINANCE6_ALPHA2_EXT,                            16#8044).
  -define(GL_LUMINANCE8_ALPHA8_EXT,                            16#8045).
  -define(GL_LUMINANCE12_ALPHA4_EXT,                           16#8046).
  -define(GL_LUMINANCE12_ALPHA12_EXT,                          16#8047).
  -define(GL_LUMINANCE16_ALPHA16_EXT,                          16#8048).
  -define(GL_INTENSITY_EXT,                                    16#8049).
  -define(GL_INTENSITY4_EXT,                                   16#804A).
  -define(GL_INTENSITY8_EXT,                                   16#804B).
  -define(GL_INTENSITY12_EXT,                                  16#804C).
  -define(GL_INTENSITY16_EXT,                                  16#804D).
  -define(GL_RGB2_EXT,                                         16#804E).
  -define(GL_RGB4_EXT,                                         16#804F).
  -define(GL_RGB5_EXT,                                         16#8050).
  -define(GL_RGB8_EXT,                                         16#8051).
  -define(GL_RGB10_EXT,                                        16#8052).
  -define(GL_RGB12_EXT,                                        16#8053).
  -define(GL_RGB16_EXT,                                        16#8054).
  -define(GL_RGBA2_EXT,                                        16#8055).
  -define(GL_RGBA4_EXT,                                        16#8056).
  -define(GL_RGB5_A1_EXT,                                      16#8057).
  -define(GL_RGBA8_EXT,                                        16#8058).
  -define(GL_RGB10_A2_EXT,                                     16#8059).
  -define(GL_RGBA12_EXT,                                       16#805A).
  -define(GL_RGBA16_EXT,                                       16#805B).
  -define(GL_TEXTURE_RED_SIZE_EXT,                             16#805C).
  -define(GL_TEXTURE_GREEN_SIZE_EXT,                           16#805D).
  -define(GL_TEXTURE_BLUE_SIZE_EXT,                            16#805E).
  -define(GL_TEXTURE_ALPHA_SIZE_EXT,                           16#805F).
  -define(GL_TEXTURE_LUMINANCE_SIZE_EXT,                       16#8060).
  -define(GL_TEXTURE_INTENSITY_SIZE_EXT,                       16#8061).
  -define(GL_REPLACE_EXT,                                      16#8062).
  -define(GL_PROXY_TEXTURE_1D_EXT,                             16#8063).
  -define(GL_PROXY_TEXTURE_2D_EXT,                             16#8064).
  -define(GL_TEXTURE_TOO_LARGE_EXT,                            16#8065).
-endif.

-ifndef(GL_EXT_texture3D).
  -define(GL_EXT_texture3D,                                    1).

  -define(GL_PACK_SKIP_IMAGES_EXT,                             16#806B).
  -define(GL_PACK_IMAGE_HEIGHT_EXT,                            16#806C).
  -define(GL_UNPACK_SKIP_IMAGES_EXT,                           16#806D).
  -define(GL_UNPACK_IMAGE_HEIGHT_EXT,                          16#806E).
  -define(GL_TEXTURE_3D_EXT,                                   16#806F).
  -define(GL_PROXY_TEXTURE_3D_EXT,                             16#8070).
  -define(GL_TEXTURE_DEPTH_EXT,                                16#8071).
  -define(GL_TEXTURE_WRAP_R_EXT,                               16#8072).
  -define(GL_MAX_3D_TEXTURE_SIZE_EXT,                          16#8073).
-endif.

-ifndef(GL_SGIS_texture_filter4).
  -define(GL_SGIS_texture_filter4,                             1).

  -define(GL_FILTER4_SGIS,                                     16#8146).
  -define(GL_TEXTURE_FILTER4_SIZE_SGIS,                        16#8147).
-endif.

-ifndef(GL_EXT_subtexture).
  -define(GL_EXT_subtexture,                                   1).

-endif.

-ifndef(GL_EXT_copy_texture).
  -define(GL_EXT_copy_texture,                                 1).

-endif.

-ifndef(GL_EXT_histogram).
  -define(GL_EXT_histogram,                                    1).

  -define(GL_HISTOGRAM_EXT,                                    16#8024).
  -define(GL_PROXY_HISTOGRAM_EXT,                              16#8025).
  -define(GL_HISTOGRAM_WIDTH_EXT,                              16#8026).
  -define(GL_HISTOGRAM_FORMAT_EXT,                             16#8027).
  -define(GL_HISTOGRAM_RED_SIZE_EXT,                           16#8028).
  -define(GL_HISTOGRAM_GREEN_SIZE_EXT,                         16#8029).
  -define(GL_HISTOGRAM_BLUE_SIZE_EXT,                          16#802A).
  -define(GL_HISTOGRAM_ALPHA_SIZE_EXT,                         16#802B).
  -define(GL_HISTOGRAM_LUMINANCE_SIZE_EXT,                     16#802C).
  -define(GL_HISTOGRAM_SINK_EXT,                               16#802D).
  -define(GL_MINMAX_EXT,                                       16#802E).
  -define(GL_MINMAX_FORMAT_EXT,                                16#802F).
  -define(GL_MINMAX_SINK_EXT,                                  16#8030).
  -define(GL_TABLE_TOO_LARGE_EXT,                              16#8031).
-endif.

-ifndef(GL_EXT_convolution).
  -define(GL_EXT_convolution,                                  1).

  -define(GL_CONVOLUTION_1D_EXT,                               16#8010).
  -define(GL_CONVOLUTION_2D_EXT,                               16#8011).
  -define(GL_SEPARABLE_2D_EXT,                                 16#8012).
  -define(GL_CONVOLUTION_BORDER_MODE_EXT,                      16#8013).
  -define(GL_CONVOLUTION_FILTER_SCALE_EXT,                     16#8014).
  -define(GL_CONVOLUTION_FILTER_BIAS_EXT,                      16#8015).
  -define(GL_REDUCE_EXT,                                       16#8016).
  -define(GL_CONVOLUTION_FORMAT_EXT,                           16#8017).
  -define(GL_CONVOLUTION_WIDTH_EXT,                            16#8018).
  -define(GL_CONVOLUTION_HEIGHT_EXT,                           16#8019).
  -define(GL_MAX_CONVOLUTION_WIDTH_EXT,                        16#801A).
  -define(GL_MAX_CONVOLUTION_HEIGHT_EXT,                       16#801B).
  -define(GL_POST_CONVOLUTION_RED_SCALE_EXT,                   16#801C).
  -define(GL_POST_CONVOLUTION_GREEN_SCALE_EXT,                 16#801D).
  -define(GL_POST_CONVOLUTION_BLUE_SCALE_EXT,                  16#801E).
  -define(GL_POST_CONVOLUTION_ALPHA_SCALE_EXT,                 16#801F).
  -define(GL_POST_CONVOLUTION_RED_BIAS_EXT,                    16#8020).
  -define(GL_POST_CONVOLUTION_GREEN_BIAS_EXT,                  16#8021).
  -define(GL_POST_CONVOLUTION_BLUE_BIAS_EXT,                   16#8022).
  -define(GL_POST_CONVOLUTION_ALPHA_BIAS_EXT,                  16#8023).
-endif.

-ifndef(GL_SGI_color_matrix).
  -define(GL_SGI_color_matrix,                                 1).

  -define(GL_COLOR_MATRIX_SGI,                                 16#80B1).
  -define(GL_COLOR_MATRIX_STACK_DEPTH_SGI,                     16#80B2).
  -define(GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI,                 16#80B3).
  -define(GL_POST_COLOR_MATRIX_RED_SCALE_SGI,                  16#80B4).
  -define(GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI,                16#80B5).
  -define(GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI,                 16#80B6).
  -define(GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI,                16#80B7).
  -define(GL_POST_COLOR_MATRIX_RED_BIAS_SGI,                   16#80B8).
  -define(GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI,                 16#80B9).
  -define(GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI,                  16#80BA).
  -define(GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI,                 16#80BB).
-endif.

-ifndef(GL_SGI_color_table).
  -define(GL_SGI_color_table,                                  1).

  -define(GL_COLOR_TABLE_SGI,                                  16#80D0).
  -define(GL_POST_CONVOLUTION_COLOR_TABLE_SGI,                 16#80D1).
  -define(GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI,                16#80D2).
  -define(GL_PROXY_COLOR_TABLE_SGI,                            16#80D3).
  -define(GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI,           16#80D4).
  -define(GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI,          16#80D5).
  -define(GL_COLOR_TABLE_SCALE_SGI,                            16#80D6).
  -define(GL_COLOR_TABLE_BIAS_SGI,                             16#80D7).
  -define(GL_COLOR_TABLE_FORMAT_SGI,                           16#80D8).
  -define(GL_COLOR_TABLE_WIDTH_SGI,                            16#80D9).
  -define(GL_COLOR_TABLE_RED_SIZE_SGI,                         16#80DA).
  -define(GL_COLOR_TABLE_GREEN_SIZE_SGI,                       16#80DB).
  -define(GL_COLOR_TABLE_BLUE_SIZE_SGI,                        16#80DC).
  -define(GL_COLOR_TABLE_ALPHA_SIZE_SGI,                       16#80DD).
  -define(GL_COLOR_TABLE_LUMINANCE_SIZE_SGI,                   16#80DE).
  -define(GL_COLOR_TABLE_INTENSITY_SIZE_SGI,                   16#80DF).
-endif.

-ifndef(GL_SGIS_pixel_texture).
  -define(GL_SGIS_pixel_texture,                               1).

  -define(GL_PIXEL_TEXTURE_SGIS,                               16#8353).
  -define(GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS,                   16#8354).
  -define(GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS,                 16#8355).
  -define(GL_PIXEL_GROUP_COLOR_SGIS,                           16#8356).
-endif.

-ifndef(GL_SGIX_pixel_texture).
  -define(GL_SGIX_pixel_texture,                               1).

  -define(GL_PIXEL_TEX_GEN_SGIX,                               16#8139).
  -define(GL_PIXEL_TEX_GEN_MODE_SGIX,                          16#832B).
-endif.

-ifndef(GL_SGIS_texture4D).
  -define(GL_SGIS_texture4D,                                   1).

  -define(GL_PACK_SKIP_VOLUMES_SGIS,                           16#8130).
  -define(GL_PACK_IMAGE_DEPTH_SGIS,                            16#8131).
  -define(GL_UNPACK_SKIP_VOLUMES_SGIS,                         16#8132).
  -define(GL_UNPACK_IMAGE_DEPTH_SGIS,                          16#8133).
  -define(GL_TEXTURE_4D_SGIS,                                  16#8134).
  -define(GL_PROXY_TEXTURE_4D_SGIS,                            16#8135).
  -define(GL_TEXTURE_4DSIZE_SGIS,                              16#8136).
  -define(GL_TEXTURE_WRAP_Q_SGIS,                              16#8137).
  -define(GL_MAX_4D_TEXTURE_SIZE_SGIS,                         16#8138).
  -define(GL_TEXTURE_4D_BINDING_SGIS,                          16#814F).
-endif.

-ifndef(GL_SGI_texture_color_table).
  -define(GL_SGI_texture_color_table,                          1).

  -define(GL_TEXTURE_COLOR_TABLE_SGI,                          16#80BC).
  -define(GL_PROXY_TEXTURE_COLOR_TABLE_SGI,                    16#80BD).
-endif.

-ifndef(GL_EXT_cmyka).
  -define(GL_EXT_cmyka,                                        1).

  -define(GL_CMYK_EXT,                                         16#800C).
  -define(GL_CMYKA_EXT,                                        16#800D).
  -define(GL_PACK_CMYK_HINT_EXT,                               16#800E).
  -define(GL_UNPACK_CMYK_HINT_EXT,                             16#800F).
-endif.

-ifndef(GL_EXT_texture_object).
  -define(GL_EXT_texture_object,                               1).

  -define(GL_TEXTURE_PRIORITY_EXT,                             16#8066).
  -define(GL_TEXTURE_RESIDENT_EXT,                             16#8067).
  -define(GL_TEXTURE_1D_BINDING_EXT,                           16#8068).
  -define(GL_TEXTURE_2D_BINDING_EXT,                           16#8069).
  -define(GL_TEXTURE_3D_BINDING_EXT,                           16#806A).
-endif.

-ifndef(GL_SGIS_detail_texture).
  -define(GL_SGIS_detail_texture,                              1).

  -define(GL_DETAIL_TEXTURE_2D_SGIS,                           16#8095).
  -define(GL_DETAIL_TEXTURE_2D_BINDING_SGIS,                   16#8096).
  -define(GL_LINEAR_DETAIL_SGIS,                               16#8097).
  -define(GL_LINEAR_DETAIL_ALPHA_SGIS,                         16#8098).
  -define(GL_LINEAR_DETAIL_COLOR_SGIS,                         16#8099).
  -define(GL_DETAIL_TEXTURE_LEVEL_SGIS,                        16#809A).
  -define(GL_DETAIL_TEXTURE_MODE_SGIS,                         16#809B).
  -define(GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS,                  16#809C).
-endif.

-ifndef(GL_SGIS_sharpen_texture).
  -define(GL_SGIS_sharpen_texture,                             1).

  -define(GL_LINEAR_SHARPEN_SGIS,                              16#80AD).
  -define(GL_LINEAR_SHARPEN_ALPHA_SGIS,                        16#80AE).
  -define(GL_LINEAR_SHARPEN_COLOR_SGIS,                        16#80AF).
  -define(GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS,                 16#80B0).
-endif.

-ifndef(GL_EXT_packed_pixels).
  -define(GL_EXT_packed_pixels,                                1).

  -define(GL_UNSIGNED_BYTE_3_3_2_EXT,                          16#8032).
  -define(GL_UNSIGNED_SHORT_4_4_4_4_EXT,                       16#8033).
  -define(GL_UNSIGNED_SHORT_5_5_5_1_EXT,                       16#8034).
  -define(GL_UNSIGNED_INT_8_8_8_8_EXT,                         16#8035).
  -define(GL_UNSIGNED_INT_10_10_10_2_EXT,                      16#8036).
-endif.

-ifndef(GL_SGIS_texture_lod).
  -define(GL_SGIS_texture_lod,                                 1).

  -define(GL_TEXTURE_MIN_LOD_SGIS,                             16#813A).
  -define(GL_TEXTURE_MAX_LOD_SGIS,                             16#813B).
  -define(GL_TEXTURE_BASE_LEVEL_SGIS,                          16#813C).
  -define(GL_TEXTURE_MAX_LEVEL_SGIS,                           16#813D).
-endif.

-ifndef(GL_SGIS_multisample).
  -define(GL_SGIS_multisample,                                 1).

  -define(GL_MULTISAMPLE_SGIS,                                 16#809D).
  -define(GL_SAMPLE_ALPHA_TO_MASK_SGIS,                        16#809E).
  -define(GL_SAMPLE_ALPHA_TO_ONE_SGIS,                         16#809F).
  -define(GL_SAMPLE_MASK_SGIS,                                 16#80A0).
  -define(GL_1PASS_SGIS,                                       16#80A1).
  -define(GL_2PASS_0_SGIS,                                     16#80A2).
  -define(GL_2PASS_1_SGIS,                                     16#80A3).
  -define(GL_4PASS_0_SGIS,                                     16#80A4).
  -define(GL_4PASS_1_SGIS,                                     16#80A5).
  -define(GL_4PASS_2_SGIS,                                     16#80A6).
  -define(GL_4PASS_3_SGIS,                                     16#80A7).
  -define(GL_SAMPLE_BUFFERS_SGIS,                              16#80A8).
  -define(GL_SAMPLES_SGIS,                                     16#80A9).
  -define(GL_SAMPLE_MASK_VALUE_SGIS,                           16#80AA).
  -define(GL_SAMPLE_MASK_INVERT_SGIS,                          16#80AB).
  -define(GL_SAMPLE_PATTERN_SGIS,                              16#80AC).
-endif.

-ifndef(GL_EXT_rescale_normal).
  -define(GL_EXT_rescale_normal,                               1).

  -define(GL_RESCALE_NORMAL_EXT,                               16#803A).
-endif.

-ifndef(GL_EXT_vertex_array).
  -define(GL_EXT_vertex_array,                                 1).

  -define(GL_VERTEX_ARRAY_EXT,                                 16#8074).
  -define(GL_NORMAL_ARRAY_EXT,                                 16#8075).
  -define(GL_COLOR_ARRAY_EXT,                                  16#8076).
  -define(GL_INDEX_ARRAY_EXT,                                  16#8077).
  -define(GL_TEXTURE_COORD_ARRAY_EXT,                          16#8078).
  -define(GL_EDGE_FLAG_ARRAY_EXT,                              16#8079).
  -define(GL_VERTEX_ARRAY_SIZE_EXT,                            16#807A).
  -define(GL_VERTEX_ARRAY_TYPE_EXT,                            16#807B).
  -define(GL_VERTEX_ARRAY_STRIDE_EXT,                          16#807C).
  -define(GL_VERTEX_ARRAY_COUNT_EXT,                           16#807D).
  -define(GL_NORMAL_ARRAY_TYPE_EXT,                            16#807E).
  -define(GL_NORMAL_ARRAY_STRIDE_EXT,                          16#807F).
  -define(GL_NORMAL_ARRAY_COUNT_EXT,                           16#8080).
  -define(GL_COLOR_ARRAY_SIZE_EXT,                             16#8081).
  -define(GL_COLOR_ARRAY_TYPE_EXT,                             16#8082).
  -define(GL_COLOR_ARRAY_STRIDE_EXT,                           16#8083).
  -define(GL_COLOR_ARRAY_COUNT_EXT,                            16#8084).
  -define(GL_INDEX_ARRAY_TYPE_EXT,                             16#8085).
  -define(GL_INDEX_ARRAY_STRIDE_EXT,                           16#8086).
  -define(GL_INDEX_ARRAY_COUNT_EXT,                            16#8087).
  -define(GL_TEXTURE_COORD_ARRAY_SIZE_EXT,                     16#8088).
  -define(GL_TEXTURE_COORD_ARRAY_TYPE_EXT,                     16#8089).
  -define(GL_TEXTURE_COORD_ARRAY_STRIDE_EXT,                   16#808A).
  -define(GL_TEXTURE_COORD_ARRAY_COUNT_EXT,                    16#808B).
  -define(GL_EDGE_FLAG_ARRAY_STRIDE_EXT,                       16#808C).
  -define(GL_EDGE_FLAG_ARRAY_COUNT_EXT,                        16#808D).
  -define(GL_VERTEX_ARRAY_POINTER_EXT,                         16#808E).
  -define(GL_NORMAL_ARRAY_POINTER_EXT,                         16#808F).
  -define(GL_COLOR_ARRAY_POINTER_EXT,                          16#8090).
  -define(GL_INDEX_ARRAY_POINTER_EXT,                          16#8091).
  -define(GL_TEXTURE_COORD_ARRAY_POINTER_EXT,                  16#8092).
  -define(GL_EDGE_FLAG_ARRAY_POINTER_EXT,                      16#8093).
-endif.

-ifndef(GL_EXT_misc_attribute).
  -define(GL_EXT_misc_attribute,                               1).

-endif.

-ifndef(GL_SGIS_generate_mipmap).
  -define(GL_SGIS_generate_mipmap,                             1).

  -define(GL_GENERATE_MIPMAP_SGIS,                             16#8191).
  -define(GL_GENERATE_MIPMAP_HINT_SGIS,                        16#8192).
-endif.

-ifndef(GL_SGIX_clipmap).
  -define(GL_SGIX_clipmap,                                     1).

  -define(GL_LINEAR_CLIPMAP_LINEAR_SGIX,                       16#8170).
  -define(GL_TEXTURE_CLIPMAP_CENTER_SGIX,                      16#8171).
  -define(GL_TEXTURE_CLIPMAP_FRAME_SGIX,                       16#8172).
  -define(GL_TEXTURE_CLIPMAP_OFFSET_SGIX,                      16#8173).
  -define(GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX,               16#8174).
  -define(GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX,                  16#8175).
  -define(GL_TEXTURE_CLIPMAP_DEPTH_SGIX,                       16#8176).
  -define(GL_MAX_CLIPMAP_DEPTH_SGIX,                           16#8177).
  -define(GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX,                   16#8178).
  -define(GL_NEAREST_CLIPMAP_NEAREST_SGIX,                     16#844D).
  -define(GL_NEAREST_CLIPMAP_LINEAR_SGIX,                      16#844E).
  -define(GL_LINEAR_CLIPMAP_NEAREST_SGIX,                      16#844F).
-endif.

-ifndef(GL_SGIX_shadow).
  -define(GL_SGIX_shadow,                                      1).

  -define(GL_TEXTURE_COMPARE_SGIX,                             16#819A).
  -define(GL_TEXTURE_COMPARE_OPERATOR_SGIX,                    16#819B).
  -define(GL_TEXTURE_LEQUAL_R_SGIX,                            16#819C).
  -define(GL_TEXTURE_GEQUAL_R_SGIX,                            16#819D).
-endif.

-ifndef(GL_SGIS_texture_edge_clamp).
  -define(GL_SGIS_texture_edge_clamp,                          1).

  -define(GL_CLAMP_TO_EDGE_SGIS,                               16#812F).
-endif.

-ifndef(GL_SGIS_texture_border_clamp).
  -define(GL_SGIS_texture_border_clamp,                        1).

  -define(GL_CLAMP_TO_BORDER_SGIS,                             16#812D).
-endif.

-ifndef(GL_EXT_blend_minmax).
  -define(GL_EXT_blend_minmax,                                 1).

  -define(GL_FUNC_ADD_EXT,                                     16#8006).
  -define(GL_MIN_EXT,                                          16#8007).
  -define(GL_MAX_EXT,                                          16#8008).
  -define(GL_BLEND_EQUATION_EXT,                               16#8009).
-endif.

-ifndef(GL_EXT_blend_subtract).
  -define(GL_EXT_blend_subtract,                               1).

  -define(GL_FUNC_SUBTRACT_EXT,                                16#800A).
  -define(GL_FUNC_REVERSE_SUBTRACT_EXT,                        16#800B).
-endif.

-ifndef(GL_EXT_blend_logic_op).
  -define(GL_EXT_blend_logic_op,                               1).

-endif.

-ifndef(GL_SGIX_interlace).
  -define(GL_SGIX_interlace,                                   1).

  -define(GL_INTERLACE_SGIX,                                   16#8094).
-endif.

-ifndef(GL_SGIX_pixel_tiles).
  -define(GL_SGIX_pixel_tiles,                                 1).

  -define(GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX,                   16#813E).
  -define(GL_PIXEL_TILE_CACHE_INCREMENT_SGIX,                  16#813F).
  -define(GL_PIXEL_TILE_WIDTH_SGIX,                            16#8140).
  -define(GL_PIXEL_TILE_HEIGHT_SGIX,                           16#8141).
  -define(GL_PIXEL_TILE_GRID_WIDTH_SGIX,                       16#8142).
  -define(GL_PIXEL_TILE_GRID_HEIGHT_SGIX,                      16#8143).
  -define(GL_PIXEL_TILE_GRID_DEPTH_SGIX,                       16#8144).
  -define(GL_PIXEL_TILE_CACHE_SIZE_SGIX,                       16#8145).
-endif.

-ifndef(GL_SGIS_texture_select).
  -define(GL_SGIS_texture_select,                              1).

  -define(GL_DUAL_ALPHA4_SGIS,                                 16#8110).
  -define(GL_DUAL_ALPHA8_SGIS,                                 16#8111).
  -define(GL_DUAL_ALPHA12_SGIS,                                16#8112).
  -define(GL_DUAL_ALPHA16_SGIS,                                16#8113).
  -define(GL_DUAL_LUMINANCE4_SGIS,                             16#8114).
  -define(GL_DUAL_LUMINANCE8_SGIS,                             16#8115).
  -define(GL_DUAL_LUMINANCE12_SGIS,                            16#8116).
  -define(GL_DUAL_LUMINANCE16_SGIS,                            16#8117).
  -define(GL_DUAL_INTENSITY4_SGIS,                             16#8118).
  -define(GL_DUAL_INTENSITY8_SGIS,                             16#8119).
  -define(GL_DUAL_INTENSITY12_SGIS,                            16#811A).
  -define(GL_DUAL_INTENSITY16_SGIS,                            16#811B).
  -define(GL_DUAL_LUMINANCE_ALPHA4_SGIS,                       16#811C).
  -define(GL_DUAL_LUMINANCE_ALPHA8_SGIS,                       16#811D).
  -define(GL_QUAD_ALPHA4_SGIS,                                 16#811E).
  -define(GL_QUAD_ALPHA8_SGIS,                                 16#811F).
  -define(GL_QUAD_LUMINANCE4_SGIS,                             16#8120).
  -define(GL_QUAD_LUMINANCE8_SGIS,                             16#8121).
  -define(GL_QUAD_INTENSITY4_SGIS,                             16#8122).
  -define(GL_QUAD_INTENSITY8_SGIS,                             16#8123).
  -define(GL_DUAL_TEXTURE_SELECT_SGIS,                         16#8124).
  -define(GL_QUAD_TEXTURE_SELECT_SGIS,                         16#8125).
-endif.

-ifndef(GL_SGIX_sprite).
  -define(GL_SGIX_sprite,                                      1).

  -define(GL_SPRITE_SGIX,                                      16#8148).
  -define(GL_SPRITE_MODE_SGIX,                                 16#8149).
  -define(GL_SPRITE_AXIS_SGIX,                                 16#814A).
  -define(GL_SPRITE_TRANSLATION_SGIX,                          16#814B).
  -define(GL_SPRITE_AXIAL_SGIX,                                16#814C).
  -define(GL_SPRITE_OBJECT_ALIGNED_SGIX,                       16#814D).
  -define(GL_SPRITE_EYE_ALIGNED_SGIX,                          16#814E).
-endif.

-ifndef(GL_SGIX_texture_multi_buffer).
  -define(GL_SGIX_texture_multi_buffer,                        1).

  -define(GL_TEXTURE_MULTI_BUFFER_HINT_SGIX,                   16#812E).
-endif.

-ifndef(GL_EXT_point_parameters).
  -define(GL_EXT_point_parameters,                             1).

  -define(GL_POINT_SIZE_MIN_EXT,                               16#8126).
  -define(GL_POINT_SIZE_MAX_EXT,                               16#8127).
  -define(GL_POINT_FADE_THRESHOLD_SIZE_EXT,                    16#8128).
  -define(GL_DISTANCE_ATTENUATION_EXT,                         16#8129).
-endif.

-ifndef(GL_SGIS_point_parameters).
  -define(GL_SGIS_point_parameters,                            1).

  -define(GL_POINT_SIZE_MIN_SGIS,                              16#8126).
  -define(GL_POINT_SIZE_MAX_SGIS,                              16#8127).
  -define(GL_POINT_FADE_THRESHOLD_SIZE_SGIS,                   16#8128).
  -define(GL_DISTANCE_ATTENUATION_SGIS,                        16#8129).
-endif.

-ifndef(GL_SGIX_instruments).
  -define(GL_SGIX_instruments,                                 1).

  -define(GL_INSTRUMENT_BUFFER_POINTER_SGIX,                   16#8180).
  -define(GL_INSTRUMENT_MEASUREMENTS_SGIX,                     16#8181).
-endif.

-ifndef(GL_SGIX_texture_scale_bias).
  -define(GL_SGIX_texture_scale_bias,                          1).

  -define(GL_POST_TEXTURE_FILTER_BIAS_SGIX,                    16#8179).
  -define(GL_POST_TEXTURE_FILTER_SCALE_SGIX,                   16#817A).
  -define(GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX,              16#817B).
  -define(GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX,             16#817C).
-endif.

-ifndef(GL_SGIX_framezoom).
  -define(GL_SGIX_framezoom,                                   1).

  -define(GL_FRAMEZOOM_SGIX,                                   16#818B).
  -define(GL_FRAMEZOOM_FACTOR_SGIX,                            16#818C).
  -define(GL_MAX_FRAMEZOOM_FACTOR_SGIX,                        16#818D).
-endif.

-ifndef(GL_SGIX_tag_sample_buffer).
  -define(GL_SGIX_tag_sample_buffer,                           1).

-endif.

-ifndef(GL_FfdMaskSGIX).
  -define(GL_FfdMaskSGIX,                                      1).

  -define(GL_TEXTURE_DEFORMATION_BIT_SGIX,                     16#00000001).
  -define(GL_GEOMETRY_DEFORMATION_BIT_SGIX,                    16#00000002).
-endif.

-ifndef(GL_SGIX_polynomial_ffd).
  -define(GL_SGIX_polynomial_ffd,                              1).

  -define(GL_GEOMETRY_DEFORMATION_SGIX,                        16#8194).
  -define(GL_TEXTURE_DEFORMATION_SGIX,                         16#8195).
  -define(GL_DEFORMATIONS_MASK_SGIX,                           16#8196).
  -define(GL_MAX_DEFORMATION_ORDER_SGIX,                       16#8197).
-endif.

-ifndef(GL_SGIX_reference_plane).
  -define(GL_SGIX_reference_plane,                             1).

  -define(GL_REFERENCE_PLANE_SGIX,                             16#817D).
  -define(GL_REFERENCE_PLANE_EQUATION_SGIX,                    16#817E).
-endif.

-ifndef(GL_SGIX_flush_raster).
  -define(GL_SGIX_flush_raster,                                1).

-endif.

-ifndef(GL_SGIX_depth_texture).
  -define(GL_SGIX_depth_texture,                               1).

  -define(GL_DEPTH_COMPONENT16_SGIX,                           16#81A5).
  -define(GL_DEPTH_COMPONENT24_SGIX,                           16#81A6).
  -define(GL_DEPTH_COMPONENT32_SGIX,                           16#81A7).
-endif.

-ifndef(GL_SGIS_fog_function).
  -define(GL_SGIS_fog_function,                                1).

  -define(GL_FOG_FUNC_SGIS,                                    16#812A).
  -define(GL_FOG_FUNC_POINTS_SGIS,                             16#812B).
  -define(GL_MAX_FOG_FUNC_POINTS_SGIS,                         16#812C).
-endif.

-ifndef(GL_SGIX_fog_offset).
  -define(GL_SGIX_fog_offset,                                  1).

  -define(GL_FOG_OFFSET_SGIX,                                  16#8198).
  -define(GL_FOG_OFFSET_VALUE_SGIX,                            16#8199).
-endif.

-ifndef(GL_HP_image_transform).
  -define(GL_HP_image_transform,                               1).

  -define(GL_IMAGE_SCALE_X_HP,                                 16#8155).
  -define(GL_IMAGE_SCALE_Y_HP,                                 16#8156).
  -define(GL_IMAGE_TRANSLATE_X_HP,                             16#8157).
  -define(GL_IMAGE_TRANSLATE_Y_HP,                             16#8158).
  -define(GL_IMAGE_ROTATE_ANGLE_HP,                            16#8159).
  -define(GL_IMAGE_ROTATE_ORIGIN_X_HP,                         16#815A).
  -define(GL_IMAGE_ROTATE_ORIGIN_Y_HP,                         16#815B).
  -define(GL_IMAGE_MAG_FILTER_HP,                              16#815C).
  -define(GL_IMAGE_MIN_FILTER_HP,                              16#815D).
  -define(GL_IMAGE_CUBIC_WEIGHT_HP,                            16#815E).
  -define(GL_CUBIC_HP,                                         16#815F).
  -define(GL_AVERAGE_HP,                                       16#8160).
  -define(GL_IMAGE_TRANSFORM_2D_HP,                            16#8161).
  -define(GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP,              16#8162).
  -define(GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP,        16#8163).
-endif.

-ifndef(GL_HP_convolution_border_modes).
  -define(GL_HP_convolution_border_modes,                      1).

  -define(GL_IGNORE_BORDER_HP,                                 16#8150).
  -define(GL_CONSTANT_BORDER_HP,                               16#8151).
  -define(GL_REPLICATE_BORDER_HP,                              16#8153).
  -define(GL_CONVOLUTION_BORDER_COLOR_HP,                      16#8154).
-endif.

-ifndef(GL_INGR_palette_buffer).
  -define(GL_INGR_palette_buffer,                              1).

-endif.

-ifndef(GL_SGIX_texture_add_env).
  -define(GL_SGIX_texture_add_env,                             1).

  -define(GL_TEXTURE_ENV_BIAS_SGIX,                            16#80BE).
-endif.

-ifndef(GL_EXT_color_subtable).
  -define(GL_EXT_color_subtable,                               1).

-endif.

-ifndef(GL_PGI_vertex_hints).
  -define(GL_PGI_vertex_hints,                                 1).

  -define(GL_VERTEX_DATA_HINT_PGI,                             16#1A22A).
  -define(GL_VERTEX_CONSISTENT_HINT_PGI,                       16#1A22B).
  -define(GL_MATERIAL_SIDE_HINT_PGI,                           16#1A22C).
  -define(GL_MAX_VERTEX_HINT_PGI,                              16#1A22D).
  -define(GL_COLOR3_BIT_PGI,                                   16#00010000).
  -define(GL_COLOR4_BIT_PGI,                                   16#00020000).
  -define(GL_EDGEFLAG_BIT_PGI,                                 16#00040000).
  -define(GL_INDEX_BIT_PGI,                                    16#00080000).
  -define(GL_MAT_AMBIENT_BIT_PGI,                              16#00100000).
  -define(GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI,                  16#00200000).
  -define(GL_MAT_DIFFUSE_BIT_PGI,                              16#00400000).
  -define(GL_MAT_EMISSION_BIT_PGI,                             16#00800000).
  -define(GL_MAT_COLOR_INDEXES_BIT_PGI,                        16#01000000).
  -define(GL_MAT_SHININESS_BIT_PGI,                            16#02000000).
  -define(GL_MAT_SPECULAR_BIT_PGI,                             16#04000000).
  -define(GL_NORMAL_BIT_PGI,                                   16#08000000).
  -define(GL_TEXCOORD1_BIT_PGI,                                16#10000000).
  -define(GL_TEXCOORD2_BIT_PGI,                                16#20000000).
  -define(GL_TEXCOORD3_BIT_PGI,                                16#40000000).
  -define(GL_TEXCOORD4_BIT_PGI,                                16#80000000).
  -define(GL_VERTEX23_BIT_PGI,                                 16#00000004).
  -define(GL_VERTEX4_BIT_PGI,                                  16#00000008).
-endif.

-ifndef(GL_PGI_misc_hints).
  -define(GL_PGI_misc_hints,                                   1).

  -define(GL_PREFER_DOUBLEBUFFER_HINT_PGI,                     16#1A1F8).
  -define(GL_CONSERVE_MEMORY_HINT_PGI,                         16#1A1FD).
  -define(GL_RECLAIM_MEMORY_HINT_PGI,                          16#1A1FE).
  -define(GL_NATIVE_GRAPHICS_HANDLE_PGI,                       16#1A202).
  -define(GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI,                   16#1A203).
  -define(GL_NATIVE_GRAPHICS_END_HINT_PGI,                     16#1A204).
  -define(GL_ALWAYS_FAST_HINT_PGI,                             16#1A20C).
  -define(GL_ALWAYS_SOFT_HINT_PGI,                             16#1A20D).
  -define(GL_ALLOW_DRAW_OBJ_HINT_PGI,                          16#1A20E).
  -define(GL_ALLOW_DRAW_WIN_HINT_PGI,                          16#1A20F).
  -define(GL_ALLOW_DRAW_FRG_HINT_PGI,                          16#1A210).
  -define(GL_ALLOW_DRAW_MEM_HINT_PGI,                          16#1A211).
  -define(GL_STRICT_DEPTHFUNC_HINT_PGI,                        16#1A216).
  -define(GL_STRICT_LIGHTING_HINT_PGI,                         16#1A217).
  -define(GL_STRICT_SCISSOR_HINT_PGI,                          16#1A218).
  -define(GL_FULL_STIPPLE_HINT_PGI,                            16#1A219).
  -define(GL_CLIP_NEAR_HINT_PGI,                               16#1A220).
  -define(GL_CLIP_FAR_HINT_PGI,                                16#1A221).
  -define(GL_WIDE_LINE_HINT_PGI,                               16#1A222).
  -define(GL_BACK_NORMALS_HINT_PGI,                            16#1A223).
-endif.

-ifndef(GL_EXT_paletted_texture).
  -define(GL_EXT_paletted_texture,                             1).

  -define(GL_COLOR_INDEX1_EXT,                                 16#80E2).
  -define(GL_COLOR_INDEX2_EXT,                                 16#80E3).
  -define(GL_COLOR_INDEX4_EXT,                                 16#80E4).
  -define(GL_COLOR_INDEX8_EXT,                                 16#80E5).
  -define(GL_COLOR_INDEX12_EXT,                                16#80E6).
  -define(GL_COLOR_INDEX16_EXT,                                16#80E7).
  -define(GL_TEXTURE_INDEX_SIZE_EXT,                           16#80ED).
-endif.

-ifndef(GL_EXT_clip_volume_hint).
  -define(GL_EXT_clip_volume_hint,                             1).

  -define(GL_CLIP_VOLUME_CLIPPING_HINT_EXT,                    16#80F0).
-endif.

-ifndef(GL_SGIX_list_priority).
  -define(GL_SGIX_list_priority,                               1).

  -define(GL_LIST_PRIORITY_SGIX,                               16#8182).
-endif.

-ifndef(GL_SGIX_ir_instrument1).
  -define(GL_SGIX_ir_instrument1,                              1).

  -define(GL_IR_INSTRUMENT1_SGIX,                              16#817F).
-endif.

-ifndef(GL_SGIX_calligraphic_fragment).
  -define(GL_SGIX_calligraphic_fragment,                       1).

  -define(GL_CALLIGRAPHIC_FRAGMENT_SGIX,                       16#8183).
-endif.

-ifndef(GL_SGIX_texture_lod_bias).
  -define(GL_SGIX_texture_lod_bias,                            1).

  -define(GL_TEXTURE_LOD_BIAS_S_SGIX,                          16#818E).
  -define(GL_TEXTURE_LOD_BIAS_T_SGIX,                          16#818F).
  -define(GL_TEXTURE_LOD_BIAS_R_SGIX,                          16#8190).
-endif.

-ifndef(GL_SGIX_shadow_ambient).
  -define(GL_SGIX_shadow_ambient,                              1).

  -define(GL_SHADOW_AMBIENT_SGIX,                              16#80BF).
-endif.

-ifndef(GL_EXT_index_texture).
  -define(GL_EXT_index_texture,                                1).

-endif.

-ifndef(GL_EXT_index_material).
  -define(GL_EXT_index_material,                               1).

  -define(GL_INDEX_MATERIAL_EXT,                               16#81B8).
  -define(GL_INDEX_MATERIAL_PARAMETER_EXT,                     16#81B9).
  -define(GL_INDEX_MATERIAL_FACE_EXT,                          16#81BA).
-endif.

-ifndef(GL_EXT_index_func).
  -define(GL_EXT_index_func,                                   1).

  -define(GL_INDEX_TEST_EXT,                                   16#81B5).
  -define(GL_INDEX_TEST_FUNC_EXT,                              16#81B6).
  -define(GL_INDEX_TEST_REF_EXT,                               16#81B7).
-endif.

-ifndef(GL_EXT_index_array_formats).
  -define(GL_EXT_index_array_formats,                          1).

  -define(GL_IUI_V2F_EXT,                                      16#81AD).
  -define(GL_IUI_V3F_EXT,                                      16#81AE).
  -define(GL_IUI_N3F_V2F_EXT,                                  16#81AF).
  -define(GL_IUI_N3F_V3F_EXT,                                  16#81B0).
  -define(GL_T2F_IUI_V2F_EXT,                                  16#81B1).
  -define(GL_T2F_IUI_V3F_EXT,                                  16#81B2).
  -define(GL_T2F_IUI_N3F_V2F_EXT,                              16#81B3).
  -define(GL_T2F_IUI_N3F_V3F_EXT,                              16#81B4).
-endif.

-ifndef(GL_EXT_compiled_vertex_array).
  -define(GL_EXT_compiled_vertex_array,                        1).

  -define(GL_ARRAY_ELEMENT_LOCK_FIRST_EXT,                     16#81A8).
  -define(GL_ARRAY_ELEMENT_LOCK_COUNT_EXT,                     16#81A9).
-endif.

-ifndef(GL_EXT_cull_vertex).
  -define(GL_EXT_cull_vertex,                                  1).

  -define(GL_CULL_VERTEX_EXT,                                  16#81AA).
  -define(GL_CULL_VERTEX_EYE_POSITION_EXT,                     16#81AB).
  -define(GL_CULL_VERTEX_OBJECT_POSITION_EXT,                  16#81AC).
-endif.

-ifndef(GL_SGIX_ycrcb).
  -define(GL_SGIX_ycrcb,                                       1).

  -define(GL_YCRCB_422_SGIX,                                   16#81BB).
  -define(GL_YCRCB_444_SGIX,                                   16#81BC).
-endif.

-ifndef(GL_SGIX_fragment_lighting).
  -define(GL_SGIX_fragment_lighting,                           1).

  -define(GL_FRAGMENT_LIGHTING_SGIX,                           16#8400).
  -define(GL_FRAGMENT_COLOR_MATERIAL_SGIX,                     16#8401).
  -define(GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX,                16#8402).
  -define(GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX,           16#8403).
  -define(GL_MAX_FRAGMENT_LIGHTS_SGIX,                         16#8404).
  -define(GL_MAX_ACTIVE_LIGHTS_SGIX,                           16#8405).
  -define(GL_CURRENT_RASTER_NORMAL_SGIX,                       16#8406).
  -define(GL_LIGHT_ENV_MODE_SGIX,                              16#8407).
  -define(GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX,           16#8408).
  -define(GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX,               16#8409).
  -define(GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX,                16#840A).
  -define(GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX,   16#840B).
  -define(GL_FRAGMENT_LIGHT0_SGIX,                             16#840C).
  -define(GL_FRAGMENT_LIGHT1_SGIX,                             16#840D).
  -define(GL_FRAGMENT_LIGHT2_SGIX,                             16#840E).
  -define(GL_FRAGMENT_LIGHT3_SGIX,                             16#840F).
  -define(GL_FRAGMENT_LIGHT4_SGIX,                             16#8410).
  -define(GL_FRAGMENT_LIGHT5_SGIX,                             16#8411).
  -define(GL_FRAGMENT_LIGHT6_SGIX,                             16#8412).
  -define(GL_FRAGMENT_LIGHT7_SGIX,                             16#8413).
-endif.

-ifndef(GL_IBM_rasterpos_clip).
  -define(GL_IBM_rasterpos_clip,                               1).

  -define(GL_RASTER_POSITION_UNCLIPPED_IBM,                    16#19262).
-endif.

-ifndef(GL_HP_texture_lighting).
  -define(GL_HP_texture_lighting,                              1).

  -define(GL_TEXTURE_LIGHTING_MODE_HP,                         16#8167).
  -define(GL_TEXTURE_POST_SPECULAR_HP,                         16#8168).
  -define(GL_TEXTURE_PRE_SPECULAR_HP,                          16#8169).
-endif.

-ifndef(GL_EXT_draw_range_elements).
  -define(GL_EXT_draw_range_elements,                          1).

  -define(GL_MAX_ELEMENTS_VERTICES_EXT,                        16#80E8).
  -define(GL_MAX_ELEMENTS_INDICES_EXT,                         16#80E9).
-endif.

-ifndef(GL_WIN_phong_shading).
  -define(GL_WIN_phong_shading,                                1).

  -define(GL_PHONG_WIN,                                        16#80EA).
  -define(GL_PHONG_HINT_WIN,                                   16#80EB).
-endif.

-ifndef(GL_WIN_specular_fog).
  -define(GL_WIN_specular_fog,                                 1).

  -define(GL_FOG_SPECULAR_TEXTURE_WIN,                         16#80EC).
-endif.

-ifndef(GL_EXT_light_texture).
  -define(GL_EXT_light_texture,                                1).

  -define(GL_FRAGMENT_MATERIAL_EXT,                            16#8349).
  -define(GL_FRAGMENT_NORMAL_EXT,                              16#834A).
  -define(GL_FRAGMENT_COLOR_EXT,                               16#834C).
  -define(GL_ATTENUATION_EXT,                                  16#834D).
  -define(GL_SHADOW_ATTENUATION_EXT,                           16#834E).
  -define(GL_TEXTURE_APPLICATION_MODE_EXT,                     16#834F).
  -define(GL_TEXTURE_LIGHT_EXT,                                16#8350).
  -define(GL_TEXTURE_MATERIAL_FACE_EXT,                        16#8351).
  -define(GL_TEXTURE_MATERIAL_PARAMETER_EXT,                   16#8352).
%% reuse GL_FRAGMENT_DEPTH_EXT
-endif.

-ifndef(GL_SGIX_blend_alpha_minmax).
  -define(GL_SGIX_blend_alpha_minmax,                          1).

  -define(GL_ALPHA_MIN_SGIX,                                   16#8320).
  -define(GL_ALPHA_MAX_SGIX,                                   16#8321).
-endif.

-ifndef(GL_SGIX_impact_pixel_texture).
  -define(GL_SGIX_impact_pixel_texture,                        1).

  -define(GL_PIXEL_TEX_GEN_Q_CEILING_SGIX,                     16#8184).
  -define(GL_PIXEL_TEX_GEN_Q_ROUND_SGIX,                       16#8185).
  -define(GL_PIXEL_TEX_GEN_Q_FLOOR_SGIX,                       16#8186).
  -define(GL_PIXEL_TEX_GEN_ALPHA_REPLACE_SGIX,                 16#8187).
  -define(GL_PIXEL_TEX_GEN_ALPHA_NO_REPLACE_SGIX,              16#8188).
  -define(GL_PIXEL_TEX_GEN_ALPHA_LS_SGIX,                      16#8189).
  -define(GL_PIXEL_TEX_GEN_ALPHA_MS_SGIX,                      16#818A).
-endif.

-ifndef(GL_EXT_bgra).
  -define(GL_EXT_bgra,                                         1).

  -define(GL_BGR_EXT,                                          16#80E0).
  -define(GL_BGRA_EXT,                                         16#80E1).
-endif.

-ifndef(GL_SGIX_async).
  -define(GL_SGIX_async,                                       1).

  -define(GL_ASYNC_MARKER_SGIX,                                16#8329).
-endif.

-ifndef(GL_SGIX_async_pixel).
  -define(GL_SGIX_async_pixel,                                 1).

  -define(GL_ASYNC_TEX_IMAGE_SGIX,                             16#835C).
  -define(GL_ASYNC_DRAW_PIXELS_SGIX,                           16#835D).
  -define(GL_ASYNC_READ_PIXELS_SGIX,                           16#835E).
  -define(GL_MAX_ASYNC_TEX_IMAGE_SGIX,                         16#835F).
  -define(GL_MAX_ASYNC_DRAW_PIXELS_SGIX,                       16#8360).
  -define(GL_MAX_ASYNC_READ_PIXELS_SGIX,                       16#8361).
-endif.

-ifndef(GL_SGIX_async_histogram).
  -define(GL_SGIX_async_histogram,                             1).

  -define(GL_ASYNC_HISTOGRAM_SGIX,                             16#832C).
  -define(GL_MAX_ASYNC_HISTOGRAM_SGIX,                         16#832D).
-endif.

-ifndef(GL_INTEL_texture_scissor).
  -define(GL_INTEL_texture_scissor,                            1).

-endif.

-ifndef(GL_INTEL_parallel_arrays).
  -define(GL_INTEL_parallel_arrays,                            1).

  -define(GL_PARALLEL_ARRAYS_INTEL,                            16#83F4).
  -define(GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL,             16#83F5).
  -define(GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL,             16#83F6).
  -define(GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL,              16#83F7).
  -define(GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL,      16#83F8).
-endif.

-ifndef(GL_HP_occlusion_test).
  -define(GL_HP_occlusion_test,                                1).

  -define(GL_OCCLUSION_TEST_HP,                                16#8165).
  -define(GL_OCCLUSION_TEST_RESULT_HP,                         16#8166).
-endif.

-ifndef(GL_EXT_pixel_transform).
  -define(GL_EXT_pixel_transform,                              1).

  -define(GL_PIXEL_TRANSFORM_2D_EXT,                           16#8330).
  -define(GL_PIXEL_MAG_FILTER_EXT,                             16#8331).
  -define(GL_PIXEL_MIN_FILTER_EXT,                             16#8332).
  -define(GL_PIXEL_CUBIC_WEIGHT_EXT,                           16#8333).
  -define(GL_CUBIC_EXT,                                        16#8334).
  -define(GL_AVERAGE_EXT,                                      16#8335).
  -define(GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT,               16#8336).
  -define(GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT,           16#8337).
  -define(GL_PIXEL_TRANSFORM_2D_MATRIX_EXT,                    16#8338).
-endif.

-ifndef(GL_EXT_pixel_transform_color_table).
  -define(GL_EXT_pixel_transform_color_table,                  1).

-endif.

-ifndef(GL_EXT_shared_texture_palette).
  -define(GL_EXT_shared_texture_palette,                       1).

  -define(GL_SHARED_TEXTURE_PALETTE_EXT,                       16#81FB).
-endif.

-ifndef(GL_EXT_separate_specular_color).
  -define(GL_EXT_separate_specular_color,                      1).

  -define(GL_LIGHT_MODEL_COLOR_CONTROL_EXT,                    16#81F8).
  -define(GL_SINGLE_COLOR_EXT,                                 16#81F9).
  -define(GL_SEPARATE_SPECULAR_COLOR_EXT,                      16#81FA).
-endif.

-ifndef(GL_EXT_secondary_color).
  -define(GL_EXT_secondary_color,                              1).

  -define(GL_COLOR_SUM_EXT,                                    16#8458).
  -define(GL_CURRENT_SECONDARY_COLOR_EXT,                      16#8459).
  -define(GL_SECONDARY_COLOR_ARRAY_SIZE_EXT,                   16#845A).
  -define(GL_SECONDARY_COLOR_ARRAY_TYPE_EXT,                   16#845B).
  -define(GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT,                 16#845C).
  -define(GL_SECONDARY_COLOR_ARRAY_POINTER_EXT,                16#845D).
  -define(GL_SECONDARY_COLOR_ARRAY_EXT,                        16#845E).
-endif.

-ifndef(GL_EXT_texture_perturb_normal).
  -define(GL_EXT_texture_perturb_normal,                       1).

  -define(GL_PERTURB_EXT,                                      16#85AE).
  -define(GL_TEXTURE_NORMAL_EXT,                               16#85AF).
-endif.

-ifndef(GL_EXT_multi_draw_arrays).
  -define(GL_EXT_multi_draw_arrays,                            1).

-endif.

-ifndef(GL_EXT_fog_coord).
  -define(GL_EXT_fog_coord,                                    1).

  -define(GL_FOG_COORDINATE_SOURCE_EXT,                        16#8450).
  -define(GL_FOG_COORDINATE_EXT,                               16#8451).
  -define(GL_FRAGMENT_DEPTH_EXT,                               16#8452).
  -define(GL_CURRENT_FOG_COORDINATE_EXT,                       16#8453).
  -define(GL_FOG_COORDINATE_ARRAY_TYPE_EXT,                    16#8454).
  -define(GL_FOG_COORDINATE_ARRAY_STRIDE_EXT,                  16#8455).
  -define(GL_FOG_COORDINATE_ARRAY_POINTER_EXT,                 16#8456).
  -define(GL_FOG_COORDINATE_ARRAY_EXT,                         16#8457).
-endif.

-ifndef(GL_REND_screen_coordinates).
  -define(GL_REND_screen_coordinates,                          1).

  -define(GL_SCREEN_COORDINATES_REND,                          16#8490).
  -define(GL_INVERTED_SCREEN_W_REND,                           16#8491).
-endif.

-ifndef(GL_EXT_coordinate_frame).
  -define(GL_EXT_coordinate_frame,                             1).

  -define(GL_TANGENT_ARRAY_EXT,                                16#8439).
  -define(GL_BINORMAL_ARRAY_EXT,                               16#843A).
  -define(GL_CURRENT_TANGENT_EXT,                              16#843B).
  -define(GL_CURRENT_BINORMAL_EXT,                             16#843C).
  -define(GL_TANGENT_ARRAY_TYPE_EXT,                           16#843E).
  -define(GL_TANGENT_ARRAY_STRIDE_EXT,                         16#843F).
  -define(GL_BINORMAL_ARRAY_TYPE_EXT,                          16#8440).
  -define(GL_BINORMAL_ARRAY_STRIDE_EXT,                        16#8441).
  -define(GL_TANGENT_ARRAY_POINTER_EXT,                        16#8442).
  -define(GL_BINORMAL_ARRAY_POINTER_EXT,                       16#8443).
  -define(GL_MAP1_TANGENT_EXT,                                 16#8444).
  -define(GL_MAP2_TANGENT_EXT,                                 16#8445).
  -define(GL_MAP1_BINORMAL_EXT,                                16#8446).
  -define(GL_MAP2_BINORMAL_EXT,                                16#8447).
-endif.

-ifndef(GL_EXT_texture_env_combine).
  -define(GL_EXT_texture_env_combine,                          1).

  -define(GL_COMBINE_EXT,                                      16#8570).
  -define(GL_COMBINE_RGB_EXT,                                  16#8571).
  -define(GL_COMBINE_ALPHA_EXT,                                16#8572).
  -define(GL_RGB_SCALE_EXT,                                    16#8573).
  -define(GL_ADD_SIGNED_EXT,                                   16#8574).
  -define(GL_INTERPOLATE_EXT,                                  16#8575).
  -define(GL_CONSTANT_EXT,                                     16#8576).
  -define(GL_PRIMARY_COLOR_EXT,                                16#8577).
  -define(GL_PREVIOUS_EXT,                                     16#8578).
  -define(GL_SOURCE0_RGB_EXT,                                  16#8580).
  -define(GL_SOURCE1_RGB_EXT,                                  16#8581).
  -define(GL_SOURCE2_RGB_EXT,                                  16#8582).
  -define(GL_SOURCE0_ALPHA_EXT,                                16#8588).
  -define(GL_SOURCE1_ALPHA_EXT,                                16#8589).
  -define(GL_SOURCE2_ALPHA_EXT,                                16#858A).
  -define(GL_OPERAND0_RGB_EXT,                                 16#8590).
  -define(GL_OPERAND1_RGB_EXT,                                 16#8591).
  -define(GL_OPERAND2_RGB_EXT,                                 16#8592).
  -define(GL_OPERAND0_ALPHA_EXT,                               16#8598).
  -define(GL_OPERAND1_ALPHA_EXT,                               16#8599).
  -define(GL_OPERAND2_ALPHA_EXT,                               16#859A).
-endif.

-ifndef(GL_APPLE_specular_vector).
  -define(GL_APPLE_specular_vector,                            1).

  -define(GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE,                16#85B0).
-endif.

-ifndef(GL_APPLE_transform_hint).
  -define(GL_APPLE_transform_hint,                             1).

  -define(GL_TRANSFORM_HINT_APPLE,                             16#85B1).
-endif.

-ifndef(GL_SGIX_fog_scale).
  -define(GL_SGIX_fog_scale,                                   1).

  -define(GL_FOG_SCALE_SGIX,                                   16#81FC).
  -define(GL_FOG_SCALE_VALUE_SGIX,                             16#81FD).
-endif.

-ifndef(GL_SUNX_constant_data).
  -define(GL_SUNX_constant_data,                               1).

  -define(GL_UNPACK_CONSTANT_DATA_SUNX,                        16#81D5).
  -define(GL_TEXTURE_CONSTANT_DATA_SUNX,                       16#81D6).
-endif.

-ifndef(GL_SUN_global_alpha).
  -define(GL_SUN_global_alpha,                                 1).

  -define(GL_GLOBAL_ALPHA_SUN,                                 16#81D9).
  -define(GL_GLOBAL_ALPHA_FACTOR_SUN,                          16#81DA).
-endif.

-ifndef(GL_SUN_triangle_list).
  -define(GL_SUN_triangle_list,                                1).

  -define(GL_RESTART_SUN,                                      16#0001).
  -define(GL_REPLACE_MIDDLE_SUN,                               16#0002).
  -define(GL_REPLACE_OLDEST_SUN,                               16#0003).
  -define(GL_TRIANGLE_LIST_SUN,                                16#81D7).
  -define(GL_REPLACEMENT_CODE_SUN,                             16#81D8).
  -define(GL_REPLACEMENT_CODE_ARRAY_SUN,                       16#85C0).
  -define(GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN,                  16#85C1).
  -define(GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN,                16#85C2).
  -define(GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN,               16#85C3).
  -define(GL_R1UI_V3F_SUN,                                     16#85C4).
  -define(GL_R1UI_C4UB_V3F_SUN,                                16#85C5).
  -define(GL_R1UI_C3F_V3F_SUN,                                 16#85C6).
  -define(GL_R1UI_N3F_V3F_SUN,                                 16#85C7).
  -define(GL_R1UI_C4F_N3F_V3F_SUN,                             16#85C8).
  -define(GL_R1UI_T2F_V3F_SUN,                                 16#85C9).
  -define(GL_R1UI_T2F_N3F_V3F_SUN,                             16#85CA).
  -define(GL_R1UI_T2F_C4F_N3F_V3F_SUN,                         16#85CB).
-endif.

-ifndef(GL_SUN_vertex).
  -define(GL_SUN_vertex,                                       1).

-endif.

-ifndef(GL_EXT_blend_func_separate).
  -define(GL_EXT_blend_func_separate,                          1).

  -define(GL_BLEND_DST_RGB_EXT,                                16#80C8).
  -define(GL_BLEND_SRC_RGB_EXT,                                16#80C9).
  -define(GL_BLEND_DST_ALPHA_EXT,                              16#80CA).
  -define(GL_BLEND_SRC_ALPHA_EXT,                              16#80CB).
-endif.

-ifndef(GL_INGR_color_clamp).
  -define(GL_INGR_color_clamp,                                 1).

  -define(GL_RED_MIN_CLAMP_INGR,                               16#8560).
  -define(GL_GREEN_MIN_CLAMP_INGR,                             16#8561).
  -define(GL_BLUE_MIN_CLAMP_INGR,                              16#8562).
  -define(GL_ALPHA_MIN_CLAMP_INGR,                             16#8563).
  -define(GL_RED_MAX_CLAMP_INGR,                               16#8564).
  -define(GL_GREEN_MAX_CLAMP_INGR,                             16#8565).
  -define(GL_BLUE_MAX_CLAMP_INGR,                              16#8566).
  -define(GL_ALPHA_MAX_CLAMP_INGR,                             16#8567).
-endif.

-ifndef(GL_INGR_interlace_read).
  -define(GL_INGR_interlace_read,                              1).

  -define(GL_INTERLACE_READ_INGR,                              16#8568).
-endif.

-ifndef(GL_EXT_stencil_wrap).
  -define(GL_EXT_stencil_wrap,                                 1).

  -define(GL_INCR_WRAP_EXT,                                    16#8507).
  -define(GL_DECR_WRAP_EXT,                                    16#8508).
-endif.

-ifndef(GL_EXT_422_pixels).
  -define(GL_EXT_422_pixels,                                   1).

  -define(GL_422_EXT,                                          16#80CC).
  -define(GL_422_REV_EXT,                                      16#80CD).
  -define(GL_422_AVERAGE_EXT,                                  16#80CE).
  -define(GL_422_REV_AVERAGE_EXT,                              16#80CF).
-endif.

-ifndef(GL_NV_texgen_reflection).
  -define(GL_NV_texgen_reflection,                             1).

  -define(GL_NORMAL_MAP_NV,                                    16#8511).
  -define(GL_REFLECTION_MAP_NV,                                16#8512).
-endif.

-ifndef(GL_EXT_texture_cube_map).
  -define(GL_EXT_texture_cube_map,                             1).

  -define(GL_NORMAL_MAP_EXT,                                   16#8511).
  -define(GL_REFLECTION_MAP_EXT,                               16#8512).
  -define(GL_TEXTURE_CUBE_MAP_EXT,                             16#8513).
  -define(GL_TEXTURE_BINDING_CUBE_MAP_EXT,                     16#8514).
  -define(GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT,                  16#8515).
  -define(GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT,                  16#8516).
  -define(GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT,                  16#8517).
  -define(GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT,                  16#8518).
  -define(GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT,                  16#8519).
  -define(GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT,                  16#851A).
  -define(GL_PROXY_TEXTURE_CUBE_MAP_EXT,                       16#851B).
  -define(GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT,                    16#851C).
-endif.

-ifndef(GL_SUN_convolution_border_modes).
  -define(GL_SUN_convolution_border_modes,                     1).

  -define(GL_WRAP_BORDER_SUN,                                  16#81D4).
-endif.

-ifndef(GL_EXT_texture_env_add).
  -define(GL_EXT_texture_env_add,                              1).

-endif.

-ifndef(GL_EXT_texture_lod_bias).
  -define(GL_EXT_texture_lod_bias,                             1).

  -define(GL_MAX_TEXTURE_LOD_BIAS_EXT,                         16#84FD).
  -define(GL_TEXTURE_FILTER_CONTROL_EXT,                       16#8500).
  -define(GL_TEXTURE_LOD_BIAS_EXT,                             16#8501).
-endif.

-ifndef(GL_EXT_texture_filter_anisotropic).
  -define(GL_EXT_texture_filter_anisotropic,                   1).

  -define(GL_TEXTURE_MAX_ANISOTROPY_EXT,                       16#84FE).
  -define(GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT,                   16#84FF).
-endif.

-ifndef(GL_EXT_vertex_weighting).
  -define(GL_EXT_vertex_weighting,                             1).

  -define(GL_MODELVIEW0_STACK_DEPTH_EXT,                       ?GL_MODELVIEW_STACK_DEPTH).
  -define(GL_MODELVIEW1_STACK_DEPTH_EXT,                       16#8502).
  -define(GL_MODELVIEW0_MATRIX_EXT,                            ?GL_MODELVIEW_MATRIX).
  -define(GL_MODELVIEW1_MATRIX_EXT,                            16#8506).
  -define(GL_VERTEX_WEIGHTING_EXT,                             16#8509).
  -define(GL_MODELVIEW0_EXT,                                   ?GL_MODELVIEW).
  -define(GL_MODELVIEW1_EXT,                                   16#850A).
  -define(GL_CURRENT_VERTEX_WEIGHT_EXT,                        16#850B).
  -define(GL_VERTEX_WEIGHT_ARRAY_EXT,                          16#850C).
  -define(GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT,                     16#850D).
  -define(GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT,                     16#850E).
  -define(GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT,                   16#850F).
  -define(GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT,                  16#8510).
-endif.

-ifndef(GL_NV_light_max_exponent).
  -define(GL_NV_light_max_exponent,                            1).

  -define(GL_MAX_SHININESS_NV,                                 16#8504).
  -define(GL_MAX_SPOT_EXPONENT_NV,                             16#8505).
-endif.

-ifndef(GL_NV_vertex_array_range).
  -define(GL_NV_vertex_array_range,                            1).

  -define(GL_VERTEX_ARRAY_RANGE_NV,                            16#851D).
  -define(GL_VERTEX_ARRAY_RANGE_LENGTH_NV,                     16#851E).
  -define(GL_VERTEX_ARRAY_RANGE_VALID_NV,                      16#851F).
  -define(GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV,                16#8520).
  -define(GL_VERTEX_ARRAY_RANGE_POINTER_NV,                    16#8521).
-endif.

-ifndef(GL_NV_register_combiners).
  -define(GL_NV_register_combiners,                            1).

  -define(GL_REGISTER_COMBINERS_NV,                            16#8522).
  -define(GL_VARIABLE_A_NV,                                    16#8523).
  -define(GL_VARIABLE_B_NV,                                    16#8524).
  -define(GL_VARIABLE_C_NV,                                    16#8525).
  -define(GL_VARIABLE_D_NV,                                    16#8526).
  -define(GL_VARIABLE_E_NV,                                    16#8527).
  -define(GL_VARIABLE_F_NV,                                    16#8528).
  -define(GL_VARIABLE_G_NV,                                    16#8529).
  -define(GL_CONSTANT_COLOR0_NV,                               16#852A).
  -define(GL_CONSTANT_COLOR1_NV,                               16#852B).
  -define(GL_PRIMARY_COLOR_NV,                                 16#852C).
  -define(GL_SECONDARY_COLOR_NV,                               16#852D).
  -define(GL_SPARE0_NV,                                        16#852E).
  -define(GL_SPARE1_NV,                                        16#852F).
  -define(GL_DISCARD_NV,                                       16#8530).
  -define(GL_E_TIMES_F_NV,                                     16#8531).
  -define(GL_SPARE0_PLUS_SECONDARY_COLOR_NV,                   16#8532).
  -define(GL_UNSIGNED_IDENTITY_NV,                             16#8536).
  -define(GL_UNSIGNED_INVERT_NV,                               16#8537).
  -define(GL_EXPAND_NORMAL_NV,                                 16#8538).
  -define(GL_EXPAND_NEGATE_NV,                                 16#8539).
  -define(GL_HALF_BIAS_NORMAL_NV,                              16#853A).
  -define(GL_HALF_BIAS_NEGATE_NV,                              16#853B).
  -define(GL_SIGNED_IDENTITY_NV,                               16#853C).
  -define(GL_SIGNED_NEGATE_NV,                                 16#853D).
  -define(GL_SCALE_BY_TWO_NV,                                  16#853E).
  -define(GL_SCALE_BY_FOUR_NV,                                 16#853F).
  -define(GL_SCALE_BY_ONE_HALF_NV,                             16#8540).
  -define(GL_BIAS_BY_NEGATIVE_ONE_HALF_NV,                     16#8541).
  -define(GL_COMBINER_INPUT_NV,                                16#8542).
  -define(GL_COMBINER_MAPPING_NV,                              16#8543).
  -define(GL_COMBINER_COMPONENT_USAGE_NV,                      16#8544).
  -define(GL_COMBINER_AB_DOT_PRODUCT_NV,                       16#8545).
  -define(GL_COMBINER_CD_DOT_PRODUCT_NV,                       16#8546).
  -define(GL_COMBINER_MUX_SUM_NV,                              16#8547).
  -define(GL_COMBINER_SCALE_NV,                                16#8548).
  -define(GL_COMBINER_BIAS_NV,                                 16#8549).
  -define(GL_COMBINER_AB_OUTPUT_NV,                            16#854A).
  -define(GL_COMBINER_CD_OUTPUT_NV,                            16#854B).
  -define(GL_COMBINER_SUM_OUTPUT_NV,                           16#854C).
  -define(GL_MAX_GENERAL_COMBINERS_NV,                         16#854D).
  -define(GL_NUM_GENERAL_COMBINERS_NV,                         16#854E).
  -define(GL_COLOR_SUM_CLAMP_NV,                               16#854F).
  -define(GL_COMBINER0_NV,                                     16#8550).
  -define(GL_COMBINER1_NV,                                     16#8551).
  -define(GL_COMBINER2_NV,                                     16#8552).
  -define(GL_COMBINER3_NV,                                     16#8553).
  -define(GL_COMBINER4_NV,                                     16#8554).
  -define(GL_COMBINER5_NV,                                     16#8555).
  -define(GL_COMBINER6_NV,                                     16#8556).
  -define(GL_COMBINER7_NV,                                     16#8557).
%% reuse GL_TEXTURE0_ARB
%% reuse GL_TEXTURE1_ARB
%% reuse GL_ZERO
%% reuse GL_NONE
%% reuse GL_FOG
-endif.

-ifndef(GL_NV_fog_distance).
  -define(GL_NV_fog_distance,                                  1).

  -define(GL_FOG_DISTANCE_MODE_NV,                             16#855A).
  -define(GL_EYE_RADIAL_NV,                                    16#855B).
  -define(GL_EYE_PLANE_ABSOLUTE_NV,                            16#855C).
%% reuse GL_EYE_PLANE
-endif.

-ifndef(GL_NV_texgen_emboss).
  -define(GL_NV_texgen_emboss,                                 1).

  -define(GL_EMBOSS_LIGHT_NV,                                  16#855D).
  -define(GL_EMBOSS_CONSTANT_NV,                               16#855E).
  -define(GL_EMBOSS_MAP_NV,                                    16#855F).
-endif.

-ifndef(GL_NV_blend_square).
  -define(GL_NV_blend_square,                                  1).

-endif.

-ifndef(GL_NV_texture_env_combine4).
  -define(GL_NV_texture_env_combine4,                          1).

  -define(GL_COMBINE4_NV,                                      16#8503).
  -define(GL_SOURCE3_RGB_NV,                                   16#8583).
  -define(GL_SOURCE3_ALPHA_NV,                                 16#858B).
  -define(GL_OPERAND3_RGB_NV,                                  16#8593).
  -define(GL_OPERAND3_ALPHA_NV,                                16#859B).
-endif.

-ifndef(GL_MESA_resize_buffers).
  -define(GL_MESA_resize_buffers,                              1).

-endif.

-ifndef(GL_MESA_window_pos).
  -define(GL_MESA_window_pos,                                  1).

-endif.

-ifndef(GL_EXT_texture_compression_s3tc).
  -define(GL_EXT_texture_compression_s3tc,                     1).

  -define(GL_COMPRESSED_RGB_S3TC_DXT1_EXT,                     16#83F0).
  -define(GL_COMPRESSED_RGBA_S3TC_DXT1_EXT,                    16#83F1).
  -define(GL_COMPRESSED_RGBA_S3TC_DXT3_EXT,                    16#83F2).
  -define(GL_COMPRESSED_RGBA_S3TC_DXT5_EXT,                    16#83F3).
-endif.

-ifndef(GL_IBM_cull_vertex).
  -define(GL_IBM_cull_vertex,                                  1).

  -define(GL_CULL_VERTEX_IBM,                                  103050).
-endif.

-ifndef(GL_IBM_multimode_draw_arrays).
  -define(GL_IBM_multimode_draw_arrays,                        1).

-endif.

-ifndef(GL_IBM_vertex_array_lists).
  -define(GL_IBM_vertex_array_lists,                           1).

  -define(GL_VERTEX_ARRAY_LIST_IBM,                            103070).
  -define(GL_NORMAL_ARRAY_LIST_IBM,                            103071).
  -define(GL_COLOR_ARRAY_LIST_IBM,                             103072).
  -define(GL_INDEX_ARRAY_LIST_IBM,                             103073).
  -define(GL_TEXTURE_COORD_ARRAY_LIST_IBM,                     103074).
  -define(GL_EDGE_FLAG_ARRAY_LIST_IBM,                         103075).
  -define(GL_FOG_COORDINATE_ARRAY_LIST_IBM,                    103076).
  -define(GL_SECONDARY_COLOR_ARRAY_LIST_IBM,                   103077).
  -define(GL_VERTEX_ARRAY_LIST_STRIDE_IBM,                     103080).
  -define(GL_NORMAL_ARRAY_LIST_STRIDE_IBM,                     103081).
  -define(GL_COLOR_ARRAY_LIST_STRIDE_IBM,                      103082).
  -define(GL_INDEX_ARRAY_LIST_STRIDE_IBM,                      103083).
  -define(GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM,              103084).
  -define(GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM,                  103085).
  -define(GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM,             103086).
  -define(GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM,            103087).
-endif.

-ifndef(GL_SGIX_subsample).
  -define(GL_SGIX_subsample,                                   1).

  -define(GL_PACK_SUBSAMPLE_RATE_SGIX,                         16#85A0).
  -define(GL_UNPACK_SUBSAMPLE_RATE_SGIX,                       16#85A1).
  -define(GL_PIXEL_SUBSAMPLE_4444_SGIX,                        16#85A2).
  -define(GL_PIXEL_SUBSAMPLE_2424_SGIX,                        16#85A3).
  -define(GL_PIXEL_SUBSAMPLE_4242_SGIX,                        16#85A4).
-endif.

-ifndef(GL_SGIX_ycrcb_subsample).
  -define(GL_SGIX_ycrcb_subsample,                             1).

-endif.

-ifndef(GL_SGIX_ycrcba).
  -define(GL_SGIX_ycrcba,                                      1).

  -define(GL_YCRCB_SGIX,                                       16#8318).
  -define(GL_YCRCBA_SGIX,                                      16#8319).
-endif.

-ifndef(GL_SGI_depth_pass_instrument).
  -define(GL_SGI_depth_pass_instrument,                        1).

  -define(GL_DEPTH_PASS_INSTRUMENT_SGIX,                       16#8310).
  -define(GL_DEPTH_PASS_INSTRUMENT_COUNTERS_SGIX,              16#8311).
  -define(GL_DEPTH_PASS_INSTRUMENT_MAX_SGIX,                   16#8312).
-endif.

-ifndef(GL_3DFX_texture_compression_FXT1).
  -define(GL_3DFX_texture_compression_FXT1,                    1).

  -define(GL_COMPRESSED_RGB_FXT1_3DFX,                         16#86B0).
  -define(GL_COMPRESSED_RGBA_FXT1_3DFX,                        16#86B1).
-endif.

-ifndef(GL_3DFX_multisample).
  -define(GL_3DFX_multisample,                                 1).

  -define(GL_MULTISAMPLE_3DFX,                                 16#86B2).
  -define(GL_SAMPLE_BUFFERS_3DFX,                              16#86B3).
  -define(GL_SAMPLES_3DFX,                                     16#86B4).
  -define(GL_MULTISAMPLE_BIT_3DFX,                             16#20000000).
-endif.

-ifndef(GL_3DFX_tbuffer).
  -define(GL_3DFX_tbuffer,                                     1).

-endif.

-ifndef(GL_EXT_multisample).
  -define(GL_EXT_multisample,                                  1).

  -define(GL_MULTISAMPLE_EXT,                                  16#809D).
  -define(GL_SAMPLE_ALPHA_TO_MASK_EXT,                         16#809E).
  -define(GL_SAMPLE_ALPHA_TO_ONE_EXT,                          16#809F).
  -define(GL_SAMPLE_MASK_EXT,                                  16#80A0).
  -define(GL_1PASS_EXT,                                        16#80A1).
  -define(GL_2PASS_0_EXT,                                      16#80A2).
  -define(GL_2PASS_1_EXT,                                      16#80A3).
  -define(GL_4PASS_0_EXT,                                      16#80A4).
  -define(GL_4PASS_1_EXT,                                      16#80A5).
  -define(GL_4PASS_2_EXT,                                      16#80A6).
  -define(GL_4PASS_3_EXT,                                      16#80A7).
  -define(GL_SAMPLE_BUFFERS_EXT,                               16#80A8).
  -define(GL_SAMPLES_EXT,                                      16#80A9).
  -define(GL_SAMPLE_MASK_VALUE_EXT,                            16#80AA).
  -define(GL_SAMPLE_MASK_INVERT_EXT,                           16#80AB).
  -define(GL_SAMPLE_PATTERN_EXT,                               16#80AC).
  -define(GL_MULTISAMPLE_BIT_EXT,                              16#20000000).
-endif.

-ifndef(GL_SGIX_vertex_preclip).
  -define(GL_SGIX_vertex_preclip,                              1).

  -define(GL_VERTEX_PRECLIP_SGIX,                              16#83EE).
  -define(GL_VERTEX_PRECLIP_HINT_SGIX,                         16#83EF).
-endif.

-ifndef(GL_SGIX_convolution_accuracy).
  -define(GL_SGIX_convolution_accuracy,                        1).

  -define(GL_CONVOLUTION_HINT_SGIX,                            16#8316).
-endif.

-ifndef(GL_SGIX_resample).
  -define(GL_SGIX_resample,                                    1).

  -define(GL_PACK_RESAMPLE_SGIX,                               16#842C).
  -define(GL_UNPACK_RESAMPLE_SGIX,                             16#842D).
  -define(GL_RESAMPLE_REPLICATE_SGIX,                          16#842E).
  -define(GL_RESAMPLE_ZERO_FILL_SGIX,                          16#842F).
  -define(GL_RESAMPLE_DECIMATE_SGIX,                           16#8430).
-endif.

-ifndef(GL_SGIS_point_line_texgen).
  -define(GL_SGIS_point_line_texgen,                           1).

  -define(GL_EYE_DISTANCE_TO_POINT_SGIS,                       16#81F0).
  -define(GL_OBJECT_DISTANCE_TO_POINT_SGIS,                    16#81F1).
  -define(GL_EYE_DISTANCE_TO_LINE_SGIS,                        16#81F2).
  -define(GL_OBJECT_DISTANCE_TO_LINE_SGIS,                     16#81F3).
  -define(GL_EYE_POINT_SGIS,                                   16#81F4).
  -define(GL_OBJECT_POINT_SGIS,                                16#81F5).
  -define(GL_EYE_LINE_SGIS,                                    16#81F6).
  -define(GL_OBJECT_LINE_SGIS,                                 16#81F7).
-endif.

-ifndef(GL_SGIS_texture_color_mask).
  -define(GL_SGIS_texture_color_mask,                          1).

  -define(GL_TEXTURE_COLOR_WRITEMASK_SGIS,                     16#81EF).
-endif.

-ifndef(GL_EXT_texture_env_dot3).
  -define(GL_EXT_texture_env_dot3,                             1).

  -define(GL_DOT3_RGB_EXT,                                     16#8740).
  -define(GL_DOT3_RGBA_EXT,                                    16#8741).
-endif.

-ifndef(GL_ATI_texture_mirror_once).
  -define(GL_ATI_texture_mirror_once,                          1).

  -define(GL_MIRROR_CLAMP_ATI,                                 16#8742).
  -define(GL_MIRROR_CLAMP_TO_EDGE_ATI,                         16#8743).
-endif.

-ifndef(GL_NV_fence).
  -define(GL_NV_fence,                                         1).

  -define(GL_ALL_COMPLETED_NV,                                 16#84F2).
  -define(GL_FENCE_STATUS_NV,                                  16#84F3).
  -define(GL_FENCE_CONDITION_NV,                               16#84F4).
-endif.

-ifndef(GL_IBM_texture_mirrored_repeat).
  -define(GL_IBM_texture_mirrored_repeat,                      1).

  -define(GL_MIRRORED_REPEAT_IBM,                              16#8370).
-endif.

-ifndef(GL_NV_evaluators).
  -define(GL_NV_evaluators,                                    1).

  -define(GL_EVAL_2D_NV,                                       16#86C0).
  -define(GL_EVAL_TRIANGULAR_2D_NV,                            16#86C1).
  -define(GL_MAP_TESSELLATION_NV,                              16#86C2).
  -define(GL_MAP_ATTRIB_U_ORDER_NV,                            16#86C3).
  -define(GL_MAP_ATTRIB_V_ORDER_NV,                            16#86C4).
  -define(GL_EVAL_FRACTIONAL_TESSELLATION_NV,                  16#86C5).
  -define(GL_EVAL_VERTEX_ATTRIB0_NV,                           16#86C6).
  -define(GL_EVAL_VERTEX_ATTRIB1_NV,                           16#86C7).
  -define(GL_EVAL_VERTEX_ATTRIB2_NV,                           16#86C8).
  -define(GL_EVAL_VERTEX_ATTRIB3_NV,                           16#86C9).
  -define(GL_EVAL_VERTEX_ATTRIB4_NV,                           16#86CA).
  -define(GL_EVAL_VERTEX_ATTRIB5_NV,                           16#86CB).
  -define(GL_EVAL_VERTEX_ATTRIB6_NV,                           16#86CC).
  -define(GL_EVAL_VERTEX_ATTRIB7_NV,                           16#86CD).
  -define(GL_EVAL_VERTEX_ATTRIB8_NV,                           16#86CE).
  -define(GL_EVAL_VERTEX_ATTRIB9_NV,                           16#86CF).
  -define(GL_EVAL_VERTEX_ATTRIB10_NV,                          16#86D0).
  -define(GL_EVAL_VERTEX_ATTRIB11_NV,                          16#86D1).
  -define(GL_EVAL_VERTEX_ATTRIB12_NV,                          16#86D2).
  -define(GL_EVAL_VERTEX_ATTRIB13_NV,                          16#86D3).
  -define(GL_EVAL_VERTEX_ATTRIB14_NV,                          16#86D4).
  -define(GL_EVAL_VERTEX_ATTRIB15_NV,                          16#86D5).
  -define(GL_MAX_MAP_TESSELLATION_NV,                          16#86D6).
  -define(GL_MAX_RATIONAL_EVAL_ORDER_NV,                       16#86D7).
-endif.

-ifndef(GL_NV_packed_depth_stencil).
  -define(GL_NV_packed_depth_stencil,                          1).

  -define(GL_DEPTH_STENCIL_NV,                                 16#84F9).
  -define(GL_UNSIGNED_INT_24_8_NV,                             16#84FA).
-endif.

-ifndef(GL_NV_register_combiners2).
  -define(GL_NV_register_combiners2,                           1).

  -define(GL_PER_STAGE_CONSTANTS_NV,                           16#8535).
-endif.

-ifndef(GL_NV_texture_compression_vtc).
  -define(GL_NV_texture_compression_vtc,                       1).

-endif.

-ifndef(GL_NV_texture_rectangle).
  -define(GL_NV_texture_rectangle,                             1).

  -define(GL_TEXTURE_RECTANGLE_NV,                             16#84F5).
  -define(GL_TEXTURE_BINDING_RECTANGLE_NV,                     16#84F6).
  -define(GL_PROXY_TEXTURE_RECTANGLE_NV,                       16#84F7).
  -define(GL_MAX_RECTANGLE_TEXTURE_SIZE_NV,                    16#84F8).
-endif.

-ifndef(GL_NV_texture_shader).
  -define(GL_NV_texture_shader,                                1).

  -define(GL_OFFSET_TEXTURE_RECTANGLE_NV,                      16#864C).
  -define(GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV,                16#864D).
  -define(GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV,                 16#864E).
  -define(GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV,             16#86D9).
  -define(GL_UNSIGNED_INT_S8_S8_8_8_NV,                        16#86DA).
  -define(GL_UNSIGNED_INT_8_8_S8_S8_REV_NV,                    16#86DB).
  -define(GL_DSDT_MAG_INTENSITY_NV,                            16#86DC).
  -define(GL_SHADER_CONSISTENT_NV,                             16#86DD).
  -define(GL_TEXTURE_SHADER_NV,                                16#86DE).
  -define(GL_SHADER_OPERATION_NV,                              16#86DF).
  -define(GL_CULL_MODES_NV,                                    16#86E0).
  -define(GL_OFFSET_TEXTURE_MATRIX_NV,                         16#86E1).
  -define(GL_OFFSET_TEXTURE_SCALE_NV,                          16#86E2).
  -define(GL_OFFSET_TEXTURE_BIAS_NV,                           16#86E3).
  -define(GL_OFFSET_TEXTURE_2D_MATRIX_NV,                      ?GL_OFFSET_TEXTURE_MATRIX_NV).
  -define(GL_OFFSET_TEXTURE_2D_SCALE_NV,                       ?GL_OFFSET_TEXTURE_SCALE_NV).
  -define(GL_OFFSET_TEXTURE_2D_BIAS_NV,                        ?GL_OFFSET_TEXTURE_BIAS_NV).
  -define(GL_PREVIOUS_TEXTURE_INPUT_NV,                        16#86E4).
  -define(GL_CONST_EYE_NV,                                     16#86E5).
  -define(GL_PASS_THROUGH_NV,                                  16#86E6).
  -define(GL_CULL_FRAGMENT_NV,                                 16#86E7).
  -define(GL_OFFSET_TEXTURE_2D_NV,                             16#86E8).
  -define(GL_DEPENDENT_AR_TEXTURE_2D_NV,                       16#86E9).
  -define(GL_DEPENDENT_GB_TEXTURE_2D_NV,                       16#86EA).
  -define(GL_DOT_PRODUCT_NV,                                   16#86EC).
  -define(GL_DOT_PRODUCT_DEPTH_REPLACE_NV,                     16#86ED).
  -define(GL_DOT_PRODUCT_TEXTURE_2D_NV,                        16#86EE).
  -define(GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV,                  16#86F0).
  -define(GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV,                  16#86F1).
  -define(GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV,                  16#86F2).
  -define(GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV,        16#86F3).
  -define(GL_HILO_NV,                                          16#86F4).
  -define(GL_DSDT_NV,                                          16#86F5).
  -define(GL_DSDT_MAG_NV,                                      16#86F6).
  -define(GL_DSDT_MAG_VIB_NV,                                  16#86F7).
  -define(GL_HILO16_NV,                                        16#86F8).
  -define(GL_SIGNED_HILO_NV,                                   16#86F9).
  -define(GL_SIGNED_HILO16_NV,                                 16#86FA).
  -define(GL_SIGNED_RGBA_NV,                                   16#86FB).
  -define(GL_SIGNED_RGBA8_NV,                                  16#86FC).
  -define(GL_SIGNED_RGB_NV,                                    16#86FE).
  -define(GL_SIGNED_RGB8_NV,                                   16#86FF).
  -define(GL_SIGNED_LUMINANCE_NV,                              16#8701).
  -define(GL_SIGNED_LUMINANCE8_NV,                             16#8702).
  -define(GL_SIGNED_LUMINANCE_ALPHA_NV,                        16#8703).
  -define(GL_SIGNED_LUMINANCE8_ALPHA8_NV,                      16#8704).
  -define(GL_SIGNED_ALPHA_NV,                                  16#8705).
  -define(GL_SIGNED_ALPHA8_NV,                                 16#8706).
  -define(GL_SIGNED_INTENSITY_NV,                              16#8707).
  -define(GL_SIGNED_INTENSITY8_NV,                             16#8708).
  -define(GL_DSDT8_NV,                                         16#8709).
  -define(GL_DSDT8_MAG8_NV,                                    16#870A).
  -define(GL_DSDT8_MAG8_INTENSITY8_NV,                         16#870B).
  -define(GL_SIGNED_RGB_UNSIGNED_ALPHA_NV,                     16#870C).
  -define(GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV,                   16#870D).
  -define(GL_HI_SCALE_NV,                                      16#870E).
  -define(GL_LO_SCALE_NV,                                      16#870F).
  -define(GL_DS_SCALE_NV,                                      16#8710).
  -define(GL_DT_SCALE_NV,                                      16#8711).
  -define(GL_MAGNITUDE_SCALE_NV,                               16#8712).
  -define(GL_VIBRANCE_SCALE_NV,                                16#8713).
  -define(GL_HI_BIAS_NV,                                       16#8714).
  -define(GL_LO_BIAS_NV,                                       16#8715).
  -define(GL_DS_BIAS_NV,                                       16#8716).
  -define(GL_DT_BIAS_NV,                                       16#8717).
  -define(GL_MAGNITUDE_BIAS_NV,                                16#8718).
  -define(GL_VIBRANCE_BIAS_NV,                                 16#8719).
  -define(GL_TEXTURE_BORDER_VALUES_NV,                         16#871A).
  -define(GL_TEXTURE_HI_SIZE_NV,                               16#871B).
  -define(GL_TEXTURE_LO_SIZE_NV,                               16#871C).
  -define(GL_TEXTURE_DS_SIZE_NV,                               16#871D).
  -define(GL_TEXTURE_DT_SIZE_NV,                               16#871E).
  -define(GL_TEXTURE_MAG_SIZE_NV,                              16#871F).
-endif.

-ifndef(GL_NV_texture_shader2).
  -define(GL_NV_texture_shader2,                               1).

  -define(GL_DOT_PRODUCT_TEXTURE_3D_NV,                        16#86EF).
-endif.

-ifndef(GL_NV_vertex_array_range2).
  -define(GL_NV_vertex_array_range2,                           1).

  -define(GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV,              16#8533).
-endif.

-ifndef(GL_NV_vertex_program).
  -define(GL_NV_vertex_program,                                1).

  -define(GL_VERTEX_PROGRAM_NV,                                16#8620).
  -define(GL_VERTEX_STATE_PROGRAM_NV,                          16#8621).
  -define(GL_ATTRIB_ARRAY_SIZE_NV,                             16#8623).
  -define(GL_ATTRIB_ARRAY_STRIDE_NV,                           16#8624).
  -define(GL_ATTRIB_ARRAY_TYPE_NV,                             16#8625).
  -define(GL_CURRENT_ATTRIB_NV,                                16#8626).
  -define(GL_PROGRAM_LENGTH_NV,                                16#8627).
  -define(GL_PROGRAM_STRING_NV,                                16#8628).
  -define(GL_MODELVIEW_PROJECTION_NV,                          16#8629).
  -define(GL_IDENTITY_NV,                                      16#862A).
  -define(GL_INVERSE_NV,                                       16#862B).
  -define(GL_TRANSPOSE_NV,                                     16#862C).
  -define(GL_INVERSE_TRANSPOSE_NV,                             16#862D).
  -define(GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV,                  16#862E).
  -define(GL_MAX_TRACK_MATRICES_NV,                            16#862F).
  -define(GL_MATRIX0_NV,                                       16#8630).
  -define(GL_MATRIX1_NV,                                       16#8631).
  -define(GL_MATRIX2_NV,                                       16#8632).
  -define(GL_MATRIX3_NV,                                       16#8633).
  -define(GL_MATRIX4_NV,                                       16#8634).
  -define(GL_MATRIX5_NV,                                       16#8635).
  -define(GL_MATRIX6_NV,                                       16#8636).
  -define(GL_MATRIX7_NV,                                       16#8637).
  -define(GL_CURRENT_MATRIX_STACK_DEPTH_NV,                    16#8640).
  -define(GL_CURRENT_MATRIX_NV,                                16#8641).
  -define(GL_VERTEX_PROGRAM_POINT_SIZE_NV,                     16#8642).
  -define(GL_VERTEX_PROGRAM_TWO_SIDE_NV,                       16#8643).
  -define(GL_PROGRAM_PARAMETER_NV,                             16#8644).
  -define(GL_ATTRIB_ARRAY_POINTER_NV,                          16#8645).
  -define(GL_PROGRAM_TARGET_NV,                                16#8646).
  -define(GL_PROGRAM_RESIDENT_NV,                              16#8647).
  -define(GL_TRACK_MATRIX_NV,                                  16#8648).
  -define(GL_TRACK_MATRIX_TRANSFORM_NV,                        16#8649).
  -define(GL_VERTEX_PROGRAM_BINDING_NV,                        16#864A).
  -define(GL_PROGRAM_ERROR_POSITION_NV,                        16#864B).
  -define(GL_VERTEX_ATTRIB_ARRAY0_NV,                          16#8650).
  -define(GL_VERTEX_ATTRIB_ARRAY1_NV,                          16#8651).
  -define(GL_VERTEX_ATTRIB_ARRAY2_NV,                          16#8652).
  -define(GL_VERTEX_ATTRIB_ARRAY3_NV,                          16#8653).
  -define(GL_VERTEX_ATTRIB_ARRAY4_NV,                          16#8654).
  -define(GL_VERTEX_ATTRIB_ARRAY5_NV,                          16#8655).
  -define(GL_VERTEX_ATTRIB_ARRAY6_NV,                          16#8656).
  -define(GL_VERTEX_ATTRIB_ARRAY7_NV,                          16#8657).
  -define(GL_VERTEX_ATTRIB_ARRAY8_NV,                          16#8658).
  -define(GL_VERTEX_ATTRIB_ARRAY9_NV,                          16#8659).
  -define(GL_VERTEX_ATTRIB_ARRAY10_NV,                         16#865A).
  -define(GL_VERTEX_ATTRIB_ARRAY11_NV,                         16#865B).
  -define(GL_VERTEX_ATTRIB_ARRAY12_NV,                         16#865C).
  -define(GL_VERTEX_ATTRIB_ARRAY13_NV,                         16#865D).
  -define(GL_VERTEX_ATTRIB_ARRAY14_NV,                         16#865E).
  -define(GL_VERTEX_ATTRIB_ARRAY15_NV,                         16#865F).
  -define(GL_MAP1_VERTEX_ATTRIB0_4_NV,                         16#8660).
  -define(GL_MAP1_VERTEX_ATTRIB1_4_NV,                         16#8661).
  -define(GL_MAP1_VERTEX_ATTRIB2_4_NV,                         16#8662).
  -define(GL_MAP1_VERTEX_ATTRIB3_4_NV,                         16#8663).
  -define(GL_MAP1_VERTEX_ATTRIB4_4_NV,                         16#8664).
  -define(GL_MAP1_VERTEX_ATTRIB5_4_NV,                         16#8665).
  -define(GL_MAP1_VERTEX_ATTRIB6_4_NV,                         16#8666).
  -define(GL_MAP1_VERTEX_ATTRIB7_4_NV,                         16#8667).
  -define(GL_MAP1_VERTEX_ATTRIB8_4_NV,                         16#8668).
  -define(GL_MAP1_VERTEX_ATTRIB9_4_NV,                         16#8669).
  -define(GL_MAP1_VERTEX_ATTRIB10_4_NV,                        16#866A).
  -define(GL_MAP1_VERTEX_ATTRIB11_4_NV,                        16#866B).
  -define(GL_MAP1_VERTEX_ATTRIB12_4_NV,                        16#866C).
  -define(GL_MAP1_VERTEX_ATTRIB13_4_NV,                        16#866D).
  -define(GL_MAP1_VERTEX_ATTRIB14_4_NV,                        16#866E).
  -define(GL_MAP1_VERTEX_ATTRIB15_4_NV,                        16#866F).
  -define(GL_MAP2_VERTEX_ATTRIB0_4_NV,                         16#8670).
  -define(GL_MAP2_VERTEX_ATTRIB1_4_NV,                         16#8671).
  -define(GL_MAP2_VERTEX_ATTRIB2_4_NV,                         16#8672).
  -define(GL_MAP2_VERTEX_ATTRIB3_4_NV,                         16#8673).
  -define(GL_MAP2_VERTEX_ATTRIB4_4_NV,                         16#8674).
  -define(GL_MAP2_VERTEX_ATTRIB5_4_NV,                         16#8675).
  -define(GL_MAP2_VERTEX_ATTRIB6_4_NV,                         16#8676).
  -define(GL_MAP2_VERTEX_ATTRIB7_4_NV,                         16#8677).
  -define(GL_MAP2_VERTEX_ATTRIB8_4_NV,                         16#8678).
  -define(GL_MAP2_VERTEX_ATTRIB9_4_NV,                         16#8679).
  -define(GL_MAP2_VERTEX_ATTRIB10_4_NV,                        16#867A).
  -define(GL_MAP2_VERTEX_ATTRIB11_4_NV,                        16#867B).
  -define(GL_MAP2_VERTEX_ATTRIB12_4_NV,                        16#867C).
  -define(GL_MAP2_VERTEX_ATTRIB13_4_NV,                        16#867D).
  -define(GL_MAP2_VERTEX_ATTRIB14_4_NV,                        16#867E).
  -define(GL_MAP2_VERTEX_ATTRIB15_4_NV,                        16#867F).
-endif.

-ifndef(GL_SGIX_texture_coordinate_clamp).
  -define(GL_SGIX_texture_coordinate_clamp,                    1).

  -define(GL_TEXTURE_MAX_CLAMP_S_SGIX,                         16#8369).
  -define(GL_TEXTURE_MAX_CLAMP_T_SGIX,                         16#836A).
  -define(GL_TEXTURE_MAX_CLAMP_R_SGIX,                         16#836B).
-endif.

-ifndef(GL_SGIX_scalebias_hint).
  -define(GL_SGIX_scalebias_hint,                              1).

  -define(GL_SCALEBIAS_HINT_SGIX,                              16#8322).
-endif.

-ifndef(GL_OML_interlace).
  -define(GL_OML_interlace,                                    1).

  -define(GL_INTERLACE_OML,                                    16#8980).
  -define(GL_INTERLACE_READ_OML,                               16#8981).
-endif.

-ifndef(GL_OML_subsample).
  -define(GL_OML_subsample,                                    1).

  -define(GL_FORMAT_SUBSAMPLE_24_24_OML,                       16#8982).
  -define(GL_FORMAT_SUBSAMPLE_244_244_OML,                     16#8983).
-endif.

-ifndef(GL_OML_resample).
  -define(GL_OML_resample,                                     1).

  -define(GL_PACK_RESAMPLE_OML,                                16#8984).
  -define(GL_UNPACK_RESAMPLE_OML,                              16#8985).
  -define(GL_RESAMPLE_REPLICATE_OML,                           16#8986).
  -define(GL_RESAMPLE_ZERO_FILL_OML,                           16#8987).
  -define(GL_RESAMPLE_AVERAGE_OML,                             16#8988).
  -define(GL_RESAMPLE_DECIMATE_OML,                            16#8989).
-endif.

-ifndef(GL_NV_copy_depth_to_color).
  -define(GL_NV_copy_depth_to_color,                           1).

  -define(GL_DEPTH_STENCIL_TO_RGBA_NV,                         16#886E).
  -define(GL_DEPTH_STENCIL_TO_BGRA_NV,                         16#886F).
-endif.

-ifndef(GL_ATI_envmap_bumpmap).
  -define(GL_ATI_envmap_bumpmap,                               1).

  -define(GL_BUMP_ROT_MATRIX_ATI,                              16#8775).
  -define(GL_BUMP_ROT_MATRIX_SIZE_ATI,                         16#8776).
  -define(GL_BUMP_NUM_TEX_UNITS_ATI,                           16#8777).
  -define(GL_BUMP_TEX_UNITS_ATI,                               16#8778).
  -define(GL_DUDV_ATI,                                         16#8779).
  -define(GL_DU8DV8_ATI,                                       16#877A).
  -define(GL_BUMP_ENVMAP_ATI,                                  16#877B).
  -define(GL_BUMP_TARGET_ATI,                                  16#877C).
-endif.

-ifndef(GL_ATI_fragment_shader).
  -define(GL_ATI_fragment_shader,                              1).

  -define(GL_FRAGMENT_SHADER_ATI,                              16#8920).
  -define(GL_REG_0_ATI,                                        16#8921).
  -define(GL_REG_1_ATI,                                        16#8922).
  -define(GL_REG_2_ATI,                                        16#8923).
  -define(GL_REG_3_ATI,                                        16#8924).
  -define(GL_REG_4_ATI,                                        16#8925).
  -define(GL_REG_5_ATI,                                        16#8926).
  -define(GL_REG_6_ATI,                                        16#8927).
  -define(GL_REG_7_ATI,                                        16#8928).
  -define(GL_REG_8_ATI,                                        16#8929).
  -define(GL_REG_9_ATI,                                        16#892A).
  -define(GL_REG_10_ATI,                                       16#892B).
  -define(GL_REG_11_ATI,                                       16#892C).
  -define(GL_REG_12_ATI,                                       16#892D).
  -define(GL_REG_13_ATI,                                       16#892E).
  -define(GL_REG_14_ATI,                                       16#892F).
  -define(GL_REG_15_ATI,                                       16#8930).
  -define(GL_REG_16_ATI,                                       16#8931).
  -define(GL_REG_17_ATI,                                       16#8932).
  -define(GL_REG_18_ATI,                                       16#8933).
  -define(GL_REG_19_ATI,                                       16#8934).
  -define(GL_REG_20_ATI,                                       16#8935).
  -define(GL_REG_21_ATI,                                       16#8936).
  -define(GL_REG_22_ATI,                                       16#8937).
  -define(GL_REG_23_ATI,                                       16#8938).
  -define(GL_REG_24_ATI,                                       16#8939).
  -define(GL_REG_25_ATI,                                       16#893A).
  -define(GL_REG_26_ATI,                                       16#893B).
  -define(GL_REG_27_ATI,                                       16#893C).
  -define(GL_REG_28_ATI,                                       16#893D).
  -define(GL_REG_29_ATI,                                       16#893E).
  -define(GL_REG_30_ATI,                                       16#893F).
  -define(GL_REG_31_ATI,                                       16#8940).
  -define(GL_CON_0_ATI,                                        16#8941).
  -define(GL_CON_1_ATI,                                        16#8942).
  -define(GL_CON_2_ATI,                                        16#8943).
  -define(GL_CON_3_ATI,                                        16#8944).
  -define(GL_CON_4_ATI,                                        16#8945).
  -define(GL_CON_5_ATI,                                        16#8946).
  -define(GL_CON_6_ATI,                                        16#8947).
  -define(GL_CON_7_ATI,                                        16#8948).
  -define(GL_CON_8_ATI,                                        16#8949).
  -define(GL_CON_9_ATI,                                        16#894A).
  -define(GL_CON_10_ATI,                                       16#894B).
  -define(GL_CON_11_ATI,                                       16#894C).
  -define(GL_CON_12_ATI,                                       16#894D).
  -define(GL_CON_13_ATI,                                       16#894E).
  -define(GL_CON_14_ATI,                                       16#894F).
  -define(GL_CON_15_ATI,                                       16#8950).
  -define(GL_CON_16_ATI,                                       16#8951).
  -define(GL_CON_17_ATI,                                       16#8952).
  -define(GL_CON_18_ATI,                                       16#8953).
  -define(GL_CON_19_ATI,                                       16#8954).
  -define(GL_CON_20_ATI,                                       16#8955).
  -define(GL_CON_21_ATI,                                       16#8956).
  -define(GL_CON_22_ATI,                                       16#8957).
  -define(GL_CON_23_ATI,                                       16#8958).
  -define(GL_CON_24_ATI,                                       16#8959).
  -define(GL_CON_25_ATI,                                       16#895A).
  -define(GL_CON_26_ATI,                                       16#895B).
  -define(GL_CON_27_ATI,                                       16#895C).
  -define(GL_CON_28_ATI,                                       16#895D).
  -define(GL_CON_29_ATI,                                       16#895E).
  -define(GL_CON_30_ATI,                                       16#895F).
  -define(GL_CON_31_ATI,                                       16#8960).
  -define(GL_MOV_ATI,                                          16#8961).
  -define(GL_ADD_ATI,                                          16#8963).
  -define(GL_MUL_ATI,                                          16#8964).
  -define(GL_SUB_ATI,                                          16#8965).
  -define(GL_DOT3_ATI,                                         16#8966).
  -define(GL_DOT4_ATI,                                         16#8967).
  -define(GL_MAD_ATI,                                          16#8968).
  -define(GL_LERP_ATI,                                         16#8969).
  -define(GL_CND_ATI,                                          16#896A).
  -define(GL_CND0_ATI,                                         16#896B).
  -define(GL_DOT2_ADD_ATI,                                     16#896C).
  -define(GL_SECONDARY_INTERPOLATOR_ATI,                       16#896D).
  -define(GL_NUM_FRAGMENT_REGISTERS_ATI,                       16#896E).
  -define(GL_NUM_FRAGMENT_CONSTANTS_ATI,                       16#896F).
  -define(GL_NUM_PASSES_ATI,                                   16#8970).
  -define(GL_NUM_INSTRUCTIONS_PER_PASS_ATI,                    16#8971).
  -define(GL_NUM_INSTRUCTIONS_TOTAL_ATI,                       16#8972).
  -define(GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI,            16#8973).
  -define(GL_NUM_LOOPBACK_COMPONENTS_ATI,                      16#8974).
  -define(GL_COLOR_ALPHA_PAIRING_ATI,                          16#8975).
  -define(GL_SWIZZLE_STR_ATI,                                  16#8976).
  -define(GL_SWIZZLE_STQ_ATI,                                  16#8977).
  -define(GL_SWIZZLE_STR_DR_ATI,                               16#8978).
  -define(GL_SWIZZLE_STQ_DQ_ATI,                               16#8979).
  -define(GL_SWIZZLE_STRQ_ATI,                                 16#897A).
  -define(GL_SWIZZLE_STRQ_DQ_ATI,                              16#897B).
  -define(GL_RED_BIT_ATI,                                      16#00000001).
  -define(GL_GREEN_BIT_ATI,                                    16#00000002).
  -define(GL_BLUE_BIT_ATI,                                     16#00000004).
  -define(GL_2X_BIT_ATI,                                       16#00000001).
  -define(GL_4X_BIT_ATI,                                       16#00000002).
  -define(GL_8X_BIT_ATI,                                       16#00000004).
  -define(GL_HALF_BIT_ATI,                                     16#00000008).
  -define(GL_QUARTER_BIT_ATI,                                  16#00000010).
  -define(GL_EIGHTH_BIT_ATI,                                   16#00000020).
  -define(GL_SATURATE_BIT_ATI,                                 16#00000040).
  -define(GL_COMP_BIT_ATI,                                     16#00000002).
  -define(GL_NEGATE_BIT_ATI,                                   16#00000004).
  -define(GL_BIAS_BIT_ATI,                                     16#00000008).
-endif.

-ifndef(GL_ATI_pn_triangles).
  -define(GL_ATI_pn_triangles,                                 1).

  -define(GL_PN_TRIANGLES_ATI,                                 16#87F0).
  -define(GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI,           16#87F1).
  -define(GL_PN_TRIANGLES_POINT_MODE_ATI,                      16#87F2).
  -define(GL_PN_TRIANGLES_NORMAL_MODE_ATI,                     16#87F3).
  -define(GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI,               16#87F4).
  -define(GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI,               16#87F5).
  -define(GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI,                16#87F6).
  -define(GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI,              16#87F7).
  -define(GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI,           16#87F8).
-endif.

-ifndef(GL_ATI_vertex_array_object).
  -define(GL_ATI_vertex_array_object,                          1).

  -define(GL_STATIC_ATI,                                       16#8760).
  -define(GL_DYNAMIC_ATI,                                      16#8761).
  -define(GL_PRESERVE_ATI,                                     16#8762).
  -define(GL_DISCARD_ATI,                                      16#8763).
  -define(GL_OBJECT_BUFFER_SIZE_ATI,                           16#8764).
  -define(GL_OBJECT_BUFFER_USAGE_ATI,                          16#8765).
  -define(GL_ARRAY_OBJECT_BUFFER_ATI,                          16#8766).
  -define(GL_ARRAY_OBJECT_OFFSET_ATI,                          16#8767).
-endif.

-ifndef(GL_EXT_vertex_shader).
  -define(GL_EXT_vertex_shader,                                1).

  -define(GL_VERTEX_SHADER_EXT,                                16#8780).
  -define(GL_VERTEX_SHADER_BINDING_EXT,                        16#8781).
  -define(GL_OP_INDEX_EXT,                                     16#8782).
  -define(GL_OP_NEGATE_EXT,                                    16#8783).
  -define(GL_OP_DOT3_EXT,                                      16#8784).
  -define(GL_OP_DOT4_EXT,                                      16#8785).
  -define(GL_OP_MUL_EXT,                                       16#8786).
  -define(GL_OP_ADD_EXT,                                       16#8787).
  -define(GL_OP_MADD_EXT,                                      16#8788).
  -define(GL_OP_FRAC_EXT,                                      16#8789).
  -define(GL_OP_MAX_EXT,                                       16#878A).
  -define(GL_OP_MIN_EXT,                                       16#878B).
  -define(GL_OP_SET_GE_EXT,                                    16#878C).
  -define(GL_OP_SET_LT_EXT,                                    16#878D).
  -define(GL_OP_CLAMP_EXT,                                     16#878E).
  -define(GL_OP_FLOOR_EXT,                                     16#878F).
  -define(GL_OP_ROUND_EXT,                                     16#8790).
  -define(GL_OP_EXP_BASE_2_EXT,                                16#8791).
  -define(GL_OP_LOG_BASE_2_EXT,                                16#8792).
  -define(GL_OP_POWER_EXT,                                     16#8793).
  -define(GL_OP_RECIP_EXT,                                     16#8794).
  -define(GL_OP_RECIP_SQRT_EXT,                                16#8795).
  -define(GL_OP_SUB_EXT,                                       16#8796).
  -define(GL_OP_CROSS_PRODUCT_EXT,                             16#8797).
  -define(GL_OP_MULTIPLY_MATRIX_EXT,                           16#8798).
  -define(GL_OP_MOV_EXT,                                       16#8799).
  -define(GL_OUTPUT_VERTEX_EXT,                                16#879A).
  -define(GL_OUTPUT_COLOR0_EXT,                                16#879B).
  -define(GL_OUTPUT_COLOR1_EXT,                                16#879C).
  -define(GL_OUTPUT_TEXTURE_COORD0_EXT,                        16#879D).
  -define(GL_OUTPUT_TEXTURE_COORD1_EXT,                        16#879E).
  -define(GL_OUTPUT_TEXTURE_COORD2_EXT,                        16#879F).
  -define(GL_OUTPUT_TEXTURE_COORD3_EXT,                        16#87A0).
  -define(GL_OUTPUT_TEXTURE_COORD4_EXT,                        16#87A1).
  -define(GL_OUTPUT_TEXTURE_COORD5_EXT,                        16#87A2).
  -define(GL_OUTPUT_TEXTURE_COORD6_EXT,                        16#87A3).
  -define(GL_OUTPUT_TEXTURE_COORD7_EXT,                        16#87A4).
  -define(GL_OUTPUT_TEXTURE_COORD8_EXT,                        16#87A5).
  -define(GL_OUTPUT_TEXTURE_COORD9_EXT,                        16#87A6).
  -define(GL_OUTPUT_TEXTURE_COORD10_EXT,                       16#87A7).
  -define(GL_OUTPUT_TEXTURE_COORD11_EXT,                       16#87A8).
  -define(GL_OUTPUT_TEXTURE_COORD12_EXT,                       16#87A9).
  -define(GL_OUTPUT_TEXTURE_COORD13_EXT,                       16#87AA).
  -define(GL_OUTPUT_TEXTURE_COORD14_EXT,                       16#87AB).
  -define(GL_OUTPUT_TEXTURE_COORD15_EXT,                       16#87AC).
  -define(GL_OUTPUT_TEXTURE_COORD16_EXT,                       16#87AD).
  -define(GL_OUTPUT_TEXTURE_COORD17_EXT,                       16#87AE).
  -define(GL_OUTPUT_TEXTURE_COORD18_EXT,                       16#87AF).
  -define(GL_OUTPUT_TEXTURE_COORD19_EXT,                       16#87B0).
  -define(GL_OUTPUT_TEXTURE_COORD20_EXT,                       16#87B1).
  -define(GL_OUTPUT_TEXTURE_COORD21_EXT,                       16#87B2).
  -define(GL_OUTPUT_TEXTURE_COORD22_EXT,                       16#87B3).
  -define(GL_OUTPUT_TEXTURE_COORD23_EXT,                       16#87B4).
  -define(GL_OUTPUT_TEXTURE_COORD24_EXT,                       16#87B5).
  -define(GL_OUTPUT_TEXTURE_COORD25_EXT,                       16#87B6).
  -define(GL_OUTPUT_TEXTURE_COORD26_EXT,                       16#87B7).
  -define(GL_OUTPUT_TEXTURE_COORD27_EXT,                       16#87B8).
  -define(GL_OUTPUT_TEXTURE_COORD28_EXT,                       16#87B9).
  -define(GL_OUTPUT_TEXTURE_COORD29_EXT,                       16#87BA).
  -define(GL_OUTPUT_TEXTURE_COORD30_EXT,                       16#87BB).
  -define(GL_OUTPUT_TEXTURE_COORD31_EXT,                       16#87BC).
  -define(GL_OUTPUT_FOG_EXT,                                   16#87BD).
  -define(GL_SCALAR_EXT,                                       16#87BE).
  -define(GL_VECTOR_EXT,                                       16#87BF).
  -define(GL_MATRIX_EXT,                                       16#87C0).
  -define(GL_VARIANT_EXT,                                      16#87C1).
  -define(GL_INVARIANT_EXT,                                    16#87C2).
  -define(GL_LOCAL_CONSTANT_EXT,                               16#87C3).
  -define(GL_LOCAL_EXT,                                        16#87C4).
  -define(GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT,               16#87C5).
  -define(GL_MAX_VERTEX_SHADER_VARIANTS_EXT,                   16#87C6).
  -define(GL_MAX_VERTEX_SHADER_INVARIANTS_EXT,                 16#87C7).
  -define(GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT,            16#87C8).
  -define(GL_MAX_VERTEX_SHADER_LOCALS_EXT,                     16#87C9).
  -define(GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT,     16#87CA).
  -define(GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT,         16#87CB).
  -define(GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT,  16#87CC).
  -define(GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT,       16#87CD).
  -define(GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT,           16#87CE).
  -define(GL_VERTEX_SHADER_INSTRUCTIONS_EXT,                   16#87CF).
  -define(GL_VERTEX_SHADER_VARIANTS_EXT,                       16#87D0).
  -define(GL_VERTEX_SHADER_INVARIANTS_EXT,                     16#87D1).
  -define(GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT,                16#87D2).
  -define(GL_VERTEX_SHADER_LOCALS_EXT,                         16#87D3).
  -define(GL_VERTEX_SHADER_OPTIMIZED_EXT,                      16#87D4).
  -define(GL_X_EXT,                                            16#87D5).
  -define(GL_Y_EXT,                                            16#87D6).
  -define(GL_Z_EXT,                                            16#87D7).
  -define(GL_W_EXT,                                            16#87D8).
  -define(GL_NEGATIVE_X_EXT,                                   16#87D9).
  -define(GL_NEGATIVE_Y_EXT,                                   16#87DA).
  -define(GL_NEGATIVE_Z_EXT,                                   16#87DB).
  -define(GL_NEGATIVE_W_EXT,                                   16#87DC).
  -define(GL_ZERO_EXT,                                         16#87DD).
  -define(GL_ONE_EXT,                                          16#87DE).
  -define(GL_NEGATIVE_ONE_EXT,                                 16#87DF).
  -define(GL_NORMALIZED_RANGE_EXT,                             16#87E0).
  -define(GL_FULL_RANGE_EXT,                                   16#87E1).
  -define(GL_CURRENT_VERTEX_EXT,                               16#87E2).
  -define(GL_MVP_MATRIX_EXT,                                   16#87E3).
  -define(GL_VARIANT_VALUE_EXT,                                16#87E4).
  -define(GL_VARIANT_DATATYPE_EXT,                             16#87E5).
  -define(GL_VARIANT_ARRAY_STRIDE_EXT,                         16#87E6).
  -define(GL_VARIANT_ARRAY_TYPE_EXT,                           16#87E7).
  -define(GL_VARIANT_ARRAY_EXT,                                16#87E8).
  -define(GL_VARIANT_ARRAY_POINTER_EXT,                        16#87E9).
  -define(GL_INVARIANT_VALUE_EXT,                              16#87EA).
  -define(GL_INVARIANT_DATATYPE_EXT,                           16#87EB).
  -define(GL_LOCAL_CONSTANT_VALUE_EXT,                         16#87EC).
  -define(GL_LOCAL_CONSTANT_DATATYPE_EXT,                      16#87ED).
-endif.

-ifndef(GL_ATI_vertex_streams).
  -define(GL_ATI_vertex_streams,                               1).

  -define(GL_MAX_VERTEX_STREAMS_ATI,                           16#876B).
  -define(GL_VERTEX_STREAM0_ATI,                               16#876C).
  -define(GL_VERTEX_STREAM1_ATI,                               16#876D).
  -define(GL_VERTEX_STREAM2_ATI,                               16#876E).
  -define(GL_VERTEX_STREAM3_ATI,                               16#876F).
  -define(GL_VERTEX_STREAM4_ATI,                               16#8770).
  -define(GL_VERTEX_STREAM5_ATI,                               16#8771).
  -define(GL_VERTEX_STREAM6_ATI,                               16#8772).
  -define(GL_VERTEX_STREAM7_ATI,                               16#8773).
  -define(GL_VERTEX_SOURCE_ATI,                                16#8774).
-endif.

-ifndef(GL_ATI_element_array).
  -define(GL_ATI_element_array,                                1).

  -define(GL_ELEMENT_ARRAY_ATI,                                16#8768).
  -define(GL_ELEMENT_ARRAY_TYPE_ATI,                           16#8769).
  -define(GL_ELEMENT_ARRAY_POINTER_ATI,                        16#876A).
-endif.

-ifndef(GL_SUN_mesh_array).
  -define(GL_SUN_mesh_array,                                   1).

  -define(GL_QUAD_MESH_SUN,                                    16#8614).
  -define(GL_TRIANGLE_MESH_SUN,                                16#8615).
-endif.

-ifndef(GL_SUN_slice_accum).
  -define(GL_SUN_slice_accum,                                  1).

  -define(GL_SLICE_ACCUM_SUN,                                  16#85CC).
-endif.

-ifndef(GL_NV_multisample_filter_hint).
  -define(GL_NV_multisample_filter_hint,                       1).

  -define(GL_MULTISAMPLE_FILTER_HINT_NV,                       16#8534).
-endif.

-ifndef(GL_NV_depth_clamp).
  -define(GL_NV_depth_clamp,                                   1).

  -define(GL_DEPTH_CLAMP_NV,                                   16#864F).
-endif.

-ifndef(GL_NV_occlusion_query).
  -define(GL_NV_occlusion_query,                               1).

  -define(GL_PIXEL_COUNTER_BITS_NV,                            16#8864).
  -define(GL_CURRENT_OCCLUSION_QUERY_ID_NV,                    16#8865).
  -define(GL_PIXEL_COUNT_NV,                                   16#8866).
  -define(GL_PIXEL_COUNT_AVAILABLE_NV,                         16#8867).
-endif.

-ifndef(GL_NV_point_sprite).
  -define(GL_NV_point_sprite,                                  1).

  -define(GL_POINT_SPRITE_NV,                                  16#8861).
  -define(GL_COORD_REPLACE_NV,                                 16#8862).
  -define(GL_POINT_SPRITE_R_MODE_NV,                           16#8863).
-endif.

-ifndef(GL_NV_texture_shader3).
  -define(GL_NV_texture_shader3,                               1).

  -define(GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV,                  16#8850).
  -define(GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV,            16#8851).
  -define(GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV,           16#8852).
  -define(GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV,     16#8853).
  -define(GL_OFFSET_HILO_TEXTURE_2D_NV,                        16#8854).
  -define(GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV,                 16#8855).
  -define(GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV,             16#8856).
  -define(GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV,      16#8857).
  -define(GL_DEPENDENT_HILO_TEXTURE_2D_NV,                     16#8858).
  -define(GL_DEPENDENT_RGB_TEXTURE_3D_NV,                      16#8859).
  -define(GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV,                16#885A).
  -define(GL_DOT_PRODUCT_PASS_THROUGH_NV,                      16#885B).
  -define(GL_DOT_PRODUCT_TEXTURE_1D_NV,                        16#885C).
  -define(GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV,              16#885D).
  -define(GL_HILO8_NV,                                         16#885E).
  -define(GL_SIGNED_HILO8_NV,                                  16#885F).
  -define(GL_FORCE_BLUE_TO_ONE_NV,                             16#8860).
-endif.

-ifndef(GL_NV_vertex_program1_1).
  -define(GL_NV_vertex_program1_1,                             1).

-endif.

-ifndef(GL_EXT_shadow_funcs).
  -define(GL_EXT_shadow_funcs,                                 1).

-endif.

-ifndef(GL_EXT_stencil_two_side).
  -define(GL_EXT_stencil_two_side,                             1).

  -define(GL_STENCIL_TEST_TWO_SIDE_EXT,                        16#8910).
  -define(GL_ACTIVE_STENCIL_FACE_EXT,                          16#8911).
-endif.

-ifndef(GL_ATI_text_fragment_shader).
  -define(GL_ATI_text_fragment_shader,                         1).

  -define(GL_TEXT_FRAGMENT_SHADER_ATI,                         16#8200).
-endif.

-ifndef(GL_APPLE_client_storage).
  -define(GL_APPLE_client_storage,                             1).

  -define(GL_UNPACK_CLIENT_STORAGE_APPLE,                      16#85B2).
-endif.

-ifndef(GL_APPLE_element_array).
  -define(GL_APPLE_element_array,                              1).

  -define(GL_ELEMENT_ARRAY_APPLE,                              16#8A0C).
  -define(GL_ELEMENT_ARRAY_TYPE_APPLE,                         16#8A0D).
  -define(GL_ELEMENT_ARRAY_POINTER_APPLE,                      16#8A0E).
-endif.

-ifndef(GL_APPLE_fence).
  -define(GL_APPLE_fence,                                      1).

  -define(GL_DRAW_PIXELS_APPLE,                                16#8A0A).
  -define(GL_FENCE_APPLE,                                      16#8A0B).
-endif.

-ifndef(GL_APPLE_vertex_array_object).
  -define(GL_APPLE_vertex_array_object,                        1).

  -define(GL_VERTEX_ARRAY_BINDING_APPLE,                       16#85B5).
-endif.

-ifndef(GL_APPLE_vertex_array_range).
  -define(GL_APPLE_vertex_array_range,                         1).

  -define(GL_VERTEX_ARRAY_RANGE_APPLE,                         16#851D).
  -define(GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE,                  16#851E).
  -define(GL_VERTEX_ARRAY_STORAGE_HINT_APPLE,                  16#851F).
  -define(GL_VERTEX_ARRAY_RANGE_POINTER_APPLE,                 16#8521).
  -define(GL_STORAGE_CLIENT_APPLE,                             16#85B4).
  -define(GL_STORAGE_CACHED_APPLE,                             16#85BE).
  -define(GL_STORAGE_SHARED_APPLE,                             16#85BF).
-endif.

-ifndef(GL_APPLE_ycbcr_422).
  -define(GL_APPLE_ycbcr_422,                                  1).

  -define(GL_YCBCR_422_APPLE,                                  16#85B9).
  -define(GL_UNSIGNED_SHORT_8_8_APPLE,                         16#85BA).
  -define(GL_UNSIGNED_SHORT_8_8_REV_APPLE,                     16#85BB).
-endif.

-ifndef(GL_S3_s3tc).
  -define(GL_S3_s3tc,                                          1).

  -define(GL_RGB_S3TC,                                         16#83A0).
  -define(GL_RGB4_S3TC,                                        16#83A1).
  -define(GL_RGBA_S3TC,                                        16#83A2).
  -define(GL_RGBA4_S3TC,                                       16#83A3).
  -define(GL_RGBA_DXT5_S3TC,                                   16#83A4).
  -define(GL_RGBA4_DXT5_S3TC,                                  16#83A5).
-endif.

-ifndef(GL_ATI_draw_buffers).
  -define(GL_ATI_draw_buffers,                                 1).

  -define(GL_MAX_DRAW_BUFFERS_ATI,                             16#8824).
  -define(GL_DRAW_BUFFER0_ATI,                                 16#8825).
  -define(GL_DRAW_BUFFER1_ATI,                                 16#8826).
  -define(GL_DRAW_BUFFER2_ATI,                                 16#8827).
  -define(GL_DRAW_BUFFER3_ATI,                                 16#8828).
  -define(GL_DRAW_BUFFER4_ATI,                                 16#8829).
  -define(GL_DRAW_BUFFER5_ATI,                                 16#882A).
  -define(GL_DRAW_BUFFER6_ATI,                                 16#882B).
  -define(GL_DRAW_BUFFER7_ATI,                                 16#882C).
  -define(GL_DRAW_BUFFER8_ATI,                                 16#882D).
  -define(GL_DRAW_BUFFER9_ATI,                                 16#882E).
  -define(GL_DRAW_BUFFER10_ATI,                                16#882F).
  -define(GL_DRAW_BUFFER11_ATI,                                16#8830).
  -define(GL_DRAW_BUFFER12_ATI,                                16#8831).
  -define(GL_DRAW_BUFFER13_ATI,                                16#8832).
  -define(GL_DRAW_BUFFER14_ATI,                                16#8833).
  -define(GL_DRAW_BUFFER15_ATI,                                16#8834).
-endif.

-ifndef(GL_ATI_pixel_format_float).
  -define(GL_ATI_pixel_format_float,                           1).

  -define(GL_RGBA_FLOAT_MODE_ATI,                              16#8820).
  -define(GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI,                  16#8835).
-endif.

-ifndef(GL_ATI_texture_env_combine3).
  -define(GL_ATI_texture_env_combine3,                         1).

  -define(GL_MODULATE_ADD_ATI,                                 16#8744).
  -define(GL_MODULATE_SIGNED_ADD_ATI,                          16#8745).
  -define(GL_MODULATE_SUBTRACT_ATI,                            16#8746).
-endif.

-ifndef(GL_ATI_texture_float).
  -define(GL_ATI_texture_float,                                1).

  -define(GL_RGBA_FLOAT32_ATI,                                 16#8814).
  -define(GL_RGB_FLOAT32_ATI,                                  16#8815).
  -define(GL_ALPHA_FLOAT32_ATI,                                16#8816).
  -define(GL_INTENSITY_FLOAT32_ATI,                            16#8817).
  -define(GL_LUMINANCE_FLOAT32_ATI,                            16#8818).
  -define(GL_LUMINANCE_ALPHA_FLOAT32_ATI,                      16#8819).
  -define(GL_RGBA_FLOAT16_ATI,                                 16#881A).
  -define(GL_RGB_FLOAT16_ATI,                                  16#881B).
  -define(GL_ALPHA_FLOAT16_ATI,                                16#881C).
  -define(GL_INTENSITY_FLOAT16_ATI,                            16#881D).
  -define(GL_LUMINANCE_FLOAT16_ATI,                            16#881E).
  -define(GL_LUMINANCE_ALPHA_FLOAT16_ATI,                      16#881F).
-endif.

-ifndef(GL_NV_float_buffer).
  -define(GL_NV_float_buffer,                                  1).

  -define(GL_FLOAT_R_NV,                                       16#8880).
  -define(GL_FLOAT_RG_NV,                                      16#8881).
  -define(GL_FLOAT_RGB_NV,                                     16#8882).
  -define(GL_FLOAT_RGBA_NV,                                    16#8883).
  -define(GL_FLOAT_R16_NV,                                     16#8884).
  -define(GL_FLOAT_R32_NV,                                     16#8885).
  -define(GL_FLOAT_RG16_NV,                                    16#8886).
  -define(GL_FLOAT_RG32_NV,                                    16#8887).
  -define(GL_FLOAT_RGB16_NV,                                   16#8888).
  -define(GL_FLOAT_RGB32_NV,                                   16#8889).
  -define(GL_FLOAT_RGBA16_NV,                                  16#888A).
  -define(GL_FLOAT_RGBA32_NV,                                  16#888B).
  -define(GL_TEXTURE_FLOAT_COMPONENTS_NV,                      16#888C).
  -define(GL_FLOAT_CLEAR_COLOR_VALUE_NV,                       16#888D).
  -define(GL_FLOAT_RGBA_MODE_NV,                               16#888E).
-endif.

-ifndef(GL_NV_fragment_program).
  -define(GL_NV_fragment_program,                              1).

  -define(GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV,         16#8868).
  -define(GL_FRAGMENT_PROGRAM_NV,                              16#8870).
  -define(GL_MAX_TEXTURE_COORDS_NV,                            16#8871).
  -define(GL_MAX_TEXTURE_IMAGE_UNITS_NV,                       16#8872).
  -define(GL_FRAGMENT_PROGRAM_BINDING_NV,                      16#8873).
  -define(GL_PROGRAM_ERROR_STRING_NV,                          16#8874).
-endif.

-ifndef(GL_NV_half_float).
  -define(GL_NV_half_float,                                    1).

  -define(GLhalfNV,                                            16/unsigned-native).

  -define(GL_HALF_FLOAT_NV,                                    16#140B).
-endif.

-ifndef(GL_NV_pixel_data_range).
  -define(GL_NV_pixel_data_range,                              1).

  -define(GL_WRITE_PIXEL_DATA_RANGE_NV,                        16#8878).
  -define(GL_READ_PIXEL_DATA_RANGE_NV,                         16#8879).
  -define(GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV,                 16#887A).
  -define(GL_READ_PIXEL_DATA_RANGE_LENGTH_NV,                  16#887B).
  -define(GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV,                16#887C).
  -define(GL_READ_PIXEL_DATA_RANGE_POINTER_NV,                 16#887D).
-endif.

-ifndef(GL_NV_primitive_restart).
  -define(GL_NV_primitive_restart,                             1).

  -define(GL_PRIMITIVE_RESTART_NV,                             16#8558).
  -define(GL_PRIMITIVE_RESTART_INDEX_NV,                       16#8559).
-endif.

-ifndef(GL_NV_texture_expand_normal).
  -define(GL_NV_texture_expand_normal,                         1).

  -define(GL_TEXTURE_UNSIGNED_REMAP_MODE_NV,                   16#888F).
-endif.

-ifndef(GL_NV_vertex_program2).
  -define(GL_NV_vertex_program2,                               1).

-endif.

-ifndef(GL_ATI_map_object_buffer).
  -define(GL_ATI_map_object_buffer,                            1).

-endif.

-ifndef(GL_ATI_separate_stencil).
  -define(GL_ATI_separate_stencil,                             1).

  -define(GL_STENCIL_BACK_FUNC_ATI,                            16#8800).
  -define(GL_STENCIL_BACK_FAIL_ATI,                            16#8801).
  -define(GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI,                 16#8802).
  -define(GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI,                 16#8803).
-endif.

-ifndef(GL_ATI_vertex_attrib_array_object).
  -define(GL_ATI_vertex_attrib_array_object,                   1).

-endif.

#ifndef GL_OES_byte_coordinates
#endif

#ifndef GL_OES_fixed_point
#define GL_FIXED_OES                      0x140C
#endif

#ifndef GL_OES_single_precision
#endif

#ifndef GL_OES_compressed_paletted_texture
#define GL_PALETTE4_RGB8_OES              0x8B90
#define GL_PALETTE4_RGBA8_OES             0x8B91
#define GL_PALETTE4_R5_G6_B5_OES          0x8B92
#define GL_PALETTE4_RGBA4_OES             0x8B93
#define GL_PALETTE4_RGB5_A1_OES           0x8B94
#define GL_PALETTE8_RGB8_OES              0x8B95
#define GL_PALETTE8_RGBA8_OES             0x8B96
#define GL_PALETTE8_R5_G6_B5_OES          0x8B97
#define GL_PALETTE8_RGBA4_OES             0x8B98
#define GL_PALETTE8_RGB5_A1_OES           0x8B99
#endif

-ifndef(GL_OES_read_format).
  -define(GL_OES_read_format,                                  1).

  -define(GL_IMPLEMENTATION_COLOR_READ_TYPE_OES,               16#8B9A).
  -define(GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES,             16#8B9B).
-endif.

#ifndef GL_OES_query_matrix
#endif

-ifndef(GL_EXT_depth_bounds_test).
  -define(GL_EXT_depth_bounds_test,                            1).

  -define(GL_DEPTH_BOUNDS_TEST_EXT,                            16#8890).
  -define(GL_DEPTH_BOUNDS_EXT,                                 16#8891).
-endif.

-ifndef(GL_EXT_texture_mirror_clamp).
  -define(GL_EXT_texture_mirror_clamp,                         1).

  -define(GL_MIRROR_CLAMP_EXT,                                 16#8742).
  -define(GL_MIRROR_CLAMP_TO_EDGE_EXT,                         16#8743).
  -define(GL_MIRROR_CLAMP_TO_BORDER_EXT,                       16#8912).
-endif.

-ifndef(GL_EXT_blend_equation_separate).
  -define(GL_EXT_blend_equation_separate,                      1).

  -define(GL_BLEND_EQUATION_RGB_EXT,                           16#8009).
  -define(GL_BLEND_EQUATION_ALPHA_EXT,                         16#883D).
-endif.

-ifndef(GL_MESA_pack_invert).
  -define(GL_MESA_pack_invert,                                 1).

  -define(GL_PACK_INVERT_MESA,                                 16#8758).
-endif.

-ifndef(GL_MESA_ycbcr_texture).
  -define(GL_MESA_ycbcr_texture,                               1).

  -define(GL_UNSIGNED_SHORT_8_8_MESA,                          16#85BA).
  -define(GL_UNSIGNED_SHORT_8_8_REV_MESA,                      16#85BB).
  -define(GL_YCBCR_MESA,                                       16#8757).
-endif.

-ifndef(GL_EXT_pixel_buffer_object).
  -define(GL_EXT_pixel_buffer_object,                          1).

  -define(GL_PIXEL_PACK_BUFFER_EXT,                            16#88EB).
  -define(GL_PIXEL_UNPACK_BUFFER_EXT,                          16#88EC).
  -define(GL_PIXEL_PACK_BUFFER_BINDING_EXT,                    16#88ED).
  -define(GL_PIXEL_UNPACK_BUFFER_BINDING_EXT,                  16#88EF).
-endif.

-ifndef(GL_NV_fragment_program_option).
  -define(GL_NV_fragment_program_option,                       1).

-endif.

-ifndef(GL_NV_fragment_program2).
  -define(GL_NV_fragment_program2,                             1).

  -define(GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV,                 16#88F4).
  -define(GL_MAX_PROGRAM_CALL_DEPTH_NV,                        16#88F5).
  -define(GL_MAX_PROGRAM_IF_DEPTH_NV,                          16#88F6).
  -define(GL_MAX_PROGRAM_LOOP_DEPTH_NV,                        16#88F7).
  -define(GL_MAX_PROGRAM_LOOP_COUNT_NV,                        16#88F8).
-endif.

-ifndef(GL_NV_vertex_program2_option).
  -define(GL_NV_vertex_program2_option,                        1).

%% reuse GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV
%% reuse GL_MAX_PROGRAM_CALL_DEPTH_NV
-endif.

-ifndef(GL_NV_vertex_program3).
  -define(GL_NV_vertex_program3,                               1).

%% reuse GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB
-endif.

-ifndef(GL_EXT_framebuffer_object).
  -define(GL_EXT_framebuffer_object,                           1).

  -define(GL_INVALID_FRAMEBUFFER_OPERATION_EXT,                16#0506).
  -define(GL_MAX_RENDERBUFFER_SIZE_EXT,                        16#84E8).
  -define(GL_FRAMEBUFFER_BINDING_EXT,                          16#8CA6).
  -define(GL_RENDERBUFFER_BINDING_EXT,                         16#8CA7).
  -define(GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT,           16#8CD0).
  -define(GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT,           16#8CD1).
  -define(GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT,         16#8CD2).
  -define(GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT, 16#8CD3).
  -define(GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT,    16#8CD4).
  -define(GL_FRAMEBUFFER_COMPLETE_EXT,                         16#8CD5).
  -define(GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT,            16#8CD6).
  -define(GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT,    16#8CD7).
  -define(GL_FRAMEBUFFER_INCOMPLETE_DUPLICATE_ATTACHMENT_EXT,  16#8CD8).
  -define(GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT,            16#8CD9).
  -define(GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT,               16#8CDA).
  -define(GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT,           16#8CDB).
  -define(GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT,           16#8CDC).
  -define(GL_FRAMEBUFFER_UNSUPPORTED_EXT,                      16#8CDD).
  -define(GL_MAX_COLOR_ATTACHMENTS_EXT,                        16#8CDF).
  -define(GL_COLOR_ATTACHMENT0_EXT,                            16#8CE0).
  -define(GL_COLOR_ATTACHMENT1_EXT,                            16#8CE1).
  -define(GL_COLOR_ATTACHMENT2_EXT,                            16#8CE2).
  -define(GL_COLOR_ATTACHMENT3_EXT,                            16#8CE3).
  -define(GL_COLOR_ATTACHMENT4_EXT,                            16#8CE4).
  -define(GL_COLOR_ATTACHMENT5_EXT,                            16#8CE5).
  -define(GL_COLOR_ATTACHMENT6_EXT,                            16#8CE6).
  -define(GL_COLOR_ATTACHMENT7_EXT,                            16#8CE7).
  -define(GL_COLOR_ATTACHMENT8_EXT,                            16#8CE8).
  -define(GL_COLOR_ATTACHMENT9_EXT,                            16#8CE9).
  -define(GL_COLOR_ATTACHMENT10_EXT,                           16#8CEA).
  -define(GL_COLOR_ATTACHMENT11_EXT,                           16#8CEB).
  -define(GL_COLOR_ATTACHMENT12_EXT,                           16#8CEC).
  -define(GL_COLOR_ATTACHMENT13_EXT,                           16#8CED).
  -define(GL_COLOR_ATTACHMENT14_EXT,                           16#8CEE).
  -define(GL_COLOR_ATTACHMENT15_EXT,                           16#8CEF).
  -define(GL_DEPTH_ATTACHMENT_EXT,                             16#8D00).
  -define(GL_STENCIL_ATTACHMENT_EXT,                           16#8D20).
  -define(GL_FRAMEBUFFER_EXT,                                  16#8D40).
  -define(GL_RENDERBUFFER_EXT,                                 16#8D41).
  -define(GL_RENDERBUFFER_WIDTH_EXT,                           16#8D42).
  -define(GL_RENDERBUFFER_HEIGHT_EXT,                          16#8D43).
  -define(GL_RENDERBUFFER_INTERNAL_FORMAT_EXT,                 16#8D44).
  -define(GL_STENCIL_INDEX1_EXT,                               16#8D46).
  -define(GL_STENCIL_INDEX4_EXT,                               16#8D47).
  -define(GL_STENCIL_INDEX8_EXT,                               16#8D48).
  -define(GL_STENCIL_INDEX16_EXT,                              16#8D49).
  -define(GL_RENDERBUFFER_RED_SIZE_EXT,                        16#8D50).
  -define(GL_RENDERBUFFER_GREEN_SIZE_EXT,                      16#8D51).
  -define(GL_RENDERBUFFER_BLUE_SIZE_EXT,                       16#8D52).
  -define(GL_RENDERBUFFER_ALPHA_SIZE_EXT,                      16#8D53).
  -define(GL_RENDERBUFFER_DEPTH_SIZE_EXT,                      16#8D54).
  -define(GL_RENDERBUFFER_STENCIL_SIZE_EXT,                    16#8D55).
-endif.

-ifndef(GL_GREMEDY_string_marker).
  -define(GL_GREMEDY_string_marker,                            1).

-endif.

-ifndef(GL_EXT_packed_depth_stencil).
  -define(GL_EXT_packed_depth_stencil,                         1).

  -define(GL_DEPTH_STENCIL_EXT,                                16#84F9).
  -define(GL_UNSIGNED_INT_24_8_EXT,                            16#84FA).
  -define(GL_DEPTH24_STENCIL8_EXT,                             16#88F0).
  -define(GL_TEXTURE_STENCIL_SIZE_EXT,                         16#88F1).
-endif.

-ifndef(GL_EXT_stencil_clear_tag).
  -define(GL_EXT_stencil_clear_tag,                            1).

  -define(GL_STENCIL_TAG_BITS_EXT,                             16#88F2).
  -define(GL_STENCIL_CLEAR_TAG_VALUE_EXT,                      16#88F3).
-endif.

-ifndef(GL_EXT_texture_sRGB).
  -define(GL_EXT_texture_sRGB,                                 1).

  -define(GL_SRGB_EXT,                                         16#8C40).
  -define(GL_SRGB8_EXT,                                        16#8C41).
  -define(GL_SRGB_ALPHA_EXT,                                   16#8C42).
  -define(GL_SRGB8_ALPHA8_EXT,                                 16#8C43).
  -define(GL_SLUMINANCE_ALPHA_EXT,                             16#8C44).
  -define(GL_SLUMINANCE8_ALPHA8_EXT,                           16#8C45).
  -define(GL_SLUMINANCE_EXT,                                   16#8C46).
  -define(GL_SLUMINANCE8_EXT,                                  16#8C47).
  -define(GL_COMPRESSED_SRGB_EXT,                              16#8C48).
  -define(GL_COMPRESSED_SRGB_ALPHA_EXT,                        16#8C49).
  -define(GL_COMPRESSED_SLUMINANCE_EXT,                        16#8C4A).
  -define(GL_COMPRESSED_SLUMINANCE_ALPHA_EXT,                  16#8C4B).
  -define(GL_COMPRESSED_SRGB_S3TC_DXT1_EXT,                    16#8C4C).
  -define(GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT,              16#8C4D).
  -define(GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT,              16#8C4E).
  -define(GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT,              16#8C4F).
-endif.

-ifndef(GL_EXT_framebuffer_blit).
  -define(GL_EXT_framebuffer_blit,                             1).

  -define(GL_READ_FRAMEBUFFER_EXT,                             16#8CA8).
  -define(GL_DRAW_FRAMEBUFFER_EXT,                             16#8CA9).
  -define(GL_DRAW_FRAMEBUFFER_BINDING_EXT,                     ?GL_FRAMEBUFFER_BINDING_EXT).
  -define(GL_READ_FRAMEBUFFER_BINDING_EXT,                     16#8CAA).
-endif.

-ifndef(GL_EXT_framebuffer_multisample).
  -define(GL_EXT_framebuffer_multisample,                      1).

  -define(GL_RENDERBUFFER_SAMPLES_EXT,                         16#8CAB).
  -define(GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT,           16#8D56).
  -define(GL_MAX_SAMPLES_EXT,                                  16#8D57).
-endif.

-ifndef(GL_MESAX_texture_stack).
  -define(GL_MESAX_texture_stack,                              1).

  -define(GL_TEXTURE_1D_STACK_MESAX,                           16#8759).
  -define(GL_TEXTURE_2D_STACK_MESAX,                           16#875A).
  -define(GL_PROXY_TEXTURE_1D_STACK_MESAX,                     16#875B).
  -define(GL_PROXY_TEXTURE_2D_STACK_MESAX,                     16#875C).
  -define(GL_TEXTURE_1D_STACK_BINDING_MESAX,                   16#875D).
  -define(GL_TEXTURE_2D_STACK_BINDING_MESAX,                   16#875E).
-endif.

-ifndef(GL_EXT_timer_query).
  -define(GL_EXT_timer_query,                                  1).

  -define(GL_TIME_ELAPSED_EXT,                                 16#88BF).

  -define(GLint64EXT,                                          64/signed-native).
  -define(GLuint64EXT,                                         64/unsigned-native).
-endif.

-ifndef(GL_EXT_gpu_program_parameters).
  -define(GL_EXT_gpu_program_parameters,                       1).

-endif.

-ifndef(GL_APPLE_flush_buffer_range).
  -define(GL_APPLE_flush_buffer_range,                         1).

  -define(GL_BUFFER_SERIALIZED_MODIFY_APPLE,                   16#8A12).
  -define(GL_BUFFER_FLUSHING_UNMAP_APPLE,                      16#8A13).
-endif.

-ifndef(GL_NV_gpu_program4).
  -define(GL_NV_gpu_program4,                                  1).

  -define(GL_MIN_PROGRAM_TEXEL_OFFSET_NV,                      16#8904).
  -define(GL_MAX_PROGRAM_TEXEL_OFFSET_NV,                      16#8905).
  -define(GL_PROGRAM_ATTRIB_COMPONENTS_NV,                     16#8906).
  -define(GL_PROGRAM_RESULT_COMPONENTS_NV,                     16#8907).
  -define(GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV,                 16#8908).
  -define(GL_MAX_PROGRAM_RESULT_COMPONENTS_NV,                 16#8909).
  -define(GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV,                   16#8DA5).
  -define(GL_MAX_PROGRAM_GENERIC_RESULTS_NV,                   16#8DA6).
-endif.

-ifndef(GL_NV_geometry_program4).
  -define(GL_NV_geometry_program4,                             1).

  -define(GL_LINES_ADJACENCY_EXT,                              16#000A).
  -define(GL_LINE_STRIP_ADJACENCY_EXT,                         16#000B).
  -define(GL_TRIANGLES_ADJACENCY_EXT,                          16#000C).
  -define(GL_TRIANGLE_STRIP_ADJACENCY_EXT,                     16#000D).
  -define(GL_GEOMETRY_PROGRAM_NV,                              16#8C26).
  -define(GL_MAX_PROGRAM_OUTPUT_VERTICES_NV,                   16#8C27).
  -define(GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV,           16#8C28).
  -define(GL_GEOMETRY_VERTICES_OUT_EXT,                        16#8DDA).
  -define(GL_GEOMETRY_INPUT_TYPE_EXT,                          16#8DDB).
  -define(GL_GEOMETRY_OUTPUT_TYPE_EXT,                         16#8DDC).
  -define(GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT,             16#8C29).
  -define(GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT,               16#8DA7).
  -define(GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT,         16#8DA8).
  -define(GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT,           16#8DA9).
  -define(GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT,         16#8CD4).
  -define(GL_PROGRAM_POINT_SIZE_EXT,                           16#8642).
-endif.

-ifndef(GL_EXT_geometry_shader4).
  -define(GL_EXT_geometry_shader4,                             1).

  -define(GL_GEOMETRY_SHADER_EXT,                              16#8DD9).
%% reuse GL_GEOMETRY_VERTICES_OUT_EXT
%% reuse GL_GEOMETRY_INPUT_TYPE_EXT
%% reuse GL_GEOMETRY_OUTPUT_TYPE_EXT
%% reuse GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT
  -define(GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT,              16#8DDD).
  -define(GL_MAX_VERTEX_VARYING_COMPONENTS_EXT,                16#8DDE).
  -define(GL_MAX_VARYING_COMPONENTS_EXT,                       16#8B4B).
  -define(GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT,              16#8DDF).
  -define(GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT,                 16#8DE0).
  -define(GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT,         16#8DE1).
%% reuse GL_LINES_ADJACENCY_EXT
%% reuse GL_LINE_STRIP_ADJACENCY_EXT
%% reuse GL_TRIANGLES_ADJACENCY_EXT
%% reuse GL_TRIANGLE_STRIP_ADJACENCY_EXT
%% reuse GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT
%% reuse GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT
%% reuse GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT
%% reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
%% reuse GL_PROGRAM_POINT_SIZE_EXT
-endif.

-ifndef(GL_NV_vertex_program4).
  -define(GL_NV_vertex_program4,                               1).

  -define(GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV,                   16#88FD).
-endif.

-ifndef(GL_EXT_gpu_shader4).
  -define(GL_EXT_gpu_shader4,                                  1).

  -define(GL_SAMPLER_1D_ARRAY_EXT,                             16#8DC0).
  -define(GL_SAMPLER_2D_ARRAY_EXT,                             16#8DC1).
  -define(GL_SAMPLER_BUFFER_EXT,                               16#8DC2).
  -define(GL_SAMPLER_1D_ARRAY_SHADOW_EXT,                      16#8DC3).
  -define(GL_SAMPLER_2D_ARRAY_SHADOW_EXT,                      16#8DC4).
  -define(GL_SAMPLER_CUBE_SHADOW_EXT,                          16#8DC5).
  -define(GL_UNSIGNED_INT_VEC2_EXT,                            16#8DC6).
  -define(GL_UNSIGNED_INT_VEC3_EXT,                            16#8DC7).
  -define(GL_UNSIGNED_INT_VEC4_EXT,                            16#8DC8).
  -define(GL_INT_SAMPLER_1D_EXT,                               16#8DC9).
  -define(GL_INT_SAMPLER_2D_EXT,                               16#8DCA).
  -define(GL_INT_SAMPLER_3D_EXT,                               16#8DCB).
  -define(GL_INT_SAMPLER_CUBE_EXT,                             16#8DCC).
  -define(GL_INT_SAMPLER_2D_RECT_EXT,                          16#8DCD).
  -define(GL_INT_SAMPLER_1D_ARRAY_EXT,                         16#8DCE).
  -define(GL_INT_SAMPLER_2D_ARRAY_EXT,                         16#8DCF).
  -define(GL_INT_SAMPLER_BUFFER_EXT,                           16#8DD0).
  -define(GL_UNSIGNED_INT_SAMPLER_1D_EXT,                      16#8DD1).
  -define(GL_UNSIGNED_INT_SAMPLER_2D_EXT,                      16#8DD2).
  -define(GL_UNSIGNED_INT_SAMPLER_3D_EXT,                      16#8DD3).
  -define(GL_UNSIGNED_INT_SAMPLER_CUBE_EXT,                    16#8DD4).
  -define(GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT,                 16#8DD5).
  -define(GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT,                16#8DD6).
  -define(GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT,                16#8DD7).
  -define(GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT,                  16#8DD8).
-endif.

-ifndef(GL_EXT_draw_instanced).
  -define(GL_EXT_draw_instanced,                               1).

-endif.

-ifndef(GL_EXT_packed_float).
  -define(GL_EXT_packed_float,                                 1).

  -define(GL_R11F_G11F_B10F_EXT,                               16#8C3A).
  -define(GL_UNSIGNED_INT_10F_11F_11F_REV_EXT,                 16#8C3B).
  -define(GL_RGBA_SIGNED_COMPONENTS_EXT,                       16#8C3C).
-endif.

-ifndef(GL_EXT_texture_array).
  -define(GL_EXT_texture_array,                                1).

  -define(GL_TEXTURE_1D_ARRAY_EXT,                             16#8C18).
  -define(GL_PROXY_TEXTURE_1D_ARRAY_EXT,                       16#8C19).
  -define(GL_TEXTURE_2D_ARRAY_EXT,                             16#8C1A).
  -define(GL_PROXY_TEXTURE_2D_ARRAY_EXT,                       16#8C1B).
  -define(GL_TEXTURE_BINDING_1D_ARRAY_EXT,                     16#8C1C).
  -define(GL_TEXTURE_BINDING_2D_ARRAY_EXT,                     16#8C1D).
  -define(GL_MAX_ARRAY_TEXTURE_LAYERS_EXT,                     16#88FF).
  -define(GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT,                 16#884E).
%% reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
-endif.

-ifndef(GL_EXT_texture_buffer_object).
  -define(GL_EXT_texture_buffer_object,                        1).

  -define(GL_TEXTURE_BUFFER_EXT,                               16#8C2A).
  -define(GL_MAX_TEXTURE_BUFFER_SIZE_EXT,                      16#8C2B).
  -define(GL_TEXTURE_BINDING_BUFFER_EXT,                       16#8C2C).
  -define(GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT,            16#8C2D).
  -define(GL_TEXTURE_BUFFER_FORMAT_EXT,                        16#8C2E).
-endif.

-ifndef(GL_EXT_texture_compression_latc).
  -define(GL_EXT_texture_compression_latc,                     1).

  -define(GL_COMPRESSED_LUMINANCE_LATC1_EXT,                   16#8C70).
  -define(GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT,            16#8C71).
  -define(GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT,             16#8C72).
  -define(GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT,      16#8C73).
-endif.

-ifndef(GL_EXT_texture_compression_rgtc).
  -define(GL_EXT_texture_compression_rgtc,                     1).

  -define(GL_COMPRESSED_RED_RGTC1_EXT,                         16#8DBB).
  -define(GL_COMPRESSED_SIGNED_RED_RGTC1_EXT,                  16#8DBC).
  -define(GL_COMPRESSED_RED_GREEN_RGTC2_EXT,                   16#8DBD).
  -define(GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT,            16#8DBE).
-endif.

-ifndef(GL_EXT_texture_shared_exponent).
  -define(GL_EXT_texture_shared_exponent,                      1).

  -define(GL_RGB9_E5_EXT,                                      16#8C3D).
  -define(GL_UNSIGNED_INT_5_9_9_9_REV_EXT,                     16#8C3E).
  -define(GL_TEXTURE_SHARED_SIZE_EXT,                          16#8C3F).
-endif.

-ifndef(GL_NV_depth_buffer_float).
  -define(GL_NV_depth_buffer_float,                            1).

  -define(GL_DEPTH_COMPONENT32F_NV,                            16#8DAB).
  -define(GL_DEPTH32F_STENCIL8_NV,                             16#8DAC).
  -define(GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV,                16#8DAD).
  -define(GL_DEPTH_BUFFER_FLOAT_MODE_NV,                       16#8DAF).
-endif.

-ifndef(GL_NV_fragment_program4).
  -define(GL_NV_fragment_program4,                             1).

-endif.

-ifndef(GL_NV_framebuffer_multisample_coverage).
  -define(GL_NV_framebuffer_multisample_coverage,              1).

  -define(GL_RENDERBUFFER_COVERAGE_SAMPLES_NV,                 16#8CAB).
  -define(GL_RENDERBUFFER_COLOR_SAMPLES_NV,                    16#8E10).
  -define(GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV,                16#8E11).
  -define(GL_MULTISAMPLE_COVERAGE_MODES_NV,                    16#8E12).
-endif.

-ifndef(GL_EXT_framebuffer_sRGB).
  -define(GL_EXT_framebuffer_sRGB,                             1).

  -define(GL_FRAMEBUFFER_SRGB_EXT,                             16#8DB9).
  -define(GL_FRAMEBUFFER_SRGB_CAPABLE_EXT,                     16#8DBA).
-endif.

-ifndef(GL_NV_geometry_shader4).
  -define(GL_NV_geometry_shader4,                              1).

-endif.

-ifndef(GL_NV_parameter_buffer_object).
  -define(GL_NV_parameter_buffer_object,                       1).

  -define(GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV,         16#8DA0).
  -define(GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV,             16#8DA1).
  -define(GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV,               16#8DA2).
  -define(GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV,             16#8DA3).
  -define(GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV,             16#8DA4).
-endif.

-ifndef(GL_EXT_draw_buffers2).
  -define(GL_EXT_draw_buffers2,                                1).

-endif.

-ifndef(GL_NV_transform_feedback).
  -define(GL_NV_transform_feedback,                            1).

  -define(GL_BACK_PRIMARY_COLOR_NV,                            16#8C77).
  -define(GL_BACK_SECONDARY_COLOR_NV,                          16#8C78).
  -define(GL_TEXTURE_COORD_NV,                                 16#8C79).
  -define(GL_CLIP_DISTANCE_NV,                                 16#8C7A).
  -define(GL_VERTEX_ID_NV,                                     16#8C7B).
  -define(GL_PRIMITIVE_ID_NV,                                  16#8C7C).
  -define(GL_GENERIC_ATTRIB_NV,                                16#8C7D).
  -define(GL_TRANSFORM_FEEDBACK_ATTRIBS_NV,                    16#8C7E).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV,                16#8C7F).
  -define(GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV,    16#8C80).
  -define(GL_ACTIVE_VARYINGS_NV,                               16#8C81).
  -define(GL_ACTIVE_VARYING_MAX_LENGTH_NV,                     16#8C82).
  -define(GL_TRANSFORM_FEEDBACK_VARYINGS_NV,                   16#8C83).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_START_NV,               16#8C84).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV,                16#8C85).
  -define(GL_TRANSFORM_FEEDBACK_RECORD_NV,                     16#8C86).
  -define(GL_PRIMITIVES_GENERATED_NV,                          16#8C87).
  -define(GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV,         16#8C88).
  -define(GL_RASTERIZER_DISCARD_NV,                            16#8C89).
  -define(GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV, 16#8C8A).
  -define(GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV,       16#8C8B).
  -define(GL_INTERLEAVED_ATTRIBS_NV,                           16#8C8C).
  -define(GL_SEPARATE_ATTRIBS_NV,                              16#8C8D).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_NV,                     16#8C8E).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV,             16#8C8F).
  -define( GL_LAYER_NV,                                        16#8DAA).
  -define( GL_NEXT_BUFFER_NV,                                  -2).
  -define( GL_SKIP_COMPONENTS4_NV,                             -3).
  -define( GL_SKIP_COMPONENTS3_NV,                             -4).
  -define( GL_SKIP_COMPONENTS2_NV,                             -5).
  -define( GL_SKIP_COMPONENTS1_NV,                             -6).
-endif.

-ifndef(GL_EXT_bindable_uniform).
  -define(GL_EXT_bindable_uniform,                             1).

  -define(GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT,                 16#8DE2).
  -define(GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT,               16#8DE3).
  -define(GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT,               16#8DE4).
  -define(GL_MAX_BINDABLE_UNIFORM_SIZE_EXT,                    16#8DED).
  -define(GL_UNIFORM_BUFFER_EXT,                               16#8DEE).
  -define(GL_UNIFORM_BUFFER_BINDING_EXT,                       16#8DEF).
-endif.

-ifndef(GL_EXT_texture_integer).
  -define(GL_EXT_texture_integer,                              1).

  -define(GL_RGBA32UI_EXT,                                     16#8D70).
  -define(GL_RGB32UI_EXT,                                      16#8D71).
  -define(GL_ALPHA32UI_EXT,                                    16#8D72).
  -define(GL_INTENSITY32UI_EXT,                                16#8D73).
  -define(GL_LUMINANCE32UI_EXT,                                16#8D74).
  -define(GL_LUMINANCE_ALPHA32UI_EXT,                          16#8D75).
  -define(GL_RGBA16UI_EXT,                                     16#8D76).
  -define(GL_RGB16UI_EXT,                                      16#8D77).
  -define(GL_ALPHA16UI_EXT,                                    16#8D78).
  -define(GL_INTENSITY16UI_EXT,                                16#8D79).
  -define(GL_LUMINANCE16UI_EXT,                                16#8D7A).
  -define(GL_LUMINANCE_ALPHA16UI_EXT,                          16#8D7B).
  -define(GL_RGBA8UI_EXT,                                      16#8D7C).
  -define(GL_RGB8UI_EXT,                                       16#8D7D).
  -define(GL_ALPHA8UI_EXT,                                     16#8D7E).
  -define(GL_INTENSITY8UI_EXT,                                 16#8D7F).
  -define(GL_LUMINANCE8UI_EXT,                                 16#8D80).
  -define(GL_LUMINANCE_ALPHA8UI_EXT,                           16#8D81).
  -define(GL_RGBA32I_EXT,                                      16#8D82).
  -define(GL_RGB32I_EXT,                                       16#8D83).
  -define(GL_ALPHA32I_EXT,                                     16#8D84).
  -define(GL_INTENSITY32I_EXT,                                 16#8D85).
  -define(GL_LUMINANCE32I_EXT,                                 16#8D86).
  -define(GL_LUMINANCE_ALPHA32I_EXT,                           16#8D87).
  -define(GL_RGBA16I_EXT,                                      16#8D88).
  -define(GL_RGB16I_EXT,                                       16#8D89).
  -define(GL_ALPHA16I_EXT,                                     16#8D8A).
  -define(GL_INTENSITY16I_EXT,                                 16#8D8B).
  -define(GL_LUMINANCE16I_EXT,                                 16#8D8C).
  -define(GL_LUMINANCE_ALPHA16I_EXT,                           16#8D8D).
  -define(GL_RGBA8I_EXT,                                       16#8D8E).
  -define(GL_RGB8I_EXT,                                        16#8D8F).
  -define(GL_ALPHA8I_EXT,                                      16#8D90).
  -define(GL_INTENSITY8I_EXT,                                  16#8D91).
  -define(GL_LUMINANCE8I_EXT,                                  16#8D92).
  -define(GL_LUMINANCE_ALPHA8I_EXT,                            16#8D93).
  -define(GL_RED_INTEGER_EXT,                                  16#8D94).
  -define(GL_GREEN_INTEGER_EXT,                                16#8D95).
  -define(GL_BLUE_INTEGER_EXT,                                 16#8D96).
  -define(GL_ALPHA_INTEGER_EXT,                                16#8D97).
  -define(GL_RGB_INTEGER_EXT,                                  16#8D98).
  -define(GL_RGBA_INTEGER_EXT,                                 16#8D99).
  -define(GL_BGR_INTEGER_EXT,                                  16#8D9A).
  -define(GL_BGRA_INTEGER_EXT,                                 16#8D9B).
  -define(GL_LUMINANCE_INTEGER_EXT,                            16#8D9C).
  -define(GL_LUMINANCE_ALPHA_INTEGER_EXT,                      16#8D9D).
  -define(GL_RGBA_INTEGER_MODE_EXT,                            16#8D9E).
-endif.

-ifndef(GL_GREMEDY_frame_terminator).
  -define(GL_GREMEDY_frame_terminator,                         1).

-endif.

-ifndef(GL_NV_conditional_render).
  -define(GL_NV_conditional_render,                            1).

  -define(GL_QUERY_WAIT_NV,                                    16#8E13).
  -define(GL_QUERY_NO_WAIT_NV,                                 16#8E14).
  -define(GL_QUERY_BY_REGION_WAIT_NV,                          16#8E15).
  -define(GL_QUERY_BY_REGION_NO_WAIT_NV,                       16#8E16).
-endif.

-ifndef(GL_NV_present_video).
  -define(GL_NV_present_video,                                 1).

  -define(GL_FRAME_NV,                                         16#8E26).
  -define(GL_FIELDS_NV,                                        16#8E27).
  -define(GL_CURRENT_TIME_NV,                                  16#8E28).
  -define(GL_NUM_FILL_STREAMS_NV,                              16#8E29).
  -define(GL_PRESENT_TIME_NV,                                  16#8E2A).
  -define(GL_PRESENT_DURATION_NV,                              16#8E2B).
-endif.

-ifndef(GL_EXT_transform_feedback).
  -define(GL_EXT_transform_feedback,                           1).

  -define(GL_TRANSFORM_FEEDBACK_BUFFER_EXT,                    16#8C8E).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT,              16#8C84).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT,               16#8C85).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT,            16#8C8F).
  -define(GL_INTERLEAVED_ATTRIBS_EXT,                          16#8C8C).
  -define(GL_SEPARATE_ATTRIBS_EXT,                             16#8C8D).
  -define(GL_PRIMITIVES_GENERATED_EXT,                         16#8C87).
  -define(GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT,        16#8C88).
  -define(GL_RASTERIZER_DISCARD_EXT,                           16#8C89).
  -define(GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT, 16#8C8A).
  -define(GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT,      16#8C8B).
  -define(GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT,   16#8C80).
  -define(GL_TRANSFORM_FEEDBACK_VARYINGS_EXT,                  16#8C83).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT,               16#8C7F).
  -define(GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT,        16#8C76).
-endif.

-ifndef(GL_EXT_direct_state_access).
  -define(GL_EXT_direct_state_access,                          1).

  -define(GL_PROGRAM_MATRIX_EXT,                               16#8E2D).
  -define(GL_TRANSPOSE_PROGRAM_MATRIX_EXT,                     16#8E2E).
  -define(GL_PROGRAM_MATRIX_STACK_DEPTH_EXT,                   16#8E2F).
-endif.

-ifndef(GL_EXT_vertex_array_bgra).
  -define(GL_EXT_vertex_array_bgra,                            1).

%% reuse GL_BGRA
-endif.

-ifndef(GL_EXT_texture_swizzle).
  -define(GL_EXT_texture_swizzle,                              1).

  -define(GL_TEXTURE_SWIZZLE_R_EXT,                            16#8E42).
  -define(GL_TEXTURE_SWIZZLE_G_EXT,                            16#8E43).
  -define(GL_TEXTURE_SWIZZLE_B_EXT,                            16#8E44).
  -define(GL_TEXTURE_SWIZZLE_A_EXT,                            16#8E45).
  -define(GL_TEXTURE_SWIZZLE_RGBA_EXT,                         16#8E46).
-endif.

-ifndef(GL_NV_explicit_multisample).
  -define(GL_NV_explicit_multisample,                          1).

  -define(GL_SAMPLE_POSITION_NV,                               16#8E50).
  -define(GL_SAMPLE_MASK_NV,                                   16#8E51).
  -define(GL_SAMPLE_MASK_VALUE_NV,                             16#8E52).
  -define(GL_TEXTURE_BINDING_RENDERBUFFER_NV,                  16#8E53).
  -define(GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV,       16#8E54).
  -define(GL_TEXTURE_RENDERBUFFER_NV,                          16#8E55).
  -define(GL_SAMPLER_RENDERBUFFER_NV,                          16#8E56).
  -define(GL_INT_SAMPLER_RENDERBUFFER_NV,                      16#8E57).
  -define(GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV,             16#8E58).
  -define(GL_MAX_SAMPLE_MASK_WORDS_NV,                         16#8E59).
-endif.

-ifndef(GL_NV_transform_feedback2).
  -define(GL_NV_transform_feedback2,                           1).

  -define(GL_TRANSFORM_FEEDBACK_NV,                            16#8E22).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV,              16#8E23).
  -define(GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV,              16#8E24).
  -define(GL_TRANSFORM_FEEDBACK_BINDING_NV,                    16#8E25).
-endif.

-ifndef(GL_ATI_meminfo).
  -define(GL_ATI_meminfo,                                      1).

  -define(GL_VBO_FREE_MEMORY_ATI,                              16#87FB).
  -define(GL_TEXTURE_FREE_MEMORY_ATI,                          16#87FC).
  -define(GL_RENDERBUFFER_FREE_MEMORY_ATI,                     16#87FD).
-endif.

-ifndef(GL_AMD_performance_monitor).
  -define(GL_AMD_performance_monitor,                          1).

  -define(GL_COUNTER_TYPE_AMD,                                 16#8BC0).
  -define(GL_COUNTER_RANGE_AMD,                                16#8BC1).
  -define(GL_UNSIGNED_INT64_AMD,                               16#8BC2).
  -define(GL_PERCENTAGE_AMD,                                   16#8BC3).
  -define(GL_PERFMON_RESULT_AVAILABLE_AMD,                     16#8BC4).
  -define(GL_PERFMON_RESULT_SIZE_AMD,                          16#8BC5).
  -define(GL_PERFMON_RESULT_AMD,                               16#8BC6).
-endif.

-ifndef(GL_AMD_texture_texture4).
  -define(GL_AMD_texture_texture4,                             1).

-endif.

-ifndef(GL_AMD_vertex_shader_tesselator).
  -define(GL_AMD_vertex_shader_tesselator,                     1).

  -define(GL_SAMPLER_BUFFER_AMD,                               16#9001).
  -define(GL_INT_SAMPLER_BUFFER_AMD,                           16#9002).
  -define(GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD,                  16#9003).
  -define(GL_TESSELLATION_MODE_AMD,                            16#9004).
  -define(GL_TESSELLATION_FACTOR_AMD,                          16#9005).
  -define(GL_DISCRETE_AMD,                                     16#9006).
  -define(GL_CONTINUOUS_AMD,                                   16#9007).
-endif.

-ifndef(GL_EXT_provoking_vertex).
  -define(GL_EXT_provoking_vertex,                             1).

  -define(GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT,     16#8E4C).
  -define(GL_FIRST_VERTEX_CONVENTION_EXT,                      16#8E4D).
  -define(GL_LAST_VERTEX_CONVENTION_EXT,                       16#8E4E).
  -define(GL_PROVOKING_VERTEX_EXT,                             16#8E4F).
-endif.

-ifndef(GL_EXT_texture_snorm).
  -define(GL_EXT_texture_snorm,                                1).

  -define(GL_ALPHA_SNORM,                                      16#9010).
  -define(GL_LUMINANCE_SNORM,                                  16#9011).
  -define(GL_LUMINANCE_ALPHA_SNORM,                            16#9012).
  -define(GL_INTENSITY_SNORM,                                  16#9013).
  -define(GL_ALPHA8_SNORM,                                     16#9014).
  -define(GL_LUMINANCE8_SNORM,                                 16#9015).
  -define(GL_LUMINANCE8_ALPHA8_SNORM,                          16#9016).
  -define(GL_INTENSITY8_SNORM,                                 16#9017).
  -define(GL_ALPHA16_SNORM,                                    16#9018).
  -define(GL_LUMINANCE16_SNORM,                                16#9019).
  -define(GL_LUMINANCE16_ALPHA16_SNORM,                        16#901A).
  -define(GL_INTENSITY16_SNORM,                                16#901B).
%% reuse GL_RED_SNORM
%% reuse GL_RG_SNORM
%% reuse GL_RGB_SNORM
%% reuse GL_RGBA_SNORM
%% reuse GL_R8_SNORM
%% reuse GL_RG8_SNORM
%% reuse GL_RGB8_SNORM
%% reuse GL_RGBA8_SNORM
%% reuse GL_R16_SNORM
%% reuse GL_RG16_SNORM
%% reuse GL_RGB16_SNORM
%% reuse GL_RGBA16_SNORM
%% reuse GL_SIGNED_NORMALIZED
-endif.

-ifndef(GL_AMD_draw_buffers_blend).
  -define(GL_AMD_draw_buffers_blend,                           1).

-endif.

-ifndef(GL_APPLE_texture_range).
  -define(GL_APPLE_texture_range,                              1).

  -define(GL_TEXTURE_RANGE_LENGTH_APPLE,                       16#85B7).
  -define(GL_TEXTURE_RANGE_POINTER_APPLE,                      16#85B8).
  -define(GL_TEXTURE_STORAGE_HINT_APPLE,                       16#85BC).
  -define(GL_STORAGE_PRIVATE_APPLE,                            16#85BD).
%% reuse GL_STORAGE_CACHED_APPLE
%% reuse GL_STORAGE_SHARED_APPLE
-endif.

-ifndef(GL_APPLE_float_pixels).
  -define(GL_APPLE_float_pixels,                               1).

  -define(GL_HALF_APPLE,                                       16#140B).
  -define(GL_RGBA_FLOAT32_APPLE,                               16#8814).
  -define(GL_RGB_FLOAT32_APPLE,                                16#8815).
  -define(GL_ALPHA_FLOAT32_APPLE,                              16#8816).
  -define(GL_INTENSITY_FLOAT32_APPLE,                          16#8817).
  -define(GL_LUMINANCE_FLOAT32_APPLE,                          16#8818).
  -define(GL_LUMINANCE_ALPHA_FLOAT32_APPLE,                    16#8819).
  -define(GL_RGBA_FLOAT16_APPLE,                               16#881A).
  -define(GL_RGB_FLOAT16_APPLE,                                16#881B).
  -define(GL_ALPHA_FLOAT16_APPLE,                              16#881C).
  -define(GL_INTENSITY_FLOAT16_APPLE,                          16#881D).
  -define(GL_LUMINANCE_FLOAT16_APPLE,                          16#881E).
  -define(GL_LUMINANCE_ALPHA_FLOAT16_APPLE,                    16#881F).
  -define(GL_COLOR_FLOAT_APPLE,                                16#8A0F).
-endif.

-ifndef(GL_APPLE_vertex_program_evaluators).
  -define(GL_APPLE_vertex_program_evaluators,                  1).

  -define(GL_VERTEX_ATTRIB_MAP1_APPLE,                         16#8A00).
  -define(GL_VERTEX_ATTRIB_MAP2_APPLE,                         16#8A01).
  -define(GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE,                    16#8A02).
  -define(GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE,                   16#8A03).
  -define(GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE,                   16#8A04).
  -define(GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE,                  16#8A05).
  -define(GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE,                    16#8A06).
  -define(GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE,                   16#8A07).
  -define(GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE,                   16#8A08).
  -define(GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE,                  16#8A09).
-endif.

-ifndef(GL_APPLE_aux_depth_stencil).
  -define(GL_APPLE_aux_depth_stencil,                          1).

  -define(GL_AUX_DEPTH_STENCIL_APPLE,                          16#8A14).
-endif.

-ifndef(GL_APPLE_object_purgeable).
  -define(GL_APPLE_object_purgeable,                           1).

  -define(GL_BUFFER_OBJECT_APPLE,                              16#85B3).
  -define(GL_RELEASED_APPLE,                                   16#8A19).
  -define(GL_VOLATILE_APPLE,                                   16#8A1A).
  -define(GL_RETAINED_APPLE,                                   16#8A1B).
  -define(GL_UNDEFINED_APPLE,                                  16#8A1C).
  -define(GL_PURGEABLE_APPLE,                                  16#8A1D).
-endif.

-ifndef(GL_APPLE_row_bytes).
  -define(GL_APPLE_row_bytes,                                  1).

  -define(GL_PACK_ROW_BYTES_APPLE,                             16#8A15).
  -define(GL_UNPACK_ROW_BYTES_APPLE,                           16#8A16).
-endif.

-ifndef(GL_APPLE_rgb_422).
  -define(GL_APPLE_rgb_422,                                    1).

  -define(GL_RGB_422_APPLE,                                    16#8A1F).
%% reuse GL_UNSIGNED_SHORT_8_8_APPLE
%% reuse GL_UNSIGNED_SHORT_8_8_REV_APPLE
-endif.

-ifndef(GL_NV_video_capture).
  -define(GL_NV_video_capture,                                 1).

  -define(GL_VIDEO_BUFFER_NV,                                  16#9020).
  -define(GL_VIDEO_BUFFER_BINDING_NV,                          16#9021).
  -define(GL_FIELD_UPPER_NV,                                   16#9022).
  -define(GL_FIELD_LOWER_NV,                                   16#9023).
  -define(GL_NUM_VIDEO_CAPTURE_STREAMS_NV,                     16#9024).
  -define(GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV,              16#9025).
  -define(GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV,                16#9026).
  -define(GL_LAST_VIDEO_CAPTURE_STATUS_NV,                     16#9027).
  -define(GL_VIDEO_BUFFER_PITCH_NV,                            16#9028).
  -define(GL_VIDEO_COLOR_CONVERSION_MATRIX_NV,                 16#9029).
  -define(GL_VIDEO_COLOR_CONVERSION_MAX_NV,                    16#902A).
  -define(GL_VIDEO_COLOR_CONVERSION_MIN_NV,                    16#902B).
  -define(GL_VIDEO_COLOR_CONVERSION_OFFSET_NV,                 16#902C).
  -define(GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV,                  16#902D).
  -define(GL_PARTIAL_SUCCESS_NV,                               16#902E).
  -define(GL_SUCCESS_NV,                                       16#902F).
  -define(GL_FAILURE_NV,                                       16#9030).
  -define(GL_YCBYCR8_422_NV,                                   16#9031).
  -define(GL_YCBAYCR8A_4224_NV,                                16#9032).
  -define(GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV,                    16#9033).
  -define(GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV,         16#9034).
  -define(GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV,                    16#9035).
  -define(GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV,         16#9036).
  -define(GL_Z4Y12Z4CB12Z4CR12_444_NV,                         16#9037).
  -define(GL_VIDEO_CAPTURE_FRAME_WIDTH_NV,                     16#9038).
  -define(GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV,                    16#9039).
  -define(GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV,              16#903A).
  -define(GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV,              16#903B).
  -define(GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV,                  16#903C).
-endif.

-ifndef(GL_NV_copy_image).
  -define(GL_NV_copy_image,                                    1).

-endif.

-ifndef(GL_EXT_separate_shader_objects).
  -define(GL_EXT_separate_shader_objects,                      1).

  -define(GL_ACTIVE_PROGRAM_EXT,                               16#8B8D).
-endif.

-ifndef(GL_NV_parameter_buffer_object2).
  -define(GL_NV_parameter_buffer_object2,                      1).

-endif.

-ifndef(GL_NV_shader_buffer_load).
  -define(GL_NV_shader_buffer_load,                            1).

  -define(GL_BUFFER_GPU_ADDRESS_NV,                            16#8F1D).
  -define(GL_GPU_ADDRESS_NV,                                   16#8F34).
  -define(GL_MAX_SHADER_BUFFER_ADDRESS_NV,                     16#8F35).
-endif.

-ifndef(GL_NV_vertex_buffer_unified_memory).
  -define(GL_NV_vertex_buffer_unified_memory,                  1).

  -define(GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV,                   16#8F1E).
  -define(GL_ELEMENT_ARRAY_UNIFIED_NV,                         16#8F1F).
  -define(GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV,                   16#8F20).
  -define(GL_VERTEX_ARRAY_ADDRESS_NV,                          16#8F21).
  -define(GL_NORMAL_ARRAY_ADDRESS_NV,                          16#8F22).
  -define(GL_COLOR_ARRAY_ADDRESS_NV,                           16#8F23).
  -define(GL_INDEX_ARRAY_ADDRESS_NV,                           16#8F24).
  -define(GL_TEXTURE_COORD_ARRAY_ADDRESS_NV,                   16#8F25).
  -define(GL_EDGE_FLAG_ARRAY_ADDRESS_NV,                       16#8F26).
  -define(GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV,                 16#8F27).
  -define(GL_FOG_COORD_ARRAY_ADDRESS_NV,                       16#8F28).
  -define(GL_ELEMENT_ARRAY_ADDRESS_NV,                         16#8F29).
  -define(GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV,                    16#8F2A).
  -define(GL_VERTEX_ARRAY_LENGTH_NV,                           16#8F2B).
  -define(GL_NORMAL_ARRAY_LENGTH_NV,                           16#8F2C).
  -define(GL_COLOR_ARRAY_LENGTH_NV,                            16#8F2D).
  -define(GL_INDEX_ARRAY_LENGTH_NV,                            16#8F2E).
  -define(GL_TEXTURE_COORD_ARRAY_LENGTH_NV,                    16#8F2F).
  -define(GL_EDGE_FLAG_ARRAY_LENGTH_NV,                        16#8F30).
  -define(GL_SECONDARY_COLOR_ARRAY_LENGTH_NV,                  16#8F31).
  -define(GL_FOG_COORD_ARRAY_LENGTH_NV,                        16#8F32).
  -define(GL_ELEMENT_ARRAY_LENGTH_NV,                          16#8F33).
  -define(GL_DRAW_INDIRECT_UNIFIED_NV,                         16#8F40).
  -define(GL_DRAW_INDIRECT_ADDRESS_NV,                         16#8F41).
  -define(GL_DRAW_INDIRECT_LENGTH_NV,                          16#8F42).
-endif.

-ifndef(GL_NV_texture_barrier).
  -define(GL_NV_texture_barrier,                               1).

-endif.

-ifndef(GL_AMD_shader_stencil_export).
  -define(GL_AMD_shader_stencil_export,                        1).

-endif.

-ifndef(GL_AMD_seamless_cubemap_per_texture).
  -define(GL_AMD_seamless_cubemap_per_texture,                 1).

%% reuse GL_TEXTURE_CUBE_MAP_SEAMLESS_ARB
-endif.

-ifndef(GL_AMD_conservative_depth).
  -define(GL_AMD_conservative_depth,                           1).

-endif.





-ifndef(GL_EXT_shader_image_load_store).
  -define(GL_EXT_shader_image_load_store,                      1).

  -define(GL_MAX_IMAGE_UNITS_EXT,                              16#8F38).
  -define(GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT, 16#8F39).
  -define(GL_IMAGE_BINDING_NAME_EXT,                           16#8F3A).
  -define(GL_IMAGE_BINDING_LEVEL_EXT,                          16#8F3B).
  -define(GL_IMAGE_BINDING_LAYERED_EXT,                        16#8F3C).
  -define(GL_IMAGE_BINDING_LAYER_EXT,                          16#8F3D).
  -define(GL_IMAGE_BINDING_ACCESS_EXT,                         16#8F3E).
  -define(GL_IMAGE_1D_EXT,                                     16#904C).
  -define(GL_IMAGE_2D_EXT,                                     16#904D).
  -define(GL_IMAGE_3D_EXT,                                     16#904E).
  -define(GL_IMAGE_2D_RECT_EXT,                                16#904F).
  -define(GL_IMAGE_CUBE_EXT,                                   16#9050).
  -define(GL_IMAGE_BUFFER_EXT,                                 16#9051).
  -define(GL_IMAGE_1D_ARRAY_EXT,                               16#9052).
  -define(GL_IMAGE_2D_ARRAY_EXT,                               16#9053).
  -define(GL_IMAGE_CUBE_MAP_ARRAY_EXT,                         16#9054).
  -define(GL_IMAGE_2D_MULTISAMPLE_EXT,                         16#9055).
  -define(GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT,                   16#9056).
  -define(GL_INT_IMAGE_1D_EXT,                                 16#9057).
  -define(GL_INT_IMAGE_2D_EXT,                                 16#9058).
  -define(GL_INT_IMAGE_3D_EXT,                                 16#9059).
  -define(GL_INT_IMAGE_2D_RECT_EXT,                            16#905A).
  -define(GL_INT_IMAGE_CUBE_EXT,                               16#905B).
  -define(GL_INT_IMAGE_BUFFER_EXT,                             16#905C).
  -define(GL_INT_IMAGE_1D_ARRAY_EXT,                           16#905D).
  -define(GL_INT_IMAGE_2D_ARRAY_EXT,                           16#905E).
  -define(GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT,                     16#905F).
  -define(GL_INT_IMAGE_2D_MULTISAMPLE_EXT,                     16#9060).
  -define(GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT,               16#9061).
  -define(GL_UNSIGNED_INT_IMAGE_1D_EXT,                        16#9062).
  -define(GL_UNSIGNED_INT_IMAGE_2D_EXT,                        16#9063).
  -define(GL_UNSIGNED_INT_IMAGE_3D_EXT,                        16#9064).
  -define(GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT,                   16#9065).
  -define(GL_UNSIGNED_INT_IMAGE_CUBE_EXT,                      16#9066).
  -define(GL_UNSIGNED_INT_IMAGE_BUFFER_EXT,                    16#9067).
  -define(GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT,                  16#9068).
  -define(GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT,                  16#9069).
  -define(GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT,            16#906A).
  -define(GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT,            16#906B).
  -define(GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT,      16#906C).
  -define(GL_MAX_IMAGE_SAMPLES_EXT,                            16#906D).
  -define(GL_IMAGE_BINDING_FORMAT_EXT,                         16#906E).
  -define(GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT,              16#00000001).
  -define(GL_ELEMENT_ARRAY_BARRIER_BIT_EXT,                    16#00000002).
  -define(GL_UNIFORM_BARRIER_BIT_EXT,                          16#00000004).
  -define(GL_TEXTURE_FETCH_BARRIER_BIT_EXT,                    16#00000008).
  -define(GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT,              16#00000020).
  -define(GL_COMMAND_BARRIER_BIT_EXT,                          16#00000040).
  -define(GL_PIXEL_BUFFER_BARRIER_BIT_EXT,                     16#00000080).
  -define(GL_TEXTURE_UPDATE_BARRIER_BIT_EXT,                   16#00000100).
  -define(GL_BUFFER_UPDATE_BARRIER_BIT_EXT,                    16#00000200).
  -define(GL_FRAMEBUFFER_BARRIER_BIT_EXT,                      16#00000400).
  -define(GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT,               16#00000800).
  -define(GL_ATOMIC_COUNTER_BARRIER_BIT_EXT,                   16#00001000).
  -define(GL_ALL_BARRIER_BITS_EXT,                             16#FFFFFFFF).
-endif.

-ifndef(GL_EXT_vertex_attrib_64bit
  -define(GL_EXT_vertex_attrib_64bit,                          1).

%% reuse GL_DOUBLE
  -define(GL_DOUBLE_VEC2_EXT,                                  16#8FFC).
  -define(GL_DOUBLE_VEC3_EXT,                                  16#8FFD).
  -define(GL_DOUBLE_VEC4_EXT,                                  16#8FFE).
  -define(GL_DOUBLE_MAT2_EXT,                                  16#8F46).
  -define(GL_DOUBLE_MAT3_EXT,                                  16#8F47).
  -define(GL_DOUBLE_MAT4_EXT,                                  16#8F48).
  -define(GL_DOUBLE_MAT2x3_EXT,                                16#8F49).
  -define(GL_DOUBLE_MAT2x4_EXT,                                16#8F4A).
  -define(GL_DOUBLE_MAT3x2_EXT,                                16#8F4B).
  -define(GL_DOUBLE_MAT3x4_EXT,                                16#8F4C).
  -define(GL_DOUBLE_MAT4x2_EXT,                                16#8F4D).
  -define(GL_DOUBLE_MAT4x3_EXT,                                16#8F4E).
-endif.

-ifndef(GL_NV_gpu_program5
  -define(GL_NV_gpu_program5,                                  1).

  -define(GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV,              16#8E5A).
  -define(GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV,             16#8E5B).
  -define(GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV,             16#8E5C).
  -define(GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV,    16#8E5D).
  -define(GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV,             16#8E5E).
  -define(GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV,             16#8E5F).
  -define(GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV,             16#8F44).
  -define(GL_MAX_PROGRAM_SUBROUTINE_NUM_NV,                    16#8F45).
-endif.

-ifndef(GL_NV_gpu_shader5
  -define(GL_NV_gpu_shader5,                                   1).

  -define(GL_INT64_NV,                                         16#140E).
  -define(GL_UNSIGNED_INT64_NV,                                16#140F).
  -define(GL_INT8_NV,                                          16#8FE0).
  -define(GL_INT8_VEC2_NV,                                     16#8FE1).
  -define(GL_INT8_VEC3_NV,                                     16#8FE2).
  -define(GL_INT8_VEC4_NV,                                     16#8FE3).
  -define(GL_INT16_NV,                                         16#8FE4).
  -define(GL_INT16_VEC2_NV,                                    16#8FE5).
  -define(GL_INT16_VEC3_NV,                                    16#8FE6).
  -define(GL_INT16_VEC4_NV,                                    16#8FE7).
  -define(GL_INT64_VEC2_NV,                                    16#8FE9).
  -define(GL_INT64_VEC3_NV,                                    16#8FEA).
  -define(GL_INT64_VEC4_NV,                                    16#8FEB).
  -define(GL_UNSIGNED_INT8_NV,                                 16#8FEC).
  -define(GL_UNSIGNED_INT8_VEC2_NV,                            16#8FED).
  -define(GL_UNSIGNED_INT8_VEC3_NV,                            16#8FEE).
  -define(GL_UNSIGNED_INT8_VEC4_NV,                            16#8FEF).
  -define(GL_UNSIGNED_INT16_NV,                                16#8FF0).
  -define(GL_UNSIGNED_INT16_VEC2_NV,                           16#8FF1).
  -define(GL_UNSIGNED_INT16_VEC3_NV,                           16#8FF2).
  -define(GL_UNSIGNED_INT16_VEC4_NV,                           16#8FF3).
  -define(GL_UNSIGNED_INT64_VEC2_NV,                           16#8FF5).
  -define(GL_UNSIGNED_INT64_VEC3_NV,                           16#8FF6).
  -define(GL_UNSIGNED_INT64_VEC4_NV,                           16#8FF7).
  -define(GL_FLOAT16_NV,                                       16#8FF8).
  -define(GL_FLOAT16_VEC2_NV,                                  16#8FF9).
  -define(GL_FLOAT16_VEC3_NV,                                  16#8FFA).
  -define(GL_FLOAT16_VEC4_NV,                                  16#8FFB).
%% reuse GL_PATCHES
-endif.

-ifndef(GL_NV_shader_buffer_store
  -define(GL_NV_shader_buffer_store,                           1).

  -define(GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV,              16#00000010).
%% reuse GL_READ_WRITE
%% reuse GL_WRITE_ONLY
-endif.

-ifndef(GL_NV_tessellation_program5
  -define(GL_NV_tessellation_program5,                         1).

  -define(GL_MAX_PROGRAM_PATCH_ATTRIBS_NV,                     16#86D8).
  -define(GL_TESS_CONTROL_PROGRAM_NV,                          16#891E).
  -define(GL_TESS_EVALUATION_PROGRAM_NV,                       16#891F).
  -define(GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV,         16#8C74).
  -define(GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV,      16#8C75).
-endif.

-ifndef(GL_NV_vertex_attrib_integer_64bit
  -define(GL_NV_vertex_attrib_integer_64bit,                   1).

%% reuse GL_INT64_NV
%% reuse GL_UNSIGNED_INT64_NV
-endif.

-ifndef(GL_NV_multisample_coverage
  -define(GL_NV_multisample_coverage,                          1).

  -define(GL_COVERAGE_SAMPLES_NV,                              16#80A9).
  -define(GL_COLOR_SAMPLES_NV,                                 16#8E20).
-endif.

-ifndef(GL_AMD_name_gen_delete
   -define(GL_AMD_name_gen_delete,                             1).

 -define(GL_DATA_BUFFER_AMD,                                   16#9151).
  -define(GL_PERFORMANCE_MONITOR_AMD,                          16#9152).
  -define(GL_QUERY_OBJECT_AMD,                                 16#9153).
  -define(GL_VERTEX_ARRAY_OBJECT_AMD,                          16#9154).
  -define(GL_SAMPLER_OBJECT_AMD,                               16#9155).
-endif.

-ifndef(GL_AMD_debug_output
  -define(GL_AMD_debug_output,                                 1).

  -define(GL_MAX_DEBUG_MESSAGE_LENGTH_AMD,                     16#9143).
  -define(GL_MAX_DEBUG_LOGGED_MESSAGES_AMD,                    16#9144).
  -define(GL_DEBUG_LOGGED_MESSAGES_AMD,                        16#9145).
  -define(GL_DEBUG_SEVERITY_HIGH_AMD,                          16#9146).
  -define(GL_DEBUG_SEVERITY_MEDIUM_AMD,                        16#9147).
  -define(GL_DEBUG_SEVERITY_LOW_AMD,                           16#9148).
  -define(GL_DEBUG_CATEGORY_API_ERROR_AMD,                     16#9149).
  -define(GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD,                 16#914A).
  -define(GL_DEBUG_CATEGORY_DEPRECATION_AMD,                   16#914B).
  -define(GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD,            16#914C).
  -define(GL_DEBUG_CATEGORY_PERFORMANCE_AMD,                   16#914D).
  -define(GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD,               16#914E).
  -define(GL_DEBUG_CATEGORY_APPLICATION_AMD,                   16#914F).
  -define(GL_DEBUG_CATEGORY_OTHER_AMD,                         16#9150).
-endif.

-ifndef(GL_NV_vdpau_interop
  -define(GL_NV_vdpau_interop,                                 1).

  -define(GL_SURFACE_STATE_NV,                                 16#86EB).
  -define(GL_SURFACE_REGISTERED_NV,                            16#86FD).
  -define(GL_SURFACE_MAPPED_NV,                                16#8700).
  -define(GL_WRITE_DISCARD_NV,                                 16#88BE).
-endif.

-ifndef(GL_AMD_transform_feedback3_lines_triangles).
  -define(GL_AMD_transform_feedback3_lines_triangles,          1).

-endif.

-ifndef(GL_AMD_depth_clamp_separate).
  -define(GL_AMD_depth_clamp_separate,                         1).

  -define(GL_DEPTH_CLAMP_NEAR_AMD,                             16#901E).
  -define(GL_DEPTH_CLAMP_FAR_AMD,                              16#901F).
-endif.

-ifndef(GL_EXT_texture_sRGB_decode).
  -define(GL_EXT_texture_sRGB_decode,                          1).

  -define(GL_TEXTURE_SRGB_DECODE_EXT,                          16#8A48).
  -define(GL_DECODE_EXT,                                       16#8A49).
  -define(GL_SKIP_DECODE_EXT,                                  16#8A4A).
-endif.

-ifndef(GL_NV_texture_multisample).
  -define(GL_NV_texture_multisample,                           1).

  -define(GL_TEXTURE_COVERAGE_SAMPLES_NV,                      16#9045).
  -define(GL_TEXTURE_COLOR_SAMPLES_NV,                         16#9046).
-endif.

-ifndef(GL_AMD_blend_minmax_factor).
  -define(GL_AMD_blend_minmax_factor,                          1).

  -define(GL_FACTOR_MIN_AMD,                                   16#901C).
  -define(GL_FACTOR_MAX_AMD,                                   16#901D).
-endif.

-ifndef(GL_AMD_sample_positions).
  -define(GL_AMD_sample_positions,                             1).

  -define(GL_SUBSAMPLE_DISTANCE_AMD,                           16#883F).
-endif.

-ifndef(GL_EXT_x11_sync_object).
  -define(GL_EXT_x11_sync_object,                              1).

  -define(GL_SYNC_X11_FENCE_EXT,                               16#90E1).
-endif.

-ifndef(GL_AMD_multi_draw_indirect).
  -define(GL_AMD_multi_draw_indirect,                          1).

-endif.

-ifndef(GL_EXT_framebuffer_multisample_blit_scaled).
  -define(GL_EXT_framebuffer_multisample_blit_scaled,          1).

  -define(GL_SCALED_RESOLVE_FASTEST_EXT,                       16#90BA).
  -define(GL_SCALED_RESOLVE_NICEST_EXT,                        16#90BB).
-endif.

-ifndef(GL_NV_path_rendering).
  -define(GL_NV_path_rendering,                                1).

  -define(GL_PATH_FORMAT_SVG_NV,                               16#9070).
  -define(GL_PATH_FORMAT_PS_NV,                                16#9071).
  -define(GL_STANDARD_FONT_NAME_NV,                            16#9072).
  -define(GL_SYSTEM_FONT_NAME_NV,                              16#9073).
  -define(GL_FILE_NAME_NV,                                     16#9074).
  -define(GL_PATH_STROKE_WIDTH_NV,                             16#9075).
  -define(GL_PATH_END_CAPS_NV,                                 16#9076).
  -define(GL_PATH_INITIAL_END_CAP_NV,                          16#9077).
  -define(GL_PATH_TERMINAL_END_CAP_NV,                         16#9078).
  -define(GL_PATH_JOIN_STYLE_NV,                               16#9079).
  -define(GL_PATH_MITER_LIMIT_NV,                              16#907A).
  -define(GL_PATH_DASH_CAPS_NV,                                16#907B).
  -define(GL_PATH_INITIAL_DASH_CAP_NV,                         16#907C).
  -define(GL_PATH_TERMINAL_DASH_CAP_NV,                        16#907D).
  -define(GL_PATH_DASH_OFFSET_NV,                              16#907E).
  -define(GL_PATH_CLIENT_LENGTH_NV,                            16#907F).
  -define(GL_PATH_FILL_MODE_NV,                                16#9080).
  -define(GL_PATH_FILL_MASK_NV,                                16#9081).
  -define(GL_PATH_FILL_COVER_MODE_NV,                          16#9082).
  -define(GL_PATH_STROKE_COVER_MODE_NV,                        16#9083).
  -define(GL_PATH_STROKE_MASK_NV,                              16#9084).
  -define(GL_COUNT_UP_NV,                                      16#9088).
  -define(GL_COUNT_DOWN_NV,                                    16#9089).
  -define(GL_PATH_OBJECT_BOUNDING_BOX_NV,                      16#908A).
  -define(GL_CONVEX_HULL_NV,                                   16#908B).
  -define(GL_BOUNDING_BOX_NV,                                  16#908D).
  -define(GL_TRANSLATE_X_NV,                                   16#908E).
  -define(GL_TRANSLATE_Y_NV,                                   16#908F).
  -define(GL_TRANSLATE_2D_NV,                                  16#9090).
  -define(GL_TRANSLATE_3D_NV,                                  16#9091).
  -define(GL_AFFINE_2D_NV,                                     16#9092).
  -define(GL_AFFINE_3D_NV,                                     16#9094).
  -define(GL_TRANSPOSE_AFFINE_2D_NV,                           16#9096).
  -define(GL_TRANSPOSE_AFFINE_3D_NV,                           16#9098).
  -define(GL_UTF8_NV,                                          16#909A).
  -define(GL_UTF16_NV,                                         16#909B).
  -define(GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV,                16#909C).
  -define(GL_PATH_COMMAND_COUNT_NV,                            16#909D).
  -define(GL_PATH_COORD_COUNT_NV,                              16#909E).
  -define(GL_PATH_DASH_ARRAY_COUNT_NV,                         16#909F).
  -define(GL_PATH_COMPUTED_LENGTH_NV,                          16#90A0).
  -define(GL_PATH_FILL_BOUNDING_BOX_NV,                        16#90A1).
  -define(GL_PATH_STROKE_BOUNDING_BOX_NV,                      16#90A2).
  -define(GL_SQUARE_NV,                                        16#90A3).
  -define(GL_ROUND_NV,                                         16#90A4).
  -define(GL_TRIANGULAR_NV,                                    16#90A5).
  -define(GL_BEVEL_NV,                                         16#90A6).
  -define(GL_MITER_REVERT_NV,                                  16#90A7).
  -define(GL_MITER_TRUNCATE_NV,                                16#90A8).
  -define(GL_SKIP_MISSING_GLYPH_NV,                            16#90A9).
  -define(GL_USE_MISSING_GLYPH_NV,                             16#90AA).
  -define(GL_PATH_ERROR_POSITION_NV,                           16#90AB).
  -define(GL_PATH_FOG_GEN_MODE_NV,                             16#90AC).
  -define(GL_ACCUM_ADJACENT_PAIRS_NV,                          16#90AD).
  -define(GL_ADJACENT_PAIRS_NV,                                16#90AE).
  -define(GL_FIRST_TO_REST_NV,                                 16#90AF).
  -define(GL_PATH_GEN_MODE_NV,                                 16#90B0).
  -define(GL_PATH_GEN_COEFF_NV,                                16#90B1).
  -define(GL_PATH_GEN_COLOR_FORMAT_NV,                         16#90B2).
  -define(GL_PATH_GEN_COMPONENTS_NV,                           16#90B3).
  -define(GL_PATH_STENCIL_FUNC_NV,                             16#90B7).
  -define(GL_PATH_STENCIL_REF_NV,                              16#90B8).
  -define(GL_PATH_STENCIL_VALUE_MASK_NV,                       16#90B9).
  -define(GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV,              16#90BD).
  -define(GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV,               16#90BE).
  -define(GL_PATH_COVER_DEPTH_FUNC_NV,                         16#90BF).
  -define(GL_PATH_DASH_OFFSET_RESET_NV,                        16#90B4).
  -define(GL_MOVE_TO_RESETS_NV,                                16#90B5).
  -define(GL_MOVE_TO_CONTINUES_NV,                             16#90B6).
  -define(GL_CLOSE_PATH_NV,                                    16#00).
  -define(GL_MOVE_TO_NV,                                       16#02).
  -define(GL_RELATIVE_MOVE_TO_NV,                              16#03).
  -define(GL_LINE_TO_NV,                                       16#04).
  -define(GL_RELATIVE_LINE_TO_NV,                              16#05).
  -define(GL_HORIZONTAL_LINE_TO_NV,                            16#06).
  -define(GL_RELATIVE_HORIZONTAL_LINE_TO_NV,                   16#07).
  -define(GL_VERTICAL_LINE_TO_NV,                              16#08).
  -define(GL_RELATIVE_VERTICAL_LINE_TO_NV,                     16#09).
  -define(GL_QUADRATIC_CURVE_TO_NV,                            16#0A).
  -define(GL_RELATIVE_QUADRATIC_CURVE_TO_NV,                   16#0B).
  -define(GL_CUBIC_CURVE_TO_NV,                                16#0C).
  -define(GL_RELATIVE_CUBIC_CURVE_TO_NV,                       16#0D).
  -define(GL_SMOOTH_QUADRATIC_CURVE_TO_NV,                     16#0E).
  -define(GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV,            16#0F).
  -define(GL_SMOOTH_CUBIC_CURVE_TO_NV,                         16#10).
  -define(GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV,                16#11).
  -define(GL_SMALL_CCW_ARC_TO_NV,                              16#12).
  -define(GL_RELATIVE_SMALL_CCW_ARC_TO_NV,                     16#13).
  -define(GL_SMALL_CW_ARC_TO_NV,                               16#14).
  -define(GL_RELATIVE_SMALL_CW_ARC_TO_NV,                      16#15).
  -define(GL_LARGE_CCW_ARC_TO_NV,                              16#16).
  -define(GL_RELATIVE_LARGE_CCW_ARC_TO_NV,                     16#17).
  -define(GL_LARGE_CW_ARC_TO_NV,                               16#18).
  -define(GL_RELATIVE_LARGE_CW_ARC_TO_NV,                      16#19).
  -define(GL_RESTART_PATH_NV,                                  16#F0).
  -define(GL_DUP_FIRST_CUBIC_CURVE_TO_NV,                      16#F2).
  -define(GL_DUP_LAST_CUBIC_CURVE_TO_NV,                       16#F4).
  -define(GL_RECT_NV,                                          16#F6).
  -define(GL_CIRCULAR_CCW_ARC_TO_NV,                           16#F8).
  -define(GL_CIRCULAR_CW_ARC_TO_NV,                            16#FA).
  -define(GL_CIRCULAR_TANGENT_ARC_TO_NV,                       16#FC).
  -define(GL_ARC_TO_NV,                                        16#FE).
  -define(GL_RELATIVE_ARC_TO_NV,                               16#FF).
  -define(GL_BOLD_BIT_NV,                                      16#01).
  -define(GL_ITALIC_BIT_NV,                                    16#02).
  -define(GL_GLYPH_WIDTH_BIT_NV,                               16#01).
  -define(GL_GLYPH_HEIGHT_BIT_NV,                              16#02).
  -define(GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV,                16#04).
  -define(GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV,                16#08).
  -define(GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV,          16#10).
  -define(GL_GLYPH_VERTICAL_BEARING_X_BIT_NV,                  16#20).
  -define(GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV,                  16#40).
  -define(GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV,            16#80).
  -define(GL_GLYPH_HAS_KERNING_BIT_NV,                         16#100).
  -define(GL_FONT_X_MIN_BOUNDS_BIT_NV,                         16#00010000).
  -define(GL_FONT_Y_MIN_BOUNDS_BIT_NV,                         16#00020000).
  -define(GL_FONT_X_MAX_BOUNDS_BIT_NV,                         16#00040000).
  -define(GL_FONT_Y_MAX_BOUNDS_BIT_NV,                         16#00080000).
  -define(GL_FONT_UNITS_PER_EM_BIT_NV,                         16#00100000).
  -define(GL_FONT_ASCENDER_BIT_NV,                             16#00200000).
  -define(GL_FONT_DESCENDER_BIT_NV,                            16#00400000).
  -define(GL_FONT_HEIGHT_BIT_NV,                               16#00800000).
  -define(GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV,                    16#01000000).
  -define(GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV,                   16#02000000).
  -define(GL_FONT_UNDERLINE_POSITION_BIT_NV,                   16#04000000).
  -define(GL_FONT_UNDERLINE_THICKNESS_BIT_NV,                  16#08000000).
  -define(GL_FONT_HAS_KERNING_BIT_NV,                          16#10000000).
  %% reuse GL_PRIMARY_COLOR
  %% reuse GL_PRIMARY_COLOR_NV
  %% reuse GL_SECONDARY_COLOR_NV
-endif.

-ifndef(GL_AMD_pinned_memory).
  -define(GL_AMD_pinned_memory,                                1).

  -define(GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD,               16#9160).
-endif.

-ifndef(GL_AMD_stencil_operation_extended).
  -define(GL_AMD_stencil_operation_extended,                   1).

  -define(GL_SET_AMD,                                          16#874A).
  -define(GL_REPLACE_VALUE_AMD,                                16#874B).
  -define(GL_STENCIL_OP_VALUE_AMD,                             16#874C).
  -define(GL_STENCIL_BACK_OP_VALUE_AMD,                        16#874D).
-endif.

-ifndef(GL_AMD_vertex_shader_viewport_index).
  -define(GL_AMD_vertex_shader_viewport_index,                 1).

-endif.

-ifndef(GL_AMD_vertex_shader_layer).
  -define(GL_AMD_vertex_shader_layer,                          1).

-endif.

-ifndef(GL_NV_bindless_texture).
  -define(GL_NV_bindless_texture,                              1).

-endif.

-ifndef(GL_NV_shader_atomic_float).
  -define(GL_NV_shader_atomic_float,                           1).

-endif.

#ifndef GL_AMD_query_buffer_object
#define GL_QUERY_BUFFER_AMD               0x9192
#define GL_QUERY_BUFFER_BINDING_AMD       0x9193
#define GL_QUERY_RESULT_NO_WAIT_AMD       0x9194
#endif

#ifndef GL_NV_compute_program5
#define GL_COMPUTE_PROGRAM_NV             0x90FB
#define GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV 0x90FC
#endif

#ifndef GL_NV_shader_storage_buffer_object
#endif

#ifndef GL_NV_shader_atomic_counters
#endif

#ifndef GL_NV_deep_texture3D
#define GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV 0x90D0
#define GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV   0x90D1
#endif

#ifndef GL_NVX_conditional_render
#endif

#ifndef GL_AMD_sparse_texture
#define GL_VIRTUAL_PAGE_SIZE_X_AMD        0x9195
#define GL_VIRTUAL_PAGE_SIZE_Y_AMD        0x9196
#define GL_VIRTUAL_PAGE_SIZE_Z_AMD        0x9197
#define GL_MAX_SPARSE_TEXTURE_SIZE_AMD    0x9198
#define GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD 0x9199
#define GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS 0x919A
#define GL_MIN_SPARSE_LEVEL_AMD           0x919B
#define GL_MIN_LOD_WARNING_AMD            0x919C
#define GL_TEXTURE_STORAGE_SPARSE_BIT_AMD 0x00000001
#endif

#ifndef GL_AMD_shader_trinary_minmax
#endif

#ifndef GL_INTEL_map_texture
#define GL_TEXTURE_MEMORY_LAYOUT_INTEL    0x83FF
#define GL_LAYOUT_DEFAULT_INTEL           0
#define GL_LAYOUT_LINEAR_INTEL            1
#define GL_LAYOUT_LINEAR_CPU_CACHED_INTEL 2
#endif

#ifndef GL_NV_draw_texture
#endif

