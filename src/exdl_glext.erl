%%
%%  Copyright(c) 2005 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_glext.erl,v 1.11 2006/05/15 14:45:44 dgud Exp $
%%

-module(exdl_glext).

-include("exdl.hrl").

-ifdef(COMPILE_GLEXT).

%% 1- EXPORT

%-compile(export_all).

%% GL_VERSION_1_2

-export( [ blendColor/4
         , blendEquation/1
         , drawRangeElements/6
         , texImage3D/10
         , texSubImage3D/11
         , copyTexSubImage3D/9
         ]
       ).

%% GL_VERSION_1_2_DEPRECATED

-export( [ colorTable/6
         , colorTableParameterfv/3
         , colorTableParameteriv/3
         , copyColorTable/5
         , getColorTable/3
         , getColorTableParameterfv/2
         , getColorTableParameteriv/2
         , colorSubTable/6
         , copyColorSubTable/5
         , convolutionFilter1D/6
         , convolutionFilter2D/7
         , convolutionParameterf/3
         , convolutionParameterfv/3
         , convolutionParameteri/3
         , convolutionParameteriv/3
         , copyConvolutionFilter1D/5
         , copyConvolutionFilter2D/6
         , getConvolutionFilter/3
         , getConvolutionParameterfv/2
         , getConvolutionParameteriv/2
         , getSeparableFilter/3
         , separableFilter2D/8
         , getHistogram/4
         , getHistogramParameterfv/2
         , getHistogramParameteriv/2
         , getMinmax/4
         , getMinmaxParameterfv/2
         , getMinmaxParameteriv/2
         , histogram/4
         , minmax/3
         , resetHistogram/1
         , resetMinmax/1
         ]
       ).

%% GL_VERSION_1_3

-export( [ activeTexture/1
         , sampleCoverage/2
         , compressedTexImage3D/9
         , compressedTexImage2D/8
         , compressedTexImage1D/7
         , compressedTexSubImage3D/11
         , compressedTexSubImage2D/9
         , compressedTexSubImage1D/7
         , getCompressedTexImage/2
         ]
       ).

%% GL_VERSION_1_3_DEPRECATED

-export( [ clientActiveTexture/1
         , multiTexCoord1d/2
         , multiTexCoord1dv/2
         , multiTexCoord1f/2
         , multiTexCoord1fv/2
         , multiTexCoord1i/2
         , multiTexCoord1iv/2
         , multiTexCoord1s/2
         , multiTexCoord1sv/2
         , multiTexCoord2d/3
         , multiTexCoord2dv/2
         , multiTexCoord2f/3
         , multiTexCoord2fv/2
         , multiTexCoord2i/3
         , multiTexCoord2iv/2
         , multiTexCoord2s/3
         , multiTexCoord2sv/2
         , multiTexCoord3d/4
         , multiTexCoord3dv/2
         , multiTexCoord3f/4
         , multiTexCoord3fv/2
         , multiTexCoord3i/4
         , multiTexCoord3iv/2
         , multiTexCoord3s/4
         , multiTexCoord3sv/2
         , multiTexCoord4d/5
         , multiTexCoord4dv/2
         , multiTexCoord4f/5
         , multiTexCoord4fv/2
         , multiTexCoord4i/5
         , multiTexCoord4iv/2
         , multiTexCoord4s/5
         , multiTexCoord4sv/2
         , loadTransposeMatrixf/1
         , loadTransposeMatrixd/1
         , multTransposeMatrixf/1
         , multTransposeMatrixd/1
         ]
       ).

%% GL_VERSION_1_4

-export( [ blendFuncSeparate/4
         , multiDrawArrays/4
         , multiDrawElements/5
         , pointParameterf/2
         , pointParameterfv/2
         , pointParameteri/2
         , pointParameteriv/2
         ]
       ).

%% GL_VERSION_1_4_DEPRECATED

-export( [ fogCoordf/1
         , fogCoordfv/1
         , fogCoordd/1
         , fogCoorddv/1
         , fogCoordPointer/3
         , secondaryColor3b/3
         , secondaryColor3bv/1
         , secondaryColor3d/3
         , secondaryColor3dv/1
         , secondaryColor3f/3
         , secondaryColor3fv/1
         , secondaryColor3i/3
         , secondaryColor3iv/1
         , secondaryColor3s/3
         , secondaryColor3sv/1
         , secondaryColor3ub/3
         , secondaryColor3ubv/1
         , secondaryColor3ui/3
         , secondaryColor3uiv/1
         , secondaryColor3us/3
         , secondaryColor3usv/1
         , secondaryColorPointer/4
         , windowPos2d/2
         , windowPos2dv/1
         , windowPos2f/2
         , windowPos2fv/1
         , windowPos2i/2
         , windowPos2iv/1
         , windowPos2s/2
         , windowPos2sv/1
         , windowPos3d/3
         , windowPos3dv/1
         , windowPos3f/3
         , windowPos3fv/1
         , windowPos3i/3
         , windowPos3iv/1
         , windowPos3s/3
         , windowPos3sv/1
         ]
       ).

%% GL_VERSION_1_5

-export( [ genQueries/1
         , deleteQueries/2
         , isQuery/1
         , beginQuery/2
         , endQuery/1
         , getQueryiv/2
         , getQueryObjectiv/2
         , getQueryObjectuiv/2
         , bindBuffer/2
         , deleteBuffers/2
         , genBuffers/1
         , isBuffer/1
         , bufferData/4
         , bufferSubData/4
         , getBufferSubData/3
         , mapBuffer/2
         , unmapBuffer/1
         , getBufferParameteriv/2
         , getBufferPointerv/2
         ]
       ).

%% GL_VERSION_2_0

-export( [ blendEquationSeparate/2
         , drawBuffers/2
         , stencilOpSeparate/4
         , stencilFuncSeparate/4
         , stencilMaskSeparate/2
         , attachShader/2
         , bindAttribLocation/3
         , compileShader/1
         , createProgram/0
         , createShader/1
         , deleteProgram/1
         , deleteShader/1
         , detachShader/2
         , disableVertexAttribArray/1
         , enableVertexAttribArray/1
         , getActiveAttrib/3
         , getActiveUniform/3
         , getAttachedShaders/2
         , getAttribLocation/2
         , getProgramiv/2
         , getProgramInfoLog/2
         , getShaderiv/2
         , getShaderInfoLog/2
         , getShaderSource/2
         , getUniformLocation/2
         , getUniformfv/2
         , getUniformiv/2
         , getVertexAttribdv/2
         , getVertexAttribfv/2
         , getVertexAttribiv/2
         , getVertexAttribPointerv/2
         , isProgram/1
         , isShader/1
         , linkProgram/1
         , shaderSource/4
         , useProgram/1
         , uniform1f/2
         , uniform2f/3
         , uniform3f/4
         , uniform4f/5
         , uniform1i/2
         , uniform2i/3
         , uniform3i/4
         , uniform4i/5
         , uniform1fv/3
         , uniform2fv/3
         , uniform3fv/3
         , uniform4fv/3
         , uniform1iv/3
         , uniform2iv/3
         , uniform3iv/3
         , uniform4iv/3
         , uniformMatrix2fv/4
         , uniformMatrix3fv/4
         , uniformMatrix4fv/4
         , validateProgram/1
         , vertexAttrib1d/2
         , vertexAttrib1dv/2
         , vertexAttrib1f/2
         , vertexAttrib1fv/2
         , vertexAttrib1s/2
         , vertexAttrib1sv/2
         , vertexAttrib2d/3
         , vertexAttrib2dv/2
         , vertexAttrib2f/3
         , vertexAttrib2fv/2
         , vertexAttrib2s/3
         , vertexAttrib2sv/2
         , vertexAttrib3d/4
         , vertexAttrib3dv/2
         , vertexAttrib3f/4
         , vertexAttrib3fv/2
         , vertexAttrib3s/4
         , vertexAttrib3sv/2
         , vertexAttrib4Nbv/2
         , vertexAttrib4Niv/2
         , vertexAttrib4Nsv/2
         , vertexAttrib4Nub/5
         , vertexAttrib4Nubv/2
         , vertexAttrib4Nuiv/2
         , vertexAttrib4Nusv/2
         , vertexAttrib4bv/2
         , vertexAttrib4d/5
         , vertexAttrib4dv/2
         , vertexAttrib4f/5
         , vertexAttrib4fv/2
         , vertexAttrib4iv/2
         , vertexAttrib4s/5
         , vertexAttrib4sv/2
         , vertexAttrib4ubv/2
         , vertexAttrib4uiv/2
         , vertexAttrib4usv/2
         , vertexAttribPointer/6
         ]
       ).

%% GL_VERSION_2_1

-export( [ uniformMatrix2x3fv/4
         , uniformMatrix3x2fv/4
         , uniformMatrix2x4fv/4
         , uniformMatrix4x2fv/4
         , uniformMatrix3x4fv/4
         , uniformMatrix4x3fv/4
         ]
       ).

%% GL_VERSION_3_0

-export( [ colorMaski/5
         , getBooleaniV/2
         , getIntegeriV/2
         , enablei/2
         , disablei/2
         , isEnabledi/2
         , beginTransformFeedback/1
         , endTransformFeedback/0
         , bindBufferRange/5
         , bindBufferBase/3
         , transformFeedbackVaryings/4
         , getTransformFeedbackVarying/3
         , clampColor/2
         , beginConditionalRender/2
         , endConditionalRender/0
         , vertexAttribIPointer/5
         , getVertexAttribIiv/2
         , getVertexAttribIuiv/2
         , vertexAttribI1i/2
         , vertexAttribI2i/3
         , vertexAttribI3i/4
         , vertexAttribI4i/5
         , vertexAttribI1ui/2
         , vertexAttribI2ui/3
         , vertexAttribI3ui/4
         , vertexAttribI4ui/5
         , vertexAttribI1iv/2
         , vertexAttribI2iv/2
         , vertexAttribI3iv/2
         , vertexAttribI4iv/2
         , vertexAttribI1uiv/2
         , vertexAttribI2uiv/2
         , vertexAttribI3uiv/2
         , vertexAttribI4uiv/2
         , vertexAttribI4bv/2
         , vertexAttribI4sv/2
         , vertexAttribI4ubv/2
         , vertexAttribI4usv/2
         , getUniformuiv/2
         , bindFragDataLocation/3
         , getFragDataLocation/2
         , uniform1ui/2
         , uniform2ui/3
         , uniform3ui/4
         , uniform4ui/5
         , uniform1uiv/3
         , uniform2uiv/3
         , uniform3uiv/3
         , uniform4uiv/3
         , texParameterIiv/3
         , texParameterIuiv/3
         , getTexParameterIiv/2
         , getTexParameterIuiv/2
         , clearBufferiv/3
         , clearBufferuiv/3
         , clearBufferfv/3
         , clearBufferfi/4
         , getStringi/2
         ]
       ).

%% GL_VERSION_3_1

-export( [ drawArraysInstanced/4
         , drawElementsInstanced/5
         , texBuffer/3
         , primitiveRestartIndex/1
         ]
       ).

%% GL_VERSION_3_2

-export( [ getInteger64iV/2
         , getBufferParameteri64v/2
         , framebufferTexture/4
         ]
       ).

%% GL_VERSION_3_3

-export( [ vertexAttribDivisor/2
         ]
       ).

%% GL_VERSION_4_0

-export( [ minSampleShading/1
         , blendEquationi/2
         , blendEquationSeparatei/3
         , blendFunci/3
         , blendFuncSeparatei/5
         ]
       ).

%% GL_VERSION_4_1

%% GL_VERSION_4_2

%% GL_ARB_multitexture

-export( [ activeTextureARB/1
         , clientActiveTextureARB/1
         , multiTexCoord1dARB/2
         , multiTexCoord1dvARB/2
         , multiTexCoord1fARB/2
         , multiTexCoord1fvARB/2
         , multiTexCoord1iARB/2
         , multiTexCoord1ivARB/2
         , multiTexCoord1sARB/2
         , multiTexCoord1svARB/2
         , multiTexCoord2dARB/3
         , multiTexCoord2dvARB/2
         , multiTexCoord2fARB/3
         , multiTexCoord2fvARB/2
         , multiTexCoord2iARB/3
         , multiTexCoord2ivARB/2
         , multiTexCoord2sARB/3
         , multiTexCoord2svARB/2
         , multiTexCoord3dARB/4
         , multiTexCoord3dvARB/2
         , multiTexCoord3fARB/4
         , multiTexCoord3fvARB/2
         , multiTexCoord3iARB/4
         , multiTexCoord3ivARB/2
         , multiTexCoord3sARB/4
         , multiTexCoord3svARB/2
         , multiTexCoord4dARB/5
         , multiTexCoord4dvARB/2
         , multiTexCoord4fARB/5
         , multiTexCoord4fvARB/2
         , multiTexCoord4iARB/5
         , multiTexCoord4ivARB/2
         , multiTexCoord4sARB/5
         , multiTexCoord4svARB/2
         ]
       ).

%% GL_ARB_transpose_matrix

-export( [ loadTransposeMatrixfARB/1
         , loadTransposeMatrixdARB/1
         , multTransposeMatrixfARB/1
         , multTransposeMatrixdARB/1
         ]
       ).

%% GL_ARB_multisample

-export( [ sampleCoverageARB/2
         ]
       ).

%% GL_ARB_texture_env_add

%% GL_ARB_texture_cube_map

%% GL_ARB_texture_compression

-export( [ compressedTexImage3DARB/9
         , compressedTexImage2DARB/8
         , compressedTexImage1DARB/7
         , compressedTexSubImage3DARB/11
         , compressedTexSubImage2DARB/9
         , compressedTexSubImage1DARB/7
         , getCompressedTexImageARB/2
         ]
       ).

%% GL_ARB_texture_border_clamp

%% GL_ARB_point_parameters

-export( [ pointParameterfARB/2
         , pointParameterfvARB/2
         ]
       ).

%% GL_ARB_vertex_blend

-export( [ weightbvARB/2
         , weightsvARB/2
         , weightivARB/2
         , weightfvARB/2
         , weightdvARB/2
         , weightubvARB/2
         , weightusvARB/2
         , weightuivARB/2
         , weightPointerARB/4
         , vertexBlendARB/1
         ]
       ).

%% GL_ARB_matrix_palette

-export( [ currentPaletteMatrixARB/1
         , matrixIndexubvARB/2
         , matrixIndexusvARB/2
         , matrixIndexuivARB/2
         , matrixIndexPointerARB/4
         ]
       ).

%% GL_ARB_texture_env_combine

%% GL_ARB_texture_env_crossbar

%% GL_ARB_texture_env_dot3

%% GL_ARB_texture_mirrored_repeat

%% GL_ARB_depth_texture

%% GL_ARB_shadow

%% GL_ARB_shadow_ambient

%% GL_ARB_window_pos

-export( [ windowPos2dARB/2
         , windowPos2dvARB/1
         , windowPos2fARB/2
         , windowPos2fvARB/1
         , windowPos2iARB/2
         , windowPos2ivARB/1
         , windowPos2sARB/2
         , windowPos2svARB/1
         , windowPos3dARB/3
         , windowPos3dvARB/1
         , windowPos3fARB/3
         , windowPos3fvARB/1
         , windowPos3iARB/3
         , windowPos3ivARB/1
         , windowPos3sARB/3
         , windowPos3svARB/1
         ]
       ).

%% GL_ARB_vertex_program

-export( [ vertexAttrib1dARB/2
         , vertexAttrib1dvARB/2
         , vertexAttrib1fARB/2
         , vertexAttrib1fvARB/2
         , vertexAttrib1sARB/2
         , vertexAttrib1svARB/2
         , vertexAttrib2dARB/3
         , vertexAttrib2dvARB/2
         , vertexAttrib2fARB/3
         , vertexAttrib2fvARB/2
         , vertexAttrib2sARB/3
         , vertexAttrib2svARB/2
         , vertexAttrib3dARB/4
         , vertexAttrib3dvARB/2
         , vertexAttrib3fARB/4
         , vertexAttrib3fvARB/2
         , vertexAttrib3sARB/4
         , vertexAttrib3svARB/2
         , vertexAttrib4NbvARB/2
         , vertexAttrib4NivARB/2
         , vertexAttrib4NsvARB/2
         , vertexAttrib4NubARB/5
         , vertexAttrib4NubvARB/2
         , vertexAttrib4NuivARB/2
         , vertexAttrib4NusvARB/2
         , vertexAttrib4bvARB/2
         , vertexAttrib4dARB/5
         , vertexAttrib4dvARB/2
         , vertexAttrib4fARB/5
         , vertexAttrib4fvARB/2
         , vertexAttrib4ivARB/2
         , vertexAttrib4sARB/5
         , vertexAttrib4svARB/2
         , vertexAttrib4ubvARB/2
         , vertexAttrib4uivARB/2
         , vertexAttrib4usvARB/2
         , vertexAttribPointerARB/6
         , enableVertexAttribArrayARB/1
         , disableVertexAttribArrayARB/1
         , programStringARB/4
         , bindProgramARB/2
         , deleteProgramsARB/2
         , genProgramsARB/1
         , programEnvParameter4dARB/6
         , programEnvParameter4dvARB/3
         , programEnvParameter4fARB/6
         , programEnvParameter4fvARB/3
         , programLocalParameter4dARB/6
         , programLocalParameter4dvARB/3
         , programLocalParameter4fARB/6
         , programLocalParameter4fvARB/3
         , getProgramEnvParameterdvARB/2
         , getProgramEnvParameterfvARB/2
         , getProgramLocalParameterdvARB/2
         , getProgramLocalParameterfvARB/2
         , getProgramivARB/2
         , getProgramStringARB/2
         , getVertexAttribdvARB/2
         , getVertexAttribfvARB/2
         , getVertexAttribivARB/2
         , getVertexAttribPointervARB/2
         , isProgramARB/1
         ]
       ).

%% GL_ARB_fragment_program

%% GL_ARB_vertex_buffer_object

-export( [ bindBufferARB/2
         , deleteBuffersARB/2
         , genBuffersARB/1
         , isBufferARB/1
         , bufferDataARB/4
         , bufferSubDataARB/4
         , getBufferSubDataARB/3
         , mapBufferARB/2
         , unmapBufferARB/1
         , getBufferParameterivARB/2
         , getBufferPointervARB/2
         ]
       ).

%% GL_ARB_occlusion_query

-export( [ genQueriesARB/1
         , deleteQueriesARB/2
         , isQueryARB/1
         , beginQueryARB/2
         , endQueryARB/1
         , getQueryivARB/2
         , getQueryObjectivARB/2
         , getQueryObjectuivARB/2
         ]
       ).

%% GL_ARB_shader_objects

-export( [ deleteObjectARB/1
         , getHandleARB/1
         , detachObjectARB/2
         , createShaderObjectARB/1
         , shaderSourceARB/4
         , compileShaderARB/1
         , createProgramObjectARB/0
         , attachObjectARB/2
         , linkProgramARB/1
         , useProgramObjectARB/1
         , validateProgramARB/1
         , uniform1fARB/2
         , uniform2fARB/3
         , uniform3fARB/4
         , uniform4fARB/5
         , uniform1iARB/2
         , uniform2iARB/3
         , uniform3iARB/4
         , uniform4iARB/5
         , uniform1fvARB/3
         , uniform2fvARB/3
         , uniform3fvARB/3
         , uniform4fvARB/3
         , uniform1ivARB/3
         , uniform2ivARB/3
         , uniform3ivARB/3
         , uniform4ivARB/3
         , uniformMatrix2fvARB/4
         , uniformMatrix3fvARB/4
         , uniformMatrix4fvARB/4
         , getObjectParameterfvARB/2
         , getObjectParameterivARB/2
         , getInfoLogARB/2
         , getAttachedObjectsARB/2
         , getUniformLocationARB/2
         , getActiveUniformARB/3
         , getUniformfvARB/2
         , getUniformivARB/2
         , getShaderSourceARB/2
         ]
       ).

%% GL_ARB_vertex_shader

-export( [ bindAttribLocationARB/3
         , getActiveAttribARB/3
         , getAttribLocationARB/2
         ]
       ).

%% GL_ARB_fragment_shader

%% GL_ARB_shading_language_100

%% GL_ARB_texture_non_power_of_two

%% GL_ARB_point_sprite

%% GL_ARB_fragment_program_shadow

%% GL_ARB_draw_buffers

-export( [ drawBuffersARB/2
         ]
       ).

%% GL_ARB_texture_rectangle

%% GL_ARB_color_buffer_float

-export( [ clampColorARB/2
         ]
       ).

%% GL_ARB_half_float_pixel

%% GL_ARB_texture_float

%% GL_ARB_pixel_buffer_object

%% GL_ARB_depth_buffer_float

%% GL_ARB_draw_instanced

-export( [ drawArraysInstancedARB/4
         , drawElementsInstancedARB/5
         ]
       ).

%% GL_ARB_framebuffer_object

-export( [ isRenderbuffer/1
         , bindRenderbuffer/2
         , deleteRenderbuffers/2
         , genRenderbuffers/1
         , renderbufferStorage/4
         , getRenderbufferParameteriv/2
         , isFramebuffer/1
         , bindFramebuffer/2
         , deleteFramebuffers/2
         , genFramebuffers/1
         , checkFramebufferStatus/1
         , framebufferTexture1D/5
         , framebufferTexture2D/5
         , framebufferTexture3D/6
         , framebufferRenderbuffer/4
         , getFramebufferAttachmentParameteriv/3
         , generateMipmap/1
         , blitFramebuffer/10
         , renderbufferStorageMultisample/5
         , framebufferTextureLayer/5
         ]
       ).

%% GL_ARB_framebuffer_sRGB

%% GL_ARB_geometry_shader4

-export( [ programParameteriARB/3
         , framebufferTextureARB/4
         , framebufferTextureLayerARB/5
         , framebufferTextureFaceARB/5
         ]
       ).

%% GL_ARB_half_float_vertex

%% GL_ARB_instanced_arrays

-export( [ vertexAttribDivisorARB/2
         ]
       ).

%% GL_ARB_map_buffer_range

-export( [ mapBufferRange/4
         , flushMappedBufferRange/3
         ]
       ).

%% GL_ARB_texture_buffer_object

-export( [ texBufferARB/3
         ]
       ).

%% GL_ARB_texture_compression_rgtc

%% GL_ARB_texture_rg

%% GL_ARB_vertex_array_object

-export( [ bindVertexArray/1
         , deleteVertexArrays/2
         , genVertexArrays/1
         , isVertexArray/1
         ]
       ).

%% GL_ARB_uniform_buffer_object

-export( [ getUniformIndices/3
         , getActiveUniformsiv/4
         , getActiveUniformName/3
         , getUniformBlockIndex/2
         , getActiveUniformBlockiv/3
         , getActiveUniformBlockName/3
         , uniformBlockBinding/3
         ]
       ).

%% GL_ARB_compatibility

%% GL_ARB_copy_buffer

-export( [ copyBufferSubData/5
         ]
       ).

%% GL_ARB_shader_texture_lod

%% GL_ARB_depth_clamp

%% GL_ARB_draw_elements_base_vertex

-export( [ drawElementsBaseVertex/5
         , drawRangeElementsBaseVertex/7
         , drawElementsInstancedBaseVertex/6
         , multiDrawElementsBaseVertex/6
         ]
       ).

%% GL_ARB_fragment_coord_conventions

%% GL_ARB_provoking_vertex

-export( [ provokingVertex/1
         ]
       ).

%% GL_ARB_seamless_cube_map

%% GL_ARB_sync

-export( [ fenceSync/2
         , isSync/1
         , deleteSync/1
         , clientWaitSync/3
         , waitSync/3
         , getInteger64v/1
         , getSynciv/3
         ]
       ).

%% GL_ARB_texture_multisample

-export( [ texImage2DMultisample/6
         , texImage3DMultisample/7
         , getMultisamplefv/2
         , sampleMaski/2
         ]
       ).

%% GL_ARB_vertex_array_bgra

%% GL_ARB_draw_buffers_blend

-export( [ blendEquationiARB/2
         , blendEquationSeparateiARB/3
         , blendFunciARB/3
         , blendFuncSeparateiARB/5
         ]
       ).

%% GL_ARB_sample_shading

-export( [ minSampleShadingARB/1
         ]
       ).

%% GL_ARB_texture_cube_map_array

%% GL_ARB_texture_gather

%% GL_ARB_texture_query_lod

%% GL_ARB_shading_language_include

-export( [ namedStringARB/5
         , deleteNamedStringARB/2
         , compileShaderIncludeARB/4
         , isNamedStringARB/2
         , getNamedStringARB/3
         , getNamedStringivARB/3
         ]
       ).

%% GL_ARB_texture_compression_bptc

%% GL_ARB_blend_func_extended

-export( [ bindFragDataLocationIndexed/4
         , getFragDataIndex/2
         ]
       ).

%% GL_ARB_explicit_attrib_location

%% GL_ARB_occlusion_query2

%% GL_ARB_sampler_objects

-export( [ genSamplers/1
         , deleteSamplers/2
         , isSampler/1
         , bindSampler/2
         , samplerParameteri/3
         , samplerParameteriv/3
         , samplerParameterf/3
         , samplerParameterfv/3
         , samplerParameterIiv/3
         , samplerParameterIuiv/3
         , getSamplerParameteriv/2
         , getSamplerParameterIiv/2
         , getSamplerParameterfv/2
         , getSamplerParameterIuiv/2
         ]
       ).

%% GL_ARB_shader_bit_encoding

%% GL_ARB_texture_rgb10_a2ui

%% GL_ARB_texture_swizzle

%% GL_ARB_timer_query

-export( [ queryCounter/2
         , getQueryObjecti64v/2
         , getQueryObjectui64v/2
         ]
       ).

%% GL_ARB_vertex_type_2_10_10_10_rev

-export( [ vertexP2ui/2
         , vertexP2uiv/2
         , vertexP3ui/2
         , vertexP3uiv/2
         , vertexP4ui/2
         , vertexP4uiv/2
         , texCoordP1ui/2
         , texCoordP1uiv/2
         , texCoordP2ui/2
         , texCoordP2uiv/2
         , texCoordP3ui/2
         , texCoordP3uiv/2
         , texCoordP4ui/2
         , texCoordP4uiv/2
         , multiTexCoordP1ui/3
         , multiTexCoordP1uiv/3
         , multiTexCoordP2ui/3
         , multiTexCoordP2uiv/3
         , multiTexCoordP3ui/3
         , multiTexCoordP3uiv/3
         , multiTexCoordP4ui/3
         , multiTexCoordP4uiv/3
         , normalP3ui/2
         , normalP3uiv/2
         , colorP3ui/2
         , colorP3uiv/2
         , colorP4ui/2
         , colorP4uiv/2
         , secondaryColorP3ui/2
         , secondaryColorP3uiv/2
         , vertexAttribP1ui/4
         , vertexAttribP1uiv/4
         , vertexAttribP2ui/4
         , vertexAttribP2uiv/4
         , vertexAttribP3ui/4
         , vertexAttribP3uiv/4
         , vertexAttribP4ui/4
         , vertexAttribP4uiv/4
         ]
       ).

%% GL_ARB_draw_indirect

-export( [ drawArraysIndirect/2
         , drawElementsIndirect/3
         ]
       ).

%% GL_ARB_gpu_shader5

%% GL_ARB_gpu_shader_fp64

-export( [ uniform1d/2
         , uniform2d/3
         , uniform3d/4
         , uniform4d/5
         , uniform1dv/3
         , uniform2dv/3
         , uniform3dv/3
         , uniform4dv/3
         , uniformMatrix2dv/4
         , uniformMatrix3dv/4
         , uniformMatrix4dv/4
         , uniformMatrix2x3dv/4
         , uniformMatrix2x4dv/4
         , uniformMatrix3x2dv/4
         , uniformMatrix3x4dv/4
         , uniformMatrix4x2dv/4
         , uniformMatrix4x3dv/4
         , getUniformdv/2
         ]
       ).

%% GL_ARB_shader_subroutine

-export( [ getSubroutineUniformLocation/3
         , getSubroutineIndex/3
         , getActiveSubroutineUniformiv/4
         , getActiveSubroutineUniformName/4
         , getActiveSubroutineName/4
         , uniformSubroutinesuiv/3
         , getUniformSubroutineuiv/2
         , getProgramStageiv/3
         ]
       ).

%% GL_ARB_tessellation_shader

-export( [ patchParameteri/2
         , patchParameterfv/2
         ]
       ).

%% GL_ARB_texture_buffer_object_rgb32

%% GL_ARB_transform_feedback2

-export( [ bindTransformFeedback/2
         , deleteTransformFeedbacks/2
         , genTransformFeedbacks/1
         , isTransformFeedback/1
         , pauseTransformFeedback/0
         , resumeTransformFeedback/0
         , drawTransformFeedback/2
         ]
       ).

%% GL_ARB_transform_feedback3

-export( [ drawTransformFeedbackStream/3
         , beginQueryIndexed/3
         , endQueryIndexed/2
         , getQueryIndexediv/3
         ]
       ).

%% GL_ARB_ES2_compatibility

-export( [ releaseShaderCompiler/0
         , shaderBinary/5
         , getShaderPrecisionFormat/2
         , depthRangef/2
         , clearDepthf/1
         ]
       ).

%% GL_ARB_get_program_binary

-export( [ getProgramBinary/2
         , programBinary/4
         , programParameteri/3
         ]
       ).

%% GL_ARB_separate_shader_objects

-export( [ useProgramStages/3
         , activeShaderProgram/2
         , createShaderProgramv/3
         , bindProgramPipeline/1
         , deleteProgramPipelines/2
         , genProgramPipelines/1
         , isProgramPipeline/1
         , getProgramPipelineiv/2
         , programUniform1i/3
         , programUniform1iv/4
         , programUniform1f/3
         , programUniform1fv/4
         , programUniform1d/3
         , programUniform1dv/4
         , programUniform1ui/3
         , programUniform1uiv/4
         , programUniform2i/4
         , programUniform2iv/4
         , programUniform2f/4
         , programUniform2fv/4
         , programUniform2d/4
         , programUniform2dv/4
         , programUniform2ui/4
         , programUniform2uiv/4
         , programUniform3i/5
         , programUniform3iv/4
         , programUniform3f/5
         , programUniform3fv/4
         , programUniform3d/5
         , programUniform3dv/4
         , programUniform3ui/5
         , programUniform3uiv/4
         , programUniform4i/6
         , programUniform4iv/4
         , programUniform4f/6
         , programUniform4fv/4
         , programUniform4d/6
         , programUniform4dv/4
         , programUniform4ui/6
         , programUniform4uiv/4
         , programUniformMatrix2fv/5
         , programUniformMatrix3fv/5
         , programUniformMatrix4fv/5
         , programUniformMatrix2dv/5
         , programUniformMatrix3dv/5
         , programUniformMatrix4dv/5
         , programUniformMatrix2x3fv/5
         , programUniformMatrix3x2fv/5
         , programUniformMatrix2x4fv/5
         , programUniformMatrix4x2fv/5
         , programUniformMatrix3x4fv/5
         , programUniformMatrix4x3fv/5
         , programUniformMatrix2x3dv/5
         , programUniformMatrix3x2dv/5
         , programUniformMatrix2x4dv/5
         , programUniformMatrix4x2dv/5
         , programUniformMatrix3x4dv/5
         , programUniformMatrix4x3dv/5
         , validateProgramPipeline/1
         , getProgramPipelineInfoLog/2
         ]
       ).

%% GL_ARB_vertex_attrib_64bit

-export( [ vertexAttribL1d/2
         , vertexAttribL2d/3
         , vertexAttribL3d/4
         , vertexAttribL4d/5
         , vertexAttribL1dv/2
         , vertexAttribL2dv/2
         , vertexAttribL3dv/2
         , vertexAttribL4dv/2
         , vertexAttribLPointer/5
         , getVertexAttribLdv/2
         ]
       ).

%% GL_ARB_viewport_array

-export( [ viewportArrayv/3
         , viewportIndexedf/5
         , viewportIndexedfv/2
         , scissorArrayv/3
         , scissorIndexed/5
         , scissorIndexedv/2
         , depthRangeArrayv/3
         , depthRangeIndexed/3
         , getFloatiV/2
         , getDoubleiV/2
         ]
       ).

%% GL_ARB_cl_event

-export( [ createSyncFromCLeventARB/3
         ]
       ).

%% GL_ARB_debug_output

-export( [ debugMessageControlARB/6
         , debugMessageInsertARB/6
         , debugMessageCallbackARB/2
         , getDebugMessageLogARB/8
         ]
       ).

%% GL_ARB_robustness

-export( [ getGraphicsResetStatusARB/0
         , getnMapdvARB/3
         , getnMapfvARB/3
         , getnMapivARB/3
         , getnPixelMapfvARB/2
         , getnPixelMapuivARB/2
         , getnPixelMapusvARB/2
         , getnPolygonStippleARB/1
         , getnColorTableARB/4
         , getnConvolutionFilterARB/4
         , getnSeparableFilterARB/6
         , getnHistogramARB/5
         , getnMinmaxARB/5
         , getnTexImageARB/5
         , readnPixelsARB/8
         , getnCompressedTexImageARB/3
         , getnUniformfvARB/3
         , getnUniformivARB/3
         , getnUniformuivARB/3
         , getnUniformdvARB/3
         ]
       ).

%% GL_ARB_shader_stencil_export

%% GL_ARB_base_instance

-export( [ drawArraysInstancedBaseInstance/5
         , drawElementsInstancedBaseInstance/6
         , drawElementsInstancedBaseVertexBaseInstance/7
         ]
       ).

%% GL_ARB_shading_language_420pack

%% GL_ARB_transform_feedback_instanced

-export( [ drawTransformFeedbackInstanced/3
         , drawTransformFeedbackStreamInstanced/4
         ]
       ).

%% GL_ARB_compressed_texture_pixel_storage

%% GL_ARB_conservative_depth

%% GL_ARB_internalformat_query

-export( [ getInternalformativ/4
         ]
       ).

%% GL_ARB_map_buffer_alignment

%% GL_ARB_shader_atomic_counters

-export( [ getActiveAtomicCounterBufferiv/3
         ]
       ).

%% GL_ARB_shader_image_load_store

-export( [ bindImageTexture/7
         , memoryBarrier/1
         ]
       ).

%% GL_ARB_shading_language_packing

%% GL_ARB_texture_storage

-export( [ texStorage1D/4
         , texStorage2D/5
         , texStorage3D/6
         , textureStorage1DEXT/5
         , textureStorage2DEXT/6
         , textureStorage3DEXT/7
         ]
       ).

%% GL_EXT_abgr

%% GL_EXT_blend_color

-export( [ blendColorEXT/4
         ]
       ).

%% GL_EXT_polygon_offset

-export( [ polygonOffsetEXT/2
         ]
       ).

%% GL_EXT_texture

%% GL_EXT_texture3D

-export( [ texImage3DEXT/10
         , texSubImage3DEXT/11
         ]
       ).

%% GL_SGIS_texture_filter4

-export( [ getTexFilterFuncSGIS/2
         , texFilterFuncSGIS/4
         ]
       ).

%% GL_EXT_subtexture

-export( [ texSubImage1DEXT/7
         , texSubImage2DEXT/9
         ]
       ).

%% GL_EXT_copy_texture

-export( [ copyTexImage1DEXT/7
         , copyTexImage2DEXT/8
         , copyTexSubImage1DEXT/6
         , copyTexSubImage2DEXT/8
         , copyTexSubImage3DEXT/9
         ]
       ).

%% GL_EXT_histogram

-export( [ getHistogramEXT/4
         , getHistogramParameterfvEXT/2
         , getHistogramParameterivEXT/2
         , getMinmaxEXT/4
         , getMinmaxParameterfvEXT/2
         , getMinmaxParameterivEXT/2
         , histogramEXT/4
         , minmaxEXT/3
         , resetHistogramEXT/1
         , resetMinmaxEXT/1
         ]
       ).

%% GL_EXT_convolution

-export( [ convolutionFilter1DEXT/6
         , convolutionFilter2DEXT/7
         , convolutionParameterfEXT/3
         , convolutionParameterfvEXT/3
         , convolutionParameteriEXT/3
         , convolutionParameterivEXT/3
         , copyConvolutionFilter1DEXT/5
         , copyConvolutionFilter2DEXT/6
         , getConvolutionFilterEXT/3
         , getConvolutionParameterfvEXT/2
         , getConvolutionParameterivEXT/2
         , getSeparableFilterEXT/3
         , separableFilter2DEXT/8
         ]
       ).

%% GL_EXT_color_matrix

%% GL_SGI_color_matrix

%% GL_SGI_color_table

-export( [ colorTableSGI/6
         , colorTableParameterfvSGI/3
         , colorTableParameterivSGI/3
         , copyColorTableSGI/5
         , getColorTableSGI/3
         , getColorTableParameterfvSGI/2
         , getColorTableParameterivSGI/2
         ]
       ).

%% GL_SGIX_pixel_texture

-export( [ pixelTexGenSGIX/1
         ]
       ).

%% GL_SGIS_pixel_texture

-export( [ pixelTexGenParameteriSGIS/2
         , pixelTexGenParameterivSGIS/2
         , pixelTexGenParameterfSGIS/2
         , pixelTexGenParameterfvSGIS/2
         , getPixelTexGenParameterivSGIS/1
         , getPixelTexGenParameterfvSGIS/1
         ]
       ).

%% GL_SGIS_texture4D

-export( [ texImage4DSGIS/11
         , texSubImage4DSGIS/13
         ]
       ).

%% GL_SGI_texture_color_table

%% GL_EXT_cmyka

%% GL_EXT_texture_object

-export( [ areTexturesResidentEXT/3
         , bindTextureEXT/2
         , deleteTexturesEXT/2
         , genTexturesEXT/1
         , isTextureEXT/1
         , prioritizeTexturesEXT/3
         ]
       ).

%% GL_SGIS_detail_texture

-export( [ detailTexFuncSGIS/3
         , getDetailTexFuncSGIS/1
         ]
       ).

%% GL_SGIS_sharpen_texture

-export( [ sharpenTexFuncSGIS/3
         , getSharpenTexFuncSGIS/1
         ]
       ).

%% GL_EXT_packed_pixels

%% GL_SGIS_texture_lod

%% GL_SGIS_multisample

-export( [ sampleMaskSGIS/2
         , samplePatternSGIS/1
         ]
       ).

%% GL_EXT_rescale_normal

%% GL_EXT_vertex_array

-export( [ arrayElementEXT/1
         , colorPointerEXT/5
         , drawArraysEXT/3
         , edgeFlagPointerEXT/3
         , getPointervEXT/1
         , indexPointerEXT/4
         , normalPointerEXT/4
         , texCoordPointerEXT/5
         , vertexPointerEXT/5
         ]
       ).

%% GL_EXT_misc_attribute

%% GL_SGIS_generate_mipmap

%% GL_SGIX_clipmap

%% GL_SGIX_shadow

%% GL_SGIS_texture_edge_clamp

%% GL_SGIS_texture_border_clamp

%% GL_EXT_blend_minmax

-export( [ blendEquationEXT/1
         ]
       ).

%% GL_EXT_blend_subtract

%% GL_EXT_blend_logic_op

%% GL_SGIX_interlace

%% GL_SGIX_pixel_tiles

%% GL_SGIX_texture_select

%% GL_SGIX_sprite

-export( [ spriteParameterfSGIX/2
         , spriteParameterfvSGIX/2
         , spriteParameteriSGIX/2
         , spriteParameterivSGIX/2
         ]
       ).

%% GL_SGIX_texture_multi_buffer

%% GL_EXT_point_parameters

-export( [ pointParameterfEXT/2
         , pointParameterfvEXT/2
         ]
       ).

%% GL_SGIS_point_parameters

-export( [ pointParameterfSGIS/2
         , pointParameterfvSGIS/2
         ]
       ).

%% GL_SGIX_instruments

-export( [ getInstrumentsSGIX/0
         , instrumentsBufferSGIX/2
         , pollInstrumentsSGIX/1
         , readInstrumentsSGIX/1
         , startInstrumentsSGIX/0
         , stopInstrumentsSGIX/1
         ]
       ).

%% GL_SGIX_texture_scale_bias

%% GL_SGIX_framezoom

-export( [ frameZoomSGIX/1
         ]
       ).

%% GL_SGIX_tag_sample_buffer

-export( [ tagSampleBufferSGIX/0
         ]
       ).

%% GL_SGIX_polynomial_ffd

-export( [ deformationMap3dSGIX/14
         , deformationMap3fSGIX/14
         , deformSGIX/1
         , loadIdentityDeformationMapSGIX/1
         ]
       ).

%% GL_SGIX_reference_plane

-export( [ referencePlaneSGIX/1
         ]
       ).

%% GL_SGIX_flush_raster

-export( [ flushRasterSGIX/0
         ]
       ).

%% GL_SGIX_depth_texture

%% GL_SGIS_fog_function

-export( [ fogFuncSGIS/2
         , getFogFuncSGIS/0
         ]
       ).

%% GL_SGIX_fog_offset

%% GL_HP_image_transform

-export( [ imageTransformParameteriHP/3
         , imageTransformParameterfHP/3
         , imageTransformParameterivHP/3
         , imageTransformParameterfvHP/3
         , getImageTransformParameterivHP/2
         , getImageTransformParameterfvHP/2
         ]
       ).

%% GL_HP_convolution_border_modes

%% GL_SGIX_texture_add_env

%% GL_EXT_color_subtable

-export( [ colorSubTableEXT/6
         , copyColorSubTableEXT/5
         ]
       ).

%% GL_PGI_vertex_hints

%% GL_PGI_misc_hints

-export( [ hintPGI/2
         ]
       ).

%% GL_EXT_paletted_texture

-export( [ colorTableEXT/6
         , getColorTableEXT/3
         , getColorTableParameterivEXT/2
         , getColorTableParameterfvEXT/2
         ]
       ).

%% GL_EXT_clip_volume_hint

%% GL_SGIX_list_priority

-export( [ getListParameterfvSGIX/2
         , getListParameterivSGIX/2
         , listParameterfSGIX/3
         , listParameterfvSGIX/3
         , listParameteriSGIX/3
         , listParameterivSGIX/3
         ]
       ).

%% GL_SGIX_ir_instrument1

%% GL_SGIX_calligraphic_fragment

%% GL_SGIX_texture_lod_bias

%% GL_SGIX_shadow_ambient

%% GL_EXT_index_texture

%% GL_EXT_index_material

-export( [ indexMaterialEXT/2
         ]
       ).

%% GL_EXT_index_func

-export( [ indexFuncEXT/2
         ]
       ).

%% GL_EXT_index_array_formats

%% GL_EXT_compiled_vertex_array

-export( [ lockArraysEXT/2
         , unlockArraysEXT/0
         ]
       ).

%% GL_EXT_cull_vertex

-export( [ cullParameterdvEXT/2
         , cullParameterfvEXT/2
         ]
       ).

%% GL_SGIX_ycrcb

%% GL_SGIX_fragment_lighting

-export( [ fragmentColorMaterialSGIX/2
         , fragmentLightfSGIX/3
         , fragmentLightfvSGIX/3
         , fragmentLightiSGIX/3
         , fragmentLightivSGIX/3
         , fragmentLightModelfSGIX/2
         , fragmentLightModelfvSGIX/2
         , fragmentLightModeliSGIX/2
         , fragmentLightModelivSGIX/2
         , fragmentMaterialfSGIX/3
         , fragmentMaterialfvSGIX/3
         , fragmentMaterialiSGIX/3
         , fragmentMaterialivSGIX/3
         , getFragmentLightfvSGIX/2
         , getFragmentLightivSGIX/2
         , getFragmentMaterialfvSGIX/2
         , getFragmentMaterialivSGIX/2
         , lightEnviSGIX/2
         ]
       ).

%% GL_IBM_rasterpos_clip

%% GL_HP_texture_lighting

%% GL_EXT_draw_range_elements

-export( [ drawRangeElementsEXT/6
         ]
       ).

%% GL_WIN_phong_shading

%% GL_WIN_specular_fog

%% GL_EXT_light_texture

-export( [ applyTextureEXT/1
         , textureLightEXT/1
         , textureMaterialEXT/2
         ]
       ).

%% GL_SGIX_blend_alpha_minmax

%% GL_EXT_bgra

%% GL_SGIX_async

-export( [ asyncMarkerSGIX/1
         , finishAsyncSGIX/1
         , pollAsyncSGIX/1
         , genAsyncMarkersSGIX/1
         , deleteAsyncMarkersSGIX/2
         , isAsyncMarkerSGIX/1
         ]
       ).

%% GL_SGIX_async_pixel

%% GL_SGIX_async_histogram

%% GL_INTEL_parallel_arrays

-export( [ vertexPointervINTEL/3
         , normalPointervINTEL/2
         , colorPointervINTEL/3
         , texCoordPointervINTEL/3
         ]
       ).

%% GL_HP_occlusion_test

%% GL_EXT_pixel_transform

-export( [ pixelTransformParameteriEXT/3
         , pixelTransformParameterfEXT/3
         , pixelTransformParameterivEXT/3
         , pixelTransformParameterfvEXT/3
         ]
       ).

%% GL_EXT_pixel_transform_color_table

%% GL_EXT_shared_texture_palette

%% GL_EXT_separate_specular_color

%% GL_EXT_secondary_color

-export( [ secondaryColor3bEXT/3
         , secondaryColor3bvEXT/1
         , secondaryColor3dEXT/3
         , secondaryColor3dvEXT/1
         , secondaryColor3fEXT/3
         , secondaryColor3fvEXT/1
         , secondaryColor3iEXT/3
         , secondaryColor3ivEXT/1
         , secondaryColor3sEXT/3
         , secondaryColor3svEXT/1
         , secondaryColor3ubEXT/3
         , secondaryColor3ubvEXT/1
         , secondaryColor3uiEXT/3
         , secondaryColor3uivEXT/1
         , secondaryColor3usEXT/3
         , secondaryColor3usvEXT/1
         , secondaryColorPointerEXT/4
         ]
       ).

%% GL_EXT_texture_perturb_normal

-export( [ textureNormalEXT/1
         ]
       ).

%% GL_EXT_multi_draw_arrays

-export( [ multiDrawArraysEXT/4
         , multiDrawElementsEXT/5
         ]
       ).

%% GL_EXT_fog_coord

-export( [ fogCoordfEXT/1
         , fogCoordfvEXT/1
         , fogCoorddEXT/1
         , fogCoorddvEXT/1
         , fogCoordPointerEXT/3
         ]
       ).

%% GL_REND_screen_coordinates

%% GL_EXT_coordinate_frame

-export( [ tangent3bEXT/3
         , tangent3bvEXT/1
         , tangent3dEXT/3
         , tangent3dvEXT/1
         , tangent3fEXT/3
         , tangent3fvEXT/1
         , tangent3iEXT/3
         , tangent3ivEXT/1
         , tangent3sEXT/3
         , tangent3svEXT/1
         , binormal3bEXT/3
         , binormal3bvEXT/1
         , binormal3dEXT/3
         , binormal3dvEXT/1
         , binormal3fEXT/3
         , binormal3fvEXT/1
         , binormal3iEXT/3
         , binormal3ivEXT/1
         , binormal3sEXT/3
         , binormal3svEXT/1
         , tangentPointerEXT/3
         , binormalPointerEXT/3
         ]
       ).

%% GL_EXT_texture_env_combine

%% GL_APPLE_specular_vector

%% GL_APPLE_transform_hint

%% GL_SGIX_fog_scale

%% GL_SUNX_constant_data

-export( [ finishTextureSUNX/0
         ]
       ).

%% GL_SUN_global_alpha

-export( [ globalAlphaFactorbSUN/1
         , globalAlphaFactorsSUN/1
         , globalAlphaFactoriSUN/1
         , globalAlphaFactorfSUN/1
         , globalAlphaFactordSUN/1
         , globalAlphaFactorubSUN/1
         , globalAlphaFactorusSUN/1
         , globalAlphaFactoruiSUN/1
         ]
       ).

%% GL_SUN_triangle_list

-export( [ replacementCodeuiSUN/1
         , replacementCodeusSUN/1
         , replacementCodeubSUN/1
         , replacementCodeuivSUN/1
         , replacementCodeusvSUN/1
         , replacementCodeubvSUN/1
         , replacementCodePointerSUN/3
         ]
       ).

%% GL_SUN_vertex

-export( [ color4ubVertex2fSUN/6
         , color4ubVertex2fvSUN/2
         , color4ubVertex3fSUN/7
         , color4ubVertex3fvSUN/2
         , color3fVertex3fSUN/6
         , color3fVertex3fvSUN/2
         , normal3fVertex3fSUN/6
         , normal3fVertex3fvSUN/2
         , color4fNormal3fVertex3fSUN/10
         , color4fNormal3fVertex3fvSUN/3
         , texCoord2fVertex3fSUN/5
         , texCoord2fVertex3fvSUN/2
         , texCoord4fVertex4fSUN/8
         , texCoord4fVertex4fvSUN/2
         , texCoord2fColor4ubVertex3fSUN/9
         , texCoord2fColor4ubVertex3fvSUN/3
         , texCoord2fColor3fVertex3fSUN/8
         , texCoord2fColor3fVertex3fvSUN/3
         , texCoord2fNormal3fVertex3fSUN/8
         , texCoord2fNormal3fVertex3fvSUN/3
         , texCoord2fColor4fNormal3fVertex3fSUN/12
         , texCoord2fColor4fNormal3fVertex3fvSUN/4
         , texCoord4fColor4fNormal3fVertex4fSUN/15
         , texCoord4fColor4fNormal3fVertex4fvSUN/4
         , replacementCodeuiVertex3fSUN/4
         , replacementCodeuiVertex3fvSUN/2
         , replacementCodeuiColor4ubVertex3fSUN/8
         , replacementCodeuiColor4ubVertex3fvSUN/3
         , replacementCodeuiColor3fVertex3fSUN/7
         , replacementCodeuiColor3fVertex3fvSUN/3
         , replacementCodeuiNormal3fVertex3fSUN/7
         , replacementCodeuiNormal3fVertex3fvSUN/3
         , replacementCodeuiColor4fNormal3fVertex3fSUN/11
         , replacementCodeuiColor4fNormal3fVertex3fvSUN/4
         , replacementCodeuiTexCoord2fVertex3fSUN/6
         , replacementCodeuiTexCoord2fVertex3fvSUN/3
         , replacementCodeuiTexCoord2fNormal3fVertex3fSUN/9
         , replacementCodeuiTexCoord2fNormal3fVertex3fvSUN/4
         , replacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN/13
         , replacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN/5
         ]
       ).

%% GL_EXT_blend_func_separate

-export( [ blendFuncSeparateEXT/4
         ]
       ).

%% GL_INGR_blend_func_separate

-export( [ blendFuncSeparateINGR/4
         ]
       ).

%% GL_INGR_color_clamp

%% GL_INGR_interlace_read

%% GL_EXT_stencil_wrap

%% GL_EXT_422_pixels

%% GL_NV_texgen_reflection

%% GL_SUN_convolution_border_modes

%% GL_EXT_texture_env_add

%% GL_EXT_texture_lod_bias

%% GL_EXT_texture_filter_anisotropic

%% GL_EXT_vertex_weighting

-export( [ vertexWeightfEXT/1
         , vertexWeightfvEXT/1
         , vertexWeightPointerEXT/4
         ]
       ).

%% GL_NV_light_max_exponent

%% GL_NV_vertex_array_range

-export( [ flushVertexArrayRangeNV/0
         , vertexArrayRangeNV/2
         ]
       ).

%% GL_NV_register_combiners

-export( [ combinerParameterfvNV/2
         , combinerParameterfNV/2
         , combinerParameterivNV/2
         , combinerParameteriNV/2
         , combinerInputNV/6
         , combinerOutputNV/10
         , finalCombinerInputNV/4
         , getCombinerInputParameterfvNV/4
         , getCombinerInputParameterivNV/4
         , getCombinerOutputParameterfvNV/3
         , getCombinerOutputParameterivNV/3
         , getFinalCombinerInputParameterfvNV/2
         , getFinalCombinerInputParameterivNV/2
         ]
       ).

%% GL_NV_fog_distance

%% GL_NV_texgen_emboss

%% GL_NV_blend_square

%% GL_NV_texture_env_combine4

%% GL_MESA_resize_buffers

-export( [ resizeBuffersMESA/0
         ]
       ).

%% GL_MESA_window_pos

-export( [ windowPos2dMESA/2
         , windowPos2dvMESA/1
         , windowPos2fMESA/2
         , windowPos2fvMESA/1
         , windowPos2iMESA/2
         , windowPos2ivMESA/1
         , windowPos2sMESA/2
         , windowPos2svMESA/1
         , windowPos3dMESA/3
         , windowPos3dvMESA/1
         , windowPos3fMESA/3
         , windowPos3fvMESA/1
         , windowPos3iMESA/3
         , windowPos3ivMESA/1
         , windowPos3sMESA/3
         , windowPos3svMESA/1
         , windowPos4dMESA/4
         , windowPos4dvMESA/1
         , windowPos4fMESA/4
         , windowPos4fvMESA/1
         , windowPos4iMESA/4
         , windowPos4ivMESA/1
         , windowPos4sMESA/4
         , windowPos4svMESA/1
         ]
       ).

%% GL_IBM_cull_vertex

%% GL_IBM_multimode_draw_arrays

-export( [ multiModeDrawArraysIBM/5
         , multiModeDrawElementsIBM/6
         ]
       ).

%% GL_IBM_vertex_array_lists

-export( [ colorPointerListIBM/5
         , secondaryColorPointerListIBM/5
         , edgeFlagPointerListIBM/3
         , fogCoordPointerListIBM/4
         , indexPointerListIBM/4
         , normalPointerListIBM/4
         , texCoordPointerListIBM/5
         , vertexPointerListIBM/5
         ]
       ).

%% GL_SGIX_subsample

%% GL_SGIX_ycrcba

%% GL_SGIX_ycrcb_subsample

%% GL_SGIX_depth_pass_instrument

%% GL_3DFX_texture_compression_FXT1

%% GL_3DFX_multisample

%% GL_3DFX_tbuffer

-export( [ tbufferMask3DFX/1
         ]
       ).

%% GL_EXT_multisample

-export( [ sampleMaskEXT/2
         , samplePatternEXT/1
         ]
       ).

%% GL_SGIX_vertex_preclip

%% GL_SGIX_convolution_accuracy

%% GL_SGIX_resample

%% GL_SGIS_point_line_texgen

%% GL_SGIS_texture_color_mask

-export( [ textureColorMaskSGIS/4
         ]
       ).

%% GL_SGIX_igloo_interface

-export( [ iglooInterfaceSGIX/2
         ]
       ).

%% GL_EXT_texture_env_dot3

%% GL_ATI_texture_mirror_once

%% GL_NV_fence

-export( [ deleteFencesNV/2
         , genFencesNV/1
         , isFenceNV/1
         , testFenceNV/1
         , getFenceivNV/2
         , finishFenceNV/1
         , setFenceNV/2
         ]
       ).

%% GL_NV_evaluators

-export( [ mapControlPointsNV/9
         , mapParameterivNV/3
         , mapParameterfvNV/3
         , getMapControlPointsNV/6
         , getMapParameterivNV/2
         , getMapParameterfvNV/2
         , getMapAttribParameterivNV/3
         , getMapAttribParameterfvNV/3
         , evalMapsNV/2
         ]
       ).

%% GL_NV_packed_depth_stencil

%% GL_NV_register_combiners2

-export( [ combinerStageParameterfvNV/3
         , getCombinerStageParameterfvNV/2
         ]
       ).

%% GL_NV_texture_compression_vtc

%% GL_NV_texture_rectangle

%% GL_NV_texture_shader

%% GL_NV_texture_shader2

%% GL_NV_vertex_array_range2

%% GL_NV_vertex_program

-export( [ areProgramsResidentNV/3
         , bindProgramNV/2
         , deleteProgramsNV/2
         , executeProgramNV/3
         , genProgramsNV/1
         , getProgramParameterdvNV/3
         , getProgramParameterfvNV/3
         , getProgramivNV/2
         , getProgramStringNV/2
         , getTrackMatrixivNV/3
         , getVertexAttribdvNV/2
         , getVertexAttribfvNV/2
         , getVertexAttribivNV/2
         , getVertexAttribPointervNV/2
         , isProgramNV/1
         , loadProgramNV/4
         , programParameter4dNV/6
         , programParameter4dvNV/3
         , programParameter4fNV/6
         , programParameter4fvNV/3
         , programParameters4dvNV/4
         , programParameters4fvNV/4
         , requestResidentProgramsNV/2
         , trackMatrixNV/4
         , vertexAttribPointerNV/5
         , vertexAttrib1dNV/2
         , vertexAttrib1dvNV/2
         , vertexAttrib1fNV/2
         , vertexAttrib1fvNV/2
         , vertexAttrib1sNV/2
         , vertexAttrib1svNV/2
         , vertexAttrib2dNV/3
         , vertexAttrib2dvNV/2
         , vertexAttrib2fNV/3
         , vertexAttrib2fvNV/2
         , vertexAttrib2sNV/3
         , vertexAttrib2svNV/2
         , vertexAttrib3dNV/4
         , vertexAttrib3dvNV/2
         , vertexAttrib3fNV/4
         , vertexAttrib3fvNV/2
         , vertexAttrib3sNV/4
         , vertexAttrib3svNV/2
         , vertexAttrib4dNV/5
         , vertexAttrib4dvNV/2
         , vertexAttrib4fNV/5
         , vertexAttrib4fvNV/2
         , vertexAttrib4sNV/5
         , vertexAttrib4svNV/2
         , vertexAttrib4ubNV/5
         , vertexAttrib4ubvNV/2
         , vertexAttribs1dvNV/3
         , vertexAttribs1fvNV/3
         , vertexAttribs1svNV/3
         , vertexAttribs2dvNV/3
         , vertexAttribs2fvNV/3
         , vertexAttribs2svNV/3
         , vertexAttribs3dvNV/3
         , vertexAttribs3fvNV/3
         , vertexAttribs3svNV/3
         , vertexAttribs4dvNV/3
         , vertexAttribs4fvNV/3
         , vertexAttribs4svNV/3
         , vertexAttribs4ubvNV/3
         ]
       ).

%% GL_SGIX_texture_coordinate_clamp

%% GL_SGIX_scalebias_hint

%% GL_OML_interlace

%% GL_OML_subsample

%% GL_OML_resample

%% GL_NV_copy_depth_to_color

%% GL_ATI_envmap_bumpmap

-export( [ texBumpParameterivATI/2
         , texBumpParameterfvATI/2
         , getTexBumpParameterivATI/1
         , getTexBumpParameterfvATI/1
         ]
       ).

%% GL_ATI_fragment_shader

-export( [ genFragmentShadersATI/1
         , bindFragmentShaderATI/1
         , deleteFragmentShaderATI/1
         , beginFragmentShaderATI/0
         , endFragmentShaderATI/0
         , passTexCoordATI/3
         , sampleMapATI/3
         , colorFragmentOp1ATI/7
         , colorFragmentOp2ATI/10
         , colorFragmentOp3ATI/13
         , alphaFragmentOp1ATI/6
         , alphaFragmentOp2ATI/9
         , alphaFragmentOp3ATI/12
         , setFragmentShaderConstantATI/2
         ]
       ).

%% GL_ATI_pn_triangles

-export( [ pNTrianglesiATI/2
         , pNTrianglesfATI/2
         ]
       ).

%% GL_ATI_vertex_array_object

-export( [ newObjectBufferATI/3
         , isObjectBufferATI/1
         , updateObjectBufferATI/5
         , getObjectBufferfvATI/2
         , getObjectBufferivATI/2
         , freeObjectBufferATI/1
         , arrayObjectATI/6
         , getArrayObjectfvATI/2
         , getArrayObjectivATI/2
         , variantArrayObjectATI/5
         , getVariantArrayObjectfvATI/2
         , getVariantArrayObjectivATI/2
         ]
       ).

%% GL_EXT_vertex_shader

-export( [ beginVertexShaderEXT/0
         , endVertexShaderEXT/0
         , bindVertexShaderEXT/1
         , genVertexShadersEXT/1
         , deleteVertexShaderEXT/1
         , shaderOp1EXT/3
         , shaderOp2EXT/4
         , shaderOp3EXT/5
         , swizzleEXT/6
         , writeMaskEXT/6
         , insertComponentEXT/3
         , extractComponentEXT/3
         , genSymbolsEXT/4
         , setInvariantEXT/3
         , setLocalConstantEXT/3
         , variantbvEXT/2
         , variantsvEXT/2
         , variantivEXT/2
         , variantfvEXT/2
         , variantdvEXT/2
         , variantubvEXT/2
         , variantusvEXT/2
         , variantuivEXT/2
         , variantPointerEXT/4
         , enableVariantClientStateEXT/1
         , disableVariantClientStateEXT/1
         , bindLightParameterEXT/2
         , bindMaterialParameterEXT/2
         , bindTexGenParameterEXT/3
         , bindTextureUnitParameterEXT/2
         , bindParameterEXT/1
         , isVariantEnabledEXT/2
         , getVariantBooleanvEXT/2
         , getVariantIntegervEXT/2
         , getVariantFloatvEXT/2
         , getVariantPointervEXT/2
         , getInvariantBooleanvEXT/2
         , getInvariantIntegervEXT/2
         , getInvariantFloatvEXT/2
         , getLocalConstantBooleanvEXT/2
         , getLocalConstantIntegervEXT/2
         , getLocalConstantFloatvEXT/2
         ]
       ).

%% GL_ATI_vertex_streams

-export( [ vertexStream1sATI/2
         , vertexStream1svATI/2
         , vertexStream1iATI/2
         , vertexStream1ivATI/2
         , vertexStream1fATI/2
         , vertexStream1fvATI/2
         , vertexStream1dATI/2
         , vertexStream1dvATI/2
         , vertexStream2sATI/3
         , vertexStream2svATI/2
         , vertexStream2iATI/3
         , vertexStream2ivATI/2
         , vertexStream2fATI/3
         , vertexStream2fvATI/2
         , vertexStream2dATI/3
         , vertexStream2dvATI/2
         , vertexStream3sATI/4
         , vertexStream3svATI/2
         , vertexStream3iATI/4
         , vertexStream3ivATI/2
         , vertexStream3fATI/4
         , vertexStream3fvATI/2
         , vertexStream3dATI/4
         , vertexStream3dvATI/2
         , vertexStream4sATI/5
         , vertexStream4svATI/2
         , vertexStream4iATI/5
         , vertexStream4ivATI/2
         , vertexStream4fATI/5
         , vertexStream4fvATI/2
         , vertexStream4dATI/5
         , vertexStream4dvATI/2
         , normalStream3bATI/4
         , normalStream3bvATI/2
         , normalStream3sATI/4
         , normalStream3svATI/2
         , normalStream3iATI/4
         , normalStream3ivATI/2
         , normalStream3fATI/4
         , normalStream3fvATI/2
         , normalStream3dATI/4
         , normalStream3dvATI/2
         , clientActiveVertexStreamATI/1
         , vertexBlendEnviATI/2
         , vertexBlendEnvfATI/2
         ]
       ).

%% GL_ATI_element_array

-export( [ elementPointerATI/2
         , drawElementArrayATI/2
         , drawRangeElementArrayATI/4
         ]
       ).

%% GL_SUN_mesh_array

-export( [ drawMeshArraysSUN/4
         ]
       ).

%% GL_SUN_slice_accum

%% GL_NV_multisample_filter_hint

%% GL_NV_depth_clamp

%% GL_NV_occlusion_query

-export( [ genOcclusionQueriesNV/1
         , deleteOcclusionQueriesNV/2
         , isOcclusionQueryNV/1
         , beginOcclusionQueryNV/1
         , endOcclusionQueryNV/0
         , getOcclusionQueryivNV/2
         , getOcclusionQueryuivNV/2
         ]
       ).

%% GL_NV_point_sprite

-export( [ pointParameteriNV/2
         , pointParameterivNV/2
         ]
       ).

%% GL_NV_texture_shader3

%% GL_NV_vertex_program1_1

%% GL_EXT_shadow_funcs

%% GL_EXT_stencil_two_side

-export( [ activeStencilFaceEXT/1
         ]
       ).

%% GL_ATI_text_fragment_shader

%% GL_APPLE_client_storage

%% GL_APPLE_element_array

-export( [ elementPointerAPPLE/2
         , drawElementArrayAPPLE/3
         , drawRangeElementArrayAPPLE/5
         , multiDrawElementArrayAPPLE/4
         , multiDrawRangeElementArrayAPPLE/6
         ]
       ).

%% GL_APPLE_fence

-export( [ genFencesAPPLE/1
         , deleteFencesAPPLE/2
         , setFenceAPPLE/1
         , isFenceAPPLE/1
         , testFenceAPPLE/1
         , finishFenceAPPLE/1
         , testObjectAPPLE/2
         , finishObjectAPPLE/2
         ]
       ).

%% GL_APPLE_vertex_array_object

-export( [ bindVertexArrayAPPLE/1
         , deleteVertexArraysAPPLE/2
         , genVertexArraysAPPLE/1
         , isVertexArrayAPPLE/1
         ]
       ).

%% GL_APPLE_vertex_array_range

-export( [ vertexArrayRangeAPPLE/2
         , flushVertexArrayRangeAPPLE/2
         , vertexArrayParameteriAPPLE/2
         ]
       ).

%% GL_APPLE_ycbcr_422

%% GL_S3_s3tc

%% GL_ATI_draw_buffers

-export( [ drawBuffersATI/2
         ]
       ).

%% GL_ATI_pixel_format_float

%% GL_ATI_texture_env_combine3

%% GL_ATI_texture_float

%% GL_NV_float_buffer

         ]
       ).

%% GL_NV_fragment_program

-export( [ programNamedParameter4fNV/7
         , programNamedParameter4dNV/7
         , programNamedParameter4fvNV/4
         , programNamedParameter4dvNV/4
         , getProgramNamedParameterfvNV/3
         , getProgramNamedParameterdvNV/3
         ]
       ).

%% GL_NV_half_float

-export( [ vertex2hNV/2
         , vertex2hvNV/1
         , vertex3hNV/3
         , vertex3hvNV/1
         , vertex4hNV/4
         , vertex4hvNV/1
         , normal3hNV/3
         , normal3hvNV/1
         , color3hNV/3
         , color3hvNV/1
         , color4hNV/4
         , color4hvNV/1
         , texCoord1hNV/1
         , texCoord1hvNV/1
         , texCoord2hNV/2
         , texCoord2hvNV/1
         , texCoord3hNV/3
         , texCoord3hvNV/1
         , texCoord4hNV/4
         , texCoord4hvNV/1
         , multiTexCoord1hNV/2
         , multiTexCoord1hvNV/2
         , multiTexCoord2hNV/3
         , multiTexCoord2hvNV/2
         , multiTexCoord3hNV/4
         , multiTexCoord3hvNV/2
         , multiTexCoord4hNV/5
         , multiTexCoord4hvNV/2
         , fogCoordhNV/1
         , fogCoordhvNV/1
         , secondaryColor3hNV/3
         , secondaryColor3hvNV/1
         , vertexWeighthNV/1
         , vertexWeighthvNV/1
         , vertexAttrib1hNV/2
         , vertexAttrib1hvNV/2
         , vertexAttrib2hNV/3
         , vertexAttrib2hvNV/2
         , vertexAttrib3hNV/4
         , vertexAttrib3hvNV/2
         , vertexAttrib4hNV/5
         , vertexAttrib4hvNV/2
         , vertexAttribs1hvNV/3
         , vertexAttribs2hvNV/3
         , vertexAttribs3hvNV/3
         , vertexAttribs4hvNV/3
         ]
       ).

%% GL_NV_pixel_data_range

-export( [ pixelDataRangeNV/3
         , flushPixelDataRangeNV/1
         ]
       ).

%% GL_NV_primitive_restart

-export( [ primitiveRestartNV/0
         , primitiveRestartIndexNV/1
         ]
       ).

%% GL_NV_texture_expand_normal

%% GL_NV_vertex_program2

%% GL_ATI_map_object_buffer

-export( [ mapObjectBufferATI/1
         , unmapObjectBufferATI/1
         ]
       ).

%% GL_ATI_separate_stencil

-export( [ stencilOpSeparateATI/4
         , stencilFuncSeparateATI/4
         ]
       ).

%% GL_ATI_vertex_attrib_array_object

-export( [ vertexAttribArrayObjectATI/7
         , getVertexAttribArrayObjectfvATI/2
         , getVertexAttribArrayObjectivATI/2
         ]
       ).

%% GL_OES_read_format

%% GL_EXT_depth_bounds_test

-export( [ depthBoundsEXT/2
         ]
       ).

%% GL_EXT_texture_mirror_clamp

%% GL_EXT_blend_equation_separate

-export( [ blendEquationSeparateEXT/2
         ]
       ).

%% GL_MESA_pack_invert

%% GL_MESA_ycbcr_texture

%% GL_EXT_pixel_buffer_object

%% GL_NV_fragment_program_option

%% GL_NV_fragment_program2

%% GL_NV_vertex_program2_option

%% GL_NV_vertex_program3

%% GL_EXT_framebuffer_object

-export( [ isRenderbufferEXT/1
         , bindRenderbufferEXT/2
         , deleteRenderbuffersEXT/2
         , genRenderbuffersEXT/1
         , renderbufferStorageEXT/4
         , getRenderbufferParameterivEXT/2
         , isFramebufferEXT/1
         , bindFramebufferEXT/2
         , deleteFramebuffersEXT/2
         , genFramebuffersEXT/1
         , checkFramebufferStatusEXT/1
         , framebufferTexture1DEXT/5
         , framebufferTexture2DEXT/5
         , framebufferTexture3DEXT/6
         , framebufferRenderbufferEXT/4
         , getFramebufferAttachmentParameterivEXT/3
         , generateMipmapEXT/1
         ]
       ).

%% GL_GREMEDY_string_marker

-export( [ stringMarkerGREMEDY/2
         ]
       ).

%% GL_EXT_packed_depth_stencil

%% GL_EXT_stencil_clear_tag

-export( [ stencilClearTagEXT/2
         ]
       ).

%% GL_EXT_texture_sRGB

%% GL_EXT_framebuffer_blit

-export( [ blitFramebufferEXT/10
         ]
       ).

%% GL_EXT_framebuffer_multisample

-export( [ renderbufferStorageMultisampleEXT/5
         ]
       ).

%% GL_MESAX_texture_stack

%% GL_EXT_timer_query

-export( [ getQueryObjecti64vEXT/2
         , getQueryObjectui64vEXT/2
         ]
       ).

%% GL_EXT_gpu_program_parameters

-export( [ programEnvParameters4fvEXT/4
         , programLocalParameters4fvEXT/4
         ]
       ).

%% GL_APPLE_flush_buffer_range

-export( [ bufferParameteriAPPLE/3
         , flushMappedBufferRangeAPPLE/3
         ]
       ).

%% GL_NV_gpu_program4

-export( [ programLocalParameterI4iNV/6
         , programLocalParameterI4ivNV/3
         , programLocalParametersI4ivNV/4
         , programLocalParameterI4uiNV/6
         , programLocalParameterI4uivNV/3
         , programLocalParametersI4uivNV/4
         , programEnvParameterI4iNV/6
         , programEnvParameterI4ivNV/3
         , programEnvParametersI4ivNV/4
         , programEnvParameterI4uiNV/6
         , programEnvParameterI4uivNV/3
         , programEnvParametersI4uivNV/4
         , getProgramLocalParameterIivNV/2
         , getProgramLocalParameterIuivNV/2
         , getProgramEnvParameterIivNV/2
         , getProgramEnvParameterIuivNV/2
         ]
       ).

%% GL_NV_geometry_program4

-export( [ programVertexLimitNV/2
         , framebufferTextureEXT/4
         , framebufferTextureLayerEXT/5
         , framebufferTextureFaceEXT/5
         ]
       ).

%% GL_EXT_geometry_shader4

-export( [ programParameteriEXT/3
         ]
       ).

%% GL_NV_vertex_program4

-export( [ vertexAttribI1iEXT/2
         , vertexAttribI2iEXT/3
         , vertexAttribI3iEXT/4
         , vertexAttribI4iEXT/5
         , vertexAttribI1uiEXT/2
         , vertexAttribI2uiEXT/3
         , vertexAttribI3uiEXT/4
         , vertexAttribI4uiEXT/5
         , vertexAttribI1ivEXT/2
         , vertexAttribI2ivEXT/2
         , vertexAttribI3ivEXT/2
         , vertexAttribI4ivEXT/2
         , vertexAttribI1uivEXT/2
         , vertexAttribI2uivEXT/2
         , vertexAttribI3uivEXT/2
         , vertexAttribI4uivEXT/2
         , vertexAttribI4bvEXT/2
         , vertexAttribI4svEXT/2
         , vertexAttribI4ubvEXT/2
         , vertexAttribI4usvEXT/2
         , vertexAttribIPointerEXT/5
         , getVertexAttribIivEXT/2
         , getVertexAttribIuivEXT/2
         ]
       ).

%% GL_EXT_gpu_shader4

-export( [ getUniformuivEXT/2
         , bindFragDataLocationEXT/3
         , getFragDataLocationEXT/2
         , uniform1uiEXT/2
         , uniform2uiEXT/3
         , uniform3uiEXT/4
         , uniform4uiEXT/5
         , uniform1uivEXT/3
         , uniform2uivEXT/3
         , uniform3uivEXT/3
         , uniform4uivEXT/3
         ]
       ).

%% GL_EXT_draw_instanced

-export( [ drawArraysInstancedEXT/4
         , drawElementsInstancedEXT/5
         ]
       ).

%% GL_EXT_packed_float

%% GL_EXT_texture_array

%% GL_EXT_texture_buffer_object

-export( [ texBufferEXT/3
         ]
       ).

%% GL_EXT_texture_compression_latc

%% GL_EXT_texture_compression_rgtc

%% GL_EXT_texture_shared_exponent

%% GL_NV_depth_buffer_float

-export( [ depthRangedNV/2
         , clearDepthdNV/1
         , depthBoundsdNV/2
         ]
       ).

%% GL_NV_fragment_program4

%% GL_NV_framebuffer_multisample_coverage

-export( [ renderbufferStorageMultisampleCoverageNV/6
         ]
       ).

%% GL_EXT_framebuffer_sRGB

%% GL_NV_geometry_shader4

%% GL_NV_parameter_buffer_object

-export( [ programBufferParametersfvNV/5
         , programBufferParametersIivNV/5
         , programBufferParametersIuivNV/5
         ]
       ).

%% GL_EXT_draw_buffers2

-export( [ colorMaskIndexedEXT/5
         , getBooleanIndexedvEXT/2
         , getIntegerIndexedvEXT/2
         , enableIndexedEXT/2
         , disableIndexedEXT/2
         , isEnabledIndexedEXT/2
         ]
       ).

%% GL_NV_transform_feedback

-export( [ beginTransformFeedbackNV/1
         , endTransformFeedbackNV/0
         , transformFeedbackAttribsNV/3
         , bindBufferRangeNV/5
         , bindBufferOffsetNV/4
         , bindBufferBaseNV/3
         , transformFeedbackVaryingsNV/4
         , activeVaryingNV/2
         , getVaryingLocationNV/2
         , getActiveVaryingNV/3
         , getTransformFeedbackVaryingNV/2
         , transformFeedbackStreamAttribsNV/5
         ]
       ).

%% GL_EXT_bindable_uniform

-export( [ uniformBufferEXT/3
         , getUniformBufferSizeEXT/2
         , getUniformOffsetEXT/2
         ]
       ).

%% GL_EXT_texture_integer

-export( [ texParameterIivEXT/3
         , texParameterIuivEXT/3
         , getTexParameterIivEXT/2
         , getTexParameterIuivEXT/2
         , clearColorIiEXT/4
         , clearColorIuiEXT/4
         ]
       ).

%% GL_GREMEDY_frame_terminator

-export( [ frameTerminatorGREMEDY/0
         ]
       ).

%% GL_NV_conditional_render

-export( [ beginConditionalRenderNV/2
         , endConditionalRenderNV/0
         ]
       ).

%% GL_NV_present_video

-export( [ presentFrameKeyedNV/11
         , presentFrameDualFillNV/13
         , getVideoivNV/2
         , getVideouivNV/2
         , getVideoi64vNV/2
         , getVideoui64vNV/2
         , videoParameterivNV/3
         ]
       ).

%% GL_EXT_transform_feedback

-export( [ beginTransformFeedbackEXT/1
         , endTransformFeedbackEXT/0
         , bindBufferRangeEXT/5
         , bindBufferOffsetEXT/4
         , bindBufferBaseEXT/3
         , transformFeedbackVaryingsEXT/4
         , getTransformFeedbackVaryingEXT/3
         ]
       ).

%% GL_EXT_direct_state_access

-export( [ clientAttribDefaultEXT/1
         , pushClientAttribDefaultEXT/1
         , matrixLoadfEXT/2
         , matrixLoaddEXT/2
         , matrixMultfEXT/2
         , matrixMultdEXT/2
         , matrixLoadIdentityEXT/1
         , matrixRotatefEXT/5
         , matrixRotatedEXT/5
         , matrixScalefEXT/4
         , matrixScaledEXT/4
         , matrixTranslatefEXT/4
         , matrixTranslatedEXT/4
         , matrixFrustumEXT/7
         , matrixOrthoEXT/7
         , matrixPopEXT/1
         , matrixPushEXT/1
         , matrixLoadTransposefEXT/2
         , matrixLoadTransposedEXT/2
         , matrixMultTransposefEXT/2
         , matrixMultTransposedEXT/2
         , textureParameterfEXT/4
         , textureParameterfvEXT/4
         , textureParameteriEXT/4
         , textureParameterivEXT/4
         , textureImage1DEXT/9
         , textureImage2DEXT/10
         , textureSubImage1DEXT/8
         , textureSubImage2DEXT/10
         , copyTextureImage1DEXT/8
         , copyTextureImage2DEXT/9
         , copyTextureSubImage1DEXT/7
         , copyTextureSubImage2DEXT/9
         , getTextureImageEXT/5
         , getTextureParameterfvEXT/3
         , getTextureParameterivEXT/3
         , getTextureLevelParameterfvEXT/4
         , getTextureLevelParameterivEXT/4
         , textureImage3DEXT/11
         , textureSubImage3DEXT/12
         , copyTextureSubImage3DEXT/10
         , multiTexParameterfEXT/4
         , multiTexParameterfvEXT/4
         , multiTexParameteriEXT/4
         , multiTexParameterivEXT/4
         , multiTexImage1DEXT/9
         , multiTexImage2DEXT/10
         , multiTexSubImage1DEXT/8
         , multiTexSubImage2DEXT/10
         , copyMultiTexImage1DEXT/8
         , copyMultiTexImage2DEXT/9
         , copyMultiTexSubImage1DEXT/7
         , copyMultiTexSubImage2DEXT/9
         , getMultiTexImageEXT/5
         , getMultiTexParameterfvEXT/3
         , getMultiTexParameterivEXT/3
         , getMultiTexLevelParameterfvEXT/4
         , getMultiTexLevelParameterivEXT/4
         , multiTexImage3DEXT/11
         , multiTexSubImage3DEXT/12
         , copyMultiTexSubImage3DEXT/10
         , bindMultiTextureEXT/3
         , enableClientStateIndexedEXT/2
         , disableClientStateIndexedEXT/2
         , multiTexCoordPointerEXT/5
         , multiTexEnvfEXT/4
         , multiTexEnvfvEXT/4
         , multiTexEnviEXT/4
         , multiTexEnvivEXT/4
         , multiTexGendEXT/4
         , multiTexGendvEXT/4
         , multiTexGenfEXT/4
         , multiTexGenfvEXT/4
         , multiTexGeniEXT/4
         , multiTexGenivEXT/4
         , getMultiTexEnvfvEXT/3
         , getMultiTexEnvivEXT/3
         , getMultiTexGendvEXT/3
         , getMultiTexGenfvEXT/3
         , getMultiTexGenivEXT/3
         , getFloatIndexedvEXT/2
         , getDoubleIndexedvEXT/2
         , getPointerIndexedvEXT/2
         , compressedTextureImage3DEXT/10
         , compressedTextureImage2DEXT/9
         , compressedTextureImage1DEXT/8
         , compressedTextureSubImage3DEXT/12
         , compressedTextureSubImage2DEXT/10
         , compressedTextureSubImage1DEXT/8
         , getCompressedTextureImageEXT/3
         , compressedMultiTexImage3DEXT/10
         , compressedMultiTexImage2DEXT/9
         , compressedMultiTexImage1DEXT/8
         , compressedMultiTexSubImage3DEXT/12
         , compressedMultiTexSubImage2DEXT/10
         , compressedMultiTexSubImage1DEXT/8
         , getCompressedMultiTexImageEXT/3
         , namedProgramStringEXT/5
         , namedProgramLocalParameter4dEXT/7
         , namedProgramLocalParameter4dvEXT/4
         , namedProgramLocalParameter4fEXT/7
         , namedProgramLocalParameter4fvEXT/4
         , getNamedProgramLocalParameterdvEXT/3
         , getNamedProgramLocalParameterfvEXT/3
         , getNamedProgramivEXT/3
         , getNamedProgramStringEXT/3
         , namedProgramLocalParameters4fvEXT/5
         , namedProgramLocalParameterI4iEXT/7
         , namedProgramLocalParameterI4ivEXT/4
         , namedProgramLocalParametersI4ivEXT/5
         , namedProgramLocalParameterI4uiEXT/7
         , namedProgramLocalParameterI4uivEXT/4
         , namedProgramLocalParametersI4uivEXT/5
         , getNamedProgramLocalParameterIivEXT/3
         , getNamedProgramLocalParameterIuivEXT/3
         , textureParameterIivEXT/4
         , textureParameterIuivEXT/4
         , getTextureParameterIivEXT/3
         , getTextureParameterIuivEXT/3
         , multiTexParameterIivEXT/4
         , multiTexParameterIuivEXT/4
         , getMultiTexParameterIivEXT/3
         , getMultiTexParameterIuivEXT/3
         , programUniform1fEXT/3
         , programUniform2fEXT/4
         , programUniform3fEXT/5
         , programUniform4fEXT/6
         , programUniform1iEXT/3
         , programUniform2iEXT/4
         , programUniform3iEXT/5
         , programUniform4iEXT/6
         , programUniform1fvEXT/4
         , programUniform2fvEXT/4
         , programUniform3fvEXT/4
         , programUniform4fvEXT/4
         , programUniform1ivEXT/4
         , programUniform2ivEXT/4
         , programUniform3ivEXT/4
         , programUniform4ivEXT/4
         , programUniformMatrix2fvEXT/5
         , programUniformMatrix3fvEXT/5
         , programUniformMatrix4fvEXT/5
         , programUniformMatrix2x3fvEXT/5
         , programUniformMatrix3x2fvEXT/5
         , programUniformMatrix2x4fvEXT/5
         , programUniformMatrix4x2fvEXT/5
         , programUniformMatrix3x4fvEXT/5
         , programUniformMatrix4x3fvEXT/5
         , programUniform1uiEXT/3
         , programUniform2uiEXT/4
         , programUniform3uiEXT/5
         , programUniform4uiEXT/6
         , programUniform1uivEXT/4
         , programUniform2uivEXT/4
         , programUniform3uivEXT/4
         , programUniform4uivEXT/4
         , namedBufferDataEXT/4
         , namedBufferSubDataEXT/4
         , mapNamedBufferEXT/2
         , unmapNamedBufferEXT/1
         , mapNamedBufferRangeEXT/4
         , flushMappedNamedBufferRangeEXT/3
         , namedCopyBufferSubDataEXT/5
         , getNamedBufferParameterivEXT/2
         , getNamedBufferPointervEXT/2
         , getNamedBufferSubDataEXT/3
         , textureBufferEXT/4
         , multiTexBufferEXT/4
         , namedRenderbufferStorageEXT/4
         , getNamedRenderbufferParameterivEXT/2
         , checkNamedFramebufferStatusEXT/2
         , namedFramebufferTexture1DEXT/5
         , namedFramebufferTexture2DEXT/5
         , namedFramebufferTexture3DEXT/6
         , namedFramebufferRenderbufferEXT/4
         , getNamedFramebufferAttachmentParameterivEXT/3
         , generateTextureMipmapEXT/2
         , generateMultiTexMipmapEXT/2
         , framebufferDrawBufferEXT/2
         , framebufferDrawBuffersEXT/3
         , framebufferReadBufferEXT/2
         , getFramebufferParameterivEXT/2
         , namedRenderbufferStorageMultisampleEXT/5
         , namedRenderbufferStorageMultisampleCoverageEXT/6
         , namedFramebufferTextureEXT/4
         , namedFramebufferTextureLayerEXT/5
         , namedFramebufferTextureFaceEXT/5
         , textureRenderbufferEXT/3
         , multiTexRenderbufferEXT/3
         , programUniform1dEXT/3
         , programUniform2dEXT/4
         , programUniform3dEXT/5
         , programUniform4dEXT/6
         , programUniform1dvEXT/4
         , programUniform2dvEXT/4
         , programUniform3dvEXT/4
         , programUniform4dvEXT/4
         , programUniformMatrix2dvEXT/5
         , programUniformMatrix3dvEXT/5
         , programUniformMatrix4dvEXT/5
         , programUniformMatrix2x3dvEXT/5
         , programUniformMatrix2x4dvEXT/5
         , programUniformMatrix3x2dvEXT/5
         , programUniformMatrix3x4dvEXT/5
         , programUniformMatrix4x2dvEXT/5
         , programUniformMatrix4x3dvEXT/5
         ]
       ).

%% GL_EXT_vertex_array_bgra

%% GL_EXT_texture_swizzle

%% GL_NV_explicit_multisample

-export( [ getMultisamplefvNV/2
         , sampleMaskIndexedNV/2
         , texRenderbufferNV/2
         ]
       ).

%% GL_NV_transform_feedback2

-export( [ bindTransformFeedbackNV/2
         , deleteTransformFeedbacksNV/2
         , genTransformFeedbacksNV/1
         , isTransformFeedbackNV/1
         , pauseTransformFeedbackNV/0
         , resumeTransformFeedbackNV/0
         , drawTransformFeedbackNV/2
         ]
       ).

%% GL_ATI_meminfo

%% GL_AMD_performance_monitor

-export( [ getPerfMonitorGroupsAMD/2
         , getPerfMonitorCountersAMD/4
         , getPerfMonitorGroupStringAMD/2
         , getPerfMonitorCounterStringAMD/3
         , getPerfMonitorCounterInfoAMD/3
         , genPerfMonitorsAMD/1
         , deletePerfMonitorsAMD/2
         , selectPerfMonitorCountersAMD/5
         , beginPerfMonitorAMD/1
         , endPerfMonitorAMD/1
         , getPerfMonitorCounterDataAMD/3
         ]
       ).

%% GL_AMD_texture_texture4

%% GL_AMD_vertex_shader_tesselator

-export( [ tessellationFactorAMD/1
         , tessellationModeAMD/1
         ]
       ).

%% GL_EXT_provoking_vertex

-export( [ provokingVertexEXT/1
         ]
       ).

%% GL_EXT_texture_snorm

%% GL_AMD_draw_buffers_blend

-export( [ blendFuncIndexedAMD/3
         , blendFuncSeparateIndexedAMD/5
         , blendEquationIndexedAMD/2
         , blendEquationSeparateIndexedAMD/3
         ]
       ).

%% GL_APPLE_texture_range

-export( [ textureRangeAPPLE/3
         , getTexParameterPointervAPPLE/2
         ]
       ).

%% GL_APPLE_float_pixels

%% GL_APPLE_vertex_program_evaluators

-export( [ enableVertexAttribAPPLE/2
         , disableVertexAttribAPPLE/2
         , isVertexAttribEnabledAPPLE/2
         , mapVertexAttrib1dAPPLE/7
         , mapVertexAttrib1fAPPLE/7
         , mapVertexAttrib2dAPPLE/11
         , mapVertexAttrib2fAPPLE/11
         ]
       ).

%% GL_APPLE_aux_depth_stencil

%% GL_APPLE_object_purgeable

-export( [ objectPurgeableAPPLE/3
         , objectUnpurgeableAPPLE/3
         , getObjectParameterivAPPLE/3
         ]
       ).

%% GL_APPLE_row_bytes

%% GL_APPLE_rgb_422

         ]
       ).

%% GL_NV_video_capture

-export( [ beginVideoCaptureNV/1
         , bindVideoCaptureStreamBufferNV/4
         , bindVideoCaptureStreamTextureNV/5
         , endVideoCaptureNV/1
         , getVideoCaptureivNV/2
         , getVideoCaptureStreamivNV/3
         , getVideoCaptureStreamfvNV/3
         , getVideoCaptureStreamdvNV/3
         , videoCaptureNV/3
         , videoCaptureStreamParameterivNV/4
         , videoCaptureStreamParameterfvNV/4
         , videoCaptureStreamParameterdvNV/4
         ]
       ).

%% GL_NV_copy_image

-export( [ copyImageSubDataNV/15
         ]
       ).

%% GL_EXT_separate_shader_objects

-export( [ useShaderProgramEXT/2
         , activeProgramEXT/1
         , createShaderProgramEXT/2
         ]
       ).

%% GL_NV_parameter_buffer_object2

%% GL_NV_shader_buffer_load

-export( [ makeBufferResidentNV/2
         , makeBufferNonResidentNV/1
         , isBufferResidentNV/1
         , namedMakeBufferResidentNV/2
         , namedMakeBufferNonResidentNV/1
         , isNamedBufferResidentNV/1
         , getBufferParameterui64vNV/2
         , getNamedBufferParameterui64vNV/2
         , getIntegerui64vNV/1
         , uniformui64NV/2
         , uniformui64vNV/3
         , getUniformui64vNV/2
         , programUniformui64NV/3
         , programUniformui64vNV/4
         ]
       ).

%% GL_NV_vertex_buffer_unified_memory

-export( [ bufferAddressRangeNV/4
         , vertexFormatNV/3
         , normalFormatNV/2
         , colorFormatNV/3
         , indexFormatNV/2
         , texCoordFormatNV/3
         , edgeFlagFormatNV/1
         , secondaryColorFormatNV/3
         , fogCoordFormatNV/2
         , vertexAttribFormatNV/5
         , vertexAttribIFormatNV/4
         , getIntegerui64iVNV/2
         ]
       ).

%% GL_NV_texture_barrier

-export( [ textureBarrierNV/0
         ]
       ).

%% GL_AMD_shader_stencil_export

%% GL_AMD_seamless_cubemap_per_texture

%% GL_AMD_conservative_depth

%% GL_EXT_shader_image_load_store

-export( [ bindImageTextureEXT/7
         , memoryBarrierEXT/1
         ]
       ).

%% GL_EXT_vertex_attrib_64bit

-export( [ vertexAttribL1dEXT/2
         , vertexAttribL2dEXT/3
         , vertexAttribL3dEXT/4
         , vertexAttribL4dEXT/5
         , vertexAttribL1dvEXT/2
         , vertexAttribL2dvEXT/2
         , vertexAttribL3dvEXT/2
         , vertexAttribL4dvEXT/2
         , vertexAttribLPointerEXT/5
         , getVertexAttribLdvEXT/2
         , vertexArrayVertexAttribLOffsetEXT/7
         ]
       ).

%% GL_NV_gpu_program5

-export( [ programSubroutineParametersuivNV/3
         , getProgramSubroutineParameteruivNV/2
         ]
       ).

%% GL_NV_gpu_shader5

-export( [ uniform1i64NV/2
         , uniform2i64NV/3
         , uniform3i64NV/4
         , uniform4i64NV/5
         , uniform1i64vNV/3
         , uniform2i64vNV/3
         , uniform3i64vNV/3
         , uniform4i64vNV/3
         , uniform1ui64NV/2
         , uniform2ui64NV/3
         , uniform3ui64NV/4
         , uniform4ui64NV/5
         , uniform1ui64vNV/3
         , uniform2ui64vNV/3
         , uniform3ui64vNV/3
         , uniform4ui64vNV/3
         , getUniformi64vNV/2
         , programUniform1i64NV/3
         , programUniform2i64NV/4
         , programUniform3i64NV/5
         , programUniform4i64NV/6
         , programUniform1i64vNV/4
         , programUniform2i64vNV/4
         , programUniform3i64vNV/4
         , programUniform4i64vNV/4
         , programUniform1ui64NV/3
         , programUniform2ui64NV/4
         , programUniform3ui64NV/5
         , programUniform4ui64NV/6
         , programUniform1ui64vNV/4
         , programUniform2ui64vNV/4
         , programUniform3ui64vNV/4
         , programUniform4ui64vNV/4
         ]
       ).

%% GL_NV_shader_buffer_store

%% GL_NV_tessellation_program5

%% GL_NV_vertex_attrib_integer_64bit

-export( [ vertexAttribL1i64NV/2
         , vertexAttribL2i64NV/3
         , vertexAttribL3i64NV/4
         , vertexAttribL4i64NV/5
         , vertexAttribL1i64vNV/2
         , vertexAttribL2i64vNV/2
         , vertexAttribL3i64vNV/2
         , vertexAttribL4i64vNV/2
         , vertexAttribL1ui64NV/2
         , vertexAttribL2ui64NV/3
         , vertexAttribL3ui64NV/4
         , vertexAttribL4ui64NV/5
         , vertexAttribL1ui64vNV/2
         , vertexAttribL2ui64vNV/2
         , vertexAttribL3ui64vNV/2
         , vertexAttribL4ui64vNV/2
         , getVertexAttribLi64vNV/2
         , getVertexAttribLui64vNV/2
         , vertexAttribLFormatNV/4
         ]
       ).

%% GL_NV_multisample_coverage

%% GL_AMD_name_gen_delete

-export( [ genNamesAMD/2
         , deleteNamesAMD/3
         , isNameAMD/2
         ]
       ).

%% GL_AMD_debug_output

-export( [ debugMessageEnableAMD/5
         , debugMessageInsertAMD/5
         , debugMessageCallbackAMD/2
         , getDebugMessageLogAMD/7
         ]
       ).

%% GL_NV_vdpau_interop

-export( [ vDPAUInitNV/2
         , vDPAUFiniNV/0
         , vDPAURegisterVideoSurfaceNV/4
         , vDPAURegisterOutputSurfaceNV/4
         , vDPAUIsSurfaceNV/1
         , vDPAUUnregisterSurfaceNV/1
         , vDPAUGetSurfaceivNV/3
         , vDPAUSurfaceAccessNV/2
         , vDPAUMapSurfacesNV/2
         , vDPAUUnmapSurfacesNV/2
         ]
       ).

%% GL_AMD_transform_feedback3_lines_triangles

%% 2- INCLUDE

-include("exdl.hrl").

-include("exdl_gl.hrl").
-include("exdl_util.hrl").

-include("exdl_glext.hrl").
%-include("exdl_glext_fp.hrl").

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

%% GL_VERSION_1_2

%% Func:       blendColor
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)

blendColor(Red, Green, Blue, Alpha)
 -> cast
    ( ?glBlendColor
    , <<Red:?GLclampf
      , Green:?GLclampf
      , Blue:?GLclampf
      , Alpha:?GLclampf
      >>
    )
.

%% Func:       blendEquation
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glBlendEquation(GLenum mode)

blendEquation(Mode)
 -> cast
    ( ?glBlendEquation
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       drawRangeElements
%% Args:       Mode, Start, End, Count, Type, Indices
%% Returns:    ok
%% C-API func: void glDrawRangeElements(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid* indices)

drawRangeElements(Mode, Start, End, Count, Type, Indices)
 -> cast
    ( ?glDrawRangeElements
    , <<Mode:?GLenum
      , Start:?GLuint
      , End:?GLuint
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      >>
    )
.

%% Func:       texImage3D
%% Args:       Target, Level, Internalformat, Width, Height, Depth, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexImage3D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

texImage3D(Target, Level, Internalformat, Width, Height, Depth, Border, Format, Type, Pixels)
 -> cast
    ( ?glTexImage3D
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       texSubImage3D
%% Args:       Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels)

texSubImage3D(Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, Type, Pixels)
 -> cast
    ( ?glTexSubImage3D
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       copyTexSubImage3D
%% Args:       Target, Level, Xoffset, Yoffset, Zoffset, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glCopyTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

copyTexSubImage3D(Target, Level, Xoffset, Yoffset, Zoffset, X, Y, Width, Height)
 -> cast
    ( ?glCopyTexSubImage3D
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% GL_VERSION_1_2_DEPRECATED

%% Func:       colorTable
%% Args:       Target, Internalformat, Width, Format, Type, Table
%% Returns:    ok
%% C-API func: void glColorTable(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* table)

colorTable(Target, Internalformat, Width, Format, Type, Table)
 -> cast
    ( ?glColorTable
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Table:?_PTR
      >>
    )
.

%% Func:       colorTableParameterfv
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glColorTableParameterfv(GLenum target, GLenum pname, const GLfloat* params)

colorTableParameterfv(Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glColorTableParameterfv
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       colorTableParameteriv
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glColorTableParameteriv(GLenum target, GLenum pname, const GLint* params)

colorTableParameteriv(Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glColorTableParameteriv
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       copyColorTable
%% Args:       Target, Internalformat, X, Y, Width
%% Returns:    ok
%% C-API func: void glCopyColorTable(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

copyColorTable(Target, Internalformat, X, Y, Width)
 -> cast
    ( ?glCopyColorTable
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      >>
    )
.

%% Func:       getColorTable
%% Args:       Target, Format, Type, Table
%% Returns:    ok
%% C-API func: void glGetColorTable(GLenum target, GLenum format, GLenum type, GLvoid* table)

getColorTable(Target, Format, Type, Table)
 -> cast
    ( ?glGetColorTable
    , <<Target:?GLenum
      , Format:?GLenum
      , Type:?GLenum
      , Table:?_PTR
      >>
    )
.

%% Func:       getColorTableParameterfv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetColorTableParameterfv(GLenum target, GLenum pname, GLfloat* params)

getColorTableParameterfv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetColorTableParameterfv
      , <<Target:?GLenum
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

%% Func:       getColorTableParameteriv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetColorTableParameteriv(GLenum target, GLenum pname, GLint* params)

getColorTableParameteriv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetColorTableParameteriv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetColorTableParameterivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       colorSubTable
%% Args:       Target, Start, Count, Format, Type, Data
%% Returns:    ok
%% C-API func: void glColorSubTable(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid* data)

colorSubTable(Target, Start, Count, Format, Type, Data)
 -> cast
    ( ?glColorSubTable
    , <<Target:?GLenum
      , Start:?GLsizei
      , Count:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       copyColorSubTable
%% Args:       Target, Start, X, Y, Width
%% Returns:    ok
%% C-API func: void glCopyColorSubTable(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)

copyColorSubTable(Target, Start, X, Y, Width)
 -> cast
    ( ?glCopyColorSubTable
    , <<Target:?GLenum
      , Start:?GLsizei
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      >>
    )
.

%% Func:       convolutionFilter1D
%% Args:       Target, Internalformat, Width, Format, Type, Image
%% Returns:    ok
%% C-API func: void glConvolutionFilter1D(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* image)

convolutionFilter1D(Target, Internalformat, Width, Format, Type, Image)
 -> cast
    ( ?glConvolutionFilter1D
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Image:?_PTR
      >>
    )
.

%% Func:       convolutionFilter2D
%% Args:       Target, Internalformat, Width, Height, Format, Type, Image
%% Returns:    ok
%% C-API func: void glConvolutionFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* image)

convolutionFilter2D(Target, Internalformat, Width, Height, Format, Type, Image)
 -> cast
    ( ?glConvolutionFilter2D
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Image:?_PTR
      >>
    )
.

%% Func:       convolutionParameterf
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glConvolutionParameterf(GLenum target, GLenum pname, GLfloat params)

convolutionParameterf(Target, Pname, Params)
 -> cast
    ( ?glConvolutionParameterf
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?GLfloat
      >>
    )
.

%% Func:       convolutionParameterfv
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glConvolutionParameterfv(GLenum target, GLenum pname, const GLfloat* params)

convolutionParameterfv(Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glConvolutionParameterfv
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       convolutionParameteri
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glConvolutionParameteri(GLenum target, GLenum pname, GLint params)

convolutionParameteri(Target, Pname, Params)
 -> cast
    ( ?glConvolutionParameteri
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?GLint
      >>
    )
.

%% Func:       convolutionParameteriv
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glConvolutionParameteriv(GLenum target, GLenum pname, const GLint* params)

convolutionParameteriv(Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glConvolutionParameteriv
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       copyConvolutionFilter1D
%% Args:       Target, Internalformat, X, Y, Width
%% Returns:    ok
%% C-API func: void glCopyConvolutionFilter1D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

copyConvolutionFilter1D(Target, Internalformat, X, Y, Width)
 -> cast
    ( ?glCopyConvolutionFilter1D
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      >>
    )
.

%% Func:       copyConvolutionFilter2D
%% Args:       Target, Internalformat, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glCopyConvolutionFilter2D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)

copyConvolutionFilter2D(Target, Internalformat, X, Y, Width, Height)
 -> cast
    ( ?glCopyConvolutionFilter2D
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       getConvolutionFilter
%% Args:       Target, Format, Type, Image
%% Returns:    ok
%% C-API func: void glGetConvolutionFilter(GLenum target, GLenum format, GLenum type, GLvoid* image)

getConvolutionFilter(Target, Format, Type, Image)
 -> cast
    ( ?glGetConvolutionFilter
    , <<Target:?GLenum
      , Format:?GLenum
      , Type:?GLenum
      , Image:?_PTR
      >>
    )
.

%% Func:       getConvolutionParameterfv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetConvolutionParameterfv(GLenum target, GLenum pname, GLfloat* params)

getConvolutionParameterfv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetConvolutionParameterfv
      , <<Target:?GLenum
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

%% Func:       getConvolutionParameteriv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetConvolutionParameteriv(GLenum target, GLenum pname, GLint* params)

getConvolutionParameteriv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetConvolutionParameteriv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = case
        Pname
      of
        :?GL_CONVOLUTION_BORDER_MODE  -> 1
      ; :?GL_CONVOLUTION_BORDER_COLOR -> 1
      ; :?GL_CONVOLUTION_FILTER_SCALE -> 4
      ; :?GL_CONVOLUTION_FILTER_BIAS  -> 4
      ; :?GL_CONVOLUTION_FORMAT       -> 4
      ; :?GL_CONVOLUTION_WIDTH        -> 1
      ; :?GL_CONVOLUTION_HEIGHT       -> 1
      ; :?GL_MAX_CONVOLUTION_WIDTH    -> 1
      ; :?GL_MAX_CONVOLUTION_HEIGHT   -> 1
      ; _                             -> 4
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
           , ?GLint
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

%% Func:       getSeparableFilter
%% Args:       Target, Format, Type, Row, Column, Span
%% Returns:    ok
%% C-API func: void glGetSeparableFilter(GLenum target, GLenum format, GLenum type, GLvoid* row, GLvoid* column, GLvoid* span)

getSeparableFilter(Target, Format, Type, Row, Column, Span)
 -> cast
    ( ?glGetSeparableFilter
    , <<Target:?GLenum
      , Format:?GLenum
      , Type:?GLenum
      , Row:?_PTR
      , Column:?_PTR
      , Span:?_PTR
      >>
    )
.

%% Func:       separableFilter2D
%% Args:       Target, Internalformat, Width, Height, Format, Type, Row, Column
%% Returns:    ok
%% C-API func: void glSeparableFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* row, const GLvoid* column)

separableFilter2D(Target, Internalformat, Width, Height, Format, Type, Row, Column)
 -> cast
    ( ?glSeparableFilter2D
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Row:?_PTR
      , Column:?_PTR
      >>
    )
.

%% Func:       getHistogram
%% Args:       Target, Reset, Format, Type, Values
%% Returns:    ok
%% C-API func: void glGetHistogram(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values)

getHistogram(Target, Reset, Format, Type, Values)
 -> cast
    ( ?glGetHistogram
    , <<Target:?GLenum
      , Reset:?GLboolean
      , Format:?GLenum
      , Type:?GLenum
      , Values:?_PTR
      >>
    )
.

%% Func:       getHistogramParameterfv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetHistogramParameterfv(GLenum target, GLenum pname, GLfloat* params)

getHistogramParameterfv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetHistogramParameterfv
      , <<Target:?GLenum
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

%% Func:       getHistogramParameteriv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetHistogramParameteriv(GLenum target, GLenum pname, GLint* params)

getHistogramParameteriv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetHistogramParameteriv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetHistogramParameterivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getMinmax
%% Args:       Target, Reset, Format, Type, Values
%% Returns:    ok
%% C-API func: void glGetMinmax(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values)

getMinmax(Target, Reset, Format, Type, Values)
 -> cast
    ( ?glGetMinmax
    , <<Target:?GLenum
      , Reset:?GLboolean
      , Format:?GLenum
      , Type:?GLenum
      , Values:?_PTR
      >>
    )
.

%% Func:       getMinmaxParameterfv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMinmaxParameterfv(GLenum target, GLenum pname, GLfloat* params)

getMinmaxParameterfv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetMinmaxParameterfv
      , <<Target:?GLenum
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

%% Func:       getMinmaxParameteriv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMinmaxParameteriv(GLenum target, GLenum pname, GLint* params)

getMinmaxParameteriv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetMinmaxParameteriv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetMinmaxParameterivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       histogram
%% Args:       Target, Width, Internalformat, Sink
%% Returns:    ok
%% C-API func: void glHistogram(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)

histogram(Target, Width, Internalformat, Sink)
 -> cast
    ( ?glHistogram
    , <<Target:?GLenum
      , Width:?GLsizei
      , Internalformat:?GLenum
      , Sink:?GLboolean
      >>
    )
.

%% Func:       minmax
%% Args:       Target, Internalformat, Sink
%% Returns:    ok
%% C-API func: void glMinmax(GLenum target, GLenum internalformat, GLboolean sink)

minmax(Target, Internalformat, Sink)
 -> cast
    ( ?glMinmax
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Sink:?GLboolean
      >>
    )
.

%% Func:       resetHistogram
%% Args:       Target
%% Returns:    ok
%% C-API func: void glResetHistogram(GLenum target)

resetHistogram(Target)
 -> cast
    ( ?glResetHistogram
    , <<Target:?GLenum
      >>
    )
.

%% Func:       resetMinmax
%% Args:       Target
%% Returns:    ok
%% C-API func: void glResetMinmax(GLenum target)

resetMinmax(Target)
 -> cast
    ( ?glResetMinmax
    , <<Target:?GLenum
      >>
    )
.

%% GL_VERSION_1_3

%% Func:       activeTexture
%% Args:       Texture
%% Returns:    ok
%% C-API func: void glActiveTexture(GLenum texture)

activeTexture(Texture)
 -> cast
    ( ?glActiveTexture
    , <<Texture:?GLenum
      >>
    )
.

%% Func:       sampleCoverage
%% Args:       Value, Invert
%% Returns:    ok
%% C-API func: void glSampleCoverage(GLclampf value, GLboolean invert)

sampleCoverage(Value, Invert)
 -> cast
    ( ?glSampleCoverage
    , <<Value:?GLclampf
      , Invert:?GLboolean
      >>
    )
.

%% Func:       compressedTexImage3D
%% Args:       Target, Level, Internalformat, Width, Height, Depth, Border, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexImage3D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* data)

compressedTexImage3D(Target, Level, Internalformat, Width, Height, Depth, Border, ImageSize, Data)
 -> cast
    ( ?glCompressedTexImage3D
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTexImage2D
%% Args:       Target, Level, Internalformat, Width, Height, Border, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* data)

compressedTexImage2D(Target, Level, Internalformat, Width, Height, Border, ImageSize, Data)
 -> cast
    ( ?glCompressedTexImage2D
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTexImage1D
%% Args:       Target, Level, Internalformat, Width, Border, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexImage1D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* data)

compressedTexImage1D(Target, Level, Internalformat, Width, Border, ImageSize, Data)
 -> cast
    ( ?glCompressedTexImage1D
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTexSubImage3D
%% Args:       Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* data)

compressedTexSubImage3D(Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, ImageSize, Data)
 -> cast
    ( ?glCompressedTexSubImage3D
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTexSubImage2D
%% Args:       Target, Level, Xoffset, Yoffset, Width, Height, Format, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* data)

compressedTexSubImage2D(Target, Level, Xoffset, Yoffset, Width, Height, Format, ImageSize, Data)
 -> cast
    ( ?glCompressedTexSubImage2D
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTexSubImage1D
%% Args:       Target, Level, Xoffset, Width, Format, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* data)

compressedTexSubImage1D(Target, Level, Xoffset, Width, Format, ImageSize, Data)
 -> cast
    ( ?glCompressedTexSubImage1D
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Width:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       getCompressedTexImage
%% Args:       Target, Level, Img
%% Returns:    ok
%% C-API func: void glGetCompressedTexImage(GLenum target, GLint level, GLvoid* img)

getCompressedTexImage(Target, Level, Img)
 -> cast
    ( ?glGetCompressedTexImage
    , <<Target:?GLenum
      , Level:?GLint
      , Img:?_PTR
      >>
    )
.

%% GL_VERSION_1_3_DEPRECATED

%% Func:       clientActiveTexture
%% Args:       Texture
%% Returns:    ok
%% C-API func: void glClientActiveTexture(GLenum texture)

clientActiveTexture(Texture)
 -> cast
    ( ?glClientActiveTexture
    , <<Texture:?GLenum
      >>
    )
.

%% Func:       multiTexCoord1d
%% Args:       Target, S
%% Returns:    ok
%% C-API func: void glMultiTexCoord1d(GLenum target, GLdouble s)

multiTexCoord1d(Target, S)
 -> cast
    ( ?glMultiTexCoord1d
    , <<Target:?GLenum
      , S:?GLdouble
      >>
    )
.

%% Func:       multiTexCoord1dv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord1dv(GLenum target, const GLdouble* v)

multiTexCoord1dv(Target, V)
 -> cast
    ( ?glMultiTexCoord1dv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord1f
%% Args:       Target, S
%% Returns:    ok
%% C-API func: void glMultiTexCoord1f(GLenum target, GLfloat s)

multiTexCoord1f(Target, S)
 -> cast
    ( ?glMultiTexCoord1f
    , <<Target:?GLenum
      , S:?GLfloat
      >>
    )
.

%% Func:       multiTexCoord1fv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord1fv(GLenum target, const GLfloat* v)

multiTexCoord1fv(Target, V)
 -> cast
    ( ?glMultiTexCoord1fv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord1i
%% Args:       Target, S
%% Returns:    ok
%% C-API func: void glMultiTexCoord1i(GLenum target, GLint s)

multiTexCoord1i(Target, S)
 -> cast
    ( ?glMultiTexCoord1i
    , <<Target:?GLenum
      , S:?GLint
      >>
    )
.

%% Func:       multiTexCoord1iv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord1iv(GLenum target, const GLint* v)

multiTexCoord1iv(Target, V)
 -> cast
    ( ?glMultiTexCoord1iv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord1s
%% Args:       Target, S
%% Returns:    ok
%% C-API func: void glMultiTexCoord1s(GLenum target, GLshort s)

multiTexCoord1s(Target, S)
 -> cast
    ( ?glMultiTexCoord1s
    , <<Target:?GLenum
      , S:?GLshort
      >>
    )
.

%% Func:       multiTexCoord1sv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord1sv(GLenum target, const GLshort* v)

multiTexCoord1sv(Target, V)
 -> cast
    ( ?glMultiTexCoord1sv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord2d
%% Args:       Target, S, T
%% Returns:    ok
%% C-API func: void glMultiTexCoord2d(GLenum target, GLdouble s, GLdouble t)

multiTexCoord2d(Target, S, T)
 -> cast
    ( ?glMultiTexCoord2d
    , <<Target:?GLenum
      , S:?GLdouble
      , T:?GLdouble
      >>
    )
.

%% Func:       multiTexCoord2dv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord2dv(GLenum target, const GLdouble* v)

multiTexCoord2dv(Target, V)
 -> cast
    ( ?glMultiTexCoord2dv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord2f
%% Args:       Target, S, T
%% Returns:    ok
%% C-API func: void glMultiTexCoord2f(GLenum target, GLfloat s, GLfloat t)

multiTexCoord2f(Target, S, T)
 -> cast
    ( ?glMultiTexCoord2f
    , <<Target:?GLenum
      , S:?GLfloat
      , T:?GLfloat
      >>
    )
.

%% Func:       multiTexCoord2fv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord2fv(GLenum target, const GLfloat* v)

multiTexCoord2fv(Target, V)
 -> cast
    ( ?glMultiTexCoord2fv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord2i
%% Args:       Target, S, T
%% Returns:    ok
%% C-API func: void glMultiTexCoord2i(GLenum target, GLint s, GLint t)

multiTexCoord2i(Target, S, T)
 -> cast
    ( ?glMultiTexCoord2i
    , <<Target:?GLenum
      , S:?GLint
      , T:?GLint
      >>
    )
.

%% Func:       multiTexCoord2iv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord2iv(GLenum target, const GLint* v)

multiTexCoord2iv(Target, V)
 -> cast
    ( ?glMultiTexCoord2iv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord2s
%% Args:       Target, S, T
%% Returns:    ok
%% C-API func: void glMultiTexCoord2s(GLenum target, GLshort s, GLshort t)

multiTexCoord2s(Target, S, T)
 -> cast
    ( ?glMultiTexCoord2s
    , <<Target:?GLenum
      , S:?GLshort
      , T:?GLshort
      >>
    )
.

%% Func:       multiTexCoord2sv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord2sv(GLenum target, const GLshort* v)

multiTexCoord2sv(Target, V)
 -> cast
    ( ?glMultiTexCoord2sv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord3d
%% Args:       Target, S, T, R
%% Returns:    ok
%% C-API func: void glMultiTexCoord3d(GLenum target, GLdouble s, GLdouble t, GLdouble r)

multiTexCoord3d(Target, S, T, R)
 -> cast
    ( ?glMultiTexCoord3d
    , <<Target:?GLenum
      , S:?GLdouble
      , T:?GLdouble
      , R:?GLdouble
      >>
    )
.

%% Func:       multiTexCoord3dv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord3dv(GLenum target, const GLdouble* v)

multiTexCoord3dv(Target, V)
 -> cast
    ( ?glMultiTexCoord3dv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord3f
%% Args:       Target, S, T, R
%% Returns:    ok
%% C-API func: void glMultiTexCoord3f(GLenum target, GLfloat s, GLfloat t, GLfloat r)

multiTexCoord3f(Target, S, T, R)
 -> cast
    ( ?glMultiTexCoord3f
    , <<Target:?GLenum
      , S:?GLfloat
      , T:?GLfloat
      , R:?GLfloat
      >>
    )
.

%% Func:       multiTexCoord3fv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord3fv(GLenum target, const GLfloat* v)

multiTexCoord3fv(Target, V)
 -> cast
    ( ?glMultiTexCoord3fv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord3i
%% Args:       Target, S, T, R
%% Returns:    ok
%% C-API func: void glMultiTexCoord3i(GLenum target, GLint s, GLint t, GLint r)

multiTexCoord3i(Target, S, T, R)
 -> cast
    ( ?glMultiTexCoord3i
    , <<Target:?GLenum
      , S:?GLint
      , T:?GLint
      , R:?GLint
      >>
    )
.

%% Func:       multiTexCoord3iv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord3iv(GLenum target, const GLint* v)

multiTexCoord3iv(Target, V)
 -> cast
    ( ?glMultiTexCoord3iv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord3s
%% Args:       Target, S, T, R
%% Returns:    ok
%% C-API func: void glMultiTexCoord3s(GLenum target, GLshort s, GLshort t, GLshort r)

multiTexCoord3s(Target, S, T, R)
 -> cast
    ( ?glMultiTexCoord3s
    , <<Target:?GLenum
      , S:?GLshort
      , T:?GLshort
      , R:?GLshort
      >>
    )
.

%% Func:       multiTexCoord3sv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord3sv(GLenum target, const GLshort* v)

multiTexCoord3sv(Target, V)
 -> cast
    ( ?glMultiTexCoord3sv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord4d
%% Args:       Target, S, T, R, Q
%% Returns:    ok
%% C-API func: void glMultiTexCoord4d(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)

multiTexCoord4d(Target, S, T, R, Q)
 -> cast
    ( ?glMultiTexCoord4d
    , <<Target:?GLenum
      , S:?GLdouble
      , T:?GLdouble
      , R:?GLdouble
      , Q:?GLdouble
      >>
    )
.

%% Func:       multiTexCoord4dv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord4dv(GLenum target, const GLdouble* v)

multiTexCoord4dv(Target, V)
 -> cast
    ( ?glMultiTexCoord4dv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord4f
%% Args:       Target, S, T, R, Q
%% Returns:    ok
%% C-API func: void glMultiTexCoord4f(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)

multiTexCoord4f(Target, S, T, R, Q)
 -> cast
    ( ?glMultiTexCoord4f
    , <<Target:?GLenum
      , S:?GLfloat
      , T:?GLfloat
      , R:?GLfloat
      , Q:?GLfloat
      >>
    )
.

%% Func:       multiTexCoord4fv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord4fv(GLenum target, const GLfloat* v)

multiTexCoord4fv(Target, V)
 -> cast
    ( ?glMultiTexCoord4fv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord4i
%% Args:       Target, S, T, R, Q
%% Returns:    ok
%% C-API func: void glMultiTexCoord4i(GLenum target, GLint s, GLint t, GLint r, GLint q)

multiTexCoord4i(Target, S, T, R, Q)
 -> cast
    ( ?glMultiTexCoord4i
    , <<Target:?GLenum
      , S:?GLint
      , T:?GLint
      , R:?GLint
      , Q:?GLint
      >>
    )
.

%% Func:       multiTexCoord4iv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord4iv(GLenum target, const GLint* v)

multiTexCoord4iv(Target, V)
 -> cast
    ( ?glMultiTexCoord4iv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord4s
%% Args:       Target, S, T, R, Q
%% Returns:    ok
%% C-API func: void glMultiTexCoord4s(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)

multiTexCoord4s(Target, S, T, R, Q)
 -> cast
    ( ?glMultiTexCoord4s
    , <<Target:?GLenum
      , S:?GLshort
      , T:?GLshort
      , R:?GLshort
      , Q:?GLshort
      >>
    )
.

%% Func:       multiTexCoord4sv
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord4sv(GLenum target, const GLshort* v)

multiTexCoord4sv(Target, V)
 -> cast
    ( ?glMultiTexCoord4sv
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       loadTransposeMatrixf
%% Args:       M
%% Returns:    ok
%% C-API func: void glLoadTransposeMatrixf(const GLfloat* m)

loadTransposeMatrixf(M)
 -> cast
    ( ?glLoadTransposeMatrixf
    , <<M:?_PTR
      >>
    )
.

%% Func:       loadTransposeMatrixd
%% Args:       M
%% Returns:    ok
%% C-API func: void glLoadTransposeMatrixd(const GLdouble* m)

loadTransposeMatrixd(M)
 -> cast
    ( ?glLoadTransposeMatrixd
    , <<M:?_PTR
      >>
    )
.

%% Func:       multTransposeMatrixf
%% Args:       M
%% Returns:    ok
%% C-API func: void glMultTransposeMatrixf(const GLfloat* m)

multTransposeMatrixf(M)
 -> cast
    ( ?glMultTransposeMatrixf
    , <<M:?_PTR
      >>
    )
.

%% Func:       multTransposeMatrixd
%% Args:       M
%% Returns:    ok
%% C-API func: void glMultTransposeMatrixd(const GLdouble* m)

multTransposeMatrixd(M)
 -> cast
    ( ?glMultTransposeMatrixd
    , <<M:?_PTR
      >>
    )
.

%% GL_VERSION_1_4

%% Func:       blendFuncSeparate
%% Args:       SfactorRGB, DfactorRGB, SfactorAlpha, DfactorAlpha
%% Returns:    ok
%% C-API func: void glBlendFuncSeparate(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)

blendFuncSeparate(SfactorRGB, DfactorRGB, SfactorAlpha, DfactorAlpha)
 -> cast
    ( ?glBlendFuncSeparate
    , <<SfactorRGB:?GLenum
      , DfactorRGB:?GLenum
      , SfactorAlpha:?GLenum
      , DfactorAlpha:?GLenum
      >>
    )
.

%% Func:       multiDrawArrays
%% Args:       Mode, First, Count, Primcount
%% Returns:    ok
%% C-API func: void glMultiDrawArrays(GLenum mode, const GLint* first, const GLsizei* count, GLsizei primcount)

multiDrawArrays(Mode, First, Count, Primcount)
 -> cast
    ( ?glMultiDrawArrays
    , <<Mode:?GLenum
      , First:?_PTR
      , Count:?_PTR
      , Primcount:?GLsizei
      >>
    )
.

%% Func:       multiDrawElements
%% Args:       Mode, Count, Type, Indices, Primcount
%% Returns:    ok
%% C-API func: void glMultiDrawElements(GLenum mode, const GLsizei* count, GLenum type, const GLvoid** indices, GLsizei primcount)

multiDrawElements(Mode, Count, Type, Indices, Primcount)
 -> cast
    ( ?glMultiDrawElements
    , <<Mode:?GLenum
      , Count:?_PTR
      , Type:?GLenum
      , Indices:?_PTR
      , Primcount:?GLsizei
      >>
    )
.

%% Func:       pointParameterf
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPointParameterf(GLenum pname, GLfloat param)

pointParameterf(Pname, Param)
 -> cast
    ( ?glPointParameterf
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       pointParameterfv
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glPointParameterfv(GLenum pname, const GLfloat* params)

pointParameterfv(Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glPointParameterfv
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       pointParameteri
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPointParameteri(GLenum pname, GLint param)

pointParameteri(Pname, Param)
 -> cast
    ( ?glPointParameteri
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       pointParameteriv
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glPointParameteriv(GLenum pname, const GLint* params)

pointParameteriv(Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glPointParameteriv
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% GL_VERSION_1_4_DEPRECATED

%% Func:       fogCoordf
%% Args:       Coord
%% Returns:    ok
%% C-API func: void glFogCoordf(GLfloat coord)

fogCoordf(Coord)
 -> cast
    ( ?glFogCoordf
    , <<Coord:?GLfloat
      >>
    )
.

%% Func:       fogCoordfv
%% Args:       Coord
%% Returns:    ok
%% C-API func: void glFogCoordfv(const GLfloat* coord)

fogCoordfv(Coord)
 -> cast
    ( ?glFogCoordfv
    , <<Coord:?_PTR
      >>
    )
.

%% Func:       fogCoordd
%% Args:       Coord
%% Returns:    ok
%% C-API func: void glFogCoordd(GLdouble coord)

fogCoordd(Coord)
 -> cast
    ( ?glFogCoordd
    , <<Coord:?GLdouble
      >>
    )
.

%% Func:       fogCoorddv
%% Args:       Coord
%% Returns:    ok
%% C-API func: void glFogCoorddv(const GLdouble* coord)

fogCoorddv(Coord)
 -> cast
    ( ?glFogCoorddv
    , <<Coord:?_PTR
      >>
    )
.

%% Func:       fogCoordPointer
%% Args:       Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glFogCoordPointer(GLenum type, GLsizei stride, const GLvoid* pointer)

fogCoordPointer(Type, Stride, Pointer)
 -> cast
    ( ?glFogCoordPointer
    , <<Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       secondaryColor3b
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3b(GLbyte red, GLbyte green, GLbyte blue)

secondaryColor3b(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3b
    , <<Red:?GLbyte
      , Green:?GLbyte
      , Blue:?GLbyte
      >>
    )
.

%% Func:       secondaryColor3bv
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3bv(const GLbyte* v)

secondaryColor3bv(V)
 -> cast
    ( ?glSecondaryColor3bv
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3d
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3d(GLdouble red, GLdouble green, GLdouble blue)

secondaryColor3d(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3d
    , <<Red:?GLdouble
      , Green:?GLdouble
      , Blue:?GLdouble
      >>
    )
.

%% Func:       secondaryColor3dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3dv(const GLdouble* v)

secondaryColor3dv(V)
 -> cast
    ( ?glSecondaryColor3dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3f
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3f(GLfloat red, GLfloat green, GLfloat blue)

secondaryColor3f(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3f
    , <<Red:?GLfloat
      , Green:?GLfloat
      , Blue:?GLfloat
      >>
    )
.

%% Func:       secondaryColor3fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3fv(const GLfloat* v)

secondaryColor3fv(V)
 -> cast
    ( ?glSecondaryColor3fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3i
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3i(GLint red, GLint green, GLint blue)

secondaryColor3i(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3i
    , <<Red:?GLint
      , Green:?GLint
      , Blue:?GLint
      >>
    )
.

%% Func:       secondaryColor3iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3iv(const GLint* v)

secondaryColor3iv(V)
 -> cast
    ( ?glSecondaryColor3iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3s
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3s(GLshort red, GLshort green, GLshort blue)

secondaryColor3s(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3s
    , <<Red:?GLshort
      , Green:?GLshort
      , Blue:?GLshort
      >>
    )
.

%% Func:       secondaryColor3sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3sv(const GLshort* v)

secondaryColor3sv(V)
 -> cast
    ( ?glSecondaryColor3sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3ub
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3ub(GLubyte red, GLubyte green, GLubyte blue)

secondaryColor3ub(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3ub
    , <<Red:?GLubyte
      , Green:?GLubyte
      , Blue:?GLubyte
      >>
    )
.

%% Func:       secondaryColor3ubv
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3ubv(const GLubyte* v)

secondaryColor3ubv(V)
 -> cast
    ( ?glSecondaryColor3ubv
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3ui
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3ui(GLuint red, GLuint green, GLuint blue)

secondaryColor3ui(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3ui
    , <<Red:?GLuint
      , Green:?GLuint
      , Blue:?GLuint
      >>
    )
.

%% Func:       secondaryColor3uiv
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3uiv(const GLuint* v)

secondaryColor3uiv(V)
 -> cast
    ( ?glSecondaryColor3uiv
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3us
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3us(GLushort red, GLushort green, GLushort blue)

secondaryColor3us(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3us
    , <<Red:?GLushort
      , Green:?GLushort
      , Blue:?GLushort
      >>
    )
.

%% Func:       secondaryColor3usv
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3usv(const GLushort* v)

secondaryColor3usv(V)
 -> cast
    ( ?glSecondaryColor3usv
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColorPointer
%% Args:       Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glSecondaryColorPointer(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

secondaryColorPointer(Size, Type, Stride, Pointer)
 -> cast
    ( ?glSecondaryColorPointer
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       windowPos2d
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2d(GLdouble x, GLdouble y)

windowPos2d(X, Y)
 -> cast
    ( ?glWindowPos2d
    , <<X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       windowPos2dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2dv(const GLdouble* v)

windowPos2dv(V)
 -> cast
    ( ?glWindowPos2dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos2f
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2f(GLfloat x, GLfloat y)

windowPos2f(X, Y)
 -> cast
    ( ?glWindowPos2f
    , <<X:?GLfloat
      , Y:?GLfloat
      >>
    )
.

%% Func:       windowPos2fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2fv(const GLfloat* v)

windowPos2fv(V)
 -> cast
    ( ?glWindowPos2fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos2i
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2i(GLint x, GLint y)

windowPos2i(X, Y)
 -> cast
    ( ?glWindowPos2i
    , <<X:?GLint
      , Y:?GLint
      >>
    )
.

%% Func:       windowPos2iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2iv(const GLint* v)

windowPos2iv(V)
 -> cast
    ( ?glWindowPos2iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos2s
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2s(GLshort x, GLshort y)

windowPos2s(X, Y)
 -> cast
    ( ?glWindowPos2s
    , <<X:?GLshort
      , Y:?GLshort
      >>
    )
.

%% Func:       windowPos2sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2sv(const GLshort* v)

windowPos2sv(V)
 -> cast
    ( ?glWindowPos2sv
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3d
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3d(GLdouble x, GLdouble y, GLdouble z)

windowPos3d(X, Y, Z)
 -> cast
    ( ?glWindowPos3d
    , <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       windowPos3dv
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3dv(const GLdouble* v)

windowPos3dv(V)
 -> cast
    ( ?glWindowPos3dv
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3f
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3f(GLfloat x, GLfloat y, GLfloat z)

windowPos3f(X, Y, Z)
 -> cast
    ( ?glWindowPos3f
    , <<X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       windowPos3fv
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3fv(const GLfloat* v)

windowPos3fv(V)
 -> cast
    ( ?glWindowPos3fv
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3i
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3i(GLint x, GLint y, GLint z)

windowPos3i(X, Y, Z)
 -> cast
    ( ?glWindowPos3i
    , <<X:?GLint
      , Y:?GLint
      , Z:?GLint
      >>
    )
.

%% Func:       windowPos3iv
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3iv(const GLint* v)

windowPos3iv(V)
 -> cast
    ( ?glWindowPos3iv
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3s
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3s(GLshort x, GLshort y, GLshort z)

windowPos3s(X, Y, Z)
 -> cast
    ( ?glWindowPos3s
    , <<X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      >>
    )
.

%% Func:       windowPos3sv
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3sv(const GLshort* v)

windowPos3sv(V)
 -> cast
    ( ?glWindowPos3sv
    , <<V:?_PTR
      >>
    )
.

%% GL_VERSION_1_5

%% Func:       genQueries
%% Args:       N, Ids
%% Returns:    ok
%% C-API func: void glGenQueries(GLsizei n, GLuint* ids)

genQueries(N, Ids)
 -> cast
    ( ?glGenQueries
    , <<N:?GLsizei
      , Ids:?_PTR
      >>
    )
.

%% Func:       deleteQueries
%% Args:       N, Ids
%% Returns:    ok
%% C-API func: void glDeleteQueries(GLsizei n, const GLuint* ids)

deleteQueries(N, Ids)
 -> cast
    ( ?glDeleteQueries
    , <<N:?GLsizei
      , Ids:?_PTR
      >>
    )
.

%% Func:       isQuery
%% Args:       Id
%% Returns:    GLboolean
%% C-API func: GLboolean glIsQuery(GLuint id)

isQuery(Id)
 -> Bin
    = call
      ( ?glIsQuery
      , <<Id:?GLuint
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

%% Func:       beginQuery
%% Args:       Target, Id
%% Returns:    ok
%% C-API func: void glBeginQuery(GLenum target, GLuint id)

beginQuery(Target, Id)
 -> cast
    ( ?glBeginQuery
    , <<Target:?GLenum
      , Id:?GLuint
      >>
    )
.

%% Func:       endQuery
%% Args:       Target
%% Returns:    ok
%% C-API func: void glEndQuery(GLenum target)

endQuery(Target)
 -> cast
    ( ?glEndQuery
    , <<Target:?GLenum
      >>
    )
.

%% Func:       getQueryiv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetQueryiv(GLenum target, GLenum pname, GLint* params)

getQueryiv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetQueryiv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetQueryivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getQueryObjectiv
%% Args:       Id, Pname
%% Returns:    [Params]
%% C-API func: void glGetQueryObjectiv(GLuint id, GLenum pname, GLint* params)

getQueryObjectiv(Id, Pname, Params)
 -> Bin
    = call
      ( ?glGetQueryObjectiv
      , <<Id:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetQueryObjectivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getQueryObjectuiv
%% Args:       Id, Pname, Params
%% Returns:    ok
%% C-API func: void glGetQueryObjectuiv(GLuint id, GLenum pname, GLuint* params)

getQueryObjectuiv(Id, Pname, Params)
 -> cast
    ( ?glGetQueryObjectuiv
    , <<Id:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       bindBuffer
%% Args:       Target, Buffer
%% Returns:    ok
%% C-API func: void glBindBuffer(GLenum target, GLuint buffer)

bindBuffer(Target, Buffer)
 -> cast
    ( ?glBindBuffer
    , <<Target:?GLenum
      , Buffer:?GLuint
      >>
    )
.

%% Func:       deleteBuffers
%% Args:       N, Buffers
%% Returns:    ok
%% C-API func: void glDeleteBuffers(GLsizei n, const GLuint* buffers)

deleteBuffers(N, Buffers)
 -> cast
    ( ?glDeleteBuffers
    , <<N:?GLsizei
      , Buffers:?_PTR
      >>
    )
.

%% Func:       genBuffers
%% Args:       N, Buffers
%% Returns:    ok
%% C-API func: void glGenBuffers(GLsizei n, GLuint* buffers)

genBuffers(N, Buffers)
 -> cast
    ( ?glGenBuffers
    , <<N:?GLsizei
      , Buffers:?_PTR
      >>
    )
.

%% Func:       isBuffer
%% Args:       Buffer
%% Returns:    GLboolean
%% C-API func: GLboolean glIsBuffer(GLuint buffer)

isBuffer(Buffer)
 -> Bin
    = call
      ( ?glIsBuffer
      , <<Buffer:?GLuint
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

%% Func:       bufferData
%% Args:       Target, Size, Data, Usage
%% Returns:    ok
%% C-API func: void glBufferData(GLenum target, GLsizeiptr size, const GLvoid* data, GLenum usage)

bufferData(Target, Size, Data, Usage)
 -> cast
    ( ?glBufferData
    , <<Target:?GLenum
      , Size:?GLsizeiptr
      , Data:?_PTR
      , Usage:?GLenum
      >>
    )
.

%% Func:       bufferSubData
%% Args:       Target, Offset, Size, Data
%% Returns:    ok
%% C-API func: void glBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, const GLvoid* data)

bufferSubData(Target, Offset, Size, Data)
 -> cast
    ( ?glBufferSubData
    , <<Target:?GLenum
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      , Data:?_PTR
      >>
    )
.

%% Func:       getBufferSubData
%% Args:       Target, Offset, Size, Data
%% Returns:    ok
%% C-API func: void glGetBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, GLvoid* data)

getBufferSubData(Target, Offset, Size, Data)
 -> cast
    ( ?glGetBufferSubData
    , <<Target:?GLenum
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      , Data:?_PTR
      >>
    )
.

%% Func:       mapBuffer
%% Args:       Target, Access
%% Returns:    ok
%% C-API func: GLvoid* glMapBuffer(GLenum target, GLenum access)

mapBuffer(Target, Access)
 -> cast
    ( ?glMapBuffer
    , <<Target:?GLenum
      , Access:?GLenum
      >>
    )
.

%% Func:       unmapBuffer
%% Args:       Target
%% Returns:    GLboolean
%% C-API func: GLboolean glUnmapBuffer(GLenum target)

unmapBuffer(Target)
 -> Bin
    = call
      ( ?glUnmapBuffer
      , <<Target:?GLenum
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

%% Func:       getBufferParameteriv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetBufferParameteriv(GLenum target, GLenum pname, GLint* params)

getBufferParameteriv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetBufferParameteriv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetBufferParameterivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getBufferPointerv
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glGetBufferPointerv(GLenum target, GLenum pname, GLvoid** params)

getBufferPointerv(Target, Pname, Params)
 -> cast
    ( ?glGetBufferPointerv
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% GL_VERSION_2_0

%% Func:       blendEquationSeparate
%% Args:       ModeRGB, ModeAlpha
%% Returns:    ok
%% C-API func: void glBlendEquationSeparate(GLenum modeRGB, GLenum modeAlpha)

blendEquationSeparate(ModeRGB, ModeAlpha)
 -> cast
    ( ?glBlendEquationSeparate
    , <<ModeRGB:?GLenum
      , ModeAlpha:?GLenum
      >>
    )
.

%% Func:       drawBuffers
%% Args:       N, Bufs
%% Returns:    ok
%% C-API func: void glDrawBuffers(GLsizei n, const GLenum* bufs)

drawBuffers(N, Bufs)
 -> cast
    ( ?glDrawBuffers
    , <<N:?GLsizei
      , Bufs:?_PTR
      >>
    )
.

%% Func:       stencilOpSeparate
%% Args:       Face, Sfail, Dpfail, Dppass
%% Returns:    ok
%% C-API func: void glStencilOpSeparate(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)

stencilOpSeparate(Face, Sfail, Dpfail, Dppass)
 -> cast
    ( ?glStencilOpSeparate
    , <<Face:?GLenum
      , Sfail:?GLenum
      , Dpfail:?GLenum
      , Dppass:?GLenum
      >>
    )
.

%% Func:       stencilFuncSeparate
%% Args:       Face, Func, Ref, Mask
%% Returns:    ok
%% C-API func: void glStencilFuncSeparate(GLenum face, GLenum func, GLint ref, GLuint mask)

stencilFuncSeparate(Face, Func, Ref, Mask)
 -> cast
    ( ?glStencilFuncSeparate
    , <<Face:?GLenum
      , Func:?GLenum
      , Ref:?GLint
      , Mask:?GLuint
      >>
    )
.

%% Func:       stencilMaskSeparate
%% Args:       Face, Mask
%% Returns:    ok
%% C-API func: void glStencilMaskSeparate(GLenum face, GLuint mask)

stencilMaskSeparate(Face, Mask)
 -> cast
    ( ?glStencilMaskSeparate
    , <<Face:?GLenum
      , Mask:?GLuint
      >>
    )
.

%% Func:       attachShader
%% Args:       Program, Shader
%% Returns:    ok
%% C-API func: void glAttachShader(GLuint program, GLuint shader)

attachShader(Program, Shader)
 -> cast
    ( ?glAttachShader
    , <<Program:?GLuint
      , Shader:?GLuint
      >>
    )
.

%% Func:       bindAttribLocation
%% Args:       Program, Index, Name
%% Returns:    ok
%% C-API func: void glBindAttribLocation(GLuint program, GLuint index, const GLchar* name)

bindAttribLocation(Program, Index, Name)
 -> cast
    ( ?glBindAttribLocation
    , <<Program:?GLuint
      , Index:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       compileShader
%% Args:       Shader
%% Returns:    ok
%% C-API func: void glCompileShader(GLuint shader)

compileShader(Shader)
 -> cast
    ( ?glCompileShader
    , <<Shader:?GLuint
      >>
    )
.

%% Func:       createProgram
%% Args:       
%% Returns:    GLuint
%% C-API func: GLuint glCreateProgram()

createProgram()
 -> Bin
    = call
      ( ?glCreateProgram
      , <<
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

%% Func:       createShader
%% Args:       Type
%% Returns:    GLuint
%% C-API func: GLuint glCreateShader(GLenum type)

createShader(Type)
 -> Bin
    = call
      ( ?glCreateShader
      , <<Type:?GLenum
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

%% Func:       deleteProgram
%% Args:       Program
%% Returns:    ok
%% C-API func: void glDeleteProgram(GLuint program)

deleteProgram(Program)
 -> cast
    ( ?glDeleteProgram
    , <<Program:?GLuint
      >>
    )
.

%% Func:       deleteShader
%% Args:       Shader
%% Returns:    ok
%% C-API func: void glDeleteShader(GLuint shader)

deleteShader(Shader)
 -> cast
    ( ?glDeleteShader
    , <<Shader:?GLuint
      >>
    )
.

%% Func:       detachShader
%% Args:       Program, Shader
%% Returns:    ok
%% C-API func: void glDetachShader(GLuint program, GLuint shader)

detachShader(Program, Shader)
 -> cast
    ( ?glDetachShader
    , <<Program:?GLuint
      , Shader:?GLuint
      >>
    )
.

%% Func:       disableVertexAttribArray
%% Args:       Index
%% Returns:    ok
%% C-API func: void glDisableVertexAttribArray(GLuint index)

disableVertexAttribArray(Index)
 -> cast
    ( ?glDisableVertexAttribArray
    , <<Index:?GLuint
      >>
    )
.

%% Func:       enableVertexAttribArray
%% Args:       Index
%% Returns:    ok
%% C-API func: void glEnableVertexAttribArray(GLuint index)

enableVertexAttribArray(Index)
 -> cast
    ( ?glEnableVertexAttribArray
    , <<Index:?GLuint
      >>
    )
.

%% Func:       getActiveAttrib
%% Args:       Program, Index, BufSize, Length, Size, Type, Name
%% Returns:    ok
%% C-API func: void glGetActiveAttrib(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name)

getActiveAttrib(Program, Index, BufSize, Length, Size, Type, Name)
 -> cast
    ( ?glGetActiveAttrib
    , <<Program:?GLuint
      , Index:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , Size:?_PTR
      , Type:?_PTR
      , Name:?_PTR
      >>
    )
.

%% Func:       getActiveUniform
%% Args:       Program, Index, BufSize, Length, Size, Type, Name
%% Returns:    ok
%% C-API func: void glGetActiveUniform(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name)

getActiveUniform(Program, Index, BufSize, Length, Size, Type, Name)
 -> cast
    ( ?glGetActiveUniform
    , <<Program:?GLuint
      , Index:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , Size:?_PTR
      , Type:?_PTR
      , Name:?_PTR
      >>
    )
.

%% Func:       getAttachedShaders
%% Args:       Program, MaxCount, Count, Obj
%% Returns:    ok
%% C-API func: void glGetAttachedShaders(GLuint program, GLsizei maxCount, GLsizei* count, GLuint* obj)

getAttachedShaders(Program, MaxCount, Count, Obj)
 -> cast
    ( ?glGetAttachedShaders
    , <<Program:?GLuint
      , MaxCount:?GLsizei
      , Count:?_PTR
      , Obj:?_PTR
      >>
    )
.

%% Func:       getAttribLocation
%% Args:       Program, Name
%% Returns:    GLint
%% C-API func: GLint glGetAttribLocation(GLuint program, const GLchar* name)

getAttribLocation(Program, Name)
 -> cast
    ( ?glGetAttribLocation
    , <<Program:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       getProgramiv
%% Args:       Program, Pname
%% Returns:    [Params]
%% C-API func: void glGetProgramiv(GLuint program, GLenum pname, GLint* params)

getProgramiv(Program, Pname, Params)
 -> Bin
    = call
      ( ?glGetProgramiv
      , <<Program:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetProgramivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getProgramInfoLog
%% Args:       Program, BufSize, Length, InfoLog
%% Returns:    ok
%% C-API func: void glGetProgramInfoLog(GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

getProgramInfoLog(Program, BufSize, Length, InfoLog)
 -> cast
    ( ?glGetProgramInfoLog
    , <<Program:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , InfoLog:?_PTR
      >>
    )
.

%% Func:       getShaderiv
%% Args:       Shader, Pname
%% Returns:    [Params]
%% C-API func: void glGetShaderiv(GLuint shader, GLenum pname, GLint* params)

getShaderiv(Shader, Pname, Params)
 -> Bin
    = call
      ( ?glGetShaderiv
      , <<Shader:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetShaderivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getShaderInfoLog
%% Args:       Shader, BufSize, Length, InfoLog
%% Returns:    ok
%% C-API func: void glGetShaderInfoLog(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

getShaderInfoLog(Shader, BufSize, Length, InfoLog)
 -> cast
    ( ?glGetShaderInfoLog
    , <<Shader:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , InfoLog:?_PTR
      >>
    )
.

%% Func:       getShaderSource
%% Args:       Shader, BufSize, Length, Source
%% Returns:    ok
%% C-API func: void glGetShaderSource(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source)

getShaderSource(Shader, BufSize, Length, Source)
 -> cast
    ( ?glGetShaderSource
    , <<Shader:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , Source:?_PTR
      >>
    )
.

%% Func:       getUniformLocation
%% Args:       Program, Name
%% Returns:    GLint
%% C-API func: GLint glGetUniformLocation(GLuint program, const GLchar* name)

getUniformLocation(Program, Name)
 -> cast
    ( ?glGetUniformLocation
    , <<Program:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       getUniformfv
%% Args:       Program, Location
%% Returns:    [Params]
%% C-API func: void glGetUniformfv(GLuint program, GLint location, GLfloat* params)

getUniformfv(Program, Location, Params)
 -> Bin
    = call
      ( ?glGetUniformfv
      , <<Program:?GLuint
        , Location:?GLint
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

%% Func:       getUniformiv
%% Args:       Program, Location
%% Returns:    [Params]
%% C-API func: void glGetUniformiv(GLuint program, GLint location, GLint* params)

getUniformiv(Program, Location, Params)
 -> Bin
    = call
      ( ?glGetUniformiv
      , <<Program:?GLuint
        , Location:?GLint
        >>
      )
  , ParamsLen
    = glGetUniformivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getVertexAttribdv
%% Args:       Index, Pname, Params
%% Returns:    ok
%% C-API func: void glGetVertexAttribdv(GLuint index, GLenum pname, GLdouble* params)

getVertexAttribdv(Index, Pname, Params)
 -> cast
    ( ?glGetVertexAttribdv
    , <<Index:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getVertexAttribfv
%% Args:       Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetVertexAttribfv(GLuint index, GLenum pname, GLfloat* params)

getVertexAttribfv(Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetVertexAttribfv
      , <<Index:?GLuint
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

%% Func:       getVertexAttribiv
%% Args:       Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetVertexAttribiv(GLuint index, GLenum pname, GLint* params)

getVertexAttribiv(Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetVertexAttribiv
      , <<Index:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetVertexAttribivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getVertexAttribPointerv
%% Args:       Index, Pname, Pointer
%% Returns:    ok
%% C-API func: void glGetVertexAttribPointerv(GLuint index, GLenum pname, GLvoid** pointer)

getVertexAttribPointerv(Index, Pname, Pointer)
 -> cast
    ( ?glGetVertexAttribPointerv
    , <<Index:?GLuint
      , Pname:?GLenum
      , Pointer:?_PTR
      >>
    )
.

%% Func:       isProgram
%% Args:       Program
%% Returns:    GLboolean
%% C-API func: GLboolean glIsProgram(GLuint program)

isProgram(Program)
 -> Bin
    = call
      ( ?glIsProgram
      , <<Program:?GLuint
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

%% Func:       isShader
%% Args:       Shader
%% Returns:    GLboolean
%% C-API func: GLboolean glIsShader(GLuint shader)

isShader(Shader)
 -> Bin
    = call
      ( ?glIsShader
      , <<Shader:?GLuint
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

%% Func:       linkProgram
%% Args:       Program
%% Returns:    ok
%% C-API func: void glLinkProgram(GLuint program)

linkProgram(Program)
 -> cast
    ( ?glLinkProgram
    , <<Program:?GLuint
      >>
    )
.

%% Func:       shaderSource
%% Args:       Shader, Count, String, Length
%% Returns:    ok
%% C-API func: void glShaderSource(GLuint shader, GLsizei count, const GLchar** string, const GLint* length)

shaderSource(Shader, Count, String, Length)
 -> cast
    ( ?glShaderSource
    , <<Shader:?GLuint
      , Count:?GLsizei
      , String:?_PTR
      , Length:?_PTR
      >>
    )
.

%% Func:       useProgram
%% Args:       Program
%% Returns:    ok
%% C-API func: void glUseProgram(GLuint program)

useProgram(Program)
 -> cast
    ( ?glUseProgram
    , <<Program:?GLuint
      >>
    )
.

%% Func:       uniform1f
%% Args:       Location, V0
%% Returns:    ok
%% C-API func: void glUniform1f(GLint location, GLfloat v0)

uniform1f(Location, V0)
 -> cast
    ( ?glUniform1f
    , <<Location:?GLint
      , V0:?GLfloat
      >>
    )
.

%% Func:       uniform2f
%% Args:       Location, V0, V1
%% Returns:    ok
%% C-API func: void glUniform2f(GLint location, GLfloat v0, GLfloat v1)

uniform2f(Location, V0, V1)
 -> cast
    ( ?glUniform2f
    , <<Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      >>
    )
.

%% Func:       uniform3f
%% Args:       Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glUniform3f(GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

uniform3f(Location, V0, V1, V2)
 -> cast
    ( ?glUniform3f
    , <<Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      , V2:?GLfloat
      >>
    )
.

%% Func:       uniform4f
%% Args:       Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glUniform4f(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)

uniform4f(Location, V0, V1, V2, V3)
 -> cast
    ( ?glUniform4f
    , <<Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      >>
    )
.

%% Func:       uniform1i
%% Args:       Location, V0
%% Returns:    ok
%% C-API func: void glUniform1i(GLint location, GLint v0)

uniform1i(Location, V0)
 -> cast
    ( ?glUniform1i
    , <<Location:?GLint
      , V0:?GLint
      >>
    )
.

%% Func:       uniform2i
%% Args:       Location, V0, V1
%% Returns:    ok
%% C-API func: void glUniform2i(GLint location, GLint v0, GLint v1)

uniform2i(Location, V0, V1)
 -> cast
    ( ?glUniform2i
    , <<Location:?GLint
      , V0:?GLint
      , V1:?GLint
      >>
    )
.

%% Func:       uniform3i
%% Args:       Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glUniform3i(GLint location, GLint v0, GLint v1, GLint v2)

uniform3i(Location, V0, V1, V2)
 -> cast
    ( ?glUniform3i
    , <<Location:?GLint
      , V0:?GLint
      , V1:?GLint
      , V2:?GLint
      >>
    )
.

%% Func:       uniform4i
%% Args:       Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glUniform4i(GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

uniform4i(Location, V0, V1, V2, V3)
 -> cast
    ( ?glUniform4i
    , <<Location:?GLint
      , V0:?GLint
      , V1:?GLint
      , V2:?GLint
      , V3:?GLint
      >>
    )
.

%% Func:       uniform1fv
%% Args:       Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniform1fv(GLint location, GLsizei count, const GLfloat* value)

uniform1fv(Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniform1fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       uniform2fv
%% Args:       Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniform2fv(GLint location, GLsizei count, const GLfloat* value)

uniform2fv(Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniform2fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       uniform3fv
%% Args:       Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniform3fv(GLint location, GLsizei count, const GLfloat* value)

uniform3fv(Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniform3fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       uniform4fv
%% Args:       Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniform4fv(GLint location, GLsizei count, const GLfloat* value)

uniform4fv(Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniform4fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       uniform1iv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform1iv(GLint location, GLsizei count, const GLint* value)

uniform1iv(Location, Count, Value)
 -> cast
    ( ?glUniform1iv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform2iv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform2iv(GLint location, GLsizei count, const GLint* value)

uniform2iv(Location, Count, Value)
 -> cast
    ( ?glUniform2iv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform3iv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform3iv(GLint location, GLsizei count, const GLint* value)

uniform3iv(Location, Count, Value)
 -> cast
    ( ?glUniform3iv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform4iv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform4iv(GLint location, GLsizei count, const GLint* value)

uniform4iv(Location, Count, Value)
 -> cast
    ( ?glUniform4iv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix2fv
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix2fv(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix2fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       uniformMatrix3fv
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix3fv(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix3fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       uniformMatrix4fv
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix4fv(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix4fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       validateProgram
%% Args:       Program
%% Returns:    ok
%% C-API func: void glValidateProgram(GLuint program)

validateProgram(Program)
 -> cast
    ( ?glValidateProgram
    , <<Program:?GLuint
      >>
    )
.

%% Func:       vertexAttrib1d
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttrib1d(GLuint index, GLdouble x)

vertexAttrib1d(Index, X)
 -> cast
    ( ?glVertexAttrib1d
    , <<Index:?GLuint
      , X:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib1dv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib1dv(GLuint index, const GLdouble* v)

vertexAttrib1dv(Index, V)
 -> cast
    ( ?glVertexAttrib1dv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib1f
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttrib1f(GLuint index, GLfloat x)

vertexAttrib1f(Index, X)
 -> cast
    ( ?glVertexAttrib1f
    , <<Index:?GLuint
      , X:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib1fv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib1fv(GLuint index, const GLfloat* v)

vertexAttrib1fv(Index, V)
 -> cast
    ( ?glVertexAttrib1fv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib1s
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttrib1s(GLuint index, GLshort x)

vertexAttrib1s(Index, X)
 -> cast
    ( ?glVertexAttrib1s
    , <<Index:?GLuint
      , X:?GLshort
      >>
    )
.

%% Func:       vertexAttrib1sv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib1sv(GLuint index, const GLshort* v)

vertexAttrib1sv(Index, V)
 -> cast
    ( ?glVertexAttrib1sv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib2d
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttrib2d(GLuint index, GLdouble x, GLdouble y)

vertexAttrib2d(Index, X, Y)
 -> cast
    ( ?glVertexAttrib2d
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib2dv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib2dv(GLuint index, const GLdouble* v)

vertexAttrib2dv(Index, V)
 -> cast
    ( ?glVertexAttrib2dv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib2f
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttrib2f(GLuint index, GLfloat x, GLfloat y)

vertexAttrib2f(Index, X, Y)
 -> cast
    ( ?glVertexAttrib2f
    , <<Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib2fv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib2fv(GLuint index, const GLfloat* v)

vertexAttrib2fv(Index, V)
 -> cast
    ( ?glVertexAttrib2fv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib2s
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttrib2s(GLuint index, GLshort x, GLshort y)

vertexAttrib2s(Index, X, Y)
 -> cast
    ( ?glVertexAttrib2s
    , <<Index:?GLuint
      , X:?GLshort
      , Y:?GLshort
      >>
    )
.

%% Func:       vertexAttrib2sv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib2sv(GLuint index, const GLshort* v)

vertexAttrib2sv(Index, V)
 -> cast
    ( ?glVertexAttrib2sv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib3d
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttrib3d(GLuint index, GLdouble x, GLdouble y, GLdouble z)

vertexAttrib3d(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttrib3d
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib3dv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib3dv(GLuint index, const GLdouble* v)

vertexAttrib3dv(Index, V)
 -> cast
    ( ?glVertexAttrib3dv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib3f
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttrib3f(GLuint index, GLfloat x, GLfloat y, GLfloat z)

vertexAttrib3f(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttrib3f
    , <<Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib3fv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib3fv(GLuint index, const GLfloat* v)

vertexAttrib3fv(Index, V)
 -> cast
    ( ?glVertexAttrib3fv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib3s
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttrib3s(GLuint index, GLshort x, GLshort y, GLshort z)

vertexAttrib3s(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttrib3s
    , <<Index:?GLuint
      , X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      >>
    )
.

%% Func:       vertexAttrib3sv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib3sv(GLuint index, const GLshort* v)

vertexAttrib3sv(Index, V)
 -> cast
    ( ?glVertexAttrib3sv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4Nbv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4Nbv(GLuint index, const GLbyte* v)

vertexAttrib4Nbv(Index, V)
 -> cast
    ( ?glVertexAttrib4Nbv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4Niv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4Niv(GLuint index, const GLint* v)

vertexAttrib4Niv(Index, V)
 -> cast
    ( ?glVertexAttrib4Niv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4Nsv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4Nsv(GLuint index, const GLshort* v)

vertexAttrib4Nsv(Index, V)
 -> cast
    ( ?glVertexAttrib4Nsv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4Nub
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4Nub(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)

vertexAttrib4Nub(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4Nub
    , <<Index:?GLuint
      , X:?GLubyte
      , Y:?GLubyte
      , Z:?GLubyte
      , W:?GLubyte
      >>
    )
.

%% Func:       vertexAttrib4Nubv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4Nubv(GLuint index, const GLubyte* v)

vertexAttrib4Nubv(Index, V)
 -> cast
    ( ?glVertexAttrib4Nubv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4Nuiv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4Nuiv(GLuint index, const GLuint* v)

vertexAttrib4Nuiv(Index, V)
 -> cast
    ( ?glVertexAttrib4Nuiv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4Nusv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4Nusv(GLuint index, const GLushort* v)

vertexAttrib4Nusv(Index, V)
 -> cast
    ( ?glVertexAttrib4Nusv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4bv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4bv(GLuint index, const GLbyte* v)

vertexAttrib4bv(Index, V)
 -> cast
    ( ?glVertexAttrib4bv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4d
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4d(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

vertexAttrib4d(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4d
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib4dv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4dv(GLuint index, const GLdouble* v)

vertexAttrib4dv(Index, V)
 -> cast
    ( ?glVertexAttrib4dv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4f
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4f(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

vertexAttrib4f(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4f
    , <<Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib4fv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4fv(GLuint index, const GLfloat* v)

vertexAttrib4fv(Index, V)
 -> cast
    ( ?glVertexAttrib4fv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4iv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4iv(GLuint index, const GLint* v)

vertexAttrib4iv(Index, V)
 -> cast
    ( ?glVertexAttrib4iv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4s
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4s(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)

vertexAttrib4s(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4s
    , <<Index:?GLuint
      , X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      , W:?GLshort
      >>
    )
.

%% Func:       vertexAttrib4sv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4sv(GLuint index, const GLshort* v)

vertexAttrib4sv(Index, V)
 -> cast
    ( ?glVertexAttrib4sv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4ubv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4ubv(GLuint index, const GLubyte* v)

vertexAttrib4ubv(Index, V)
 -> cast
    ( ?glVertexAttrib4ubv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4uiv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4uiv(GLuint index, const GLuint* v)

vertexAttrib4uiv(Index, V)
 -> cast
    ( ?glVertexAttrib4uiv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4usv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4usv(GLuint index, const GLushort* v)

vertexAttrib4usv(Index, V)
 -> cast
    ( ?glVertexAttrib4usv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribPointer
%% Args:       Index, Size, Type, Normalized, Stride, Pointer
%% Returns:    ok
%% C-API func: void glVertexAttribPointer(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid* pointer)

vertexAttribPointer(Index, Size, Type, Normalized, Stride, Pointer)
 -> cast
    ( ?glVertexAttribPointer
    , <<Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% GL_VERSION_2_1

%% Func:       uniformMatrix2x3fv
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix2x3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix2x3fv(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix2x3fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       uniformMatrix3x2fv
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix3x2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix3x2fv(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix3x2fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       uniformMatrix2x4fv
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix2x4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix2x4fv(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix2x4fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       uniformMatrix4x2fv
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix4x2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix4x2fv(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix4x2fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       uniformMatrix3x4fv
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix3x4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix3x4fv(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix3x4fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       uniformMatrix4x3fv
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix4x3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix4x3fv(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix4x3fv
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% GL_VERSION_3_0

%% Func:       colorMaski
%% Args:       Index, R, G, B, A
%% Returns:    ok
%% C-API func: void glColorMaski(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a)

colorMaski(Index, R, G, B, A)
 -> cast
    ( ?glColorMaski
    , <<Index:?GLuint
      , R:?GLboolean
      , G:?GLboolean
      , B:?GLboolean
      , A:?GLboolean
      >>
    )
.

%% Func:       getBooleani_v
%% Args:       Target, Index, Data
%% Returns:    ok
%% C-API func: void glGetBooleani_v(GLenum target, GLuint index, GLboolean* data)

getBooleani_v(Target, Index, Data)
 -> cast
    ( ?glGetBooleani_v
    , <<Target:?GLenum
      , Index:?GLuint
      , Data:?_PTR
      >>
    )
.

%% Func:       getIntegeri_v
%% Args:       Target, Index, Data
%% Returns:    ok
%% C-API func: void glGetIntegeri_v(GLenum target, GLuint index, GLint* data)

getIntegeri_v(Target, Index, Data)
 -> cast
    ( ?glGetIntegeri_v
    , <<Target:?GLenum
      , Index:?GLuint
      , Data:?_PTR
      >>
    )
.

%% Func:       enablei
%% Args:       Target, Index
%% Returns:    ok
%% C-API func: void glEnablei(GLenum target, GLuint index)

enablei(Target, Index)
 -> cast
    ( ?glEnablei
    , <<Target:?GLenum
      , Index:?GLuint
      >>
    )
.

%% Func:       disablei
%% Args:       Target, Index
%% Returns:    ok
%% C-API func: void glDisablei(GLenum target, GLuint index)

disablei(Target, Index)
 -> cast
    ( ?glDisablei
    , <<Target:?GLenum
      , Index:?GLuint
      >>
    )
.

%% Func:       isEnabledi
%% Args:       Target, Index
%% Returns:    GLboolean
%% C-API func: GLboolean glIsEnabledi(GLenum target, GLuint index)

isEnabledi(Target, Index)
 -> Bin
    = call
      ( ?glIsEnabledi
      , <<Target:?GLenum
        , Index:?GLuint
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

%% Func:       beginTransformFeedback
%% Args:       PrimitiveMode
%% Returns:    ok
%% C-API func: void glBeginTransformFeedback(GLenum primitiveMode)

beginTransformFeedback(PrimitiveMode)
 -> cast
    ( ?glBeginTransformFeedback
    , <<PrimitiveMode:?GLenum
      >>
    )
.

%% Func:       endTransformFeedback
%% Args:       
%% Returns:    ok
%% C-API func: void glEndTransformFeedback()

endTransformFeedback()
 -> cast
    ( ?glEndTransformFeedback
    , <<
      >>
    )
.

%% Func:       bindBufferRange
%% Args:       Target, Index, Buffer, Offset, Size
%% Returns:    ok
%% C-API func: void glBindBufferRange(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

bindBufferRange(Target, Index, Buffer, Offset, Size)
 -> cast
    ( ?glBindBufferRange
    , <<Target:?GLenum
      , Index:?GLuint
      , Buffer:?GLuint
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      >>
    )
.

%% Func:       bindBufferBase
%% Args:       Target, Index, Buffer
%% Returns:    ok
%% C-API func: void glBindBufferBase(GLenum target, GLuint index, GLuint buffer)

bindBufferBase(Target, Index, Buffer)
 -> cast
    ( ?glBindBufferBase
    , <<Target:?GLenum
      , Index:?GLuint
      , Buffer:?GLuint
      >>
    )
.

%% Func:       transformFeedbackVaryings
%% Args:       Program, Count, Varyings, BufferMode
%% Returns:    ok
%% C-API func: void glTransformFeedbackVaryings(GLuint program, GLsizei count, const GLchar** varyings, GLenum bufferMode);

transformFeedbackVaryings(Program, Count, Varyings, BufferMode)
 -> cast
    ( ?glTransformFeedbackVaryings
    , <<Program:?GLuint
      , Count:?GLsizei
      , Varyings:?_PTR
      , BufferMode:?GLenum
      >>
    )
.

%% Func:       getTransformFeedbackVarying
%% Args:       Program, Index, BufSize, Length, Size, Type, Name
%% Returns:    ok
%% C-API func: void glGetTransformFeedbackVarying(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);

getTransformFeedbackVarying(Program, Index, BufSize, Length, Size, Type, Name)
 -> cast
    ( ?glGetTransformFeedbackVarying
    , <<Program:?GLuint
      , Index:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , Size:?_PTR
      , Type:?_PTR
      , Name:?_PTR
      >>
    )
.

%% Func:       clampColor
%% Args:       Target, Clamp
%% Returns:    ok
%% C-API func: void glClampColor(GLenum target, GLenum clamp)

clampColor(Target, Clamp)
 -> cast
    ( ?glClampColor
    , <<Target:?GLenum
      , Clamp:?GLenum
      >>
    )
.

%% Func:       beginConditionalRender
%% Args:       Id, Mode
%% Returns:    ok
%% C-API func: void glBeginConditionalRender(GLuint id, GLenum mode)

beginConditionalRender(Id, Mode)
 -> cast
    ( ?glBeginConditionalRender
    , <<Id:?GLuint
      , Mode:?GLenum
      >>
    )
.

%% Func:       endConditionalRender
%% Args:       
%% Returns:    ok
%% C-API func: void glEndConditionalRender()

endConditionalRender()
 -> cast
    ( ?glEndConditionalRender
    , <<
      >>
    )
.

%% Func:       vertexAttribIPointer
%% Args:       Index, Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glVertexAttribIPointer(GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

vertexAttribIPointer(Index, Size, Type, Stride, Pointer)
 -> cast
    ( ?glVertexAttribIPointer
    , <<Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       getVertexAttribIiv
%% Args:       Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetVertexAttribIiv(GLuint index, GLenum pname, GLint* params)

getVertexAttribIiv(Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetVertexAttribIiv
      , <<Index:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetVertexAttribIivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getVertexAttribIuiv
%% Args:       Index, Pname, Params
%% Returns:    ok
%% C-API func: void glGetVertexAttribIuiv(GLuint index, GLenum pname, GLuint* params)

getVertexAttribIuiv(Index, Pname, Params)
 -> cast
    ( ?glGetVertexAttribIuiv
    , <<Index:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       vertexAttribI1i
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttribI1i(GLuint index, GLint x)

vertexAttribI1i(Index, X)
 -> cast
    ( ?glVertexAttribI1i
    , <<Index:?GLuint
      , X:?GLint
      >>
    )
.

%% Func:       vertexAttribI2i
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttribI2i(GLuint index, GLint x, GLint y)

vertexAttribI2i(Index, X, Y)
 -> cast
    ( ?glVertexAttribI2i
    , <<Index:?GLuint
      , X:?GLint
      , Y:?GLint
      >>
    )
.

%% Func:       vertexAttribI3i
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttribI3i(GLuint index, GLint x, GLint y, GLint z)

vertexAttribI3i(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttribI3i
    , <<Index:?GLuint
      , X:?GLint
      , Y:?GLint
      , Z:?GLint
      >>
    )
.

%% Func:       vertexAttribI4i
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttribI4i(GLuint index, GLint x, GLint y, GLint z, GLint w)

vertexAttribI4i(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttribI4i
    , <<Index:?GLuint
      , X:?GLint
      , Y:?GLint
      , Z:?GLint
      , W:?GLint
      >>
    )
.

%% Func:       vertexAttribI1ui
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttribI1ui(GLuint index, GLuint x)

vertexAttribI1ui(Index, X)
 -> cast
    ( ?glVertexAttribI1ui
    , <<Index:?GLuint
      , X:?GLuint
      >>
    )
.

%% Func:       vertexAttribI2ui
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttribI2ui(GLuint index, GLuint x, GLuint y)

vertexAttribI2ui(Index, X, Y)
 -> cast
    ( ?glVertexAttribI2ui
    , <<Index:?GLuint
      , X:?GLuint
      , Y:?GLuint
      >>
    )
.

%% Func:       vertexAttribI3ui
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttribI3ui(GLuint index, GLuint x, GLuint y, GLuint z)

vertexAttribI3ui(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttribI3ui
    , <<Index:?GLuint
      , X:?GLuint
      , Y:?GLuint
      , Z:?GLuint
      >>
    )
.

%% Func:       vertexAttribI4ui
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttribI4ui(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

vertexAttribI4ui(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttribI4ui
    , <<Index:?GLuint
      , X:?GLuint
      , Y:?GLuint
      , Z:?GLuint
      , W:?GLuint
      >>
    )
.

%% Func:       vertexAttribI1iv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI1iv(GLuint index, const GLint* v)

vertexAttribI1iv(Index, V)
 -> cast
    ( ?glVertexAttribI1iv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI2iv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI2iv(GLuint index, const GLint* v)

vertexAttribI2iv(Index, V)
 -> cast
    ( ?glVertexAttribI2iv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI3iv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI3iv(GLuint index, const GLint* v)

vertexAttribI3iv(Index, V)
 -> cast
    ( ?glVertexAttribI3iv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4iv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4iv(GLuint index, const GLint* v)

vertexAttribI4iv(Index, V)
 -> cast
    ( ?glVertexAttribI4iv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI1uiv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI1uiv(GLuint index, const GLuint* v)

vertexAttribI1uiv(Index, V)
 -> cast
    ( ?glVertexAttribI1uiv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI2uiv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI2uiv(GLuint index, const GLuint* v)

vertexAttribI2uiv(Index, V)
 -> cast
    ( ?glVertexAttribI2uiv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI3uiv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI3uiv(GLuint index, const GLuint* v)

vertexAttribI3uiv(Index, V)
 -> cast
    ( ?glVertexAttribI3uiv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4uiv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4uiv(GLuint index, const GLuint* v)

vertexAttribI4uiv(Index, V)
 -> cast
    ( ?glVertexAttribI4uiv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4bv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4bv(GLuint index, const GLbyte* v)

vertexAttribI4bv(Index, V)
 -> cast
    ( ?glVertexAttribI4bv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4sv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4sv(GLuint index, const GLshort* v)

vertexAttribI4sv(Index, V)
 -> cast
    ( ?glVertexAttribI4sv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4ubv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4ubv(GLuint index, const GLubyte* v)

vertexAttribI4ubv(Index, V)
 -> cast
    ( ?glVertexAttribI4ubv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4usv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4usv(GLuint index, const GLushort* v)

vertexAttribI4usv(Index, V)
 -> cast
    ( ?glVertexAttribI4usv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       getUniformuiv
%% Args:       Program, Location, Params
%% Returns:    ok
%% C-API func: void glGetUniformuiv(GLuint program, GLint location, GLuint* params)

getUniformuiv(Program, Location, Params)
 -> cast
    ( ?glGetUniformuiv
    , <<Program:?GLuint
      , Location:?GLint
      , Params:?_PTR
      >>
    )
.

%% Func:       bindFragDataLocation
%% Args:       Program, Color, Name
%% Returns:    ok
%% C-API func: void glBindFragDataLocation(GLuint program, GLuint color, const GLchar* name)

bindFragDataLocation(Program, Color, Name)
 -> cast
    ( ?glBindFragDataLocation
    , <<Program:?GLuint
      , Color:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       getFragDataLocation
%% Args:       Program, Name
%% Returns:    GLint
%% C-API func: GLint glGetFragDataLocation(GLuint program, const GLchar* name)

getFragDataLocation(Program, Name)
 -> cast
    ( ?glGetFragDataLocation
    , <<Program:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       uniform1ui
%% Args:       Location, V0
%% Returns:    ok
%% C-API func: void glUniform1ui(GLint location, GLuint v0)

uniform1ui(Location, V0)
 -> cast
    ( ?glUniform1ui
    , <<Location:?GLint
      , V0:?GLuint
      >>
    )
.

%% Func:       uniform2ui
%% Args:       Location, V0, V1
%% Returns:    ok
%% C-API func: void glUniform2ui(GLint location, GLuint v0, GLuint v1)

uniform2ui(Location, V0, V1)
 -> cast
    ( ?glUniform2ui
    , <<Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      >>
    )
.

%% Func:       uniform3ui
%% Args:       Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glUniform3ui(GLint location, GLuint v0, GLuint v1, GLuint v2)

uniform3ui(Location, V0, V1, V2)
 -> cast
    ( ?glUniform3ui
    , <<Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      , V2:?GLuint
      >>
    )
.

%% Func:       uniform4ui
%% Args:       Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glUniform4ui(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

uniform4ui(Location, V0, V1, V2, V3)
 -> cast
    ( ?glUniform4ui
    , <<Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      , V2:?GLuint
      , V3:?GLuint
      >>
    )
.

%% Func:       uniform1uiv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform1uiv(GLint location, GLsizei count, const GLuint* value)

uniform1uiv(Location, Count, Value)
 -> cast
    ( ?glUniform1uiv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform2uiv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform2uiv(GLint location, GLsizei count, const GLuint* value)

uniform2uiv(Location, Count, Value)
 -> cast
    ( ?glUniform2uiv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform3uiv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform3uiv(GLint location, GLsizei count, const GLuint* value)

uniform3uiv(Location, Count, Value)
 -> cast
    ( ?glUniform3uiv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform4uiv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform4uiv(GLint location, GLsizei count, const GLuint* value)

uniform4uiv(Location, Count, Value)
 -> cast
    ( ?glUniform4uiv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       texParameterIiv
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexParameterIiv(GLenum target, GLenum pname, const GLint* params)

texParameterIiv(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glTexParameterIiv
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       texParameterIuiv
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexParameterIuiv(GLenum target, GLenum pname, const GLuint* params)

texParameterIuiv(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glTexParameterIuiv
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       getTexParameterIiv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexParameterIiv(GLenum target, GLenum pname, GLint* params)

getTexParameterIiv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetTexParameterIiv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetTexParameterIivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getTexParameterIuiv
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glGetTexParameterIuiv(GLenum target, GLenum pname, GLuint* params)

getTexParameterIuiv(Target, Pname, Params)
 -> cast
    ( ?glGetTexParameterIuiv
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       clearBufferiv
%% Args:       Buffer, Drawbuffer, Value
%% Returns:    ok
%% C-API func: void glClearBufferiv(GLenum buffer, GLint drawbuffer, const GLint* value)

clearBufferiv(Buffer, Drawbuffer, Value)
 -> cast
    ( ?glClearBufferiv
    , <<Buffer:?GLenum
      , Drawbuffer:?GLint
      , Value:?_PTR
      >>
    )
.

%% Func:       clearBufferuiv
%% Args:       Buffer, Drawbuffer, Value
%% Returns:    ok
%% C-API func: void glClearBufferuiv(GLenum buffer, GLint drawbuffer, const GLuint* value)

clearBufferuiv(Buffer, Drawbuffer, Value)
 -> cast
    ( ?glClearBufferuiv
    , <<Buffer:?GLenum
      , Drawbuffer:?GLint
      , Value:?_PTR
      >>
    )
.

%% Func:       clearBufferfv
%% Args:       Buffer, Drawbuffer, <<[Value]>>
%% Returns:    ok
%% C-API func: void glClearBufferfv(GLenum buffer, GLint drawbuffer, const GLfloat* value)

clearBufferfv(Buffer, Drawbuffer, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Buffer
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glClearBufferfv
    , [ <<Buffer:?GLenum
        , Drawbuffer:?GLint
        >>
      , NewValue
      ]
    )
.

%% Func:       clearBufferfi
%% Args:       Buffer, Drawbuffer, Depth, Stencil
%% Returns:    ok
%% C-API func: void glClearBufferfi(GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil)

clearBufferfi(Buffer, Drawbuffer, Depth, Stencil)
 -> cast
    ( ?glClearBufferfi
    , <<Buffer:?GLenum
      , Drawbuffer:?GLint
      , Depth:?GLfloat
      , Stencil:?GLint
      >>
    )
.

%% Func:       getStringi
%% Args:       Name, Index
%% Returns:    const GLubyte* 
%% C-API func: const GLubyte*  glGetStringi(GLenum name, GLuint index)

getStringi(Name, Index)
 -> cast
    ( ?glGetStringi
    , <<Name:?GLenum
      , Index:?GLuint
      >>
    )
.

%% GL_VERSION_3_1

%% Func:       drawArraysInstanced
%% Args:       Mode, First, Count, Primcount
%% Returns:    ok
%% C-API func: void glDrawArraysInstanced(GLenum mode, GLint first, GLsizei count, GLsizei primcount)

drawArraysInstanced(Mode, First, Count, Primcount)
 -> cast
    ( ?glDrawArraysInstanced
    , <<Mode:?GLenum
      , First:?GLint
      , Count:?GLsizei
      , Primcount:?GLsizei
      >>
    )
.

%% Func:       drawElementsInstanced
%% Args:       Mode, Count, Type, Indices, Primcount
%% Returns:    ok
%% C-API func: void glDrawElementsInstanced(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei primcount)

drawElementsInstanced(Mode, Count, Type, Indices, Primcount)
 -> cast
    ( ?glDrawElementsInstanced
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Primcount:?GLsizei
      >>
    )
.

%% Func:       texBuffer
%% Args:       Target, Internalformat, Buffer
%% Returns:    ok
%% C-API func: void glTexBuffer(GLenum target, GLenum internalformat, GLuint buffer)

texBuffer(Target, Internalformat, Buffer)
 -> cast
    ( ?glTexBuffer
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Buffer:?GLuint
      >>
    )
.

%% Func:       primitiveRestartIndex
%% Args:       Index
%% Returns:    ok
%% C-API func: void glPrimitiveRestartIndex(GLuint index)

primitiveRestartIndex(Index)
 -> cast
    ( ?glPrimitiveRestartIndex
    , <<Index:?GLuint
      >>
    )
.

%% GL_VERSION_3_2

%% Func:       getInteger64iV
%% Args:       Target, Index
%% Returns:    [ Data ]
%% C-API func: void glGetInteger64i_v(GLenum target, GLuint index, GLint64* data)

getInteger64iV(Target, Index)
 -> case
      call
      ( ?glGetInteger64i_v
      , <<Target:?GLenum
        , Index:?GLuint
        >>
      )
    of
      <<Data:?GLint64
      >>
        -> [ Data ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getBufferParameteri64v
%% Args:       Target, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetBufferParameteri64v(GLenum target, GLenum pname, GLint64* params)

getBufferParameteri64v(Target, Pname)
 -> case
      call
      ( ?glGetBufferParameteri64v
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint64
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       framebufferTexture
%% Args:       Target, Attachment, Texture, Level
%% Returns:    ok
%% C-API func: void glFramebufferTexture(GLenum target, GLenum attachment, GLuint texture, GLint level)

framebufferTexture(Target, Attachment, Texture, Level)
 -> cast
    ( ?glFramebufferTexture
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% GL_VERSION_3_3

%% Func:       vertexAttribDivisor
%% Args:       Index, Divisor
%% Returns:    ok
%% C-API func: void glVertexAttribDivisor(GLuint index, GLuint divisor)

vertexAttribDivisor(Index, Divisor)
 -> cast
    ( ?glVertexAttribDivisor
    , <<Index:?GLuint
      , Divisor:?GLuint
      >>
    )
.

%% GL_VERSION_4_0

%% Func:       minSampleShading
%% Args:       Value
%% Returns:    ok
%% C-API func: void glMinSampleShading(GLclampf value)

minSampleShading(Value)
 -> cast
    ( ?glMinSampleShading
    , <<Value:?GLclampf
      >>
    )
.

%% Func:       blendEquationi
%% Args:       Buf, Mode
%% Returns:    ok
%% C-API func: void glBlendEquationi(GLuint buf, GLenum mode)

blendEquationi(Buf, Mode)
 -> cast
    ( ?glBlendEquationi
    , <<Buf:?GLuint
      , Mode:?GLenum
      >>
    )
.

%% Func:       blendEquationSeparatei
%% Args:       Buf, ModeRGB, ModeAlpha
%% Returns:    ok
%% C-API func: void glBlendEquationSeparatei(GLuint buf, GLenum modeRGB, GLenum modeAlpha)

blendEquationSeparatei(Buf, ModeRGB, ModeAlpha)
 -> cast
    ( ?glBlendEquationSeparatei
    , <<Buf:?GLuint
      , ModeRGB:?GLenum
      , ModeAlpha:?GLenum
      >>
    )
.

%% Func:       blendFunci
%% Args:       Buf, Src, Dst
%% Returns:    ok
%% C-API func: void glBlendFunci(GLuint buf, GLenum src, GLenum dst)

blendFunci(Buf, Src, Dst)
 -> cast
    ( ?glBlendFunci
    , <<Buf:?GLuint
      , Src:?GLenum
      , Dst:?GLenum
      >>
    )
.

%% Func:       blendFuncSeparatei
%% Args:       Buf, SrcRGB, DstRGB, SrcAlpha, DstAlpha
%% Returns:    ok
%% C-API func: void glBlendFuncSeparatei(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

blendFuncSeparatei(Buf, SrcRGB, DstRGB, SrcAlpha, DstAlpha)
 -> cast
    ( ?glBlendFuncSeparatei
    , <<Buf:?GLuint
      , SrcRGB:?GLenum
      , DstRGB:?GLenum
      , SrcAlpha:?GLenum
      , DstAlpha:?GLenum
      >>
    )
.

%% GL_VERSION_4_1

%% GL_ARB_multitexture

%% Func:       activeTextureARB
%% Args:       Texture
%% Returns:    ok
%% C-API func: void glActiveTextureARB(GLenum texture)

activeTextureARB(Texture)
 -> cast
    ( ?glActiveTextureARB
    , <<Texture:?GLenum
      >>
    )
.

%% Func:       clientActiveTextureARB
%% Args:       Texture
%% Returns:    ok
%% C-API func: void glClientActiveTextureARB(GLenum texture)

clientActiveTextureARB(Texture)
 -> cast
    ( ?glClientActiveTextureARB
    , <<Texture:?GLenum
      >>
    )
.

%% Func:       multiTexCoord1dARB
%% Args:       Target, S
%% Returns:    ok
%% C-API func: void glMultiTexCoord1dARB(GLenum target, GLdouble s)

multiTexCoord1dARB(Target, S)
 -> cast
    ( ?glMultiTexCoord1dARB
    , <<Target:?GLenum
      , S:?GLdouble
      >>
    )
.

%% Func:       multiTexCoord1dvARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord1dvARB(GLenum target, const GLdouble* v)

multiTexCoord1dvARB(Target, V)
 -> cast
    ( ?glMultiTexCoord1dvARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord1fARB
%% Args:       Target, S
%% Returns:    ok
%% C-API func: void glMultiTexCoord1fARB(GLenum target, GLfloat s)

multiTexCoord1fARB(Target, S)
 -> cast
    ( ?glMultiTexCoord1fARB
    , <<Target:?GLenum
      , S:?GLfloat
      >>
    )
.

%% Func:       multiTexCoord1fvARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord1fvARB(GLenum target, const GLfloat* v)

multiTexCoord1fvARB(Target, V)
 -> cast
    ( ?glMultiTexCoord1fvARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord1iARB
%% Args:       Target, S
%% Returns:    ok
%% C-API func: void glMultiTexCoord1iARB(GLenum target, GLint s)

multiTexCoord1iARB(Target, S)
 -> cast
    ( ?glMultiTexCoord1iARB
    , <<Target:?GLenum
      , S:?GLint
      >>
    )
.

%% Func:       multiTexCoord1ivARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord1ivARB(GLenum target, const GLint* v)

multiTexCoord1ivARB(Target, V)
 -> cast
    ( ?glMultiTexCoord1ivARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord1sARB
%% Args:       Target, S
%% Returns:    ok
%% C-API func: void glMultiTexCoord1sARB(GLenum target, GLshort s)

multiTexCoord1sARB(Target, S)
 -> cast
    ( ?glMultiTexCoord1sARB
    , <<Target:?GLenum
      , S:?GLshort
      >>
    )
.

%% Func:       multiTexCoord1svARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord1svARB(GLenum target, const GLshort* v)

multiTexCoord1svARB(Target, V)
 -> cast
    ( ?glMultiTexCoord1svARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord2dARB
%% Args:       Target, S, T
%% Returns:    ok
%% C-API func: void glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t)

multiTexCoord2dARB(Target, S, T)
 -> cast
    ( ?glMultiTexCoord2dARB
    , <<Target:?GLenum
      , S:?GLdouble
      , T:?GLdouble
      >>
    )
.

%% Func:       multiTexCoord2dvARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord2dvARB(GLenum target, const GLdouble* v)

multiTexCoord2dvARB(Target, V)
 -> cast
    ( ?glMultiTexCoord2dvARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord2fARB
%% Args:       Target, S, T
%% Returns:    ok
%% C-API func: void glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t)

multiTexCoord2fARB(Target, S, T)
 -> cast
    ( ?glMultiTexCoord2fARB
    , <<Target:?GLenum
      , S:?GLfloat
      , T:?GLfloat
      >>
    )
.

%% Func:       multiTexCoord2fvARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord2fvARB(GLenum target, const GLfloat* v)

multiTexCoord2fvARB(Target, V)
 -> cast
    ( ?glMultiTexCoord2fvARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord2iARB
%% Args:       Target, S, T
%% Returns:    ok
%% C-API func: void glMultiTexCoord2iARB(GLenum target, GLint s, GLint t)

multiTexCoord2iARB(Target, S, T)
 -> cast
    ( ?glMultiTexCoord2iARB
    , <<Target:?GLenum
      , S:?GLint
      , T:?GLint
      >>
    )
.

%% Func:       multiTexCoord2ivARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord2ivARB(GLenum target, const GLint* v)

multiTexCoord2ivARB(Target, V)
 -> cast
    ( ?glMultiTexCoord2ivARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord2sARB
%% Args:       Target, S, T
%% Returns:    ok
%% C-API func: void glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t)

multiTexCoord2sARB(Target, S, T)
 -> cast
    ( ?glMultiTexCoord2sARB
    , <<Target:?GLenum
      , S:?GLshort
      , T:?GLshort
      >>
    )
.

%% Func:       multiTexCoord2svARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord2svARB(GLenum target, const GLshort* v)

multiTexCoord2svARB(Target, V)
 -> cast
    ( ?glMultiTexCoord2svARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord3dARB
%% Args:       Target, S, T, R
%% Returns:    ok
%% C-API func: void glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r)

multiTexCoord3dARB(Target, S, T, R)
 -> cast
    ( ?glMultiTexCoord3dARB
    , <<Target:?GLenum
      , S:?GLdouble
      , T:?GLdouble
      , R:?GLdouble
      >>
    )
.

%% Func:       multiTexCoord3dvARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord3dvARB(GLenum target, const GLdouble* v)

multiTexCoord3dvARB(Target, V)
 -> cast
    ( ?glMultiTexCoord3dvARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord3fARB
%% Args:       Target, S, T, R
%% Returns:    ok
%% C-API func: void glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r)

multiTexCoord3fARB(Target, S, T, R)
 -> cast
    ( ?glMultiTexCoord3fARB
    , <<Target:?GLenum
      , S:?GLfloat
      , T:?GLfloat
      , R:?GLfloat
      >>
    )
.

%% Func:       multiTexCoord3fvARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord3fvARB(GLenum target, const GLfloat* v)

multiTexCoord3fvARB(Target, V)
 -> cast
    ( ?glMultiTexCoord3fvARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord3iARB
%% Args:       Target, S, T, R
%% Returns:    ok
%% C-API func: void glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r)

multiTexCoord3iARB(Target, S, T, R)
 -> cast
    ( ?glMultiTexCoord3iARB
    , <<Target:?GLenum
      , S:?GLint
      , T:?GLint
      , R:?GLint
      >>
    )
.

%% Func:       multiTexCoord3ivARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord3ivARB(GLenum target, const GLint* v)

multiTexCoord3ivARB(Target, V)
 -> cast
    ( ?glMultiTexCoord3ivARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord3sARB
%% Args:       Target, S, T, R
%% Returns:    ok
%% C-API func: void glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r)

multiTexCoord3sARB(Target, S, T, R)
 -> cast
    ( ?glMultiTexCoord3sARB
    , <<Target:?GLenum
      , S:?GLshort
      , T:?GLshort
      , R:?GLshort
      >>
    )
.

%% Func:       multiTexCoord3svARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord3svARB(GLenum target, const GLshort* v)

multiTexCoord3svARB(Target, V)
 -> cast
    ( ?glMultiTexCoord3svARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord4dARB
%% Args:       Target, S, T, R, Q
%% Returns:    ok
%% C-API func: void glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)

multiTexCoord4dARB(Target, S, T, R, Q)
 -> cast
    ( ?glMultiTexCoord4dARB
    , <<Target:?GLenum
      , S:?GLdouble
      , T:?GLdouble
      , R:?GLdouble
      , Q:?GLdouble
      >>
    )
.

%% Func:       multiTexCoord4dvARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord4dvARB(GLenum target, const GLdouble* v)

multiTexCoord4dvARB(Target, V)
 -> cast
    ( ?glMultiTexCoord4dvARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord4fARB
%% Args:       Target, S, T, R, Q
%% Returns:    ok
%% C-API func: void glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)

multiTexCoord4fARB(Target, S, T, R, Q)
 -> cast
    ( ?glMultiTexCoord4fARB
    , <<Target:?GLenum
      , S:?GLfloat
      , T:?GLfloat
      , R:?GLfloat
      , Q:?GLfloat
      >>
    )
.

%% Func:       multiTexCoord4fvARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord4fvARB(GLenum target, const GLfloat* v)

multiTexCoord4fvARB(Target, V)
 -> cast
    ( ?glMultiTexCoord4fvARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord4iARB
%% Args:       Target, S, T, R, Q
%% Returns:    ok
%% C-API func: void glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q)

multiTexCoord4iARB(Target, S, T, R, Q)
 -> cast
    ( ?glMultiTexCoord4iARB
    , <<Target:?GLenum
      , S:?GLint
      , T:?GLint
      , R:?GLint
      , Q:?GLint
      >>
    )
.

%% Func:       multiTexCoord4ivARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord4ivARB(GLenum target, const GLint* v)

multiTexCoord4ivARB(Target, V)
 -> cast
    ( ?glMultiTexCoord4ivARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord4sARB
%% Args:       Target, S, T, R, Q
%% Returns:    ok
%% C-API func: void glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)

multiTexCoord4sARB(Target, S, T, R, Q)
 -> cast
    ( ?glMultiTexCoord4sARB
    , <<Target:?GLenum
      , S:?GLshort
      , T:?GLshort
      , R:?GLshort
      , Q:?GLshort
      >>
    )
.

%% Func:       multiTexCoord4svARB
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord4svARB(GLenum target, const GLshort* v)

multiTexCoord4svARB(Target, V)
 -> cast
    ( ?glMultiTexCoord4svARB
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% GL_ARB_transpose_matrix

%% Func:       loadTransposeMatrixfARB
%% Args:       M
%% Returns:    ok
%% C-API func: void glLoadTransposeMatrixfARB(const GLfloat* m)

loadTransposeMatrixfARB(M)
 -> cast
    ( ?glLoadTransposeMatrixfARB
    , <<M:?_PTR
      >>
    )
.

%% Func:       loadTransposeMatrixdARB
%% Args:       M
%% Returns:    ok
%% C-API func: void glLoadTransposeMatrixdARB(const GLdouble* m)

loadTransposeMatrixdARB(M)
 -> cast
    ( ?glLoadTransposeMatrixdARB
    , <<M:?_PTR
      >>
    )
.

%% Func:       multTransposeMatrixfARB
%% Args:       M
%% Returns:    ok
%% C-API func: void glMultTransposeMatrixfARB(const GLfloat* m)

multTransposeMatrixfARB(M)
 -> cast
    ( ?glMultTransposeMatrixfARB
    , <<M:?_PTR
      >>
    )
.

%% Func:       multTransposeMatrixdARB
%% Args:       M
%% Returns:    ok
%% C-API func: void glMultTransposeMatrixdARB(const GLdouble* m)

multTransposeMatrixdARB(M)
 -> cast
    ( ?glMultTransposeMatrixdARB
    , <<M:?_PTR
      >>
    )
.

%% GL_ARB_multisample

%% Func:       sampleCoverageARB
%% Args:       Value, Invert
%% Returns:    ok
%% C-API func: void glSampleCoverageARB(GLclampf value, GLboolean invert)

sampleCoverageARB(Value, Invert)
 -> cast
    ( ?glSampleCoverageARB
    , <<Value:?GLclampf
      , Invert:?GLboolean
      >>
    )
.

%% GL_ARB_texture_env_add
%% GL_ARB_texture_cube_map
%% GL_ARB_texture_compression

%% Func:       compressedTexImage3DARB
%% Args:       Target, Level, Internalformat, Width, Height, Depth, Border, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexImage3DARB(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* data)

compressedTexImage3DARB(Target, Level, Internalformat, Width, Height, Depth, Border, ImageSize, Data)
 -> cast
    ( ?glCompressedTexImage3DARB
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTexImage2DARB
%% Args:       Target, Level, Internalformat, Width, Height, Border, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexImage2DARB(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* data)

compressedTexImage2DARB(Target, Level, Internalformat, Width, Height, Border, ImageSize, Data)
 -> cast
    ( ?glCompressedTexImage2DARB
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTexImage1DARB
%% Args:       Target, Level, Internalformat, Width, Border, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexImage1DARB(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* data)

compressedTexImage1DARB(Target, Level, Internalformat, Width, Border, ImageSize, Data)
 -> cast
    ( ?glCompressedTexImage1DARB
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTexSubImage3DARB
%% Args:       Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexSubImage3DARB(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* data)

compressedTexSubImage3DARB(Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, ImageSize, Data)
 -> cast
    ( ?glCompressedTexSubImage3DARB
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTexSubImage2DARB
%% Args:       Target, Level, Xoffset, Yoffset, Width, Height, Format, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexSubImage2DARB(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* data)

compressedTexSubImage2DARB(Target, Level, Xoffset, Yoffset, Width, Height, Format, ImageSize, Data)
 -> cast
    ( ?glCompressedTexSubImage2DARB
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTexSubImage1DARB
%% Args:       Target, Level, Xoffset, Width, Format, ImageSize, Data
%% Returns:    ok
%% C-API func: void glCompressedTexSubImage1DARB(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* data)

compressedTexSubImage1DARB(Target, Level, Xoffset, Width, Format, ImageSize, Data)
 -> cast
    ( ?glCompressedTexSubImage1DARB
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Width:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       getCompressedTexImageARB
%% Args:       Target, Level, Img
%% Returns:    ok
%% C-API func: void glGetCompressedTexImageARB(GLenum target, GLint level, GLvoid* img)

getCompressedTexImageARB(Target, Level, Img)
 -> cast
    ( ?glGetCompressedTexImageARB
    , <<Target:?GLenum
      , Level:?GLint
      , Img:?_PTR
      >>
    )
.

%% GL_ARB_texture_border_clamp
%% GL_ARB_point_parameters

%% Func:       pointParameterfARB
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPointParameterfARB(GLenum pname, GLfloat param)

pointParameterfARB(Pname, Param)
 -> cast
    ( ?glPointParameterfARB
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       pointParameterfvARB
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glPointParameterfvARB(GLenum pname, const GLfloat* params)

pointParameterfvARB(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glPointParameterfvARB
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% GL_ARB_vertex_blend

%% Func:       weightbvARB
%% Args:       Size, Weights
%% Returns:    ok
%% C-API func: void glWeightbvARB(GLint size, const GLbyte* weights)

weightbvARB(Size, Weights)
 -> cast
    ( ?glWeightbvARB
    , <<Size:?GLint
      , Weights:?_PTR
      >>
    )
.

%% Func:       weightsvARB
%% Args:       Size, Weights
%% Returns:    ok
%% C-API func: void glWeightsvARB(GLint size, const GLshort* weights)

weightsvARB(Size, Weights)
 -> cast
    ( ?glWeightsvARB
    , <<Size:?GLint
      , Weights:?_PTR
      >>
    )
.

%% Func:       weightivARB
%% Args:       Size, Weights
%% Returns:    ok
%% C-API func: void glWeightivARB(GLint size, const GLint* weights)

weightivARB(Size, Weights)
 -> cast
    ( ?glWeightivARB
    , <<Size:?GLint
      , Weights:?_PTR
      >>
    )
.

%% Func:       weightfvARB
%% Args:       Size, Weights
%% Returns:    ok
%% C-API func: void glWeightfvARB(GLint size, const GLfloat* weights)

weightfvARB(Size, Weights)
 -> cast
    ( ?glWeightfvARB
    , <<Size:?GLint
      , Weights:?_PTR
      >>
    )
.

%% Func:       weightdvARB
%% Args:       Size, Weights
%% Returns:    ok
%% C-API func: void glWeightdvARB(GLint size, const GLdouble* weights)

weightdvARB(Size, Weights)
 -> cast
    ( ?glWeightdvARB
    , <<Size:?GLint
      , Weights:?_PTR
      >>
    )
.

%% Func:       weightubvARB
%% Args:       Size, Weights
%% Returns:    ok
%% C-API func: void glWeightubvARB(GLint size, const GLubyte* weights)

weightubvARB(Size, Weights)
 -> cast
    ( ?glWeightubvARB
    , <<Size:?GLint
      , Weights:?_PTR
      >>
    )
.

%% Func:       weightusvARB
%% Args:       Size, Weights
%% Returns:    ok
%% C-API func: void glWeightusvARB(GLint size, const GLushort* weights)

weightusvARB(Size, Weights)
 -> cast
    ( ?glWeightusvARB
    , <<Size:?GLint
      , Weights:?_PTR
      >>
    )
.

%% Func:       weightuivARB
%% Args:       Size, Weights
%% Returns:    ok
%% C-API func: void glWeightuivARB(GLint size, const GLuint* weights)

weightuivARB(Size, Weights)
 -> cast
    ( ?glWeightuivARB
    , <<Size:?GLint
      , Weights:?_PTR
      >>
    )
.

%% Func:       weightPointerARB
%% Args:       Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glWeightPointerARB(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

weightPointerARB(Size, Type, Stride, Pointer)
 -> cast
    ( ?glWeightPointerARB
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       vertexBlendARB
%% Args:       Count
%% Returns:    ok
%% C-API func: void glVertexBlendARB(GLint count)

vertexBlendARB(Count)
 -> cast
    ( ?glVertexBlendARB
    , <<Count:?GLint
      >>
    )
.

%% GL_ARB_matrix_palette

%% Func:       currentPaletteMatrixARB
%% Args:       Index
%% Returns:    ok
%% C-API func: void glCurrentPaletteMatrixARB(GLint index)

currentPaletteMatrixARB(Index)
 -> cast
    ( ?glCurrentPaletteMatrixARB
    , <<Index:?GLint
      >>
    )
.

%% Func:       matrixIndexubvARB
%% Args:       Size, Indices
%% Returns:    ok
%% C-API func: void glMatrixIndexubvARB(GLint size, const GLubyte* indices)

matrixIndexubvARB(Size, Indices)
 -> cast
    ( ?glMatrixIndexubvARB
    , <<Size:?GLint
      , Indices:?_PTR
      >>
    )
.

%% Func:       matrixIndexusvARB
%% Args:       Size, Indices
%% Returns:    ok
%% C-API func: void glMatrixIndexusvARB(GLint size, const GLushort* indices)

matrixIndexusvARB(Size, Indices)
 -> cast
    ( ?glMatrixIndexusvARB
    , <<Size:?GLint
      , Indices:?_PTR
      >>
    )
.

%% Func:       matrixIndexuivARB
%% Args:       Size, Indices
%% Returns:    ok
%% C-API func: void glMatrixIndexuivARB(GLint size, const GLuint* indices)

matrixIndexuivARB(Size, Indices)
 -> cast
    ( ?glMatrixIndexuivARB
    , <<Size:?GLint
      , Indices:?_PTR
      >>
    )
.

%% Func:       matrixIndexPointerARB
%% Args:       Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glMatrixIndexPointerARB(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

matrixIndexPointerARB(Size, Type, Stride, Pointer)
 -> cast
    ( ?glMatrixIndexPointerARB
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% GL_ARB_texture_env_combine
%% GL_ARB_texture_env_crossbar
%% GL_ARB_texture_env_dot3
%% GL_ARB_texture_mirrored_repeat
%% GL_ARB_depth_texture
%% GL_ARB_shadow
%% GL_ARB_shadow_ambient
%% GL_ARB_window_pos

%% Func:       windowPos2dARB
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2dARB(GLdouble x, GLdouble y)

windowPos2dARB(X, Y)
 -> cast
    ( ?glWindowPos2dARB
    , <<X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       windowPos2dvARB
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2dvARB(const GLdouble* v)

windowPos2dvARB(V)
 -> cast
    ( ?glWindowPos2dvARB
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos2fARB
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2fARB(GLfloat x, GLfloat y)

windowPos2fARB(X, Y)
 -> cast
    ( ?glWindowPos2fARB
    , <<X:?GLfloat
      , Y:?GLfloat
      >>
    )
.

%% Func:       windowPos2fvARB
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2fvARB(const GLfloat* v)

windowPos2fvARB(V)
 -> cast
    ( ?glWindowPos2fvARB
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos2iARB
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2iARB(GLint x, GLint y)

windowPos2iARB(X, Y)
 -> cast
    ( ?glWindowPos2iARB
    , <<X:?GLint
      , Y:?GLint
      >>
    )
.

%% Func:       windowPos2ivARB
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2ivARB(const GLint* v)

windowPos2ivARB(V)
 -> cast
    ( ?glWindowPos2ivARB
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos2sARB
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2sARB(GLshort x, GLshort y)

windowPos2sARB(X, Y)
 -> cast
    ( ?glWindowPos2sARB
    , <<X:?GLshort
      , Y:?GLshort
      >>
    )
.

%% Func:       windowPos2svARB
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2svARB(const GLshort* v)

windowPos2svARB(V)
 -> cast
    ( ?glWindowPos2svARB
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3dARB
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3dARB(GLdouble x, GLdouble y, GLdouble z)

windowPos3dARB(X, Y, Z)
 -> cast
    ( ?glWindowPos3dARB
    , <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       windowPos3dvARB
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3dvARB(const GLdouble* v)

windowPos3dvARB(V)
 -> cast
    ( ?glWindowPos3dvARB
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3fARB
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3fARB(GLfloat x, GLfloat y, GLfloat z)

windowPos3fARB(X, Y, Z)
 -> cast
    ( ?glWindowPos3fARB
    , <<X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       windowPos3fvARB
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3fvARB(const GLfloat* v)

windowPos3fvARB(V)
 -> cast
    ( ?glWindowPos3fvARB
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3iARB
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3iARB(GLint x, GLint y, GLint z)

windowPos3iARB(X, Y, Z)
 -> cast
    ( ?glWindowPos3iARB
    , <<X:?GLint
      , Y:?GLint
      , Z:?GLint
      >>
    )
.

%% Func:       windowPos3ivARB
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3ivARB(const GLint* v)

windowPos3ivARB(V)
 -> cast
    ( ?glWindowPos3ivARB
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3sARB
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3sARB(GLshort x, GLshort y, GLshort z)

windowPos3sARB(X, Y, Z)
 -> cast
    ( ?glWindowPos3sARB
    , <<X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      >>
    )
.

%% Func:       windowPos3svARB
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3svARB(const GLshort* v)

windowPos3svARB(V)
 -> cast
    ( ?glWindowPos3svARB
    , <<V:?_PTR
      >>
    )
.

%% GL_ARB_vertex_program

%% Func:       vertexAttrib1dARB
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttrib1dARB(GLuint index, GLdouble x)

vertexAttrib1dARB(Index, X)
 -> cast
    ( ?glVertexAttrib1dARB
    , <<Index:?GLuint
      , X:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib1dvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib1dvARB(GLuint index, const GLdouble* v)

vertexAttrib1dvARB(Index, V)
 -> cast
    ( ?glVertexAttrib1dvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib1fARB
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttrib1fARB(GLuint index, GLfloat x)

vertexAttrib1fARB(Index, X)
 -> cast
    ( ?glVertexAttrib1fARB
    , <<Index:?GLuint
      , X:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib1fvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib1fvARB(GLuint index, const GLfloat* v)

vertexAttrib1fvARB(Index, V)
 -> cast
    ( ?glVertexAttrib1fvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib1sARB
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttrib1sARB(GLuint index, GLshort x)

vertexAttrib1sARB(Index, X)
 -> cast
    ( ?glVertexAttrib1sARB
    , <<Index:?GLuint
      , X:?GLshort
      >>
    )
.

%% Func:       vertexAttrib1svARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib1svARB(GLuint index, const GLshort* v)

vertexAttrib1svARB(Index, V)
 -> cast
    ( ?glVertexAttrib1svARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib2dARB
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttrib2dARB(GLuint index, GLdouble x, GLdouble y)

vertexAttrib2dARB(Index, X, Y)
 -> cast
    ( ?glVertexAttrib2dARB
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib2dvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib2dvARB(GLuint index, const GLdouble* v)

vertexAttrib2dvARB(Index, V)
 -> cast
    ( ?glVertexAttrib2dvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib2fARB
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttrib2fARB(GLuint index, GLfloat x, GLfloat y)

vertexAttrib2fARB(Index, X, Y)
 -> cast
    ( ?glVertexAttrib2fARB
    , <<Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib2fvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib2fvARB(GLuint index, const GLfloat* v)

vertexAttrib2fvARB(Index, V)
 -> cast
    ( ?glVertexAttrib2fvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib2sARB
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttrib2sARB(GLuint index, GLshort x, GLshort y)

vertexAttrib2sARB(Index, X, Y)
 -> cast
    ( ?glVertexAttrib2sARB
    , <<Index:?GLuint
      , X:?GLshort
      , Y:?GLshort
      >>
    )
.

%% Func:       vertexAttrib2svARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib2svARB(GLuint index, const GLshort* v)

vertexAttrib2svARB(Index, V)
 -> cast
    ( ?glVertexAttrib2svARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib3dARB
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttrib3dARB(GLuint index, GLdouble x, GLdouble y, GLdouble z)

vertexAttrib3dARB(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttrib3dARB
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib3dvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib3dvARB(GLuint index, const GLdouble* v)

vertexAttrib3dvARB(Index, V)
 -> cast
    ( ?glVertexAttrib3dvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib3fARB
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttrib3fARB(GLuint index, GLfloat x, GLfloat y, GLfloat z)

vertexAttrib3fARB(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttrib3fARB
    , <<Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib3fvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib3fvARB(GLuint index, const GLfloat* v)

vertexAttrib3fvARB(Index, V)
 -> cast
    ( ?glVertexAttrib3fvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib3sARB
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttrib3sARB(GLuint index, GLshort x, GLshort y, GLshort z)

vertexAttrib3sARB(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttrib3sARB
    , <<Index:?GLuint
      , X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      >>
    )
.

%% Func:       vertexAttrib3svARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib3svARB(GLuint index, const GLshort* v)

vertexAttrib3svARB(Index, V)
 -> cast
    ( ?glVertexAttrib3svARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4NbvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4NbvARB(GLuint index, const GLbyte* v)

vertexAttrib4NbvARB(Index, V)
 -> cast
    ( ?glVertexAttrib4NbvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4NivARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4NivARB(GLuint index, const GLint* v)

vertexAttrib4NivARB(Index, V)
 -> cast
    ( ?glVertexAttrib4NivARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4NsvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4NsvARB(GLuint index, const GLshort* v)

vertexAttrib4NsvARB(Index, V)
 -> cast
    ( ?glVertexAttrib4NsvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4NubARB
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4NubARB(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)

vertexAttrib4NubARB(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4NubARB
    , <<Index:?GLuint
      , X:?GLubyte
      , Y:?GLubyte
      , Z:?GLubyte
      , W:?GLubyte
      >>
    )
.

%% Func:       vertexAttrib4NubvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4NubvARB(GLuint index, const GLubyte* v)

vertexAttrib4NubvARB(Index, V)
 -> cast
    ( ?glVertexAttrib4NubvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4NuivARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4NuivARB(GLuint index, const GLuint* v)

vertexAttrib4NuivARB(Index, V)
 -> cast
    ( ?glVertexAttrib4NuivARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4NusvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4NusvARB(GLuint index, const GLushort* v)

vertexAttrib4NusvARB(Index, V)
 -> cast
    ( ?glVertexAttrib4NusvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4bvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4bvARB(GLuint index, const GLbyte* v)

vertexAttrib4bvARB(Index, V)
 -> cast
    ( ?glVertexAttrib4bvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4dARB
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4dARB(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

vertexAttrib4dARB(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4dARB
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib4dvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4dvARB(GLuint index, const GLdouble* v)

vertexAttrib4dvARB(Index, V)
 -> cast
    ( ?glVertexAttrib4dvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4fARB
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4fARB(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

vertexAttrib4fARB(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4fARB
    , <<Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib4fvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4fvARB(GLuint index, const GLfloat* v)

vertexAttrib4fvARB(Index, V)
 -> cast
    ( ?glVertexAttrib4fvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4ivARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4ivARB(GLuint index, const GLint* v)

vertexAttrib4ivARB(Index, V)
 -> cast
    ( ?glVertexAttrib4ivARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4sARB
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4sARB(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)

vertexAttrib4sARB(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4sARB
    , <<Index:?GLuint
      , X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      , W:?GLshort
      >>
    )
.

%% Func:       vertexAttrib4svARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4svARB(GLuint index, const GLshort* v)

vertexAttrib4svARB(Index, V)
 -> cast
    ( ?glVertexAttrib4svARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4ubvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4ubvARB(GLuint index, const GLubyte* v)

vertexAttrib4ubvARB(Index, V)
 -> cast
    ( ?glVertexAttrib4ubvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4uivARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4uivARB(GLuint index, const GLuint* v)

vertexAttrib4uivARB(Index, V)
 -> cast
    ( ?glVertexAttrib4uivARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4usvARB
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4usvARB(GLuint index, const GLushort* v)

vertexAttrib4usvARB(Index, V)
 -> cast
    ( ?glVertexAttrib4usvARB
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribPointerARB
%% Args:       Index, Size, Type, Normalized, Stride, Pointer
%% Returns:    ok
%% C-API func: void glVertexAttribPointerARB(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid* pointer)

vertexAttribPointerARB(Index, Size, Type, Normalized, Stride, Pointer)
 -> cast
    ( ?glVertexAttribPointerARB
    , <<Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       enableVertexAttribArrayARB
%% Args:       Index
%% Returns:    ok
%% C-API func: void glEnableVertexAttribArrayARB(GLuint index)

enableVertexAttribArrayARB(Index)
 -> cast
    ( ?glEnableVertexAttribArrayARB
    , <<Index:?GLuint
      >>
    )
.

%% Func:       disableVertexAttribArrayARB
%% Args:       Index
%% Returns:    ok
%% C-API func: void glDisableVertexAttribArrayARB(GLuint index)

disableVertexAttribArrayARB(Index)
 -> cast
    ( ?glDisableVertexAttribArrayARB
    , <<Index:?GLuint
      >>
    )
.

%% Func:       programStringARB
%% Args:       Target, Format, Len, String
%% Returns:    ok
%% C-API func: void glProgramStringARB(GLenum target, GLenum format, GLsizei len, const GLvoid* string)

programStringARB(Target, Format, Len, String)
 -> cast
    ( ?glProgramStringARB
    , <<Target:?GLenum
      , Format:?GLenum
      , Len:?GLsizei
      , String:?_PTR
      >>
    )
.

%% Func:       bindProgramARB
%% Args:       Target, Program
%% Returns:    ok
%% C-API func: void glBindProgramARB(GLenum target, GLuint program)

bindProgramARB(Target, Program)
 -> cast
    ( ?glBindProgramARB
    , <<Target:?GLenum
      , Program:?GLuint
      >>
    )
.

%% Func:       deleteProgramsARB
%% Args:       N, Programs
%% Returns:    ok
%% C-API func: void glDeleteProgramsARB(GLsizei n, const GLuint* programs)

deleteProgramsARB(N, Programs)
 -> cast
    ( ?glDeleteProgramsARB
    , <<N:?GLsizei
      , Programs:?_PTR
      >>
    )
.

%% Func:       genProgramsARB
%% Args:       N, Programs
%% Returns:    ok
%% C-API func: void glGenProgramsARB(GLsizei n, GLuint* programs)

genProgramsARB(N, Programs)
 -> cast
    ( ?glGenProgramsARB
    , <<N:?GLsizei
      , Programs:?_PTR
      >>
    )
.

%% Func:       programEnvParameter4dARB
%% Args:       Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramEnvParameter4dARB(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

programEnvParameter4dARB(Target, Index, X, Y, Z, W)
 -> cast
    ( ?glProgramEnvParameter4dARB
    , <<Target:?GLenum
      , Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       programEnvParameter4dvARB
%% Args:       Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramEnvParameter4dvARB(GLenum target, GLuint index, const GLdouble* params)

programEnvParameter4dvARB(Target, Index, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:64/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_DOUBLE
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:64/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_DOUBLE
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 8):64/native
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
    ( ?glProgramEnvParameter4dvARB
    , [ <<Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       programEnvParameter4fARB
%% Args:       Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramEnvParameter4fARB(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

programEnvParameter4fARB(Target, Index, X, Y, Z, W)
 -> cast
    ( ?glProgramEnvParameter4fARB
    , <<Target:?GLenum
      , Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       programEnvParameter4fvARB
%% Args:       Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramEnvParameter4fvARB(GLenum target, GLuint index, const GLfloat* params)

programEnvParameter4fvARB(Target, Index, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glProgramEnvParameter4fvARB
    , [ <<Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       programLocalParameter4dARB
%% Args:       Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramLocalParameter4dARB(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

programLocalParameter4dARB(Target, Index, X, Y, Z, W)
 -> cast
    ( ?glProgramLocalParameter4dARB
    , <<Target:?GLenum
      , Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       programLocalParameter4dvARB
%% Args:       Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramLocalParameter4dvARB(GLenum target, GLuint index, const GLdouble* params)

programLocalParameter4dvARB(Target, Index, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:64/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_DOUBLE
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:64/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_DOUBLE
               )
             ]
      ; is_binary(Params)
          -> [ <<(size(Params) div 8):64/native
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
    ( ?glProgramLocalParameter4dvARB
    , [ <<Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       programLocalParameter4fARB
%% Args:       Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramLocalParameter4fARB(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

programLocalParameter4fARB(Target, Index, X, Y, Z, W)
 -> cast
    ( ?glProgramLocalParameter4fARB
    , <<Target:?GLenum
      , Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       programLocalParameter4fvARB
%% Args:       Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramLocalParameter4fvARB(GLenum target, GLuint index, const GLfloat* params)

programLocalParameter4fvARB(Target, Index, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glProgramLocalParameter4fvARB
    , [ <<Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       getProgramEnvParameterdvARB
%% Args:       Target, Index, Params
%% Returns:    ok
%% C-API func: void glGetProgramEnvParameterdvARB(GLenum target, GLuint index, GLdouble* params)

getProgramEnvParameterdvARB(Target, Index, Params)
 -> cast
    ( ?glGetProgramEnvParameterdvARB
    , <<Target:?GLenum
      , Index:?GLuint
      , Params:?_PTR
      >>
    )
.

%% Func:       getProgramEnvParameterfvARB
%% Args:       Target, Index
%% Returns:    [Params]
%% C-API func: void glGetProgramEnvParameterfvARB(GLenum target, GLuint index, GLfloat* params)

getProgramEnvParameterfvARB(Target, Index, Params)
 -> Bin
    = call
    ( ?glGetProgramEnvParameterfvARB
    , <<Target:?GLenum
      , Index:?GLuint
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

%% Func:       getProgramLocalParameterdvARB
%% Args:       Target, Index, Params
%% Returns:    ok
%% C-API func: void glGetProgramLocalParameterdvARB(GLenum target, GLuint index, GLdouble* params)

getProgramLocalParameterdvARB(Target, Index, Params)
 -> cast
    ( ?glGetProgramLocalParameterdvARB
    , <<Target:?GLenum
      , Index:?GLuint
      , Params:?_PTR
      >>
    )
.

%% Func:       getProgramLocalParameterfvARB
%% Args:       Target, Index
%% Returns:    [Params]
%% C-API func: void glGetProgramLocalParameterfvARB(GLenum target, GLuint index, GLfloat* params)

getProgramLocalParameterfvARB(Target, Index, Params)
 -> Bin
    = call
    ( ?glGetProgramLocalParameterfvARB
    , <<Target:?GLenum
      , Index:?GLuint
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

%% Func:       getProgramivARB
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetProgramivARB(GLenum target, GLenum pname, GLint* params)

getProgramivARB(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetProgramivARB
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetProgramivARBLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getProgramStringARB
%% Args:       Target, Pname, String
%% Returns:    ok
%% C-API func: void glGetProgramStringARB(GLenum target, GLenum pname, GLvoid* string)

getProgramStringARB(Target, Pname, String)
 -> cast
    ( ?glGetProgramStringARB
    , <<Target:?GLenum
      , Pname:?GLenum
      , String:?_PTR
      >>
    )
.

%% Func:       getVertexAttribdvARB
%% Args:       Index, Pname, Params
%% Returns:    ok
%% C-API func: void glGetVertexAttribdvARB(GLuint index, GLenum pname, GLdouble* params)

getVertexAttribdvARB(Index, Pname, Params)
 -> cast
    ( ?glGetVertexAttribdvARB
    , <<Index:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getVertexAttribfvARB
%% Args:       Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetVertexAttribfvARB(GLuint index, GLenum pname, GLfloat* params)

getVertexAttribfvARB(Index, Pname, Params)
 -> Bin
    = call
    ( ?glGetVertexAttribfvARB
    , <<Index:?GLuint
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

%% Func:       getVertexAttribivARB
%% Args:       Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetVertexAttribivARB(GLuint index, GLenum pname, GLint* params)

getVertexAttribivARB(Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetVertexAttribivARB
      , <<Index:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetVertexAttribivARBLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getVertexAttribPointervARB
%% Args:       Index, Pname, Pointer
%% Returns:    ok
%% C-API func: void glGetVertexAttribPointervARB(GLuint index, GLenum pname, GLvoid** pointer)

getVertexAttribPointervARB(Index, Pname, Pointer)
 -> cast
    ( ?glGetVertexAttribPointervARB
    , <<Index:?GLuint
      , Pname:?GLenum
      , Pointer:?_PTR
      >>
    )
.

%% Func:       isProgramARB
%% Args:       Program
%% Returns:    GLboolean
%% C-API func: GLboolean glIsProgramARB(GLuint program)

isProgramARB(Program)
 -> Bin
    = call
      ( ?glIsProgramARB
      , <<Program:?GLuint
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

%% GL_ARB_fragment_program
%% GL_ARB_vertex_buffer_object

%% Func:       bindBufferARB
%% Args:       Target, Buffer
%% Returns:    ok
%% C-API func: void glBindBufferARB(GLenum target, GLuint buffer)

bindBufferARB(Target, Buffer)
 -> cast
    ( ?glBindBufferARB
    , <<Target:?GLenum
      , Buffer:?GLuint
      >>
    )
.

%% Func:       deleteBuffersARB
%% Args:       N, Buffers
%% Returns:    ok
%% C-API func: void glDeleteBuffersARB(GLsizei n, const GLuint* buffers)

deleteBuffersARB(N, Buffers)
 -> cast
    ( ?glDeleteBuffersARB
    , <<N:?GLsizei
      , Buffers:?_PTR
      >>
    )
.

%% Func:       genBuffersARB
%% Args:       N, Buffers
%% Returns:    ok
%% C-API func: void glGenBuffersARB(GLsizei n, GLuint* buffers)

genBuffersARB(N, Buffers)
 -> cast
    ( ?glGenBuffersARB
    , <<N:?GLsizei
      , Buffers:?_PTR
      >>
    )
.

%% Func:       isBufferARB
%% Args:       Buffer
%% Returns:    GLboolean
%% C-API func: GLboolean glIsBufferARB(GLuint buffer)

isBufferARB(Buffer)
 -> Bin
    = call
      ( ?glIsBufferARB
      , <<Buffer:?GLuint
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

%% Func:       bufferDataARB
%% Args:       Target, Size, Data, Usage
%% Returns:    ok
%% C-API func: void glBufferDataARB(GLenum target, GLsizeiptrARB size, const GLvoid* data, GLenum usage)

bufferDataARB(Target, Size, Data, Usage)
 -> cast
    ( ?glBufferDataARB
    , <<Target:?GLenum
      , Size:?GLsizeiptrARB
      , Data:?_PTR
      , Usage:?GLenum
      >>
    )
.

%% Func:       bufferSubDataARB
%% Args:       Target, Offset, Size, Data
%% Returns:    ok
%% C-API func: void glBufferSubDataARB(GLenum target, GLintptrARB offset, GLsizeiptrARB size, const GLvoid* data)

bufferSubDataARB(Target, Offset, Size, Data)
 -> cast
    ( ?glBufferSubDataARB
    , <<Target:?GLenum
      , Offset:?GLintptrARB
      , Size:?GLsizeiptrARB
      , Data:?_PTR
      >>
    )
.

%% Func:       getBufferSubDataARB
%% Args:       Target, Offset, Size, Data
%% Returns:    ok
%% C-API func: void glGetBufferSubDataARB(GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid* data)

getBufferSubDataARB(Target, Offset, Size, Data)
 -> cast
    ( ?glGetBufferSubDataARB
    , <<Target:?GLenum
      , Offset:?GLintptrARB
      , Size:?GLsizeiptrARB
      , Data:?_PTR
      >>
    )
.

%% Func:       mapBufferARB
%% Args:       Target, Access
%% Returns:    ok
%% C-API func: GLvoid* glMapBufferARB(GLenum target, GLenum access)

mapBufferARB(Target, Access)
 -> cast
    ( ?glMapBufferARB
    , <<Target:?GLenum
      , Access:?GLenum
      >>
    )
.

%% Func:       unmapBufferARB
%% Args:       Target
%% Returns:    GLboolean
%% C-API func: GLboolean glUnmapBufferARB(GLenum target)

unmapBufferARB(Target)
 -> Bin
    = call
      ( ?glUnmapBufferARB
      , <<Target:?GLenum
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

%% Func:       getBufferParameterivARB
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetBufferParameterivARB(GLenum target, GLenum pname, GLint* params)

getBufferParameterivARB(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetBufferParameterivARB
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetBufferParameterivARBLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getBufferPointervARB
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glGetBufferPointervARB(GLenum target, GLenum pname, GLvoid** params)

getBufferPointervARB(Target, Pname, Params)
 -> cast
    ( ?glGetBufferPointervARB
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% GL_ARB_occlusion_query

%% Func:       genQueriesARB
%% Args:       N, Ids
%% Returns:    ok
%% C-API func: void glGenQueriesARB(GLsizei n, GLuint* ids)

genQueriesARB(N, Ids)
 -> cast
    ( ?glGenQueriesARB
    , <<N:?GLsizei
      , Ids:?_PTR
      >>
    )
.

%% Func:       deleteQueriesARB
%% Args:       N, Ids
%% Returns:    ok
%% C-API func: void glDeleteQueriesARB(GLsizei n, const GLuint* ids)

deleteQueriesARB(N, Ids)
 -> cast
    ( ?glDeleteQueriesARB
    , <<N:?GLsizei
      , Ids:?_PTR
      >>
    )
.

%% Func:       isQueryARB
%% Args:       Id
%% Returns:    GLboolean
%% C-API func: GLboolean glIsQueryARB(GLuint id)

isQueryARB(Id)
 -> Bin
    = call
      ( ?glIsQueryARB
      , <<Id:?GLuint
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

%% Func:       beginQueryARB
%% Args:       Target, Id
%% Returns:    ok
%% C-API func: void glBeginQueryARB(GLenum target, GLuint id)

beginQueryARB(Target, Id)
 -> cast
    ( ?glBeginQueryARB
    , <<Target:?GLenum
      , Id:?GLuint
      >>
    )
.

%% Func:       endQueryARB
%% Args:       Target
%% Returns:    ok
%% C-API func: void glEndQueryARB(GLenum target)

endQueryARB(Target)
 -> cast
    ( ?glEndQueryARB
    , <<Target:?GLenum
      >>
    )
.

%% Func:       getQueryivARB
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetQueryivARB(GLenum target, GLenum pname, GLint* params)

getQueryivARB(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetQueryivARB
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetQueryivARBLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getQueryObjectivARB
%% Args:       Id, Pname
%% Returns:    [Params]
%% C-API func: void glGetQueryObjectivARB(GLuint id, GLenum pname, GLint* params)

getQueryObjectivARB(Id, Pname, Params)
 -> Bin
    = call
      ( ?glGetQueryObjectivARB
      , <<Id:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetQueryObjectivARBLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getQueryObjectuivARB
%% Args:       Id, Pname, Params
%% Returns:    ok
%% C-API func: void glGetQueryObjectuivARB(GLuint id, GLenum pname, GLuint* params)

getQueryObjectuivARB(Id, Pname, Params)
 -> cast
    ( ?glGetQueryObjectuivARB
    , <<Id:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% GL_ARB_shader_objects

%% Func:       deleteObjectARB
%% Args:       Obj
%% Returns:    ok
%% C-API func: void glDeleteObjectARB(GLhandleARB obj)

deleteObjectARB(Obj)
 -> cast
    ( ?glDeleteObjectARB
    , <<Obj:?GLhandleARB
      >>
    )
.

%% Func:       getHandleARB
%% Args:       Pname
%% Returns:    GLhandleARB
%% C-API func: GLhandleARB glGetHandleARB(GLenum pname)

getHandleARB(Pname)
 -> cast
    ( ?glGetHandleARB
    , <<Pname:?GLenum
      >>
    )
.

%% Func:       detachObjectARB
%% Args:       ContainerObj, AttachedObj
%% Returns:    ok
%% C-API func: void glDetachObjectARB(GLhandleARB containerObj, GLhandleARB attachedObj)

detachObjectARB(ContainerObj, AttachedObj)
 -> cast
    ( ?glDetachObjectARB
    , <<ContainerObj:?GLhandleARB
      , AttachedObj:?GLhandleARB
      >>
    )
.

%% Func:       createShaderObjectARB
%% Args:       ShaderType
%% Returns:    GLhandleARB
%% C-API func: GLhandleARB glCreateShaderObjectARB(GLenum shaderType)

createShaderObjectARB(ShaderType)
 -> cast
    ( ?glCreateShaderObjectARB
    , <<ShaderType:?GLenum
      >>
    )
.

%% Func:       shaderSourceARB
%% Args:       ShaderObj, Count, String, Length
%% Returns:    ok
%% C-API func: void glShaderSourceARB(GLhandleARB shaderObj, GLsizei count, const GLcharARB** string, const GLint* length)

shaderSourceARB(ShaderObj, Count, String, Length)
 -> cast
    ( ?glShaderSourceARB
    , <<ShaderObj:?GLhandleARB
      , Count:?GLsizei
      , String:?_PTR
      , Length:?_PTR
      >>
    )
.

%% Func:       compileShaderARB
%% Args:       ShaderObj
%% Returns:    ok
%% C-API func: void glCompileShaderARB(GLhandleARB shaderObj)

compileShaderARB(ShaderObj)
 -> cast
    ( ?glCompileShaderARB
    , <<ShaderObj:?GLhandleARB
      >>
    )
.

%% Func:       createProgramObjectARB
%% Args:       
%% Returns:    GLhandleARB
%% C-API func: GLhandleARB glCreateProgramObjectARB()

createProgramObjectARB()
 -> cast
    ( ?glCreateProgramObjectARB
    , <<
      >>
    )
.

%% Func:       attachObjectARB
%% Args:       ContainerObj, Obj
%% Returns:    ok
%% C-API func: void glAttachObjectARB(GLhandleARB containerObj, GLhandleARB obj)

attachObjectARB(ContainerObj, Obj)
 -> cast
    ( ?glAttachObjectARB
    , <<ContainerObj:?GLhandleARB
      , Obj:?GLhandleARB
      >>
    )
.

%% Func:       linkProgramARB
%% Args:       ProgramObj
%% Returns:    ok
%% C-API func: void glLinkProgramARB(GLhandleARB programObj)

linkProgramARB(ProgramObj)
 -> cast
    ( ?glLinkProgramARB
    , <<ProgramObj:?GLhandleARB
      >>
    )
.

%% Func:       useProgramObjectARB
%% Args:       ProgramObj
%% Returns:    ok
%% C-API func: void glUseProgramObjectARB(GLhandleARB programObj)

useProgramObjectARB(ProgramObj)
 -> cast
    ( ?glUseProgramObjectARB
    , <<ProgramObj:?GLhandleARB
      >>
    )
.

%% Func:       validateProgramARB
%% Args:       ProgramObj
%% Returns:    ok
%% C-API func: void glValidateProgramARB(GLhandleARB programObj)

validateProgramARB(ProgramObj)
 -> cast
    ( ?glValidateProgramARB
    , <<ProgramObj:?GLhandleARB
      >>
    )
.

%% Func:       uniform1fARB
%% Args:       Location, V0
%% Returns:    ok
%% C-API func: void glUniform1fARB(GLint location, GLfloat v0)

uniform1fARB(Location, V0)
 -> cast
    ( ?glUniform1fARB
    , <<Location:?GLint
      , V0:?GLfloat
      >>
    )
.

%% Func:       uniform2fARB
%% Args:       Location, V0, V1
%% Returns:    ok
%% C-API func: void glUniform2fARB(GLint location, GLfloat v0, GLfloat v1)

uniform2fARB(Location, V0, V1)
 -> cast
    ( ?glUniform2fARB
    , <<Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      >>
    )
.

%% Func:       uniform3fARB
%% Args:       Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glUniform3fARB(GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

uniform3fARB(Location, V0, V1, V2)
 -> cast
    ( ?glUniform3fARB
    , <<Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      , V2:?GLfloat
      >>
    )
.

%% Func:       uniform4fARB
%% Args:       Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glUniform4fARB(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)

uniform4fARB(Location, V0, V1, V2, V3)
 -> cast
    ( ?glUniform4fARB
    , <<Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      >>
    )
.

%% Func:       uniform1iARB
%% Args:       Location, V0
%% Returns:    ok
%% C-API func: void glUniform1iARB(GLint location, GLint v0)

uniform1iARB(Location, V0)
 -> cast
    ( ?glUniform1iARB
    , <<Location:?GLint
      , V0:?GLint
      >>
    )
.

%% Func:       uniform2iARB
%% Args:       Location, V0, V1
%% Returns:    ok
%% C-API func: void glUniform2iARB(GLint location, GLint v0, GLint v1)

uniform2iARB(Location, V0, V1)
 -> cast
    ( ?glUniform2iARB
    , <<Location:?GLint
      , V0:?GLint
      , V1:?GLint
      >>
    )
.

%% Func:       uniform3iARB
%% Args:       Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glUniform3iARB(GLint location, GLint v0, GLint v1, GLint v2)

uniform3iARB(Location, V0, V1, V2)
 -> cast
    ( ?glUniform3iARB
    , <<Location:?GLint
      , V0:?GLint
      , V1:?GLint
      , V2:?GLint
      >>
    )
.

%% Func:       uniform4iARB
%% Args:       Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glUniform4iARB(GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

uniform4iARB(Location, V0, V1, V2, V3)
 -> cast
    ( ?glUniform4iARB
    , <<Location:?GLint
      , V0:?GLint
      , V1:?GLint
      , V2:?GLint
      , V3:?GLint
      >>
    )
.

%% Func:       uniform1fvARB
%% Args:       Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniform1fvARB(GLint location, GLsizei count, const GLfloat* value)

uniform1fvARB(Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniform1fvARB
    , [ <<Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       uniform2fvARB
%% Args:       Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniform2fvARB(GLint location, GLsizei count, const GLfloat* value)

uniform2fvARB(Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniform2fvARB
    , [ <<Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       uniform3fvARB
%% Args:       Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniform3fvARB(GLint location, GLsizei count, const GLfloat* value)

uniform3fvARB(Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniform3fvARB
    , [ <<Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       uniform4fvARB
%% Args:       Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniform4fvARB(GLint location, GLsizei count, const GLfloat* value)

uniform4fvARB(Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniform4fvARB
    , [ <<Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       uniform1ivARB
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform1ivARB(GLint location, GLsizei count, const GLint* value)

uniform1ivARB(Location, Count, Value)
 -> cast
    ( ?glUniform1ivARB
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform2ivARB
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform2ivARB(GLint location, GLsizei count, const GLint* value)

uniform2ivARB(Location, Count, Value)
 -> cast
    ( ?glUniform2ivARB
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform3ivARB
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform3ivARB(GLint location, GLsizei count, const GLint* value)

uniform3ivARB(Location, Count, Value)
 -> cast
    ( ?glUniform3ivARB
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform4ivARB
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform4ivARB(GLint location, GLsizei count, const GLint* value)

uniform4ivARB(Location, Count, Value)
 -> cast
    ( ?glUniform4ivARB
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix2fvARB
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix2fvARB(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix2fvARB(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix2fvARB
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       uniformMatrix3fvARB
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix3fvARB(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix3fvARB(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix3fvARB
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       uniformMatrix4fvARB
%% Args:       Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glUniformMatrix4fvARB(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix4fvARB(Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glUniformMatrix4fvARB
    , [ <<Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       getObjectParameterfvARB
%% Args:       Obj, Pname
%% Returns:    [Params]
%% C-API func: void glGetObjectParameterfvARB(GLhandleARB obj, GLenum pname, GLfloat* params)

getObjectParameterfvARB(Obj, Pname, Params)
 -> Bin
    = call
    ( ?glGetObjectParameterfvARB
    , <<Obj:?GLhandleARB
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

%% Func:       getObjectParameterivARB
%% Args:       Obj, Pname
%% Returns:    [Params]
%% C-API func: void glGetObjectParameterivARB(GLhandleARB obj, GLenum pname, GLint* params)

getObjectParameterivARB(Obj, Pname, Params)
 -> Bin
    = call
      ( ?glGetObjectParameterivARB
      , <<Obj:?GLhandleARB
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetObjectParameterivARBLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getInfoLogARB
%% Args:       Obj, MaxLength, Length, InfoLog
%% Returns:    ok
%% C-API func: void glGetInfoLogARB(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* infoLog)

getInfoLogARB(Obj, MaxLength, Length, InfoLog)
 -> cast
    ( ?glGetInfoLogARB
    , <<Obj:?GLhandleARB
      , MaxLength:?GLsizei
      , Length:?_PTR
      , InfoLog:?_PTR
      >>
    )
.

%% Func:       getAttachedObjectsARB
%% Args:       ContainerObj, MaxCount, Count, Obj
%% Returns:    ok
%% C-API func: void glGetAttachedObjectsARB(GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB* obj)

getAttachedObjectsARB(ContainerObj, MaxCount, Count, Obj)
 -> cast
    ( ?glGetAttachedObjectsARB
    , <<ContainerObj:?GLhandleARB
      , MaxCount:?GLsizei
      , Count:?_PTR
      , Obj:?GLhandleARB*
      >>
    )
.

%% Func:       getUniformLocationARB
%% Args:       ProgramObj, Name
%% Returns:    GLint
%% C-API func: GLint glGetUniformLocationARB(GLhandleARB programObj, const GLcharARB* name)

getUniformLocationARB(ProgramObj, Name)
 -> cast
    ( ?glGetUniformLocationARB
    , <<ProgramObj:?GLhandleARB
      , Name:?_PTR
      >>
    )
.

%% Func:       getActiveUniformARB
%% Args:       ProgramObj, Index, MaxLength, Length, Size, Type, Name
%% Returns:    ok
%% C-API func: void glGetActiveUniformARB(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name)

getActiveUniformARB(ProgramObj, Index, MaxLength, Length, Size, Type, Name)
 -> cast
    ( ?glGetActiveUniformARB
    , <<ProgramObj:?GLhandleARB
      , Index:?GLuint
      , MaxLength:?GLsizei
      , Length:?_PTR
      , Size:?_PTR
      , Type:?_PTR
      , Name:?_PTR
      >>
    )
.

%% Func:       getUniformfvARB
%% Args:       ProgramObj, Location
%% Returns:    [Params]
%% C-API func: void glGetUniformfvARB(GLhandleARB programObj, GLint location, GLfloat* params)

getUniformfvARB(ProgramObj, Location, Params)
 -> Bin
    = call
    ( ?glGetUniformfvARB
    , <<ProgramObj:?GLhandleARB
      , Location:?GLint
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

%% Func:       getUniformivARB
%% Args:       ProgramObj, Location
%% Returns:    [Params]
%% C-API func: void glGetUniformivARB(GLhandleARB programObj, GLint location, GLint* params)

getUniformivARB(ProgramObj, Location, Params)
 -> Bin
    = call
      ( ?glGetUniformivARB
      , <<ProgramObj:?GLhandleARB
        , Location:?GLint
        >>
      )
  , ParamsLen
    = glGetUniformivARBLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getShaderSourceARB
%% Args:       Obj, MaxLength, Length, Source
%% Returns:    ok
%% C-API func: void glGetShaderSourceARB(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* source)

getShaderSourceARB(Obj, MaxLength, Length, Source)
 -> cast
    ( ?glGetShaderSourceARB
    , <<Obj:?GLhandleARB
      , MaxLength:?GLsizei
      , Length:?_PTR
      , Source:?_PTR
      >>
    )
.

%% GL_ARB_vertex_shader

%% Func:       bindAttribLocationARB
%% Args:       ProgramObj, Index, Name
%% Returns:    ok
%% C-API func: void glBindAttribLocationARB(GLhandleARB programObj, GLuint index, const GLcharARB* name)

bindAttribLocationARB(ProgramObj, Index, Name)
 -> cast
    ( ?glBindAttribLocationARB
    , <<ProgramObj:?GLhandleARB
      , Index:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       getActiveAttribARB
%% Args:       ProgramObj, Index, MaxLength, Length, Size, Type, Name
%% Returns:    ok
%% C-API func: void glGetActiveAttribARB(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name)

getActiveAttribARB(ProgramObj, Index, MaxLength, Length, Size, Type, Name)
 -> cast
    ( ?glGetActiveAttribARB
    , <<ProgramObj:?GLhandleARB
      , Index:?GLuint
      , MaxLength:?GLsizei
      , Length:?_PTR
      , Size:?_PTR
      , Type:?_PTR
      , Name:?_PTR
      >>
    )
.

%% Func:       getAttribLocationARB
%% Args:       ProgramObj, Name
%% Returns:    GLint
%% C-API func: GLint glGetAttribLocationARB(GLhandleARB programObj, const GLcharARB* name)

getAttribLocationARB(ProgramObj, Name)
 -> cast
    ( ?glGetAttribLocationARB
    , <<ProgramObj:?GLhandleARB
      , Name:?_PTR
      >>
    )
.

%% GL_ARB_fragment_shader
%% GL_ARB_shading_language_100
%% GL_ARB_texture_non_power_of_two
%% GL_ARB_point_sprite
%% GL_ARB_fragment_program_shadow
%% GL_ARB_draw_buffers

%% Func:       drawBuffersARB
%% Args:       N, Bufs
%% Returns:    ok
%% C-API func: void glDrawBuffersARB(GLsizei n, const GLenum* bufs)

drawBuffersARB(N, Bufs)
 -> cast
    ( ?glDrawBuffersARB
    , <<N:?GLsizei
      , Bufs:?_PTR
      >>
    )
.

%% GL_ARB_texture_rectangle
%% GL_ARB_color_buffer_float

%% Func:       clampColorARB
%% Args:       Target, Clamp
%% Returns:    ok
%% C-API func: void glClampColorARB(GLenum target, GLenum clamp)

clampColorARB(Target, Clamp)
 -> cast
    ( ?glClampColorARB
    , <<Target:?GLenum
      , Clamp:?GLenum
      >>
    )
.

%% GL_ARB_half_float_pixel
%% GL_ARB_texture_float
%% GL_ARB_pixel_buffer_object
%% GL_ARB_depth_buffer_float
%% GL_ARB_draw_instanced

%% Func:       drawArraysInstancedARB
%% Args:       Mode, First, Count, Primcount
%% Returns:    ok
%% C-API func: void glDrawArraysInstancedARB(GLenum mode, GLint first, GLsizei count, GLsizei primcount)

drawArraysInstancedARB(Mode, First, Count, Primcount)
 -> cast
    ( ?glDrawArraysInstancedARB
    , <<Mode:?GLenum
      , First:?GLint
      , Count:?GLsizei
      , Primcount:?GLsizei
      >>
    )
.

%% Func:       drawElementsInstancedARB
%% Args:       Mode, Count, Type, Indices, Primcount
%% Returns:    ok
%% C-API func: void glDrawElementsInstancedARB(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei primcount)

drawElementsInstancedARB(Mode, Count, Type, Indices, Primcount)
 -> cast
    ( ?glDrawElementsInstancedARB
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Primcount:?GLsizei
      >>
    )
.

%% GL_ARB_framebuffer_object

%% Func:       isRenderbuffer
%% Args:       Renderbuffer
%% Returns:    GLboolean
%% C-API func: GLboolean glIsRenderbuffer(GLuint renderbuffer)

isRenderbuffer(Renderbuffer)
 -> Bin
    = call
      ( ?glIsRenderbuffer
      , <<Renderbuffer:?GLuint
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

%% Func:       bindRenderbuffer
%% Args:       Target, Renderbuffer
%% Returns:    ok
%% C-API func: void glBindRenderbuffer(GLenum target, GLuint renderbuffer)

bindRenderbuffer(Target, Renderbuffer)
 -> cast
    ( ?glBindRenderbuffer
    , <<Target:?GLenum
      , Renderbuffer:?GLuint
      >>
    )
.

%% Func:       deleteRenderbuffers
%% Args:       N, Renderbuffers
%% Returns:    ok
%% C-API func: void glDeleteRenderbuffers(GLsizei n, const GLuint* renderbuffers)

deleteRenderbuffers(N, Renderbuffers)
 -> cast
    ( ?glDeleteRenderbuffers
    , <<N:?GLsizei
      , Renderbuffers:?_PTR
      >>
    )
.

%% Func:       genRenderbuffers
%% Args:       N, Renderbuffers
%% Returns:    ok
%% C-API func: void glGenRenderbuffers(GLsizei n, GLuint* renderbuffers)

genRenderbuffers(N, Renderbuffers)
 -> cast
    ( ?glGenRenderbuffers
    , <<N:?GLsizei
      , Renderbuffers:?_PTR
      >>
    )
.

%% Func:       renderbufferStorage
%% Args:       Target, Internalformat, Width, Height
%% Returns:    ok
%% C-API func: void glRenderbufferStorage(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)

renderbufferStorage(Target, Internalformat, Width, Height)
 -> cast
    ( ?glRenderbufferStorage
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       getRenderbufferParameteriv
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetRenderbufferParameteriv(GLenum target, GLenum pname, GLint* params)

getRenderbufferParameteriv(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetRenderbufferParameteriv
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetRenderbufferParameterivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       isFramebuffer
%% Args:       Framebuffer
%% Returns:    GLboolean
%% C-API func: GLboolean glIsFramebuffer(GLuint framebuffer)

isFramebuffer(Framebuffer)
 -> Bin
    = call
      ( ?glIsFramebuffer
      , <<Framebuffer:?GLuint
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

%% Func:       bindFramebuffer
%% Args:       Target, Framebuffer
%% Returns:    ok
%% C-API func: void glBindFramebuffer(GLenum target, GLuint framebuffer)

bindFramebuffer(Target, Framebuffer)
 -> cast
    ( ?glBindFramebuffer
    , <<Target:?GLenum
      , Framebuffer:?GLuint
      >>
    )
.

%% Func:       deleteFramebuffers
%% Args:       N, Framebuffers
%% Returns:    ok
%% C-API func: void glDeleteFramebuffers(GLsizei n, const GLuint* framebuffers)

deleteFramebuffers(N, Framebuffers)
 -> cast
    ( ?glDeleteFramebuffers
    , <<N:?GLsizei
      , Framebuffers:?_PTR
      >>
    )
.

%% Func:       genFramebuffers
%% Args:       N, Framebuffers
%% Returns:    ok
%% C-API func: void glGenFramebuffers(GLsizei n, GLuint* framebuffers)

genFramebuffers(N, Framebuffers)
 -> cast
    ( ?glGenFramebuffers
    , <<N:?GLsizei
      , Framebuffers:?_PTR
      >>
    )
.

%% Func:       checkFramebufferStatus
%% Args:       Target
%% Returns:    GLenum
%% C-API func: GLenum glCheckFramebufferStatus(GLenum target)

checkFramebufferStatus(Target)
 -> cast
    ( ?glCheckFramebufferStatus
    , <<Target:?GLenum
      >>
    )
.

%% Func:       framebufferTexture1D
%% Args:       Target, Attachment, Textarget, Texture, Level
%% Returns:    ok
%% C-API func: void glFramebufferTexture1D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

framebufferTexture1D(Target, Attachment, Textarget, Texture, Level)
 -> cast
    ( ?glFramebufferTexture1D
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Textarget:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% Func:       framebufferTexture2D
%% Args:       Target, Attachment, Textarget, Texture, Level
%% Returns:    ok
%% C-API func: void glFramebufferTexture2D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

framebufferTexture2D(Target, Attachment, Textarget, Texture, Level)
 -> cast
    ( ?glFramebufferTexture2D
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Textarget:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% Func:       framebufferTexture3D
%% Args:       Target, Attachment, Textarget, Texture, Level, Zoffset
%% Returns:    ok
%% C-API func: void glFramebufferTexture3D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)

framebufferTexture3D(Target, Attachment, Textarget, Texture, Level, Zoffset)
 -> cast
    ( ?glFramebufferTexture3D
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Textarget:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      , Zoffset:?GLint
      >>
    )
.

%% Func:       framebufferRenderbuffer
%% Args:       Target, Attachment, Renderbuffertarget, Renderbuffer
%% Returns:    ok
%% C-API func: void glFramebufferRenderbuffer(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

framebufferRenderbuffer(Target, Attachment, Renderbuffertarget, Renderbuffer)
 -> cast
    ( ?glFramebufferRenderbuffer
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Renderbuffertarget:?GLenum
      , Renderbuffer:?GLuint
      >>
    )
.

%% Func:       getFramebufferAttachmentParameteriv
%% Args:       Target, Attachment, Pname
%% Returns:    [Params]
%% C-API func: void glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname, GLint* params)

getFramebufferAttachmentParameteriv(Target, Attachment, Pname, Params)
 -> Bin
    = call
      ( ?glGetFramebufferAttachmentParameteriv
      , <<Target:?GLenum
        , Attachment:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetFramebufferAttachmentParameterivLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       generateMipmap
%% Args:       Target
%% Returns:    ok
%% C-API func: void glGenerateMipmap(GLenum target)

generateMipmap(Target)
 -> cast
    ( ?glGenerateMipmap
    , <<Target:?GLenum
      >>
    )
.

%% Func:       blitFramebuffer
%% Args:       SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, Mask, Filter
%% Returns:    ok
%% C-API func: void glBlitFramebuffer(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

blitFramebuffer(SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, Mask, Filter)
 -> cast
    ( ?glBlitFramebuffer
    , <<SrcX0:?GLint
      , SrcY0:?GLint
      , SrcX1:?GLint
      , SrcY1:?GLint
      , DstX0:?GLint
      , DstY0:?GLint
      , DstX1:?GLint
      , DstY1:?GLint
      , Mask:?GLbitfield
      , Filter:?GLenum
      >>
    )
.

%% Func:       renderbufferStorageMultisample
%% Args:       Target, Samples, Internalformat, Width, Height
%% Returns:    ok
%% C-API func: void glRenderbufferStorageMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

renderbufferStorageMultisample(Target, Samples, Internalformat, Width, Height)
 -> cast
    ( ?glRenderbufferStorageMultisample
    , <<Target:?GLenum
      , Samples:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       framebufferTextureLayer
%% Args:       Target, Attachment, Texture, Level, Layer
%% Returns:    ok
%% C-API func: void glFramebufferTextureLayer(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

framebufferTextureLayer(Target, Attachment, Texture, Level, Layer)
 -> cast
    ( ?glFramebufferTextureLayer
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      , Layer:?GLint
      >>
    )
.

%% GL_ARB_framebuffer_sRGB
%% GL_ARB_geometry_shader4

%% Func:       programParameteriARB
%% Args:       Program, Pname, Value
%% Returns:    ok
%% C-API func: void glProgramParameteriARB(GLuint program, GLenum pname, GLint value)

programParameteriARB(Program, Pname, Value)
 -> cast
    ( ?glProgramParameteriARB
    , <<Program:?GLuint
      , Pname:?GLenum
      , Value:?GLint
      >>
    )
.

%% Func:       framebufferTextureARB
%% Args:       Target, Attachment, Texture, Level
%% Returns:    ok
%% C-API func: void glFramebufferTextureARB(GLenum target, GLenum attachment, GLuint texture, GLint level)

framebufferTextureARB(Target, Attachment, Texture, Level)
 -> cast
    ( ?glFramebufferTextureARB
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% Func:       framebufferTextureLayerARB
%% Args:       Target, Attachment, Texture, Level, Layer
%% Returns:    ok
%% C-API func: void glFramebufferTextureLayerARB(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

framebufferTextureLayerARB(Target, Attachment, Texture, Level, Layer)
 -> cast
    ( ?glFramebufferTextureLayerARB
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      , Layer:?GLint
      >>
    )
.

%% Func:       framebufferTextureFaceARB
%% Args:       Target, Attachment, Texture, Level, Face
%% Returns:    ok
%% C-API func: void glFramebufferTextureFaceARB(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face)

framebufferTextureFaceARB(Target, Attachment, Texture, Level, Face)
 -> cast
    ( ?glFramebufferTextureFaceARB
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      , Face:?GLenum
      >>
    )
.

%% GL_ARB_half_float_vertex
%% GL_ARB_instanced_arrays

%% Func:       vertexAttribDivisorARB
%% Args:       Index, Divisor
%% Returns:    ok
%% C-API func: void glVertexAttribDivisorARB(GLuint index, GLuint divisor)

vertexAttribDivisorARB(Index, Divisor)
 -> cast
    ( ?glVertexAttribDivisor
    , <<Index:?GLuint
      , Divisor:?GLuint
      >>
    )
.

%% GL_ARB_map_buffer_range

%% Func:       mapBufferRange
%% Args:       Target, Offset, Length, Access
%% Returns:    ok
%% C-API func: GLvoid* glMapBufferRange(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access)

mapBufferRange(Target, Offset, Length, Access)
 -> cast
    ( ?glMapBufferRange
    , <<Target:?GLenum
      , Offset:?GLintptr
      , Length:?GLsizeiptr
      , Access:?GLbitfield
      >>
    )
.

%% Func:       flushMappedBufferRange
%% Args:       Target, Offset, Length
%% Returns:    ok
%% C-API func: void glFlushMappedBufferRange(GLenum target, GLintptr offset, GLsizeiptr length)

flushMappedBufferRange(Target, Offset, Length)
 -> cast
    ( ?glFlushMappedBufferRange
    , <<Target:?GLenum
      , Offset:?GLintptr
      , Length:?GLsizeiptr
      >>
    )
.

%% GL_ARB_texture_buffer_object

%% Func:       texBufferARB
%% Args:       Target, Internalformat, Buffer
%% Returns:    ok
%% C-API func: void glTexBufferARB(GLenum target, GLenum internalformat, GLuint buffer)

texBufferARB(Target, Internalformat, Buffer)
 -> cast
    ( ?glTexBufferARB
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Buffer:?GLuint
      >>
    )
.

%% GL_ARB_texture_compression_rgtc
%% GL_ARB_texture_rg
%% GL_ARB_vertex_array_object

%% Func:       bindVertexArray
%% Args:       Array
%% Returns:    ok
%% C-API func: void glBindVertexArray(GLuint array)

bindVertexArray(Array)
 -> cast
    ( ?glBindVertexArray
    , <<Array:?GLuint
      >>
    )
.

%% Func:       deleteVertexArrays
%% Args:       N, Arrays
%% Returns:    ok
%% C-API func: void glDeleteVertexArrays(GLsizei n, const GLuint* arrays)

deleteVertexArrays(N, Arrays)
 -> cast
    ( ?glDeleteVertexArrays
    , <<N:?GLsizei
      , Arrays:?_PTR
      >>
    )
.

%% Func:       genVertexArrays
%% Args:       N, Arrays
%% Returns:    ok
%% C-API func: void glGenVertexArrays(GLsizei n, GLuint* arrays)

genVertexArrays(N, Arrays)
 -> cast
    ( ?glGenVertexArrays
    , <<N:?GLsizei
      , Arrays:?_PTR
      >>
    )
.

%% Func:       isVertexArray
%% Args:       Array
%% Returns:    GLboolean
%% C-API func: GLboolean glIsVertexArray(GLuint array)

isVertexArray(Array)
 -> Bin
    = call
      ( ?glIsVertexArray
      , <<Array:?GLuint
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

%% GL_ARB_uniform_buffer_object

%% Func:       getActiveUniformsiv
%% Args:       Program, UniformCount, UniformNames, UniformIndices
%% Returns:    ok
%% C-API func: void glGetActiveUniformsiv(GLuint program, GLsizei uniformCount, const GLchar** uniformNames, GLuint* uniformIndices)

getActiveUniformsiv(Program, UniformCount, UniformNames, UniformIndices)
 -> cast
    ( ?glGetActiveUniformsiv
    , <<Program:?GLuint
      , UniformCount:?GLsizei
      , UniformNames:?_PTR
      , UniformIndices:?_PTR
      >>
    )
.

%% Func:       getActiveUniformsiv
%% Args:       Program, UniformCount, UniformIndices, Pname, Params
%% Returns:    ok
%% C-API func: void glGetActiveUniformsiv(GLuint program, GLsizei uniformCount, const GLuint* uniformIndices, GLenum pname, GLint* params)

getActiveUniformsiv(Program, UniformCount, UniformIndices, Pname, Params)
 -> cast
    ( ?glGetActiveUniformsiv
    , <<Program:?GLuint
      , UniformCount:?GLsizei
      , UniformIndices:?_PTR
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getActiveUniformName
%% Args:       Program, UniformIndex, BufSize, Length, UniformName
%% Returns:    ok
%% C-API func: void glGetActiveUniformName(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName)

getActiveUniformName(Program, UniformIndex, BufSize, Length, UniformName)
 -> cast
    ( ?glGetActiveUniformName
    , <<Program:?GLuint
      , UniformIndex:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , UniformName:?_PTR
      >>
    )
.

%% Func:       getUniformBlockIndex
%% Args:       Program, UniformBlockName
%% Returns:    GLuint
%% C-API func: GLuint glGetUniformBlockIndex(GLuint program, const GLchar* uniformBlockName)

getUniformBlockIndex(Program, UniformBlockName)
 -> cast
    ( ?glGetUniformBlockIndex
    , <<Program:?GLuint
      , UniformBlockName:?_PTR
      >>
    )
.

%% Func:       getActiveUniformBlockiv
%% Args:       Program, UniformBlockIndex, Pname, Params
%% Returns:    ok
%% C-API func: void glGetActiveUniformBlockiv(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params)

getActiveUniformBlockiv(Program, UniformBlockIndex, Pname, Params)
 -> cast
    ( ?glGetActiveUniformBlockiv
    , <<Program:?GLuint
      , UniformBlockIndex:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getActiveUniformBlockName
%% Args:       Program, UniformBlockIndex, BufSize, Length, UniformBlockName
%% Returns:    ok
%% C-API func: void glGetActiveUniformBlockName(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName)

getActiveUniformBlockName(Program, UniformBlockIndex, BufSize, Length, UniformBlockName)
 -> cast
    ( ?glGetActiveUniformBlockName
    , <<Program:?GLuint
      , UniformBlockIndex:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , UniformBlockName:?_PTR
      >>
    )
.

%% Func:       uniformBlockBinding
%% Args:       Program, UniformBlockIndex, UniformBlockBinding
%% Returns:    ok
%% C-API func: void glUniformBlockBinding(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding)

uniformBlockBinding(Program, UniformBlockIndex, UniformBlockBinding)
 -> cast
    ( ?glUniformBlockBinding
    , <<Program:?GLuint
      , UniformBlockIndex:?GLuint
      , UniformBlockBinding:?GLuint
      >>
    )
.

%% GL_ARB_compatibility
%% GL_ARB_copy_buffer

%% Func:       copyBufferSubData
%% Args:       ReadTarget, WriteTarget, ReadOffset, WriteOffset, Size
%% Returns:    ok
%% C-API func: void glCopyBufferSubData(GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)

copyBufferSubData(ReadTarget, WriteTarget, ReadOffset, WriteOffset, Size)
 -> cast
    ( ?glCopyBufferSubData
    , <<ReadTarget:?GLenum
      , WriteTarget:?GLenum
      , ReadOffset:?GLintptr
      , WriteOffset:?GLintptr
      , Size:?GLsizeiptr
      >>
    )
.

%% GL_ARB_shader_texture_lod
%% GL_ARB_depth_clamp
%% GL_ARB_draw_elements_base_vertex

%% Func:       drawElementsBaseVertex
%% Args:       Mode, Count, Type, Indices, Basevertex
%% Returns:    ok
%% C-API func: void glDrawElementsBaseVertex(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLint basevertex)

drawElementsBaseVertex(Mode, Count, Type, Indices, Basevertex)
 -> cast
    ( ?glDrawElementsBaseVertex
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Basevertex:?GLint
      >>
    )
.

%% Func:       drawRangeElementsBaseVertex
%% Args:       Mode, Start, End, Count, Type, Indices, Basevertex
%% Returns:    ok
%% C-API func: void glDrawRangeElementsBaseVertex(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid* indices, GLint basevertex)

drawRangeElementsBaseVertex(Mode, Start, End, Count, Type, Indices, Basevertex)
 -> cast
    ( ?glDrawRangeElementsBaseVertex
    , <<Mode:?GLenum
      , Start:?GLuint
      , End:?GLuint
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Basevertex:?GLint
      >>
    )
.

%% Func:       drawElementsInstancedBaseVertex
%% Args:       Mode, Count, Type, Indices, Primcount, Basevertex
%% Returns:    ok
%% C-API func: void glDrawElementsInstancedBaseVertex(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei primcount, GLint basevertex)

drawElementsInstancedBaseVertex(Mode, Count, Type, Indices, Primcount, Basevertex)
 -> cast
    ( ?glDrawElementsInstancedBaseVertex
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Primcount:?GLsizei
      , Basevertex:?GLint
      >>
    )
.

%% Func:       multiDrawElementsBaseVertex
%% Args:       Mode, Count, Type, Indices, Primcount, Basevertex
%% Returns:    ok
%% C-API func: void glMultiDrawElementsBaseVertex(GLenum mode, const GLsizei* count, GLenum type, const GLvoid** indices, GLsizei primcount, const GLint* basevertex)

multiDrawElementsBaseVertex(Mode, Count, Type, Indices, Primcount, Basevertex)
 -> cast
    ( ?glMultiDrawElementsBaseVertex
    , <<Mode:?GLenum
      , Count:?_PTR
      , Type:?GLenum
      , Indices:?_PTR
      , Primcount:?GLsizei
      , Basevertex:?_PTR
      >>
    )
.

%% GL_ARB_fragment_coord_conventions
%% GL_ARB_provoking_vertex

%% Func:       provokingVertex
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glProvokingVertex(GLenum mode)

provokingVertex(Mode)
 -> cast
    ( ?glProvokingVertex
    , <<Mode:?GLenum
      >>
    )
.

%% GL_ARB_seamless_cube_map
%% GL_ARB_sync

%% Func:       fenceSync
%% Args:       Condition, Flags
%% Returns:    Exdl
%% C-API func: GLsync glFenceSync(GLenum condition, GLbitfield flags)

fenceSync(Condition, Flags)
 -> case
      call
      ( ?glFenceSync
      , <<Condition:?GLenum
        , Flags:?GLbitfield
        >>
      )
    of
      <<Exdl:?GLsync
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       isSync
%% Args:       Sync
%% Returns:    Exdl
%% C-API func: GLboolean glIsSync(GLsync sync)

isSync(Sync)
 -> case
      call
      ( ?glIsSync
      , <<Sync:?GLsync
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

%% Func:       deleteSync
%% Args:       Sync
%% Returns:    ok
%% C-API func: void glDeleteSync(GLsync sync)

deleteSync(Sync)
 -> cast
    ( ?glDeleteSync
    , <<Sync:?GLsync
      >>
    )
.

%% Func:       clientWaitSync
%% Args:       Sync, Flags, Timeout
%% Returns:    Exdl
%% C-API func: GLenum glClientWaitSync(GLsync sync, GLbitfield flags, GLuint64 timeout)

clientWaitSync(Sync, Flags, Timeout)
 -> case
      call
      ( ?glClientWaitSync
      , <<Sync:?GLsync
        , Flags:?GLbitfield
        , Timeout:?GLuint64
        >>
      )
    of
      <<Exdl:?GLenum
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       waitSync
%% Args:       Sync, Flags, Timeout
%% Returns:    ok
%% C-API func: void glWaitSync(GLsync sync, GLbitfield flags, GLuint64 timeout)

waitSync(Sync, Flags, Timeout)
 -> cast
    ( ?glWaitSync
    , <<Sync:?GLsync
      , Flags:?GLbitfield
      , Timeout:?GLuint64
      >>
    )
.

%% Func:       getInteger64v
%% Args:       Pname
%% Returns:    [ Params ]
%% C-API func: void glGetInteger64v(GLenum pname, GLint64* params)

getInteger64v(Pname)
 -> case
      call
      ( ?glGetInteger64v
      , <<Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint64
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getSynciv
%% Args:       Sync, Pname, BufSize
%% Returns:    [ Length, Values ]
%% C-API func: void glGetSynciv(GLsync sync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values)

getSynciv(Sync, Pname, BufSize)
 -> case
      call
      ( ?glGetSynciv
      , <<Sync:?GLsync
        , Pname:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Values:?GLint
      >>
        -> [ Length, Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_ARB_texture_multisample

%% Func:       texImage2DMultisample
%% Args:       Target, Samples, Internalformat, Width, Height, Fixedsamplelocations
%% Returns:    ok
%% C-API func: void glTexImage2DMultisample(GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

texImage2DMultisample(Target, Samples, Internalformat, Width, Height, Fixedsamplelocations)
 -> cast
    ( ?glTexImage2DMultisample
    , <<Target:?GLenum
      , Samples:?GLsizei
      , Internalformat:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Fixedsamplelocations:?GLboolean
      >>
    )
.

%% Func:       texImage3DMultisample
%% Args:       Target, Samples, Internalformat, Width, Height, Depth, Fixedsamplelocations
%% Returns:    ok
%% C-API func: void glTexImage3DMultisample(GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

texImage3DMultisample(Target, Samples, Internalformat, Width, Height, Depth, Fixedsamplelocations)
 -> cast
    ( ?glTexImage3DMultisample
    , <<Target:?GLenum
      , Samples:?GLsizei
      , Internalformat:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Fixedsamplelocations:?GLboolean
      >>
    )
.

%% Func:       getMultisamplefv
%% Args:       Pname, Index
%% Returns:    [ Val ]
%% C-API func: void glGetMultisamplefv(GLenum pname, GLuint index, GLfloat* val)

getMultisamplefv(Pname, Index)
 -> case
      call
      ( ?glGetMultisamplefv
      , <<Pname:?GLenum
        , Index:?GLuint
        >>
      )
    of
      <<Val:?GLfloat
      >>
        -> [ Val ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       sampleMaski
%% Args:       Index, Mask
%% Returns:    ok
%% C-API func: void glSampleMaski(GLuint index, GLbitfield mask)

sampleMaski(Index, Mask)
 -> cast
    ( ?glSampleMaski
    , <<Index:?GLuint
      , Mask:?GLbitfield
      >>
    )
.

%% GL_ARB_vertex_array_bgra

%% GL_ARB_draw_buffers_blend

%% Func:       blendEquationiARB
%% Args:       Buf, Mode
%% Returns:    ok
%% C-API func: void glBlendEquationiARB(GLuint buf, GLenum mode)

blendEquationiARB(Buf, Mode)
 -> cast
    ( ?glBlendEquationiARB
    , <<Buf:?GLuint
      , Mode:?GLenum
      >>
    )
.

%% Func:       blendEquationSeparateiARB
%% Args:       Buf, ModeRGB, ModeAlpha
%% Returns:    ok
%% C-API func: void glBlendEquationSeparateiARB(GLuint buf, GLenum modeRGB, GLenum modeAlpha)

blendEquationSeparateiARB(Buf, ModeRGB, ModeAlpha)
 -> cast
    ( ?glBlendEquationSeparateiARB
    , <<Buf:?GLuint
      , ModeRGB:?GLenum
      , ModeAlpha:?GLenum
      >>
    )
.

%% Func:       blendFunciARB
%% Args:       Buf, Src, Dst
%% Returns:    ok
%% C-API func: void glBlendFunciARB(GLuint buf, GLenum src, GLenum dst)

blendFunciARB(Buf, Src, Dst)
 -> cast
    ( ?glBlendFunciARB
    , <<Buf:?GLuint
      , Src:?GLenum
      , Dst:?GLenum
      >>
    )
.

%% Func:       blendFuncSeparateiARB
%% Args:       Buf, SrcRGB, DstRGB, SrcAlpha, DstAlpha
%% Returns:    ok
%% C-API func: void glBlendFuncSeparateiARB(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

blendFuncSeparateiARB(Buf, SrcRGB, DstRGB, SrcAlpha, DstAlpha)
 -> cast
    ( ?glBlendFuncSeparateiARB
    , <<Buf:?GLuint
      , SrcRGB:?GLenum
      , DstRGB:?GLenum
      , SrcAlpha:?GLenum
      , DstAlpha:?GLenum
      >>
    )
.

%% GL_ARB_sample_shading

%% Func:       minSampleShadingARB
%% Args:       Value
%% Returns:    ok
%% C-API func: void glMinSampleShadingARB(GLclampf value)

minSampleShadingARB(Value)
 -> cast
    ( ?glMinSampleShadingARB
    , <<Value:?GLclampf
      >>
    )
.

%% GL_ARB_texture_cube_map_array

%% GL_ARB_texture_gather

%% GL_ARB_texture_query_lod

%% GL_ARB_shading_language_include

%% Func:       namedStringARB
%% Args:       Type, Namelen, Name, Stringlen, String
%% Returns:    ok
%% C-API func: void glNamedStringARB(GLenum type, GLint namelen, const GLchar* name, GLint stringlen, const GLchar* string)

namedStringARB(Type, Namelen, Name, Stringlen, String)
 -> cast
    ( ?glNamedStringARB
    , <<Type:?GLenum
      , Namelen:?GLint
      , Name:?_PTR
      , Stringlen:?GLint
      , String:?_PTR
      >>
    )
.

%% Func:       deleteNamedStringARB
%% Args:       Namelen, Name
%% Returns:    ok
%% C-API func: void glDeleteNamedStringARB(GLint namelen, const GLchar* name)

deleteNamedStringARB(Namelen, Name)
 -> cast
    ( ?glDeleteNamedStringARB
    , <<Namelen:?GLint
      , Name:?_PTR
      >>
    )
.

%% Func:       compileShaderIncludeARB
%% Args:       Shader, Count, Path, Length
%% Returns:    ok
%% C-API func: void glCompileShaderIncludeARB(GLuint shader, GLsizei count, const GLchar** path, const GLint* length)

compileShaderIncludeARB(Shader, Count, Path, Length)
 -> cast
    ( ?glCompileShaderIncludeARB
    , <<Shader:?GLuint
      , Count:?GLsizei
      , Path:?_PTR
      , Length:?_PTR
      >>
    )
.

%% Func:       isNamedStringARB
%% Args:       Namelen, Name
%% Returns:    Exdl
%% C-API func: GLboolean glIsNamedStringARB(GLint namelen, const GLchar* name)

isNamedStringARB(Namelen, Name)
 -> case
      call
      ( ?glIsNamedStringARB
      , <<Namelen:?GLint
        , Name:?_PTR
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

%% Func:       getNamedStringARB
%% Args:       Namelen, Name, BufSize
%% Returns:    { Stringlen, String }
%% C-API func: void glGetNamedStringARB(GLint namelen, const GLchar* name, GLsizei bufSize, GLint* stringlen, GLchar* string)

getNamedStringARB(Namelen, Name, BufSize)
 -> case
      call
      ( ?glGetNamedStringARB
      , <<Namelen:?GLint
        , Name:?_PTR
        , BufSize:?GLsizei
        >>
      )
    of
      <<Stringlen:?GLint
      , String:?_PTR
      >>
        -> { Stringlen, String }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getNamedStringivARB
%% Args:       Namelen, Name, Pname
%% Returns:    { Params }
%% C-API func: void glGetNamedStringivARB(GLint namelen, const GLchar* name, GLenum pname, GLint* params)

getNamedStringivARB(Namelen, Name, Pname)
 -> case
      call
      ( ?glGetNamedStringivARB
      , <<Namelen:?GLint
        , Name:?_PTR
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_ARB_texture_compression_bptc

%% GL_ARB_blend_func_extended

%% Func:       bindFragDataLocationIndexed
%% Args:       Program, ColorNumber, Index, Name
%% Returns:    ok
%% C-API func: void glBindFragDataLocationIndexed(GLuint program, GLuint colorNumber, GLuint index, const GLchar* name)

bindFragDataLocationIndexed(Program, ColorNumber, Index, Name)
 -> cast
    ( ?glBindFragDataLocationIndexed
    , <<Program:?GLuint
      , ColorNumber:?GLuint
      , Index:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       getFragDataIndex
%% Args:       Program, Name
%% Returns:    Exdl
%% C-API func: GLint glGetFragDataIndex(GLuint program, const GLchar* name)

getFragDataIndex(Program, Name)
 -> case
      call
      ( ?glGetFragDataIndex
      , <<Program:?GLuint
        , Name:?_PTR
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

%% GL_ARB_explicit_attrib_location

%% GL_ARB_occlusion_query2

%% GL_ARB_sampler_objects

%% Func:       genSamplers
%% Args:       Count
%% Returns:    { Samplers }
%% C-API func: void glGenSamplers(GLsizei count, GLuint* samplers)

genSamplers(Count)
 -> case
      call
      ( ?glGenSamplers
      , <<Count:?GLsizei
        >>
      )
    of
      <<Samplers:?GLuint
      >>
        -> { Samplers }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       deleteSamplers
%% Args:       Count, Samplers
%% Returns:    ok
%% C-API func: void glDeleteSamplers(GLsizei count, const GLuint* samplers)

deleteSamplers(Count, Samplers)
 -> cast
    ( ?glDeleteSamplers
    , <<Count:?GLsizei
      , Samplers:?_PTR
      >>
    )
.

%% Func:       isSampler
%% Args:       Sampler
%% Returns:    Exdl
%% C-API func: GLboolean glIsSampler(GLuint sampler)

isSampler(Sampler)
 -> case
      call
      ( ?glIsSampler
      , <<Sampler:?GLuint
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

%% Func:       bindSampler
%% Args:       Unit, Sampler
%% Returns:    ok
%% C-API func: void glBindSampler(GLuint unit, GLuint sampler)

bindSampler(Unit, Sampler)
 -> cast
    ( ?glBindSampler
    , <<Unit:?GLuint
      , Sampler:?GLuint
      >>
    )
.

%% Func:       samplerParameteri
%% Args:       Sampler, Pname, Param
%% Returns:    ok
%% C-API func: void glSamplerParameteri(GLuint sampler, GLenum pname, GLint param)

samplerParameteri(Sampler, Pname, Param)
 -> cast
    ( ?glSamplerParameteri
    , <<Sampler:?GLuint
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       samplerParameteriv
%% Args:       Sampler, Pname, Param
%% Returns:    ok
%% C-API func: void glSamplerParameteriv(GLuint sampler, GLenum pname, const GLint* param)

samplerParameteriv(Sampler, Pname, Param)
 -> cast
    ( ?glSamplerParameteriv
    , <<Sampler:?GLuint
      , Pname:?GLenum
      , Param:?_PTR
      >>
    )
.

%% Func:       samplerParameterf
%% Args:       Sampler, Pname, Param
%% Returns:    ok
%% C-API func: void glSamplerParameterf(GLuint sampler, GLenum pname, GLfloat param)

samplerParameterf(Sampler, Pname, Param)
 -> cast
    ( ?glSamplerParameterf
    , <<Sampler:?GLuint
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       samplerParameterfv
%% Args:       Sampler, Pname, Param
%% Returns:    ok
%% C-API func: void glSamplerParameterfv(GLuint sampler, GLenum pname, const GLfloat* param)

samplerParameterfv(Sampler, Pname, Param)
 -> cast
    ( ?glSamplerParameterfv
    , <<Sampler:?GLuint
      , Pname:?GLenum
      , Param:?_PTR
      >>
    )
.

%% Func:       samplerParameterIiv
%% Args:       Sampler, Pname, Param
%% Returns:    ok
%% C-API func: void glSamplerParameterIiv(GLuint sampler, GLenum pname, const GLint* param)

samplerParameterIiv(Sampler, Pname, Param)
 -> cast
    ( ?glSamplerParameterIiv
    , <<Sampler:?GLuint
      , Pname:?GLenum
      , Param:?_PTR
      >>
    )
.

%% Func:       samplerParameterIuiv
%% Args:       Sampler, Pname, Param
%% Returns:    ok
%% C-API func: void glSamplerParameterIuiv(GLuint sampler, GLenum pname, const GLuint* param)

samplerParameterIuiv(Sampler, Pname, Param)
 -> cast
    ( ?glSamplerParameterIuiv
    , <<Sampler:?GLuint
      , Pname:?GLenum
      , Param:?_PTR
      >>
    )
.

%% Func:       getSamplerParameteriv
%% Args:       Sampler, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetSamplerParameteriv(GLuint sampler, GLenum pname, GLint* params)

getSamplerParameteriv(Sampler, Pname)
 -> case
      call
      ( ?glGetSamplerParameteriv
      , <<Sampler:?GLuint
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

%% Func:       getSamplerParameterIiv
%% Args:       Sampler, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetSamplerParameterIiv(GLuint sampler, GLenum pname, GLint* params)

getSamplerParameterIiv(Sampler, Pname)
 -> case
      call
      ( ?glGetSamplerParameterIiv
      , <<Sampler:?GLuint
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

%% Func:       getSamplerParameterfv
%% Args:       Sampler, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetSamplerParameterfv(GLuint sampler, GLenum pname, GLfloat* params)

getSamplerParameterfv(Sampler, Pname)
 -> case
      call
      ( ?glGetSamplerParameterfv
      , <<Sampler:?GLuint
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

%% Func:       getSamplerParameterIuiv
%% Args:       Sampler, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetSamplerParameterIuiv(GLuint sampler, GLenum pname, GLuint* params)

getSamplerParameterIuiv(Sampler, Pname)
 -> case
      call
      ( ?glGetSamplerParameterIuiv
      , <<Sampler:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLuint
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_ARB_texture_rgb10_a2ui

%% GL_ARB_texture_swizzle

%% GL_ARB_timer_query

%% Func:       queryCounter
%% Args:       Id, Target
%% Returns:    ok
%% C-API func: void glQueryCounter(GLuint id, GLenum target)

queryCounter(Id, Target)
 -> cast
    ( ?glQueryCounter
    , <<Id:?GLuint
      , Target:?GLenum
      >>
    )
.

%% Func:       getQueryObjecti64v
%% Args:       Id, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetQueryObjecti64v(GLuint id, GLenum pname, GLint64* params)

getQueryObjecti64v(Id, Pname)
 -> case
      call
      ( ?glGetQueryObjecti64v
      , <<Id:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint64
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getQueryObjectui64v
%% Args:       Id, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetQueryObjectui64v(GLuint id, GLenum pname, GLuint64* params)

getQueryObjectui64v(Id, Pname)
 -> case
      call
      ( ?glGetQueryObjectui64v
      , <<Id:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLuint64
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_ARB_vertex_type_2_10_10_10_rev

%% Func:       vertexP2ui
%% Args:       Type, Value
%% Returns:    ok
%% C-API func: void glVertexP2ui(GLenum type, GLuint value)

vertexP2ui(Type, Value)
 -> cast
    ( ?glVertexP2ui
    , <<Type:?GLenum
      , Value:?GLuint
      >>
    )
.

%% Func:       vertexP2uiv
%% Args:       Type, Value
%% Returns:    ok
%% C-API func: void glVertexP2uiv(GLenum type, const GLuint* value)

vertexP2uiv(Type, Value)
 -> cast
    ( ?glVertexP2uiv
    , <<Type:?GLenum
      , Value:?_PTR
      >>
    )
.

%% Func:       vertexP3ui
%% Args:       Type, Value
%% Returns:    ok
%% C-API func: void glVertexP3ui(GLenum type, GLuint value)

vertexP3ui(Type, Value)
 -> cast
    ( ?glVertexP3ui
    , <<Type:?GLenum
      , Value:?GLuint
      >>
    )
.

%% Func:       vertexP3uiv
%% Args:       Type, Value
%% Returns:    ok
%% C-API func: void glVertexP3uiv(GLenum type, const GLuint* value)

vertexP3uiv(Type, Value)
 -> cast
    ( ?glVertexP3uiv
    , <<Type:?GLenum
      , Value:?_PTR
      >>
    )
.

%% Func:       vertexP4ui
%% Args:       Type, Value
%% Returns:    ok
%% C-API func: void glVertexP4ui(GLenum type, GLuint value)

vertexP4ui(Type, Value)
 -> cast
    ( ?glVertexP4ui
    , <<Type:?GLenum
      , Value:?GLuint
      >>
    )
.

%% Func:       vertexP4uiv
%% Args:       Type, Value
%% Returns:    ok
%% C-API func: void glVertexP4uiv(GLenum type, const GLuint* value)

vertexP4uiv(Type, Value)
 -> cast
    ( ?glVertexP4uiv
    , <<Type:?GLenum
      , Value:?_PTR
      >>
    )
.

%% Func:       texCoordP1ui
%% Args:       Type, Coords
%% Returns:    ok
%% C-API func: void glTexCoordP1ui(GLenum type, GLuint coords)

texCoordP1ui(Type, Coords)
 -> cast
    ( ?glTexCoordP1ui
    , <<Type:?GLenum
      , Coords:?GLuint
      >>
    )
.

%% Func:       texCoordP1uiv
%% Args:       Type, Coords
%% Returns:    ok
%% C-API func: void glTexCoordP1uiv(GLenum type, const GLuint* coords)

texCoordP1uiv(Type, Coords)
 -> cast
    ( ?glTexCoordP1uiv
    , <<Type:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       texCoordP2ui
%% Args:       Type, Coords
%% Returns:    ok
%% C-API func: void glTexCoordP2ui(GLenum type, GLuint coords)

texCoordP2ui(Type, Coords)
 -> cast
    ( ?glTexCoordP2ui
    , <<Type:?GLenum
      , Coords:?GLuint
      >>
    )
.

%% Func:       texCoordP2uiv
%% Args:       Type, Coords
%% Returns:    ok
%% C-API func: void glTexCoordP2uiv(GLenum type, const GLuint* coords)

texCoordP2uiv(Type, Coords)
 -> cast
    ( ?glTexCoordP2uiv
    , <<Type:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       texCoordP3ui
%% Args:       Type, Coords
%% Returns:    ok
%% C-API func: void glTexCoordP3ui(GLenum type, GLuint coords)

texCoordP3ui(Type, Coords)
 -> cast
    ( ?glTexCoordP3ui
    , <<Type:?GLenum
      , Coords:?GLuint
      >>
    )
.

%% Func:       texCoordP3uiv
%% Args:       Type, Coords
%% Returns:    ok
%% C-API func: void glTexCoordP3uiv(GLenum type, const GLuint* coords)

texCoordP3uiv(Type, Coords)
 -> cast
    ( ?glTexCoordP3uiv
    , <<Type:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       texCoordP4ui
%% Args:       Type, Coords
%% Returns:    ok
%% C-API func: void glTexCoordP4ui(GLenum type, GLuint coords)

texCoordP4ui(Type, Coords)
 -> cast
    ( ?glTexCoordP4ui
    , <<Type:?GLenum
      , Coords:?GLuint
      >>
    )
.

%% Func:       texCoordP4uiv
%% Args:       Type, Coords
%% Returns:    ok
%% C-API func: void glTexCoordP4uiv(GLenum type, const GLuint* coords)

texCoordP4uiv(Type, Coords)
 -> cast
    ( ?glTexCoordP4uiv
    , <<Type:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       multiTexCoordP1ui
%% Args:       Texture, Type, Coords
%% Returns:    ok
%% C-API func: void glMultiTexCoordP1ui(GLenum texture, GLenum type, GLuint coords)

multiTexCoordP1ui(Texture, Type, Coords)
 -> cast
    ( ?glMultiTexCoordP1ui
    , <<Texture:?GLenum
      , Type:?GLenum
      , Coords:?GLuint
      >>
    )
.

%% Func:       multiTexCoordP1uiv
%% Args:       Texture, Type, Coords
%% Returns:    ok
%% C-API func: void glMultiTexCoordP1uiv(GLenum texture, GLenum type, const GLuint* coords)

multiTexCoordP1uiv(Texture, Type, Coords)
 -> cast
    ( ?glMultiTexCoordP1uiv
    , <<Texture:?GLenum
      , Type:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       multiTexCoordP2ui
%% Args:       Texture, Type, Coords
%% Returns:    ok
%% C-API func: void glMultiTexCoordP2ui(GLenum texture, GLenum type, GLuint coords)

multiTexCoordP2ui(Texture, Type, Coords)
 -> cast
    ( ?glMultiTexCoordP2ui
    , <<Texture:?GLenum
      , Type:?GLenum
      , Coords:?GLuint
      >>
    )
.

%% Func:       multiTexCoordP2uiv
%% Args:       Texture, Type, Coords
%% Returns:    ok
%% C-API func: void glMultiTexCoordP2uiv(GLenum texture, GLenum type, const GLuint* coords)

multiTexCoordP2uiv(Texture, Type, Coords)
 -> cast
    ( ?glMultiTexCoordP2uiv
    , <<Texture:?GLenum
      , Type:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       multiTexCoordP3ui
%% Args:       Texture, Type, Coords
%% Returns:    ok
%% C-API func: void glMultiTexCoordP3ui(GLenum texture, GLenum type, GLuint coords)

multiTexCoordP3ui(Texture, Type, Coords)
 -> cast
    ( ?glMultiTexCoordP3ui
    , <<Texture:?GLenum
      , Type:?GLenum
      , Coords:?GLuint
      >>
    )
.

%% Func:       multiTexCoordP3uiv
%% Args:       Texture, Type, Coords
%% Returns:    ok
%% C-API func: void glMultiTexCoordP3uiv(GLenum texture, GLenum type, const GLuint* coords)

multiTexCoordP3uiv(Texture, Type, Coords)
 -> cast
    ( ?glMultiTexCoordP3uiv
    , <<Texture:?GLenum
      , Type:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       multiTexCoordP4ui
%% Args:       Texture, Type, Coords
%% Returns:    ok
%% C-API func: void glMultiTexCoordP4ui(GLenum texture, GLenum type, GLuint coords)

multiTexCoordP4ui(Texture, Type, Coords)
 -> cast
    ( ?glMultiTexCoordP4ui
    , <<Texture:?GLenum
      , Type:?GLenum
      , Coords:?GLuint
      >>
    )
.

%% Func:       multiTexCoordP4uiv
%% Args:       Texture, Type, Coords
%% Returns:    ok
%% C-API func: void glMultiTexCoordP4uiv(GLenum texture, GLenum type, const GLuint* coords)

multiTexCoordP4uiv(Texture, Type, Coords)
 -> cast
    ( ?glMultiTexCoordP4uiv
    , <<Texture:?GLenum
      , Type:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       normalP3ui
%% Args:       Type, Coords
%% Returns:    ok
%% C-API func: void glNormalP3ui(GLenum type, GLuint coords)

normalP3ui(Type, Coords)
 -> cast
    ( ?glNormalP3ui
    , <<Type:?GLenum
      , Coords:?GLuint
      >>
    )
.

%% Func:       normalP3uiv
%% Args:       Type, Coords
%% Returns:    ok
%% C-API func: void glNormalP3uiv(GLenum type, const GLuint* coords)

normalP3uiv(Type, Coords)
 -> cast
    ( ?glNormalP3uiv
    , <<Type:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       colorP3ui
%% Args:       Type, Color
%% Returns:    ok
%% C-API func: void glColorP3ui(GLenum type, GLuint color)

colorP3ui(Type, Color)
 -> cast
    ( ?glColorP3ui
    , <<Type:?GLenum
      , Color:?GLuint
      >>
    )
.

%% Func:       colorP3uiv
%% Args:       Type, Color
%% Returns:    ok
%% C-API func: void glColorP3uiv(GLenum type, const GLuint* color)

colorP3uiv(Type, Color)
 -> cast
    ( ?glColorP3uiv
    , <<Type:?GLenum
      , Color:?_PTR
      >>
    )
.

%% Func:       colorP4ui
%% Args:       Type, Color
%% Returns:    ok
%% C-API func: void glColorP4ui(GLenum type, GLuint color)

colorP4ui(Type, Color)
 -> cast
    ( ?glColorP4ui
    , <<Type:?GLenum
      , Color:?GLuint
      >>
    )
.

%% Func:       colorP4uiv
%% Args:       Type, Color
%% Returns:    ok
%% C-API func: void glColorP4uiv(GLenum type, const GLuint* color)

colorP4uiv(Type, Color)
 -> cast
    ( ?glColorP4uiv
    , <<Type:?GLenum
      , Color:?_PTR
      >>
    )
.

%% Func:       secondaryColorP3ui
%% Args:       Type, Color
%% Returns:    ok
%% C-API func: void glSecondaryColorP3ui(GLenum type, GLuint color)

secondaryColorP3ui(Type, Color)
 -> cast
    ( ?glSecondaryColorP3ui
    , <<Type:?GLenum
      , Color:?GLuint
      >>
    )
.

%% Func:       secondaryColorP3uiv
%% Args:       Type, Color
%% Returns:    ok
%% C-API func: void glSecondaryColorP3uiv(GLenum type, const GLuint* color)

secondaryColorP3uiv(Type, Color)
 -> cast
    ( ?glSecondaryColorP3uiv
    , <<Type:?GLenum
      , Color:?_PTR
      >>
    )
.

%% Func:       vertexAttribP1ui
%% Args:       Index, Type, Normalized, Value
%% Returns:    ok
%% C-API func: void glVertexAttribP1ui(GLuint index, GLenum type, GLboolean normalized, GLuint value)

vertexAttribP1ui(Index, Type, Normalized, Value)
 -> cast
    ( ?glVertexAttribP1ui
    , <<Index:?GLuint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Value:?GLuint
      >>
    )
.

%% Func:       vertexAttribP1uiv
%% Args:       Index, Type, Normalized, Value
%% Returns:    ok
%% C-API func: void glVertexAttribP1uiv(GLuint index, GLenum type, GLboolean normalized, const GLuint* value)

vertexAttribP1uiv(Index, Type, Normalized, Value)
 -> cast
    ( ?glVertexAttribP1uiv
    , <<Index:?GLuint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       vertexAttribP2ui
%% Args:       Index, Type, Normalized, Value
%% Returns:    ok
%% C-API func: void glVertexAttribP2ui(GLuint index, GLenum type, GLboolean normalized, GLuint value)

vertexAttribP2ui(Index, Type, Normalized, Value)
 -> cast
    ( ?glVertexAttribP2ui
    , <<Index:?GLuint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Value:?GLuint
      >>
    )
.

%% Func:       vertexAttribP2uiv
%% Args:       Index, Type, Normalized, Value
%% Returns:    ok
%% C-API func: void glVertexAttribP2uiv(GLuint index, GLenum type, GLboolean normalized, const GLuint* value)

vertexAttribP2uiv(Index, Type, Normalized, Value)
 -> cast
    ( ?glVertexAttribP2uiv
    , <<Index:?GLuint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       vertexAttribP3ui
%% Args:       Index, Type, Normalized, Value
%% Returns:    ok
%% C-API func: void glVertexAttribP3ui(GLuint index, GLenum type, GLboolean normalized, GLuint value)

vertexAttribP3ui(Index, Type, Normalized, Value)
 -> cast
    ( ?glVertexAttribP3ui
    , <<Index:?GLuint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Value:?GLuint
      >>
    )
.

%% Func:       vertexAttribP3uiv
%% Args:       Index, Type, Normalized, Value
%% Returns:    ok
%% C-API func: void glVertexAttribP3uiv(GLuint index, GLenum type, GLboolean normalized, const GLuint* value)

vertexAttribP3uiv(Index, Type, Normalized, Value)
 -> cast
    ( ?glVertexAttribP3uiv
    , <<Index:?GLuint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       vertexAttribP4ui
%% Args:       Index, Type, Normalized, Value
%% Returns:    ok
%% C-API func: void glVertexAttribP4ui(GLuint index, GLenum type, GLboolean normalized, GLuint value)

vertexAttribP4ui(Index, Type, Normalized, Value)
 -> cast
    ( ?glVertexAttribP4ui
    , <<Index:?GLuint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Value:?GLuint
      >>
    )
.

%% Func:       vertexAttribP4uiv
%% Args:       Index, Type, Normalized, Value
%% Returns:    ok
%% C-API func: void glVertexAttribP4uiv(GLuint index, GLenum type, GLboolean normalized, const GLuint* value)

vertexAttribP4uiv(Index, Type, Normalized, Value)
 -> cast
    ( ?glVertexAttribP4uiv
    , <<Index:?GLuint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% GL_ARB_draw_indirect

%% Func:       drawArraysIndirect
%% Args:       Mode, Indirect
%% Returns:    ok
%% C-API func: void glDrawArraysIndirect(GLenum mode, const GLvoid* indirect)

drawArraysIndirect(Mode, Indirect)
 -> cast
    ( ?glDrawArraysIndirect
    , <<Mode:?GLenum
      , Indirect:?_PTR
      >>
    )
.

%% Func:       drawElementsIndirect
%% Args:       Mode, Type, Indirect
%% Returns:    ok
%% C-API func: void glDrawElementsIndirect(GLenum mode, GLenum type, const GLvoid* indirect)

drawElementsIndirect(Mode, Type, Indirect)
 -> cast
    ( ?glDrawElementsIndirect
    , <<Mode:?GLenum
      , Type:?GLenum
      , Indirect:?_PTR
      >>
    )
.

%% GL_ARB_gpu_shader5

%% GL_ARB_gpu_shader_fp64

%% Func:       uniform1d
%% Args:       Location, X
%% Returns:    ok
%% C-API func: void glUniform1d(GLint location, GLdouble x)

uniform1d(Location, X)
 -> cast
    ( ?glUniform1d
    , <<Location:?GLint
      , X:?GLdouble
      >>
    )
.

%% Func:       uniform2d
%% Args:       Location, X, Y
%% Returns:    ok
%% C-API func: void glUniform2d(GLint location, GLdouble x, GLdouble y)

uniform2d(Location, X, Y)
 -> cast
    ( ?glUniform2d
    , <<Location:?GLint
      , X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       uniform3d
%% Args:       Location, X, Y, Z
%% Returns:    ok
%% C-API func: void glUniform3d(GLint location, GLdouble x, GLdouble y, GLdouble z)

uniform3d(Location, X, Y, Z)
 -> cast
    ( ?glUniform3d
    , <<Location:?GLint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       uniform4d
%% Args:       Location, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glUniform4d(GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

uniform4d(Location, X, Y, Z, W)
 -> cast
    ( ?glUniform4d
    , <<Location:?GLint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       uniform1dv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform1dv(GLint location, GLsizei count, const GLdouble* value)

uniform1dv(Location, Count, Value)
 -> cast
    ( ?glUniform1dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform2dv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform2dv(GLint location, GLsizei count, const GLdouble* value)

uniform2dv(Location, Count, Value)
 -> cast
    ( ?glUniform2dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform3dv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform3dv(GLint location, GLsizei count, const GLdouble* value)

uniform3dv(Location, Count, Value)
 -> cast
    ( ?glUniform3dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform4dv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform4dv(GLint location, GLsizei count, const GLdouble* value)

uniform4dv(Location, Count, Value)
 -> cast
    ( ?glUniform4dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix2dv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix2dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

uniformMatrix2dv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix2dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix3dv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix3dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

uniformMatrix3dv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix3dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix4dv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix4dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

uniformMatrix4dv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix4dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix2x3dv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix2x3dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

uniformMatrix2x3dv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix2x3dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix2x4dv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix2x4dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

uniformMatrix2x4dv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix2x4dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix3x2dv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix3x2dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

uniformMatrix3x2dv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix3x2dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix3x4dv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix3x4dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

uniformMatrix3x4dv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix3x4dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix4x2dv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix4x2dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

uniformMatrix4x2dv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix4x2dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix4x3dv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix4x3dv(GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

uniformMatrix4x3dv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix4x3dv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       getUniformdv
%% Args:       Program, Location
%% Returns:    [ Params ]
%% C-API func: void glGetUniformdv(GLuint program, GLint location, GLdouble* params)

getUniformdv(Program, Location)
 -> case
      call
      ( ?glGetUniformdv
      , <<Program:?GLuint
        , Location:?GLint
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

%% GL_ARB_shader_subroutine

%% Func:       getSubroutineUniformLocation
%% Args:       Program, Shadertype, Name
%% Returns:    Exdl
%% C-API func: GLint glGetSubroutineUniformLocation(GLuint program, GLenum shadertype, const GLchar* name)

getSubroutineUniformLocation(Program, Shadertype, Name)
 -> case
      call
      ( ?glGetSubroutineUniformLocation
      , <<Program:?GLuint
        , Shadertype:?GLenum
        , Name:?_PTR
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

%% Func:       getSubroutineIndex
%% Args:       Program, Shadertype, Name
%% Returns:    Exdl
%% C-API func: GLuint glGetSubroutineIndex(GLuint program, GLenum shadertype, const GLchar* name)

getSubroutineIndex(Program, Shadertype, Name)
 -> case
      call
      ( ?glGetSubroutineIndex
      , <<Program:?GLuint
        , Shadertype:?GLenum
        , Name:?_PTR
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

%% Func:       getActiveSubroutineUniformiv
%% Args:       Program, Shadertype, Index, Pname
%% Returns:    [ Values ]
%% C-API func: void glGetActiveSubroutineUniformiv(GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values)

getActiveSubroutineUniformiv(Program, Shadertype, Index, Pname)
 -> case
      call
      ( ?glGetActiveSubroutineUniformiv
      , <<Program:?GLuint
        , Shadertype:?GLenum
        , Index:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Values:?GLint
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getActiveSubroutineUniformName
%% Args:       Program, Shadertype, Index, Bufsize
%% Returns:    { Length, Name }
%% C-API func: void glGetActiveSubroutineUniformName(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name)

getActiveSubroutineUniformName(Program, Shadertype, Index, Bufsize)
 -> case
      call
      ( ?glGetActiveSubroutineUniformName
      , <<Program:?GLuint
        , Shadertype:?GLenum
        , Index:?GLuint
        , Bufsize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Name:?_PTR
      >>
        -> { Length, Name }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getActiveSubroutineName
%% Args:       Program, Shadertype, Index, Bufsize
%% Returns:    { Length, Name }
%% C-API func: void glGetActiveSubroutineName(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name)

getActiveSubroutineName(Program, Shadertype, Index, Bufsize)
 -> case
      call
      ( ?glGetActiveSubroutineName
      , <<Program:?GLuint
        , Shadertype:?GLenum
        , Index:?GLuint
        , Bufsize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Name:?_PTR
      >>
        -> { Length, Name }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       uniformSubroutinesuiv
%% Args:       Shadertype, Count, Indices
%% Returns:    ok
%% C-API func: void glUniformSubroutinesuiv(GLenum shadertype, GLsizei count, const GLuint* indices)

uniformSubroutinesuiv(Shadertype, Count, Indices)
 -> cast
    ( ?glUniformSubroutinesuiv
    , <<Shadertype:?GLenum
      , Count:?GLsizei
      , Indices:?_PTR
      >>
    )
.

%% Func:       getUniformSubroutineuiv
%% Args:       Shadertype, Location
%% Returns:    [ Params ]
%% C-API func: void glGetUniformSubroutineuiv(GLenum shadertype, GLint location, GLuint* params)

getUniformSubroutineuiv(Shadertype, Location)
 -> case
      call
      ( ?glGetUniformSubroutineuiv
      , <<Shadertype:?GLenum
        , Location:?GLint
        >>
      )
    of
      <<Params:?GLuint
      >>
        -> [ Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getProgramStageiv
%% Args:       Program, Shadertype, Pname
%% Returns:    [ Values ]
%% C-API func: void glGetProgramStageiv(GLuint program, GLenum shadertype, GLenum pname, GLint* values)

getProgramStageiv(Program, Shadertype, Pname)
 -> case
      call
      ( ?glGetProgramStageiv
      , <<Program:?GLuint
        , Shadertype:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Values:?GLint
      >>
        -> [ Values ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_ARB_tessellation_shader

%% Func:       patchParameteri
%% Args:       Pname, Value
%% Returns:    ok
%% C-API func: void glPatchParameteri(GLenum pname, GLint value)

patchParameteri(Pname, Value)
 -> cast
    ( ?glPatchParameteri
    , <<Pname:?GLenum
      , Value:?GLint
      >>
    )
.

%% Func:       patchParameterfv
%% Args:       Pname, Values
%% Returns:    ok
%% C-API func: void glPatchParameterfv(GLenum pname, const GLfloat* values)

patchParameterfv(Pname, Values)
 -> cast
    ( ?glPatchParameterfv
    , <<Pname:?GLenum
      , Values:?_PTR
      >>
    )
.

%% GL_ARB_texture_buffer_object_rgb32

%% GL_ARB_transform_feedback2

%% Func:       bindTransformFeedback
%% Args:       Target, Id
%% Returns:    ok
%% C-API func: void glBindTransformFeedback(GLenum target, GLuint id)

bindTransformFeedback(Target, Id)
 -> cast
    ( ?glBindTransformFeedback
    , <<Target:?GLenum
      , Id:?GLuint
      >>
    )
.

%% Func:       deleteTransformFeedbacks
%% Args:       N, Ids
%% Returns:    ok
%% C-API func: void glDeleteTransformFeedbacks(GLsizei n, const GLuint* ids)

deleteTransformFeedbacks(N, Ids)
 -> cast
    ( ?glDeleteTransformFeedbacks
    , <<N:?GLsizei
      , Ids:?_PTR
      >>
    )
.

%% Func:       genTransformFeedbacks
%% Args:       N
%% Returns:    { Ids }
%% C-API func: void glGenTransformFeedbacks(GLsizei n, GLuint* ids)

genTransformFeedbacks(N)
 -> case
      call
      ( ?glGenTransformFeedbacks
      , <<N:?GLsizei
        >>
      )
    of
      <<Ids:?GLuint
      >>
        -> { Ids }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       isTransformFeedback
%% Args:       Id
%% Returns:    Exdl
%% C-API func: GLboolean glIsTransformFeedback(GLuint id)

isTransformFeedback(Id)
 -> case
      call
      ( ?glIsTransformFeedback
      , <<Id:?GLuint
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

%% Func:       pauseTransformFeedback
%% Args:       none
%% Returns:    ok
%% C-API func: void glPauseTransformFeedback(void)

pauseTransformFeedback()
 -> cast
    ( ?glPauseTransformFeedback
    , [
      ]
    )
.

%% Func:       resumeTransformFeedback
%% Args:       none
%% Returns:    ok
%% C-API func: void glResumeTransformFeedback(void)

resumeTransformFeedback()
 -> cast
    ( ?glResumeTransformFeedback
    , [
      ]
    )
.

%% Func:       drawTransformFeedback
%% Args:       Mode, Id
%% Returns:    ok
%% C-API func: void glDrawTransformFeedback(GLenum mode, GLuint id)

drawTransformFeedback(Mode, Id)
 -> cast
    ( ?glDrawTransformFeedback
    , <<Mode:?GLenum
      , Id:?GLuint
      >>
    )
.

%% GL_ARB_transform_feedback3

%% Func:       drawTransformFeedbackStream
%% Args:       Mode, Id, Stream
%% Returns:    ok
%% C-API func: void glDrawTransformFeedbackStream(GLenum mode, GLuint id, GLuint stream)

drawTransformFeedbackStream(Mode, Id, Stream)
 -> cast
    ( ?glDrawTransformFeedbackStream
    , <<Mode:?GLenum
      , Id:?GLuint
      , Stream:?GLuint
      >>
    )
.

%% Func:       beginQueryIndexed
%% Args:       Target, Index, Id
%% Returns:    ok
%% C-API func: void glBeginQueryIndexed(GLenum target, GLuint index, GLuint id)

beginQueryIndexed(Target, Index, Id)
 -> cast
    ( ?glBeginQueryIndexed
    , <<Target:?GLenum
      , Index:?GLuint
      , Id:?GLuint
      >>
    )
.

%% Func:       endQueryIndexed
%% Args:       Target, Index
%% Returns:    ok
%% C-API func: void glEndQueryIndexed(GLenum target, GLuint index)

endQueryIndexed(Target, Index)
 -> cast
    ( ?glEndQueryIndexed
    , <<Target:?GLenum
      , Index:?GLuint
      >>
    )
.

%% Func:       getQueryIndexediv
%% Args:       Target, Index, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetQueryIndexediv(GLenum target, GLuint index, GLenum pname, GLint* params)

getQueryIndexediv(Target, Index, Pname)
 -> case
      call
      ( ?glGetQueryIndexediv
      , <<Target:?GLenum
        , Index:?GLuint
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

%% GL_ARB_ES2_compatibility

%% Func:       releaseShaderCompiler
%% Args:       none
%% Returns:    ok
%% C-API func: void glReleaseShaderCompiler(void)

releaseShaderCompiler()
 -> cast
    ( ?glReleaseShaderCompiler
    , [
      ]
    )
.

%% Func:       shaderBinary
%% Args:       Count, Shaders, Binaryformat, Binary, Length
%% Returns:    ok
%% C-API func: void glShaderBinary(GLsizei count, const GLuint* shaders, GLenum binaryformat, const GLvoid* binary, GLsizei length)

shaderBinary(Count, Shaders, Binaryformat, Binary, Length)
 -> cast
    ( ?glShaderBinary
    , <<Count:?GLsizei
      , Shaders:?_PTR
      , Binaryformat:?GLenum
      , Binary:?_PTR
      , Length:?GLsizei
      >>
    )
.

%% Func:       getShaderPrecisionFormat
%% Args:       Shadertype, Precisiontype
%% Returns:    { Range, Precision }
%% C-API func: void glGetShaderPrecisionFormat(GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision)

getShaderPrecisionFormat(Shadertype, Precisiontype)
 -> case
      call
      ( ?glGetShaderPrecisionFormat
      , <<Shadertype:?GLenum
        , Precisiontype:?GLenum
        >>
      )
    of
      <<Range:?GLint
      , Precision:?GLint
      >>
        -> { Range, Precision }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       depthRangef
%% Args:       N, F
%% Returns:    ok
%% C-API func: void glDepthRangef(GLclampf n, GLclampf f)

depthRangef(N, F)
 -> cast
    ( ?glDepthRangef
    , <<N:?GLclampf
      , F:?GLclampf
      >>
    )
.

%% Func:       clearDepthf
%% Args:       D
%% Returns:    ok
%% C-API func: void glClearDepthf(GLclampf d)

clearDepthf(D)
 -> cast
    ( ?glClearDepthf
    , <<D:?GLclampf
      >>
    )
.

%% GL_ARB_get_program_binary

%% Func:       getProgramBinary
%% Args:       Program, BufSize
%% Returns:    { Length, BinaryFormat, Binary }
%% C-API func: void glGetProgramBinary(GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, GLvoid* binary)

getProgramBinary(Program, BufSize)
 -> case
      call
      ( ?glGetProgramBinary
      , <<Program:?GLuint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , BinaryFormat:?GLenum
      , Binary:?GLvoid
      >>
        -> { Length, BinaryFormat, Binary }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       programBinary
%% Args:       Program, BinaryFormat, Binary, Length
%% Returns:    ok
%% C-API func: void glProgramBinary(GLuint program, GLenum binaryFormat, const GLvoid* binary, GLsizei length)

programBinary(Program, BinaryFormat, Binary, Length)
 -> cast
    ( ?glProgramBinary
    , <<Program:?GLuint
      , BinaryFormat:?GLenum
      , Binary:?_PTR
      , Length:?GLsizei
      >>
    )
.

%% Func:       programParameteri
%% Args:       Program, Pname, Value
%% Returns:    ok
%% C-API func: void glProgramParameteri(GLuint program, GLenum pname, GLint value)

programParameteri(Program, Pname, Value)
 -> cast
    ( ?glProgramParameteri
    , <<Program:?GLuint
      , Pname:?GLenum
      , Value:?GLint
      >>
    )
.

%% GL_ARB_separate_shader_objects

%% Func:       useProgramStages
%% Args:       Pipeline, Stages, Program
%% Returns:    ok
%% C-API func: void glUseProgramStages(GLuint pipeline, GLbitfield stages, GLuint program)

useProgramStages(Pipeline, Stages, Program)
 -> cast
    ( ?glUseProgramStages
    , <<Pipeline:?GLuint
      , Stages:?GLbitfield
      , Program:?GLuint
      >>
    )
.

%% Func:       activeShaderProgram
%% Args:       Pipeline, Program
%% Returns:    ok
%% C-API func: void glActiveShaderProgram(GLuint pipeline, GLuint program)

activeShaderProgram(Pipeline, Program)
 -> cast
    ( ?glActiveShaderProgram
    , <<Pipeline:?GLuint
      , Program:?GLuint
      >>
    )
.

%% Func:       createShaderProgramv
%% Args:       Type, Count, Strings
%% Returns:    Exdl
%% C-API func: GLuint glCreateShaderProgramv(GLenum type, GLsizei count, const GLchar** strings)

createShaderProgramv(Type, Count, Strings)
 -> case
      call
      ( ?glCreateShaderProgramv
      , <<Type:?GLenum
        , Count:?GLsizei
        , Strings:?_PTR
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

%% Func:       bindProgramPipeline
%% Args:       Pipeline
%% Returns:    ok
%% C-API func: void glBindProgramPipeline(GLuint pipeline)

bindProgramPipeline(Pipeline)
 -> cast
    ( ?glBindProgramPipeline
    , <<Pipeline:?GLuint
      >>
    )
.

%% Func:       deleteProgramPipelines
%% Args:       N, Pipelines
%% Returns:    ok
%% C-API func: void glDeleteProgramPipelines(GLsizei n, const GLuint* pipelines)

deleteProgramPipelines(N, Pipelines)
 -> cast
    ( ?glDeleteProgramPipelines
    , <<N:?GLsizei
      , Pipelines:?_PTR
      >>
    )
.

%% Func:       genProgramPipelines
%% Args:       N
%% Returns:    { Pipelines }
%% C-API func: void glGenProgramPipelines(GLsizei n, GLuint* pipelines)

genProgramPipelines(N)
 -> case
      call
      ( ?glGenProgramPipelines
      , <<N:?GLsizei
        >>
      )
    of
      <<Pipelines:?GLuint
      >>
        -> { Pipelines }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       isProgramPipeline
%% Args:       Pipeline
%% Returns:    Exdl
%% C-API func: GLboolean glIsProgramPipeline(GLuint pipeline)

isProgramPipeline(Pipeline)
 -> case
      call
      ( ?glIsProgramPipeline
      , <<Pipeline:?GLuint
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

%% Func:       getProgramPipelineiv
%% Args:       Pipeline, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetProgramPipelineiv(GLuint pipeline, GLenum pname, GLint* params)

getProgramPipelineiv(Pipeline, Pname)
 -> case
      call
      ( ?glGetProgramPipelineiv
      , <<Pipeline:?GLuint
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

%% Func:       programUniform1i
%% Args:       Program, Location, V0
%% Returns:    ok
%% C-API func: void glProgramUniform1i(GLuint program, GLint location, GLint v0)

programUniform1i(Program, Location, V0)
 -> cast
    ( ?glProgramUniform1i
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLint
      >>
    )
.

%% Func:       programUniform1iv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform1iv(GLuint program, GLint location, GLsizei count, const GLint* value)

programUniform1iv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform1iv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform1f
%% Args:       Program, Location, V0
%% Returns:    ok
%% C-API func: void glProgramUniform1f(GLuint program, GLint location, GLfloat v0)

programUniform1f(Program, Location, V0)
 -> cast
    ( ?glProgramUniform1f
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLfloat
      >>
    )
.

%% Func:       programUniform1fv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform1fv(GLuint program, GLint location, GLsizei count, const GLfloat* value)

programUniform1fv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform1fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform1d
%% Args:       Program, Location, V0
%% Returns:    ok
%% C-API func: void glProgramUniform1d(GLuint program, GLint location, GLdouble v0)

programUniform1d(Program, Location, V0)
 -> cast
    ( ?glProgramUniform1d
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLdouble
      >>
    )
.

%% Func:       programUniform1dv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform1dv(GLuint program, GLint location, GLsizei count, const GLdouble* value)

programUniform1dv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform1dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform1ui
%% Args:       Program, Location, V0
%% Returns:    ok
%% C-API func: void glProgramUniform1ui(GLuint program, GLint location, GLuint v0)

programUniform1ui(Program, Location, V0)
 -> cast
    ( ?glProgramUniform1ui
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLuint
      >>
    )
.

%% Func:       programUniform1uiv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform1uiv(GLuint program, GLint location, GLsizei count, const GLuint* value)

programUniform1uiv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform1uiv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform2i
%% Args:       Program, Location, V0, V1
%% Returns:    ok
%% C-API func: void glProgramUniform2i(GLuint program, GLint location, GLint v0, GLint v1)

programUniform2i(Program, Location, V0, V1)
 -> cast
    ( ?glProgramUniform2i
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLint
      , V1:?GLint
      >>
    )
.

%% Func:       programUniform2iv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform2iv(GLuint program, GLint location, GLsizei count, const GLint* value)

programUniform2iv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform2iv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform2f
%% Args:       Program, Location, V0, V1
%% Returns:    ok
%% C-API func: void glProgramUniform2f(GLuint program, GLint location, GLfloat v0, GLfloat v1)

programUniform2f(Program, Location, V0, V1)
 -> cast
    ( ?glProgramUniform2f
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      >>
    )
.

%% Func:       programUniform2fv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform2fv(GLuint program, GLint location, GLsizei count, const GLfloat* value)

programUniform2fv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform2fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform2d
%% Args:       Program, Location, V0, V1
%% Returns:    ok
%% C-API func: void glProgramUniform2d(GLuint program, GLint location, GLdouble v0, GLdouble v1)

programUniform2d(Program, Location, V0, V1)
 -> cast
    ( ?glProgramUniform2d
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLdouble
      , V1:?GLdouble
      >>
    )
.

%% Func:       programUniform2dv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform2dv(GLuint program, GLint location, GLsizei count, const GLdouble* value)

programUniform2dv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform2dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform2ui
%% Args:       Program, Location, V0, V1
%% Returns:    ok
%% C-API func: void glProgramUniform2ui(GLuint program, GLint location, GLuint v0, GLuint v1)

programUniform2ui(Program, Location, V0, V1)
 -> cast
    ( ?glProgramUniform2ui
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      >>
    )
.

%% Func:       programUniform2uiv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform2uiv(GLuint program, GLint location, GLsizei count, const GLuint* value)

programUniform2uiv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform2uiv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform3i
%% Args:       Program, Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glProgramUniform3i(GLuint program, GLint location, GLint v0, GLint v1, GLint v2)

programUniform3i(Program, Location, V0, V1, V2)
 -> cast
    ( ?glProgramUniform3i
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLint
      , V1:?GLint
      , V2:?GLint
      >>
    )
.

%% Func:       programUniform3iv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform3iv(GLuint program, GLint location, GLsizei count, const GLint* value)

programUniform3iv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform3iv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform3f
%% Args:       Program, Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glProgramUniform3f(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

programUniform3f(Program, Location, V0, V1, V2)
 -> cast
    ( ?glProgramUniform3f
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      , V2:?GLfloat
      >>
    )
.

%% Func:       programUniform3fv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform3fv(GLuint program, GLint location, GLsizei count, const GLfloat* value)

programUniform3fv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform3fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform3d
%% Args:       Program, Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glProgramUniform3d(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2)

programUniform3d(Program, Location, V0, V1, V2)
 -> cast
    ( ?glProgramUniform3d
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLdouble
      , V1:?GLdouble
      , V2:?GLdouble
      >>
    )
.

%% Func:       programUniform3dv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform3dv(GLuint program, GLint location, GLsizei count, const GLdouble* value)

programUniform3dv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform3dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform3ui
%% Args:       Program, Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glProgramUniform3ui(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2)

programUniform3ui(Program, Location, V0, V1, V2)
 -> cast
    ( ?glProgramUniform3ui
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      , V2:?GLuint
      >>
    )
.

%% Func:       programUniform3uiv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform3uiv(GLuint program, GLint location, GLsizei count, const GLuint* value)

programUniform3uiv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform3uiv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform4i
%% Args:       Program, Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glProgramUniform4i(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

programUniform4i(Program, Location, V0, V1, V2, V3)
 -> cast
    ( ?glProgramUniform4i
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLint
      , V1:?GLint
      , V2:?GLint
      , V3:?GLint
      >>
    )
.

%% Func:       programUniform4iv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform4iv(GLuint program, GLint location, GLsizei count, const GLint* value)

programUniform4iv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform4iv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform4f
%% Args:       Program, Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glProgramUniform4f(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)

programUniform4f(Program, Location, V0, V1, V2, V3)
 -> cast
    ( ?glProgramUniform4f
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      >>
    )
.

%% Func:       programUniform4fv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform4fv(GLuint program, GLint location, GLsizei count, const GLfloat* value)

programUniform4fv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform4fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform4d
%% Args:       Program, Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glProgramUniform4d(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3)

programUniform4d(Program, Location, V0, V1, V2, V3)
 -> cast
    ( ?glProgramUniform4d
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLdouble
      , V1:?GLdouble
      , V2:?GLdouble
      , V3:?GLdouble
      >>
    )
.

%% Func:       programUniform4dv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform4dv(GLuint program, GLint location, GLsizei count, const GLdouble* value)

programUniform4dv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform4dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform4ui
%% Args:       Program, Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glProgramUniform4ui(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

programUniform4ui(Program, Location, V0, V1, V2, V3)
 -> cast
    ( ?glProgramUniform4ui
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      , V2:?GLuint
      , V3:?GLuint
      >>
    )
.

%% Func:       programUniform4uiv
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform4uiv(GLuint program, GLint location, GLsizei count, const GLuint* value)

programUniform4uiv(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform4uiv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix2fv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix2fv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix2fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix3fv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix3fv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix3fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix4fv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix4fv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix4fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix2dv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix2dv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix2dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix3dv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix3dv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix3dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix4dv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix4dv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix4dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix2x3fv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2x3fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix2x3fv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix2x3fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix3x2fv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3x2fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix3x2fv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix3x2fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix2x4fv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2x4fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix2x4fv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix2x4fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix4x2fv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4x2fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix4x2fv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix4x2fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix3x4fv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3x4fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix3x4fv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix3x4fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix4x3fv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4x3fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix4x3fv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix4x3fv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix2x3dv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2x3dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix2x3dv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix2x3dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix3x2dv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3x2dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix3x2dv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix3x2dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix2x4dv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2x4dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix2x4dv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix2x4dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix4x2dv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4x2dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix4x2dv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix4x2dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix3x4dv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3x4dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix3x4dv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix3x4dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix4x3dv
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4x3dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix4x3dv(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix4x3dv
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       validateProgramPipeline
%% Args:       Pipeline
%% Returns:    ok
%% C-API func: void glValidateProgramPipeline(GLuint pipeline)

validateProgramPipeline(Pipeline)
 -> cast
    ( ?glValidateProgramPipeline
    , <<Pipeline:?GLuint
      >>
    )
.

%% Func:       getProgramPipelineInfoLog
%% Args:       Pipeline, BufSize
%% Returns:    { Length, InfoLog }
%% C-API func: void glGetProgramPipelineInfoLog(GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

getProgramPipelineInfoLog(Pipeline, BufSize)
 -> case
      call
      ( ?glGetProgramPipelineInfoLog
      , <<Pipeline:?GLuint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , InfoLog:?_PTR
      >>
        -> { Length, InfoLog }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_ARB_vertex_attrib_64bit

%% Func:       vertexAttribL1d
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttribL1d(GLuint index, GLdouble x)

vertexAttribL1d(Index, X)
 -> cast
    ( ?glVertexAttribL1d
    , <<Index:?GLuint
      , X:?GLdouble
      >>
    )
.

%% Func:       vertexAttribL2d
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttribL2d(GLuint index, GLdouble x, GLdouble y)

vertexAttribL2d(Index, X, Y)
 -> cast
    ( ?glVertexAttribL2d
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       vertexAttribL3d
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttribL3d(GLuint index, GLdouble x, GLdouble y, GLdouble z)

vertexAttribL3d(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttribL3d
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       vertexAttribL4d
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttribL4d(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

vertexAttribL4d(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttribL4d
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       vertexAttribL1dv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL1dv(GLuint index, const GLdouble* v)

vertexAttribL1dv(Index, V)
 -> cast
    ( ?glVertexAttribL1dv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL2dv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL2dv(GLuint index, const GLdouble* v)

vertexAttribL2dv(Index, V)
 -> cast
    ( ?glVertexAttribL2dv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL3dv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL3dv(GLuint index, const GLdouble* v)

vertexAttribL3dv(Index, V)
 -> cast
    ( ?glVertexAttribL3dv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL4dv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL4dv(GLuint index, const GLdouble* v)

vertexAttribL4dv(Index, V)
 -> cast
    ( ?glVertexAttribL4dv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribLPointer
%% Args:       Index, Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glVertexAttribLPointer(GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

vertexAttribLPointer(Index, Size, Type, Stride, Pointer)
 -> cast
    ( ?glVertexAttribLPointer
    , <<Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       getVertexAttribLdv
%% Args:       Index, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetVertexAttribLdv(GLuint index, GLenum pname, GLdouble* params)

getVertexAttribLdv(Index, Pname)
 -> case
      call
      ( ?glGetVertexAttribLdv
      , <<Index:?GLuint
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

%% GL_ARB_viewport_array

%% Func:       viewportArrayv
%% Args:       First, Count, V
%% Returns:    ok
%% C-API func: void glViewportArrayv(GLuint first, GLsizei count, const GLfloat* v)

viewportArrayv(First, Count, V)
 -> cast
    ( ?glViewportArrayv
    , <<First:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       viewportIndexedf
%% Args:       Index, X, Y, W, H
%% Returns:    ok
%% C-API func: void glViewportIndexedf(GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h)

viewportIndexedf(Index, X, Y, W, H)
 -> cast
    ( ?glViewportIndexedf
    , <<Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , W:?GLfloat
      , H:?GLfloat
      >>
    )
.

%% Func:       viewportIndexedfv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glViewportIndexedfv(GLuint index, const GLfloat* v)

viewportIndexedfv(Index, V)
 -> cast
    ( ?glViewportIndexedfv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       scissorArrayv
%% Args:       First, Count, V
%% Returns:    ok
%% C-API func: void glScissorArrayv(GLuint first, GLsizei count, const GLint* v)

scissorArrayv(First, Count, V)
 -> cast
    ( ?glScissorArrayv
    , <<First:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       scissorIndexed
%% Args:       Index, Left, Bottom, Width, Height
%% Returns:    ok
%% C-API func: void glScissorIndexed(GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height)

scissorIndexed(Index, Left, Bottom, Width, Height)
 -> cast
    ( ?glScissorIndexed
    , <<Index:?GLuint
      , Left:?GLint
      , Bottom:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       scissorIndexedv
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glScissorIndexedv(GLuint index, const GLint* v)

scissorIndexedv(Index, V)
 -> cast
    ( ?glScissorIndexedv
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       depthRangeArrayv
%% Args:       First, Count, V
%% Returns:    ok
%% C-API func: void glDepthRangeArrayv(GLuint first, GLsizei count, const GLclampd* v)

depthRangeArrayv(First, Count, V)
 -> cast
    ( ?glDepthRangeArrayv
    , <<First:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       depthRangeIndexed
%% Args:       Index, N, F
%% Returns:    ok
%% C-API func: void glDepthRangeIndexed(GLuint index, GLclampd n, GLclampd f)

depthRangeIndexed(Index, N, F)
 -> cast
    ( ?glDepthRangeIndexed
    , <<Index:?GLuint
      , N:?GLclampd
      , F:?GLclampd
      >>
    )
.

%% Func:       getFloatiV
%% Args:       Target, Index
%% Returns:    [ Data ]
%% C-API func: void glGetFloati_v(GLenum target, GLuint index, GLfloat* data)

getFloatiV(Target, Index)
 -> case
      call
      ( ?glGetFloati_v
      , <<Target:?GLenum
        , Index:?GLuint
        >>
      )
    of
      <<Data:?GLfloat
      >>
        -> [ Data ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getDoubleiV
%% Args:       Target, Index
%% Returns:    [ Data ]
%% C-API func: void glGetDoublei_v(GLenum target, GLuint index, GLdouble* data)

getDoubleiV(Target, Index)
 -> case
      call
      ( ?glGetDoublei_v
      , <<Target:?GLenum
        , Index:?GLuint
        >>
      )
    of
      <<Data:?GLdouble
      >>
        -> [ Data ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_ARB_cl_event

%% Func:       createSyncFromCLeventARB
%% Args:       Context, Event, Flags
%% Returns:    Exdl
%% C-API func: GLsync glCreateSyncFromCLeventARB(struct _cl_context* context, struct _cl_event* event, GLbitfield flags)

createSyncFromCLeventARB(Context, Event, Flags)
 -> case
      call
      ( ?glCreateSyncFromCLeventARB
      , <<Context:?_PTR
        , Event:?_PTR
        , Flags:?GLbitfield
        >>
      )
    of
      <<Exdl:?GLsync
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_ARB_debug_output

%% Func:       debugMessageControlARB
%% Args:       Source, Type, Severity, Count, Ids, Enabled
%% Returns:    ok
%% C-API func: void glDebugMessageControlARB(GLenum source, GLenum type, GLenum severity, GLsizei count, const GLuint* ids, GLboolean enabled)

debugMessageControlARB(Source, Type, Severity, Count, Ids, Enabled)
 -> cast
    ( ?glDebugMessageControlARB
    , <<Source:?GLenum
      , Type:?GLenum
      , Severity:?GLenum
      , Count:?GLsizei
      , Ids:?_PTR
      , Enabled:?GLboolean
      >>
    )
.

%% Func:       debugMessageInsertARB
%% Args:       Source, Type, Id, Severity, Length, Buf
%% Returns:    ok
%% C-API func: void glDebugMessageInsertARB(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar* buf)

debugMessageInsertARB(Source, Type, Id, Severity, Length, Buf)
 -> cast
    ( ?glDebugMessageInsertARB
    , <<Source:?GLenum
      , Type:?GLenum
      , Id:?GLuint
      , Severity:?GLenum
      , Length:?GLsizei
      , Buf:?_PTR
      >>
    )
.

%% Func:       debugMessageCallbackARB
%% Args:       Callback, UserParam
%% Returns:    ok
%% C-API func: void glDebugMessageCallbackARB(GLDEBUGPROCARB callback, const GLvoid* userParam)

debugMessageCallbackARB(Callback, UserParam)
 -> cast
    ( ?glDebugMessageCallbackARB
    , <<Callback:?GLDEBUGPROCARB
      , UserParam:?_PTR
      >>
    )
.

%% Func:       getDebugMessageLogARB
%% Args:       Count, Bufsize, Sources, Types, Ids, Severities, Lengths, MessageLog
%% Returns:    Exdl
%% C-API func: GLuint glGetDebugMessageLogARB(GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog)

getDebugMessageLogARB(Count, Bufsize, Sources, Types, Ids, Severities, Lengths, MessageLog)
 -> case
      call
      ( ?glGetDebugMessageLogARB
      , <<Count:?GLuint
        , Bufsize:?GLsizei
        , Sources:?_PTR
        , Types:?_PTR
        , Ids:?_PTR
        , Severities:?_PTR
        , Lengths:?_PTR
        , MessageLog:?_PTR
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

%% GL_ARB_robustness

%% Func:       getGraphicsResetStatusARB
%% Args:       none
%% Returns:    Exdl
%% C-API func: GLenum glGetGraphicsResetStatusARB(void)

getGraphicsResetStatusARB()
 -> case
      call
      ( ?glGetGraphicsResetStatusARB
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

%% Func:       getnMapdvARB
%% Args:       Target, Query, BufSize
%% Returns:    { V }
%% C-API func: void glGetnMapdvARB(GLenum target, GLenum query, GLsizei bufSize, GLdouble* v)

getnMapdvARB(Target, Query, BufSize)
 -> case
      call
      ( ?glGetnMapdvARB
      , <<Target:?GLenum
        , Query:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<V:?GLdouble
      >>
        -> { V }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnMapfvARB
%% Args:       Target, Query, BufSize
%% Returns:    { V }
%% C-API func: void glGetnMapfvARB(GLenum target, GLenum query, GLsizei bufSize, GLfloat* v)

getnMapfvARB(Target, Query, BufSize)
 -> case
      call
      ( ?glGetnMapfvARB
      , <<Target:?GLenum
        , Query:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<V:?GLfloat
      >>
        -> { V }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnMapivARB
%% Args:       Target, Query, BufSize
%% Returns:    { V }
%% C-API func: void glGetnMapivARB(GLenum target, GLenum query, GLsizei bufSize, GLint* v)

getnMapivARB(Target, Query, BufSize)
 -> case
      call
      ( ?glGetnMapivARB
      , <<Target:?GLenum
        , Query:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<V:?GLint
      >>
        -> { V }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnPixelMapfvARB
%% Args:       Map, BufSize
%% Returns:    { Values }
%% C-API func: void glGetnPixelMapfvARB(GLenum map, GLsizei bufSize, GLfloat* values)

getnPixelMapfvARB(Map, BufSize)
 -> case
      call
      ( ?glGetnPixelMapfvARB
      , <<Map:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<Values:?GLfloat
      >>
        -> { Values }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnPixelMapuivARB
%% Args:       Map, BufSize
%% Returns:    { Values }
%% C-API func: void glGetnPixelMapuivARB(GLenum map, GLsizei bufSize, GLuint* values)

getnPixelMapuivARB(Map, BufSize)
 -> case
      call
      ( ?glGetnPixelMapuivARB
      , <<Map:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<Values:?GLuint
      >>
        -> { Values }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnPixelMapusvARB
%% Args:       Map, BufSize
%% Returns:    { Values }
%% C-API func: void glGetnPixelMapusvARB(GLenum map, GLsizei bufSize, GLushort* values)

getnPixelMapusvARB(Map, BufSize)
 -> case
      call
      ( ?glGetnPixelMapusvARB
      , <<Map:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<Values:?GLushort
      >>
        -> { Values }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnPolygonStippleARB
%% Args:       BufSize
%% Returns:    { Pattern }
%% C-API func: void glGetnPolygonStippleARB(GLsizei bufSize, GLubyte* pattern)

getnPolygonStippleARB(BufSize)
 -> case
      call
      ( ?glGetnPolygonStippleARB
      , <<BufSize:?GLsizei
        >>
      )
    of
      <<Pattern:?_PTR
      >>
        -> { Pattern }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnColorTableARB
%% Args:       Target, Format, Type, BufSize
%% Returns:    { Table }
%% C-API func: void glGetnColorTableARB(GLenum target, GLenum format, GLenum type, GLsizei bufSize, GLvoid* table)

getnColorTableARB(Target, Format, Type, BufSize)
 -> case
      call
      ( ?glGetnColorTableARB
      , <<Target:?GLenum
        , Format:?GLenum
        , Type:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<Table:?GLvoid
      >>
        -> { Table }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnConvolutionFilterARB
%% Args:       Target, Format, Type, BufSize
%% Returns:    { Image }
%% C-API func: void glGetnConvolutionFilterARB(GLenum target, GLenum format, GLenum type, GLsizei bufSize, GLvoid* image)

getnConvolutionFilterARB(Target, Format, Type, BufSize)
 -> case
      call
      ( ?glGetnConvolutionFilterARB
      , <<Target:?GLenum
        , Format:?GLenum
        , Type:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<Image:?GLvoid
      >>
        -> { Image }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnSeparableFilterARB
%% Args:       Target, Format, Type, RowBufSize, Row, ColumnBufSize
%% Returns:    { Column, Span }
%% C-API func: void glGetnSeparableFilterARB(GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, GLvoid* row, GLsizei columnBufSize, GLvoid* column, GLvoid* span)

getnSeparableFilterARB(Target, Format, Type, RowBufSize, Row, ColumnBufSize)
 -> case
      call
      ( ?glGetnSeparableFilterARB
      , <<Target:?GLenum
        , Format:?GLenum
        , Type:?GLenum
        , RowBufSize:?GLsizei
        , Row:?_PTR
        , ColumnBufSize:?GLsizei
        >>
      )
    of
      <<Column:?GLvoid
      , Span:?GLvoid
      >>
        -> { Column, Span }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnHistogramARB
%% Args:       Target, Reset, Format, Type, BufSize
%% Returns:    { Values }
%% C-API func: void glGetnHistogramARB(GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, GLvoid* values)

getnHistogramARB(Target, Reset, Format, Type, BufSize)
 -> case
      call
      ( ?glGetnHistogramARB
      , <<Target:?GLenum
        , Reset:?GLboolean
        , Format:?GLenum
        , Type:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<Values:?GLvoid
      >>
        -> { Values }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnMinmaxARB
%% Args:       Target, Reset, Format, Type, BufSize
%% Returns:    { Values }
%% C-API func: void glGetnMinmaxARB(GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, GLvoid* values)

getnMinmaxARB(Target, Reset, Format, Type, BufSize)
 -> case
      call
      ( ?glGetnMinmaxARB
      , <<Target:?GLenum
        , Reset:?GLboolean
        , Format:?GLenum
        , Type:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<Values:?GLvoid
      >>
        -> { Values }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnTexImageARB
%% Args:       Target, Level, Format, Type, BufSize
%% Returns:    { Img }
%% C-API func: void glGetnTexImageARB(GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, GLvoid* img)

getnTexImageARB(Target, Level, Format, Type, BufSize)
 -> case
      call
      ( ?glGetnTexImageARB
      , <<Target:?GLenum
        , Level:?GLint
        , Format:?GLenum
        , Type:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<Img:?GLvoid
      >>
        -> { Img }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       readnPixelsARB
%% Args:       X, Y, Width, Height, Format, Type, BufSize, Data
%% Returns:    ok
%% C-API func: void glReadnPixelsARB(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, GLvoid* data)

readnPixelsARB(X, Y, Width, Height, Format, Type, BufSize, Data)
 -> cast
    ( ?glReadnPixelsARB
    , <<X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , BufSize:?GLsizei
      , Data:?_PTR
      >>
    )
.

%% Func:       getnCompressedTexImageARB
%% Args:       Target, Lod, BufSize
%% Returns:    { Img }
%% C-API func: void glGetnCompressedTexImageARB(GLenum target, GLint lod, GLsizei bufSize, GLvoid* img)

getnCompressedTexImageARB(Target, Lod, BufSize)
 -> case
      call
      ( ?glGetnCompressedTexImageARB
      , <<Target:?GLenum
        , Lod:?GLint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Img:?GLvoid
      >>
        -> { Img }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnUniformfvARB
%% Args:       Program, Location, BufSize
%% Returns:    { Params }
%% C-API func: void glGetnUniformfvARB(GLuint program, GLint location, GLsizei bufSize, GLfloat* params)

getnUniformfvARB(Program, Location, BufSize)
 -> case
      call
      ( ?glGetnUniformfvARB
      , <<Program:?GLuint
        , Location:?GLint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Params:?GLfloat
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnUniformivARB
%% Args:       Program, Location, BufSize
%% Returns:    { Params }
%% C-API func: void glGetnUniformivARB(GLuint program, GLint location, GLsizei bufSize, GLint* params)

getnUniformivARB(Program, Location, BufSize)
 -> case
      call
      ( ?glGetnUniformivARB
      , <<Program:?GLuint
        , Location:?GLint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Params:?GLint
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnUniformuivARB
%% Args:       Program, Location, BufSize
%% Returns:    { Params }
%% C-API func: void glGetnUniformuivARB(GLuint program, GLint location, GLsizei bufSize, GLuint* params)

getnUniformuivARB(Program, Location, BufSize)
 -> case
      call
      ( ?glGetnUniformuivARB
      , <<Program:?GLuint
        , Location:?GLint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Params:?GLuint
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getnUniformdvARB
%% Args:       Program, Location, BufSize
%% Returns:    { Params }
%% C-API func: void glGetnUniformdvARB(GLuint program, GLint location, GLsizei bufSize, GLdouble* params)

getnUniformdvARB(Program, Location, BufSize)
 -> case
      call
      ( ?glGetnUniformdvARB
      , <<Program:?GLuint
        , Location:?GLint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Params:?GLdouble
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_ARB_shader_stencil_export

%% GL_ARB_base_instance

%% Func:       drawArraysInstancedBaseInstance
%% Args:       Mode, First, Count, Primcount, Baseinstance
%% Returns:    ok
%% C-API func: void glDrawArraysInstancedBaseInstance(GLenum mode, GLint first, GLsizei count, GLsizei primcount, GLuint baseinstance)

drawArraysInstancedBaseInstance(Mode, First, Count, Primcount, Baseinstance)
 -> cast
    ( ?glDrawArraysInstancedBaseInstance
    , <<Mode:?GLenum
      , First:?GLint
      , Count:?GLsizei
      , Primcount:?GLsizei
      , Baseinstance:?GLuint
      >>
    )
.

%% Func:       drawElementsInstancedBaseInstance
%% Args:       Mode, Count, Type, Indices, Primcount, Baseinstance
%% Returns:    ok
%% C-API func: void glDrawElementsInstancedBaseInstance(GLenum mode, GLsizei count, GLenum type, const void* indices, GLsizei primcount, GLuint baseinstance)

drawElementsInstancedBaseInstance(Mode, Count, Type, Indices, Primcount, Baseinstance)
 -> cast
    ( ?glDrawElementsInstancedBaseInstance
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Primcount:?GLsizei
      , Baseinstance:?GLuint
      >>
    )
.

%% Func:       drawElementsInstancedBaseVertexBaseInstance
%% Args:       Mode, Count, Type, Indices, Primcount, Basevertex, Baseinstance
%% Returns:    ok
%% C-API func: void glDrawElementsInstancedBaseVertexBaseInstance(GLenum mode, GLsizei count, GLenum type, const void* indices, GLsizei primcount, GLint basevertex, GLuint baseinstance)

drawElementsInstancedBaseVertexBaseInstance(Mode, Count, Type, Indices, Primcount, Basevertex, Baseinstance)
 -> cast
    ( ?glDrawElementsInstancedBaseVertexBaseInstance
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Primcount:?GLsizei
      , Basevertex:?GLint
      , Baseinstance:?GLuint
      >>
    )
.

%% GL_ARB_shading_language_420pack

%% GL_ARB_transform_feedback_instanced

%% Func:       drawTransformFeedbackInstanced
%% Args:       Mode, Id, Primcount
%% Returns:    ok
%% C-API func: void glDrawTransformFeedbackInstanced(GLenum mode, GLuint id, GLsizei primcount)

drawTransformFeedbackInstanced(Mode, Id, Primcount)
 -> cast
    ( ?glDrawTransformFeedbackInstanced
    , <<Mode:?GLenum
      , Id:?GLuint
      , Primcount:?GLsizei
      >>
    )
.

%% Func:       drawTransformFeedbackStreamInstanced
%% Args:       Mode, Id, Stream, Primcount
%% Returns:    ok
%% C-API func: void glDrawTransformFeedbackStreamInstanced(GLenum mode, GLuint id, GLuint stream, GLsizei primcount)

drawTransformFeedbackStreamInstanced(Mode, Id, Stream, Primcount)
 -> cast
    ( ?glDrawTransformFeedbackStreamInstanced
    , <<Mode:?GLenum
      , Id:?GLuint
      , Stream:?GLuint
      , Primcount:?GLsizei
      >>
    )
.

%% GL_ARB_compressed_texture_pixel_storage

%% GL_ARB_conservative_depth

%% GL_ARB_internalformat_query

%% Func:       getInternalformativ
%% Args:       Target, Internalformat, Pname, BufSize
%% Returns:    [ Params ]
%% C-API func: void glGetInternalformativ(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params)

getInternalformativ(Target, Internalformat, Pname, BufSize)
 -> case
      call
      ( ?glGetInternalformativ
      , <<Target:?GLenum
        , Internalformat:?GLenum
        , Pname:?GLenum
        , BufSize:?GLsizei
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

%% GL_ARB_map_buffer_alignment

%% GL_ARB_shader_atomic_counters

%% Func:       getActiveAtomicCounterBufferiv
%% Args:       Program, BufferIndex, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetActiveAtomicCounterBufferiv(GLuint program, GLuint bufferIndex, GLenum pname, GLint* params)

getActiveAtomicCounterBufferiv(Program, BufferIndex, Pname)
 -> case
      call
      ( ?glGetActiveAtomicCounterBufferiv
      , <<Program:?GLuint
        , BufferIndex:?GLuint
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

%% GL_ARB_shader_image_load_store

%% Func:       bindImageTexture
%% Args:       Unit, Texture, Level, Layered, Layer, Access, Format
%% Returns:    ok
%% C-API func: void glBindImageTexture(GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format)

bindImageTexture(Unit, Texture, Level, Layered, Layer, Access, Format)
 -> cast
    ( ?glBindImageTexture
    , <<Unit:?GLuint
      , Texture:?GLuint
      , Level:?GLint
      , Layered:?GLboolean
      , Layer:?GLint
      , Access:?GLenum
      , Format:?GLenum
      >>
    )
.

%% Func:       memoryBarrier
%% Args:       Barriers
%% Returns:    ok
%% C-API func: void glMemoryBarrier(GLbitfield barriers)

memoryBarrier(Barriers)
 -> cast
    ( ?glMemoryBarrier
    , <<Barriers:?GLbitfield
      >>
    )
.

%% GL_ARB_shading_language_packing

%% GL_ARB_texture_storage

%% Func:       texStorage1D
%% Args:       Target, Levels, Internalformat, Width
%% Returns:    ok
%% C-API func: void glTexStorage1D(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width)

texStorage1D(Target, Levels, Internalformat, Width)
 -> cast
    ( ?glTexStorage1D
    , <<Target:?GLenum
      , Levels:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      >>
    )
.

%% Func:       texStorage2D
%% Args:       Target, Levels, Internalformat, Width, Height
%% Returns:    ok
%% C-API func: void glTexStorage2D(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)

texStorage2D(Target, Levels, Internalformat, Width, Height)
 -> cast
    ( ?glTexStorage2D
    , <<Target:?GLenum
      , Levels:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       texStorage3D
%% Args:       Target, Levels, Internalformat, Width, Height, Depth
%% Returns:    ok
%% C-API func: void glTexStorage3D(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)

texStorage3D(Target, Levels, Internalformat, Width, Height, Depth)
 -> cast
    ( ?glTexStorage3D
    , <<Target:?GLenum
      , Levels:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      >>
    )
.

%% Func:       textureStorage1DEXT
%% Args:       Texture, Target, Levels, Internalformat, Width
%% Returns:    ok
%% C-API func: void glTextureStorage1DEXT(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width)

textureStorage1DEXT(Texture, Target, Levels, Internalformat, Width)
 -> cast
    ( ?glTextureStorage1DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Levels:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      >>
    )
.

%% Func:       textureStorage2DEXT
%% Args:       Texture, Target, Levels, Internalformat, Width, Height
%% Returns:    ok
%% C-API func: void glTextureStorage2DEXT(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)

textureStorage2DEXT(Texture, Target, Levels, Internalformat, Width, Height)
 -> cast
    ( ?glTextureStorage2DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Levels:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       textureStorage3DEXT
%% Args:       Texture, Target, Levels, Internalformat, Width, Height, Depth
%% Returns:    ok
%% C-API func: void glTextureStorage3DEXT(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)

textureStorage3DEXT(Texture, Target, Levels, Internalformat, Width, Height, Depth)
 -> cast
    ( ?glTextureStorage3DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Levels:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      >>
    )
.

%% GL_EXT_abgr

%% GL_EXT_blend_color

%% Func:       blendColorEXT
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glBlendColorEXT(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)

blendColorEXT(Red, Green, Blue, Alpha)
 -> cast
    ( ?glBlendColorEXT
    , <<Red:?GLclampf
      , Green:?GLclampf
      , Blue:?GLclampf
      , Alpha:?GLclampf
      >>
    )
.

%% GL_EXT_polygon_offset

%% Func:       polygonOffsetEXT
%% Args:       Factor, Bias
%% Returns:    ok
%% C-API func: void glPolygonOffsetEXT(GLfloat factor, GLfloat bias)

polygonOffsetEXT(Factor, Bias)
 -> cast
    ( ?glPolygonOffsetEXT
    , <<Factor:?GLfloat
      , Bias:?GLfloat
      >>
    )
.

%% GL_EXT_texture

%% GL_EXT_texture3D

%% Func:       texImage3DEXT
%% Args:       Target, Level, Internalformat, Width, Height, Depth, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexImage3DEXT(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

texImage3DEXT(Target, Level, Internalformat, Width, Height, Depth, Border, Format, Type, Pixels)
 -> cast
    ( ?glTexImage3DEXT
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       texSubImage3DEXT
%% Args:       Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels)

texSubImage3DEXT(Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, Type, Pixels)
 -> cast
    ( ?glTexSubImage3DEXT
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% GL_SGIS_texture_filter4

%% Func:       getTexFilterFuncSGIS
%% Args:       Target, Filter, Weights
%% Returns:    ok
%% C-API func: void glGetTexFilterFuncSGIS(GLenum target, GLenum filter, GLfloat* weights)

getTexFilterFuncSGIS(Target, Filter, Weights)
 -> cast
    ( ?glGetTexFilterFuncSGIS
    , <<Target:?GLenum
      , Filter:?GLenum
      , Weights:?_PTR
      >>
    )
.

%% Func:       texFilterFuncSGIS
%% Args:       Target, Filter, N, Weights
%% Returns:    ok
%% C-API func: void glTexFilterFuncSGIS(GLenum target, GLenum filter, GLsizei n, const GLfloat* weights)

texFilterFuncSGIS(Target, Filter, N, Weights)
 -> cast
    ( ?glTexFilterFuncSGIS
    , <<Target:?GLenum
      , Filter:?GLenum
      , N:?GLsizei
      , Weights:?_PTR
      >>
    )
.

%% GL_EXT_subtexture

%% Func:       texSubImage1DEXT
%% Args:       Target, Level, Xoffset, Width, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels)

texSubImage1DEXT(Target, Level, Xoffset, Width, Format, Type, Pixels)
 -> cast
    ( ?glTexSubImage1DEXT
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

%% Func:       texSubImage2DEXT
%% Args:       Target, Level, Xoffset, Yoffset, Width, Height, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels)

texSubImage2DEXT(Target, Level, Xoffset, Yoffset, Width, Height, Format, Type, Pixels)
 -> cast
    ( ?glTexSubImage2DEXT
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

%% GL_EXT_copy_texture

%% Func:       copyTexImage1DEXT
%% Args:       Target, Level, Internalformat, X, Y, Width, Border
%% Returns:    ok
%% C-API func: void glCopyTexImage1DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

copyTexImage1DEXT(Target, Level, Internalformat, X, Y, Width, Border)
 -> cast
    ( ?glCopyTexImage1DEXT
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Border:?GLint
      >>
    )
.

%% Func:       copyTexImage2DEXT
%% Args:       Target, Level, Internalformat, X, Y, Width, Height, Border
%% Returns:    ok
%% C-API func: void glCopyTexImage2DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

copyTexImage2DEXT(Target, Level, Internalformat, X, Y, Width, Height, Border)
 -> cast
    ( ?glCopyTexImage2DEXT
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      >>
    )
.

%% Func:       copyTexSubImage1DEXT
%% Args:       Target, Level, Xoffset, X, Y, Width
%% Returns:    ok
%% C-API func: void glCopyTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

copyTexSubImage1DEXT(Target, Level, Xoffset, X, Y, Width)
 -> cast
    ( ?glCopyTexSubImage1DEXT
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      >>
    )
.

%% Func:       copyTexSubImage2DEXT
%% Args:       Target, Level, Xoffset, Yoffset, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glCopyTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

copyTexSubImage2DEXT(Target, Level, Xoffset, Yoffset, X, Y, Width, Height)
 -> cast
    ( ?glCopyTexSubImage2DEXT
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

%% Func:       copyTexSubImage3DEXT
%% Args:       Target, Level, Xoffset, Yoffset, Zoffset, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glCopyTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

copyTexSubImage3DEXT(Target, Level, Xoffset, Yoffset, Zoffset, X, Y, Width, Height)
 -> cast
    ( ?glCopyTexSubImage3DEXT
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% GL_EXT_histogram

%% Func:       getHistogramEXT
%% Args:       Target, Reset, Format, Type, Values
%% Returns:    ok
%% C-API func: void glGetHistogramEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values)

getHistogramEXT(Target, Reset, Format, Type, Values)
 -> cast
    ( ?glGetHistogramEXT
    , <<Target:?GLenum
      , Reset:?GLboolean
      , Format:?GLenum
      , Type:?GLenum
      , Values:?_PTR
      >>
    )
.

%% Func:       getHistogramParameterfvEXT
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetHistogramParameterfvEXT(GLenum target, GLenum pname, GLfloat* params)

getHistogramParameterfvEXT(Target, Pname, Params)
 -> Bin
    = call
    ( ?glGetHistogramParameterfvEXT
    , <<Target:?GLenum
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

%% Func:       getHistogramParameterivEXT
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetHistogramParameterivEXT(GLenum target, GLenum pname, GLint* params)

getHistogramParameterivEXT(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetHistogramParameterivEXT
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetHistogramParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getMinmaxEXT
%% Args:       Target, Reset, Format, Type, Values
%% Returns:    ok
%% C-API func: void glGetMinmaxEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values)

getMinmaxEXT(Target, Reset, Format, Type, Values)
 -> cast
    ( ?glGetMinmaxEXT
    , <<Target:?GLenum
      , Reset:?GLboolean
      , Format:?GLenum
      , Type:?GLenum
      , Values:?_PTR
      >>
    )
.

%% Func:       getMinmaxParameterfvEXT
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMinmaxParameterfvEXT(GLenum target, GLenum pname, GLfloat* params)

getMinmaxParameterfvEXT(Target, Pname, Params)
 -> Bin
    = call
    ( ?glGetMinmaxParameterfvEXT
    , <<Target:?GLenum
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

%% Func:       getMinmaxParameterivEXT
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMinmaxParameterivEXT(GLenum target, GLenum pname, GLint* params)

getMinmaxParameterivEXT(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetMinmaxParameterivEXT
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetMinmaxParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       histogramEXT
%% Args:       Target, Width, Internalformat, Sink
%% Returns:    ok
%% C-API func: void glHistogramEXT(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)

histogramEXT(Target, Width, Internalformat, Sink)
 -> cast
    ( ?glHistogramEXT
    , <<Target:?GLenum
      , Width:?GLsizei
      , Internalformat:?GLenum
      , Sink:?GLboolean
      >>
    )
.

%% Func:       minmaxEXT
%% Args:       Target, Internalformat, Sink
%% Returns:    ok
%% C-API func: void glMinmaxEXT(GLenum target, GLenum internalformat, GLboolean sink)

minmaxEXT(Target, Internalformat, Sink)
 -> cast
    ( ?glMinmaxEXT
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Sink:?GLboolean
      >>
    )
.

%% Func:       resetHistogramEXT
%% Args:       Target
%% Returns:    ok
%% C-API func: void glResetHistogramEXT(GLenum target)

resetHistogramEXT(Target)
 -> cast
    ( ?glResetHistogramEXT
    , <<Target:?GLenum
      >>
    )
.

%% Func:       resetMinmaxEXT
%% Args:       Target
%% Returns:    ok
%% C-API func: void glResetMinmaxEXT(GLenum target)

resetMinmaxEXT(Target)
 -> cast
    ( ?glResetMinmaxEXT
    , <<Target:?GLenum
      >>
    )
.

%% GL_EXT_convolution

%% Func:       convolutionFilter1DEXT
%% Args:       Target, Internalformat, Width, Format, Type, Image
%% Returns:    ok
%% C-API func: void glConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* image)

convolutionFilter1DEXT(Target, Internalformat, Width, Format, Type, Image)
 -> cast
    ( ?glConvolutionFilter1DEXT
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Image:?_PTR
      >>
    )
.

%% Func:       convolutionFilter2DEXT
%% Args:       Target, Internalformat, Width, Height, Format, Type, Image
%% Returns:    ok
%% C-API func: void glConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* image)

convolutionFilter2DEXT(Target, Internalformat, Width, Height, Format, Type, Image)
 -> cast
    ( ?glConvolutionFilter2DEXT
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Image:?_PTR
      >>
    )
.

%% Func:       convolutionParameterfEXT
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glConvolutionParameterfEXT(GLenum target, GLenum pname, GLfloat params)

convolutionParameterfEXT(Target, Pname, Params)
 -> cast
    ( ?glConvolutionParameterfEXT
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?GLfloat
      >>
    )
.

%% Func:       convolutionParameterfvEXT
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glConvolutionParameterfvEXT(GLenum target, GLenum pname, const GLfloat* params)

convolutionParameterfvEXT(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glConvolutionParameterfvEXT
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       convolutionParameteriEXT
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glConvolutionParameteriEXT(GLenum target, GLenum pname, GLint params)

convolutionParameteriEXT(Target, Pname, Params)
 -> cast
    ( ?glConvolutionParameteriEXT
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?GLint
      >>
    )
.

%% Func:       convolutionParameterivEXT
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glConvolutionParameterivEXT(GLenum target, GLenum pname, const GLint* params)

convolutionParameterivEXT(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glConvolutionParameterivEXT
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       copyConvolutionFilter1DEXT
%% Args:       Target, Internalformat, X, Y, Width
%% Returns:    ok
%% C-API func: void glCopyConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

copyConvolutionFilter1DEXT(Target, Internalformat, X, Y, Width)
 -> cast
    ( ?glCopyConvolutionFilter1DEXT
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      >>
    )
.

%% Func:       copyConvolutionFilter2DEXT
%% Args:       Target, Internalformat, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glCopyConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)

copyConvolutionFilter2DEXT(Target, Internalformat, X, Y, Width, Height)
 -> cast
    ( ?glCopyConvolutionFilter2DEXT
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       getConvolutionFilterEXT
%% Args:       Target, Format, Type, Image
%% Returns:    ok
%% C-API func: void glGetConvolutionFilterEXT(GLenum target, GLenum format, GLenum type, GLvoid* image)

getConvolutionFilterEXT(Target, Format, Type, Image)
 -> cast
    ( ?glGetConvolutionFilterEXT
    , <<Target:?GLenum
      , Format:?GLenum
      , Type:?GLenum
      , Image:?_PTR
      >>
    )
.

%% Func:       getConvolutionParameterfvEXT
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetConvolutionParameterfvEXT(GLenum target, GLenum pname, GLfloat* params)

getConvolutionParameterfvEXT(Target, Pname, Params)
 -> Bin
    = call
    ( ?glGetConvolutionParameterfvEXT
    , <<Target:?GLenum
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

%% Func:       getConvolutionParameterivEXT
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetConvolutionParameterivEXT(GLenum target, GLenum pname, GLint* params)

getConvolutionParameterivEXT(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetConvolutionParameterivEXT
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetConvolutionParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getSeparableFilterEXT
%% Args:       Target, Format, Type, Row, Column, Span
%% Returns:    ok
%% C-API func: void glGetSeparableFilterEXT(GLenum target, GLenum format, GLenum type, GLvoid* row, GLvoid* column, GLvoid* span)

getSeparableFilterEXT(Target, Format, Type, Row, Column, Span)
 -> cast
    ( ?glGetSeparableFilterEXT
    , <<Target:?GLenum
      , Format:?GLenum
      , Type:?GLenum
      , Row:?_PTR
      , Column:?_PTR
      , Span:?_PTR
      >>
    )
.

%% Func:       separableFilter2DEXT
%% Args:       Target, Internalformat, Width, Height, Format, Type, Row, Column
%% Returns:    ok
%% C-API func: void glSeparableFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* row, const GLvoid* column)

separableFilter2DEXT(Target, Internalformat, Width, Height, Format, Type, Row, Column)
 -> cast
    ( ?glSeparableFilter2DEXT
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Row:?_PTR
      , Column:?_PTR
      >>
    )
.

%% GL_EXT_color_matrix
%% GL_SGI_color_matrix
%% GL_SGI_color_table

%% Func:       colorTableSGI
%% Args:       Target, Internalformat, Width, Format, Type, Table
%% Returns:    ok
%% C-API func: void glColorTableSGI(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* table)

colorTableSGI(Target, Internalformat, Width, Format, Type, Table)
 -> cast
    ( ?glColorTableSGI
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Table:?_PTR
      >>
    )
.

%% Func:       colorTableParameterfvSGI
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glColorTableParameterfvSGI(GLenum target, GLenum pname, const GLfloat* params)

colorTableParameterfvSGI(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glColorTableParameterfvSGI
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       colorTableParameterivSGI
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glColorTableParameterivSGI(GLenum target, GLenum pname, const GLint* params)

colorTableParameterivSGI(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glColorTableParameterivSGI
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       copyColorTableSGI
%% Args:       Target, Internalformat, X, Y, Width
%% Returns:    ok
%% C-API func: void glCopyColorTableSGI(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

copyColorTableSGI(Target, Internalformat, X, Y, Width)
 -> cast
    ( ?glCopyColorTableSGI
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      >>
    )
.

%% Func:       getColorTableSGI
%% Args:       Target, Format, Type, Table
%% Returns:    ok
%% C-API func: void glGetColorTableSGI(GLenum target, GLenum format, GLenum type, GLvoid* table)

getColorTableSGI(Target, Format, Type, Table)
 -> cast
    ( ?glGetColorTableSGI
    , <<Target:?GLenum
      , Format:?GLenum
      , Type:?GLenum
      , Table:?_PTR
      >>
    )
.

%% Func:       getColorTableParameterfvSGI
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetColorTableParameterfvSGI(GLenum target, GLenum pname, GLfloat* params)

getColorTableParameterfvSGI(Target, Pname, Params)
 -> Bin
    = call
    ( ?glGetColorTableParameterfvSGI
    , <<Target:?GLenum
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

%% Func:       getColorTableParameterivSGI
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetColorTableParameterivSGI(GLenum target, GLenum pname, GLint* params)

getColorTableParameterivSGI(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetColorTableParameterivSGI
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetColorTableParameterivSGILen
      ( Pname
      )
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
           , ?GLint
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

%% GL_SGIX_pixel_texture

%% Func:       pixelTexGenSGIX
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glPixelTexGenSGIX(GLenum mode)

pixelTexGenSGIX(Mode)
 -> cast
    ( ?glPixelTexGenSGIX
    , <<Mode:?GLenum
      >>
    )
.

%% GL_SGIS_pixel_texture

%% Func:       pixelTexGenParameteriSGIS
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPixelTexGenParameteriSGIS(GLenum pname, GLint param)

pixelTexGenParameteriSGIS(Pname, Param)
 -> cast
    ( ?glPixelTexGenParameteriSGIS
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       pixelTexGenParameterivSGIS
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glPixelTexGenParameterivSGIS(GLenum pname, const GLint* params)

pixelTexGenParameterivSGIS(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glPixelTexGenParameterivSGIS
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       pixelTexGenParameterfSGIS
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPixelTexGenParameterfSGIS(GLenum pname, GLfloat param)

pixelTexGenParameterfSGIS(Pname, Param)
 -> cast
    ( ?glPixelTexGenParameterfSGIS
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       pixelTexGenParameterfvSGIS
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glPixelTexGenParameterfvSGIS(GLenum pname, const GLfloat* params)

pixelTexGenParameterfvSGIS(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glPixelTexGenParameterfvSGIS
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       getPixelTexGenParameterivSGIS
%% Args:       Pname
%% Returns:    [Params]
%% C-API func: void glGetPixelTexGenParameterivSGIS(GLenum pname, GLint* params)

getPixelTexGenParameterivSGIS(Pname, Params)
 -> Bin
    = call
      ( ?glGetPixelTexGenParameterivSGIS
      , <<Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetPixelTexGenParameterivSGISLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getPixelTexGenParameterfvSGIS
%% Args:       Pname
%% Returns:    [Params]
%% C-API func: void glGetPixelTexGenParameterfvSGIS(GLenum pname, GLfloat* params)

getPixelTexGenParameterfvSGIS(Pname, Params)
 -> Bin
    = call
    ( ?glGetPixelTexGenParameterfvSGIS
    , <<Pname:?GLenum
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

%% GL_SGIS_texture4D

%% Func:       texImage4DSGIS
%% Args:       Target, Level, Internalformat, Width, Height, Depth, Size4d, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexImage4DSGIS(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

texImage4DSGIS(Target, Level, Internalformat, Width, Height, Depth, Size4d, Border, Format, Type, Pixels)
 -> cast
    ( ?glTexImage4DSGIS
    , <<Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Size4d:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       texSubImage4DSGIS
%% Args:       Target, Level, Xoffset, Yoffset, Zoffset, Woffset, Width, Height, Depth, Size4d, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTexSubImage4DSGIS(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, const GLvoid* pixels)

texSubImage4DSGIS(Target, Level, Xoffset, Yoffset, Zoffset, Woffset, Width, Height, Depth, Size4d, Format, Type, Pixels)
 -> cast
    ( ?glTexSubImage4DSGIS
    , <<Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , Woffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Size4d:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% GL_SGI_texture_color_table
%% GL_EXT_cmyka
%% GL_EXT_texture_object

%% Func:       areTexturesResidentEXT
%% Args:       N, Textures, Residences
%% Returns:    GLboolean
%% C-API func: GLboolean glAreTexturesResidentEXT(GLsizei n, const GLuint* textures, GLboolean* residences)

areTexturesResidentEXT(N, Textures, Residences)
 -> Bin
    = call
      ( ?glAreTexturesResidentEXT
      , <<N:?GLsizei
        , Textures:?_PTR
        , Residences:?_PTR
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

%% Func:       bindTextureEXT
%% Args:       Target, Texture
%% Returns:    ok
%% C-API func: void glBindTextureEXT(GLenum target, GLuint texture)

bindTextureEXT(Target, Texture)
 -> cast
    ( ?glBindTextureEXT
    , <<Target:?GLenum
      , Texture:?GLuint
      >>
    )
.

%% Func:       deleteTexturesEXT
%% Args:       N, Textures
%% Returns:    ok
%% C-API func: void glDeleteTexturesEXT(GLsizei n, const GLuint* textures)

deleteTexturesEXT(N, Textures)
 -> cast
    ( ?glDeleteTexturesEXT
    , <<N:?GLsizei
      , Textures:?_PTR
      >>
    )
.

%% Func:       genTexturesEXT
%% Args:       N, Textures
%% Returns:    ok
%% C-API func: void glGenTexturesEXT(GLsizei n, GLuint* textures)

genTexturesEXT(N, Textures)
 -> cast
    ( ?glGenTexturesEXT
    , <<N:?GLsizei
      , Textures:?_PTR
      >>
    )
.

%% Func:       isTextureEXT
%% Args:       Texture
%% Returns:    GLboolean
%% C-API func: GLboolean glIsTextureEXT(GLuint texture)

isTextureEXT(Texture)
 -> Bin
    = call
      ( ?glIsTextureEXT
      , <<Texture:?GLuint
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

%% Func:       prioritizeTexturesEXT
%% Args:       N, Textures, Priorities
%% Returns:    ok
%% C-API func: void glPrioritizeTexturesEXT(GLsizei n, const GLuint* textures, const GLclampf* priorities)

prioritizeTexturesEXT(N, Textures, Priorities)
 -> cast
    ( ?glPrioritizeTexturesEXT
    , <<N:?GLsizei
      , Textures:?_PTR
      , Priorities:?GLclampf*
      >>
    )
.

%% GL_SGIS_detail_texture

%% Func:       detailTexFuncSGIS
%% Args:       Target, N, Points
%% Returns:    ok
%% C-API func: void glDetailTexFuncSGIS(GLenum target, GLsizei n, const GLfloat* points)

detailTexFuncSGIS(Target, N, Points)
 -> cast
    ( ?glDetailTexFuncSGIS
    , <<Target:?GLenum
      , N:?GLsizei
      , Points:?_PTR
      >>
    )
.

%% Func:       getDetailTexFuncSGIS
%% Args:       Target, Points
%% Returns:    ok
%% C-API func: void glGetDetailTexFuncSGIS(GLenum target, GLfloat* points)

getDetailTexFuncSGIS(Target, Points)
 -> cast
    ( ?glGetDetailTexFuncSGIS
    , <<Target:?GLenum
      , Points:?_PTR
      >>
    )
.

%% GL_SGIS_sharpen_texture

%% Func:       sharpenTexFuncSGIS
%% Args:       Target, N, Points
%% Returns:    ok
%% C-API func: void glSharpenTexFuncSGIS(GLenum target, GLsizei n, const GLfloat* points)

sharpenTexFuncSGIS(Target, N, Points)
 -> cast
    ( ?glSharpenTexFuncSGIS
    , <<Target:?GLenum
      , N:?GLsizei
      , Points:?_PTR
      >>
    )
.

%% Func:       getSharpenTexFuncSGIS
%% Args:       Target, Points
%% Returns:    ok
%% C-API func: void glGetSharpenTexFuncSGIS(GLenum target, GLfloat* points)

getSharpenTexFuncSGIS(Target, Points)
 -> cast
    ( ?glGetSharpenTexFuncSGIS
    , <<Target:?GLenum
      , Points:?_PTR
      >>
    )
.

%% GL_EXT_packed_pixels
%% GL_SGIS_texture_lod
%% GL_SGIS_multisample

%% Func:       sampleMaskSGIS
%% Args:       Value, Invert
%% Returns:    ok
%% C-API func: void glSampleMaskSGIS(GLclampf value, GLboolean invert)

sampleMaskSGIS(Value, Invert)
 -> cast
    ( ?glSampleMaskSGIS
    , <<Value:?GLclampf
      , Invert:?GLboolean
      >>
    )
.

%% Func:       samplePatternSGIS
%% Args:       Pattern
%% Returns:    ok
%% C-API func: void glSamplePatternSGIS(GLenum pattern)

samplePatternSGIS(Pattern)
 -> cast
    ( ?glSamplePatternSGIS
    , <<Pattern:?GLenum
      >>
    )
.

%% GL_EXT_rescale_normal
%% GL_EXT_vertex_array

%% Func:       arrayElementEXT
%% Args:       I
%% Returns:    ok
%% C-API func: void glArrayElementEXT(GLint i)

arrayElementEXT(I)
 -> cast
    ( ?glArrayElementEXT
    , <<I:?GLint
      >>
    )
.

%% Func:       colorPointerEXT
%% Args:       Size, Type, Stride, Count, Pointer
%% Returns:    ok
%% C-API func: void glColorPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer)

colorPointerEXT(Size, Type, Stride, Count, Pointer)
 -> cast
    ( ?glColorPointerEXT
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Count:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       drawArraysEXT
%% Args:       Mode, First, Count
%% Returns:    ok
%% C-API func: void glDrawArraysEXT(GLenum mode, GLint first, GLsizei count)

drawArraysEXT(Mode, First, Count)
 -> cast
    ( ?glDrawArraysEXT
    , <<Mode:?GLenum
      , First:?GLint
      , Count:?GLsizei
      >>
    )
.

%% Func:       edgeFlagPointerEXT
%% Args:       Stride, Count, Pointer
%% Returns:    ok
%% C-API func: void glEdgeFlagPointerEXT(GLsizei stride, GLsizei count, const GLboolean* pointer)

edgeFlagPointerEXT(Stride, Count, Pointer)
 -> cast
    ( ?glEdgeFlagPointerEXT
    , <<Stride:?GLsizei
      , Count:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       getPointervEXT
%% Args:       Pname, Params
%% Returns:    ok
%% C-API func: void glGetPointervEXT(GLenum pname, GLvoid** params)

getPointervEXT(Pname, Params)
 -> cast
    ( ?glGetPointervEXT
    , <<Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       indexPointerEXT
%% Args:       Type, Stride, Count, Pointer
%% Returns:    ok
%% C-API func: void glIndexPointerEXT(GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer)

indexPointerEXT(Type, Stride, Count, Pointer)
 -> cast
    ( ?glIndexPointerEXT
    , <<Type:?GLenum
      , Stride:?GLsizei
      , Count:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       normalPointerEXT
%% Args:       Type, Stride, Count, Pointer
%% Returns:    ok
%% C-API func: void glNormalPointerEXT(GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer)

normalPointerEXT(Type, Stride, Count, Pointer)
 -> cast
    ( ?glNormalPointerEXT
    , <<Type:?GLenum
      , Stride:?GLsizei
      , Count:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       texCoordPointerEXT
%% Args:       Size, Type, Stride, Count, Pointer
%% Returns:    ok
%% C-API func: void glTexCoordPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer)

texCoordPointerEXT(Size, Type, Stride, Count, Pointer)
 -> cast
    ( ?glTexCoordPointerEXT
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Count:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       vertexPointerEXT
%% Args:       Size, Type, Stride, Count, Pointer
%% Returns:    ok
%% C-API func: void glVertexPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer)

vertexPointerEXT(Size, Type, Stride, Count, Pointer)
 -> cast
    ( ?glVertexPointerEXT
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Count:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% GL_EXT_misc_attribute
%% GL_SGIS_generate_mipmap
%% GL_SGIX_clipmap
%% GL_SGIX_shadow
%% GL_SGIS_texture_edge_clamp
%% GL_SGIS_texture_border_clamp
%% GL_EXT_blend_minmax

%% Func:       blendEquationEXT
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glBlendEquationEXT(GLenum mode)

blendEquationEXT(Mode)
 -> cast
    ( ?glBlendEquationEXT
    , <<Mode:?GLenum
      >>
    )
.

%% GL_EXT_blend_subtract
%% GL_EXT_blend_logic_op
%% GL_SGIX_interlace
%% GL_SGIX_pixel_tiles
%% GL_SGIX_texture_select
%% GL_SGIX_sprite

%% Func:       spriteParameterfSGIX
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glSpriteParameterfSGIX(GLenum pname, GLfloat param)

spriteParameterfSGIX(Pname, Param)
 -> cast
    ( ?glSpriteParameterfSGIX
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       spriteParameterfvSGIX
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glSpriteParameterfvSGIX(GLenum pname, const GLfloat* params)

spriteParameterfvSGIX(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glSpriteParameterfvSGIX
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       spriteParameteriSGIX
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glSpriteParameteriSGIX(GLenum pname, GLint param)

spriteParameteriSGIX(Pname, Param)
 -> cast
    ( ?glSpriteParameteriSGIX
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       spriteParameterivSGIX
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glSpriteParameterivSGIX(GLenum pname, const GLint* params)

spriteParameterivSGIX(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glSpriteParameterivSGIX
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% GL_SGIX_texture_multi_buffer
%% GL_EXT_point_parameters

%% Func:       pointParameterfEXT
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPointParameterfEXT(GLenum pname, GLfloat param)

pointParameterfEXT(Pname, Param)
 -> cast
    ( ?glPointParameterfEXT
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       pointParameterfvEXT
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glPointParameterfvEXT(GLenum pname, const GLfloat* params)

pointParameterfvEXT(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glPointParameterfvEXT
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% GL_SGIS_point_parameters

%% Func:       pointParameterfSGIS
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPointParameterfSGIS(GLenum pname, GLfloat param)

pointParameterfSGIS(Pname, Param)
 -> cast
    ( ?glPointParameterfSGIS
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       pointParameterfvSGIS
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glPointParameterfvSGIS(GLenum pname, const GLfloat* params)

pointParameterfvSGIS(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glPointParameterfvSGIS
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% GL_SGIX_instruments

%% Func:       getInstrumentsSGIX
%% Args:       
%% Returns:    GLint
%% C-API func: GLint glGetInstrumentsSGIX()

getInstrumentsSGIX()
 -> cast
    ( ?glGetInstrumentsSGIX
    , <<
      >>
    )
.

%% Func:       instrumentsBufferSGIX
%% Args:       Size, Buffer
%% Returns:    ok
%% C-API func: void glInstrumentsBufferSGIX(GLsizei size, GLint* buffer)

instrumentsBufferSGIX(Size, Buffer)
 -> cast
    ( ?glInstrumentsBufferSGIX
    , <<Size:?GLsizei
      , Buffer:?_PTR
      >>
    )
.

%% Func:       pollInstrumentsSGIX
%% Args:       Marker_p
%% Returns:    GLint
%% C-API func: GLint glPollInstrumentsSGIX(GLint* marker_p)

pollInstrumentsSGIX(Marker_p)
 -> cast
    ( ?glPollInstrumentsSGIX
    , <<Marker_p:?_PTR
      >>
    )
.

%% Func:       readInstrumentsSGIX
%% Args:       Marker
%% Returns:    ok
%% C-API func: void glReadInstrumentsSGIX(GLint marker)

readInstrumentsSGIX(Marker)
 -> cast
    ( ?glReadInstrumentsSGIX
    , <<Marker:?GLint
      >>
    )
.

%% Func:       startInstrumentsSGIX
%% Args:       
%% Returns:    ok
%% C-API func: void glStartInstrumentsSGIX()

startInstrumentsSGIX()
 -> cast
    ( ?glStartInstrumentsSGIX
    , <<
      >>
    )
.

%% Func:       stopInstrumentsSGIX
%% Args:       Marker
%% Returns:    ok
%% C-API func: void glStopInstrumentsSGIX(GLint marker)

stopInstrumentsSGIX(Marker)
 -> cast
    ( ?glStopInstrumentsSGIX
    , <<Marker:?GLint
      >>
    )
.

%% GL_SGIX_texture_scale_bias
%% GL_SGIX_framezoom

%% Func:       frameZoomSGIX
%% Args:       Factor
%% Returns:    ok
%% C-API func: void glFrameZoomSGIX(GLint factor)

frameZoomSGIX(Factor)
 -> cast
    ( ?glFrameZoomSGIX
    , <<Factor:?GLint
      >>
    )
.

%% GL_SGIX_tag_sample_buffer

%% Func:       tagSampleBufferSGIX
%% Args:       
%% Returns:    ok
%% C-API func: void glTagSampleBufferSGIX()

tagSampleBufferSGIX()
 -> cast
    ( ?glTagSampleBufferSGIX
    , <<
      >>
    )
.

%% GL_SGIX_polynomial_ffd

%% Func:       deformationMap3dSGIX
%% Args:       Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, W1, W2, Wstride, Worder, Points
%% Returns:    ok
%% C-API func: void glDeformationMap3dSGIX(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const GLdouble* points)

deformationMap3dSGIX(Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, W1, W2, Wstride, Worder, Points)
 -> cast
    ( ?glDeformationMap3dSGIX
    , <<Target:?GLenum
      , U1:?GLdouble
      , U2:?GLdouble
      , Ustride:?GLint
      , Uorder:?GLint
      , V1:?GLdouble
      , V2:?GLdouble
      , Vstride:?GLint
      , Vorder:?GLint
      , W1:?GLdouble
      , W2:?GLdouble
      , Wstride:?GLint
      , Worder:?GLint
      , Points:?_PTR
      >>
    )
.

%% Func:       deformationMap3fSGIX
%% Args:       Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, W1, W2, Wstride, Worder, Points
%% Returns:    ok
%% C-API func: void glDeformationMap3fSGIX(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const GLfloat* points)

deformationMap3fSGIX(Target, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, W1, W2, Wstride, Worder, Points)
 -> cast
    ( ?glDeformationMap3fSGIX
    , <<Target:?GLenum
      , U1:?GLfloat
      , U2:?GLfloat
      , Ustride:?GLint
      , Uorder:?GLint
      , V1:?GLfloat
      , V2:?GLfloat
      , Vstride:?GLint
      , Vorder:?GLint
      , W1:?GLfloat
      , W2:?GLfloat
      , Wstride:?GLint
      , Worder:?GLint
      , Points:?_PTR
      >>
    )
.

%% Func:       deformSGIX
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glDeformSGIX(GLbitfield mask)

deformSGIX(Mask)
 -> cast
    ( ?glDeformSGIX
    , <<Mask:?GLbitfield
      >>
    )
.

%% Func:       loadIdentityDeformationMapSGIX
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glLoadIdentityDeformationMapSGIX(GLbitfield mask)

loadIdentityDeformationMapSGIX(Mask)
 -> cast
    ( ?glLoadIdentityDeformationMapSGIX
    , <<Mask:?GLbitfield
      >>
    )
.

%% GL_SGIX_reference_plane

%% Func:       referencePlaneSGIX
%% Args:       Equation
%% Returns:    ok
%% C-API func: void glReferencePlaneSGIX(const GLdouble* equation)

referencePlaneSGIX(Equation)
 -> cast
    ( ?glReferencePlaneSGIX
    , <<Equation:?_PTR
      >>
    )
.

%% GL_SGIX_flush_raster

%% Func:       flushRasterSGIX
%% Args:       
%% Returns:    ok
%% C-API func: void glFlushRasterSGIX()

flushRasterSGIX()
 -> cast
    ( ?glFlushRasterSGIX
    , <<
      >>
    )
.

%% GL_SGIX_depth_texture
%% GL_SGIS_fog_function

%% Func:       fogFuncSGIS
%% Args:       N, Points
%% Returns:    ok
%% C-API func: void glFogFuncSGIS(GLsizei n, const GLfloat* points)

fogFuncSGIS(N, Points)
 -> cast
    ( ?glFogFuncSGIS
    , <<N:?GLsizei
      , Points:?_PTR
      >>
    )
.

%% Func:       getFogFuncSGIS
%% Args:       Points
%% Returns:    ok
%% C-API func: void glGetFogFuncSGIS(GLfloat* points)

getFogFuncSGIS(Points)
 -> cast
    ( ?glGetFogFuncSGIS
    , <<Points:?_PTR
      >>
    )
.

%% GL_SGIX_fog_offset
%% GL_HP_image_transform

%% Func:       imageTransformParameteriHP
%% Args:       Target, Pname, Param
%% Returns:    ok
%% C-API func: void glImageTransformParameteriHP(GLenum target, GLenum pname, GLint param)

imageTransformParameteriHP(Target, Pname, Param)
 -> cast
    ( ?glImageTransformParameteriHP
    , <<Target:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       imageTransformParameterfHP
%% Args:       Target, Pname, Param
%% Returns:    ok
%% C-API func: void glImageTransformParameterfHP(GLenum target, GLenum pname, GLfloat param)

imageTransformParameterfHP(Target, Pname, Param)
 -> cast
    ( ?glImageTransformParameterfHP
    , <<Target:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       imageTransformParameterivHP
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glImageTransformParameterivHP(GLenum target, GLenum pname, const GLint* params)

imageTransformParameterivHP(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glImageTransformParameterivHP
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       imageTransformParameterfvHP
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glImageTransformParameterfvHP(GLenum target, GLenum pname, const GLfloat* params)

imageTransformParameterfvHP(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glImageTransformParameterfvHP
    , [ <<Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       getImageTransformParameterivHP
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetImageTransformParameterivHP(GLenum target, GLenum pname, GLint* params)

getImageTransformParameterivHP(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetImageTransformParameterivHP
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetImageTransformParameterivHPLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getImageTransformParameterfvHP
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetImageTransformParameterfvHP(GLenum target, GLenum pname, GLfloat* params)

getImageTransformParameterfvHP(Target, Pname, Params)
 -> Bin
    = call
    ( ?glGetImageTransformParameterfvHP
    , <<Target:?GLenum
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

%% GL_HP_convolution_border_modes
%% GL_SGIX_texture_add_env
%% GL_EXT_color_subtable

%% Func:       colorSubTableEXT
%% Args:       Target, Start, Count, Format, Type, Data
%% Returns:    ok
%% C-API func: void glColorSubTableEXT(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid* data)

colorSubTableEXT(Target, Start, Count, Format, Type, Data)
 -> cast
    ( ?glColorSubTableEXT
    , <<Target:?GLenum
      , Start:?GLsizei
      , Count:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       copyColorSubTableEXT
%% Args:       Target, Start, X, Y, Width
%% Returns:    ok
%% C-API func: void glCopyColorSubTableEXT(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)

copyColorSubTableEXT(Target, Start, X, Y, Width)
 -> cast
    ( ?glCopyColorSubTableEXT
    , <<Target:?GLenum
      , Start:?GLsizei
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      >>
    )
.

%% GL_PGI_vertex_hints
%% GL_PGI_misc_hints

%% Func:       hintPGI
%% Args:       Target, Mode
%% Returns:    ok
%% C-API func: void glHintPGI(GLenum target, GLint mode)

hintPGI(Target, Mode)
 -> cast
    ( ?glHintPGI
    , <<Target:?GLenum
      , Mode:?GLint
      >>
    )
.

%% GL_EXT_paletted_texture

%% Func:       colorTableEXT
%% Args:       Target, InternalFormat, Width, Format, Type, Table
%% Returns:    ok
%% C-API func: void glColorTableEXT(GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const GLvoid* table)

colorTableEXT(Target, InternalFormat, Width, Format, Type, Table)
 -> cast
    ( ?glColorTableEXT
    , <<Target:?GLenum
      , InternalFormat:?GLenum
      , Width:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Table:?_PTR
      >>
    )
.

%% Func:       getColorTableEXT
%% Args:       Target, Format, Type, Data
%% Returns:    ok
%% C-API func: void glGetColorTableEXT(GLenum target, GLenum format, GLenum type, GLvoid* data)

getColorTableEXT(Target, Format, Type, Data)
 -> cast
    ( ?glGetColorTableEXT
    , <<Target:?GLenum
      , Format:?GLenum
      , Type:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       getColorTableParameterivEXT
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetColorTableParameterivEXT(GLenum target, GLenum pname, GLint* params)

getColorTableParameterivEXT(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetColorTableParameterivEXT
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetColorTableParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getColorTableParameterfvEXT
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetColorTableParameterfvEXT(GLenum target, GLenum pname, GLfloat* params)

getColorTableParameterfvEXT(Target, Pname, Params)
 -> Bin
    = call
    ( ?glGetColorTableParameterfvEXT
    , <<Target:?GLenum
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

%% GL_EXT_clip_volume_hint
%% GL_SGIX_list_priority

%% Func:       getListParameterfvSGIX
%% Args:       List, Pname
%% Returns:    [Params]
%% C-API func: void glGetListParameterfvSGIX(GLuint list, GLenum pname, GLfloat* params)

getListParameterfvSGIX(List, Pname, Params)
 -> Bin
    = call
    ( ?glGetListParameterfvSGIX
    , <<List:?GLuint
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

%% Func:       getListParameterivSGIX
%% Args:       List, Pname
%% Returns:    [Params]
%% C-API func: void glGetListParameterivSGIX(GLuint list, GLenum pname, GLint* params)

getListParameterivSGIX(List, Pname, Params)
 -> Bin
    = call
      ( ?glGetListParameterivSGIX
      , <<List:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetListParameterivSGIXLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       listParameterfSGIX
%% Args:       List, Pname, Param
%% Returns:    ok
%% C-API func: void glListParameterfSGIX(GLuint list, GLenum pname, GLfloat param)

listParameterfSGIX(List, Pname, Param)
 -> cast
    ( ?glListParameterfSGIX
    , <<List:?GLuint
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       listParameterfvSGIX
%% Args:       List, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glListParameterfvSGIX(GLuint list, GLenum pname, const GLfloat* params)

listParameterfvSGIX(List, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glListParameterfvSGIX
    , [ <<List:?GLuint
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       listParameteriSGIX
%% Args:       List, Pname, Param
%% Returns:    ok
%% C-API func: void glListParameteriSGIX(GLuint list, GLenum pname, GLint param)

listParameteriSGIX(List, Pname, Param)
 -> cast
    ( ?glListParameteriSGIX
    , <<List:?GLuint
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       listParameterivSGIX
%% Args:       List, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glListParameterivSGIX(GLuint list, GLenum pname, const GLint* params)

listParameterivSGIX(List, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glListParameterivSGIX
    , [ <<List:?GLuint
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% GL_SGIX_ir_instrument1
%% GL_SGIX_calligraphic_fragment
%% GL_SGIX_texture_lod_bias
%% GL_SGIX_shadow_ambient
%% GL_EXT_index_texture
%% GL_EXT_index_material

%% Func:       indexMaterialEXT
%% Args:       Face, Mode
%% Returns:    ok
%% C-API func: void glIndexMaterialEXT(GLenum face, GLenum mode)

indexMaterialEXT(Face, Mode)
 -> cast
    ( ?glIndexMaterialEXT
    , <<Face:?GLenum
      , Mode:?GLenum
      >>
    )
.

%% GL_EXT_index_func

%% Func:       indexFuncEXT
%% Args:       Func, Ref
%% Returns:    ok
%% C-API func: void glIndexFuncEXT(GLenum func, GLclampf ref)

indexFuncEXT(Func, Ref)
 -> cast
    ( ?glIndexFuncEXT
    , <<Func:?GLenum
      , Ref:?GLclampf
      >>
    )
.

%% GL_EXT_index_array_formats
%% GL_EXT_compiled_vertex_array

%% Func:       lockArraysEXT
%% Args:       First, Count
%% Returns:    ok
%% C-API func: void glLockArraysEXT(GLint first, GLsizei count)

lockArraysEXT(First, Count)
 -> cast
    ( ?glLockArraysEXT
    , <<First:?GLint
      , Count:?GLsizei
      >>
    )
.

%% Func:       unlockArraysEXT
%% Args:       
%% Returns:    ok
%% C-API func: void glUnlockArraysEXT()

unlockArraysEXT()
 -> cast
    ( ?glUnlockArraysEXT
    , <<
      >>
    )
.

%% GL_EXT_cull_vertex

%% Func:       cullParameterdvEXT
%% Args:       Pname, Params
%% Returns:    ok
%% C-API func: void glCullParameterdvEXT(GLenum pname, GLdouble* params)

cullParameterdvEXT(Pname, Params)
 -> cast
    ( ?glCullParameterdvEXT
    , <<Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       cullParameterfvEXT
%% Args:       Pname
%% Returns:    [Params]
%% C-API func: void glCullParameterfvEXT(GLenum pname, GLfloat* params)

cullParameterfvEXT(Pname, Params)
 -> Bin
    = call
    ( ?glCullParameterfvEXT
    , <<Pname:?GLenum
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

%% GL_SGIX_ycrcb
%% GL_SGIX_fragment_lighting

%% Func:       fragmentColorMaterialSGIX
%% Args:       Face, Mode
%% Returns:    ok
%% C-API func: void glFragmentColorMaterialSGIX(GLenum face, GLenum mode)

fragmentColorMaterialSGIX(Face, Mode)
 -> cast
    ( ?glFragmentColorMaterialSGIX
    , <<Face:?GLenum
      , Mode:?GLenum
      >>
    )
.

%% Func:       fragmentLightfSGIX
%% Args:       Light, Pname, Param
%% Returns:    ok
%% C-API func: void glFragmentLightfSGIX(GLenum light, GLenum pname, GLfloat param)

fragmentLightfSGIX(Light, Pname, Param)
 -> cast
    ( ?glFragmentLightfSGIX
    , <<Light:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       fragmentLightfvSGIX
%% Args:       Light, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glFragmentLightfvSGIX(GLenum light, GLenum pname, const GLfloat* params)

fragmentLightfvSGIX(Light, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glFragmentLightfvSGIX
    , [ <<Light:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       fragmentLightiSGIX
%% Args:       Light, Pname, Param
%% Returns:    ok
%% C-API func: void glFragmentLightiSGIX(GLenum light, GLenum pname, GLint param)

fragmentLightiSGIX(Light, Pname, Param)
 -> cast
    ( ?glFragmentLightiSGIX
    , <<Light:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       fragmentLightivSGIX
%% Args:       Light, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glFragmentLightivSGIX(GLenum light, GLenum pname, const GLint* params)

fragmentLightivSGIX(Light, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glFragmentLightivSGIX
    , [ <<Light:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       fragmentLightModelfSGIX
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glFragmentLightModelfSGIX(GLenum pname, GLfloat param)

fragmentLightModelfSGIX(Pname, Param)
 -> cast
    ( ?glFragmentLightModelfSGIX
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       fragmentLightModelfvSGIX
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glFragmentLightModelfvSGIX(GLenum pname, const GLfloat* params)

fragmentLightModelfvSGIX(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glFragmentLightModelfvSGIX
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       fragmentLightModeliSGIX
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glFragmentLightModeliSGIX(GLenum pname, GLint param)

fragmentLightModeliSGIX(Pname, Param)
 -> cast
    ( ?glFragmentLightModeliSGIX
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       fragmentLightModelivSGIX
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glFragmentLightModelivSGIX(GLenum pname, const GLint* params)

fragmentLightModelivSGIX(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glFragmentLightModelivSGIX
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       fragmentMaterialfSGIX
%% Args:       Face, Pname, Param
%% Returns:    ok
%% C-API func: void glFragmentMaterialfSGIX(GLenum face, GLenum pname, GLfloat param)

fragmentMaterialfSGIX(Face, Pname, Param)
 -> cast
    ( ?glFragmentMaterialfSGIX
    , <<Face:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       fragmentMaterialfvSGIX
%% Args:       Face, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glFragmentMaterialfvSGIX(GLenum face, GLenum pname, const GLfloat* params)

fragmentMaterialfvSGIX(Face, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glFragmentMaterialfvSGIX
    , [ <<Face:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       fragmentMaterialiSGIX
%% Args:       Face, Pname, Param
%% Returns:    ok
%% C-API func: void glFragmentMaterialiSGIX(GLenum face, GLenum pname, GLint param)

fragmentMaterialiSGIX(Face, Pname, Param)
 -> cast
    ( ?glFragmentMaterialiSGIX
    , <<Face:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       fragmentMaterialivSGIX
%% Args:       Face, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glFragmentMaterialivSGIX(GLenum face, GLenum pname, const GLint* params)

fragmentMaterialivSGIX(Face, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glFragmentMaterialivSGIX
    , [ <<Face:?GLenum
      , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       getFragmentLightfvSGIX
%% Args:       Light, Pname
%% Returns:    [Params]
%% C-API func: void glGetFragmentLightfvSGIX(GLenum light, GLenum pname, GLfloat* params)

getFragmentLightfvSGIX(Light, Pname, Params)
 -> Bin
    = call
    ( ?glGetFragmentLightfvSGIX
    , <<Light:?GLenum
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

%% Func:       getFragmentLightivSGIX
%% Args:       Light, Pname
%% Returns:    [Params]
%% C-API func: void glGetFragmentLightivSGIX(GLenum light, GLenum pname, GLint* params)

getFragmentLightivSGIX(Light, Pname, Params)
 -> Bin
    = call
      ( ?glGetFragmentLightivSGIX
      , <<Light:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetFragmentLightivSGIXLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getFragmentMaterialfvSGIX
%% Args:       Face, Pname
%% Returns:    [Params]
%% C-API func: void glGetFragmentMaterialfvSGIX(GLenum face, GLenum pname, GLfloat* params)

getFragmentMaterialfvSGIX(Face, Pname, Params)
 -> Bin
    = call
    ( ?glGetFragmentMaterialfvSGIX
    , <<Face:?GLenum
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

%% Func:       getFragmentMaterialivSGIX
%% Args:       Face, Pname
%% Returns:    [Params]
%% C-API func: void glGetFragmentMaterialivSGIX(GLenum face, GLenum pname, GLint* params)

getFragmentMaterialivSGIX(Face, Pname, Params)
 -> Bin
    = call
      ( ?glGetFragmentMaterialivSGIX
      , <<Face:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetFragmentMaterialivSGIXLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       lightEnviSGIX
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glLightEnviSGIX(GLenum pname, GLint param)

lightEnviSGIX(Pname, Param)
 -> cast
    ( ?glLightEnviSGIX
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% GL_IBM_rasterpos_clip
%% GL_HP_texture_lighting
%% GL_EXT_draw_range_elements

%% Func:       drawRangeElementsEXT
%% Args:       Mode, Start, End, Count, Type, Indices
%% Returns:    ok
%% C-API func: void glDrawRangeElementsEXT(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid* indices)

drawRangeElementsEXT(Mode, Start, End, Count, Type, Indices)
 -> cast
    ( ?glDrawRangeElementsEXT
    , <<Mode:?GLenum
      , Start:?GLuint
      , End:?GLuint
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      >>
    )
.

%% GL_WIN_phong_shading
%% GL_WIN_specular_fog
%% GL_EXT_light_texture

%% Func:       applyTextureEXT
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glApplyTextureEXT(GLenum mode)

applyTextureEXT(Mode)
 -> cast
    ( ?glApplyTextureEXT
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       textureLightEXT
%% Args:       Pname
%% Returns:    ok
%% C-API func: void glTextureLightEXT(GLenum pname)

textureLightEXT(Pname)
 -> cast
    ( ?glTextureLightEXT
    , <<Pname:?GLenum
      >>
    )
.

%% Func:       textureMaterialEXT
%% Args:       Face, Mode
%% Returns:    ok
%% C-API func: void glTextureMaterialEXT(GLenum face, GLenum mode)

textureMaterialEXT(Face, Mode)
 -> cast
    ( ?glTextureMaterialEXT
    , <<Face:?GLenum
      , Mode:?GLenum
      >>
    )
.

%% GL_SGIX_blend_alpha_minmax
%% GL_EXT_bgra
%% GL_SGIX_async

%% Func:       asyncMarkerSGIX
%% Args:       Marker
%% Returns:    ok
%% C-API func: void glAsyncMarkerSGIX(GLuint marker)

asyncMarkerSGIX(Marker)
 -> cast
    ( ?glAsyncMarkerSGIX
    , <<Marker:?GLuint
      >>
    )
.

%% Func:       finishAsyncSGIX
%% Args:       Markerp
%% Returns:    GLint
%% C-API func: GLint glFinishAsyncSGIX(GLuint* markerp)

finishAsyncSGIX(Markerp)
 -> cast
    ( ?glFinishAsyncSGIX
    , <<Markerp:?_PTR
      >>
    )
.

%% Func:       pollAsyncSGIX
%% Args:       Markerp
%% Returns:    GLint
%% C-API func: GLint glPollAsyncSGIX(GLuint* markerp)

pollAsyncSGIX(Markerp)
 -> cast
    ( ?glPollAsyncSGIX
    , <<Markerp:?_PTR
      >>
    )
.

%% Func:       genAsyncMarkersSGIX
%% Args:       Range
%% Returns:    GLuint
%% C-API func: GLuint glGenAsyncMarkersSGIX(GLsizei range)

genAsyncMarkersSGIX(Range)
 -> Bin
    = call
      ( ?glGenAsyncMarkersSGIX
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

%% Func:       deleteAsyncMarkersSGIX
%% Args:       Marker, Range
%% Returns:    ok
%% C-API func: void glDeleteAsyncMarkersSGIX(GLuint marker, GLsizei range)

deleteAsyncMarkersSGIX(Marker, Range)
 -> cast
    ( ?glDeleteAsyncMarkersSGIX
    , <<Marker:?GLuint
      , Range:?GLsizei
      >>
    )
.

%% Func:       isAsyncMarkerSGIX
%% Args:       Marker
%% Returns:    GLboolean
%% C-API func: GLboolean glIsAsyncMarkerSGIX(GLuint marker)

isAsyncMarkerSGIX(Marker)
 -> Bin
    = call
      ( ?glIsAsyncMarkerSGIX
      , <<Marker:?GLuint
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

%% GL_SGIX_async_pixel
%% GL_SGIX_async_histogram
%% GL_INTEL_parallel_arrays

%% Func:       vertexPointervINTEL
%% Args:       Size, Type, Pointer
%% Returns:    ok
%% C-API func: void glVertexPointervINTEL(GLint size, GLenum type, const GLvoid** pointer)

vertexPointervINTEL(Size, Type, Pointer)
 -> cast
    ( ?glVertexPointervINTEL
    , <<Size:?GLint
      , Type:?GLenum
      , Pointer:?_PTR
      >>
    )
.

%% Func:       normalPointervINTEL
%% Args:       Type, Pointer
%% Returns:    ok
%% C-API func: void glNormalPointervINTEL(GLenum type, const GLvoid** pointer)

normalPointervINTEL(Type, Pointer)
 -> cast
    ( ?glNormalPointervINTEL
    , <<Type:?GLenum
      , Pointer:?_PTR
      >>
    )
.

%% Func:       colorPointervINTEL
%% Args:       Size, Type, Pointer
%% Returns:    ok
%% C-API func: void glColorPointervINTEL(GLint size, GLenum type, const GLvoid** pointer)

colorPointervINTEL(Size, Type, Pointer)
 -> cast
    ( ?glColorPointervINTEL
    , <<Size:?GLint
      , Type:?GLenum
      , Pointer:?_PTR
      >>
    )
.

%% Func:       texCoordPointervINTEL
%% Args:       Size, Type, Pointer
%% Returns:    ok
%% C-API func: void glTexCoordPointervINTEL(GLint size, GLenum type, const GLvoid** pointer)

texCoordPointervINTEL(Size, Type, Pointer)
 -> cast
    ( ?glTexCoordPointervINTEL
    , <<Size:?GLint
      , Type:?GLenum
      , Pointer:?_PTR
      >>
    )
.

%% GL_HP_occlusion_test
%% GL_EXT_pixel_transform

%% Func:       pixelTransformParameteriEXT
%% Args:       Target, Pname, Param
%% Returns:    ok
%% C-API func: void glPixelTransformParameteriEXT(GLenum target, GLenum pname, GLint param)

pixelTransformParameteriEXT(Target, Pname, Param)
 -> cast
    ( ?glPixelTransformParameteriEXT
    , <<Target:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       pixelTransformParameterfEXT
%% Args:       Target, Pname, Param
%% Returns:    ok
%% C-API func: void glPixelTransformParameterfEXT(GLenum target, GLenum pname, GLfloat param)

pixelTransformParameterfEXT(Target, Pname, Param)
 -> cast
    ( ?glPixelTransformParameterfEXT
    , <<Target:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       pixelTransformParameterivEXT
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glPixelTransformParameterivEXT(GLenum target, GLenum pname, const GLint* params)

pixelTransformParameterivEXT(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glPixelTransformParameterivEXT
    , [ <<Target:?GLenum
      , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       pixelTransformParameterfvEXT
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glPixelTransformParameterfvEXT(GLenum target, GLenum pname, const GLfloat* params)

pixelTransformParameterfvEXT(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glPixelTransformParameterfvEXT
    , [ <<Target:?GLenum
      , Pname:?GLenum
      >>
      , NewParams
      ]
    )
.

%% GL_EXT_pixel_transform_color_table
%% GL_EXT_shared_texture_palette
%% GL_EXT_separate_specular_color
%% GL_EXT_secondary_color

%% Func:       secondaryColor3bEXT
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3bEXT(GLbyte red, GLbyte green, GLbyte blue)

secondaryColor3bEXT(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3bEXT
    , <<Red:?GLbyte
      , Green:?GLbyte
      , Blue:?GLbyte
      >>
    )
.

%% Func:       secondaryColor3bvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3bvEXT(const GLbyte* v)

secondaryColor3bvEXT(V)
 -> cast
    ( ?glSecondaryColor3bvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3dEXT
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3dEXT(GLdouble red, GLdouble green, GLdouble blue)

secondaryColor3dEXT(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3dEXT
    , <<Red:?GLdouble
      , Green:?GLdouble
      , Blue:?GLdouble
      >>
    )
.

%% Func:       secondaryColor3dvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3dvEXT(const GLdouble* v)

secondaryColor3dvEXT(V)
 -> cast
    ( ?glSecondaryColor3dvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3fEXT
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3fEXT(GLfloat red, GLfloat green, GLfloat blue)

secondaryColor3fEXT(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3fEXT
    , <<Red:?GLfloat
      , Green:?GLfloat
      , Blue:?GLfloat
      >>
    )
.

%% Func:       secondaryColor3fvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3fvEXT(const GLfloat* v)

secondaryColor3fvEXT(V)
 -> cast
    ( ?glSecondaryColor3fvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3iEXT
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3iEXT(GLint red, GLint green, GLint blue)

secondaryColor3iEXT(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3iEXT
    , <<Red:?GLint
      , Green:?GLint
      , Blue:?GLint
      >>
    )
.

%% Func:       secondaryColor3ivEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3ivEXT(const GLint* v)

secondaryColor3ivEXT(V)
 -> cast
    ( ?glSecondaryColor3ivEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3sEXT
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3sEXT(GLshort red, GLshort green, GLshort blue)

secondaryColor3sEXT(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3sEXT
    , <<Red:?GLshort
      , Green:?GLshort
      , Blue:?GLshort
      >>
    )
.

%% Func:       secondaryColor3svEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3svEXT(const GLshort* v)

secondaryColor3svEXT(V)
 -> cast
    ( ?glSecondaryColor3svEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3ubEXT
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3ubEXT(GLubyte red, GLubyte green, GLubyte blue)

secondaryColor3ubEXT(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3ubEXT
    , <<Red:?GLubyte
      , Green:?GLubyte
      , Blue:?GLubyte
      >>
    )
.

%% Func:       secondaryColor3ubvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3ubvEXT(const GLubyte* v)

secondaryColor3ubvEXT(V)
 -> cast
    ( ?glSecondaryColor3ubvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3uiEXT
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3uiEXT(GLuint red, GLuint green, GLuint blue)

secondaryColor3uiEXT(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3uiEXT
    , <<Red:?GLuint
      , Green:?GLuint
      , Blue:?GLuint
      >>
    )
.

%% Func:       secondaryColor3uivEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3uivEXT(const GLuint* v)

secondaryColor3uivEXT(V)
 -> cast
    ( ?glSecondaryColor3uivEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColor3usEXT
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3usEXT(GLushort red, GLushort green, GLushort blue)

secondaryColor3usEXT(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3usEXT
    , <<Red:?GLushort
      , Green:?GLushort
      , Blue:?GLushort
      >>
    )
.

%% Func:       secondaryColor3usvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3usvEXT(const GLushort* v)

secondaryColor3usvEXT(V)
 -> cast
    ( ?glSecondaryColor3usvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       secondaryColorPointerEXT
%% Args:       Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glSecondaryColorPointerEXT(GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

secondaryColorPointerEXT(Size, Type, Stride, Pointer)
 -> cast
    ( ?glSecondaryColorPointerEXT
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% GL_EXT_texture_perturb_normal

%% Func:       textureNormalEXT
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glTextureNormalEXT(GLenum mode)

textureNormalEXT(Mode)
 -> cast
    ( ?glTextureNormalEXT
    , <<Mode:?GLenum
      >>
    )
.

%% GL_EXT_multi_draw_arrays

%% Func:       multiDrawArraysEXT
%% Args:       Mode, First, Count, Primcount
%% Returns:    ok
%% C-API func: void glMultiDrawArraysEXT(GLenum mode, const GLint* first, const GLsizei* count, GLsizei primcount)

multiDrawArraysEXT(Mode, First, Count, Primcount)
 -> cast
    ( ?glMultiDrawArraysEXT
    , <<Mode:?GLenum
      , First:?_PTR
      , Count:?_PTR
      , Primcount:?GLsizei
      >>
    )
.

%% Func:       multiDrawElementsEXT
%% Args:       Mode, Count, Type, Indices, Primcount
%% Returns:    ok
%% C-API func: void glMultiDrawElementsEXT(GLenum mode, const GLsizei* count, GLenum type, const GLvoid** indices, GLsizei primcount)

multiDrawElementsEXT(Mode, Count, Type, Indices, Primcount)
 -> cast
    ( ?glMultiDrawElementsEXT
    , <<Mode:?GLenum
      , Count:?_PTR
      , Type:?GLenum
      , Indices:?_PTR
      , Primcount:?GLsizei
      >>
    )
.

%% GL_EXT_fog_coord

%% Func:       fogCoordfEXT
%% Args:       Coord
%% Returns:    ok
%% C-API func: void glFogCoordfEXT(GLfloat coord)

fogCoordfEXT(Coord)
 -> cast
    ( ?glFogCoordfEXT
    , <<Coord:?GLfloat
      >>
    )
.

%% Func:       fogCoordfvEXT
%% Args:       Coord
%% Returns:    ok
%% C-API func: void glFogCoordfvEXT(const GLfloat* coord)

fogCoordfvEXT(Coord)
 -> cast
    ( ?glFogCoordfvEXT
    , <<Coord:?_PTR
      >>
    )
.

%% Func:       fogCoorddEXT
%% Args:       Coord
%% Returns:    ok
%% C-API func: void glFogCoorddEXT(GLdouble coord)

fogCoorddEXT(Coord)
 -> cast
    ( ?glFogCoorddEXT
    , <<Coord:?GLdouble
      >>
    )
.

%% Func:       fogCoorddvEXT
%% Args:       Coord
%% Returns:    ok
%% C-API func: void glFogCoorddvEXT(const GLdouble* coord)

fogCoorddvEXT(Coord)
 -> cast
    ( ?glFogCoorddvEXT
    , <<Coord:?_PTR
      >>
    )
.

%% Func:       fogCoordPointerEXT
%% Args:       Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glFogCoordPointerEXT(GLenum type, GLsizei stride, const GLvoid* pointer)

fogCoordPointerEXT(Type, Stride, Pointer)
 -> cast
    ( ?glFogCoordPointerEXT
    , <<Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% GL_REND_screen_coordinates
%% GL_EXT_coordinate_frame

%% Func:       tangent3bEXT
%% Args:       Tx, Ty, Tz
%% Returns:    ok
%% C-API func: void glTangent3bEXT(GLbyte tx, GLbyte ty, GLbyte tz)

tangent3bEXT(Tx, Ty, Tz)
 -> cast
    ( ?glTangent3bEXT
    , <<Tx:?GLbyte
      , Ty:?GLbyte
      , Tz:?GLbyte
      >>
    )
.

%% Func:       tangent3bvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glTangent3bvEXT(const GLbyte* v)

tangent3bvEXT(V)
 -> cast
    ( ?glTangent3bvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       tangent3dEXT
%% Args:       Tx, Ty, Tz
%% Returns:    ok
%% C-API func: void glTangent3dEXT(GLdouble tx, GLdouble ty, GLdouble tz)

tangent3dEXT(Tx, Ty, Tz)
 -> cast
    ( ?glTangent3dEXT
    , <<Tx:?GLdouble
      , Ty:?GLdouble
      , Tz:?GLdouble
      >>
    )
.

%% Func:       tangent3dvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glTangent3dvEXT(const GLdouble* v)

tangent3dvEXT(V)
 -> cast
    ( ?glTangent3dvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       tangent3fEXT
%% Args:       Tx, Ty, Tz
%% Returns:    ok
%% C-API func: void glTangent3fEXT(GLfloat tx, GLfloat ty, GLfloat tz)

tangent3fEXT(Tx, Ty, Tz)
 -> cast
    ( ?glTangent3fEXT
    , <<Tx:?GLfloat
      , Ty:?GLfloat
      , Tz:?GLfloat
      >>
    )
.

%% Func:       tangent3fvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glTangent3fvEXT(const GLfloat* v)

tangent3fvEXT(V)
 -> cast
    ( ?glTangent3fvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       tangent3iEXT
%% Args:       Tx, Ty, Tz
%% Returns:    ok
%% C-API func: void glTangent3iEXT(GLint tx, GLint ty, GLint tz)

tangent3iEXT(Tx, Ty, Tz)
 -> cast
    ( ?glTangent3iEXT
    , <<Tx:?GLint
      , Ty:?GLint
      , Tz:?GLint
      >>
    )
.

%% Func:       tangent3ivEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glTangent3ivEXT(const GLint* v)

tangent3ivEXT(V)
 -> cast
    ( ?glTangent3ivEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       tangent3sEXT
%% Args:       Tx, Ty, Tz
%% Returns:    ok
%% C-API func: void glTangent3sEXT(GLshort tx, GLshort ty, GLshort tz)

tangent3sEXT(Tx, Ty, Tz)
 -> cast
    ( ?glTangent3sEXT
    , <<Tx:?GLshort
      , Ty:?GLshort
      , Tz:?GLshort
      >>
    )
.

%% Func:       tangent3svEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glTangent3svEXT(const GLshort* v)

tangent3svEXT(V)
 -> cast
    ( ?glTangent3svEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       binormal3bEXT
%% Args:       Bx, By, Bz
%% Returns:    ok
%% C-API func: void glBinormal3bEXT(GLbyte bx, GLbyte by, GLbyte bz)

binormal3bEXT(Bx, By, Bz)
 -> cast
    ( ?glBinormal3bEXT
    , <<Bx:?GLbyte
      , By:?GLbyte
      , Bz:?GLbyte
      >>
    )
.

%% Func:       binormal3bvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glBinormal3bvEXT(const GLbyte* v)

binormal3bvEXT(V)
 -> cast
    ( ?glBinormal3bvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       binormal3dEXT
%% Args:       Bx, By, Bz
%% Returns:    ok
%% C-API func: void glBinormal3dEXT(GLdouble bx, GLdouble by, GLdouble bz)

binormal3dEXT(Bx, By, Bz)
 -> cast
    ( ?glBinormal3dEXT
    , <<Bx:?GLdouble
      , By:?GLdouble
      , Bz:?GLdouble
      >>
    )
.

%% Func:       binormal3dvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glBinormal3dvEXT(const GLdouble* v)

binormal3dvEXT(V)
 -> cast
    ( ?glBinormal3dvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       binormal3fEXT
%% Args:       Bx, By, Bz
%% Returns:    ok
%% C-API func: void glBinormal3fEXT(GLfloat bx, GLfloat by, GLfloat bz)

binormal3fEXT(Bx, By, Bz)
 -> cast
    ( ?glBinormal3fEXT
    , <<Bx:?GLfloat
      , By:?GLfloat
      , Bz:?GLfloat
      >>
    )
.

%% Func:       binormal3fvEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glBinormal3fvEXT(const GLfloat* v)

binormal3fvEXT(V)
 -> cast
    ( ?glBinormal3fvEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       binormal3iEXT
%% Args:       Bx, By, Bz
%% Returns:    ok
%% C-API func: void glBinormal3iEXT(GLint bx, GLint by, GLint bz)

binormal3iEXT(Bx, By, Bz)
 -> cast
    ( ?glBinormal3iEXT
    , <<Bx:?GLint
      , By:?GLint
      , Bz:?GLint
      >>
    )
.

%% Func:       binormal3ivEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glBinormal3ivEXT(const GLint* v)

binormal3ivEXT(V)
 -> cast
    ( ?glBinormal3ivEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       binormal3sEXT
%% Args:       Bx, By, Bz
%% Returns:    ok
%% C-API func: void glBinormal3sEXT(GLshort bx, GLshort by, GLshort bz)

binormal3sEXT(Bx, By, Bz)
 -> cast
    ( ?glBinormal3sEXT
    , <<Bx:?GLshort
      , By:?GLshort
      , Bz:?GLshort
      >>
    )
.

%% Func:       binormal3svEXT
%% Args:       V
%% Returns:    ok
%% C-API func: void glBinormal3svEXT(const GLshort* v)

binormal3svEXT(V)
 -> cast
    ( ?glBinormal3svEXT
    , <<V:?_PTR
      >>
    )
.

%% Func:       tangentPointerEXT
%% Args:       Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glTangentPointerEXT(GLenum type, GLsizei stride, const GLvoid* pointer)

tangentPointerEXT(Type, Stride, Pointer)
 -> cast
    ( ?glTangentPointerEXT
    , <<Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       binormalPointerEXT
%% Args:       Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glBinormalPointerEXT(GLenum type, GLsizei stride, const GLvoid* pointer)

binormalPointerEXT(Type, Stride, Pointer)
 -> cast
    ( ?glBinormalPointerEXT
    , <<Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% GL_EXT_texture_env_combine
%% GL_APPLE_specular_vector
%% GL_APPLE_transform_hint
%% GL_SGIX_fog_scale
%% GL_SUNX_constant_data

%% Func:       finishTextureSUNX
%% Args:       
%% Returns:    ok
%% C-API func: void glFinishTextureSUNX()

finishTextureSUNX()
 -> cast
    ( ?glFinishTextureSUNX
    , <<
      >>
    )
.

%% GL_SUN_global_alpha

%% Func:       globalAlphaFactorbSUN
%% Args:       Factor
%% Returns:    ok
%% C-API func: void glGlobalAlphaFactorbSUN(GLbyte factor)

globalAlphaFactorbSUN(Factor)
 -> cast
    ( ?glGlobalAlphaFactorbSUN
    , <<Factor:?GLbyte
      >>
    )
.

%% Func:       globalAlphaFactorsSUN
%% Args:       Factor
%% Returns:    ok
%% C-API func: void glGlobalAlphaFactorsSUN(GLshort factor)

globalAlphaFactorsSUN(Factor)
 -> cast
    ( ?glGlobalAlphaFactorsSUN
    , <<Factor:?GLshort
      >>
    )
.

%% Func:       globalAlphaFactoriSUN
%% Args:       Factor
%% Returns:    ok
%% C-API func: void glGlobalAlphaFactoriSUN(GLint factor)

globalAlphaFactoriSUN(Factor)
 -> cast
    ( ?glGlobalAlphaFactoriSUN
    , <<Factor:?GLint
      >>
    )
.

%% Func:       globalAlphaFactorfSUN
%% Args:       Factor
%% Returns:    ok
%% C-API func: void glGlobalAlphaFactorfSUN(GLfloat factor)

globalAlphaFactorfSUN(Factor)
 -> cast
    ( ?glGlobalAlphaFactorfSUN
    , <<Factor:?GLfloat
      >>
    )
.

%% Func:       globalAlphaFactordSUN
%% Args:       Factor
%% Returns:    ok
%% C-API func: void glGlobalAlphaFactordSUN(GLdouble factor)

globalAlphaFactordSUN(Factor)
 -> cast
    ( ?glGlobalAlphaFactordSUN
    , <<Factor:?GLdouble
      >>
    )
.

%% Func:       globalAlphaFactorubSUN
%% Args:       Factor
%% Returns:    ok
%% C-API func: void glGlobalAlphaFactorubSUN(GLubyte factor)

globalAlphaFactorubSUN(Factor)
 -> cast
    ( ?glGlobalAlphaFactorubSUN
    , <<Factor:?GLubyte
      >>
    )
.

%% Func:       globalAlphaFactorusSUN
%% Args:       Factor
%% Returns:    ok
%% C-API func: void glGlobalAlphaFactorusSUN(GLushort factor)

globalAlphaFactorusSUN(Factor)
 -> cast
    ( ?glGlobalAlphaFactorusSUN
    , <<Factor:?GLushort
      >>
    )
.

%% Func:       globalAlphaFactoruiSUN
%% Args:       Factor
%% Returns:    ok
%% C-API func: void glGlobalAlphaFactoruiSUN(GLuint factor)

globalAlphaFactoruiSUN(Factor)
 -> cast
    ( ?glGlobalAlphaFactoruiSUN
    , <<Factor:?GLuint
      >>
    )
.

%% GL_SUN_triangle_list

%% Func:       replacementCodeuiSUN
%% Args:       Code
%% Returns:    ok
%% C-API func: void glReplacementCodeuiSUN(GLuint code)

replacementCodeuiSUN(Code)
 -> cast
    ( ?glReplacementCodeuiSUN
    , <<Code:?GLuint
      >>
    )
.

%% Func:       replacementCodeusSUN
%% Args:       Code
%% Returns:    ok
%% C-API func: void glReplacementCodeusSUN(GLushort code)

replacementCodeusSUN(Code)
 -> cast
    ( ?glReplacementCodeusSUN
    , <<Code:?GLushort
      >>
    )
.

%% Func:       replacementCodeubSUN
%% Args:       Code
%% Returns:    ok
%% C-API func: void glReplacementCodeubSUN(GLubyte code)

replacementCodeubSUN(Code)
 -> cast
    ( ?glReplacementCodeubSUN
    , <<Code:?GLubyte
      >>
    )
.

%% Func:       replacementCodeuivSUN
%% Args:       Code
%% Returns:    ok
%% C-API func: void glReplacementCodeuivSUN(const GLuint* code)

replacementCodeuivSUN(Code)
 -> cast
    ( ?glReplacementCodeuivSUN
    , <<Code:?_PTR
      >>
    )
.

%% Func:       replacementCodeusvSUN
%% Args:       Code
%% Returns:    ok
%% C-API func: void glReplacementCodeusvSUN(const GLushort* code)

replacementCodeusvSUN(Code)
 -> cast
    ( ?glReplacementCodeusvSUN
    , <<Code:?_PTR
      >>
    )
.

%% Func:       replacementCodeubvSUN
%% Args:       Code
%% Returns:    ok
%% C-API func: void glReplacementCodeubvSUN(const GLubyte* code)

replacementCodeubvSUN(Code)
 -> cast
    ( ?glReplacementCodeubvSUN
    , <<Code:?_PTR
      >>
    )
.

%% Func:       replacementCodePointerSUN
%% Args:       Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glReplacementCodePointerSUN(GLenum type, GLsizei stride, const GLvoid** pointer)

replacementCodePointerSUN(Type, Stride, Pointer)
 -> cast
    ( ?glReplacementCodePointerSUN
    , <<Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% GL_SUN_vertex

%% Func:       color4ubVertex2fSUN
%% Args:       R, G, B, A, X, Y
%% Returns:    ok
%% C-API func: void glColor4ubVertex2fSUN(GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y)

color4ubVertex2fSUN(R, G, B, A, X, Y)
 -> cast
    ( ?glColor4ubVertex2fSUN
    , <<R:?GLubyte
      , G:?GLubyte
      , B:?GLubyte
      , A:?GLubyte
      , X:?GLfloat
      , Y:?GLfloat
      >>
    )
.

%% Func:       color4ubVertex2fvSUN
%% Args:       C, V
%% Returns:    ok
%% C-API func: void glColor4ubVertex2fvSUN(const GLubyte* c, const GLfloat* v)

color4ubVertex2fvSUN(C, V)
 -> cast
    ( ?glColor4ubVertex2fvSUN
    , <<C:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       color4ubVertex3fSUN
%% Args:       R, G, B, A, X, Y, Z
%% Returns:    ok
%% C-API func: void glColor4ubVertex3fSUN(GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)

color4ubVertex3fSUN(R, G, B, A, X, Y, Z)
 -> cast
    ( ?glColor4ubVertex3fSUN
    , <<R:?GLubyte
      , G:?GLubyte
      , B:?GLubyte
      , A:?GLubyte
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       color4ubVertex3fvSUN
%% Args:       C, V
%% Returns:    ok
%% C-API func: void glColor4ubVertex3fvSUN(const GLubyte* c, const GLfloat* v)

color4ubVertex3fvSUN(C, V)
 -> cast
    ( ?glColor4ubVertex3fvSUN
    , <<C:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       color3fVertex3fSUN
%% Args:       R, G, B, X, Y, Z
%% Returns:    ok
%% C-API func: void glColor3fVertex3fSUN(GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)

color3fVertex3fSUN(R, G, B, X, Y, Z)
 -> cast
    ( ?glColor3fVertex3fSUN
    , <<R:?GLfloat
      , G:?GLfloat
      , B:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       color3fVertex3fvSUN
%% Args:       C, V
%% Returns:    ok
%% C-API func: void glColor3fVertex3fvSUN(const GLfloat* c, const GLfloat* v)

color3fVertex3fvSUN(C, V)
 -> cast
    ( ?glColor3fVertex3fvSUN
    , <<C:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       normal3fVertex3fSUN
%% Args:       Nx, Ny, Nz, X, Y, Z
%% Returns:    ok
%% C-API func: void glNormal3fVertex3fSUN(GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

normal3fVertex3fSUN(Nx, Ny, Nz, X, Y, Z)
 -> cast
    ( ?glNormal3fVertex3fSUN
    , <<Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       normal3fVertex3fvSUN
%% Args:       N, V
%% Returns:    ok
%% C-API func: void glNormal3fVertex3fvSUN(const GLfloat* n, const GLfloat* v)

normal3fVertex3fvSUN(N, V)
 -> cast
    ( ?glNormal3fVertex3fvSUN
    , <<N:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       color4fNormal3fVertex3fSUN
%% Args:       R, G, B, A, Nx, Ny, Nz, X, Y, Z
%% Returns:    ok
%% C-API func: void glColor4fNormal3fVertex3fSUN(GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

color4fNormal3fVertex3fSUN(R, G, B, A, Nx, Ny, Nz, X, Y, Z)
 -> cast
    ( ?glColor4fNormal3fVertex3fSUN
    , <<R:?GLfloat
      , G:?GLfloat
      , B:?GLfloat
      , A:?GLfloat
      , Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       color4fNormal3fVertex3fvSUN
%% Args:       C, N, V
%% Returns:    ok
%% C-API func: void glColor4fNormal3fVertex3fvSUN(const GLfloat* c, const GLfloat* n, const GLfloat* v)

color4fNormal3fVertex3fvSUN(C, N, V)
 -> cast
    ( ?glColor4fNormal3fVertex3fvSUN
    , <<C:?_PTR
      , N:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       texCoord2fVertex3fSUN
%% Args:       S, T, X, Y, Z
%% Returns:    ok
%% C-API func: void glTexCoord2fVertex3fSUN(GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z)

texCoord2fVertex3fSUN(S, T, X, Y, Z)
 -> cast
    ( ?glTexCoord2fVertex3fSUN
    , <<S:?GLfloat
      , T:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       texCoord2fVertex3fvSUN
%% Args:       Tc, V
%% Returns:    ok
%% C-API func: void glTexCoord2fVertex3fvSUN(const GLfloat* tc, const GLfloat* v)

texCoord2fVertex3fvSUN(Tc, V)
 -> cast
    ( ?glTexCoord2fVertex3fvSUN
    , <<Tc:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       texCoord4fVertex4fSUN
%% Args:       S, T, P, Q, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glTexCoord4fVertex4fSUN(GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

texCoord4fVertex4fSUN(S, T, P, Q, X, Y, Z, W)
 -> cast
    ( ?glTexCoord4fVertex4fSUN
    , <<S:?GLfloat
      , T:?GLfloat
      , P:?GLfloat
      , Q:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       texCoord4fVertex4fvSUN
%% Args:       Tc, V
%% Returns:    ok
%% C-API func: void glTexCoord4fVertex4fvSUN(const GLfloat* tc, const GLfloat* v)

texCoord4fVertex4fvSUN(Tc, V)
 -> cast
    ( ?glTexCoord4fVertex4fvSUN
    , <<Tc:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       texCoord2fColor4ubVertex3fSUN
%% Args:       S, T, R, G, B, A, X, Y, Z
%% Returns:    ok
%% C-API func: void glTexCoord2fColor4ubVertex3fSUN(GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)

texCoord2fColor4ubVertex3fSUN(S, T, R, G, B, A, X, Y, Z)
 -> cast
    ( ?glTexCoord2fColor4ubVertex3fSUN
    , <<S:?GLfloat
      , T:?GLfloat
      , R:?GLubyte
      , G:?GLubyte
      , B:?GLubyte
      , A:?GLubyte
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       texCoord2fColor4ubVertex3fvSUN
%% Args:       Tc, C, V
%% Returns:    ok
%% C-API func: void glTexCoord2fColor4ubVertex3fvSUN(const GLfloat* tc, const GLubyte* c, const GLfloat* v)

texCoord2fColor4ubVertex3fvSUN(Tc, C, V)
 -> cast
    ( ?glTexCoord2fColor4ubVertex3fvSUN
    , <<Tc:?_PTR
      , C:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       texCoord2fColor3fVertex3fSUN
%% Args:       S, T, R, G, B, X, Y, Z
%% Returns:    ok
%% C-API func: void glTexCoord2fColor3fVertex3fSUN(GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)

texCoord2fColor3fVertex3fSUN(S, T, R, G, B, X, Y, Z)
 -> cast
    ( ?glTexCoord2fColor3fVertex3fSUN
    , <<S:?GLfloat
      , T:?GLfloat
      , R:?GLfloat
      , G:?GLfloat
      , B:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       texCoord2fColor3fVertex3fvSUN
%% Args:       Tc, C, V
%% Returns:    ok
%% C-API func: void glTexCoord2fColor3fVertex3fvSUN(const GLfloat* tc, const GLfloat* c, const GLfloat* v)

texCoord2fColor3fVertex3fvSUN(Tc, C, V)
 -> cast
    ( ?glTexCoord2fColor3fVertex3fvSUN
    , <<Tc:?_PTR
      , C:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       texCoord2fNormal3fVertex3fSUN
%% Args:       S, T, Nx, Ny, Nz, X, Y, Z
%% Returns:    ok
%% C-API func: void glTexCoord2fNormal3fVertex3fSUN(GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

texCoord2fNormal3fVertex3fSUN(S, T, Nx, Ny, Nz, X, Y, Z)
 -> cast
    ( ?glTexCoord2fNormal3fVertex3fSUN
    , <<S:?GLfloat
      , T:?GLfloat
      , Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       texCoord2fNormal3fVertex3fvSUN
%% Args:       Tc, N, V
%% Returns:    ok
%% C-API func: void glTexCoord2fNormal3fVertex3fvSUN(const GLfloat* tc, const GLfloat* n, const GLfloat* v)

texCoord2fNormal3fVertex3fvSUN(Tc, N, V)
 -> cast
    ( ?glTexCoord2fNormal3fVertex3fvSUN
    , <<Tc:?_PTR
      , N:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       texCoord2fColor4fNormal3fVertex3fSUN
%% Args:       S, T, R, G, B, A, Nx, Ny, Nz, X, Y, Z
%% Returns:    ok
%% C-API func: void glTexCoord2fColor4fNormal3fVertex3fSUN(GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

texCoord2fColor4fNormal3fVertex3fSUN(S, T, R, G, B, A, Nx, Ny, Nz, X, Y, Z)
 -> cast
    ( ?glTexCoord2fColor4fNormal3fVertex3fSUN
    , <<S:?GLfloat
      , T:?GLfloat
      , R:?GLfloat
      , G:?GLfloat
      , B:?GLfloat
      , A:?GLfloat
      , Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       texCoord2fColor4fNormal3fVertex3fvSUN
%% Args:       Tc, C, N, V
%% Returns:    ok
%% C-API func: void glTexCoord2fColor4fNormal3fVertex3fvSUN(const GLfloat* tc, const GLfloat* c, const GLfloat* n, const GLfloat* v)

texCoord2fColor4fNormal3fVertex3fvSUN(Tc, C, N, V)
 -> cast
    ( ?glTexCoord2fColor4fNormal3fVertex3fvSUN
    , <<Tc:?_PTR
      , C:?_PTR
      , N:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       texCoord4fColor4fNormal3fVertex4fSUN
%% Args:       S, T, P, Q, R, G, B, A, Nx, Ny, Nz, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glTexCoord4fColor4fNormal3fVertex4fSUN(GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

texCoord4fColor4fNormal3fVertex4fSUN(S, T, P, Q, R, G, B, A, Nx, Ny, Nz, X, Y, Z, W)
 -> cast
    ( ?glTexCoord4fColor4fNormal3fVertex4fSUN
    , <<S:?GLfloat
      , T:?GLfloat
      , P:?GLfloat
      , Q:?GLfloat
      , R:?GLfloat
      , G:?GLfloat
      , B:?GLfloat
      , A:?GLfloat
      , Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       texCoord4fColor4fNormal3fVertex4fvSUN
%% Args:       Tc, C, N, V
%% Returns:    ok
%% C-API func: void glTexCoord4fColor4fNormal3fVertex4fvSUN(const GLfloat* tc, const GLfloat* c, const GLfloat* n, const GLfloat* v)

texCoord4fColor4fNormal3fVertex4fvSUN(Tc, C, N, V)
 -> cast
    ( ?glTexCoord4fColor4fNormal3fVertex4fvSUN
    , <<Tc:?_PTR
      , C:?_PTR
      , N:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       replacementCodeuiVertex3fSUN
%% Args:       Rc, X, Y, Z
%% Returns:    ok
%% C-API func: void glReplacementCodeuiVertex3fSUN(GLuint rc, GLfloat x, GLfloat y, GLfloat z)

replacementCodeuiVertex3fSUN(Rc, X, Y, Z)
 -> cast
    ( ?glReplacementCodeuiVertex3fSUN
    , <<Rc:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       replacementCodeuiVertex3fvSUN
%% Args:       Rc, V
%% Returns:    ok
%% C-API func: void glReplacementCodeuiVertex3fvSUN(const GLuint* rc, const GLfloat* v)

replacementCodeuiVertex3fvSUN(Rc, V)
 -> cast
    ( ?glReplacementCodeuiVertex3fvSUN
    , <<Rc:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       replacementCodeuiColor4ubVertex3fSUN
%% Args:       Rc, R, G, B, A, X, Y, Z
%% Returns:    ok
%% C-API func: void glReplacementCodeuiColor4ubVertex3fSUN(GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)

replacementCodeuiColor4ubVertex3fSUN(Rc, R, G, B, A, X, Y, Z)
 -> cast
    ( ?glReplacementCodeuiColor4ubVertex3fSUN
    , <<Rc:?GLuint
      , R:?GLubyte
      , G:?GLubyte
      , B:?GLubyte
      , A:?GLubyte
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       replacementCodeuiColor4ubVertex3fvSUN
%% Args:       Rc, C, V
%% Returns:    ok
%% C-API func: void glReplacementCodeuiColor4ubVertex3fvSUN(const GLuint* rc, const GLubyte* c, const GLfloat* v)

replacementCodeuiColor4ubVertex3fvSUN(Rc, C, V)
 -> cast
    ( ?glReplacementCodeuiColor4ubVertex3fvSUN
    , <<Rc:?_PTR
      , C:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       replacementCodeuiColor3fVertex3fSUN
%% Args:       Rc, R, G, B, X, Y, Z
%% Returns:    ok
%% C-API func: void glReplacementCodeuiColor3fVertex3fSUN(GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)

replacementCodeuiColor3fVertex3fSUN(Rc, R, G, B, X, Y, Z)
 -> cast
    ( ?glReplacementCodeuiColor3fVertex3fSUN
    , <<Rc:?GLuint
      , R:?GLfloat
      , G:?GLfloat
      , B:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       replacementCodeuiColor3fVertex3fvSUN
%% Args:       Rc, C, V
%% Returns:    ok
%% C-API func: void glReplacementCodeuiColor3fVertex3fvSUN(const GLuint* rc, const GLfloat* c, const GLfloat* v)

replacementCodeuiColor3fVertex3fvSUN(Rc, C, V)
 -> cast
    ( ?glReplacementCodeuiColor3fVertex3fvSUN
    , <<Rc:?_PTR
      , C:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       replacementCodeuiNormal3fVertex3fSUN
%% Args:       Rc, Nx, Ny, Nz, X, Y, Z
%% Returns:    ok
%% C-API func: void glReplacementCodeuiNormal3fVertex3fSUN(GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

replacementCodeuiNormal3fVertex3fSUN(Rc, Nx, Ny, Nz, X, Y, Z)
 -> cast
    ( ?glReplacementCodeuiNormal3fVertex3fSUN
    , <<Rc:?GLuint
      , Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       replacementCodeuiNormal3fVertex3fvSUN
%% Args:       Rc, N, V
%% Returns:    ok
%% C-API func: void glReplacementCodeuiNormal3fVertex3fvSUN(const GLuint* rc, const GLfloat* n, const GLfloat* v)

replacementCodeuiNormal3fVertex3fvSUN(Rc, N, V)
 -> cast
    ( ?glReplacementCodeuiNormal3fVertex3fvSUN
    , <<Rc:?_PTR
      , N:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       replacementCodeuiColor4fNormal3fVertex3fSUN
%% Args:       Rc, R, G, B, A, Nx, Ny, Nz, X, Y, Z
%% Returns:    ok
%% C-API func: void glReplacementCodeuiColor4fNormal3fVertex3fSUN(GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

replacementCodeuiColor4fNormal3fVertex3fSUN(Rc, R, G, B, A, Nx, Ny, Nz, X, Y, Z)
 -> cast
    ( ?glReplacementCodeuiColor4fNormal3fVertex3fSUN
    , <<Rc:?GLuint
      , R:?GLfloat
      , G:?GLfloat
      , B:?GLfloat
      , A:?GLfloat
      , Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       replacementCodeuiColor4fNormal3fVertex3fvSUN
%% Args:       Rc, C, N, V
%% Returns:    ok
%% C-API func: void glReplacementCodeuiColor4fNormal3fVertex3fvSUN(const GLuint* rc, const GLfloat* c, const GLfloat* n, const GLfloat* v)

replacementCodeuiColor4fNormal3fVertex3fvSUN(Rc, C, N, V)
 -> cast
    ( ?glReplacementCodeuiColor4fNormal3fVertex3fvSUN
    , <<Rc:?_PTR
      , C:?_PTR
      , N:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       replacementCodeuiTexCoord2fVertex3fSUN
%% Args:       Rc, S, T, X, Y, Z
%% Returns:    ok
%% C-API func: void glReplacementCodeuiTexCoord2fVertex3fSUN(GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z)

replacementCodeuiTexCoord2fVertex3fSUN(Rc, S, T, X, Y, Z)
 -> cast
    ( ?glReplacementCodeuiTexCoord2fVertex3fSUN
    , <<Rc:?GLuint
      , S:?GLfloat
      , T:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       replacementCodeuiTexCoord2fVertex3fvSUN
%% Args:       Rc, Tc, V
%% Returns:    ok
%% C-API func: void glReplacementCodeuiTexCoord2fVertex3fvSUN(const GLuint* rc, const GLfloat* tc, const GLfloat* v)

replacementCodeuiTexCoord2fVertex3fvSUN(Rc, Tc, V)
 -> cast
    ( ?glReplacementCodeuiTexCoord2fVertex3fvSUN
    , <<Rc:?_PTR
      , Tc:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       replacementCodeuiTexCoord2fNormal3fVertex3fSUN
%% Args:       Rc, S, T, Nx, Ny, Nz, X, Y, Z
%% Returns:    ok
%% C-API func: void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

replacementCodeuiTexCoord2fNormal3fVertex3fSUN(Rc, S, T, Nx, Ny, Nz, X, Y, Z)
 -> cast
    ( ?glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN
    , <<Rc:?GLuint
      , S:?GLfloat
      , T:?GLfloat
      , Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       replacementCodeuiTexCoord2fNormal3fVertex3fvSUN
%% Args:       Rc, Tc, N, V
%% Returns:    ok
%% C-API func: void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN(const GLuint* rc, const GLfloat* tc, const GLfloat* n, const GLfloat* v)

replacementCodeuiTexCoord2fNormal3fVertex3fvSUN(Rc, Tc, N, V)
 -> cast
    ( ?glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN
    , <<Rc:?_PTR
      , Tc:?_PTR
      , N:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       replacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN
%% Args:       Rc, S, T, R, G, B, A, Nx, Ny, Nz, X, Y, Z
%% Returns:    ok
%% C-API func: void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

replacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(Rc, S, T, R, G, B, A, Nx, Ny, Nz, X, Y, Z)
 -> cast
    ( ?glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN
    , <<Rc:?GLuint
      , S:?GLfloat
      , T:?GLfloat
      , R:?GLfloat
      , G:?GLfloat
      , B:?GLfloat
      , A:?GLfloat
      , Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       replacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN
%% Args:       Rc, Tc, C, N, V
%% Returns:    ok
%% C-API func: void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(const GLuint* rc, const GLfloat* tc, const GLfloat* c, const GLfloat* n, const GLfloat* v)

replacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(Rc, Tc, C, N, V)
 -> cast
    ( ?glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN
    , <<Rc:?_PTR
      , Tc:?_PTR
      , C:?_PTR
      , N:?_PTR
      , V:?_PTR
      >>
    )
.

%% GL_EXT_blend_func_separate

%% Func:       blendFuncSeparateEXT
%% Args:       SfactorRGB, DfactorRGB, SfactorAlpha, DfactorAlpha
%% Returns:    ok
%% C-API func: void glBlendFuncSeparateEXT(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)

blendFuncSeparateEXT(SfactorRGB, DfactorRGB, SfactorAlpha, DfactorAlpha)
 -> cast
    ( ?glBlendFuncSeparateEXT
    , <<SfactorRGB:?GLenum
      , DfactorRGB:?GLenum
      , SfactorAlpha:?GLenum
      , DfactorAlpha:?GLenum
      >>
    )
.

%% GL_INGR_blend_func_separate

%% Func:       blendFuncSeparateINGR
%% Args:       SfactorRGB, DfactorRGB, SfactorAlpha, DfactorAlpha
%% Returns:    ok
%% C-API func: void glBlendFuncSeparateINGR(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)

blendFuncSeparateINGR(SfactorRGB, DfactorRGB, SfactorAlpha, DfactorAlpha)
 -> cast
    ( ?glBlendFuncSeparateINGR
    , <<SfactorRGB:?GLenum
      , DfactorRGB:?GLenum
      , SfactorAlpha:?GLenum
      , DfactorAlpha:?GLenum
      >>
    )
.

%% GL_INGR_color_clamp
%% GL_INGR_interlace_read
%% GL_EXT_stencil_wrap
%% GL_EXT_422_pixels
%% GL_NV_texgen_reflection
%% GL_SUN_convolution_border_modes
%% GL_EXT_texture_env_add
%% GL_EXT_texture_lod_bias
%% GL_EXT_texture_filter_anisotropic
%% GL_EXT_vertex_weighting

%% Func:       vertexWeightfEXT
%% Args:       Weight
%% Returns:    ok
%% C-API func: void glVertexWeightfEXT(GLfloat weight)

vertexWeightfEXT(Weight)
 -> cast
    ( ?glVertexWeightfEXT
    , <<Weight:?GLfloat
      >>
    )
.

%% Func:       vertexWeightfvEXT
%% Args:       Weight
%% Returns:    ok
%% C-API func: void glVertexWeightfvEXT(const GLfloat* weight)

vertexWeightfvEXT(Weight)
 -> cast
    ( ?glVertexWeightfvEXT
    , <<Weight:?_PTR
      >>
    )
.

%% Func:       vertexWeightPointerEXT
%% Args:       Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glVertexWeightPointerEXT(GLsizei size, GLenum type, GLsizei stride, const GLvoid* pointer)

vertexWeightPointerEXT(Size, Type, Stride, Pointer)
 -> cast
    ( ?glVertexWeightPointerEXT
    , <<Size:?GLsizei
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% GL_NV_light_max_exponent
%% GL_NV_vertex_array_range

%% Func:       flushVertexArrayRangeNV
%% Args:       
%% Returns:    ok
%% C-API func: void glFlushVertexArrayRangeNV()

flushVertexArrayRangeNV()
 -> cast
    ( ?glFlushVertexArrayRangeNV
    , <<
      >>
    )
.

%% Func:       vertexArrayRangeNV
%% Args:       Length, Pointer
%% Returns:    ok
%% C-API func: void glVertexArrayRangeNV(GLsizei length, const GLvoid* pointer)

vertexArrayRangeNV(Length, Pointer)
 -> cast
    ( ?glVertexArrayRangeNV
    , <<Length:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% GL_NV_register_combiners

%% Func:       combinerParameterfvNV
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glCombinerParameterfvNV(GLenum pname, const GLfloat* params)

combinerParameterfvNV(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glCombinerParameterfvNV
    , [ <<Pname:?GLenum
      >>
      , NewParams
      ]
    )
.

%% Func:       combinerParameterfNV
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glCombinerParameterfNV(GLenum pname, GLfloat param)

combinerParameterfNV(Pname, Param)
 -> cast
    ( ?glCombinerParameterfNV
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       combinerParameterivNV
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glCombinerParameterivNV(GLenum pname, const GLint* params)

combinerParameterivNV(Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glCombinerParameterivNV
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       combinerParameteriNV
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glCombinerParameteriNV(GLenum pname, GLint param)

combinerParameteriNV(Pname, Param)
 -> cast
    ( ?glCombinerParameteriNV
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       combinerInputNV
%% Args:       Stage, Portion, Variable, Input, Mapping, ComponentUsage
%% Returns:    ok
%% C-API func: void glCombinerInputNV(GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage)

combinerInputNV(Stage, Portion, Variable, Input, Mapping, ComponentUsage)
 -> cast
    ( ?glCombinerInputNV
    , <<Stage:?GLenum
      , Portion:?GLenum
      , Variable:?GLenum
      , Input:?GLenum
      , Mapping:?GLenum
      , ComponentUsage:?GLenum
      >>
    )
.

%% Func:       combinerOutputNV
%% Args:       Stage, Portion, AbOutput, CdOutput, SumOutput, Scale, Bias, AbDotProduct, CdDotProduct, MuxSum
%% Returns:    ok
%% C-API func: void glCombinerOutputNV(GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum)

combinerOutputNV(Stage, Portion, AbOutput, CdOutput, SumOutput, Scale, Bias, AbDotProduct, CdDotProduct, MuxSum)
 -> cast
    ( ?glCombinerOutputNV
    , <<Stage:?GLenum
      , Portion:?GLenum
      , AbOutput:?GLenum
      , CdOutput:?GLenum
      , SumOutput:?GLenum
      , Scale:?GLenum
      , Bias:?GLenum
      , AbDotProduct:?GLboolean
      , CdDotProduct:?GLboolean
      , MuxSum:?GLboolean
      >>
    )
.

%% Func:       finalCombinerInputNV
%% Args:       Variable, Input, Mapping, ComponentUsage
%% Returns:    ok
%% C-API func: void glFinalCombinerInputNV(GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage)

finalCombinerInputNV(Variable, Input, Mapping, ComponentUsage)
 -> cast
    ( ?glFinalCombinerInputNV
    , <<Variable:?GLenum
      , Input:?GLenum
      , Mapping:?GLenum
      , ComponentUsage:?GLenum
      >>
    )
.

%% Func:       getCombinerInputParameterfvNV
%% Args:       Stage, Portion, Variable, Pname
%% Returns:    [Params]
%% C-API func: void glGetCombinerInputParameterfvNV(GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat* params)

getCombinerInputParameterfvNV(Stage, Portion, Variable, Pname, Params)
 -> Bin
    = call
    ( ?glGetCombinerInputParameterfvNV
    , <<Stage:?GLenum
      , Portion:?GLenum
      , Variable:?GLenum
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

%% Func:       getCombinerInputParameterivNV
%% Args:       Stage, Portion, Variable, Pname
%% Returns:    [Params]
%% C-API func: void glGetCombinerInputParameterivNV(GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint* params)

getCombinerInputParameterivNV(Stage, Portion, Variable, Pname, Params)
 -> Bin
    = call
      ( ?glGetCombinerInputParameterivNV
      , <<Stage:?GLenum
        , Portion:?GLenum
        , Variable:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetCombinerInputParameterivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getCombinerOutputParameterfvNV
%% Args:       Stage, Portion, Pname
%% Returns:    [Params]
%% C-API func: void glGetCombinerOutputParameterfvNV(GLenum stage, GLenum portion, GLenum pname, GLfloat* params)

getCombinerOutputParameterfvNV(Stage, Portion, Pname, Params)
 -> Bin
    = call
    ( ?glGetCombinerOutputParameterfvNV
    , <<Stage:?GLenum
      , Portion:?GLenum
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

%% Func:       getCombinerOutputParameterivNV
%% Args:       Stage, Portion, Pname
%% Returns:    [Params]
%% C-API func: void glGetCombinerOutputParameterivNV(GLenum stage, GLenum portion, GLenum pname, GLint* params)

getCombinerOutputParameterivNV(Stage, Portion, Pname, Params)
 -> Bin
    = call
      ( ?glGetCombinerOutputParameterivNV
      , <<Stage:?GLenum
        , Portion:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetCombinerOutputParameterivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getFinalCombinerInputParameterfvNV
%% Args:       Variable, Pname
%% Returns:    [Params]
%% C-API func: void glGetFinalCombinerInputParameterfvNV(GLenum variable, GLenum pname, GLfloat* params)

getFinalCombinerInputParameterfvNV(Variable, Pname, Params)
 -> Bin
    = call
    ( ?glGetFinalCombinerInputParameterfvNV
    , <<Variable:?GLenum
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

%% Func:       getFinalCombinerInputParameterivNV
%% Args:       Variable, Pname
%% Returns:    [Params]
%% C-API func: void glGetFinalCombinerInputParameterivNV(GLenum variable, GLenum pname, GLint* params)

getFinalCombinerInputParameterivNV(Variable, Pname, Params)
 -> Bin
    = call
      ( ?glGetFinalCombinerInputParameterivNV
      , <<Variable:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetFinalCombinerInputParameterivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% GL_NV_fog_distance
%% GL_NV_texgen_emboss
%% GL_NV_blend_square
%% GL_NV_texture_env_combine4
%% GL_MESA_resize_buffers

%% Func:       resizeBuffersMESA
%% Args:       
%% Returns:    ok
%% C-API func: void glResizeBuffersMESA()

resizeBuffersMESA()
 -> cast
    ( ?glResizeBuffersMESA
    , <<
      >>
    )
.

%% GL_MESA_window_pos

%% Func:       windowPos2dMESA
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2dMESA(GLdouble x, GLdouble y)

windowPos2dMESA(X, Y)
 -> cast
    ( ?glWindowPos2dMESA
    , <<X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       windowPos2dvMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2dvMESA(const GLdouble* v)

windowPos2dvMESA(V)
 -> cast
    ( ?glWindowPos2dvMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos2fMESA
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2fMESA(GLfloat x, GLfloat y)

windowPos2fMESA(X, Y)
 -> cast
    ( ?glWindowPos2fMESA
    , <<X:?GLfloat
      , Y:?GLfloat
      >>
    )
.

%% Func:       windowPos2fvMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2fvMESA(const GLfloat* v)

windowPos2fvMESA(V)
 -> cast
    ( ?glWindowPos2fvMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos2iMESA
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2iMESA(GLint x, GLint y)

windowPos2iMESA(X, Y)
 -> cast
    ( ?glWindowPos2iMESA
    , <<X:?GLint
      , Y:?GLint
      >>
    )
.

%% Func:       windowPos2ivMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2ivMESA(const GLint* v)

windowPos2ivMESA(V)
 -> cast
    ( ?glWindowPos2ivMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos2sMESA
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glWindowPos2sMESA(GLshort x, GLshort y)

windowPos2sMESA(X, Y)
 -> cast
    ( ?glWindowPos2sMESA
    , <<X:?GLshort
      , Y:?GLshort
      >>
    )
.

%% Func:       windowPos2svMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos2svMESA(const GLshort* v)

windowPos2svMESA(V)
 -> cast
    ( ?glWindowPos2svMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3dMESA
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3dMESA(GLdouble x, GLdouble y, GLdouble z)

windowPos3dMESA(X, Y, Z)
 -> cast
    ( ?glWindowPos3dMESA
    , <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       windowPos3dvMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3dvMESA(const GLdouble* v)

windowPos3dvMESA(V)
 -> cast
    ( ?glWindowPos3dvMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3fMESA
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3fMESA(GLfloat x, GLfloat y, GLfloat z)

windowPos3fMESA(X, Y, Z)
 -> cast
    ( ?glWindowPos3fMESA
    , <<X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       windowPos3fvMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3fvMESA(const GLfloat* v)

windowPos3fvMESA(V)
 -> cast
    ( ?glWindowPos3fvMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3iMESA
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3iMESA(GLint x, GLint y, GLint z)

windowPos3iMESA(X, Y, Z)
 -> cast
    ( ?glWindowPos3iMESA
    , <<X:?GLint
      , Y:?GLint
      , Z:?GLint
      >>
    )
.

%% Func:       windowPos3ivMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3ivMESA(const GLint* v)

windowPos3ivMESA(V)
 -> cast
    ( ?glWindowPos3ivMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos3sMESA
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glWindowPos3sMESA(GLshort x, GLshort y, GLshort z)

windowPos3sMESA(X, Y, Z)
 -> cast
    ( ?glWindowPos3sMESA
    , <<X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      >>
    )
.

%% Func:       windowPos3svMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos3svMESA(const GLshort* v)

windowPos3svMESA(V)
 -> cast
    ( ?glWindowPos3svMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos4dMESA
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glWindowPos4dMESA(GLdouble x, GLdouble y, GLdouble z, GLdouble w)

windowPos4dMESA(X, Y, Z, W)
 -> cast
    ( ?glWindowPos4dMESA
    , <<X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       windowPos4dvMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos4dvMESA(const GLdouble* v)

windowPos4dvMESA(V)
 -> cast
    ( ?glWindowPos4dvMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos4fMESA
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glWindowPos4fMESA(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

windowPos4fMESA(X, Y, Z, W)
 -> cast
    ( ?glWindowPos4fMESA
    , <<X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       windowPos4fvMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos4fvMESA(const GLfloat* v)

windowPos4fvMESA(V)
 -> cast
    ( ?glWindowPos4fvMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos4iMESA
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glWindowPos4iMESA(GLint x, GLint y, GLint z, GLint w)

windowPos4iMESA(X, Y, Z, W)
 -> cast
    ( ?glWindowPos4iMESA
    , <<X:?GLint
      , Y:?GLint
      , Z:?GLint
      , W:?GLint
      >>
    )
.

%% Func:       windowPos4ivMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos4ivMESA(const GLint* v)

windowPos4ivMESA(V)
 -> cast
    ( ?glWindowPos4ivMESA
    , <<V:?_PTR
      >>
    )
.

%% Func:       windowPos4sMESA
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glWindowPos4sMESA(GLshort x, GLshort y, GLshort z, GLshort w)

windowPos4sMESA(X, Y, Z, W)
 -> cast
    ( ?glWindowPos4sMESA
    , <<X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      , W:?GLshort
      >>
    )
.

%% Func:       windowPos4svMESA
%% Args:       V
%% Returns:    ok
%% C-API func: void glWindowPos4svMESA(const GLshort* v)

windowPos4svMESA(V)
 -> cast
    ( ?glWindowPos4svMESA
    , <<V:?_PTR
      >>
    )
.

%% GL_IBM_cull_vertex
%% GL_IBM_multimode_draw_arrays

%% Func:       multiModeDrawArraysIBM
%% Args:       * Mode, First, Count, Primcount, Modestride
%% Returns:    ok
%% C-API func: void glMultiModeDrawArraysIBM(const GLenum* mode, const GLint* first, const GLsizei* count, GLsizei primcount, GLint modestride)

multiModeDrawArraysIBM(Mode, First, Count, Primcount, Modestride)
 -> cast
    ( ?glMultiModeDrawArraysIBM
    , <<Mode:?_PTR
      , First:?_PTR
      , Count:?_PTR
      , Primcount:?GLsizei
      , Modestride:?GLint
      >>
    )
.

%% Func:       multiModeDrawElementsIBM
%% Args:       Mode, Count, Type, Indices, Primcount, Modestride
%% Returns:    ok
%% C-API func: void glMultiModeDrawElementsIBM(const GLenum* mode, const GLsizei* count, GLenum type, const GLvoid* const* indices, GLsizei primcount, GLint modestride)

multiModeDrawElementsIBM(Mode, Count, Type, Indices, Primcount, Modestride)
 -> cast
    ( ?glMultiModeDrawElementsIBM
    , <<Mode:?_PTR
      , Count:?_PTR
      , Type:?GLenum
      , Indices:?_PTR
      , Primcount:?GLsizei
      , Modestride:?GLint
      >>
    )
.

%% GL_IBM_vertex_array_lists

%% Func:       colorPointerListIBM
%% Args:       Size, Type, Stride, Pointer, Ptrstride
%% Returns:    ok
%% C-API func: void glColorPointerListIBM(GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride)

colorPointerListIBM(Size, Type, Stride, Pointer, Ptrstride)
 -> cast
    ( ?glColorPointerListIBM
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLint
      , Pointer:?_PTR
      , Ptrstride:?GLint
      >>
    )
.

%% Func:       secondaryColorPointerListIBM
%% Args:       Size, Type, Stride, Pointer, Ptrstride
%% Returns:    ok
%% C-API func: void glSecondaryColorPointerListIBM(GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride)

secondaryColorPointerListIBM(Size, Type, Stride, Pointer, Ptrstride)
 -> cast
    ( ?glSecondaryColorPointerListIBM
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLint
      , Pointer:?_PTR
      , Ptrstride:?GLint
      >>
    )
.

%% Func:       edgeFlagPointerListIBM
%% Args:       Stride, Pointer, Ptrstride
%% Returns:    ok
%% C-API func: void glEdgeFlagPointerListIBM(GLint stride, const GLboolean** pointer, GLint ptrstride)

edgeFlagPointerListIBM(Stride, Pointer, Ptrstride)
 -> cast
    ( ?glEdgeFlagPointerListIBM
    , <<Stride:?GLint
      , Pointer:?_PTR
      , Ptrstride:?GLint
      >>
    )
.

%% Func:       fogCoordPointerListIBM
%% Args:       Type, Stride, Pointer, Ptrstride
%% Returns:    ok
%% C-API func: void glFogCoordPointerListIBM(GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride)

fogCoordPointerListIBM(Type, Stride, Pointer, Ptrstride)
 -> cast
    ( ?glFogCoordPointerListIBM
    , <<Type:?GLenum
      , Stride:?GLint
      , Pointer:?_PTR
      , Ptrstride:?GLint
      >>
    )
.

%% Func:       indexPointerListIBM
%% Args:       Type, Stride, Pointer, Ptrstride
%% Returns:    ok
%% C-API func: void glIndexPointerListIBM(GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride)

indexPointerListIBM(Type, Stride, Pointer, Ptrstride)
 -> cast
    ( ?glIndexPointerListIBM
    , <<Type:?GLenum
      , Stride:?GLint
      , Pointer:?_PTR
      , Ptrstride:?GLint
      >>
    )
.

%% Func:       normalPointerListIBM
%% Args:       Type, Stride, Pointer, Ptrstride
%% Returns:    ok
%% C-API func: void glNormalPointerListIBM(GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride)

normalPointerListIBM(Type, Stride, Pointer, Ptrstride)
 -> cast
    ( ?glNormalPointerListIBM
    , <<Type:?GLenum
      , Stride:?GLint
      , Pointer:?_PTR
      , Ptrstride:?GLint
      >>
    )
.

%% Func:       texCoordPointerListIBM
%% Args:       Size, Type, Stride, Pointer, Ptrstride
%% Returns:    ok
%% C-API func: void glTexCoordPointerListIBM(GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride)

texCoordPointerListIBM(Size, Type, Stride, Pointer, Ptrstride)
 -> cast
    ( ?glTexCoordPointerListIBM
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLint
      , Pointer:?_PTR
      , Ptrstride:?GLint
      >>
    )
.

%% Func:       vertexPointerListIBM
%% Args:       Size, Type, Stride, Pointer, Ptrstride
%% Returns:    ok
%% C-API func: void glVertexPointerListIBM(GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride)

vertexPointerListIBM(Size, Type, Stride, Pointer, Ptrstride)
 -> cast
    ( ?glVertexPointerListIBM
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLint
      , Pointer:?_PTR
      , Ptrstride:?GLint
      >>
    )
.

%% GL_SGIX_subsample
%% GL_SGIX_ycrcba
%% GL_SGIX_ycrcb_subsample
%% GL_SGIX_depth_pass_instrument
%% GL_3DFX_texture_compression_FXT1
%% GL_3DFX_multisample
%% GL_3DFX_tbuffer

%% Func:       tbufferMask3DFX
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glTbufferMask3DFX(GLuint mask)

tbufferMask3DFX(Mask)
 -> cast
    ( ?glTbufferMask3DFX
    , <<Mask:?GLuint
      >>
    )
.

%% GL_EXT_multisample

%% Func:       sampleMaskEXT
%% Args:       Value, Invert
%% Returns:    ok
%% C-API func: void glSampleMaskEXT(GLclampf value, GLboolean invert)

sampleMaskEXT(Value, Invert)
 -> cast
    ( ?glSampleMaskEXT
    , <<Value:?GLclampf
      , Invert:?GLboolean
      >>
    )
.

%% Func:       samplePatternEXT
%% Args:       Pattern
%% Returns:    ok
%% C-API func: void glSamplePatternEXT(GLenum pattern)

samplePatternEXT(Pattern)
 -> cast
    ( ?glSamplePatternEXT
    , <<Pattern:?GLenum
      >>
    )
.

%% GL_SGIX_vertex_preclip
%% GL_SGIX_convolution_accuracy
%% GL_SGIX_resample
%% GL_SGIS_point_line_texgen
%% GL_SGIS_texture_color_mask

%% Func:       textureColorMaskSGIS
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glTextureColorMaskSGIS(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)

textureColorMaskSGIS(Red, Green, Blue, Alpha)
 -> cast
    ( ?glTextureColorMaskSGIS
    , <<Red:?GLboolean
      , Green:?GLboolean
      , Blue:?GLboolean
      , Alpha:?GLboolean
      >>
    )
.

%% GL_SGIX_igloo_interface

%% Func:       iglooInterfaceSGIX
%% Args:       Pname, Params
%% Returns:    ok
%% C-API func: void glIglooInterfaceSGIX(GLenum pname, const GLvoid* params)

iglooInterfaceSGIX(Pname, Params)
 -> cast
    ( ?glIglooInterfaceSGIX
    , <<Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% GL_EXT_texture_env_dot3
%% GL_ATI_texture_mirror_once
%% GL_NV_fence

%% Func:       deleteFencesNV
%% Args:       N, Fences
%% Returns:    ok
%% C-API func: void glDeleteFencesNV(GLsizei n, const GLuint* fences)

deleteFencesNV(N, Fences)
 -> cast
    ( ?glDeleteFencesNV
    , <<N:?GLsizei
      , Fences:?_PTR
      >>
    )
.

%% Func:       genFencesNV
%% Args:       N, Fences
%% Returns:    ok
%% C-API func: void glGenFencesNV(GLsizei n, GLuint* fences)

genFencesNV(N, Fences)
 -> cast
    ( ?glGenFencesNV
    , <<N:?GLsizei
      , Fences:?_PTR
      >>
    )
.

%% Func:       isFenceNV
%% Args:       Fence
%% Returns:    GLboolean
%% C-API func: GLboolean glIsFenceNV(GLuint fence)

isFenceNV(Fence)
 -> Bin
    = call
      ( ?glIsFenceNV
      , <<Fence:?GLuint
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

%% Func:       testFenceNV
%% Args:       Fence
%% Returns:    GLboolean
%% C-API func: GLboolean glTestFenceNV(GLuint fence)

testFenceNV(Fence)
 -> Bin
    = call
      ( ?glTestFenceNV
      , <<Fence:?GLuint
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

%% Func:       getFenceivNV
%% Args:       Fence, Pname
%% Returns:    [Params]
%% C-API func: void glGetFenceivNV(GLuint fence, GLenum pname, GLint* params)

getFenceivNV(Fence, Pname, Params)
 -> Bin
    = call
      ( ?glGetFenceivNV
      , <<Fence:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetFenceivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       finishFenceNV
%% Args:       Fence
%% Returns:    ok
%% C-API func: void glFinishFenceNV(GLuint fence)

finishFenceNV(Fence)
 -> cast
    ( ?glFinishFenceNV
    , <<Fence:?GLuint
      >>
    )
.

%% Func:       setFenceNV
%% Args:       Fence, Condition
%% Returns:    ok
%% C-API func: void glSetFenceNV(GLuint fence, GLenum condition)

setFenceNV(Fence, Condition)
 -> cast
    ( ?glSetFenceNV
    , <<Fence:?GLuint
      , Condition:?GLenum
      >>
    )
.

%% GL_NV_evaluators

%% Func:       mapControlPointsNV
%% Args:       Target, Index, Type, Ustride, Vstride, Uorder, Vorder, Packed, Points
%% Returns:    ok
%% C-API func: void glMapControlPointsNV(GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const GLvoid* points)

mapControlPointsNV(Target, Index, Type, Ustride, Vstride, Uorder, Vorder, Packed, Points)
 -> cast
    ( ?glMapControlPointsNV
    , <<Target:?GLenum
      , Index:?GLuint
      , Type:?GLenum
      , Ustride:?GLsizei
      , Vstride:?GLsizei
      , Uorder:?GLint
      , Vorder:?GLint
      , Packed:?GLboolean
      , Points:?_PTR
      >>
    )
.

%% Func:       mapParameterivNV
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMapParameterivNV(GLenum target, GLenum pname, const GLint* params)

mapParameterivNV(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glMapParameterivNV
    , [ <<Target:?GLenum
      , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       mapParameterfvNV
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMapParameterfvNV(GLenum target, GLenum pname, const GLfloat* params)

mapParameterfvNV(Target, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glMapParameterfvNV
    , [ <<Target:?GLenum
      , Pname:?GLenum
      >>
      , NewParams
      ]
    )
.

%% Func:       getMapControlPointsNV
%% Args:       Target, Index, Type, Ustride, Vstride, Packed, Points
%% Returns:    ok
%% C-API func: void glGetMapControlPointsNV(GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, GLvoid* points)

getMapControlPointsNV(Target, Index, Type, Ustride, Vstride, Packed, Points)
 -> cast
    ( ?glGetMapControlPointsNV
    , <<Target:?GLenum
      , Index:?GLuint
      , Type:?GLenum
      , Ustride:?GLsizei
      , Vstride:?GLsizei
      , Packed:?GLboolean
      , Points:?_PTR
      >>
    )
.

%% Func:       getMapParameterivNV
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMapParameterivNV(GLenum target, GLenum pname, GLint* params)

getMapParameterivNV(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetMapParameterivNV
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetMapParameterivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getMapParameterfvNV
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMapParameterfvNV(GLenum target, GLenum pname, GLfloat* params)

getMapParameterfvNV(Target, Pname, Params)
 -> Bin
    = call
    ( ?glGetMapParameterfvNV
    , <<Target:?GLenum
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

%% Func:       getMapAttribParameterivNV
%% Args:       Target, Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetMapAttribParameterivNV(GLenum target, GLuint index, GLenum pname, GLint* params)

getMapAttribParameterivNV(Target, Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetMapAttribParameterivNV
      , <<Target:?GLenum
        , Index:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetMapAttribParameterivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getMapAttribParameterfvNV
%% Args:       Target, Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetMapAttribParameterfvNV(GLenum target, GLuint index, GLenum pname, GLfloat* params)

getMapAttribParameterfvNV(Target, Index, Pname, Params)
 -> Bin
    = call
    ( ?glGetMapAttribParameterfvNV
    , <<Target:?GLenum
      , Index:?GLuint
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

%% Func:       evalMapsNV
%% Args:       Target, Mode
%% Returns:    ok
%% C-API func: void glEvalMapsNV(GLenum target, GLenum mode)

evalMapsNV(Target, Mode)
 -> cast
    ( ?glEvalMapsNV
    , <<Target:?GLenum
      , Mode:?GLenum
      >>
    )
.

%% GL_NV_packed_depth_stencil
%% GL_NV_register_combiners2

%% Func:       combinerStageParameterfvNV
%% Args:       Stage, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glCombinerStageParameterfvNV(GLenum stage, GLenum pname, const GLfloat* params)

combinerStageParameterfvNV(Stage, Pname, Params)
 -> NewParams =
      if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glCombinerStageParameterfvNV
    , [ <<Stage:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       getCombinerStageParameterfvNV
%% Args:       Stage, Pname
%% Returns:    [Params]
%% C-API func: void glGetCombinerStageParameterfvNV(GLenum stage, GLenum pname, GLfloat* params)

getCombinerStageParameterfvNV(Stage, Pname, Params)
 -> Bin
    = call
      ( ?glGetCombinerStageParameterfvNV
      , <<Stage:?GLenum
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

%% GL_NV_texture_compression_vtc

%% GL_NV_texture_rectangle

%% GL_NV_texture_shader

%% GL_NV_texture_shader2

%% GL_NV_vertex_array_range2

%% GL_NV_vertex_program

%% Func:       areProgramsResidentNV
%% Args:       N, Programs, Residences
%% Returns:    GLboolean
%% C-API func: GLboolean glAreProgramsResidentNV(GLsizei n, const GLuint* programs, GLboolean* residences)

areProgramsResidentNV(N, Programs, Residences)
 -> Bin
    = call
      ( ?glAreProgramsResidentNV
      , <<N:?GLsizei
        , Programs:?_PTR
        , Residences:?_PTR
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

%% Func:       bindProgramNV
%% Args:       Target, Id
%% Returns:    ok
%% C-API func: void glBindProgramNV(GLenum target, GLuint id)

bindProgramNV(Target, Id)
 -> cast
    ( ?glBindProgramNV
    , <<Target:?GLenum
      , Id:?GLuint
      >>
    )
.

%% Func:       deleteProgramsNV
%% Args:       N, Programs
%% Returns:    ok
%% C-API func: void glDeleteProgramsNV(GLsizei n, const GLuint* programs)

deleteProgramsNV(N, Programs)
 -> cast
    ( ?glDeleteProgramsNV
    , <<N:?GLsizei
      , Programs:?_PTR
      >>
    )
.

%% Func:       executeProgramNV
%% Args:       Target, Id, <<[Params]>>
%% Returns:    ok
%% C-API func: void glExecuteProgramNV(GLenum target, GLuint id, const GLfloat* params)

executeProgramNV(Target, Id, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glExecuteProgramNV
    , [ <<Target:?GLenum
      , Id:?GLuint
      >>
      , NewParams
      ]
    )
.

%% Func:       genProgramsNV
%% Args:       N, Programs
%% Returns:    ok
%% C-API func: void glGenProgramsNV(GLsizei n, GLuint* programs)

genProgramsNV(N, Programs)
 -> cast
    ( ?glGenProgramsNV
    , <<N:?GLsizei
      , Programs:?_PTR
      >>
    )
.

%% Func:       getProgramParameterdvNV
%% Args:       Target, Index, Pname, Params
%% Returns:    ok
%% C-API func: void glGetProgramParameterdvNV(GLenum target, GLuint index, GLenum pname, GLdouble* params)

getProgramParameterdvNV(Target, Index, Pname, Params)
 -> cast
    ( ?glGetProgramParameterdvNV
    , <<Target:?GLenum
      , Index:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getProgramParameterfvNV
%% Args:       Target, Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetProgramParameterfvNV(GLenum target, GLuint index, GLenum pname, GLfloat* params)

getProgramParameterfvNV(Target, Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetProgramParameterfvNV
      , <<Target:?GLenum
        , Index:?GLuint
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

%% Func:       getProgramivNV
%% Args:       Id, Pname
%% Returns:    [Params]
%% C-API func: void glGetProgramivNV(GLuint id, GLenum pname, GLint* params)

getProgramivNV(Id, Pname, Params)
 -> Bin
    = call
      ( ?glGetProgramivNV
      , <<Id:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetProgramivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getProgramStringNV
%% Args:       Id, Pname, Program
%% Returns:    ok
%% C-API func: void glGetProgramStringNV(GLuint id, GLenum pname, GLubyte* program)

getProgramStringNV(Id, Pname, Program)
 -> cast
    ( ?glGetProgramStringNV
    , <<Id:?GLuint
      , Pname:?GLenum
      , Program:?_PTR
      >>
    )
.

%% Func:       getTrackMatrixivNV
%% Args:       Target, Address, Pname
%% Returns:    [Params]
%% C-API func: void glGetTrackMatrixivNV(GLenum target, GLuint address, GLenum pname, GLint* params)

getTrackMatrixivNV(Target, Address, Pname, Params)
 -> Bin
    = call
      ( ?glGetTrackMatrixivNV
      , <<Target:?GLenum
        , Address:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetTrackMatrixivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getVertexAttribdvNV
%% Args:       Index, Pname, Params
%% Returns:    ok
%% C-API func: void glGetVertexAttribdvNV(GLuint index, GLenum pname, GLdouble* params)

getVertexAttribdvNV(Index, Pname, Params)
 -> cast
    ( ?glGetVertexAttribdvNV
    , <<Index:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getVertexAttribfvNV
%% Args:       Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetVertexAttribfvNV(GLuint index, GLenum pname, GLfloat* params)

getVertexAttribfvNV(Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetVertexAttribfvNV
      , <<Index:?GLuint
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

%% Func:       getVertexAttribivNV
%% Args:       Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetVertexAttribivNV(GLuint index, GLenum pname, GLint* params)

getVertexAttribivNV(Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetVertexAttribivNV
      , <<Index:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetVertexAttribivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getVertexAttribPointervNV
%% Args:       Index, Pname, Pointer
%% Returns:    ok
%% C-API func: void glGetVertexAttribPointervNV(GLuint index, GLenum pname, GLvoid** pointer)

getVertexAttribPointervNV(Index, Pname, Pointer)
 -> cast
    ( ?glGetVertexAttribPointervNV
    , <<Index:?GLuint
      , Pname:?GLenum
      , Pointer:?_PTR
      >>
    )
.

%% Func:       isProgramNV
%% Args:       Id
%% Returns:    GLboolean
%% C-API func: GLboolean glIsProgramNV(GLuint id)

isProgramNV(Id)
 -> Bin
    = call
      ( ?glIsProgramNV
      , <<Id:?GLuint
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

%% Func:       loadProgramNV
%% Args:       Target, Id, Len, Program
%% Returns:    ok
%% C-API func: void glLoadProgramNV(GLenum target, GLuint id, GLsizei len, const GLubyte* program)

loadProgramNV(Target, Id, Len, Program)
 -> cast
    ( ?glLoadProgramNV
    , <<Target:?GLenum
      , Id:?GLuint
      , Len:?GLsizei
      , Program:?_PTR
      >>
    )
.

%% Func:       programParameter4dNV
%% Args:       Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramParameter4dNV(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

programParameter4dNV(Target, Index, X, Y, Z, W)
 -> cast
    ( ?glProgramParameter4dNV
    , <<Target:?GLenum
      , Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       programParameter4dvNV
%% Args:       Target, Index, V
%% Returns:    ok
%% C-API func: void glProgramParameter4dvNV(GLenum target, GLuint index, const GLdouble* v)

programParameter4dvNV(Target, Index, V)
 -> cast
    ( ?glProgramParameter4dvNV
    , <<Target:?GLenum
      , Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       programParameter4fNV
%% Args:       Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramParameter4fNV(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

programParameter4fNV(Target, Index, X, Y, Z, W)
 -> cast
    ( ?glProgramParameter4fNV
    , <<Target:?GLenum
      , Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       programParameter4fvNV
%% Args:       Target, Index, V
%% Returns:    ok
%% C-API func: void glProgramParameter4fvNV(GLenum target, GLuint index, const GLfloat* v)

programParameter4fvNV(Target, Index, V)
 -> cast
    ( ?glProgramParameter4fvNV
    , <<Target:?GLenum
      , Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       programParameters4dvNV
%% Args:       Target, Index, Count, V
%% Returns:    ok
%% C-API func: void glProgramParameters4dvNV(GLenum target, GLuint index, GLsizei count, const GLdouble* v)

programParameters4dvNV(Target, Index, Count, V)
 -> cast
    ( ?glProgramParameters4dvNV
    , <<Target:?GLenum
      , Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       programParameters4fvNV
%% Args:       Target, Index, Count, V
%% Returns:    ok
%% C-API func: void glProgramParameters4fvNV(GLenum target, GLuint index, GLsizei count, const GLfloat* v)

programParameters4fvNV(Target, Index, Count, V)
 -> cast
    ( ?glProgramParameters4fvNV
    , <<Target:?GLenum
      , Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       requestResidentProgramsNV
%% Args:       N, Programs
%% Returns:    ok
%% C-API func: void glRequestResidentProgramsNV(GLsizei n, const GLuint* programs)

requestResidentProgramsNV(N, Programs)
 -> cast
    ( ?glRequestResidentProgramsNV
    , <<N:?GLsizei
      , Programs:?_PTR
      >>
    )
.

%% Func:       trackMatrixNV
%% Args:       Target, Address, Matrix, Transform
%% Returns:    ok
%% C-API func: void glTrackMatrixNV(GLenum target, GLuint address, GLenum matrix, GLenum transform)

trackMatrixNV(Target, Address, Matrix, Transform)
 -> cast
    ( ?glTrackMatrixNV
    , <<Target:?GLenum
      , Address:?GLuint
      , Matrix:?GLenum
      , Transform:?GLenum
      >>
    )
.

%% Func:       vertexAttribPointerNV
%% Args:       Index, Fsize, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glVertexAttribPointerNV(GLuint index, GLint fsize, GLenum type, GLsizei stride, const GLvoid* pointer)

vertexAttribPointerNV(Index, Fsize, Type, Stride, Pointer)
 -> cast
    ( ?glVertexAttribPointerNV
    , <<Index:?GLuint
      , Fsize:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       vertexAttrib1dNV
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttrib1dNV(GLuint index, GLdouble x)

vertexAttrib1dNV(Index, X)
 -> cast
    ( ?glVertexAttrib1dNV
    , <<Index:?GLuint
      , X:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib1dvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib1dvNV(GLuint index, const GLdouble* v)

vertexAttrib1dvNV(Index, V)
 -> cast
    ( ?glVertexAttrib1dvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib1fNV
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttrib1fNV(GLuint index, GLfloat x)

vertexAttrib1fNV(Index, X)
 -> cast
    ( ?glVertexAttrib1fNV
    , <<Index:?GLuint
      , X:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib1fvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib1fvNV(GLuint index, const GLfloat* v)

vertexAttrib1fvNV(Index, V)
 -> cast
    ( ?glVertexAttrib1fvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib1sNV
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttrib1sNV(GLuint index, GLshort x)

vertexAttrib1sNV(Index, X)
 -> cast
    ( ?glVertexAttrib1sNV
    , <<Index:?GLuint
      , X:?GLshort
      >>
    )
.

%% Func:       vertexAttrib1svNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib1svNV(GLuint index, const GLshort* v)

vertexAttrib1svNV(Index, V)
 -> cast
    ( ?glVertexAttrib1svNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib2dNV
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttrib2dNV(GLuint index, GLdouble x, GLdouble y)

vertexAttrib2dNV(Index, X, Y)
 -> cast
    ( ?glVertexAttrib2dNV
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib2dvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib2dvNV(GLuint index, const GLdouble* v)

vertexAttrib2dvNV(Index, V)
 -> cast
    ( ?glVertexAttrib2dvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib2fNV
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttrib2fNV(GLuint index, GLfloat x, GLfloat y)

vertexAttrib2fNV(Index, X, Y)
 -> cast
    ( ?glVertexAttrib2fNV
    , <<Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib2fvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib2fvNV(GLuint index, const GLfloat* v)

vertexAttrib2fvNV(Index, V)
 -> cast
    ( ?glVertexAttrib2fvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib2sNV
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttrib2sNV(GLuint index, GLshort x, GLshort y)

vertexAttrib2sNV(Index, X, Y)
 -> cast
    ( ?glVertexAttrib2sNV
    , <<Index:?GLuint
      , X:?GLshort
      , Y:?GLshort
      >>
    )
.

%% Func:       vertexAttrib2svNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib2svNV(GLuint index, const GLshort* v)

vertexAttrib2svNV(Index, V)
 -> cast
    ( ?glVertexAttrib2svNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib3dNV
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttrib3dNV(GLuint index, GLdouble x, GLdouble y, GLdouble z)

vertexAttrib3dNV(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttrib3dNV
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib3dvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib3dvNV(GLuint index, const GLdouble* v)

vertexAttrib3dvNV(Index, V)
 -> cast
    ( ?glVertexAttrib3dvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib3fNV
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttrib3fNV(GLuint index, GLfloat x, GLfloat y, GLfloat z)

vertexAttrib3fNV(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttrib3fNV
    , <<Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib3fvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib3fvNV(GLuint index, const GLfloat* v)

vertexAttrib3fvNV(Index, V)
 -> cast
    ( ?glVertexAttrib3fvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib3sNV
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttrib3sNV(GLuint index, GLshort x, GLshort y, GLshort z)

vertexAttrib3sNV(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttrib3sNV
    , <<Index:?GLuint
      , X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      >>
    )
.

%% Func:       vertexAttrib3svNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib3svNV(GLuint index, const GLshort* v)

vertexAttrib3svNV(Index, V)
 -> cast
    ( ?glVertexAttrib3svNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4dNV
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4dNV(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

vertexAttrib4dNV(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4dNV
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       vertexAttrib4dvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4dvNV(GLuint index, const GLdouble* v)

vertexAttrib4dvNV(Index, V)
 -> cast
    ( ?glVertexAttrib4dvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4fNV
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4fNV(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

vertexAttrib4fNV(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4fNV
    , <<Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       vertexAttrib4fvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4fvNV(GLuint index, const GLfloat* v)

vertexAttrib4fvNV(Index, V)
 -> cast
    ( ?glVertexAttrib4fvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4sNV
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4sNV(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)

vertexAttrib4sNV(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4sNV
    , <<Index:?GLuint
      , X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      , W:?GLshort
      >>
    )
.

%% Func:       vertexAttrib4svNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4svNV(GLuint index, const GLshort* v)

vertexAttrib4svNV(Index, V)
 -> cast
    ( ?glVertexAttrib4svNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4ubNV
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4ubNV(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)

vertexAttrib4ubNV(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4ubNV
    , <<Index:?GLuint
      , X:?GLubyte
      , Y:?GLubyte
      , Z:?GLubyte
      , W:?GLubyte
      >>
    )
.

%% Func:       vertexAttrib4ubvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4ubvNV(GLuint index, const GLubyte* v)

vertexAttrib4ubvNV(Index, V)
 -> cast
    ( ?glVertexAttrib4ubvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs1dvNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs1dvNV(GLuint index, GLsizei count, const GLdouble* v)

vertexAttribs1dvNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs1dvNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs1fvNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs1fvNV(GLuint index, GLsizei count, const GLfloat* v)

vertexAttribs1fvNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs1fvNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs1svNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs1svNV(GLuint index, GLsizei count, const GLshort* v)

vertexAttribs1svNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs1svNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs2dvNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs2dvNV(GLuint index, GLsizei count, const GLdouble* v)

vertexAttribs2dvNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs2dvNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs2fvNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs2fvNV(GLuint index, GLsizei count, const GLfloat* v)

vertexAttribs2fvNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs2fvNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs2svNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs2svNV(GLuint index, GLsizei count, const GLshort* v)

vertexAttribs2svNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs2svNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs3dvNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs3dvNV(GLuint index, GLsizei count, const GLdouble* v)

vertexAttribs3dvNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs3dvNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs3fvNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs3fvNV(GLuint index, GLsizei count, const GLfloat* v)

vertexAttribs3fvNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs3fvNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs3svNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs3svNV(GLuint index, GLsizei count, const GLshort* v)

vertexAttribs3svNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs3svNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs4dvNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs4dvNV(GLuint index, GLsizei count, const GLdouble* v)

vertexAttribs4dvNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs4dvNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs4fvNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs4fvNV(GLuint index, GLsizei count, const GLfloat* v)

vertexAttribs4fvNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs4fvNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs4svNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs4svNV(GLuint index, GLsizei count, const GLshort* v)

vertexAttribs4svNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs4svNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs4ubvNV
%% Args:       Index, Count, V
%% Returns:    ok
%% C-API func: void glVertexAttribs4ubvNV(GLuint index, GLsizei count, const GLubyte* v)

vertexAttribs4ubvNV(Index, Count, V)
 -> cast
    ( ?glVertexAttribs4ubvNV
    , <<Index:?GLuint
      , Count:?GLsizei
      , V:?_PTR
      >>
    )
.

%% GL_SGIX_texture_coordinate_clamp
%% GL_SGIX_scalebias_hint
%% GL_OML_interlace
%% GL_OML_subsample
%% GL_OML_resample
%% GL_NV_copy_depth_to_color
%% GL_ATI_envmap_bumpmap

%% Func:       texBumpParameterivATI
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glTexBumpParameterivATI(GLenum pname, const GLint* param)

texBumpParameterivATI(Pname, Param)
 -> cast
    ( ?glTexBumpParameterivATI
    , <<Pname:?GLenum
      , Param:?_PTR
      >>
    )
.

%% Func:       texBumpParameterfvATI
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glTexBumpParameterfvATI(GLenum pname, const GLfloat* param)

texBumpParameterfvATI(Pname, Param)
 -> cast
    ( ?glTexBumpParameterfvATI
    , <<Pname:?GLenum
      , Param:?_PTR
      >>
    )
.

%% Func:       getTexBumpParameterivATI
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glGetTexBumpParameterivATI(GLenum pname, GLint* param)

getTexBumpParameterivATI(Pname, Param)
 -> cast
    ( ?glGetTexBumpParameterivATI
    , <<Pname:?GLenum
      , Param:?_PTR
      >>
    )
.

%% Func:       getTexBumpParameterfvATI
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glGetTexBumpParameterfvATI(GLenum pname, GLfloat* param)

getTexBumpParameterfvATI(Pname, Param)
 -> cast
    ( ?glGetTexBumpParameterfvATI
    , <<Pname:?GLenum
      , Param:?_PTR
      >>
    )
.

%% GL_ATI_fragment_shader

%% Func:       genFragmentShadersATI
%% Args:       Range
%% Returns:    GLuint
%% C-API func: GLuint glGenFragmentShadersATI(GLuint range)

genFragmentShadersATI(Range)
 -> Bin
    = call
      ( ?glGenFragmentShadersATI
      , <<Range:?GLuint
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

%% Func:       bindFragmentShaderATI
%% Args:       Id
%% Returns:    ok
%% C-API func: void glBindFragmentShaderATI(GLuint id)

bindFragmentShaderATI(Id)
 -> cast
    ( ?glBindFragmentShaderATI
    , <<Id:?GLuint
      >>
    )
.

%% Func:       deleteFragmentShaderATI
%% Args:       Id
%% Returns:    ok
%% C-API func: void glDeleteFragmentShaderATI(GLuint id)

deleteFragmentShaderATI(Id)
 -> cast
    ( ?glDeleteFragmentShaderATI
    , <<Id:?GLuint
      >>
    )
.

%% Func:       beginFragmentShaderATI
%% Args:       
%% Returns:    ok
%% C-API func: void glBeginFragmentShaderATI()

beginFragmentShaderATI()
 -> cast
    ( ?glBeginFragmentShaderATI
    , <<
      >>
    )
.

%% Func:       endFragmentShaderATI
%% Args:       
%% Returns:    ok
%% C-API func: void glEndFragmentShaderATI()

endFragmentShaderATI()
 -> cast
    ( ?glEndFragmentShaderATI
    , <<
      >>
    )
.

%% Func:       passTexCoordATI
%% Args:       Dst, Coord, Swizzle
%% Returns:    ok
%% C-API func: void glPassTexCoordATI(GLuint dst, GLuint coord, GLenum swizzle)

passTexCoordATI(Dst, Coord, Swizzle)
 -> cast
    ( ?glPassTexCoordATI
    , <<Dst:?GLuint
      , Coord:?GLuint
      , Swizzle:?GLenum
      >>
    )
.

%% Func:       sampleMapATI
%% Args:       Dst, Interp, Swizzle
%% Returns:    ok
%% C-API func: void glSampleMapATI(GLuint dst, GLuint interp, GLenum swizzle)

sampleMapATI(Dst, Interp, Swizzle)
 -> cast
    ( ?glSampleMapATI
    , <<Dst:?GLuint
      , Interp:?GLuint
      , Swizzle:?GLenum
      >>
    )
.

%% Func:       colorFragmentOp1ATI
%% Args:       Op, Dst, DstMask, DstMod, Arg1, Arg1Rep, Arg1Mod
%% Returns:    ok
%% C-API func: void glColorFragmentOp1ATI(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod)

colorFragmentOp1ATI(Op, Dst, DstMask, DstMod, Arg1, Arg1Rep, Arg1Mod)
 -> cast
    ( ?glColorFragmentOp1ATI
    , <<Op:?GLenum
      , Dst:?GLuint
      , DstMask:?GLuint
      , DstMod:?GLuint
      , Arg1:?GLuint
      , Arg1Rep:?GLuint
      , Arg1Mod:?GLuint
      >>
    )
.

%% Func:       colorFragmentOp2ATI
%% Args:       Op, Dst, DstMask, DstMod, Arg1, Arg1Rep, Arg1Mod, Arg2, Arg2Rep, Arg2Mod
%% Returns:    ok
%% C-API func: void glColorFragmentOp2ATI(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)

colorFragmentOp2ATI(Op, Dst, DstMask, DstMod, Arg1, Arg1Rep, Arg1Mod, Arg2, Arg2Rep, Arg2Mod)
 -> cast
    ( ?glColorFragmentOp2ATI
    , <<Op:?GLenum
      , Dst:?GLuint
      , DstMask:?GLuint
      , DstMod:?GLuint
      , Arg1:?GLuint
      , Arg1Rep:?GLuint
      , Arg1Mod:?GLuint
      , Arg2:?GLuint
      , Arg2Rep:?GLuint
      , Arg2Mod:?GLuint
      >>
    )
.

%% Func:       colorFragmentOp3ATI
%% Args:       Op, Dst, DstMask, DstMod, Arg1, Arg1Rep, Arg1Mod, Arg2, Arg2Rep, Arg2Mod, Arg3, Arg3Rep, Arg3Mod
%% Returns:    ok
%% C-API func: void glColorFragmentOp3ATI(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)

colorFragmentOp3ATI(Op, Dst, DstMask, DstMod, Arg1, Arg1Rep, Arg1Mod, Arg2, Arg2Rep, Arg2Mod, Arg3, Arg3Rep, Arg3Mod)
 -> cast
    ( ?glColorFragmentOp3ATI
    , <<Op:?GLenum
      , Dst:?GLuint
      , DstMask:?GLuint
      , DstMod:?GLuint
      , Arg1:?GLuint
      , Arg1Rep:?GLuint
      , Arg1Mod:?GLuint
      , Arg2:?GLuint
      , Arg2Rep:?GLuint
      , Arg2Mod:?GLuint
      , Arg3:?GLuint
      , Arg3Rep:?GLuint
      , Arg3Mod:?GLuint
      >>
    )
.

%% Func:       alphaFragmentOp1ATI
%% Args:       Op, Dst, DstMod, Arg1, Arg1Rep, Arg1Mod
%% Returns:    ok
%% C-API func: void glAlphaFragmentOp1ATI(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod)

alphaFragmentOp1ATI(Op, Dst, DstMod, Arg1, Arg1Rep, Arg1Mod)
 -> cast
    ( ?glAlphaFragmentOp1ATI
    , <<Op:?GLenum
      , Dst:?GLuint
      , DstMod:?GLuint
      , Arg1:?GLuint
      , Arg1Rep:?GLuint
      , Arg1Mod:?GLuint
      >>
    )
.

%% Func:       alphaFragmentOp2ATI
%% Args:       Op, Dst, DstMod, Arg1, Arg1Rep, Arg1Mod, Arg2, Arg2Rep, Arg2Mod
%% Returns:    ok
%% C-API func: void glAlphaFragmentOp2ATI(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)

alphaFragmentOp2ATI(Op, Dst, DstMod, Arg1, Arg1Rep, Arg1Mod, Arg2, Arg2Rep, Arg2Mod)
 -> cast
    ( ?glAlphaFragmentOp2ATI
    , <<Op:?GLenum
      , Dst:?GLuint
      , DstMod:?GLuint
      , Arg1:?GLuint
      , Arg1Rep:?GLuint
      , Arg1Mod:?GLuint
      , Arg2:?GLuint
      , Arg2Rep:?GLuint
      , Arg2Mod:?GLuint
      >>
    )
.

%% Func:       alphaFragmentOp3ATI
%% Args:       Op, Dst, DstMod, Arg1, Arg1Rep, Arg1Mod, Arg2, Arg2Rep, Arg2Mod, Arg3, Arg3Rep, Arg3Mod
%% Returns:    ok
%% C-API func: void glAlphaFragmentOp3ATI(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)

alphaFragmentOp3ATI(Op, Dst, DstMod, Arg1, Arg1Rep, Arg1Mod, Arg2, Arg2Rep, Arg2Mod, Arg3, Arg3Rep, Arg3Mod)
 -> cast
    ( ?glAlphaFragmentOp3ATI
    , <<Op:?GLenum
      , Dst:?GLuint
      , DstMod:?GLuint
      , Arg1:?GLuint
      , Arg1Rep:?GLuint
      , Arg1Mod:?GLuint
      , Arg2:?GLuint
      , Arg2Rep:?GLuint
      , Arg2Mod:?GLuint
      , Arg3:?GLuint
      , Arg3Rep:?GLuint
      , Arg3Mod:?GLuint
      >>
    )
.

%% Func:       setFragmentShaderConstantATI
%% Args:       Dst, <<[Value]>>
%% Returns:    ok
%% C-API func: void glSetFragmentShaderConstantATI(GLuint dst, const GLfloat* value)

setFragmentShaderConstantATI(Dst, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Dst
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glSetFragmentShaderConstantATI
    , [ <<Dst:?GLuint
        >>
      , NewValue
      ]
    )
.

%% GL_ATI_pn_triangles

%% Func:       pNTrianglesiATI
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPNTrianglesiATI(GLenum pname, GLint param)

pNTrianglesiATI(Pname, Param)
 -> cast
    ( ?glPNTrianglesiATI
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       pNTrianglesfATI
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPNTrianglesfATI(GLenum pname, GLfloat param)

pNTrianglesfATI(Pname, Param)
 -> cast
    ( ?glPNTrianglesfATI
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% GL_ATI_vertex_array_object

%% Func:       newObjectBufferATI
%% Args:       Size, Pointer, Usage
%% Returns:    GLuint
%% C-API func: GLuint glNewObjectBufferATI(GLsizei size, const GLvoid* pointer, GLenum usage)

newObjectBufferATI(Size, Pointer, Usage)
 -> Bin
    = call
      ( ?glNewObjectBufferATI
      , <<Size:?GLsizei
        , Pointer:?_PTR
        , Usage:?GLenum
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

%% Func:       isObjectBufferATI
%% Args:       Buffer
%% Returns:    GLboolean
%% C-API func: GLboolean glIsObjectBufferATI(GLuint buffer)

isObjectBufferATI(Buffer)
 -> Bin
    = call
      ( ?glIsObjectBufferATI
      , <<Buffer:?GLuint
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

%% Func:       updateObjectBufferATI
%% Args:       Buffer, Offset, Size, Pointer, Preserve
%% Returns:    ok
%% C-API func: void glUpdateObjectBufferATI(GLuint buffer, GLuint offset, GLsizei size, const GLvoid* pointer, GLenum preserve)

updateObjectBufferATI(Buffer, Offset, Size, Pointer, Preserve)
 -> cast
    ( ?glUpdateObjectBufferATI
    , <<Buffer:?GLuint
      , Offset:?GLuint
      , Size:?GLsizei
      , Pointer:?_PTR
      , Preserve:?GLenum
      >>
    )
.

%% Func:       getObjectBufferfvATI
%% Args:       Buffer, Pname
%% Returns:    [Params]
%% C-API func: void glGetObjectBufferfvATI(GLuint buffer, GLenum pname, GLfloat* params)

getObjectBufferfvATI(Buffer, Pname, Params)
 -> Bin
    = call
      ( ?glGetObjectBufferfvATI
      , <<Buffer:?GLuint
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

%% Func:       getObjectBufferivATI
%% Args:       Buffer, Pname
%% Returns:    [Params]
%% C-API func: void glGetObjectBufferivATI(GLuint buffer, GLenum pname, GLint* params)

getObjectBufferivATI(Buffer, Pname, Params)
 -> Bin
    = call
      ( ?glGetObjectBufferivATI
      , <<Buffer:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetObjectBufferivATILen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       freeObjectBufferATI
%% Args:       Buffer
%% Returns:    ok
%% C-API func: void glFreeObjectBufferATI(GLuint buffer)

freeObjectBufferATI(Buffer)
 -> cast
    ( ?glFreeObjectBufferATI
    , <<Buffer:?GLuint
      >>
    )
.

%% Func:       arrayObjectATI
%% Args:       Array, Size, Type, Stride, Buffer, Offset
%% Returns:    ok
%% C-API func: void glArrayObjectATI(GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset)

arrayObjectATI(Array, Size, Type, Stride, Buffer, Offset)
 -> cast
    ( ?glArrayObjectATI
    , <<Array:?GLenum
      , Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Buffer:?GLuint
      , Offset:?GLuint
      >>
    )
.

%% Func:       getArrayObjectfvATI
%% Args:       Array, Pname
%% Returns:    [Params]
%% C-API func: void glGetArrayObjectfvATI(GLenum array, GLenum pname, GLfloat* params)

getArrayObjectfvATI(Array, Pname, Params)
 -> Bin
    = call
      ( ?glGetArrayObjectfvATI
      , <<Array:?GLenum
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

%% Func:       getArrayObjectivATI
%% Args:       Array, Pname
%% Returns:    [Params]
%% C-API func: void glGetArrayObjectivATI(GLenum array, GLenum pname, GLint* params)

getArrayObjectivATI(Array, Pname, Params)
 -> Bin
    = call
      ( ?glGetArrayObjectivATI
      , <<Array:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetArrayObjectivATILen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       variantArrayObjectATI
%% Args:       Id, Type, Stride, Buffer, Offset
%% Returns:    ok
%% C-API func: void glVariantArrayObjectATI(GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset)

variantArrayObjectATI(Id, Type, Stride, Buffer, Offset)
 -> cast
    ( ?glVariantArrayObjectATI
    , <<Id:?GLuint
      , Type:?GLenum
      , Stride:?GLsizei
      , Buffer:?GLuint
      , Offset:?GLuint
      >>
    )
.

%% Func:       getVariantArrayObjectfvATI
%% Args:       Id, Pname
%% Returns:    [Params]
%% C-API func: void glGetVariantArrayObjectfvATI(GLuint id, GLenum pname, GLfloat* params)

getVariantArrayObjectfvATI(Id, Pname, Params)
 -> Bin
    = call
      ( ?glGetVariantArrayObjectfvATI
      , <<Id:?GLuint
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

%% Func:       getVariantArrayObjectivATI
%% Args:       Id, Pname
%% Returns:    [Params]
%% C-API func: void glGetVariantArrayObjectivATI(GLuint id, GLenum pname, GLint* params)

getVariantArrayObjectivATI(Id, Pname, Params)
 -> Bin
    = call
      ( ?glGetVariantArrayObjectivATI
      , <<Id:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetVariantArrayObjectivATILen
      ( Pname
      )
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
           , ?GLint
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

%% GL_EXT_vertex_shader

%% Func:       beginVertexShaderEXT
%% Args:       
%% Returns:    ok
%% C-API func: void glBeginVertexShaderEXT()

beginVertexShaderEXT()
 -> cast
    ( ?glBeginVertexShaderEXT
    , <<
      >>
    )
.

%% Func:       endVertexShaderEXT
%% Args:       
%% Returns:    ok
%% C-API func: void glEndVertexShaderEXT()

endVertexShaderEXT()
 -> cast
    ( ?glEndVertexShaderEXT
    , <<
      >>
    )
.

%% Func:       bindVertexShaderEXT
%% Args:       Id
%% Returns:    ok
%% C-API func: void glBindVertexShaderEXT(GLuint id)

bindVertexShaderEXT(Id)
 -> cast
    ( ?glBindVertexShaderEXT
    , <<Id:?GLuint
      >>
    )
.

%% Func:       genVertexShadersEXT
%% Args:       Range
%% Returns:    GLuint
%% C-API func: GLuint glGenVertexShadersEXT(GLuint range)

genVertexShadersEXT(Range)
 -> Bin
    = call
      ( ?glGenVertexShadersEXT
      , <<Range:?GLuint
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

%% Func:       deleteVertexShaderEXT
%% Args:       Id
%% Returns:    ok
%% C-API func: void glDeleteVertexShaderEXT(GLuint id)

deleteVertexShaderEXT(Id)
 -> cast
    ( ?glDeleteVertexShaderEXT
    , <<Id:?GLuint
      >>
    )
.

%% Func:       shaderOp1EXT
%% Args:       Op, Res, Arg1
%% Returns:    ok
%% C-API func: void glShaderOp1EXT(GLenum op, GLuint res, GLuint arg1)

shaderOp1EXT(Op, Res, Arg1)
 -> cast
    ( ?glShaderOp1EXT
    , <<Op:?GLenum
      , Res:?GLuint
      , Arg1:?GLuint
      >>
    )
.

%% Func:       shaderOp2EXT
%% Args:       Op, Res, Arg1, Arg2
%% Returns:    ok
%% C-API func: void glShaderOp2EXT(GLenum op, GLuint res, GLuint arg1, GLuint arg2)

shaderOp2EXT(Op, Res, Arg1, Arg2)
 -> cast
    ( ?glShaderOp2EXT
    , <<Op:?GLenum
      , Res:?GLuint
      , Arg1:?GLuint
      , Arg2:?GLuint
      >>
    )
.

%% Func:       shaderOp3EXT
%% Args:       Op, Res, Arg1, Arg2, Arg3
%% Returns:    ok
%% C-API func: void glShaderOp3EXT(GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3)

shaderOp3EXT(Op, Res, Arg1, Arg2, Arg3)
 -> cast
    ( ?glShaderOp3EXT
    , <<Op:?GLenum
      , Res:?GLuint
      , Arg1:?GLuint
      , Arg2:?GLuint
      , Arg3:?GLuint
      >>
    )
.

%% Func:       swizzleEXT
%% Args:       Res, In, OutX, OutY, OutZ, OutW
%% Returns:    ok
%% C-API func: void glSwizzleEXT(GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW)

swizzleEXT(Res, In, OutX, OutY, OutZ, OutW)
 -> cast
    ( ?glSwizzleEXT
    , <<Res:?GLuint
      , In:?GLuint
      , OutX:?GLenum
      , OutY:?GLenum
      , OutZ:?GLenum
      , OutW:?GLenum
      >>
    )
.

%% Func:       writeMaskEXT
%% Args:       Res, In, OutX, OutY, OutZ, OutW
%% Returns:    ok
%% C-API func: void glWriteMaskEXT(GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW)

writeMaskEXT(Res, In, OutX, OutY, OutZ, OutW)
 -> cast
    ( ?glWriteMaskEXT
    , <<Res:?GLuint
      , In:?GLuint
      , OutX:?GLenum
      , OutY:?GLenum
      , OutZ:?GLenum
      , OutW:?GLenum
      >>
    )
.

%% Func:       insertComponentEXT
%% Args:       Res, Src, Num
%% Returns:    ok
%% C-API func: void glInsertComponentEXT(GLuint res, GLuint src, GLuint num)

insertComponentEXT(Res, Src, Num)
 -> cast
    ( ?glInsertComponentEXT
    , <<Res:?GLuint
      , Src:?GLuint
      , Num:?GLuint
      >>
    )
.

%% Func:       extractComponentEXT
%% Args:       Res, Src, Num
%% Returns:    ok
%% C-API func: void glExtractComponentEXT(GLuint res, GLuint src, GLuint num)

extractComponentEXT(Res, Src, Num)
 -> cast
    ( ?glExtractComponentEXT
    , <<Res:?GLuint
      , Src:?GLuint
      , Num:?GLuint
      >>
    )
.

%% Func:       genSymbolsEXT
%% Args:       Datatype, Storagetype, Range, Components
%% Returns:    GLuint
%% C-API func: GLuint glGenSymbolsEXT(GLenum datatype, GLenum storagetype, GLenum range, GLuint components)

genSymbolsEXT(Datatype, Storagetype, Range, Components)
 -> Bin
    = call
      ( ?glGenSymbolsEXT
      , <<Datatype:?GLenum
        , Storagetype:?GLenum
        , Range:?GLenum
        , Components:?GLuint
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

%% Func:       setInvariantEXT
%% Args:       Id, Type, Addr
%% Returns:    ok
%% C-API func: void glSetInvariantEXT(GLuint id, GLenum type, const GLvoid* addr)

setInvariantEXT(Id, Type, Addr)
 -> cast
    ( ?glSetInvariantEXT
    , <<Id:?GLuint
      , Type:?GLenum
      , Addr:?_PTR
      >>
    )
.

%% Func:       setLocalConstantEXT
%% Args:       Id, Type, Addr
%% Returns:    ok
%% C-API func: void glSetLocalConstantEXT(GLuint id, GLenum type, const GLvoid* addr)

setLocalConstantEXT(Id, Type, Addr)
 -> cast
    ( ?glSetLocalConstantEXT
    , <<Id:?GLuint
      , Type:?GLenum
      , Addr:?_PTR
      >>
    )
.

%% Func:       variantbvEXT
%% Args:       Id, Addr
%% Returns:    ok
%% C-API func: void glVariantbvEXT(GLuint id, const GLbyte* addr)

variantbvEXT(Id, Addr)
 -> cast
    ( ?glVariantbvEXT
    , <<Id:?GLuint
      , Addr:?_PTR
      >>
    )
.

%% Func:       variantsvEXT
%% Args:       Id, Addr
%% Returns:    ok
%% C-API func: void glVariantsvEXT(GLuint id, const GLshort* addr)

variantsvEXT(Id, Addr)
 -> cast
    ( ?glVariantsvEXT
    , <<Id:?GLuint
      , Addr:?_PTR
      >>
    )
.

%% Func:       variantivEXT
%% Args:       Id, Addr
%% Returns:    ok
%% C-API func: void glVariantivEXT(GLuint id, const GLint* addr)

variantivEXT(Id, Addr)
 -> cast
    ( ?glVariantivEXT
    , <<Id:?GLuint
      , Addr:?_PTR
      >>
    )
.

%% Func:       variantfvEXT
%% Args:       Id, Addr
%% Returns:    ok
%% C-API func: void glVariantfvEXT(GLuint id, const GLfloat* addr)

variantfvEXT(Id, Addr)
 -> cast
    ( ?glVariantfvEXT
    , <<Id:?GLuint
      , Addr:?_PTR
      >>
    )
.

%% Func:       variantdvEXT
%% Args:       Id, Addr
%% Returns:    ok
%% C-API func: void glVariantdvEXT(GLuint id, const GLdouble* addr)

variantdvEXT(Id, Addr)
 -> cast
    ( ?glVariantdvEXT
    , <<Id:?GLuint
      , Addr:?_PTR
      >>
    )
.

%% Func:       variantubvEXT
%% Args:       Id, Addr
%% Returns:    ok
%% C-API func: void glVariantubvEXT(GLuint id, const GLubyte* addr)

variantubvEXT(Id, Addr)
 -> cast
    ( ?glVariantubvEXT
    , <<Id:?GLuint
      , Addr:?_PTR
      >>
    )
.

%% Func:       variantusvEXT
%% Args:       Id, Addr
%% Returns:    ok
%% C-API func: void glVariantusvEXT(GLuint id, const GLushort* addr)

variantusvEXT(Id, Addr)
 -> cast
    ( ?glVariantusvEXT
    , <<Id:?GLuint
      , Addr:?_PTR
      >>
    )
.

%% Func:       variantuivEXT
%% Args:       Id, Addr
%% Returns:    ok
%% C-API func: void glVariantuivEXT(GLuint id, const GLuint* addr)

variantuivEXT(Id, Addr)
 -> cast
    ( ?glVariantuivEXT
    , <<Id:?GLuint
      , Addr:?_PTR
      >>
    )
.

%% Func:       variantPointerEXT
%% Args:       Id, Type, Stride, Addr
%% Returns:    ok
%% C-API func: void glVariantPointerEXT(GLuint id, GLenum type, GLuint stride, const GLvoid* addr)

variantPointerEXT(Id, Type, Stride, Addr)
 -> cast
    ( ?glVariantPointerEXT
    , <<Id:?GLuint
      , Type:?GLenum
      , Stride:?GLuint
      , Addr:?_PTR
      >>
    )
.

%% Func:       enableVariantClientStateEXT
%% Args:       Id
%% Returns:    ok
%% C-API func: void glEnableVariantClientStateEXT(GLuint id)

enableVariantClientStateEXT(Id)
 -> cast
    ( ?glEnableVariantClientStateEXT
    , <<Id:?GLuint
      >>
    )
.

%% Func:       disableVariantClientStateEXT
%% Args:       Id
%% Returns:    ok
%% C-API func: void glDisableVariantClientStateEXT(GLuint id)

disableVariantClientStateEXT(Id)
 -> cast
    ( ?glDisableVariantClientStateEXT
    , <<Id:?GLuint
      >>
    )
.

%% Func:       bindLightParameterEXT
%% Args:       Light, Value
%% Returns:    GLuint
%% C-API func: GLuint glBindLightParameterEXT(GLenum light, GLenum value)

bindLightParameterEXT(Light, Value)
 -> Bin
    = call
      ( ?glBindLightParameterEXT
      , <<Light:?GLenum
        , Value:?GLenum
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

%% Func:       bindMaterialParameterEXT
%% Args:       Face, Value
%% Returns:    GLuint
%% C-API func: GLuint glBindMaterialParameterEXT(GLenum face, GLenum value)

bindMaterialParameterEXT(Face, Value)
 -> Bin
    = call
      ( ?glBindMaterialParameterEXT
      , <<Face:?GLenum
        , Value:?GLenum
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

%% Func:       bindTexGenParameterEXT
%% Args:       Unit, Coord, Value
%% Returns:    GLuint
%% C-API func: GLuint glBindTexGenParameterEXT(GLenum unit, GLenum coord, GLenum value)

bindTexGenParameterEXT(Unit, Coord, Value)
 -> Bin
    = call
      ( ?glBindTexGenParameterEXT
      , <<Unit:?GLenum
        , Coord:?GLenum
        , Value:?GLenum
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

%% Func:       bindTextureUnitParameterEXT
%% Args:       Unit, Value
%% Returns:    GLuint
%% C-API func: GLuint glBindTextureUnitParameterEXT(GLenum unit, GLenum value)

bindTextureUnitParameterEXT(Unit, Value)
 -> Bin
    = call
      ( ?glBindTextureUnitParameterEXT
      , <<Unit:?GLenum
        , Value:?GLenum
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

%% Func:       bindParameterEXT
%% Args:       Value
%% Returns:    GLuint
%% C-API func: GLuint glBindParameterEXT(GLenum value)

bindParameterEXT(Value)
 -> Bin
    = call
      ( ?glBindParameterEXT
      , <<Value:?GLenum
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

%% Func:       isVariantEnabledEXT
%% Args:       Id, Cap
%% Returns:    GLboolean
%% C-API func: GLboolean glIsVariantEnabledEXT(GLuint id, GLenum cap)

isVariantEnabledEXT(Id, Cap)
 -> Bin
    = call
      ( ?glIsVariantEnabledEXT
      , <<Id:?GLuint
        , Cap:?GLenum
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

%% Func:       getVariantBooleanvEXT
%% Args:       Id, Value, Data
%% Returns:    ok
%% C-API func: void glGetVariantBooleanvEXT(GLuint id, GLenum value, GLboolean* data)

getVariantBooleanvEXT(Id, Value, Data)
 -> cast
    ( ?glGetVariantBooleanvEXT
    , <<Id:?GLuint
      , Value:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       getVariantIntegervEXT
%% Args:       Id, Value, Data
%% Returns:    ok
%% C-API func: void glGetVariantIntegervEXT(GLuint id, GLenum value, GLint* data)

getVariantIntegervEXT(Id, Value, Data)
 -> cast
    ( ?glGetVariantIntegervEXT
    , <<Id:?GLuint
      , Value:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       getVariantFloatvEXT
%% Args:       Id, Value, Data
%% Returns:    ok
%% C-API func: void glGetVariantFloatvEXT(GLuint id, GLenum value, GLfloat* data)

getVariantFloatvEXT(Id, Value, Data)
 -> cast
    ( ?glGetVariantFloatvEXT
    , <<Id:?GLuint
      , Value:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       getVariantPointervEXT
%% Args:       Id, Value, Data
%% Returns:    ok
%% C-API func: void glGetVariantPointervEXT(GLuint id, GLenum value, GLvoid** data)

getVariantPointervEXT(Id, Value, Data)
 -> cast
    ( ?glGetVariantPointervEXT
    , <<Id:?GLuint
      , Value:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       getInvariantBooleanvEXT
%% Args:       Id, Value, Data
%% Returns:    ok
%% C-API func: void glGetInvariantBooleanvEXT(GLuint id, GLenum value, GLboolean* data)

getInvariantBooleanvEXT(Id, Value, Data)
 -> cast
    ( ?glGetInvariantBooleanvEXT
    , <<Id:?GLuint
      , Value:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       getInvariantIntegervEXT
%% Args:       Id, Value, Data
%% Returns:    ok
%% C-API func: void glGetInvariantIntegervEXT(GLuint id, GLenum value, GLint* data)

getInvariantIntegervEXT(Id, Value, Data)
 -> cast
    ( ?glGetInvariantIntegervEXT
    , <<Id:?GLuint
      , Value:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       getInvariantFloatvEXT
%% Args:       Id, Value, Data
%% Returns:    ok
%% C-API func: void glGetInvariantFloatvEXT(GLuint id, GLenum value, GLfloat* data)

getInvariantFloatvEXT(Id, Value, Data)
 -> cast
    ( ?glGetInvariantFloatvEXT
    , <<Id:?GLuint
      , Value:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       getLocalConstantBooleanvEXT
%% Args:       Id, Value, Data
%% Returns:    ok
%% C-API func: void glGetLocalConstantBooleanvEXT(GLuint id, GLenum value, GLboolean* data)

getLocalConstantBooleanvEXT(Id, Value, Data)
 -> cast
    ( ?glGetLocalConstantBooleanvEXT
    , <<Id:?GLuint
      , Value:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       getLocalConstantIntegervEXT
%% Args:       Id, Value, Data
%% Returns:    ok
%% C-API func: void glGetLocalConstantIntegervEXT(GLuint id, GLenum value, GLint* data)

getLocalConstantIntegervEXT(Id, Value, Data)
 -> cast
    ( ?glGetLocalConstantIntegervEXT
    , <<Id:?GLuint
      , Value:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       getLocalConstantFloatvEXT
%% Args:       Id, Value, Data
%% Returns:    ok
%% C-API func: void glGetLocalConstantFloatvEXT(GLuint id, GLenum value, GLfloat* data)

getLocalConstantFloatvEXT(Id, Value, Data)
 -> cast
    ( ?glGetLocalConstantFloatvEXT
    , <<Id:?GLuint
      , Value:?GLenum
      , Data:?_PTR
      >>
    )
.

%% GL_ATI_vertex_streams

%% Func:       vertexStream1sATI
%% Args:       Stream, X
%% Returns:    ok
%% C-API func: void glVertexStream1sATI(GLenum stream, GLshort x)

vertexStream1sATI(Stream, X)
 -> cast
    ( ?glVertexStream1sATI
    , <<Stream:?GLenum
      , X:?GLshort
      >>
    )
.

%% Func:       vertexStream1svATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream1svATI(GLenum stream, const GLshort* coords)

vertexStream1svATI(Stream, Coords)
 -> cast
    ( ?glVertexStream1svATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream1iATI
%% Args:       Stream, X
%% Returns:    ok
%% C-API func: void glVertexStream1iATI(GLenum stream, GLint x)

vertexStream1iATI(Stream, X)
 -> cast
    ( ?glVertexStream1iATI
    , <<Stream:?GLenum
      , X:?GLint
      >>
    )
.

%% Func:       vertexStream1ivATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream1ivATI(GLenum stream, const GLint* coords)

vertexStream1ivATI(Stream, Coords)
 -> cast
    ( ?glVertexStream1ivATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream1fATI
%% Args:       Stream, X
%% Returns:    ok
%% C-API func: void glVertexStream1fATI(GLenum stream, GLfloat x)

vertexStream1fATI(Stream, X)
 -> cast
    ( ?glVertexStream1fATI
    , <<Stream:?GLenum
      , X:?GLfloat
      >>
    )
.

%% Func:       vertexStream1fvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream1fvATI(GLenum stream, const GLfloat* coords)

vertexStream1fvATI(Stream, Coords)
 -> cast
    ( ?glVertexStream1fvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream1dATI
%% Args:       Stream, X
%% Returns:    ok
%% C-API func: void glVertexStream1dATI(GLenum stream, GLdouble x)

vertexStream1dATI(Stream, X)
 -> cast
    ( ?glVertexStream1dATI
    , <<Stream:?GLenum
      , X:?GLdouble
      >>
    )
.

%% Func:       vertexStream1dvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream1dvATI(GLenum stream, const GLdouble* coords)

vertexStream1dvATI(Stream, Coords)
 -> cast
    ( ?glVertexStream1dvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream2sATI
%% Args:       Stream, X, Y
%% Returns:    ok
%% C-API func: void glVertexStream2sATI(GLenum stream, GLshort x, GLshort y)

vertexStream2sATI(Stream, X, Y)
 -> cast
    ( ?glVertexStream2sATI
    , <<Stream:?GLenum
      , X:?GLshort
      , Y:?GLshort
      >>
    )
.

%% Func:       vertexStream2svATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream2svATI(GLenum stream, const GLshort* coords)

vertexStream2svATI(Stream, Coords)
 -> cast
    ( ?glVertexStream2svATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream2iATI
%% Args:       Stream, X, Y
%% Returns:    ok
%% C-API func: void glVertexStream2iATI(GLenum stream, GLint x, GLint y)

vertexStream2iATI(Stream, X, Y)
 -> cast
    ( ?glVertexStream2iATI
    , <<Stream:?GLenum
      , X:?GLint
      , Y:?GLint
      >>
    )
.

%% Func:       vertexStream2ivATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream2ivATI(GLenum stream, const GLint* coords)

vertexStream2ivATI(Stream, Coords)
 -> cast
    ( ?glVertexStream2ivATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream2fATI
%% Args:       Stream, X, Y
%% Returns:    ok
%% C-API func: void glVertexStream2fATI(GLenum stream, GLfloat x, GLfloat y)

vertexStream2fATI(Stream, X, Y)
 -> cast
    ( ?glVertexStream2fATI
    , <<Stream:?GLenum
      , X:?GLfloat
      , Y:?GLfloat
      >>
    )
.

%% Func:       vertexStream2fvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream2fvATI(GLenum stream, const GLfloat* coords)

vertexStream2fvATI(Stream, Coords)
 -> cast
    ( ?glVertexStream2fvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream2dATI
%% Args:       Stream, X, Y
%% Returns:    ok
%% C-API func: void glVertexStream2dATI(GLenum stream, GLdouble x, GLdouble y)

vertexStream2dATI(Stream, X, Y)
 -> cast
    ( ?glVertexStream2dATI
    , <<Stream:?GLenum
      , X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       vertexStream2dvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream2dvATI(GLenum stream, const GLdouble* coords)

vertexStream2dvATI(Stream, Coords)
 -> cast
    ( ?glVertexStream2dvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream3sATI
%% Args:       Stream, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexStream3sATI(GLenum stream, GLshort x, GLshort y, GLshort z)

vertexStream3sATI(Stream, X, Y, Z)
 -> cast
    ( ?glVertexStream3sATI
    , <<Stream:?GLenum
      , X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      >>
    )
.

%% Func:       vertexStream3svATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream3svATI(GLenum stream, const GLshort* coords)

vertexStream3svATI(Stream, Coords)
 -> cast
    ( ?glVertexStream3svATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream3iATI
%% Args:       Stream, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexStream3iATI(GLenum stream, GLint x, GLint y, GLint z)

vertexStream3iATI(Stream, X, Y, Z)
 -> cast
    ( ?glVertexStream3iATI
    , <<Stream:?GLenum
      , X:?GLint
      , Y:?GLint
      , Z:?GLint
      >>
    )
.

%% Func:       vertexStream3ivATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream3ivATI(GLenum stream, const GLint* coords)

vertexStream3ivATI(Stream, Coords)
 -> cast
    ( ?glVertexStream3ivATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream3fATI
%% Args:       Stream, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexStream3fATI(GLenum stream, GLfloat x, GLfloat y, GLfloat z)

vertexStream3fATI(Stream, X, Y, Z)
 -> cast
    ( ?glVertexStream3fATI
    , <<Stream:?GLenum
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       vertexStream3fvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream3fvATI(GLenum stream, const GLfloat* coords)

vertexStream3fvATI(Stream, Coords)
 -> cast
    ( ?glVertexStream3fvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream3dATI
%% Args:       Stream, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexStream3dATI(GLenum stream, GLdouble x, GLdouble y, GLdouble z)

vertexStream3dATI(Stream, X, Y, Z)
 -> cast
    ( ?glVertexStream3dATI
    , <<Stream:?GLenum
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       vertexStream3dvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream3dvATI(GLenum stream, const GLdouble* coords)

vertexStream3dvATI(Stream, Coords)
 -> cast
    ( ?glVertexStream3dvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream4sATI
%% Args:       Stream, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexStream4sATI(GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w)

vertexStream4sATI(Stream, X, Y, Z, W)
 -> cast
    ( ?glVertexStream4sATI
    , <<Stream:?GLenum
      , X:?GLshort
      , Y:?GLshort
      , Z:?GLshort
      , W:?GLshort
      >>
    )
.

%% Func:       vertexStream4svATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream4svATI(GLenum stream, const GLshort* coords)

vertexStream4svATI(Stream, Coords)
 -> cast
    ( ?glVertexStream4svATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream4iATI
%% Args:       Stream, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexStream4iATI(GLenum stream, GLint x, GLint y, GLint z, GLint w)

vertexStream4iATI(Stream, X, Y, Z, W)
 -> cast
    ( ?glVertexStream4iATI
    , <<Stream:?GLenum
      , X:?GLint
      , Y:?GLint
      , Z:?GLint
      , W:?GLint
      >>
    )
.

%% Func:       vertexStream4ivATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream4ivATI(GLenum stream, const GLint* coords)

vertexStream4ivATI(Stream, Coords)
 -> cast
    ( ?glVertexStream4ivATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream4fATI
%% Args:       Stream, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexStream4fATI(GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

vertexStream4fATI(Stream, X, Y, Z, W)
 -> cast
    ( ?glVertexStream4fATI
    , <<Stream:?GLenum
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       vertexStream4fvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream4fvATI(GLenum stream, const GLfloat* coords)

vertexStream4fvATI(Stream, Coords)
 -> cast
    ( ?glVertexStream4fvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       vertexStream4dATI
%% Args:       Stream, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexStream4dATI(GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

vertexStream4dATI(Stream, X, Y, Z, W)
 -> cast
    ( ?glVertexStream4dATI
    , <<Stream:?GLenum
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       vertexStream4dvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glVertexStream4dvATI(GLenum stream, const GLdouble* coords)

vertexStream4dvATI(Stream, Coords)
 -> cast
    ( ?glVertexStream4dvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       normalStream3bATI
%% Args:       Stream, Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormalStream3bATI(GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz)

normalStream3bATI(Stream, Nx, Ny, Nz)
 -> cast
    ( ?glNormalStream3bATI
    , <<Stream:?GLenum
      , Nx:?GLbyte
      , Ny:?GLbyte
      , Nz:?GLbyte
      >>
    )
.

%% Func:       normalStream3bvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glNormalStream3bvATI(GLenum stream, const GLbyte* coords)

normalStream3bvATI(Stream, Coords)
 -> cast
    ( ?glNormalStream3bvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       normalStream3sATI
%% Args:       Stream, Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormalStream3sATI(GLenum stream, GLshort nx, GLshort ny, GLshort nz)

normalStream3sATI(Stream, Nx, Ny, Nz)
 -> cast
    ( ?glNormalStream3sATI
    , <<Stream:?GLenum
      , Nx:?GLshort
      , Ny:?GLshort
      , Nz:?GLshort
      >>
    )
.

%% Func:       normalStream3svATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glNormalStream3svATI(GLenum stream, const GLshort* coords)

normalStream3svATI(Stream, Coords)
 -> cast
    ( ?glNormalStream3svATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       normalStream3iATI
%% Args:       Stream, Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormalStream3iATI(GLenum stream, GLint nx, GLint ny, GLint nz)

normalStream3iATI(Stream, Nx, Ny, Nz)
 -> cast
    ( ?glNormalStream3iATI
    , <<Stream:?GLenum
      , Nx:?GLint
      , Ny:?GLint
      , Nz:?GLint
      >>
    )
.

%% Func:       normalStream3ivATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glNormalStream3ivATI(GLenum stream, const GLint* coords)

normalStream3ivATI(Stream, Coords)
 -> cast
    ( ?glNormalStream3ivATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       normalStream3fATI
%% Args:       Stream, Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormalStream3fATI(GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz)

normalStream3fATI(Stream, Nx, Ny, Nz)
 -> cast
    ( ?glNormalStream3fATI
    , <<Stream:?GLenum
      , Nx:?GLfloat
      , Ny:?GLfloat
      , Nz:?GLfloat
      >>
    )
.

%% Func:       normalStream3fvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glNormalStream3fvATI(GLenum stream, const GLfloat* coords)

normalStream3fvATI(Stream, Coords)
 -> cast
    ( ?glNormalStream3fvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       normalStream3dATI
%% Args:       Stream, Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormalStream3dATI(GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz)

normalStream3dATI(Stream, Nx, Ny, Nz)
 -> cast
    ( ?glNormalStream3dATI
    , <<Stream:?GLenum
      , Nx:?GLdouble
      , Ny:?GLdouble
      , Nz:?GLdouble
      >>
    )
.

%% Func:       normalStream3dvATI
%% Args:       Stream, Coords
%% Returns:    ok
%% C-API func: void glNormalStream3dvATI(GLenum stream, const GLdouble* coords)

normalStream3dvATI(Stream, Coords)
 -> cast
    ( ?glNormalStream3dvATI
    , <<Stream:?GLenum
      , Coords:?_PTR
      >>
    )
.

%% Func:       clientActiveVertexStreamATI
%% Args:       Stream
%% Returns:    ok
%% C-API func: void glClientActiveVertexStreamATI(GLenum stream)

clientActiveVertexStreamATI(Stream)
 -> cast
    ( ?glClientActiveVertexStreamATI
    , <<Stream:?GLenum
      >>
    )
.

%% Func:       vertexBlendEnviATI
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glVertexBlendEnviATI(GLenum pname, GLint param)

vertexBlendEnviATI(Pname, Param)
 -> cast
    ( ?glVertexBlendEnviATI
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       vertexBlendEnvfATI
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glVertexBlendEnvfATI(GLenum pname, GLfloat param)

vertexBlendEnvfATI(Pname, Param)
 -> cast
    ( ?glVertexBlendEnvfATI
    , <<Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% GL_ATI_element_array

%% Func:       elementPointerATI
%% Args:       Type, Pointer
%% Returns:    ok
%% C-API func: void glElementPointerATI(GLenum type, const GLvoid* pointer)

elementPointerATI(Type, Pointer)
 -> cast
    ( ?glElementPointerATI
    , <<Type:?GLenum
      , Pointer:?_PTR
      >>
    )
.

%% Func:       drawElementArrayATI
%% Args:       Mode, Count
%% Returns:    ok
%% C-API func: void glDrawElementArrayATI(GLenum mode, GLsizei count)

drawElementArrayATI(Mode, Count)
 -> cast
    ( ?glDrawElementArrayATI
    , <<Mode:?GLenum
      , Count:?GLsizei
      >>
    )
.

%% Func:       drawRangeElementArrayATI
%% Args:       Mode, Start, End, Count
%% Returns:    ok
%% C-API func: void glDrawRangeElementArrayATI(GLenum mode, GLuint start, GLuint end, GLsizei count)

drawRangeElementArrayATI(Mode, Start, End, Count)
 -> cast
    ( ?glDrawRangeElementArrayATI
    , <<Mode:?GLenum
      , Start:?GLuint
      , End:?GLuint
      , Count:?GLsizei
      >>
    )
.

%% GL_SUN_mesh_array

%% Func:       drawMeshArraysSUN
%% Args:       Mode, First, Count, Width
%% Returns:    ok
%% C-API func: void glDrawMeshArraysSUN(GLenum mode, GLint first, GLsizei count, GLsizei width)

drawMeshArraysSUN(Mode, First, Count, Width)
 -> cast
    ( ?glDrawMeshArraysSUN
    , <<Mode:?GLenum
      , First:?GLint
      , Count:?GLsizei
      , Width:?GLsizei
      >>
    )
.

%% GL_SUN_slice_accum
%% GL_NV_multisample_filter_hint
%% GL_NV_depth_clamp
%% GL_NV_occlusion_query

%% Func:       genOcclusionQueriesNV
%% Args:       N, Ids
%% Returns:    ok
%% C-API func: void glGenOcclusionQueriesNV(GLsizei n, GLuint* ids)

genOcclusionQueriesNV(N, Ids)
 -> cast
    ( ?glGenOcclusionQueriesNV
    , <<N:?GLsizei
      , Ids:?_PTR
      >>
    )
.

%% Func:       deleteOcclusionQueriesNV
%% Args:       N, Ids
%% Returns:    ok
%% C-API func: void glDeleteOcclusionQueriesNV(GLsizei n, const GLuint* ids)

deleteOcclusionQueriesNV(N, Ids)
 -> cast
    ( ?glDeleteOcclusionQueriesNV
    , <<N:?GLsizei
      , Ids:?_PTR
      >>
    )
.

%% Func:       isOcclusionQueryNV
%% Args:       Id
%% Returns:    GLboolean
%% C-API func: GLboolean glIsOcclusionQueryNV(GLuint id)

isOcclusionQueryNV(Id)
 -> Bin
    = call
      ( ?glIsOcclusionQueryNV
      , <<Id:?GLuint
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

%% Func:       beginOcclusionQueryNV
%% Args:       Id
%% Returns:    ok
%% C-API func: void glBeginOcclusionQueryNV(GLuint id)

beginOcclusionQueryNV(Id)
 -> cast
    ( ?glBeginOcclusionQueryNV
    , <<Id:?GLuint
      >>
    )
.

%% Func:       endOcclusionQueryNV
%% Args:       
%% Returns:    ok
%% C-API func: void glEndOcclusionQueryNV()

endOcclusionQueryNV()
 -> cast
    ( ?glEndOcclusionQueryNV
    , <<
      >>
    )
.

%% Func:       getOcclusionQueryivNV
%% Args:       Id, Pname
%% Returns:    [Params]
%% C-API func: void glGetOcclusionQueryivNV(GLuint id, GLenum pname, GLint* params)

getOcclusionQueryivNV(Id, Pname, Params)
 -> Bin
    = call
      ( ?glGetOcclusionQueryivNV
      , <<Id:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetOcclusionQueryivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getOcclusionQueryuivNV
%% Args:       Id, Pname, Params
%% Returns:    ok
%% C-API func: void glGetOcclusionQueryuivNV(GLuint id, GLenum pname, GLuint* params)

getOcclusionQueryuivNV(Id, Pname, Params)
 -> cast
    ( ?glGetOcclusionQueryuivNV
    , <<Id:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% GL_NV_point_sprite

%% Func:       pointParameteriNV
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glPointParameteriNV(GLenum pname, GLint param)

pointParameteriNV(Pname, Param)
 -> cast
    ( ?glPointParameteriNV
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       pointParameterivNV
%% Args:       Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glPointParameterivNV(GLenum pname, const GLint* params)

pointParameterivNV(Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glPointParameterivNV
    , [ <<Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% GL_NV_texture_shader3
%% GL_NV_vertex_program1_1
%% GL_EXT_shadow_funcs
%% GL_EXT_stencil_two_side

%% Func:       activeStencilFaceEXT
%% Args:       Face
%% Returns:    ok
%% C-API func: void glActiveStencilFaceEXT(GLenum face)

activeStencilFaceEXT(Face)
 -> cast
    ( ?glActiveStencilFaceEXT
    , <<Face:?GLenum
      >>
    )
.

%% GL_ATI_text_fragment_shader
%% GL_APPLE_client_storage
%% GL_APPLE_element_array

%% Func:       elementPointerAPPLE
%% Args:       Type, Pointer
%% Returns:    ok
%% C-API func: void glElementPointerAPPLE(GLenum type, const GLvoid* pointer)

elementPointerAPPLE(Type, Pointer)
 -> cast
    ( ?glElementPointerAPPLE
    , <<Type:?GLenum
      , Pointer:?_PTR
      >>
    )
.

%% Func:       drawElementArrayAPPLE
%% Args:       Mode, First, Count
%% Returns:    ok
%% C-API func: void glDrawElementArrayAPPLE(GLenum mode, GLint first, GLsizei count)

drawElementArrayAPPLE(Mode, First, Count)
 -> cast
    ( ?glDrawElementArrayAPPLE
    , <<Mode:?GLenum
      , First:?GLint
      , Count:?GLsizei
      >>
    )
.

%% Func:       drawRangeElementArrayAPPLE
%% Args:       Mode, Start, End, First, Count
%% Returns:    ok
%% C-API func: void glDrawRangeElementArrayAPPLE(GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count)

drawRangeElementArrayAPPLE(Mode, Start, End, First, Count)
 -> cast
    ( ?glDrawRangeElementArrayAPPLE
    , <<Mode:?GLenum
      , Start:?GLuint
      , End:?GLuint
      , First:?GLint
      , Count:?GLsizei
      >>
    )
.

%% Func:       multiDrawElementArrayAPPLE
%% Args:       Mode, First, Count, Primcount
%% Returns:    ok
%% C-API func: void glMultiDrawElementArrayAPPLE(GLenum mode, const GLint* first, const GLsizei* count, GLsizei primcount)

multiDrawElementArrayAPPLE(Mode, First, Count, Primcount)
 -> cast
    ( ?glMultiDrawElementArrayAPPLE
    , <<Mode:?GLenum
      , First:?_PTR
      , Count:?_PTR
      , Primcount:?GLsizei
      >>
    )
.

%% Func:       multiDrawRangeElementArrayAPPLE
%% Args:       Mode, Start, End, First, Count, Primcount
%% Returns:    ok
%% C-API func: void glMultiDrawRangeElementArrayAPPLE(GLenum mode, GLuint start, GLuint end, const GLint* first, const GLsizei* count, GLsizei primcount)

multiDrawRangeElementArrayAPPLE(Mode, Start, End, First, Count, Primcount)
 -> cast
    ( ?glMultiDrawRangeElementArrayAPPLE
    , <<Mode:?GLenum
      , Start:?GLuint
      , End:?GLuint
      , First:?_PTR
      , Count:?_PTR
      , Primcount:?GLsizei
      >>
    )
.

%% GL_APPLE_fence

%% Func:       genFencesAPPLE
%% Args:       N, Fences
%% Returns:    ok
%% C-API func: void glGenFencesAPPLE(GLsizei n, GLuint* fences)

genFencesAPPLE(N, Fences)
 -> cast
    ( ?glGenFencesAPPLE
    , <<N:?GLsizei
      , Fences:?_PTR
      >>
    )
.

%% Func:       deleteFencesAPPLE
%% Args:       N, Fences
%% Returns:    ok
%% C-API func: void glDeleteFencesAPPLE(GLsizei n, const GLuint* fences)

deleteFencesAPPLE(N, Fences)
 -> cast
    ( ?glDeleteFencesAPPLE
    , <<N:?GLsizei
      , Fences:?_PTR
      >>
    )
.

%% Func:       setFenceAPPLE
%% Args:       Fence
%% Returns:    ok
%% C-API func: void glSetFenceAPPLE(GLuint fence)

setFenceAPPLE(Fence)
 -> cast
    ( ?glSetFenceAPPLE
    , <<Fence:?GLuint
      >>
    )
.

%% Func:       isFenceAPPLE
%% Args:       Fence
%% Returns:    GLboolean
%% C-API func: GLboolean glIsFenceAPPLE(GLuint fence)

isFenceAPPLE(Fence)
 -> Bin
    = call
      ( ?glIsFenceAPPLE
      , <<Fence:?GLuint
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

%% Func:       testFenceAPPLE
%% Args:       Fence
%% Returns:    GLboolean
%% C-API func: GLboolean glTestFenceAPPLE(GLuint fence)

testFenceAPPLE(Fence)
 -> Bin
    = call
      ( ?glTestFenceAPPLE
      , <<Fence:?GLuint
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

%% Func:       finishFenceAPPLE
%% Args:       Fence
%% Returns:    ok
%% C-API func: void glFinishFenceAPPLE(GLuint fence)

finishFenceAPPLE(Fence)
 -> cast
    ( ?glFinishFenceAPPLE
    , <<Fence:?GLuint
      >>
    )
.

%% Func:       testObjectAPPLE
%% Args:       Object, Name
%% Returns:    GLboolean
%% C-API func: GLboolean glTestObjectAPPLE(GLenum object, GLuint name)

testObjectAPPLE(Object, Name)
 -> Bin
    = call
      ( ?glTestObjectAPPLE
      , <<Object:?GLenum
        , Name:?GLuint
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

%% Func:       finishObjectAPPLE
%% Args:       Object, Name
%% Returns:    ok
%% C-API func: void glFinishObjectAPPLE(GLenum object, GLint name)

finishObjectAPPLE(Object, Name)
 -> cast
    ( ?glFinishObjectAPPLE
    , <<Object:?GLenum
      , Name:?GLint
      >>
    )
.

%% GL_APPLE_vertex_array_object

%% Func:       bindVertexArrayAPPLE
%% Args:       Array
%% Returns:    ok
%% C-API func: void glBindVertexArrayAPPLE(GLuint array)

bindVertexArrayAPPLE(Array)
 -> cast
    ( ?glBindVertexArrayAPPLE
    , <<Array:?GLuint
      >>
    )
.

%% Func:       deleteVertexArraysAPPLE
%% Args:       N, Arrays
%% Returns:    ok
%% C-API func: void glDeleteVertexArraysAPPLE(GLsizei n, const GLuint* arrays)

deleteVertexArraysAPPLE(N, Arrays)
 -> cast
    ( ?glDeleteVertexArraysAPPLE
    , <<N:?GLsizei
      , Arrays:?_PTR
      >>
    )
.

%% Func:       genVertexArraysAPPLE
%% Args:       N, Arrays
%% Returns:    ok
%% C-API func: void glGenVertexArraysAPPLE(GLsizei n, GLuint* arrays)

genVertexArraysAPPLE(N, Arrays)
 -> cast
    ( ?glGenVertexArraysAPPLE
    , <<N:?GLsizei
      , Arrays:?_PTR
      >>
    )
.

%% Func:       isVertexArrayAPPLE
%% Args:       Array
%% Returns:    GLboolean
%% C-API func: GLboolean glIsVertexArrayAPPLE(GLuint array)

isVertexArrayAPPLE(Array)
 -> Bin
    = call
      ( ?glIsVertexArrayAPPLE
      , <<Array:?GLuint
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

%% GL_APPLE_vertex_array_range

%% Func:       vertexArrayRangeAPPLE
%% Args:       Length, Pointer
%% Returns:    ok
%% C-API func: void glVertexArrayRangeAPPLE(GLsizei length, GLvoid* pointer)

vertexArrayRangeAPPLE(Length, Pointer)
 -> cast
    ( ?glVertexArrayRangeAPPLE
    , <<Length:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       flushVertexArrayRangeAPPLE
%% Args:       Length, Pointer
%% Returns:    ok
%% C-API func: void glFlushVertexArrayRangeAPPLE(GLsizei length, GLvoid* pointer)

flushVertexArrayRangeAPPLE(Length, Pointer)
 -> cast
    ( ?glFlushVertexArrayRangeAPPLE
    , <<Length:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       vertexArrayParameteriAPPLE
%% Args:       Pname, Param
%% Returns:    ok
%% C-API func: void glVertexArrayParameteriAPPLE(GLenum pname, GLint param)

vertexArrayParameteriAPPLE(Pname, Param)
 -> cast
    ( ?glVertexArrayParameteriAPPLE
    , <<Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% GL_APPLE_ycbcr_422
%% GL_S3_s3tc
%% GL_ATI_draw_buffers

%% Func:       drawBuffersATI
%% Args:       N, Bufs
%% Returns:    ok
%% C-API func: void glDrawBuffersATI(GLsizei n, const GLenum* bufs)

drawBuffersATI(N, Bufs)
 -> cast
    ( ?glDrawBuffersATI
    , <<N:?GLsizei
      , Bufs:?_PTR
      >>
    )
.

%% GL_ATI_pixel_format_float
%% GL_ATI_texture_env_combine3
%% GL_ATI_texture_float
%% GL_NV_float_buffer
%% GL_NV_fragment_program

%% Func:       programNamedParameter4fNV
%% Args:       Id, Len, Name, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramNamedParameter4fNV(GLuint id, GLsizei len, const GLubyte* name, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

programNamedParameter4fNV(Id, Len, Name, X, Y, Z, W)
 -> cast
    ( ?glProgramNamedParameter4fNV
    , <<Id:?GLuint
      , Len:?GLsizei
      , Name:?_PTR
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       programNamedParameter4dNV
%% Args:       Id, Len, Name, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramNamedParameter4dNV(GLuint id, GLsizei len, const GLubyte* name, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

programNamedParameter4dNV(Id, Len, Name, X, Y, Z, W)
 -> cast
    ( ?glProgramNamedParameter4dNV
    , <<Id:?GLuint
      , Len:?GLsizei
      , Name:?_PTR
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       programNamedParameter4fvNV
%% Args:       Id, Len, Name, V
%% Returns:    ok
%% C-API func: void glProgramNamedParameter4fvNV(GLuint id, GLsizei len, const GLubyte* name, const GLfloat* v)

programNamedParameter4fvNV(Id, Len, Name, V)
 -> cast
    ( ?glProgramNamedParameter4fvNV
    , <<Id:?GLuint
      , Len:?GLsizei
      , Name:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       programNamedParameter4dvNV
%% Args:       Id, Len, Name, V
%% Returns:    ok
%% C-API func: void glProgramNamedParameter4dvNV(GLuint id, GLsizei len, const GLubyte* name, const GLdouble* v)

programNamedParameter4dvNV(Id, Len, Name, V)
 -> cast
    ( ?glProgramNamedParameter4dvNV
    , <<Id:?GLuint
      , Len:?GLsizei
      , Name:?_PTR
      , V:?_PTR
      >>
    )
.

%% Func:       getProgramNamedParameterfvNV
%% Args:       Id, Len, Name
%% Returns:    [Params]
%% C-API func: void glGetProgramNamedParameterfvNV(GLuint id, GLsizei len, const GLubyte* name, GLfloat* params)

getProgramNamedParameterfvNV(Id, Len, Name, Params)
 -> Bin
    = call
      ( ?glGetProgramNamedParameterfvNV
      , <<Id:?GLuint
        , Len:?GLsizei
        , Name:?_PTR
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

%% Func:       getProgramNamedParameterdvNV
%% Args:       Id, Len, Name, Params
%% Returns:    ok
%% C-API func: void glGetProgramNamedParameterdvNV(GLuint id, GLsizei len, const GLubyte* name, GLdouble* params)

getProgramNamedParameterdvNV(Id, Len, Name, Params)
 -> cast
    ( ?glGetProgramNamedParameterdvNV
    , <<Id:?GLuint
      , Len:?GLsizei
      , Name:?_PTR
      , Params:?_PTR
      >>
    )
.

%% GL_NV_half_float

%% Func:       vertex2hNV
%% Args:       X, Y
%% Returns:    ok
%% C-API func: void glVertex2hNV(GLhalfNV x, GLhalfNV y)

vertex2hNV(X, Y)
 -> cast
    ( ?glVertex2hNV
    , <<X:?GLhalfNV
      , Y:?GLhalfNV
      >>
    )
.

%% Func:       vertex2hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex2hvNV(const GLhalfNV* v)

vertex2hvNV(V)
 -> cast
    ( ?glVertex2hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex3hNV
%% Args:       X, Y, Z
%% Returns:    ok
%% C-API func: void glVertex3hNV(GLhalfNV x, GLhalfNV y, GLhalfNV z)

vertex3hNV(X, Y, Z)
 -> cast
    ( ?glVertex3hNV
    , <<X:?GLhalfNV
      , Y:?GLhalfNV
      , Z:?GLhalfNV
      >>
    )
.

%% Func:       vertex3hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex3hvNV(const GLhalfNV* v)

vertex3hvNV(V)
 -> cast
    ( ?glVertex3hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertex4hNV
%% Args:       X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertex4hNV(GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w)

vertex4hNV(X, Y, Z, W)
 -> cast
    ( ?glVertex4hNV
    , <<X:?GLhalfNV
      , Y:?GLhalfNV
      , Z:?GLhalfNV
      , W:?GLhalfNV
      >>
    )
.

%% Func:       vertex4hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glVertex4hvNV(const GLhalfNV* v)

vertex4hvNV(V)
 -> cast
    ( ?glVertex4hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       normal3hNV
%% Args:       Nx, Ny, Nz
%% Returns:    ok
%% C-API func: void glNormal3hNV(GLhalfNV nx, GLhalfNV ny, GLhalfNV nz)

normal3hNV(Nx, Ny, Nz)
 -> cast
    ( ?glNormal3hNV
    , <<Nx:?GLhalfNV
      , Ny:?GLhalfNV
      , Nz:?GLhalfNV
      >>
    )
.

%% Func:       normal3hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glNormal3hvNV(const GLhalfNV* v)

normal3hvNV(V)
 -> cast
    ( ?glNormal3hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       color3hNV
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glColor3hNV(GLhalfNV red, GLhalfNV green, GLhalfNV blue)

color3hNV(Red, Green, Blue)
 -> cast
    ( ?glColor3hNV
    , <<Red:?GLhalfNV
      , Green:?GLhalfNV
      , Blue:?GLhalfNV
      >>
    )
.

%% Func:       color3hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor3hvNV(const GLhalfNV* v)

color3hvNV(V)
 -> cast
    ( ?glColor3hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       color4hNV
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glColor4hNV(GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha)

color4hNV(Red, Green, Blue, Alpha)
 -> cast
    ( ?glColor4hNV
    , <<Red:?GLhalfNV
      , Green:?GLhalfNV
      , Blue:?GLhalfNV
      , Alpha:?GLhalfNV
      >>
    )
.

%% Func:       color4hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glColor4hvNV(const GLhalfNV* v)

color4hvNV(V)
 -> cast
    ( ?glColor4hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord1hNV
%% Args:       S
%% Returns:    ok
%% C-API func: void glTexCoord1hNV(GLhalfNV s)

texCoord1hNV(S)
 -> cast
    ( ?glTexCoord1hNV
    , <<S:?GLhalfNV
      >>
    )
.

%% Func:       texCoord1hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord1hvNV(const GLhalfNV* v)

texCoord1hvNV(V)
 -> cast
    ( ?glTexCoord1hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord2hNV
%% Args:       S, T
%% Returns:    ok
%% C-API func: void glTexCoord2hNV(GLhalfNV s, GLhalfNV t)

texCoord2hNV(S, T)
 -> cast
    ( ?glTexCoord2hNV
    , <<S:?GLhalfNV
      , T:?GLhalfNV
      >>
    )
.

%% Func:       texCoord2hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord2hvNV(const GLhalfNV* v)

texCoord2hvNV(V)
 -> cast
    ( ?glTexCoord2hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord3hNV
%% Args:       S, T, R
%% Returns:    ok
%% C-API func: void glTexCoord3hNV(GLhalfNV s, GLhalfNV t, GLhalfNV r)

texCoord3hNV(S, T, R)
 -> cast
    ( ?glTexCoord3hNV
    , <<S:?GLhalfNV
      , T:?GLhalfNV
      , R:?GLhalfNV
      >>
    )
.

%% Func:       texCoord3hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord3hvNV(const GLhalfNV* v)

texCoord3hvNV(V)
 -> cast
    ( ?glTexCoord3hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       texCoord4hNV
%% Args:       S, T, R, Q
%% Returns:    ok
%% C-API func: void glTexCoord4hNV(GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q)

texCoord4hNV(S, T, R, Q)
 -> cast
    ( ?glTexCoord4hNV
    , <<S:?GLhalfNV
      , T:?GLhalfNV
      , R:?GLhalfNV
      , Q:?GLhalfNV
      >>
    )
.

%% Func:       texCoord4hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glTexCoord4hvNV(const GLhalfNV* v)

texCoord4hvNV(V)
 -> cast
    ( ?glTexCoord4hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord1hNV
%% Args:       Target, S
%% Returns:    ok
%% C-API func: void glMultiTexCoord1hNV(GLenum target, GLhalfNV s)

multiTexCoord1hNV(Target, S)
 -> cast
    ( ?glMultiTexCoord1hNV
    , <<Target:?GLenum
      , S:?GLhalfNV
      >>
    )
.

%% Func:       multiTexCoord1hvNV
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord1hvNV(GLenum target, const GLhalfNV* v)

multiTexCoord1hvNV(Target, V)
 -> cast
    ( ?glMultiTexCoord1hvNV
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord2hNV
%% Args:       Target, S, T
%% Returns:    ok
%% C-API func: void glMultiTexCoord2hNV(GLenum target, GLhalfNV s, GLhalfNV t)

multiTexCoord2hNV(Target, S, T)
 -> cast
    ( ?glMultiTexCoord2hNV
    , <<Target:?GLenum
      , S:?GLhalfNV
      , T:?GLhalfNV
      >>
    )
.

%% Func:       multiTexCoord2hvNV
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord2hvNV(GLenum target, const GLhalfNV* v)

multiTexCoord2hvNV(Target, V)
 -> cast
    ( ?glMultiTexCoord2hvNV
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord3hNV
%% Args:       Target, S, T, R
%% Returns:    ok
%% C-API func: void glMultiTexCoord3hNV(GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r)

multiTexCoord3hNV(Target, S, T, R)
 -> cast
    ( ?glMultiTexCoord3hNV
    , <<Target:?GLenum
      , S:?GLhalfNV
      , T:?GLhalfNV
      , R:?GLhalfNV
      >>
    )
.

%% Func:       multiTexCoord3hvNV
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord3hvNV(GLenum target, const GLhalfNV* v)

multiTexCoord3hvNV(Target, V)
 -> cast
    ( ?glMultiTexCoord3hvNV
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       multiTexCoord4hNV
%% Args:       Target, S, T, R, Q
%% Returns:    ok
%% C-API func: void glMultiTexCoord4hNV(GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q)

multiTexCoord4hNV(Target, S, T, R, Q)
 -> cast
    ( ?glMultiTexCoord4hNV
    , <<Target:?GLenum
      , S:?GLhalfNV
      , T:?GLhalfNV
      , R:?GLhalfNV
      , Q:?GLhalfNV
      >>
    )
.

%% Func:       multiTexCoord4hvNV
%% Args:       Target, V
%% Returns:    ok
%% C-API func: void glMultiTexCoord4hvNV(GLenum target, const GLhalfNV* v)

multiTexCoord4hvNV(Target, V)
 -> cast
    ( ?glMultiTexCoord4hvNV
    , <<Target:?GLenum
      , V:?_PTR
      >>
    )
.

%% Func:       fogCoordhNV
%% Args:       Fog
%% Returns:    ok
%% C-API func: void glFogCoordhNV(GLhalfNV fog)

fogCoordhNV(Fog)
 -> cast
    ( ?glFogCoordhNV
    , <<Fog:?GLhalfNV
      >>
    )
.

%% Func:       fogCoordhvNV
%% Args:       Fog
%% Returns:    ok
%% C-API func: void glFogCoordhvNV(const GLhalfNV* fog)

fogCoordhvNV(Fog)
 -> cast
    ( ?glFogCoordhvNV
    , <<Fog:?_PTR
      >>
    )
.

%% Func:       secondaryColor3hNV
%% Args:       Red, Green, Blue
%% Returns:    ok
%% C-API func: void glSecondaryColor3hNV(GLhalfNV red, GLhalfNV green, GLhalfNV blue)

secondaryColor3hNV(Red, Green, Blue)
 -> cast
    ( ?glSecondaryColor3hNV
    , <<Red:?GLhalfNV
      , Green:?GLhalfNV
      , Blue:?GLhalfNV
      >>
    )
.

%% Func:       secondaryColor3hvNV
%% Args:       V
%% Returns:    ok
%% C-API func: void glSecondaryColor3hvNV(const GLhalfNV* v)

secondaryColor3hvNV(V)
 -> cast
    ( ?glSecondaryColor3hvNV
    , <<V:?_PTR
      >>
    )
.

%% Func:       vertexWeighthNV
%% Args:       Weight
%% Returns:    ok
%% C-API func: void glVertexWeighthNV(GLhalfNV weight)

vertexWeighthNV(Weight)
 -> cast
    ( ?glVertexWeighthNV
    , <<Weight:?GLhalfNV
      >>
    )
.

%% Func:       vertexWeighthvNV
%% Args:       Weight
%% Returns:    ok
%% C-API func: void glVertexWeighthvNV(const GLhalfNV* weight)

vertexWeighthvNV(Weight)
 -> cast
    ( ?glVertexWeighthvNV
    , <<Weight:?_PTR
      >>
    )
.

%% Func:       vertexAttrib1hNV
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttrib1hNV(GLuint index, GLhalfNV x)

vertexAttrib1hNV(Index, X)
 -> cast
    ( ?glVertexAttrib1hNV
    , <<Index:?GLuint
      , X:?GLhalfNV
      >>
    )
.

%% Func:       vertexAttrib1hvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib1hvNV(GLuint index, const GLhalfNV* v)

vertexAttrib1hvNV(Index, V)
 -> cast
    ( ?glVertexAttrib1hvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib2hNV
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttrib2hNV(GLuint index, GLhalfNV x, GLhalfNV y)

vertexAttrib2hNV(Index, X, Y)
 -> cast
    ( ?glVertexAttrib2hNV
    , <<Index:?GLuint
      , X:?GLhalfNV
      , Y:?GLhalfNV
      >>
    )
.

%% Func:       vertexAttrib2hvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib2hvNV(GLuint index, const GLhalfNV* v)

vertexAttrib2hvNV(Index, V)
 -> cast
    ( ?glVertexAttrib2hvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib3hNV
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttrib3hNV(GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z)

vertexAttrib3hNV(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttrib3hNV
    , <<Index:?GLuint
      , X:?GLhalfNV
      , Y:?GLhalfNV
      , Z:?GLhalfNV
      >>
    )
.

%% Func:       vertexAttrib3hvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib3hvNV(GLuint index, const GLhalfNV* v)

vertexAttrib3hvNV(Index, V)
 -> cast
    ( ?glVertexAttrib3hvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttrib4hNV
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttrib4hNV(GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w)

vertexAttrib4hNV(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttrib4hNV
    , <<Index:?GLuint
      , X:?GLhalfNV
      , Y:?GLhalfNV
      , Z:?GLhalfNV
      , W:?GLhalfNV
      >>
    )
.

%% Func:       vertexAttrib4hvNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttrib4hvNV(GLuint index, const GLhalfNV* v)

vertexAttrib4hvNV(Index, V)
 -> cast
    ( ?glVertexAttrib4hvNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs1hvNV
%% Args:       Index, N, V
%% Returns:    ok
%% C-API func: void glVertexAttribs1hvNV(GLuint index, GLsizei n, const GLhalfNV* v)

vertexAttribs1hvNV(Index, N, V)
 -> cast
    ( ?glVertexAttribs1hvNV
    , <<Index:?GLuint
      , N:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs2hvNV
%% Args:       Index, N, V
%% Returns:    ok
%% C-API func: void glVertexAttribs2hvNV(GLuint index, GLsizei n, const GLhalfNV* v)

vertexAttribs2hvNV(Index, N, V)
 -> cast
    ( ?glVertexAttribs2hvNV
    , <<Index:?GLuint
      , N:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs3hvNV
%% Args:       Index, N, V
%% Returns:    ok
%% C-API func: void glVertexAttribs3hvNV(GLuint index, GLsizei n, const GLhalfNV* v)

vertexAttribs3hvNV(Index, N, V)
 -> cast
    ( ?glVertexAttribs3hvNV
    , <<Index:?GLuint
      , N:?GLsizei
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribs4hvNV
%% Args:       Index, N, V
%% Returns:    ok
%% C-API func: void glVertexAttribs4hvNV(GLuint index, GLsizei n, const GLhalfNV* v)

vertexAttribs4hvNV(Index, N, V)
 -> cast
    ( ?glVertexAttribs4hvNV
    , <<Index:?GLuint
      , N:?GLsizei
      , V:?_PTR
      >>
    )
.

%% GL_NV_pixel_data_range

%% Func:       pixelDataRangeNV
%% Args:       Target, Length, Pointer
%% Returns:    ok
%% C-API func: void glPixelDataRangeNV(GLenum target, GLsizei length, GLvoid* pointer)

pixelDataRangeNV(Target, Length, Pointer)
 -> cast
    ( ?glPixelDataRangeNV
    , <<Target:?GLenum
      , Length:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       flushPixelDataRangeNV
%% Args:       Target
%% Returns:    ok
%% C-API func: void glFlushPixelDataRangeNV(GLenum target)

flushPixelDataRangeNV(Target)
 -> cast
    ( ?glFlushPixelDataRangeNV
    , <<Target:?GLenum
      >>
    )
.

%% GL_NV_primitive_restart

%% Func:       primitiveRestartNV
%% Args:       
%% Returns:    ok
%% C-API func: void glPrimitiveRestartNV()

primitiveRestartNV()
 -> cast
    ( ?glPrimitiveRestartNV
    , <<
      >>
    )
.

%% Func:       primitiveRestartIndexNV
%% Args:       Index
%% Returns:    ok
%% C-API func: void glPrimitiveRestartIndexNV(GLuint index)

primitiveRestartIndexNV(Index)
 -> cast
    ( ?glPrimitiveRestartIndexNV
    , <<Index:?GLuint
      >>
    )
.

%% GL_NV_texture_expand_normal
%% GL_NV_vertex_program2
%% GL_ATI_map_object_buffer

%% Func:       mapObjectBufferATI
%% Args:       Buffer
%% Returns:    ok
%% C-API func: GLvoid* glMapObjectBufferATI(GLuint buffer)

mapObjectBufferATI(Buffer)
 -> cast
    ( ?glMapObjectBufferATI
    , <<Buffer:?GLuint
      >>
    )
.

%% Func:       unmapObjectBufferATI
%% Args:       Buffer
%% Returns:    ok
%% C-API func: void glUnmapObjectBufferATI(GLuint buffer)

unmapObjectBufferATI(Buffer)
 -> cast
    ( ?glUnmapObjectBufferATI
    , <<Buffer:?GLuint
      >>
    )
.

%% GL_ATI_separate_stencil

%% Func:       stencilOpSeparateATI
%% Args:       Face, Sfail, Dpfail, Dppass
%% Returns:    ok
%% C-API func: void glStencilOpSeparateATI(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)

stencilOpSeparateATI(Face, Sfail, Dpfail, Dppass)
 -> cast
    ( ?glStencilOpSeparateATI
    , <<Face:?GLenum
      , Sfail:?GLenum
      , Dpfail:?GLenum
      , Dppass:?GLenum
      >>
    )
.

%% Func:       stencilFuncSeparateATI
%% Args:       Frontfunc, Backfunc, Ref, Mask
%% Returns:    ok
%% C-API func: void glStencilFuncSeparateATI(GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask)

stencilFuncSeparateATI(Frontfunc, Backfunc, Ref, Mask)
 -> cast
    ( ?glStencilFuncSeparateATI
    , <<Frontfunc:?GLenum
      , Backfunc:?GLenum
      , Ref:?GLint
      , Mask:?GLuint
      >>
    )
.

%% GL_ATI_vertex_attrib_array_object

%% Func:       vertexAttribArrayObjectATI
%% Args:       Index, Size, Type, Normalized, Stride, Buffer, Offset
%% Returns:    ok
%% C-API func: void glVertexAttribArrayObjectATI(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset)

vertexAttribArrayObjectATI(Index, Size, Type, Normalized, Stride, Buffer, Offset)
 -> cast
    ( ?glVertexAttribArrayObjectATI
    , <<Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Stride:?GLsizei
      , Buffer:?GLuint
      , Offset:?GLuint
      >>
    )
.

%% Func:       getVertexAttribArrayObjectfvATI
%% Args:       Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetVertexAttribArrayObjectfvATI(GLuint index, GLenum pname, GLfloat* params)

getVertexAttribArrayObjectfvATI(Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetVertexAttribArrayObjectfvATI
      , <<Index:?GLuint
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

%% Func:       getVertexAttribArrayObjectivATI
%% Args:       Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetVertexAttribArrayObjectivATI(GLuint index, GLenum pname, GLint* params)

getVertexAttribArrayObjectivATI(Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetVertexAttribArrayObjectivATI
      , <<Index:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetVertexAttribArrayObjectivATILen
      ( Pname
      )
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
           , ?GLint
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

%% GL_OES_read_format
%% GL_EXT_depth_bounds_test

%% Func:       depthBoundsEXT
%% Args:       Zmin, Zmax
%% Returns:    ok
%% C-API func: void glDepthBoundsEXT(GLclampd zmin, GLclampd zmax)

depthBoundsEXT(Zmin, Zmax)
 -> cast
    ( ?glDepthBoundsEXT
    , <<Zmin:?GLclampd
      , Zmax:?GLclampd
      >>
    )
.

%% GL_EXT_texture_mirror_clamp
%% GL_EXT_blend_equation_separate

%% Func:       blendEquationSeparateEXT
%% Args:       ModeRGB, ModeAlpha
%% Returns:    ok
%% C-API func: void glBlendEquationSeparateEXT(GLenum modeRGB, GLenum modeAlpha)

blendEquationSeparateEXT(ModeRGB, ModeAlpha)
 -> cast
    ( ?glBlendEquationSeparateEXT
    , <<ModeRGB:?GLenum
      , ModeAlpha:?GLenum
      >>
    )
.

%% GL_MESA_pack_invert
%% GL_MESA_ycbcr_texture
%% GL_EXT_pixel_buffer_object
%% GL_NV_fragment_program_option
%% GL_NV_fragment_program2
%% GL_NV_vertex_program2_option
%% GL_NV_vertex_program3
%% GL_EXT_framebuffer_object

%% Func:       isRenderbufferEXT
%% Args:       Renderbuffer
%% Returns:    GLboolean
%% C-API func: GLboolean glIsRenderbufferEXT(GLuint renderbuffer)

isRenderbufferEXT(Renderbuffer)
 -> Bin
    = call
      ( ?glIsRenderbufferEXT
      , <<Renderbuffer:?GLuint
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

%% Func:       bindRenderbufferEXT
%% Args:       Target, Renderbuffer
%% Returns:    ok
%% C-API func: void glBindRenderbufferEXT(GLenum target, GLuint renderbuffer)

bindRenderbufferEXT(Target, Renderbuffer)
 -> cast
    ( ?glBindRenderbufferEXT
    , <<Target:?GLenum
      , Renderbuffer:?GLuint
      >>
    )
.

%% Func:       deleteRenderbuffersEXT
%% Args:       N, Renderbuffers
%% Returns:    ok
%% C-API func: void glDeleteRenderbuffersEXT(GLsizei n, const GLuint* renderbuffers)

deleteRenderbuffersEXT(N, Renderbuffers)
 -> cast
    ( ?glDeleteRenderbuffersEXT
    , <<N:?GLsizei
      , Renderbuffers:?_PTR
      >>
    )
.

%% Func:       genRenderbuffersEXT
%% Args:       N, Renderbuffers
%% Returns:    ok
%% C-API func: void glGenRenderbuffersEXT(GLsizei n, GLuint* renderbuffers)

genRenderbuffersEXT(N, Renderbuffers)
 -> cast
    ( ?glGenRenderbuffersEXT
    , <<N:?GLsizei
      , Renderbuffers:?_PTR
      >>
    )
.

%% Func:       renderbufferStorageEXT
%% Args:       Target, Internalformat, Width, Height
%% Returns:    ok
%% C-API func: void glRenderbufferStorageEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)

renderbufferStorageEXT(Target, Internalformat, Width, Height)
 -> cast
    ( ?glRenderbufferStorageEXT
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       getRenderbufferParameterivEXT
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetRenderbufferParameterivEXT(GLenum target, GLenum pname, GLint* params)

getRenderbufferParameterivEXT(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetRenderbufferParameterivEXT
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetRenderbufferParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       isFramebufferEXT
%% Args:       Framebuffer
%% Returns:    GLboolean
%% C-API func: GLboolean glIsFramebufferEXT(GLuint framebuffer)

isFramebufferEXT(Framebuffer)
 -> Bin
    = call
      ( ?glIsFramebufferEXT
      , <<Framebuffer:?GLuint
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

%% Func:       bindFramebufferEXT
%% Args:       Target, Framebuffer
%% Returns:    ok
%% C-API func: void glBindFramebufferEXT(GLenum target, GLuint framebuffer)

bindFramebufferEXT(Target, Framebuffer)
 -> cast
    ( ?glBindFramebufferEXT
    , <<Target:?GLenum
      , Framebuffer:?GLuint
      >>
    )
.

%% Func:       deleteFramebuffersEXT
%% Args:       N, Framebuffers
%% Returns:    ok
%% C-API func: void glDeleteFramebuffersEXT(GLsizei n, const GLuint* framebuffers)

deleteFramebuffersEXT(N, Framebuffers)
 -> cast
    ( ?glDeleteFramebuffersEXT
    , <<N:?GLsizei
      , Framebuffers:?_PTR
      >>
    )
.

%% Func:       genFramebuffersEXT
%% Args:       N, Framebuffers
%% Returns:    ok
%% C-API func: void glGenFramebuffersEXT(GLsizei n, GLuint* framebuffers)

genFramebuffersEXT(N, Framebuffers)
 -> cast
    ( ?glGenFramebuffersEXT
    , <<N:?GLsizei
      , Framebuffers:?_PTR
      >>
    )
.

%% Func:       checkFramebufferStatusEXT
%% Args:       Target
%% Returns:    GLenum
%% C-API func: GLenum glCheckFramebufferStatusEXT(GLenum target)

checkFramebufferStatusEXT(Target)
 -> cast
    ( ?glCheckFramebufferStatusEXT
    , <<Target:?GLenum
      >>
    )
.

%% Func:       framebufferTexture1DEXT
%% Args:       Target, Attachment, Textarget, Texture, Level
%% Returns:    ok
%% C-API func: void glFramebufferTexture1DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

framebufferTexture1DEXT(Target, Attachment, Textarget, Texture, Level)
 -> cast
    ( ?glFramebufferTexture1DEXT
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Textarget:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% Func:       framebufferTexture2DEXT
%% Args:       Target, Attachment, Textarget, Texture, Level
%% Returns:    ok
%% C-API func: void glFramebufferTexture2DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

framebufferTexture2DEXT(Target, Attachment, Textarget, Texture, Level)
 -> cast
    ( ?glFramebufferTexture2DEXT
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Textarget:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% Func:       framebufferTexture3DEXT
%% Args:       Target, Attachment, Textarget, Texture, Level, Zoffset
%% Returns:    ok
%% C-API func: void glFramebufferTexture3DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)

framebufferTexture3DEXT(Target, Attachment, Textarget, Texture, Level, Zoffset)
 -> cast
    ( ?glFramebufferTexture3DEXT
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Textarget:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      , Zoffset:?GLint
      >>
    )
.

%% Func:       framebufferRenderbufferEXT
%% Args:       Target, Attachment, Renderbuffertarget, Renderbuffer
%% Returns:    ok
%% C-API func: void glFramebufferRenderbufferEXT(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

framebufferRenderbufferEXT(Target, Attachment, Renderbuffertarget, Renderbuffer)
 -> cast
    ( ?glFramebufferRenderbufferEXT
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Renderbuffertarget:?GLenum
      , Renderbuffer:?GLuint
      >>
    )
.

%% Func:       getFramebufferAttachmentParameterivEXT
%% Args:       Target, Attachment, Pname
%% Returns:    [Params]
%% C-API func: void glGetFramebufferAttachmentParameterivEXT(GLenum target, GLenum attachment, GLenum pname, GLint* params)

getFramebufferAttachmentParameterivEXT(Target, Attachment, Pname, Params)
 -> Bin
    = call
      ( ?glGetFramebufferAttachmentParameterivEXT
      , <<Target:?GLenum
        , Attachment:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetFramebufferAttachmentParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       generateMipmapEXT
%% Args:       Target
%% Returns:    ok
%% C-API func: void glGenerateMipmapEXT(GLenum target)

generateMipmapEXT(Target)
 -> cast
    ( ?glGenerateMipmapEXT
    , <<Target:?GLenum
      >>
    )
.

%% GL_GREMEDY_string_marker

%% Func:       stringMarkerGREMEDY
%% Args:       Len, String
%% Returns:    ok
%% C-API func: void glStringMarkerGREMEDY(GLsizei len, const GLvoid* string)

stringMarkerGREMEDY(Len, String)
 -> cast
    ( ?glStringMarkerGREMEDY
    , <<Len:?GLsizei
      , String:?_PTR
      >>
    )
.

%% GL_EXT_packed_depth_stencil
%% GL_EXT_stencil_clear_tag

%% Func:       stencilClearTagEXT
%% Args:       StencilTagBits, StencilClearTag
%% Returns:    ok
%% C-API func: void glStencilClearTagEXT(GLsizei stencilTagBits, GLuint stencilClearTag)

stencilClearTagEXT(StencilTagBits, StencilClearTag)
 -> cast
    ( ?glStencilClearTagEXT
    , <<StencilTagBits:?GLsizei
      , StencilClearTag:?GLuint
      >>
    )
.

%% GL_EXT_texture_sRGB
%% GL_EXT_framebuffer_blit

%% Func:       blitFramebufferEXT
%% Args:       SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, Mask, Filter
%% Returns:    ok
%% C-API func: void glBlitFramebufferEXT(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

blitFramebufferEXT(SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, Mask, Filter)
 -> cast
    ( ?glBlitFramebufferEXT
    , <<SrcX0:?GLint
      , SrcY0:?GLint
      , SrcX1:?GLint
      , SrcY1:?GLint
      , DstX0:?GLint
      , DstY0:?GLint
      , DstX1:?GLint
      , DstY1:?GLint
      , Mask:?GLbitfield
      , Filter:?GLenum
      >>
    )
.

%% GL_EXT_framebuffer_multisample

%% Func:       renderbufferStorageMultisampleEXT
%% Args:       Target, Samples, Internalformat, Width, Height
%% Returns:    ok
%% C-API func: void glRenderbufferStorageMultisampleEXT(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

renderbufferStorageMultisampleEXT(Target, Samples, Internalformat, Width, Height)
 -> cast
    ( ?glRenderbufferStorageMultisampleEXT
    , <<Target:?GLenum
      , Samples:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% GL_MESAX_texture_stack
%% GL_EXT_timer_query

%% Func:       getQueryObjecti64vEXT
%% Args:       Id, Pname, GLint64EXT* Params
%% Returns:    ok
%% C-API func: void glGetQueryObjecti64vEXT(GLuint id, GLenum pname, GLint64EXT* params)

getQueryObjecti64vEXT(Id, Pname, GLint64EXT* Params)
 -> cast
    ( ?glGetQueryObjecti64vEXT
    , <<Id:?GLuint
      , Pname:?GLenum
      , Params:?GLint64EXT
      >>
    )
.

%% Func:       getQueryObjectui64vEXT
%% Args:       Id, Pname, GLuint64EXT* Params
%% Returns:    ok
%% C-API func: void glGetQueryObjectui64vEXT(GLuint id, GLenum pname, GLuint64EXT* params)

getQueryObjectui64vEXT(Id, Pname, GLuint64EXT* Params)
 -> cast
    ( ?glGetQueryObjectui64vEXT
    , <<Id:?GLuint
      , Pname:?GLenum
      , Params:?GLuint64EXT*
      >>
    )
.

%% GL_EXT_gpu_program_parameters

%% Func:       programEnvParameters4fvEXT
%% Args:       Target, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramEnvParameters4fvEXT(GLenum target, GLuint index, GLsizei count, const GLfloat* params)

programEnvParameters4fvEXT(Target, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glProgramEnvParameters4fvEXT
    , [ <<Target:?GLenum
        , Index:?GLuint
        , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% Func:       programLocalParameters4fvEXT
%% Args:       Target, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramLocalParameters4fvEXT(GLenum target, GLuint index, GLsizei count, const GLfloat* params)

programLocalParameters4fvEXT(Target, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glProgramLocalParameters4fvEXT
    , [ <<Target:?GLenum
        , Index:?GLuint
        , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% GL_APPLE_flush_buffer_range

%% Func:       bufferParameteriAPPLE
%% Args:       Target, Pname, Param
%% Returns:    ok
%% C-API func: void glBufferParameteriAPPLE(GLenum target, GLenum pname, GLint param)

bufferParameteriAPPLE(Target, Pname, Param)
 -> cast
    ( ?glBufferParameteriAPPLE
    , <<Target:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       flushMappedBufferRangeAPPLE
%% Args:       Target, Offset, Size
%% Returns:    ok
%% C-API func: void glFlushMappedBufferRangeAPPLE(GLenum target, GLintptr offset, GLsizeiptr size)

flushMappedBufferRangeAPPLE(Target, Offset, Size)
 -> cast
    ( ?glFlushMappedBufferRangeAPPLE
    , <<Target:?GLenum
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      >>
    )
.

%% GL_NV_gpu_program4

%% Func:       programLocalParameterI4iNV
%% Args:       Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramLocalParameterI4iNV(GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)

programLocalParameterI4iNV(Target, Index, X, Y, Z, W)
 -> cast
    ( ?glProgramLocalParameterI4iNV
    , <<Target:?GLenum
      , Index:?GLuint
      , X:?GLint
      , Y:?GLint
      , Z:?GLint
      , W:?GLint
      >>
    )
.

%% Func:       programLocalParameterI4ivNV
%% Args:       Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramLocalParameterI4ivNV(GLenum target, GLuint index, const GLint* params)

programLocalParameterI4ivNV(Target, Index, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glProgramLocalParameterI4ivNV
    , [ <<Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       programLocalParametersI4ivNV
%% Args:       Target, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramLocalParametersI4ivNV(GLenum target, GLuint index, GLsizei count, const GLint* params)

programLocalParametersI4ivNV(Target, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glProgramLocalParametersI4ivNV
    , [ <<Target:?GLenum
        , Index:?GLuint
        , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% Func:       programLocalParameterI4uiNV
%% Args:       Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramLocalParameterI4uiNV(GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

programLocalParameterI4uiNV(Target, Index, X, Y, Z, W)
 -> cast
    ( ?glProgramLocalParameterI4uiNV
    , <<Target:?GLenum
      , Index:?GLuint
      , X:?GLuint
      , Y:?GLuint
      , Z:?GLuint
      , W:?GLuint
      >>
    )
.

%% Func:       programLocalParameterI4uivNV
%% Args:       Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramLocalParameterI4uivNV(GLenum target, GLuint index, const GLuint* params)

programLocalParameterI4uivNV(Target, Index, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glProgramLocalParameterI4uivNV
    , [ <<Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       programLocalParametersI4uivNV
%% Args:       Target, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramLocalParametersI4uivNV(GLenum target, GLuint index, GLsizei count, const GLuint* params)

programLocalParametersI4uivNV(Target, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glProgramLocalParametersI4uivNV
    , [ <<Target:?GLenum
        , Index:?GLuint
        , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% Func:       programEnvParameterI4iNV
%% Args:       Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramEnvParameterI4iNV(GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)

programEnvParameterI4iNV(Target, Index, X, Y, Z, W)
 -> cast
    ( ?glProgramEnvParameterI4iNV
    , <<Target:?GLenum
      , Index:?GLuint
      , X:?GLint
      , Y:?GLint
      , Z:?GLint
      , W:?GLint
      >>
    )
.

%% Func:       programEnvParameterI4ivNV
%% Args:       Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramEnvParameterI4ivNV(GLenum target, GLuint index, const GLint* params)

programEnvParameterI4ivNV(Target, Index, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glProgramEnvParameterI4ivNV
    , [ <<Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       programEnvParametersI4ivNV
%% Args:       Target, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramEnvParametersI4ivNV(GLenum target, GLuint index, GLsizei count, const GLint* params)

programEnvParametersI4ivNV(Target, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glProgramEnvParametersI4ivNV
    , [ <<Target:?GLenum
        , Index:?GLuint
        , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% Func:       programEnvParameterI4uiNV
%% Args:       Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramEnvParameterI4uiNV(GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

programEnvParameterI4uiNV(Target, Index, X, Y, Z, W)
 -> cast
    ( ?glProgramEnvParameterI4uiNV
    , <<Target:?GLenum
      , Index:?GLuint
      , X:?GLuint
      , Y:?GLuint
      , Z:?GLuint
      , W:?GLuint
      >>
    )
.

%% Func:       programEnvParameterI4uivNV
%% Args:       Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramEnvParameterI4uivNV(GLenum target, GLuint index, const GLuint* params)

programEnvParameterI4uivNV(Target, Index, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glProgramEnvParameterI4uivNV
    , [ <<Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       programEnvParametersI4uivNV
%% Args:       Target, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramEnvParametersI4uivNV(GLenum target, GLuint index, GLsizei count, const GLuint* params)

programEnvParametersI4uivNV(Target, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glProgramEnvParametersI4uivNV
    , [ <<Target:?GLenum
      , Index:?GLuint
      , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% Func:       getProgramLocalParameterIivNV
%% Args:       Target, Index
%% Returns:    [Params]
%% C-API func: void glGetProgramLocalParameterIivNV(GLenum target, GLuint index, GLint* params)

getProgramLocalParameterIivNV(Target, Index, Params)
 -> Bin
    = call
      ( ?glGetProgramLocalParameterIivNV
      , <<Target:?GLenum
        , Index:?GLuint
        >>
      )
  , ParamsLen
    = glGetProgramLocalParameterIivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getProgramLocalParameterIuivNV
%% Args:       Target, Index, Params
%% Returns:    ok
%% C-API func: void glGetProgramLocalParameterIuivNV(GLenum target, GLuint index, GLuint* params)

getProgramLocalParameterIuivNV(Target, Index, Params)
 -> cast
    ( ?glGetProgramLocalParameterIuivNV
    , <<Target:?GLenum
      , Index:?GLuint
      , Params:?_PTR
      >>
    )
.

%% Func:       getProgramEnvParameterIivNV
%% Args:       Target, Index
%% Returns:    [Params]
%% C-API func: void glGetProgramEnvParameterIivNV(GLenum target, GLuint index, GLint* params)

getProgramEnvParameterIivNV(Target, Index, Params)
 -> Bin
    = call
      ( ?glGetProgramEnvParameterIivNV
      , <<Target:?GLenum
        , Index:?GLuint
        >>
      )
  , ParamsLen
    = glGetProgramEnvParameterIivNVLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getProgramEnvParameterIuivNV
%% Args:       Target, Index, Params
%% Returns:    ok
%% C-API func: void glGetProgramEnvParameterIuivNV(GLenum target, GLuint index, GLuint* params)

getProgramEnvParameterIuivNV(Target, Index, Params)
 -> cast
    ( ?glGetProgramEnvParameterIuivNV
    , <<Target:?GLenum
      , Index:?GLuint
      , Params:?_PTR
      >>
    )
.

%% GL_NV_geometry_program4

%% Func:       programVertexLimitNV
%% Args:       Target, Limit
%% Returns:    ok
%% C-API func: void glProgramVertexLimitNV(GLenum target, GLint limit)

programVertexLimitNV(Target, Limit)
 -> cast
    ( ?glProgramVertexLimitNV
    , <<Target:?GLenum
      , Limit:?GLint
      >>
    )
.

%% Func:       framebufferTextureEXT
%% Args:       Target, Attachment, Texture, Level
%% Returns:    ok
%% C-API func: void glFramebufferTextureEXT(GLenum target, GLenum attachment, GLuint texture, GLint level)

framebufferTextureEXT(Target, Attachment, Texture, Level)
 -> cast
    ( ?glFramebufferTextureEXT
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% Func:       framebufferTextureLayerEXT
%% Args:       Target, Attachment, Texture, Level, Layer
%% Returns:    ok
%% C-API func: void glFramebufferTextureLayerEXT(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

framebufferTextureLayerEXT(Target, Attachment, Texture, Level, Layer)
 -> cast
    ( ?glFramebufferTextureLayerEXT
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      , Layer:?GLint
      >>
    )
.

%% Func:       framebufferTextureFaceEXT
%% Args:       Target, Attachment, Texture, Level, Face
%% Returns:    ok
%% C-API func: void glFramebufferTextureFaceEXT(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face)

framebufferTextureFaceEXT(Target, Attachment, Texture, Level, Face)
 -> cast
    ( ?glFramebufferTextureFaceEXT
    , <<Target:?GLenum
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      , Face:?GLenum
      >>
    )
.

%% GL_EXT_geometry_shader4

%% Func:       programParameteriEXT
%% Args:       Program, Pname, Value
%% Returns:    ok
%% C-API func: void glProgramParameteriEXT(GLuint program, GLenum pname, GLint value)

programParameteriEXT(Program, Pname, Value)
 -> cast
    ( ?glProgramParameteriEXT
    , <<Program:?GLuint
      , Pname:?GLenum
      , Value:?GLint
      >>
    )
.

%% GL_NV_vertex_program4

%% Func:       vertexAttribI1iEXT
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttribI1iEXT(GLuint index, GLint x)

vertexAttribI1iEXT(Index, X)
 -> cast
    ( ?glVertexAttribI1iEXT
    , <<Index:?GLuint
      , X:?GLint
      >>
    )
.

%% Func:       vertexAttribI2iEXT
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttribI2iEXT(GLuint index, GLint x, GLint y)

vertexAttribI2iEXT(Index, X, Y)
 -> cast
    ( ?glVertexAttribI2iEXT
    , <<Index:?GLuint
      , X:?GLint
      , Y:?GLint
      >>
    )
.

%% Func:       vertexAttribI3iEXT
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttribI3iEXT(GLuint index, GLint x, GLint y, GLint z)

vertexAttribI3iEXT(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttribI3iEXT
    , <<Index:?GLuint
      , X:?GLint
      , Y:?GLint
      , Z:?GLint
      >>
    )
.

%% Func:       vertexAttribI4iEXT
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttribI4iEXT(GLuint index, GLint x, GLint y, GLint z, GLint w)

vertexAttribI4iEXT(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttribI4iEXT
    , <<Index:?GLuint
      , X:?GLint
      , Y:?GLint
      , Z:?GLint
      , W:?GLint
      >>
    )
.

%% Func:       vertexAttribI1uiEXT
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttribI1uiEXT(GLuint index, GLuint x)

vertexAttribI1uiEXT(Index, X)
 -> cast
    ( ?glVertexAttribI1uiEXT
    , <<Index:?GLuint
      , X:?GLuint
      >>
    )
.

%% Func:       vertexAttribI2uiEXT
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttribI2uiEXT(GLuint index, GLuint x, GLuint y)

vertexAttribI2uiEXT(Index, X, Y)
 -> cast
    ( ?glVertexAttribI2uiEXT
    , <<Index:?GLuint
      , X:?GLuint
      , Y:?GLuint
      >>
    )
.

%% Func:       vertexAttribI3uiEXT
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttribI3uiEXT(GLuint index, GLuint x, GLuint y, GLuint z)

vertexAttribI3uiEXT(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttribI3uiEXT
    , <<Index:?GLuint
      , X:?GLuint
      , Y:?GLuint
      , Z:?GLuint
      >>
    )
.

%% Func:       vertexAttribI4uiEXT
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttribI4uiEXT(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

vertexAttribI4uiEXT(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttribI4uiEXT
    , <<Index:?GLuint
      , X:?GLuint
      , Y:?GLuint
      , Z:?GLuint
      , W:?GLuint
      >>
    )
.

%% Func:       vertexAttribI1ivEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI1ivEXT(GLuint index, const GLint* v)

vertexAttribI1ivEXT(Index, V)
 -> cast
    ( ?glVertexAttribI1ivEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI2ivEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI2ivEXT(GLuint index, const GLint* v)

vertexAttribI2ivEXT(Index, V)
 -> cast
    ( ?glVertexAttribI2ivEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI3ivEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI3ivEXT(GLuint index, const GLint* v)

vertexAttribI3ivEXT(Index, V)
 -> cast
    ( ?glVertexAttribI3ivEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4ivEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4ivEXT(GLuint index, const GLint* v)

vertexAttribI4ivEXT(Index, V)
 -> cast
    ( ?glVertexAttribI4ivEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI1uivEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI1uivEXT(GLuint index, const GLuint* v)

vertexAttribI1uivEXT(Index, V)
 -> cast
    ( ?glVertexAttribI1uivEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI2uivEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI2uivEXT(GLuint index, const GLuint* v)

vertexAttribI2uivEXT(Index, V)
 -> cast
    ( ?glVertexAttribI2uivEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI3uivEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI3uivEXT(GLuint index, const GLuint* v)

vertexAttribI3uivEXT(Index, V)
 -> cast
    ( ?glVertexAttribI3uivEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4uivEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4uivEXT(GLuint index, const GLuint* v)

vertexAttribI4uivEXT(Index, V)
 -> cast
    ( ?glVertexAttribI4uivEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4bvEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4bvEXT(GLuint index, const GLbyte* v)

vertexAttribI4bvEXT(Index, V)
 -> cast
    ( ?glVertexAttribI4bvEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4svEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4svEXT(GLuint index, const GLshort* v)

vertexAttribI4svEXT(Index, V)
 -> cast
    ( ?glVertexAttribI4svEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4ubvEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4ubvEXT(GLuint index, const GLubyte* v)

vertexAttribI4ubvEXT(Index, V)
 -> cast
    ( ?glVertexAttribI4ubvEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribI4usvEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribI4usvEXT(GLuint index, const GLushort* v)

vertexAttribI4usvEXT(Index, V)
 -> cast
    ( ?glVertexAttribI4usvEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribIPointerEXT
%% Args:       Index, Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glVertexAttribIPointerEXT(GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

vertexAttribIPointerEXT(Index, Size, Type, Stride, Pointer)
 -> cast
    ( ?glVertexAttribIPointerEXT
    , <<Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       getVertexAttribIivEXT
%% Args:       Index, Pname
%% Returns:    [Params]
%% C-API func: void glGetVertexAttribIivEXT(GLuint index, GLenum pname, GLint* params)

getVertexAttribIivEXT(Index, Pname, Params)
 -> Bin
    = call
      ( ?glGetVertexAttribIivEXT
      , <<Index:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetVertexAttribIivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getVertexAttribIuivEXT
%% Args:       Index, Pname, Params
%% Returns:    ok
%% C-API func: void glGetVertexAttribIuivEXT(GLuint index, GLenum pname, GLuint* params)

getVertexAttribIuivEXT(Index, Pname, Params)
 -> cast
    ( ?glGetVertexAttribIuivEXT
    , <<Index:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% GL_EXT_gpu_shader4

%% Func:       getUniformuivEXT
%% Args:       Program, Location, Params
%% Returns:    ok
%% C-API func: void glGetUniformuivEXT(GLuint program, GLint location, GLuint* params)

getUniformuivEXT(Program, Location, Params)
 -> cast
    ( ?glGetUniformuivEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Params:?_PTR
      >>
    )
.

%% Func:       bindFragDataLocationEXT
%% Args:       Program, Color, Name
%% Returns:    ok
%% C-API func: void glBindFragDataLocationEXT(GLuint program, GLuint color, const GLchar* name)

bindFragDataLocationEXT(Program, Color, Name)
 -> cast
    ( ?glBindFragDataLocationEXT
    , <<Program:?GLuint
      , Color:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       getFragDataLocationEXT
%% Args:       Program, Name
%% Returns:    GLint
%% C-API func: GLint glGetFragDataLocationEXT(GLuint program, const GLchar* name)

getFragDataLocationEXT(Program, Name)
 -> cast
    ( ?glGetFragDataLocationEXT
    , <<Program:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       uniform1uiEXT
%% Args:       Location, V0
%% Returns:    ok
%% C-API func: void glUniform1uiEXT(GLint location, GLuint v0)

uniform1uiEXT(Location, V0)
 -> cast
    ( ?glUniform1uiEXT
    , <<Location:?GLint
      , V0:?GLuint
      >>
    )
.

%% Func:       uniform2uiEXT
%% Args:       Location, V0, V1
%% Returns:    ok
%% C-API func: void glUniform2uiEXT(GLint location, GLuint v0, GLuint v1)

uniform2uiEXT(Location, V0, V1)
 -> cast
    ( ?glUniform2uiEXT
    , <<Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      >>
    )
.

%% Func:       uniform3uiEXT
%% Args:       Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glUniform3uiEXT(GLint location, GLuint v0, GLuint v1, GLuint v2)

uniform3uiEXT(Location, V0, V1, V2)
 -> cast
    ( ?glUniform3uiEXT
    , <<Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      , V2:?GLuint
      >>
    )
.

%% Func:       uniform4uiEXT
%% Args:       Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glUniform4uiEXT(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

uniform4uiEXT(Location, V0, V1, V2, V3)
 -> cast
    ( ?glUniform4uiEXT
    , <<Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      , V2:?GLuint
      , V3:?GLuint
      >>
    )
.

%% Func:       uniform1uivEXT
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform1uivEXT(GLint location, GLsizei count, const GLuint* value)

uniform1uivEXT(Location, Count, Value)
 -> cast
    ( ?glUniform1uivEXT
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform2uivEXT
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform2uivEXT(GLint location, GLsizei count, const GLuint* value)

uniform2uivEXT(Location, Count, Value)
 -> cast
    ( ?glUniform2uivEXT
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform3uivEXT
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform3uivEXT(GLint location, GLsizei count, const GLuint* value)

uniform3uivEXT(Location, Count, Value)
 -> cast
    ( ?glUniform3uivEXT
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform4uivEXT
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform4uivEXT(GLint location, GLsizei count, const GLuint* value)

uniform4uivEXT(Location, Count, Value)
 -> cast
    ( ?glUniform4uivEXT
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% GL_EXT_draw_instanced

%% Func:       drawArraysInstancedEXT
%% Args:       Mode, Start, Count, Primcount
%% Returns:    ok
%% C-API func: void glDrawArraysInstancedEXT(GLenum mode, GLint start, GLsizei count, GLsizei primcount)

drawArraysInstancedEXT(Mode, Start, Count, Primcount)
 -> cast
    ( ?glDrawArraysInstancedEXT
    , <<Mode:?GLenum
      , Start:?GLint
      , Count:?GLsizei
      , Primcount:?GLsizei
      >>
    )
.

%% Func:       drawElementsInstancedEXT
%% Args:       Mode, Count, Type, Indices, Primcount
%% Returns:    ok
%% C-API func: void glDrawElementsInstancedEXT(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei primcount)

drawElementsInstancedEXT(Mode, Count, Type, Indices, Primcount)
 -> cast
    ( ?glDrawElementsInstancedEXT
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Primcount:?GLsizei
      >>
    )
.

%% GL_EXT_packed_float
%% GL_EXT_texture_array
%% GL_EXT_texture_buffer_object

%% Func:       texBufferEXT
%% Args:       Target, Internalformat, Buffer
%% Returns:    ok
%% C-API func: void glTexBufferEXT(GLenum target, GLenum internalformat, GLuint buffer)

texBufferEXT(Target, Internalformat, Buffer)
 -> cast
    ( ?glTexBufferEXT
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Buffer:?GLuint
      >>
    )
.

%% GL_EXT_texture_compression_latc
%% GL_EXT_texture_compression_rgtc
%% GL_EXT_texture_shared_exponent
%% GL_NV_depth_buffer_float

%% Func:       depthRangedNV
%% Args:       ZNear, ZFar
%% Returns:    ok
%% C-API func: void glDepthRangedNV(GLdouble zNear, GLdouble zFar)

depthRangedNV(ZNear, ZFar)
 -> cast
    ( ?glDepthRangedNV
    , <<ZNear:?GLdouble
      , ZFar:?GLdouble
      >>
    )
.

%% Func:       clearDepthdNV
%% Args:       Depth
%% Returns:    ok
%% C-API func: void glClearDepthdNV(GLdouble depth)

clearDepthdNV(Depth)
 -> cast
    ( ?glClearDepthdNV
    , <<Depth:?GLdouble
      >>
    )
.

%% Func:       depthBoundsdNV
%% Args:       Zmin, Zmax
%% Returns:    ok
%% C-API func: void glDepthBoundsdNV(GLdouble zmin, GLdouble zmax)

depthBoundsdNV(Zmin, Zmax)
 -> cast
    ( ?glDepthBoundsdNV
    , <<Zmin:?GLdouble
      , Zmax:?GLdouble
      >>
    )
.

%% GL_NV_fragment_program4
%% GL_NV_framebuffer_multisample_coverage

%% Func:       renderbufferStorageMultisampleCoverageNV
%% Args:       Target, CoverageSamples, ColorSamples, Internalformat, Width, Height
%% Returns:    ok
%% C-API func: void glRenderbufferStorageMultisampleCoverageNV(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height)

renderbufferStorageMultisampleCoverageNV(Target, CoverageSamples, ColorSamples, Internalformat, Width, Height)
 -> cast
    ( ?glRenderbufferStorageMultisampleCoverageNV
    , <<Target:?GLenum
      , CoverageSamples:?GLsizei
      , ColorSamples:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% GL_EXT_framebuffer_sRGB
%% GL_NV_geometry_shader4
%% GL_NV_parameter_buffer_object

%% Func:       programBufferParametersfvNV
%% Args:       Target, Buffer, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramBufferParametersfvNV(GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLfloat* params)

programBufferParametersfvNV(Target, Buffer, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glProgramBufferParametersfvNV
    , [ <<Target:?GLenum
        , Buffer:?GLuint
        , Index:?GLuint
        , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% Func:       programBufferParametersIivNV
%% Args:       Target, Buffer, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramBufferParametersIivNV(GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLint* params)

programBufferParametersIivNV(Target, Buffer, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glProgramBufferParametersIivNV
    , [ <<Target:?GLenum
        , Buffer:?GLuint
        , Index:?GLuint
        , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% Func:       programBufferParametersIuivNV
%% Args:       Target, Buffer, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glProgramBufferParametersIuivNV(GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLuint* params)

programBufferParametersIuivNV(Target, Buffer, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glProgramBufferParametersIuivNV
    , [ <<Target:?GLenum
      , Buffer:?GLuint
      , Index:?GLuint
      , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% GL_EXT_draw_buffers2

%% Func:       colorMaskIndexedEXT
%% Args:       Index, R, G, B, A
%% Returns:    ok
%% C-API func: void glColorMaskIndexedEXT(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a)

colorMaskIndexedEXT(Index, R, G, B, A)
 -> cast
    ( ?glColorMaskIndexedEXT
    , <<Index:?GLuint
      , R:?GLboolean
      , G:?GLboolean
      , B:?GLboolean
      , A:?GLboolean
      >>
    )
.

%% Func:       getBooleanIndexedvEXT
%% Args:       Target, Index, Data
%% Returns:    ok
%% C-API func: void glGetBooleanIndexedvEXT(GLenum target, GLuint index, GLboolean* data)

getBooleanIndexedvEXT(Target, Index, Data)
 -> cast
    ( ?glGetBooleanIndexedvEXT
    , <<Target:?GLenum
      , Index:?GLuint
      , Data:?_PTR
      >>
    )
.

%% Func:       getIntegerIndexedvEXT
%% Args:       Target, Index, Data
%% Returns:    ok
%% C-API func: void glGetIntegerIndexedvEXT(GLenum target, GLuint index, GLint* data)

getIntegerIndexedvEXT(Target, Index, Data)
 -> cast
    ( ?glGetIntegerIndexedvEXT
    , <<Target:?GLenum
      , Index:?GLuint
      , Data:?_PTR
      >>
    )
.

%% Func:       enableIndexedEXT
%% Args:       Target, Index
%% Returns:    ok
%% C-API func: void glEnableIndexedEXT(GLenum target, GLuint index)

enableIndexedEXT(Target, Index)
 -> cast
    ( ?glEnableIndexedEXT
    , <<Target:?GLenum
      , Index:?GLuint
      >>
    )
.

%% Func:       disableIndexedEXT
%% Args:       Target, Index
%% Returns:    ok
%% C-API func: void glDisableIndexedEXT(GLenum target, GLuint index)

disableIndexedEXT(Target, Index)
 -> cast
    ( ?glDisableIndexedEXT
    , <<Target:?GLenum
      , Index:?GLuint
      >>
    )
.

%% Func:       isEnabledIndexedEXT
%% Args:       Target, Index
%% Returns:    GLboolean
%% C-API func: GLboolean glIsEnabledIndexedEXT(GLenum target, GLuint index)

isEnabledIndexedEXT(Target, Index)
 -> Bin
    = call
      ( ?glIsEnabledIndexedEXT
      , <<Target:?GLenum
        , Index:?GLuint
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

%% GL_NV_transform_feedback

%% Func:       beginTransformFeedbackNV
%% Args:       PrimitiveMode
%% Returns:    ok
%% C-API func: void glBeginTransformFeedbackNV(GLenum primitiveMode)

beginTransformFeedbackNV(PrimitiveMode)
 -> cast
    ( ?glBeginTransformFeedbackNV
    , <<PrimitiveMode:?GLenum
      >>
    )
.

%% Func:       endTransformFeedbackNV
%% Args:       
%% Returns:    ok
%% C-API func: void glEndTransformFeedbackNV()

endTransformFeedbackNV()
 -> cast
    ( ?glEndTransformFeedbackNV
    , <<
      >>
    )
.

%% Func:       transformFeedbackAttribsNV
%% Args:       Count, Attribs, BufferMode
%% Returns:    ok
%% C-API func: void glTransformFeedbackAttribsNV(GLuint count, const GLint* attribs, GLenum bufferMode)

transformFeedbackAttribsNV(Count, Attribs, BufferMode)
 -> cast
    ( ?glTransformFeedbackAttribsNV
    , <<Count:?GLuint
      , Attribs:?_PTR
      , BufferMode:?GLenum
      >>
    )
.

%% Func:       bindBufferRangeNV
%% Args:       Target, Index, Buffer, Offset, Size
%% Returns:    ok
%% C-API func: void glBindBufferRangeNV(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

bindBufferRangeNV(Target, Index, Buffer, Offset, Size)
 -> cast
    ( ?glBindBufferRangeNV
    , <<Target:?GLenum
      , Index:?GLuint
      , Buffer:?GLuint
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      >>
    )
.

%% Func:       bindBufferOffsetNV
%% Args:       Target, Index, Buffer, Offset
%% Returns:    ok
%% C-API func: void glBindBufferOffsetNV(GLenum target, GLuint index, GLuint buffer, GLintptr offset)

bindBufferOffsetNV(Target, Index, Buffer, Offset)
 -> cast
    ( ?glBindBufferOffsetNV
    , <<Target:?GLenum
      , Index:?GLuint
      , Buffer:?GLuint
      , Offset:?GLintptr
      >>
    )
.

%% Func:       bindBufferBaseNV
%% Args:       Target, Index, Buffer
%% Returns:    ok
%% C-API func: void glBindBufferBaseNV(GLenum target, GLuint index, GLuint buffer)

bindBufferBaseNV(Target, Index, Buffer)
 -> cast
    ( ?glBindBufferBaseNV
    , <<Target:?GLenum
      , Index:?GLuint
      , Buffer:?GLuint
      >>
    )
.

%% Func:       transformFeedbackVaryingsNV
%% Args:       Program, Count, Locations, BufferMode
%% Returns:    ok
%% C-API func: void glTransformFeedbackVaryingsNV(GLuint program, GLsizei count, const GLint* locations, GLenum bufferMode)

transformFeedbackVaryingsNV(Program, Count, Locations, BufferMode)
 -> cast
    ( ?glTransformFeedbackVaryingsNV
    , <<Program:?GLuint
      , Count:?GLsizei
      , Locations:?_PTR
      , BufferMode:?GLenum
      >>
    )
.

%% Func:       activeVaryingNV
%% Args:       Program, Name
%% Returns:    ok
%% C-API func: void glActiveVaryingNV(GLuint program, const GLchar* name)

activeVaryingNV(Program, Name)
 -> cast
    ( ?glActiveVaryingNV
    , <<Program:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       getVaryingLocationNV
%% Args:       Program, Name
%% Returns:    GLint
%% C-API func: GLint glGetVaryingLocationNV(GLuint program, const GLchar* name)

getVaryingLocationNV(Program, Name)
 -> cast
    ( ?glGetVaryingLocationNV
    , <<Program:?GLuint
      , Name:?_PTR
      >>
    )
.

%% Func:       getActiveVaryingNV
%% Args:       Program, Index, BufSize, Length, Size, * Type, Name
%% Returns:    ok
%% C-API func: void glGetActiveVaryingNV(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name)

getActiveVaryingNV(Program, Index, BufSize, Length, Size, Type, Name)
 -> cast
    ( ?glGetActiveVaryingNV
    , <<Program:?GLuint
      , Index:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , Size:?_PTR
      , Type:?_PTR
      , Name:?_PTR
      >>
    )
.

%% Func:       getTransformFeedbackVaryingNV
%% Args:       Program, Index, Location
%% Returns:    ok
%% C-API func: void glGetTransformFeedbackVaryingNV(GLuint program, GLuint index, GLint* location)

getTransformFeedbackVaryingNV(Program, Index, Location)
 -> cast
    ( ?glGetTransformFeedbackVaryingNV
    , <<Program:?GLuint
      , Index:?GLuint
      , Location:?_PTR
      >>
    )
.

%% Func:       transformFeedbackStreamAttribsNV
%% Args:       Count, Attribs, Nbuffers, Bufstreams, BufferMode
%% Returns:    ok
%% C-API func: void glTransformFeedbackStreamAttribsNV(GLsizei count, const GLint* attribs, GLsizei nbuffers, const GLint* bufstreams, GLenum bufferMode)

transformFeedbackStreamAttribsNV(Count, Attribs, Nbuffers, Bufstreams, BufferMode)
 -> cast
    ( ?glTransformFeedbackStreamAttribsNV
    , <<Count:?GLsizei
      , Attribs:?_PTR
      , Nbuffers:?GLsizei
      , Bufstreams:?_PTR
      , BufferMode:?GLenum
      >>
    )
.

%% GL_EXT_bindable_uniform

%% Func:       uniformBufferEXT
%% Args:       Program, Location, Buffer
%% Returns:    ok
%% C-API func: void glUniformBufferEXT(GLuint program, GLint location, GLuint buffer)

uniformBufferEXT(Program, Location, Buffer)
 -> cast
    ( ?glUniformBufferEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Buffer:?GLuint
      >>
    )
.

%% Func:       getUniformBufferSizeEXT
%% Args:       Program, Location
%% Returns:    GLint
%% C-API func: GLint glGetUniformBufferSizeEXT(GLuint program, GLint location)

getUniformBufferSizeEXT(Program, Location)
 -> cast
    ( ?glGetUniformBufferSizeEXT
    , <<Program:?GLuint
      , Location:?GLint
      >>
    )
.

%% Func:       getUniformOffsetEXT
%% Args:       Program, Location
%% Returns:    GLintptr
%% C-API func: GLintptr glGetUniformOffsetEXT(GLuint program, GLint location)

getUniformOffsetEXT(Program, Location)
 -> cast
    ( ?glGetUniformOffsetEXT
    , <<Program:?GLuint
      , Location:?GLint
      >>
    )
.

%% GL_EXT_texture_integer

%% Func:       texParameterIivEXT
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexParameterIivEXT(GLenum target, GLenum pname, const GLint* params)

texParameterIivEXT(Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glTexParameterIivEXT
    , [ <<Target:?GLenum
      , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       texParameterIuivEXT
%% Args:       Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTexParameterIuivEXT(GLenum target, GLenum pname, const GLuint* params)

texParameterIuivEXT(Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glTexParameterIuivEXT
    , [ <<Target:?GLenum
      , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       getTexParameterIivEXT
%% Args:       Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetTexParameterIivEXT(GLenum target, GLenum pname, GLint* params)

getTexParameterIivEXT(Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetTexParameterIivEXT
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetTexParameterIivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getTexParameterIuivEXT
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glGetTexParameterIuivEXT(GLenum target, GLenum pname, GLuint* params)

getTexParameterIuivEXT(Target, Pname, Params)
 -> cast
    ( ?glGetTexParameterIuivEXT
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       clearColorIiEXT
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glClearColorIiEXT(GLint red, GLint green, GLint blue, GLint alpha)

clearColorIiEXT(Red, Green, Blue, Alpha)
 -> cast
    ( ?glClearColorIiEXT
    , <<Red:?GLint
      , Green:?GLint
      , Blue:?GLint
      , Alpha:?GLint
      >>
    )
.

%% Func:       clearColorIuiEXT
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glClearColorIuiEXT(GLuint red, GLuint green, GLuint blue, GLuint alpha)

clearColorIuiEXT(Red, Green, Blue, Alpha)
 -> cast
    ( ?glClearColorIuiEXT
    , <<Red:?GLuint
      , Green:?GLuint
      , Blue:?GLuint
      , Alpha:?GLuint
      >>
    )
.

%% GL_GREMEDY_frame_terminator

%% Func:       frameTerminatorGREMEDY
%% Args:       
%% Returns:    ok
%% C-API func: void glFrameTerminatorGREMEDY()

frameTerminatorGREMEDY()
 -> cast
    ( ?glFrameTerminatorGREMEDY
    , <<
      >>
    )
.

%% GL_NV_conditional_render

%% Func:       beginConditionalRenderNV
%% Args:       Id, Mode
%% Returns:    ok
%% C-API func: void glBeginConditionalRenderNV(GLuint id, GLenum mode)

beginConditionalRenderNV(Id, Mode)
 -> cast
    ( ?glBeginConditionalRenderNV
    , <<Id:?GLuint
      , Mode:?GLenum
      >>
    )
.

%% Func:       endConditionalRenderNV
%% Args:       
%% Returns:    ok
%% C-API func: void glEndConditionalRenderNV()

endConditionalRenderNV()
 -> cast
    ( ?glEndConditionalRenderNV
    , <<
      >>
    )
.

%% GL_NV_present_video

%% Func:       presentFrameKeyedNV
%% Args:       Video_slot, MinPresentTime, BeginPresentTimeId, PresentDurationId, Type, Target0, Fill0, Key0, Target1, Fill1, Key1
%% Returns:    ok
%% C-API func: void glPresentFrameKeyedNV(GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1)

presentFrameKeyedNV(Video_slot, MinPresentTime, BeginPresentTimeId, PresentDurationId, Type, Target0, Fill0, Key0, Target1, Fill1, Key1)
 -> cast
    ( ?glPresentFrameKeyedNV
    , <<Video_slot:?GLuint
      , MinPresentTime:?GLuint64EXT
      , BeginPresentTimeId:?GLuint
      , PresentDurationId:?GLuint
      , Type:?GLenum
      , Target0:?GLenum
      , Fill0:?GLuint
      , Key0:?GLuint
      , Target1:?GLenum
      , Fill1:?GLuint
      , Key1:?GLuint
      >>
    )
.

%% Func:       presentFrameDualFillNV
%% Args:       Video_slot, MinPresentTime, BeginPresentTimeId, PresentDurationId, Type, Target0, Fill0, Target1, Fill1, Target2, Fill2, Target3, Fill3
%% Returns:    ok
%% C-API func: void glPresentFrameDualFillNV(GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3)

presentFrameDualFillNV(Video_slot, MinPresentTime, BeginPresentTimeId, PresentDurationId, Type, Target0, Fill0, Target1, Fill1, Target2, Fill2, Target3, Fill3)
 -> cast
    ( ?glPresentFrameDualFillNV
    , <<Video_slot:?GLuint
      , MinPresentTime:?GLuint64EXT
      , BeginPresentTimeId:?GLuint
      , PresentDurationId:?GLuint
      , Type:?GLenum
      , Target0:?GLenum
      , Fill0:?GLuint
      , Target1:?GLenum
      , Fill1:?GLuint
      , Target2:?GLenum
      , Fill2:?GLuint
      , Target3:?GLenum
      , Fill3:?GLuint
      >>
    )
.

%% Func:       getVideoivNV
%% Args:       Video_slot, Pname, Params
%% Returns:    ok
%% C-API func: void glGetVideoivNV(GLuint video_slot, GLenum pname, GLint* params)

getVideoivNV(Video_slot, Pname, Params)
 -> cast
    ( ?glGetVideoivNV
    , <<Video_slot:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getVideouivNV
%% Args:       Video_slot, Pname, Params
%% Returns:    ok
%% C-API func: void glGetVideouivNV(GLuint video_slot, GLenum pname, GLuint* params)

getVideouivNV(Video_slot, Pname, Params)
 -> cast
    ( ?glGetVideouivNV
    , <<Video_slot:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getVideoi64vNV
%% Args:       Video_slot, Pname, Params
%% Returns:    ok
%% C-API func: void glGetVideoi64vNV(GLuint video_slot, GLenum pname, GLint64EXT* params)

getVideoi64vNV(Video_slot, Pname, Params)
 -> cast
    ( ?glGetVideoi64vNV
    , <<Video_slot:?GLuint
      , Pname:?GLenum
      , Params:?GLint64EXT
      >>
    )
.

%% Func:       getVideoui64vNV
%% Args:       Video_slot, Pname, Params
%% Returns:    ok
%% C-API func: void glGetVideoui64vNV(GLuint video_slot, GLenum pname, GLuint64EXT* params)

getVideoui64vNV(Video_slot, Pname, Params)
 -> cast
    ( ?glGetVideoui64vNV
    , <<Video_slot:?GLuint
      , Pname:?GLenum
      , Params:?GLuint64EXT*
      >>
    )
.

%% GL_EXT_transform_feedback

%% Func:       beginTransformFeedbackEXT
%% Args:       PrimitiveMode
%% Returns:    ok
%% C-API func: void glBeginTransformFeedbackEXT(GLenum primitiveMode)

beginTransformFeedbackEXT(PrimitiveMode)
 -> cast
    ( ?glBeginTransformFeedbackEXT
    , <<PrimitiveMode:?GLenum
      >>
    )
.

%% Func:       endTransformFeedbackEXT
%% Args:       
%% Returns:    ok
%% C-API func: void glEndTransformFeedbackEXT()

endTransformFeedbackEXT()
 -> cast
    ( ?glEndTransformFeedbackEXT
    , <<
      >>
    )
.

%% Func:       bindBufferRangeEXT
%% Args:       Target, Index, Buffer, Offset, Size
%% Returns:    ok
%% C-API func: void glBindBufferRangeEXT(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

bindBufferRangeEXT(Target, Index, Buffer, Offset, Size)
 -> cast
    ( ?glBindBufferRangeEXT
    , <<Target:?GLenum
      , Index:?GLuint
      , Buffer:?GLuint
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      >>
    )
.

%% Func:       bindBufferOffsetEXT
%% Args:       Target, Index, Buffer, Offset
%% Returns:    ok
%% C-API func: void glBindBufferOffsetEXT(GLenum target, GLuint index, GLuint buffer, GLintptr offset)

bindBufferOffsetEXT(Target, Index, Buffer, Offset)
 -> cast
    ( ?glBindBufferOffsetEXT
    , <<Target:?GLenum
      , Index:?GLuint
      , Buffer:?GLuint
      , Offset:?GLintptr
      >>
    )
.

%% Func:       bindBufferBaseEXT
%% Args:       Target, Index, Buffer
%% Returns:    ok
%% C-API func: void glBindBufferBaseEXT(GLenum target, GLuint index, GLuint buffer)

bindBufferBaseEXT(Target, Index, Buffer)
 -> cast
    ( ?glBindBufferBaseEXT
    , <<Target:?GLenum
      , Index:?GLuint
      , Buffer:?GLuint
      >>
    )
.

%% Func:       transformFeedbackVaryingsEXT
%% Args:       Program, Count, Varyings, BufferMode
%% Returns:    ok
%% C-API func: void glTransformFeedbackVaryingsEXT(GLuint program, GLsizei count, const GLchar** varyings, GLenum bufferMode);

transformFeedbackVaryingsEXT(Program, Count, Varyings, BufferMode)
 -> cast
    ( ?glTransformFeedbackVaryingsEXT
    , <<Program:?GLuint
      , Count:?GLsizei
      , Varyings:?_PTR
      , BufferMode:?GLenum
      >>
    )
.

%% Func:       getTransformFeedbackVaryingEXT
%% Args:       Program, Index, BufSize, Length, Size, Type, Name
%% Returns:    ok
%% C-API func: void glGetTransformFeedbackVaryingEXT(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);

getTransformFeedbackVaryingEXT(Program, Index, BufSize, Length, Size, Type, Name)
 -> cast
    ( ?glGetTransformFeedbackVaryingEXT
    , <<Program:?GLuint
      , Index:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , Size:?_PTR
      , Type:?_PTR
      , Name:?_PTR
      >>
    )
.

%% GL_EXT_direct_state_access

%% Func:       clientAttribDefaultEXT
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glClientAttribDefaultEXT(GLbitfield mask)

clientAttribDefaultEXT(Mask)
 -> cast
    ( ?glClientAttribDefaultEXT
    , <<Mask:?GLbitfield
      >>
    )
.

%% Func:       pushClientAttribDefaultEXT
%% Args:       Mask
%% Returns:    ok
%% C-API func: void glPushClientAttribDefaultEXT(GLbitfield mask)

pushClientAttribDefaultEXT(Mask)
 -> cast
    ( ?glPushClientAttribDefaultEXT
    , <<Mask:?GLbitfield
      >>
    )
.

%% Func:       matrixLoadfEXT
%% Args:       Mode, M
%% Returns:    ok
%% C-API func: void glMatrixLoadfEXT(GLenum mode, const GLfloat* m)

matrixLoadfEXT(Mode, M)
 -> cast
    ( ?glMatrixLoadfEXT
    , <<Mode:?GLenum
      , M:?_PTR
      >>
    )
.

%% Func:       matrixLoaddEXT
%% Args:       Mode, M
%% Returns:    ok
%% C-API func: void glMatrixLoaddEXT(GLenum mode, const GLdouble* m)

matrixLoaddEXT(Mode, M)
 -> cast
    ( ?glMatrixLoaddEXT
    , <<Mode:?GLenum
      , M:?_PTR
      >>
    )
.

%% Func:       matrixMultfEXT
%% Args:       Mode, M
%% Returns:    ok
%% C-API func: void glMatrixMultfEXT(GLenum mode, const GLfloat* m)

matrixMultfEXT(Mode, M)
 -> cast
    ( ?glMatrixMultfEXT
    , <<Mode:?GLenum
      , M:?_PTR
      >>
    )
.

%% Func:       matrixMultdEXT
%% Args:       Mode, M
%% Returns:    ok
%% C-API func: void glMatrixMultdEXT(GLenum mode, const GLdouble* m)

matrixMultdEXT(Mode, M)
 -> cast
    ( ?glMatrixMultdEXT
    , <<Mode:?GLenum
      , M:?_PTR
      >>
    )
.

%% Func:       matrixLoadIdentityEXT
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glMatrixLoadIdentityEXT(GLenum mode)

matrixLoadIdentityEXT(Mode)
 -> cast
    ( ?glMatrixLoadIdentityEXT
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       matrixRotatefEXT
%% Args:       Mode, Angle, X, Y, Z
%% Returns:    ok
%% C-API func: void glMatrixRotatefEXT(GLenum mode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z)

matrixRotatefEXT(Mode, Angle, X, Y, Z)
 -> cast
    ( ?glMatrixRotatefEXT
    , <<Mode:?GLenum
      , Angle:?GLfloat
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       matrixRotatedEXT
%% Args:       Mode, Angle, X, Y, Z
%% Returns:    ok
%% C-API func: void glMatrixRotatedEXT(GLenum mode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z)

matrixRotatedEXT(Mode, Angle, X, Y, Z)
 -> cast
    ( ?glMatrixRotatedEXT
    , <<Mode:?GLenum
      , Angle:?GLdouble
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       matrixScalefEXT
%% Args:       Mode, X, Y, Z
%% Returns:    ok
%% C-API func: void glMatrixScalefEXT(GLenum mode, GLfloat x, GLfloat y, GLfloat z)

matrixScalefEXT(Mode, X, Y, Z)
 -> cast
    ( ?glMatrixScalefEXT
    , <<Mode:?GLenum
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       matrixScaledEXT
%% Args:       Mode, X, Y, Z
%% Returns:    ok
%% C-API func: void glMatrixScaledEXT(GLenum mode, GLdouble x, GLdouble y, GLdouble z)

matrixScaledEXT(Mode, X, Y, Z)
 -> cast
    ( ?glMatrixScaledEXT
    , <<Mode:?GLenum
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       matrixTranslatefEXT
%% Args:       Mode, X, Y, Z
%% Returns:    ok
%% C-API func: void glMatrixTranslatefEXT(GLenum mode, GLfloat x, GLfloat y, GLfloat z)

matrixTranslatefEXT(Mode, X, Y, Z)
 -> cast
    ( ?glMatrixTranslatefEXT
    , <<Mode:?GLenum
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      >>
    )
.

%% Func:       matrixTranslatedEXT
%% Args:       Mode, X, Y, Z
%% Returns:    ok
%% C-API func: void glMatrixTranslatedEXT(GLenum mode, GLdouble x, GLdouble y, GLdouble z)

matrixTranslatedEXT(Mode, X, Y, Z)
 -> cast
    ( ?glMatrixTranslatedEXT
    , <<Mode:?GLenum
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       matrixFrustumEXT
%% Args:       Mode, Left, Right, Bottom, Top, ZNear, ZFar
%% Returns:    ok
%% C-API func: void glMatrixFrustumEXT(GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)

matrixFrustumEXT(Mode, Left, Right, Bottom, Top, ZNear, ZFar)
 -> cast
    ( ?glMatrixFrustumEXT
    , <<Mode:?GLenum
      , Left:?GLdouble
      , Right:?GLdouble
      , Bottom:?GLdouble
      , Top:?GLdouble
      , ZNear:?GLdouble
      , ZFar:?GLdouble
      >>
    )
.

%% Func:       matrixOrthoEXT
%% Args:       Mode, Left, Right, Bottom, Top, ZNear, ZFar
%% Returns:    ok
%% C-API func: void glMatrixOrthoEXT(GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)

matrixOrthoEXT(Mode, Left, Right, Bottom, Top, ZNear, ZFar)
 -> cast
    ( ?glMatrixOrthoEXT
    , <<Mode:?GLenum
      , Left:?GLdouble
      , Right:?GLdouble
      , Bottom:?GLdouble
      , Top:?GLdouble
      , ZNear:?GLdouble
      , ZFar:?GLdouble
      >>
    )
.

%% Func:       matrixPopEXT
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glMatrixPopEXT(GLenum mode)

matrixPopEXT(Mode)
 -> cast
    ( ?glMatrixPopEXT
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       matrixPushEXT
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glMatrixPushEXT(GLenum mode)

matrixPushEXT(Mode)
 -> cast
    ( ?glMatrixPushEXT
    , <<Mode:?GLenum
      >>
    )
.

%% Func:       matrixLoadTransposefEXT
%% Args:       Mode, M
%% Returns:    ok
%% C-API func: void glMatrixLoadTransposefEXT(GLenum mode, const GLfloat* m)

matrixLoadTransposefEXT(Mode, M)
 -> cast
    ( ?glMatrixLoadTransposefEXT
    , <<Mode:?GLenum
      , M:?_PTR
      >>
    )
.

%% Func:       matrixLoadTransposedEXT
%% Args:       Mode, M
%% Returns:    ok
%% C-API func: void glMatrixLoadTransposedEXT(GLenum mode, const GLdouble* m)

matrixLoadTransposedEXT(Mode, M)
 -> cast
    ( ?glMatrixLoadTransposedEXT
    , <<Mode:?GLenum
      , M:?_PTR
      >>
    )
.

%% Func:       matrixMultTransposefEXT
%% Args:       Mode, M
%% Returns:    ok
%% C-API func: void glMatrixMultTransposefEXT(GLenum mode, const GLfloat* m)

matrixMultTransposefEXT(Mode, M)
 -> cast
    ( ?glMatrixMultTransposefEXT
    , <<Mode:?GLenum
      , M:?_PTR
      >>
    )
.

%% Func:       matrixMultTransposedEXT
%% Args:       Mode, M
%% Returns:    ok
%% C-API func: void glMatrixMultTransposedEXT(GLenum mode, const GLdouble* m)

matrixMultTransposedEXT(Mode, M)
 -> cast
    ( ?glMatrixMultTransposedEXT
    , <<Mode:?GLenum
      , M:?_PTR
      >>
    )
.

%% Func:       textureParameterfEXT
%% Args:       Texture, Target, Pname, Param
%% Returns:    ok
%% C-API func: void glTextureParameterfEXT(GLuint texture, GLenum target, GLenum pname, GLfloat param)

textureParameterfEXT(Texture, Target, Pname, Param)
 -> cast
    ( ?glTextureParameterfEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       textureParameterfvEXT
%% Args:       Texture, Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTextureParameterfvEXT(GLuint texture, GLenum target, GLenum pname, const GLfloat* params)

textureParameterfvEXT(Texture, Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glTextureParameterfvEXT
    , [ <<Texture:?GLuint
      , Target:?GLenum
      , Pname:?GLenum
      >>
      , NewParams
      ]
    )
.

%% Func:       textureParameteriEXT
%% Args:       Texture, Target, Pname, Param
%% Returns:    ok
%% C-API func: void glTextureParameteriEXT(GLuint texture, GLenum target, GLenum pname, GLint param)

textureParameteriEXT(Texture, Target, Pname, Param)
 -> cast
    ( ?glTextureParameteriEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       textureParameterivEXT
%% Args:       Texture, Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTextureParameterivEXT(GLuint texture, GLenum target, GLenum pname, const GLint* params)

textureParameterivEXT(Texture, Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glTextureParameterivEXT
    , [ <<Texture:?GLuint
      , Target:?GLenum
      , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       textureImage1DEXT
%% Args:       Texture, Target, Level, Internalformat, Width, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTextureImage1DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

textureImage1DEXT(Texture, Target, Level, Internalformat, Width, Border, Format, Type, Pixels)
 -> cast
    ( ?glTextureImage1DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       textureImage2DEXT
%% Args:       Texture, Target, Level, Internalformat, Width, Height, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTextureImage2DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

textureImage2DEXT(Texture, Target, Level, Internalformat, Width, Height, Border, Format, Type, Pixels)
 -> cast
    ( ?glTextureImage2DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       textureSubImage1DEXT
%% Args:       Texture, Target, Level, Xoffset, Width, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTextureSubImage1DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels)

textureSubImage1DEXT(Texture, Target, Level, Xoffset, Width, Format, Type, Pixels)
 -> cast
    ( ?glTextureSubImage1DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Width:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       textureSubImage2DEXT
%% Args:       Texture, Target, Level, Xoffset, Yoffset, Width, Height, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTextureSubImage2DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels)

textureSubImage2DEXT(Texture, Target, Level, Xoffset, Yoffset, Width, Height, Format, Type, Pixels)
 -> cast
    ( ?glTextureSubImage2DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
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

%% Func:       copyTextureImage1DEXT
%% Args:       Texture, Target, Level, Internalformat, X, Y, Width, Border
%% Returns:    ok
%% C-API func: void glCopyTextureImage1DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

copyTextureImage1DEXT(Texture, Target, Level, Internalformat, X, Y, Width, Border)
 -> cast
    ( ?glCopyTextureImage1DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Border:?GLint
      >>
    )
.

%% Func:       copyTextureImage2DEXT
%% Args:       Texture, Target, Level, Internalformat, X, Y, Width, Height, Border
%% Returns:    ok
%% C-API func: void glCopyTextureImage2DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

copyTextureImage2DEXT(Texture, Target, Level, Internalformat, X, Y, Width, Height, Border)
 -> cast
    ( ?glCopyTextureImage2DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      >>
    )
.

%% Func:       copyTextureSubImage1DEXT
%% Args:       Texture, Target, Level, Xoffset, X, Y, Width
%% Returns:    ok
%% C-API func: void glCopyTextureSubImage1DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

copyTextureSubImage1DEXT(Texture, Target, Level, Xoffset, X, Y, Width)
 -> cast
    ( ?glCopyTextureSubImage1DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      >>
    )
.

%% Func:       copyTextureSubImage2DEXT
%% Args:       Texture, Target, Level, Xoffset, Yoffset, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glCopyTextureSubImage2DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

copyTextureSubImage2DEXT(Texture, Target, Level, Xoffset, Yoffset, X, Y, Width, Height)
 -> cast
    ( ?glCopyTextureSubImage2DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
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

%% Func:       getTextureImageEXT
%% Args:       Texture, Target, Level, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glGetTextureImageEXT(GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels)

getTextureImageEXT(Texture, Target, Level, Format, Type, Pixels)
 -> cast
    ( ?glGetTextureImageEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       getTextureParameterfvEXT
%% Args:       Texture, Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetTextureParameterfvEXT(GLuint texture, GLenum target, GLenum pname, GLfloat* params)

getTextureParameterfvEXT(Texture, Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetTextureParameterfvEXT
      , <<Texture:?GLuint
        , Target:?GLenum
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

%% Func:       getTextureParameterivEXT
%% Args:       Texture, Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetTextureParameterivEXT(GLuint texture, GLenum target, GLenum pname, GLint* params)

getTextureParameterivEXT(Texture, Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetTextureParameterivEXT
      , <<Texture:?GLuint
        , Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetTextureParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getTextureLevelParameterfvEXT
%% Args:       Texture, Target, Level, Pname
%% Returns:    [Params]
%% C-API func: void glGetTextureLevelParameterfvEXT(GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat* params)

getTextureLevelParameterfvEXT(Texture, Target, Level, Pname, Params)
 -> Bin
    = call
      ( ?glGetTextureLevelParameterfvEXT
      , <<Texture:?GLuint
        , Target:?GLenum
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

%% Func:       getTextureLevelParameterivEXT
%% Args:       Texture, Target, Level, Pname
%% Returns:    [Params]
%% C-API func: void glGetTextureLevelParameterivEXT(GLuint texture, GLenum target, GLint level, GLenum pname, GLint* params)

getTextureLevelParameterivEXT(Texture, Target, Level, Pname, Params)
 -> Bin
    = call
      ( ?glGetTextureLevelParameterivEXT
      , <<Texture:?GLuint
        , Target:?GLenum
        , Level:?GLint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetTextureLevelParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       textureImage3DEXT
%% Args:       Texture, Target, Level, Internalformat, Width, Height, Depth, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTextureImage3DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

textureImage3DEXT(Texture, Target, Level, Internalformat, Width, Height, Depth, Border, Format, Type, Pixels)
 -> cast
    ( ?glTextureImage3DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       textureSubImage3DEXT
%% Args:       Texture, Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glTextureSubImage3DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels)

textureSubImage3DEXT(Texture, Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, Type, Pixels)
 -> cast
    ( ?glTextureSubImage3DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       copyTextureSubImage3DEXT
%% Args:       Texture, Target, Level, Xoffset, Yoffset, Zoffset, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glCopyTextureSubImage3DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

copyTextureSubImage3DEXT(Texture, Target, Level, Xoffset, Yoffset, Zoffset, X, Y, Width, Height)
 -> cast
    ( ?glCopyTextureSubImage3DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       multiTexParameterfEXT
%% Args:       Texunit, Target, Pname, Param
%% Returns:    ok
%% C-API func: void glMultiTexParameterfEXT(GLenum texunit, GLenum target, GLenum pname, GLfloat param)

multiTexParameterfEXT(Texunit, Target, Pname, Param)
 -> cast
    ( ?glMultiTexParameterfEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       multiTexParameterfvEXT
%% Args:       Texunit, Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMultiTexParameterfvEXT(GLenum texunit, GLenum target, GLenum pname, const GLfloat* params)

multiTexParameterfvEXT(Texunit, Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glMultiTexParameterfvEXT
    , [ <<Texunit:?GLenum
        , Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       multiTexParameteriEXT
%% Args:       Texunit, Target, Pname, Param
%% Returns:    ok
%% C-API func: void glMultiTexParameteriEXT(GLenum texunit, GLenum target, GLenum pname, GLint param)

multiTexParameteriEXT(Texunit, Target, Pname, Param)
 -> cast
    ( ?glMultiTexParameteriEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       multiTexParameterivEXT
%% Args:       Texunit, Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMultiTexParameterivEXT(GLenum texunit, GLenum target, GLenum pname, const GLint* params)

multiTexParameterivEXT(Texunit, Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glMultiTexParameterivEXT
    , [ <<Texunit:?GLenum
        , Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       multiTexImage1DEXT
%% Args:       Texunit, Target, Level, Internalformat, Width, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glMultiTexImage1DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

multiTexImage1DEXT(Texunit, Target, Level, Internalformat, Width, Border, Format, Type, Pixels)
 -> cast
    ( ?glMultiTexImage1DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       multiTexImage2DEXT
%% Args:       Texunit, Target, Level, Internalformat, Width, Height, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glMultiTexImage2DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

multiTexImage2DEXT(Texunit, Target, Level, Internalformat, Width, Height, Border, Format, Type, Pixels)
 -> cast
    ( ?glMultiTexImage2DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       multiTexSubImage1DEXT
%% Args:       Texunit, Target, Level, Xoffset, Width, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glMultiTexSubImage1DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels)

multiTexSubImage1DEXT(Texunit, Target, Level, Xoffset, Width, Format, Type, Pixels)
 -> cast
    ( ?glMultiTexSubImage1DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Width:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       multiTexSubImage2DEXT
%% Args:       Texunit, Target, Level, Xoffset, Yoffset, Width, Height, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glMultiTexSubImage2DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels)

multiTexSubImage2DEXT(Texunit, Target, Level, Xoffset, Yoffset, Width, Height, Format, Type, Pixels)
 -> cast
    ( ?glMultiTexSubImage2DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
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

%% Func:       copyMultiTexImage1DEXT
%% Args:       Texunit, Target, Level, Internalformat, X, Y, Width, Border
%% Returns:    ok
%% C-API func: void glCopyMultiTexImage1DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

copyMultiTexImage1DEXT(Texunit, Target, Level, Internalformat, X, Y, Width, Border)
 -> cast
    ( ?glCopyMultiTexImage1DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Border:?GLint
      >>
    )
.

%% Func:       copyMultiTexImage2DEXT
%% Args:       Texunit, Target, Level, Internalformat, X, Y, Width, Height, Border
%% Returns:    ok
%% C-API func: void glCopyMultiTexImage2DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

copyMultiTexImage2DEXT(Texunit, Target, Level, Internalformat, X, Y, Width, Height, Border)
 -> cast
    ( ?glCopyMultiTexImage2DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      >>
    )
.

%% Func:       copyMultiTexSubImage1DEXT
%% Args:       Texunit, Target, Level, Xoffset, X, Y, Width
%% Returns:    ok
%% C-API func: void glCopyMultiTexSubImage1DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

copyMultiTexSubImage1DEXT(Texunit, Target, Level, Xoffset, X, Y, Width)
 -> cast
    ( ?glCopyMultiTexSubImage1DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      >>
    )
.

%% Func:       copyMultiTexSubImage2DEXT
%% Args:       Texunit, Target, Level, Xoffset, Yoffset, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glCopyMultiTexSubImage2DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

copyMultiTexSubImage2DEXT(Texunit, Target, Level, Xoffset, Yoffset, X, Y, Width, Height)
 -> cast
    ( ?glCopyMultiTexSubImage2DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
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

%% Func:       getMultiTexImageEXT
%% Args:       Texunit, Target, Level, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glGetMultiTexImageEXT(GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels)

getMultiTexImageEXT(Texunit, Target, Level, Format, Type, Pixels)
 -> cast
    ( ?glGetMultiTexImageEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       getMultiTexParameterfvEXT
%% Args:       Texunit, Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMultiTexParameterfvEXT(GLenum texunit, GLenum target, GLenum pname, GLfloat* params)

getMultiTexParameterfvEXT(Texunit, Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetMultiTexParameterfvEXT
      , <<Texunit:?GLenum
        , Target:?GLenum
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

%% Func:       getMultiTexParameterivEXT
%% Args:       Texunit, Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMultiTexParameterivEXT(GLenum texunit, GLenum target, GLenum pname, GLint* params)

getMultiTexParameterivEXT(Texunit, Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetMultiTexParameterivEXT
      , <<Texunit:?GLenum
        , Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetMultiTexParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getMultiTexLevelParameterfvEXT
%% Args:       Texunit, Target, Level, Pname
%% Returns:    [Params]
%% C-API func: void glGetMultiTexLevelParameterfvEXT(GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat* params)

getMultiTexLevelParameterfvEXT(Texunit, Target, Level, Pname, Params)
 -> Bin
    = call
      ( ?glGetMultiTexLevelParameterfvEXT
      , <<Texunit:?GLenum
        , Target:?GLenum
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

%% Func:       getMultiTexLevelParameterivEXT
%% Args:       Texunit, Target, Level, Pname
%% Returns:    [Params]
%% C-API func: void glGetMultiTexLevelParameterivEXT(GLenum texunit, GLenum target, GLint level, GLenum pname, GLint* params)

getMultiTexLevelParameterivEXT(Texunit, Target, Level, Pname, Params)
 -> Bin
    = call
      ( ?glGetMultiTexLevelParameterivEXT
      , <<Texunit:?GLenum
        , Target:?GLenum
        , Level:?GLint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetMultiTexLevelParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       multiTexImage3DEXT
%% Args:       Texunit, Target, Level, Internalformat, Width, Height, Depth, Border, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glMultiTexImage3DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels)

multiTexImage3DEXT(Texunit, Target, Level, Internalformat, Width, Height, Depth, Border, Format, Type, Pixels)
 -> cast
    ( ?glMultiTexImage3DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Border:?GLint
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       multiTexSubImage3DEXT
%% Args:       Texunit, Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, Type, Pixels
%% Returns:    ok
%% C-API func: void glMultiTexSubImage3DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels)

multiTexSubImage3DEXT(Texunit, Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, Type, Pixels)
 -> cast
    ( ?glMultiTexSubImage3DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Format:?GLenum
      , Type:?GLenum
      , Pixels:?_PTR
      >>
    )
.

%% Func:       copyMultiTexSubImage3DEXT
%% Args:       Texunit, Target, Level, Xoffset, Yoffset, Zoffset, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glCopyMultiTexSubImage3DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

copyMultiTexSubImage3DEXT(Texunit, Target, Level, Xoffset, Yoffset, Zoffset, X, Y, Width, Height)
 -> cast
    ( ?glCopyMultiTexSubImage3DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       bindMultiTextureEXT
%% Args:       Texunit, Target, Texture
%% Returns:    ok
%% C-API func: void glBindMultiTextureEXT(GLenum texunit, GLenum target, GLuint texture)

bindMultiTextureEXT(Texunit, Target, Texture)
 -> cast
    ( ?glBindMultiTextureEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Texture:?GLuint
      >>
    )
.

%% Func:       enableClientStateIndexedEXT
%% Args:       Array, Index
%% Returns:    ok
%% C-API func: void glEnableClientStateIndexedEXT(GLenum array, GLuint index)

enableClientStateIndexedEXT(Array, Index)
 -> cast
    ( ?glEnableClientStateIndexedEXT
    , <<Array:?GLenum
      , Index:?GLuint
      >>
    )
.

%% Func:       disableClientStateIndexedEXT
%% Args:       Array, Index
%% Returns:    ok
%% C-API func: void glDisableClientStateIndexedEXT(GLenum array, GLuint index)

disableClientStateIndexedEXT(Array, Index)
 -> cast
    ( ?glDisableClientStateIndexedEXT
    , <<Array:?GLenum
      , Index:?GLuint
      >>
    )
.

%% Func:       multiTexCoordPointerEXT
%% Args:       Texunit, Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glMultiTexCoordPointerEXT(GLenum texunit, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

multiTexCoordPointerEXT(Texunit, Size, Type, Stride, Pointer)
 -> cast
    ( ?glMultiTexCoordPointerEXT
    , <<Texunit:?GLenum
      , Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       multiTexEnvfEXT
%% Args:       Texunit, Target, Pname, Param
%% Returns:    ok
%% C-API func: void glMultiTexEnvfEXT(GLenum texunit, GLenum target, GLenum pname, GLfloat param)

multiTexEnvfEXT(Texunit, Target, Pname, Param)
 -> cast
    ( ?glMultiTexEnvfEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       multiTexEnvfvEXT
%% Args:       Texunit, Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMultiTexEnvfvEXT(GLenum texunit, GLenum target, GLenum pname, const GLfloat* params)

multiTexEnvfvEXT(Texunit, Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glMultiTexEnvfvEXT
    , [ <<Texunit:?GLenum
        , Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       multiTexEnviEXT
%% Args:       Texunit, Target, Pname, Param
%% Returns:    ok
%% C-API func: void glMultiTexEnviEXT(GLenum texunit, GLenum target, GLenum pname, GLint param)

multiTexEnviEXT(Texunit, Target, Pname, Param)
 -> cast
    ( ?glMultiTexEnviEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       multiTexEnvivEXT
%% Args:       Texunit, Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMultiTexEnvivEXT(GLenum texunit, GLenum target, GLenum pname, const GLint* params)

multiTexEnvivEXT(Texunit, Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glMultiTexEnvivEXT
    , [ <<Texunit:?GLenum
        , Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       multiTexGendEXT
%% Args:       Texunit, Coord, Pname, Param
%% Returns:    ok
%% C-API func: void glMultiTexGendEXT(GLenum texunit, GLenum coord, GLenum pname, GLdouble param)

multiTexGendEXT(Texunit, Coord, Pname, Param)
 -> cast
    ( ?glMultiTexGendEXT
    , <<Texunit:?GLenum
      , Coord:?GLenum
      , Pname:?GLenum
      , Param:?GLdouble
      >>
    )
.

%% Func:       multiTexGendvEXT
%% Args:       Texunit, Coord, Pname, Params
%% Returns:    ok
%% C-API func: void glMultiTexGendvEXT(GLenum texunit, GLenum coord, GLenum pname, const GLdouble* params)

multiTexGendvEXT(Texunit, Coord, Pname, Params)
 -> cast
    ( ?glMultiTexGendvEXT
    , <<Texunit:?GLenum
      , Coord:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       multiTexGenfEXT
%% Args:       Texunit, Coord, Pname, Param
%% Returns:    ok
%% C-API func: void glMultiTexGenfEXT(GLenum texunit, GLenum coord, GLenum pname, GLfloat param)

multiTexGenfEXT(Texunit, Coord, Pname, Param)
 -> cast
    ( ?glMultiTexGenfEXT
    , <<Texunit:?GLenum
      , Coord:?GLenum
      , Pname:?GLenum
      , Param:?GLfloat
      >>
    )
.

%% Func:       multiTexGenfvEXT
%% Args:       Texunit, Coord, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMultiTexGenfvEXT(GLenum texunit, GLenum coord, GLenum pname, const GLfloat* params)

multiTexGenfvEXT(Texunit, Coord, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glMultiTexGenfvEXT
    , [ <<Texunit:?GLenum
        , Coord:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       multiTexGeniEXT
%% Args:       Texunit, Coord, Pname, Param
%% Returns:    ok
%% C-API func: void glMultiTexGeniEXT(GLenum texunit, GLenum coord, GLenum pname, GLint param)

multiTexGeniEXT(Texunit, Coord, Pname, Param)
 -> cast
    ( ?glMultiTexGeniEXT
    , <<Texunit:?GLenum
      , Coord:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       multiTexGenivEXT
%% Args:       Texunit, Coord, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMultiTexGenivEXT(GLenum texunit, GLenum coord, GLenum pname, const GLint* params)

multiTexGenivEXT(Texunit, Coord, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glMultiTexGenivEXT
    , [ <<Texunit:?GLenum
        , Coord:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       getMultiTexEnvfvEXT
%% Args:       Texunit, Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMultiTexEnvfvEXT(GLenum texunit, GLenum target, GLenum pname, GLfloat* params)

getMultiTexEnvfvEXT(Texunit, Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetMultiTexEnvfvEXT
      , <<Texunit:?GLenum
        , Target:?GLenum
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

%% Func:       getMultiTexEnvivEXT
%% Args:       Texunit, Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMultiTexEnvivEXT(GLenum texunit, GLenum target, GLenum pname, GLint* params)

getMultiTexEnvivEXT(Texunit, Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetMultiTexEnvivEXT
      , <<Texunit:?GLenum
        , Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetMultiTexEnvivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getMultiTexGendvEXT
%% Args:       Texunit, Coord, Pname, Params
%% Returns:    ok
%% C-API func: void glGetMultiTexGendvEXT(GLenum texunit, GLenum coord, GLenum pname, GLdouble* params)

getMultiTexGendvEXT(Texunit, Coord, Pname, Params)
 -> cast
    ( ?glGetMultiTexGendvEXT
    , <<Texunit:?GLenum
      , Coord:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getMultiTexGenfvEXT
%% Args:       Texunit, Coord, Pname
%% Returns:    [Params]
%% C-API func: void glGetMultiTexGenfvEXT(GLenum texunit, GLenum coord, GLenum pname, GLfloat* params)

getMultiTexGenfvEXT(Texunit, Coord, Pname, Params)
 -> Bin
    = call
      ( ?glGetMultiTexGenfvEXT
      , <<Texunit:?GLenum
        , Coord:?GLenum
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

%% Func:       getMultiTexGenivEXT
%% Args:       Texunit, Coord, Pname
%% Returns:    [Params]
%% C-API func: void glGetMultiTexGenivEXT(GLenum texunit, GLenum coord, GLenum pname, GLint* params)

getMultiTexGenivEXT(Texunit, Coord, Pname, Params)
 -> Bin
    = call
      ( ?glGetMultiTexGenivEXT
      , <<Texunit:?GLenum
        , Coord:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetMultiTexGenivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getFloatIndexedvEXT
%% Args:       Target, Index, Data
%% Returns:    ok
%% C-API func: void glGetFloatIndexedvEXT(GLenum target, GLuint index, GLfloat* data)

getFloatIndexedvEXT(Target, Index, Data)
 -> cast
    ( ?glGetFloatIndexedvEXT
    , <<Target:?GLenum
      , Index:?GLuint
      , Data:?_PTR
      >>
    )
.

%% Func:       getDoubleIndexedvEXT
%% Args:       Target, Index, Data
%% Returns:    ok
%% C-API func: void glGetDoubleIndexedvEXT(GLenum target, GLuint index, GLdouble* data)

getDoubleIndexedvEXT(Target, Index, Data)
 -> cast
    ( ?glGetDoubleIndexedvEXT
    , <<Target:?GLenum
      , Index:?GLuint
      , Data:?_PTR
      >>
    )
.

%% Func:       getPointerIndexedvEXT
%% Args:       Target, Index, Data
%% Returns:    ok
%% C-API func: void glGetPointerIndexedvEXT(GLenum target, GLuint index, GLvoid** data)

getPointerIndexedvEXT(Target, Index, Data)
 -> cast
    ( ?glGetPointerIndexedvEXT
    , <<Target:?GLenum
      , Index:?GLuint
      , Data:?_PTR
      >>
    )
.

%% Func:       compressedTextureImage3DEXT
%% Args:       Texture, Target, Level, Internalformat, Width, Height, Depth, Border, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedTextureImage3DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* bits)

compressedTextureImage3DEXT(Texture, Target, Level, Internalformat, Width, Height, Depth, Border, ImageSize, Bits)
 -> cast
    ( ?glCompressedTextureImage3DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       compressedTextureImage2DEXT
%% Args:       Texture, Target, Level, Internalformat, Width, Height, Border, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedTextureImage2DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* bits)

compressedTextureImage2DEXT(Texture, Target, Level, Internalformat, Width, Height, Border, ImageSize, Bits)
 -> cast
    ( ?glCompressedTextureImage2DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       compressedTextureImage1DEXT
%% Args:       Texture, Target, Level, Internalformat, Width, Border, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedTextureImage1DEXT(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* bits)

compressedTextureImage1DEXT(Texture, Target, Level, Internalformat, Width, Border, ImageSize, Bits)
 -> cast
    ( ?glCompressedTextureImage1DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       compressedTextureSubImage3DEXT
%% Args:       Texture, Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedTextureSubImage3DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* bits)

compressedTextureSubImage3DEXT(Texture, Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, ImageSize, Bits)
 -> cast
    ( ?glCompressedTextureSubImage3DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       compressedTextureSubImage2DEXT
%% Args:       Texture, Target, Level, Xoffset, Yoffset, Width, Height, Format, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedTextureSubImage2DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* bits)

compressedTextureSubImage2DEXT(Texture, Target, Level, Xoffset, Yoffset, Width, Height, Format, ImageSize, Bits)
 -> cast
    ( ?glCompressedTextureSubImage2DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       compressedTextureSubImage1DEXT
%% Args:       Texture, Target, Level, Xoffset, Width, Format, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedTextureSubImage1DEXT(GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* bits)

compressedTextureSubImage1DEXT(Texture, Target, Level, Xoffset, Width, Format, ImageSize, Bits)
 -> cast
    ( ?glCompressedTextureSubImage1DEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Width:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       getCompressedTextureImageEXT
%% Args:       Texture, Target, Lod, Img
%% Returns:    ok
%% C-API func: void glGetCompressedTextureImageEXT(GLuint texture, GLenum target, GLint lod, GLvoid* img)

getCompressedTextureImageEXT(Texture, Target, Lod, Img)
 -> cast
    ( ?glGetCompressedTextureImageEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Lod:?GLint
      , Img:?_PTR
      >>
    )
.

%% Func:       compressedMultiTexImage3DEXT
%% Args:       Texunit, Target, Level, Internalformat, Width, Height, Depth, Border, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedMultiTexImage3DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* bits)

compressedMultiTexImage3DEXT(Texunit, Target, Level, Internalformat, Width, Height, Depth, Border, ImageSize, Bits)
 -> cast
    ( ?glCompressedMultiTexImage3DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       compressedMultiTexImage2DEXT
%% Args:       Texunit, Target, Level, Internalformat, Width, Height, Border, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedMultiTexImage2DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* bits)

compressedMultiTexImage2DEXT(Texunit, Target, Level, Internalformat, Width, Height, Border, ImageSize, Bits)
 -> cast
    ( ?glCompressedMultiTexImage2DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       compressedMultiTexImage1DEXT
%% Args:       Texunit, Target, Level, Internalformat, Width, Border, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedMultiTexImage1DEXT(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* bits)

compressedMultiTexImage1DEXT(Texunit, Target, Level, Internalformat, Width, Border, ImageSize, Bits)
 -> cast
    ( ?glCompressedMultiTexImage1DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Border:?GLint
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       compressedMultiTexSubImage3DEXT
%% Args:       Texunit, Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedMultiTexSubImage3DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* bits)

compressedMultiTexSubImage3DEXT(Texunit, Target, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth, Format, ImageSize, Bits)
 -> cast
    ( ?glCompressedMultiTexSubImage3DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       compressedMultiTexSubImage2DEXT
%% Args:       Texunit, Target, Level, Xoffset, Yoffset, Width, Height, Format, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedMultiTexSubImage2DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* bits)

compressedMultiTexSubImage2DEXT(Texunit, Target, Level, Xoffset, Yoffset, Width, Height, Format, ImageSize, Bits)
 -> cast
    ( ?glCompressedMultiTexSubImage2DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       compressedMultiTexSubImage1DEXT
%% Args:       Texunit, Target, Level, Xoffset, Width, Format, ImageSize, Bits
%% Returns:    ok
%% C-API func: void glCompressedMultiTexSubImage1DEXT(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* bits)

compressedMultiTexSubImage1DEXT(Texunit, Target, Level, Xoffset, Width, Format, ImageSize, Bits)
 -> cast
    ( ?glCompressedMultiTexSubImage1DEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Level:?GLint
      , Xoffset:?GLint
      , Width:?GLsizei
      , Format:?GLenum
      , ImageSize:?GLsizei
      , Bits:?_PTR
      >>
    )
.

%% Func:       getCompressedMultiTexImageEXT
%% Args:       Texunit, Target, Lod, Img
%% Returns:    ok
%% C-API func: void glGetCompressedMultiTexImageEXT(GLenum texunit, GLenum target, GLint lod, GLvoid* img)

getCompressedMultiTexImageEXT(Texunit, Target, Lod, Img)
 -> cast
    ( ?glGetCompressedMultiTexImageEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Lod:?GLint
      , Img:?_PTR
      >>
    )
.

%% Func:       namedProgramStringEXT
%% Args:       Program, Target, Format, Len, String
%% Returns:    ok
%% C-API func: void glNamedProgramStringEXT(GLuint program, GLenum target, GLenum format, GLsizei len, const GLvoid* string)

namedProgramStringEXT(Program, Target, Format, Len, String)
 -> cast
    ( ?glNamedProgramStringEXT
    , <<Program:?GLuint
      , Target:?GLenum
      , Format:?GLenum
      , Len:?GLsizei
      , String:?_PTR
      >>
    )
.

%% Func:       namedProgramLocalParameter4dEXT
%% Args:       Program, Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParameter4dEXT(GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

namedProgramLocalParameter4dEXT(Program, Target, Index, X, Y, Z, W)
 -> cast
    ( ?glNamedProgramLocalParameter4dEXT
    , <<Program:?GLuint
      , Target:?GLenum
      , Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       namedProgramLocalParameter4dvEXT
%% Args:       Program, Target, Index, Params
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParameter4dvEXT(GLuint program, GLenum target, GLuint index, const GLdouble* params)

namedProgramLocalParameter4dvEXT(Program, Target, Index, Params)
 -> cast
    ( ?glNamedProgramLocalParameter4dvEXT
    , <<Program:?GLuint
      , Target:?GLenum
      , Index:?GLuint
      , Params:?_PTR
      >>
    )
.

%% Func:       namedProgramLocalParameter4fEXT
%% Args:       Program, Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParameter4fEXT(GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

namedProgramLocalParameter4fEXT(Program, Target, Index, X, Y, Z, W)
 -> cast
    ( ?glNamedProgramLocalParameter4fEXT
    , <<Program:?GLuint
      , Target:?GLenum
      , Index:?GLuint
      , X:?GLfloat
      , Y:?GLfloat
      , Z:?GLfloat
      , W:?GLfloat
      >>
    )
.

%% Func:       namedProgramLocalParameter4fvEXT
%% Args:       Program, Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParameter4fvEXT(GLuint program, GLenum target, GLuint index, const GLfloat* params)

namedProgramLocalParameter4fvEXT(Program, Target, Index, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glNamedProgramLocalParameter4fvEXT
    , [ <<Program:?GLuint
        , Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       getNamedProgramLocalParameterdvEXT
%% Args:       Program, Target, Index, Params
%% Returns:    ok
%% C-API func: void glGetNamedProgramLocalParameterdvEXT(GLuint program, GLenum target, GLuint index, GLdouble* params)

getNamedProgramLocalParameterdvEXT(Program, Target, Index, Params)
 -> cast
    ( ?glGetNamedProgramLocalParameterdvEXT
    , <<Program:?GLuint
      , Target:?GLenum
      , Index:?GLuint
      , Params:?_PTR
      >>
    )
.

%% Func:       getNamedProgramLocalParameterfvEXT
%% Args:       Program, Target, Index
%% Returns:    [Params]
%% C-API func: void glGetNamedProgramLocalParameterfvEXT(GLuint program, GLenum target, GLuint index, GLfloat* params)

getNamedProgramLocalParameterfvEXT(Program, Target, Index, Params)
 -> Bin
    = call
      ( ?glGetNamedProgramLocalParameterfvEXT
      , <<Program:?GLuint
        , Target:?GLenum
        , Index:?GLuint
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

%% Func:       getNamedProgramivEXT
%% Args:       Program, Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetNamedProgramivEXT(GLuint program, GLenum target, GLenum pname, GLint* params)

getNamedProgramivEXT(Program, Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetNamedProgramivEXT
      , <<Program:?GLuint
        , Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetNamedProgramivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getNamedProgramStringEXT
%% Args:       Program, Target, Pname, String
%% Returns:    ok
%% C-API func: void glGetNamedProgramStringEXT(GLuint program, GLenum target, GLenum pname, GLvoid* string)

getNamedProgramStringEXT(Program, Target, Pname, String)
 -> cast
    ( ?glGetNamedProgramStringEXT
    , <<Program:?GLuint
      , Target:?GLenum
      , Pname:?GLenum
      , String:?_PTR
      >>
    )
.

%% Func:       namedProgramLocalParameters4fvEXT
%% Args:       Program, Target, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParameters4fvEXT(GLuint program, GLenum target, GLuint index, GLsizei count, const GLfloat* params)

namedProgramLocalParameters4fvEXT(Program, Target, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLfloat
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
    ( ?glNamedProgramLocalParameters4fvEXT
    , [ <<Program:?GLuint
        , Target:?GLenum
        , Index:?GLuint
        , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% Func:       namedProgramLocalParameterI4iEXT
%% Args:       Program, Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParameterI4iEXT(GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)

namedProgramLocalParameterI4iEXT(Program, Target, Index, X, Y, Z, W)
 -> cast
    ( ?glNamedProgramLocalParameterI4iEXT
    , <<Program:?GLuint
      , Target:?GLenum
      , Index:?GLuint
      , X:?GLint
      , Y:?GLint
      , Z:?GLint
      , W:?GLint
      >>
    )
.

%% Func:       namedProgramLocalParameterI4ivEXT
%% Args:       Program, Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParameterI4ivEXT(GLuint program, GLenum target, GLuint index, const GLint* params)

namedProgramLocalParameterI4ivEXT(Program, Target, Index, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glNamedProgramLocalParameterI4ivEXT
    , [ <<Program:?GLuint
        , Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       namedProgramLocalParametersI4ivEXT
%% Args:       Program, Target, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParametersI4ivEXT(GLuint program, GLenum target, GLuint index, GLsizei count, const GLint* params)

namedProgramLocalParametersI4ivEXT(Program, Target, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glNamedProgramLocalParametersI4ivEXT
    , [ <<Program:?GLuint
        , Target:?GLenum
        , Index:?GLuint
        , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% Func:       namedProgramLocalParameterI4uiEXT
%% Args:       Program, Target, Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParameterI4uiEXT(GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

namedProgramLocalParameterI4uiEXT(Program, Target, Index, X, Y, Z, W)
 -> cast
    ( ?glNamedProgramLocalParameterI4uiEXT
    , <<Program:?GLuint
      , Target:?GLenum
      , Index:?GLuint
      , X:?GLuint
      , Y:?GLuint
      , Z:?GLuint
      , W:?GLuint
      >>
    )
.

%% Func:       namedProgramLocalParameterI4uivEXT
%% Args:       Program, Target, Index, <<[Params]>>
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParameterI4uivEXT(GLuint program, GLenum target, GLuint index, const GLuint* params)

namedProgramLocalParameterI4uivEXT(Program, Target, Index, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glNamedProgramLocalParameterI4uivEXT
    , [ <<Program:?GLuint
        , Target:?GLenum
        , Index:?GLuint
        >>
      , NewParams
      ]
    )
.

%% Func:       namedProgramLocalParametersI4uivEXT
%% Args:       Program, Target, Index, Count, <<[Params]>>
%% Returns:    ok
%% C-API func: void glNamedProgramLocalParametersI4uivEXT(GLuint program, GLenum target, GLuint index, GLsizei count, const GLuint* params)

namedProgramLocalParametersI4uivEXT(Program, Target, Index, Count, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glNamedProgramLocalParametersI4uivEXT
    , [ <<Program:?GLuint
        , Target:?GLenum
        , Index:?GLuint
        , Count:?GLsizei
        >>
      , NewParams
      ]
    )
.

%% Func:       getNamedProgramLocalParameterIivEXT
%% Args:       Program, Target, Index
%% Returns:    [Params]
%% C-API func: void glGetNamedProgramLocalParameterIivEXT(GLuint program, GLenum target, GLuint index, GLint* params)

getNamedProgramLocalParameterIivEXT(Program, Target, Index, Params)
 -> Bin
    = call
      ( ?glGetNamedProgramLocalParameterIivEXT
      , <<Program:?GLuint
        , Target:?GLenum
        , Index:?GLuint
        >>
      )
  , ParamsLen
    = glGetNamedProgramLocalParameterIivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getNamedProgramLocalParameterIuivEXT
%% Args:       Program, Target, Index, Params
%% Returns:    ok
%% C-API func: void glGetNamedProgramLocalParameterIuivEXT(GLuint program, GLenum target, GLuint index, GLuint* params)

getNamedProgramLocalParameterIuivEXT(Program, Target, Index, Params)
 -> cast
    ( ?glGetNamedProgramLocalParameterIuivEXT
    , <<Program:?GLuint
      , Target:?GLenum
      , Index:?GLuint
      , Params:?_PTR
      >>
    )
.

%% Func:       textureParameterIivEXT
%% Args:       Texture, Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTextureParameterIivEXT(GLuint texture, GLenum target, GLenum pname, const GLint* params)

textureParameterIivEXT(Texture, Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glTextureParameterIivEXT
    , [ <<Texture:?GLuint
        , Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       textureParameterIuivEXT
%% Args:       Texture, Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glTextureParameterIuivEXT(GLuint texture, GLenum target, GLenum pname, const GLuint* params)

textureParameterIuivEXT(Texture, Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glTextureParameterIuivEXT
    , [ <<Texture:?GLuint
        , Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       getTextureParameterIivEXT
%% Args:       Texture, Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetTextureParameterIivEXT(GLuint texture, GLenum target, GLenum pname, GLint* params)

getTextureParameterIivEXT(Texture, Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetTextureParameterIivEXT
      , <<Texture:?GLuint
        , Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetTextureParameterIivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getTextureParameterIuivEXT
%% Args:       Texture, Target, Pname, Params
%% Returns:    ok
%% C-API func: void glGetTextureParameterIuivEXT(GLuint texture, GLenum target, GLenum pname, GLuint* params)

getTextureParameterIuivEXT(Texture, Target, Pname, Params)
 -> cast
    ( ?glGetTextureParameterIuivEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       multiTexParameterIivEXT
%% Args:       Texunit, Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMultiTexParameterIivEXT(GLenum texunit, GLenum target, GLenum pname, const GLint* params)

multiTexParameterIivEXT(Texunit, Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GLint
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
    ( ?glMultiTexParameterIivEXT
    , [ <<Texunit:?GLenum
        , Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       multiTexParameterIuivEXT
%% Args:       Texunit, Target, Pname, <<[Params]>>
%% Returns:    ok
%% C-API func: void glMultiTexParameterIuivEXT(GLenum texunit, GLenum target, GLenum pname, const GLuint* params)

multiTexParameterIuivEXT(Texunit, Target, Pname, Params)
 -> NewParams
    = if
        is_list(Params)
          -> ParamsLen = length(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
               )
             ]
      ; is_tuple(Params)
          -> ParamsLen = size(Params)
          ,  [ <<ParamsLen:32/native
               >>
             , term2bin
               ( Params
               , ParamsLen
               , ?GL_UNSIGNED_INT
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
    ( ?glMultiTexParameterIuivEXT
    , [ <<Texunit:?GLenum
        , Target:?GLenum
        , Pname:?GLenum
        >>
      , NewParams
      ]
    )
.

%% Func:       getMultiTexParameterIivEXT
%% Args:       Texunit, Target, Pname
%% Returns:    [Params]
%% C-API func: void glGetMultiTexParameterIivEXT(GLenum texunit, GLenum target, GLenum pname, GLint* params)

getMultiTexParameterIivEXT(Texunit, Target, Pname, Params)
 -> Bin
    = call
      ( ?glGetMultiTexParameterIivEXT
      , <<Texunit:?GLenum
        , Target:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetMultiTexParameterIivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getMultiTexParameterIuivEXT
%% Args:       Texunit, Target, Pname, Params
%% Returns:    ok
%% C-API func: void glGetMultiTexParameterIuivEXT(GLenum texunit, GLenum target, GLenum pname, GLuint* params)

getMultiTexParameterIuivEXT(Texunit, Target, Pname, Params)
 -> cast
    ( ?glGetMultiTexParameterIuivEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       programUniform1fEXT
%% Args:       Program, Location, V0
%% Returns:    ok
%% C-API func: void glProgramUniform1fEXT(GLuint program, GLint location, GLfloat v0)

programUniform1fEXT(Program, Location, V0)
 -> cast
    ( ?glProgramUniform1fEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLfloat
      >>
    )
.

%% Func:       programUniform2fEXT
%% Args:       Program, Location, V0, V1
%% Returns:    ok
%% C-API func: void glProgramUniform2fEXT(GLuint program, GLint location, GLfloat v0, GLfloat v1)

programUniform2fEXT(Program, Location, V0, V1)
 -> cast
    ( ?glProgramUniform2fEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      >>
    )
.

%% Func:       programUniform3fEXT
%% Args:       Program, Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glProgramUniform3fEXT(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

programUniform3fEXT(Program, Location, V0, V1, V2)
 -> cast
    ( ?glProgramUniform3fEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      , V2:?GLfloat
      >>
    )
.

%% Func:       programUniform4fEXT
%% Args:       Program, Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glProgramUniform4fEXT(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)

programUniform4fEXT(Program, Location, V0, V1, V2, V3)
 -> cast
    ( ?glProgramUniform4fEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLfloat
      , V1:?GLfloat
      , V2:?GLfloat
      , V3:?GLfloat
      >>
    )
.

%% Func:       programUniform1iEXT
%% Args:       Program, Location, V0
%% Returns:    ok
%% C-API func: void glProgramUniform1iEXT(GLuint program, GLint location, GLint v0)

programUniform1iEXT(Program, Location, V0)
 -> cast
    ( ?glProgramUniform1iEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLint
      >>
    )
.

%% Func:       programUniform2iEXT
%% Args:       Program, Location, V0, V1
%% Returns:    ok
%% C-API func: void glProgramUniform2iEXT(GLuint program, GLint location, GLint v0, GLint v1)

programUniform2iEXT(Program, Location, V0, V1)
 -> cast
    ( ?glProgramUniform2iEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLint
      , V1:?GLint
      >>
    )
.

%% Func:       programUniform3iEXT
%% Args:       Program, Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glProgramUniform3iEXT(GLuint program, GLint location, GLint v0, GLint v1, GLint v2)

programUniform3iEXT(Program, Location, V0, V1, V2)
 -> cast
    ( ?glProgramUniform3iEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLint
      , V1:?GLint
      , V2:?GLint
      >>
    )
.

%% Func:       programUniform4iEXT
%% Args:       Program, Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glProgramUniform4iEXT(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

programUniform4iEXT(Program, Location, V0, V1, V2, V3)
 -> cast
    ( ?glProgramUniform4iEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLint
      , V1:?GLint
      , V2:?GLint
      , V3:?GLint
      >>
    )
.

%% Func:       programUniform1fvEXT
%% Args:       Program, Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniform1fvEXT(GLuint program, GLint location, GLsizei count, const GLfloat* value)

programUniform1fvEXT(Program, Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniform1fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniform2fvEXT
%% Args:       Program, Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniform2fvEXT(GLuint program, GLint location, GLsizei count, const GLfloat* value)

programUniform2fvEXT(Program, Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniform2fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniform3fvEXT
%% Args:       Program, Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniform3fvEXT(GLuint program, GLint location, GLsizei count, const GLfloat* value)

programUniform3fvEXT(Program, Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniform3fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniform4fvEXT
%% Args:       Program, Location, Count, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniform4fvEXT(GLuint program, GLint location, GLsizei count, const GLfloat* value)

programUniform4fvEXT(Program, Location, Count, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniform4fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniform1ivEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform1ivEXT(GLuint program, GLint location, GLsizei count, const GLint* value)

programUniform1ivEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform1ivEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform2ivEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform2ivEXT(GLuint program, GLint location, GLsizei count, const GLint* value)

programUniform2ivEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform2ivEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform3ivEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform3ivEXT(GLuint program, GLint location, GLsizei count, const GLint* value)

programUniform3ivEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform3ivEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform4ivEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform4ivEXT(GLuint program, GLint location, GLsizei count, const GLint* value)

programUniform4ivEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform4ivEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix2fvEXT
%% Args:       Program, Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix2fvEXT(Program, Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniformMatrix2fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniformMatrix3fvEXT
%% Args:       Program, Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix3fvEXT(Program, Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniformMatrix3fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniformMatrix4fvEXT
%% Args:       Program, Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix4fvEXT(Program, Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniformMatrix4fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniformMatrix2x3fvEXT
%% Args:       Program, Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2x3fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix2x3fvEXT(Program, Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniformMatrix2x3fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniformMatrix3x2fvEXT
%% Args:       Program, Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3x2fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix3x2fvEXT(Program, Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniformMatrix3x2fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniformMatrix2x4fvEXT
%% Args:       Program, Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2x4fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix2x4fvEXT(Program, Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniformMatrix2x4fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniformMatrix4x2fvEXT
%% Args:       Program, Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4x2fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix4x2fvEXT(Program, Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniformMatrix4x2fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniformMatrix3x4fvEXT
%% Args:       Program, Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3x4fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix3x4fvEXT(Program, Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniformMatrix3x4fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniformMatrix4x3fvEXT
%% Args:       Program, Location, Count, Transpose, <<[Value]>>
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4x3fvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

programUniformMatrix4x3fvEXT(Program, Location, Count, Transpose, Value)
 -> NewValue
    = if
        is_list(Value)
      ; is_tuple(Value)
          -> term2bin
             ( Value
             , Count
             , ?GLfloat
             )
      ; is_binary(Value)
          -> Value
      ; true
          -> erlang:error
             ( { ?MODULE
               , ?LINE
               , unsupported_type
               , Value
               }
             )
      end
  , cast
    ( ?glProgramUniformMatrix4x3fvEXT
    , [ <<Program:?GLuint
        , Location:?GLint
        , Count:?GLsizei
        , Transpose:?GLboolean
        >>
      , NewValue
      ]
    )
.

%% Func:       programUniform1uiEXT
%% Args:       Program, Location, V0
%% Returns:    ok
%% C-API func: void glProgramUniform1uiEXT(GLuint program, GLint location, GLuint v0)

programUniform1uiEXT(Program, Location, V0)
 -> cast
    ( ?glProgramUniform1uiEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLuint
      >>
    )
.

%% Func:       programUniform2uiEXT
%% Args:       Program, Location, V0, V1
%% Returns:    ok
%% C-API func: void glProgramUniform2uiEXT(GLuint program, GLint location, GLuint v0, GLuint v1)

programUniform2uiEXT(Program, Location, V0, V1)
 -> cast
    ( ?glProgramUniform2uiEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      >>
    )
.

%% Func:       programUniform3uiEXT
%% Args:       Program, Location, V0, V1, V2
%% Returns:    ok
%% C-API func: void glProgramUniform3uiEXT(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2)

programUniform3uiEXT(Program, Location, V0, V1, V2)
 -> cast
    ( ?glProgramUniform3uiEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      , V2:?GLuint
      >>
    )
.

%% Func:       programUniform4uiEXT
%% Args:       Program, Location, V0, V1, V2, V3
%% Returns:    ok
%% C-API func: void glProgramUniform4uiEXT(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

programUniform4uiEXT(Program, Location, V0, V1, V2, V3)
 -> cast
    ( ?glProgramUniform4uiEXT
    , <<Program:?GLuint
      , Location:?GLint
      , V0:?GLuint
      , V1:?GLuint
      , V2:?GLuint
      , V3:?GLuint
      >>
    )
.

%% Func:       programUniform1uivEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform1uivEXT(GLuint program, GLint location, GLsizei count, const GLuint* value)

programUniform1uivEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform1uivEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform2uivEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform2uivEXT(GLuint program, GLint location, GLsizei count, const GLuint* value)

programUniform2uivEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform2uivEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform3uivEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform3uivEXT(GLuint program, GLint location, GLsizei count, const GLuint* value)

programUniform3uivEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform3uivEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform4uivEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform4uivEXT(GLuint program, GLint location, GLsizei count, const GLuint* value)

programUniform4uivEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform4uivEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       namedBufferDataEXT
%% Args:       Buffer, Size, Data, Usage
%% Returns:    ok
%% C-API func: void glNamedBufferDataEXT(GLuint buffer, GLsizeiptr size, const GLvoid* data, GLenum usage)

namedBufferDataEXT(Buffer, Size, Data, Usage)
 -> cast
    ( ?glNamedBufferDataEXT
    , <<Buffer:?GLuint
      , Size:?GLsizeiptr
      , Data:?_PTR
      , Usage:?GLenum
      >>
    )
.

%% Func:       namedBufferSubDataEXT
%% Args:       Buffer, Offset, Size, Data
%% Returns:    ok
%% C-API func: void glNamedBufferSubDataEXT(GLuint buffer, GLintptr offset, GLsizeiptr size, const GLvoid* data)

namedBufferSubDataEXT(Buffer, Offset, Size, Data)
 -> cast
    ( ?glNamedBufferSubDataEXT
    , <<Buffer:?GLuint
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      , Data:?_PTR
      >>
    )
.

%% Func:       mapNamedBufferEXT
%% Args:       Buffer, Access
%% Returns:    ok
%% C-API func: GLvoid* glMapNamedBufferEXT(GLuint buffer, GLenum access)

mapNamedBufferEXT(Buffer, Access)
 -> cast
    ( ?glMapNamedBufferEXT
    , <<Buffer:?GLuint
      , Access:?GLenum
      >>
    )
.

%% Func:       unmapNamedBufferEXT
%% Args:       Buffer
%% Returns:    GLboolean
%% C-API func: GLboolean glUnmapNamedBufferEXT(GLuint buffer)

unmapNamedBufferEXT(Buffer)
 -> Bin
    = call
      ( ?glUnmapNamedBufferEXT
      , <<Buffer:?GLuint
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

%% Func:       mapNamedBufferRangeEXT
%% Args:       Buffer, Offset, Length, Access
%% Returns:    Exdl
%% C-API func: GLvoid* glMapNamedBufferRangeEXT(GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access)

mapNamedBufferRangeEXT(Buffer, Offset, Length, Access)
 -> case
      call
      ( ?glMapNamedBufferRangeEXT
      , <<Buffer:?GLuint
        , Offset:?GLintptr
        , Length:?GLsizeiptr
        , Access:?GLbitfield
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

%% Func:       flushMappedNamedBufferRangeEXT
%% Args:       Buffer, Offset, Length
%% Returns:    ok
%% C-API func: void glFlushMappedNamedBufferRangeEXT(GLuint buffer, GLintptr offset, GLsizeiptr length)

flushMappedNamedBufferRangeEXT(Buffer, Offset, Length)
 -> cast
    ( ?glFlushMappedNamedBufferRangeEXT
    , <<Buffer:?GLuint
      , Offset:?GLintptr
      , Length:?GLsizeiptr
      >>
    )
.

%% Func:       namedCopyBufferSubDataEXT
%% Args:       ReadBuffer, WriteBuffer, ReadOffset, WriteOffset, Size
%% Returns:    ok
%% C-API func: void glNamedCopyBufferSubDataEXT(GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)

namedCopyBufferSubDataEXT(ReadBuffer, WriteBuffer, ReadOffset, WriteOffset, Size)
 -> cast
    ( ?glNamedCopyBufferSubDataEXT
    , <<ReadBuffer:?GLuint
      , WriteBuffer:?GLuint
      , ReadOffset:?GLintptr
      , WriteOffset:?GLintptr
      , Size:?GLsizeiptr
      >>
    )
.

%% Func:       getNamedBufferParameterivEXT
%% Args:       Buffer, Pname
%% Returns:    [Params]
%% C-API func: void glGetNamedBufferParameterivEXT(GLuint buffer, GLenum pname, GLint* params)

getNamedBufferParameterivEXT(Buffer, Pname, Params)
 -> Bin
    = call
      ( ?glGetNamedBufferParameterivEXT
      , <<Buffer:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetNamedBufferParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       getNamedBufferPointervEXT
%% Args:       Buffer, Pname, Params
%% Returns:    ok
%% C-API func: void glGetNamedBufferPointervEXT(GLuint buffer, GLenum pname, GLvoid** params)

getNamedBufferPointervEXT(Buffer, Pname, Params)
 -> cast
    ( ?glGetNamedBufferPointervEXT
    , <<Buffer:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getNamedBufferSubDataEXT
%% Args:       Buffer, Offset, Size, Data
%% Returns:    ok
%% C-API func: void glGetNamedBufferSubDataEXT(GLuint buffer, GLintptr offset, GLsizeiptr size, GLvoid* data)

getNamedBufferSubDataEXT(Buffer, Offset, Size, Data)
 -> cast
    ( ?glGetNamedBufferSubDataEXT
    , <<Buffer:?GLuint
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      , Data:?_PTR
      >>
    )
.

%% Func:       textureBufferEXT
%% Args:       Texture, Target, Internalformat, Buffer
%% Returns:    ok
%% C-API func: void glTextureBufferEXT(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer)

textureBufferEXT(Texture, Target, Internalformat, Buffer)
 -> cast
    ( ?glTextureBufferEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Internalformat:?GLenum
      , Buffer:?GLuint
      >>
    )
.

%% Func:       multiTexBufferEXT
%% Args:       Texunit, Target, Internalformat, Buffer
%% Returns:    ok
%% C-API func: void glMultiTexBufferEXT(GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer)

multiTexBufferEXT(Texunit, Target, Internalformat, Buffer)
 -> cast
    ( ?glMultiTexBufferEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Internalformat:?GLenum
      , Buffer:?GLuint
      >>
    )
.

%% Func:       namedRenderbufferStorageEXT
%% Args:       Renderbuffer, Internalformat, Width, Height
%% Returns:    ok
%% C-API func: void glNamedRenderbufferStorageEXT(GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height)

namedRenderbufferStorageEXT(Renderbuffer, Internalformat, Width, Height)
 -> cast
    ( ?glNamedRenderbufferStorageEXT
    , <<Renderbuffer:?GLuint
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       getNamedRenderbufferParameterivEXT
%% Args:       Renderbuffer, Pname
%% Returns:    [Params]
%% C-API func: void glGetNamedRenderbufferParameterivEXT(GLuint renderbuffer, GLenum pname, GLint* params)

getNamedRenderbufferParameterivEXT(Renderbuffer, Pname, Params)
 -> Bin
    = call
      ( ?glGetNamedRenderbufferParameterivEXT
      , <<Renderbuffer:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetNamedRenderbufferParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       checkNamedFramebufferStatusEXT
%% Args:       Framebuffer, Target
%% Returns:    GLenum
%% C-API func: GLenum glCheckNamedFramebufferStatusEXT(GLuint framebuffer, GLenum target)

checkNamedFramebufferStatusEXT(Framebuffer, Target)
 -> cast
    ( ?glCheckNamedFramebufferStatusEXT
    , <<Framebuffer:?GLuint
      , Target:?GLenum
      >>
    )
.

%% Func:       namedFramebufferTexture1DEXT
%% Args:       Framebuffer, Attachment, Textarget, Texture, Level
%% Returns:    ok
%% C-API func: void glNamedFramebufferTexture1DEXT(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

namedFramebufferTexture1DEXT(Framebuffer, Attachment, Textarget, Texture, Level)
 -> cast
    ( ?glNamedFramebufferTexture1DEXT
    , <<Framebuffer:?GLuint
      , Attachment:?GLenum
      , Textarget:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% Func:       namedFramebufferTexture2DEXT
%% Args:       Framebuffer, Attachment, Textarget, Texture, Level
%% Returns:    ok
%% C-API func: void glNamedFramebufferTexture2DEXT(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

namedFramebufferTexture2DEXT(Framebuffer, Attachment, Textarget, Texture, Level)
 -> cast
    ( ?glNamedFramebufferTexture2DEXT
    , <<Framebuffer:?GLuint
      , Attachment:?GLenum
      , Textarget:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% Func:       namedFramebufferTexture3DEXT
%% Args:       Framebuffer, Attachment, Textarget, Texture, Level, Zoffset
%% Returns:    ok
%% C-API func: void glNamedFramebufferTexture3DEXT(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)

namedFramebufferTexture3DEXT(Framebuffer, Attachment, Textarget, Texture, Level, Zoffset)
 -> cast
    ( ?glNamedFramebufferTexture3DEXT
    , <<Framebuffer:?GLuint
      , Attachment:?GLenum
      , Textarget:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      , Zoffset:?GLint
      >>
    )
.

%% Func:       namedFramebufferRenderbufferEXT
%% Args:       Framebuffer, Attachment, Renderbuffertarget, Renderbuffer
%% Returns:    ok
%% C-API func: void glNamedFramebufferRenderbufferEXT(GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

namedFramebufferRenderbufferEXT(Framebuffer, Attachment, Renderbuffertarget, Renderbuffer)
 -> cast
    ( ?glNamedFramebufferRenderbufferEXT
    , <<Framebuffer:?GLuint
      , Attachment:?GLenum
      , Renderbuffertarget:?GLenum
      , Renderbuffer:?GLuint
      >>
    )
.

%% Func:       getNamedFramebufferAttachmentParameterivEXT
%% Args:       Framebuffer, Attachment, Pname
%% Returns:    [Params]
%% C-API func: void glGetNamedFramebufferAttachmentParameterivEXT(GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params)

getNamedFramebufferAttachmentParameterivEXT(Framebuffer, Attachment, Pname, Params)
 -> Bin
    = call
      ( ?glGetNamedFramebufferAttachmentParameterivEXT
      , <<Framebuffer:?GLuint
        , Attachment:?GLenum
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetNamedFramebufferAttachmentParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       generateTextureMipmapEXT
%% Args:       Texture, Target
%% Returns:    ok
%% C-API func: void glGenerateTextureMipmapEXT(GLuint texture, GLenum target)

generateTextureMipmapEXT(Texture, Target)
 -> cast
    ( ?glGenerateTextureMipmapEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      >>
    )
.

%% Func:       generateMultiTexMipmapEXT
%% Args:       Texunit, Target
%% Returns:    ok
%% C-API func: void glGenerateMultiTexMipmapEXT(GLenum texunit, GLenum target)

generateMultiTexMipmapEXT(Texunit, Target)
 -> cast
    ( ?glGenerateMultiTexMipmapEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      >>
    )
.

%% Func:       framebufferDrawBufferEXT
%% Args:       Framebuffer, Mode
%% Returns:    ok
%% C-API func: void glFramebufferDrawBufferEXT(GLuint framebuffer, GLenum mode)

framebufferDrawBufferEXT(Framebuffer, Mode)
 -> cast
    ( ?glFramebufferDrawBufferEXT
    , <<Framebuffer:?GLuint
      , Mode:?GLenum
      >>
    )
.

%% Func:       framebufferDrawBuffersEXT
%% Args:       Framebuffer, N, * Bufs
%% Returns:    ok
%% C-API func: void glFramebufferDrawBuffersEXT(GLuint framebuffer, GLsizei n, const GLenum* bufs)

framebufferDrawBuffersEXT(Framebuffer, N, Bufs)
 -> cast
    ( ?glFramebufferDrawBuffersEXT
    , <<Framebuffer:?GLuint
      , N:?GLsizei
      , Bufs:?_PTR
      >>
    )
.

%% Func:       framebufferReadBufferEXT
%% Args:       Framebuffer, Mode
%% Returns:    ok
%% C-API func: void glFramebufferReadBufferEXT(GLuint framebuffer, GLenum mode)

framebufferReadBufferEXT(Framebuffer, Mode)
 -> cast
    ( ?glFramebufferReadBufferEXT
    , <<Framebuffer:?GLuint
      , Mode:?GLenum
      >>
    )
.

%% Func:       getFramebufferParameterivEXT
%% Args:       Framebuffer, Pname
%% Returns:    [Params]
%% C-API func: void glGetFramebufferParameterivEXT(GLuint framebuffer, GLenum pname, GLint* params)

getFramebufferParameterivEXT(Framebuffer, Pname, Params)
 -> Bin
    = call
      ( ?glGetFramebufferParameterivEXT
      , <<Framebuffer:?GLuint
        , Pname:?GLenum
        >>
      )
  , ParamsLen
    = glGetFramebufferParameterivEXTLen
      ( Pname
      )
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
           , ?GLint
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

%% Func:       namedRenderbufferStorageMultisampleEXT
%% Args:       Renderbuffer, Samples, Internalformat, Width, Height
%% Returns:    ok
%% C-API func: void glNamedRenderbufferStorageMultisampleEXT(GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

namedRenderbufferStorageMultisampleEXT(Renderbuffer, Samples, Internalformat, Width, Height)
 -> cast
    ( ?glNamedRenderbufferStorageMultisampleEXT
    , <<Renderbuffer:?GLuint
      , Samples:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       namedRenderbufferStorageMultisampleCoverageEXT
%% Args:       Renderbuffer, CoverageSamples, ColorSamples, Internalformat, Width, Height
%% Returns:    ok
%% C-API func: void glNamedRenderbufferStorageMultisampleCoverageEXT(GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height)

namedRenderbufferStorageMultisampleCoverageEXT(Renderbuffer, CoverageSamples, ColorSamples, Internalformat, Width, Height)
 -> cast
    ( ?glNamedRenderbufferStorageMultisampleCoverageEXT
    , <<Renderbuffer:?GLuint
      , CoverageSamples:?GLsizei
      , ColorSamples:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% Func:       namedFramebufferTextureEXT
%% Args:       Framebuffer, Attachment, Texture, Level
%% Returns:    ok
%% C-API func: void glNamedFramebufferTextureEXT(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level)

namedFramebufferTextureEXT(Framebuffer, Attachment, Texture, Level)
 -> cast
    ( ?glNamedFramebufferTextureEXT
    , <<Framebuffer:?GLuint
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% Func:       namedFramebufferTextureLayerEXT
%% Args:       Framebuffer, Attachment, Texture, Level, Layer
%% Returns:    ok
%% C-API func: void glNamedFramebufferTextureLayerEXT(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer)

namedFramebufferTextureLayerEXT(Framebuffer, Attachment, Texture, Level, Layer)
 -> cast
    ( ?glNamedFramebufferTextureLayerEXT
    , <<Framebuffer:?GLuint
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      , Layer:?GLint
      >>
    )
.

%% Func:       namedFramebufferTextureFaceEXT
%% Args:       Framebuffer, Attachment, Texture, Level, Face
%% Returns:    ok
%% C-API func: void glNamedFramebufferTextureFaceEXT(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face)

namedFramebufferTextureFaceEXT(Framebuffer, Attachment, Texture, Level, Face)
 -> cast
    ( ?glNamedFramebufferTextureFaceEXT
    , <<Framebuffer:?GLuint
      , Attachment:?GLenum
      , Texture:?GLuint
      , Level:?GLint
      , Face:?GLenum
      >>
    )
.

%% Func:       textureRenderbufferEXT
%% Args:       Texture, Target, Renderbuffer
%% Returns:    ok
%% C-API func: void glTextureRenderbufferEXT(GLuint texture, GLenum target, GLuint renderbuffer)

textureRenderbufferEXT(Texture, Target, Renderbuffer)
 -> cast
    ( ?glTextureRenderbufferEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Renderbuffer:?GLuint
      >>
    )
.

%% Func:       multiTexRenderbufferEXT
%% Args:       Texunit, Target, Renderbuffer
%% Returns:    ok
%% C-API func: void glMultiTexRenderbufferEXT(GLenum texunit, GLenum target, GLuint renderbuffer)

multiTexRenderbufferEXT(Texunit, Target, Renderbuffer)
 -> cast
    ( ?glMultiTexRenderbufferEXT
    , <<Texunit:?GLenum
      , Target:?GLenum
      , Renderbuffer:?GLuint
      >>
    )
.

%% Func:       programUniform1dEXT
%% Args:       Program, Location, X
%% Returns:    ok
%% C-API func: void glProgramUniform1dEXT(GLuint program, GLint location, GLdouble x)

programUniform1dEXT(Program, Location, X)
 -> cast
    ( ?glProgramUniform1dEXT
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLdouble
      >>
    )
.

%% Func:       programUniform2dEXT
%% Args:       Program, Location, X, Y
%% Returns:    ok
%% C-API func: void glProgramUniform2dEXT(GLuint program, GLint location, GLdouble x, GLdouble y)

programUniform2dEXT(Program, Location, X, Y)
 -> cast
    ( ?glProgramUniform2dEXT
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       programUniform3dEXT
%% Args:       Program, Location, X, Y, Z
%% Returns:    ok
%% C-API func: void glProgramUniform3dEXT(GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z)

programUniform3dEXT(Program, Location, X, Y, Z)
 -> cast
    ( ?glProgramUniform3dEXT
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       programUniform4dEXT
%% Args:       Program, Location, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramUniform4dEXT(GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

programUniform4dEXT(Program, Location, X, Y, Z, W)
 -> cast
    ( ?glProgramUniform4dEXT
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       programUniform1dvEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform1dvEXT(GLuint program, GLint location, GLsizei count, const GLdouble* value)

programUniform1dvEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform1dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform2dvEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform2dvEXT(GLuint program, GLint location, GLsizei count, const GLdouble* value)

programUniform2dvEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform2dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform3dvEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform3dvEXT(GLuint program, GLint location, GLsizei count, const GLdouble* value)

programUniform3dvEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform3dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform4dvEXT
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform4dvEXT(GLuint program, GLint location, GLsizei count, const GLdouble* value)

programUniform4dvEXT(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform4dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix2dvEXT
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2dvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix2dvEXT(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix2dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix3dvEXT
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3dvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix3dvEXT(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix3dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix4dvEXT
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4dvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix4dvEXT(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix4dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix2x3dvEXT
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2x3dvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix2x3dvEXT(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix2x3dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix2x4dvEXT
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix2x4dvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix2x4dvEXT(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix2x4dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix3x2dvEXT
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3x2dvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix3x2dvEXT(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix3x2dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix3x4dvEXT
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix3x4dvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix3x4dvEXT(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix3x4dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix4x2dvEXT
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4x2dvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix4x2dvEXT(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix4x2dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniformMatrix4x3dvEXT
%% Args:       Program, Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glProgramUniformMatrix4x3dvEXT(GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value)

programUniformMatrix4x3dvEXT(Program, Location, Count, Transpose, Value)
 -> cast
    ( ?glProgramUniformMatrix4x3dvEXT
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% GL_EXT_vertex_array_bgra

%% GL_EXT_texture_swizzle

%% GL_NV_explicit_multisample

%% Func:       getMultisamplefvNV
%% Args:       Pname, Index, Val
%% Returns:    ok
%% C-API func: void glGetMultisamplefvNV(GLenum pname, GLuint index, GLfloat* val)

getMultisamplefvNV(Pname, Index, Val)
 -> cast
    ( ?glGetMultisamplefvNV
    , <<Pname:?GLenum
      , Index:?GLuint
      , Val:?_PTR
      >>
    )
.

%% Func:       sampleMaskIndexedNV
%% Args:       Index, Mask
%% Returns:    ok
%% C-API func: void glSampleMaskIndexedNV(GLuint index, GLbitfield mask)

sampleMaskIndexedNV(Index, Mask)
 -> cast
    ( ?glSampleMaskIndexedNV
    , <<Index:?GLuint
      , Mask:?GLbitfield
      >>
    )
.

%% Func:       texRenderbufferNV
%% Args:       Target, Renderbuffer
%% Returns:    ok
%% C-API func: void glTexRenderbufferNV(GLenum target, GLuint renderbuffer)

texRenderbufferNV(Target, Renderbuffer)
 -> cast
    ( ?glTexRenderbufferNV
    , <<Target:?GLenum
      , Renderbuffer:?GLuint
      >>
    )
.

%% GL_NV_transform_feedback2

%% Func:       bindTransformFeedbackNV
%% Args:       Target, Id
%% Returns:    ok
%% C-API func: void glBindTransformFeedbackNV(GLenum target, GLuint id)

bindTransformFeedbackNV(Target, Id)
 -> cast
    ( ?glBindTransformFeedbackNV
    , <<Target:?GLenum
      , Id:?GLuint
      >>
    )
.

%% Func:       deleteTransformFeedbacksNV
%% Args:       N, Ids
%% Returns:    ok
%% C-API func: void glDeleteTransformFeedbacksNV(GLsizei n, const GLuint* ids)

deleteTransformFeedbacksNV(N, Ids)
 -> cast
    ( ?glDeleteTransformFeedbacksNV
    , <<N:?GLsizei
      , Ids:?_PTR
      >>
    )
.

%% Func:       genTransformFeedbacksNV
%% Args:       N, Ids
%% Returns:    ok
%% C-API func: void glGenTransformFeedbacksNV(GLsizei n, GLuint* ids)

genTransformFeedbacksNV(N, Ids)
 -> cast
    ( ?glGenTransformFeedbacksNV
    , <<N:?GLsizei
      , Ids:?_PTR
      >>
    )
.

%% Func:       isTransformFeedbackNV
%% Args:       Id
%% Returns:    GLboolean
%% C-API func: GLboolean glIsTransformFeedbackNV(GLuint id)

isTransformFeedbackNV(Id)
 -> Bin
    = call
      ( ?glIsTransformFeedbackNV
      , <<Id:?GLuint
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

%% Func:       pauseTransformFeedbackNV
%% Args:       
%% Returns:    ok
%% C-API func: void glPauseTransformFeedbackNV()

pauseTransformFeedbackNV()
 -> cast
    ( ?glPauseTransformFeedbackNV
    , <<
      >>
    )
.

%% Func:       resumeTransformFeedbackNV
%% Args:       
%% Returns:    ok
%% C-API func: void glResumeTransformFeedbackNV()

resumeTransformFeedbackNV()
 -> cast
    ( ?glResumeTransformFeedbackNV
    , <<
      >>
    )
.

%% Func:       drawTransformFeedbackNV
%% Args:       Mode, Id
%% Returns:    ok
%% C-API func: void glDrawTransformFeedbackNV(GLenum mode, GLuint id)

drawTransformFeedbackNV(Mode, Id)
 -> cast
    ( ?glDrawTransformFeedbackNV
    , <<Mode:?GLenum
      , Id:?GLuint
      >>
    )
.

%% GL_ATI_meminfo
%% GL_AMD_performance_monitor

%% Func:       getPerfMonitorGroupsAMD
%% Args:       NumGroups, GroupsSize, Groups
%% Returns:    ok
%% C-API func: void glGetPerfMonitorGroupsAMD(GLint* numGroups, GLsizei groupsSize, GLuint* groups)

getPerfMonitorGroupsAMD(NumGroups, GroupsSize, Groups)
 -> cast
    ( ?glGetPerfMonitorGroupsAMD
    , <<NumGroups:?_PTR
      , GroupsSize:?GLsizei
      , Groups:?_PTR
      >>
    )
.

%% Func:       getPerfMonitorCountersAMD
%% Args:       Group, NumCounters, MaxActiveCounters, CounterSize, Counters
%% Returns:    ok
%% C-API func: void glGetPerfMonitorCountersAMD(GLuint group, GLint* numCounters, GLint* maxActiveCounters, GLsizei counterSize, GLuint* counters)

getPerfMonitorCountersAMD(Group, NumCounters, MaxActiveCounters, CounterSize, Counters)
 -> cast
    ( ?glGetPerfMonitorCountersAMD
    , <<Group:?GLuint
      , NumCounters:?_PTR
      , MaxActiveCounters:?_PTR
      , CounterSize:?GLsizei
      , Counters:?_PTR
      >>
    )
.

%% Func:       getPerfMonitorGroupStringAMD
%% Args:       Group, BufSize, Length, GroupString
%% Returns:    ok
%% C-API func: void glGetPerfMonitorGroupStringAMD(GLuint group, GLsizei bufSize, GLsizei* length, GLchar* groupString)

getPerfMonitorGroupStringAMD(Group, BufSize, Length, GroupString)
 -> cast
    ( ?glGetPerfMonitorGroupStringAMD
    , <<Group:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , GroupString:?_PTR
      >>
    )
.

%% Func:       getPerfMonitorCounterStringAMD
%% Args:       Group, Counter, BufSize, Length, CounterString
%% Returns:    ok
%% C-API func: void glGetPerfMonitorCounterStringAMD(GLuint group, GLuint counter, GLsizei bufSize, GLsizei* length, GLchar* counterString)

getPerfMonitorCounterStringAMD(Group, Counter, BufSize, Length, CounterString)
 -> cast
    ( ?glGetPerfMonitorCounterStringAMD
    , <<Group:?GLuint
      , Counter:?GLuint
      , BufSize:?GLsizei
      , Length:?_PTR
      , CounterString:?_PTR
      >>
    )
.

%% Func:       getPerfMonitorCounterInfoAMD
%% Args:       Group, Counter, Pname, Data
%% Returns:    ok
%% C-API func: void glGetPerfMonitorCounterInfoAMD(GLuint group, GLuint counter, GLenum pname, GLvoid* data)

getPerfMonitorCounterInfoAMD(Group, Counter, Pname, Data)
 -> cast
    ( ?glGetPerfMonitorCounterInfoAMD
    , <<Group:?GLuint
      , Counter:?GLuint
      , Pname:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       genPerfMonitorsAMD
%% Args:       N, Monitors
%% Returns:    ok
%% C-API func: void glGenPerfMonitorsAMD(GLsizei n, GLuint* monitors)

genPerfMonitorsAMD(N, Monitors)
 -> cast
    ( ?glGenPerfMonitorsAMD
    , <<N:?GLsizei
      , Monitors:?_PTR
      >>
    )
.

%% Func:       deletePerfMonitorsAMD
%% Args:       N, Monitors
%% Returns:    ok
%% C-API func: void glDeletePerfMonitorsAMD(GLsizei n, GLuint* monitors)

deletePerfMonitorsAMD(N, Monitors)
 -> cast
    ( ?glDeletePerfMonitorsAMD
    , <<N:?GLsizei
      , Monitors:?_PTR
      >>
    )
.

%% Func:       selectPerfMonitorCountersAMD
%% Args:       Monitor, Enable, Group, NumCounters, CounterList
%% Returns:    ok
%% C-API func: void glSelectPerfMonitorCountersAMD(GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint* counterList)

selectPerfMonitorCountersAMD(Monitor, Enable, Group, NumCounters, CounterList)
 -> cast
    ( ?glSelectPerfMonitorCountersAMD
    , <<Monitor:?GLuint
      , Enable:?GLboolean
      , Group:?GLuint
      , NumCounters:?GLint
      , CounterList:?_PTR
      >>
    )
.

%% Func:       beginPerfMonitorAMD
%% Args:       Monitor
%% Returns:    ok
%% C-API func: void glBeginPerfMonitorAMD(GLuint monitor)

beginPerfMonitorAMD(Monitor)
 -> cast
    ( ?glBeginPerfMonitorAMD
    , <<Monitor:?GLuint
      >>
    )
.

%% Func:       endPerfMonitorAMD
%% Args:       Monitor
%% Returns:    ok
%% C-API func: void glEndPerfMonitorAMD(GLuint monitor)

endPerfMonitorAMD(Monitor)
 -> cast
    ( ?glEndPerfMonitorAMD
    , <<Monitor:?GLuint
      >>
    )
.

%% Func:       getPerfMonitorCounterDataAMD
%% Args:       Monitor, Pname, DataSize, Data, BytesWritten
%% Returns:    ok
%% C-API func: void glGetPerfMonitorCounterDataAMD(GLuint monitor, GLenum pname, GLsizei dataSize, GLuint* data, GLint* bytesWritten)

getPerfMonitorCounterDataAMD(Monitor, Pname, DataSize, Data, BytesWritten)
 -> cast
    ( ?glGetPerfMonitorCounterDataAMD
    , <<Monitor:?GLuint
      , Pname:?GLenum
      , DataSize:?GLsizei
      , Data:?_PTR
      , BytesWritten:?_PTR
      >>
    )
.

%% GL_AMD_texture_texture4
%% GL_AMD_vertex_shader_tesselator

%% Func:       tessellationFactorAMD
%% Args:       Factor
%% Returns:    ok
%% C-API func: void glTessellationFactorAMD(GLfloat factor)

tessellationFactorAMD(Factor)
 -> cast
    ( ?glTessellationFactorAMD
    , <<Factor:?GLfloat
      >>
    )
.

%% Func:       tessellationModeAMD
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glTessellationModeAMD(GLenum mode)

tessellationModeAMD(Mode)
 -> cast
    ( ?glTessellationModeAMD
    , <<Mode:?GLenum
      >>
    )
.

%% GL_EXT_provoking_vertex

%% Func:       provokingVertexEXT
%% Args:       Mode
%% Returns:    ok
%% C-API func: void glProvokingVertexEXT(GLenum mode)

provokingVertexEXT(Mode)
 -> cast
    ( ?glProvokingVertexEXT
    , <<Mode:?GLenum
      >>
    )
.

%% GL_EXT_texture_snorm
%% GL_AMD_draw_buffers_blend

%% Func:       blendFuncIndexedAMD
%% Args:       Buf, Src, Dst
%% Returns:    ok
%% C-API func: void glBlendFuncIndexedAMD(GLuint buf, GLenum src, GLenum dst)

blendFuncIndexedAMD(Buf, Src, Dst)
 -> cast
    ( ?glBlendFuncIndexedAMD
    , <<Buf:?GLuint
      , Src:?GLenum
      , Dst:?GLenum
      >>
    )
.

%% Func:       blendFuncSeparateIndexedAMD
%% Args:       Buf, SrcRGB, DstRGB, SrcAlpha, DstAlpha
%% Returns:    ok
%% C-API func: void glBlendFuncSeparateIndexedAMD(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

blendFuncSeparateIndexedAMD(Buf, SrcRGB, DstRGB, SrcAlpha, DstAlpha)
 -> cast
    ( ?glBlendFuncSeparateIndexedAMD
    , <<Buf:?GLuint
      , SrcRGB:?GLenum
      , DstRGB:?GLenum
      , SrcAlpha:?GLenum
      , DstAlpha:?GLenum
      >>
    )
.

%% Func:       blendEquationIndexedAMD
%% Args:       Buf, Mode
%% Returns:    ok
%% C-API func: void glBlendEquationIndexedAMD(GLuint buf, GLenum mode)

blendEquationIndexedAMD(Buf, Mode)
 -> cast
    ( ?glBlendEquationIndexedAMD
    , <<Buf:?GLuint
      , Mode:?GLenum
      >>
    )
.

%% Func:       blendEquationSeparateIndexedAMD
%% Args:       Buf, ModeRGB, ModeAlpha
%% Returns:    ok
%% C-API func: void glBlendEquationSeparateIndexedAMD(GLuint buf, GLenum modeRGB, GLenum modeAlpha)

blendEquationSeparateIndexedAMD(Buf, ModeRGB, ModeAlpha)
 -> cast
    ( ?glBlendEquationSeparateIndexedAMD
    , <<Buf:?GLuint
      , ModeRGB:?GLenum
      , ModeAlpha:?GLenum
      >>
    )
.

%% GL_APPLE_texture_range

%% Func:       textureRangeAPPLE
%% Args:       Target, Length, Pointer
%% Returns:    ok
%% C-API func: void glTextureRangeAPPLE(GLenum target, GLsizei length, const GLvoid* pointer)

textureRangeAPPLE(Target, Length, Pointer)
 -> cast
    ( ?glTextureRangeAPPLE
    , <<Target:?GLenum
      , Length:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       getTexParameterPointervAPPLE
%% Args:       Target, Pname
%% Returns:    { Params }
%% C-API func: void glGetTexParameterPointervAPPLE(GLenum target, GLenum pname, GLvoid** params)

getTexParameterPointervAPPLE(Target, Pname)
 -> case
      call
      ( ?glGetTexParameterPointervAPPLE
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLvoid
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_APPLE_float_pixels
%% GL_APPLE_vertex_program_evaluators

%% Func:       enableVertexAttribAPPLE
%% Args:       Index, Pname
%% Returns:    ok
%% C-API func: void glEnableVertexAttribAPPLE(GLuint index, GLenum pname)

enableVertexAttribAPPLE(Index, Pname)
 -> cast
    ( ?glEnableVertexAttribAPPLE
    , <<Index:?GLuint
      , Pname:?GLenum
      >>
    )
.

%% Func:       disableVertexAttribAPPLE
%% Args:       Index, Pname
%% Returns:    ok
%% C-API func: void glDisableVertexAttribAPPLE(GLuint index, GLenum pname)

disableVertexAttribAPPLE(Index, Pname)
 -> cast
    ( ?glDisableVertexAttribAPPLE
    , <<Index:?GLuint
      , Pname:?GLenum
      >>
    )
.

%% Func:       isVertexAttribEnabledAPPLE
%% Args:       Index, Pname
%% Returns:    Exdl
%% C-API func: GLboolean glIsVertexAttribEnabledAPPLE(GLuint index, GLenum pname)

isVertexAttribEnabledAPPLE(Index, Pname)
 -> case
      call
      ( ?glIsVertexAttribEnabledAPPLE
      , <<Index:?GLuint
        , Pname:?GLenum
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

%% Func:       mapVertexAttrib1dAPPLE
%% Args:       Index, Size, U1, U2, Stride, Order, Points
%% Returns:    ok
%% C-API func: void glMapVertexAttrib1dAPPLE(GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble* points)

mapVertexAttrib1dAPPLE(Index, Size, U1, U2, Stride, Order, Points)
 -> cast
    ( ?glMapVertexAttrib1dAPPLE
    , <<Index:?GLuint
      , Size:?GLuint
      , U1:?GLdouble
      , U2:?GLdouble
      , Stride:?GLint
      , Order:?GLint
      , Points:?_PTR
      >>
    )
.

%% Func:       mapVertexAttrib1fAPPLE
%% Args:       Index, Size, U1, U2, Stride, Order, Points
%% Returns:    ok
%% C-API func: void glMapVertexAttrib1fAPPLE(GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat* points)

mapVertexAttrib1fAPPLE(Index, Size, U1, U2, Stride, Order, Points)
 -> cast
    ( ?glMapVertexAttrib1fAPPLE
    , <<Index:?GLuint
      , Size:?GLuint
      , U1:?GLfloat
      , U2:?GLfloat
      , Stride:?GLint
      , Order:?GLint
      , Points:?_PTR
      >>
    )
.

%% Func:       mapVertexAttrib2dAPPLE
%% Args:       Index, Size, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, Points
%% Returns:    ok
%% C-API func: void glMapVertexAttrib2dAPPLE(GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble* points)

mapVertexAttrib2dAPPLE(Index, Size, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, Points)
 -> cast
    ( ?glMapVertexAttrib2dAPPLE
    , <<Index:?GLuint
      , Size:?GLuint
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

%% Func:       mapVertexAttrib2fAPPLE
%% Args:       Index, Size, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, Points
%% Returns:    ok
%% C-API func: void glMapVertexAttrib2fAPPLE(GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat* points)

mapVertexAttrib2fAPPLE(Index, Size, U1, U2, Ustride, Uorder, V1, V2, Vstride, Vorder, Points)
 -> cast
    ( ?glMapVertexAttrib2fAPPLE
    , <<Index:?GLuint
      , Size:?GLuint
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

%% GL_APPLE_aux_depth_stencil
%% GL_APPLE_object_purgeable

%% Func:       objectPurgeableAPPLE
%% Args:       ObjectType, Name, Option
%% Returns:    Exdl
%% C-API func: GLenum glObjectPurgeableAPPLE(GLenum objectType, GLuint name, GLenum option)

objectPurgeableAPPLE(ObjectType, Name, Option)
 -> case
      call
      ( ?glObjectPurgeableAPPLE
      , <<ObjectType:?GLenum
        , Name:?GLuint
        , Option:?GLenum
        >>
      )
    of
      <<Exdl:?GLenum
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       objectUnpurgeableAPPLE
%% Args:       ObjectType, Name, Option
%% Returns:    Exdl
%% C-API func: GLenum glObjectUnpurgeableAPPLE(GLenum objectType, GLuint name, GLenum option)

objectUnpurgeableAPPLE(ObjectType, Name, Option)
 -> case
      call
      ( ?glObjectUnpurgeableAPPLE
      , <<ObjectType:?GLenum
        , Name:?GLuint
        , Option:?GLenum
        >>
      )
    of
      <<Exdl:?GLenum
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getObjectParameterivAPPLE
%% Args:       ObjectType, Name, Pname
%% Returns:    { Params }
%% C-API func: void glGetObjectParameterivAPPLE(GLenum objectType, GLuint name, GLenum pname, GLint* params)

getObjectParameterivAPPLE(ObjectType, Name, Pname)
 -> case
      call
      ( ?glGetObjectParameterivAPPLE
      , <<ObjectType:?GLenum
        , Name:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_APPLE_row_bytes
%% GL_APPLE_rgb_422
%% GL_NV_video_capture

%% Func:       beginVideoCaptureNV
%% Args:       VideoCaptureSlot
%% Returns:    ok
%% C-API func: void glBeginVideoCaptureNV(GLuint video_capture_slot)

beginVideoCaptureNV(VideoCaptureSlot)
 -> cast
    ( ?glBeginVideoCaptureNV
    , <<VideoCaptureSlot:?GLuint
      >>
    )
.

%% Func:       bindVideoCaptureStreamBufferNV
%% Args:       VideoCaptureSlot, Stream, FrameRegion, Offset
%% Returns:    ok
%% C-API func: void glBindVideoCaptureStreamBufferNV(GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset)

bindVideoCaptureStreamBufferNV(VideoCaptureSlot, Stream, FrameRegion, Offset)
 -> cast
    ( ?glBindVideoCaptureStreamBufferNV
    , <<VideoCaptureSlot:?GLuint
      , Stream:?GLuint
      , FrameRegion:?GLenum
      , Offset:?GLintptrARB
      >>
    )
.

%% Func:       bindVideoCaptureStreamTextureNV
%% Args:       VideoCaptureSlot, Stream, FrameRegion, Target, Texture
%% Returns:    ok
%% C-API func: void glBindVideoCaptureStreamTextureNV(GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture)

bindVideoCaptureStreamTextureNV(VideoCaptureSlot, Stream, FrameRegion, Target, Texture)
 -> cast
    ( ?glBindVideoCaptureStreamTextureNV
    , <<VideoCaptureSlot:?GLuint
      , Stream:?GLuint
      , FrameRegion:?GLenum
      , Target:?GLenum
      , Texture:?GLuint
      >>
    )
.

%% Func:       endVideoCaptureNV
%% Args:       VideoCaptureSlot
%% Returns:    ok
%% C-API func: void glEndVideoCaptureNV(GLuint video_capture_slot)

endVideoCaptureNV(VideoCaptureSlot)
 -> cast
    ( ?glEndVideoCaptureNV
    , <<VideoCaptureSlot:?GLuint
      >>
    )
.

%% Func:       getVideoCaptureivNV
%% Args:       VideoCaptureSlot, Pname
%% Returns:    { Params }
%% C-API func: void glGetVideoCaptureivNV(GLuint video_capture_slot, GLenum pname, GLint* params)

getVideoCaptureivNV(VideoCaptureSlot, Pname)
 -> case
      call
      ( ?glGetVideoCaptureivNV
      , <<VideoCaptureSlot:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getVideoCaptureStreamivNV
%% Args:       VideoCaptureSlot, Stream, Pname
%% Returns:    { Params }
%% C-API func: void glGetVideoCaptureStreamivNV(GLuint video_capture_slot, GLuint stream, GLenum pname, GLint* params)

getVideoCaptureStreamivNV(VideoCaptureSlot, Stream, Pname)
 -> case
      call
      ( ?glGetVideoCaptureStreamivNV
      , <<VideoCaptureSlot:?GLuint
        , Stream:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLint
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getVideoCaptureStreamfvNV
%% Args:       VideoCaptureSlot, Stream, Pname
%% Returns:    { Params }
%% C-API func: void glGetVideoCaptureStreamfvNV(GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat* params)

getVideoCaptureStreamfvNV(VideoCaptureSlot, Stream, Pname)
 -> case
      call
      ( ?glGetVideoCaptureStreamfvNV
      , <<VideoCaptureSlot:?GLuint
        , Stream:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLfloat
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getVideoCaptureStreamdvNV
%% Args:       VideoCaptureSlot, Stream, Pname
%% Returns:    { Params }
%% C-API func: void glGetVideoCaptureStreamdvNV(GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble* params)

getVideoCaptureStreamdvNV(VideoCaptureSlot, Stream, Pname)
 -> case
      call
      ( ?glGetVideoCaptureStreamdvNV
      , <<VideoCaptureSlot:?GLuint
        , Stream:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLdouble
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       videoCaptureNV
%% Args:       VideoCaptureSlot, SequenceNum, CaptureTime
%% Returns:    Exdl
%% C-API func: GLenum glVideoCaptureNV(GLuint video_capture_slot, GLuint* sequence_num, GLuint64EXT* capture_time)

videoCaptureNV(VideoCaptureSlot, SequenceNum, CaptureTime)
 -> case
      call
      ( ?glVideoCaptureNV
      , <<VideoCaptureSlot:?GLuint
        , SequenceNum:?_PTR
        , CaptureTime:?_PTR
        >>
      )
    of
      <<Exdl:?GLenum
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       videoCaptureStreamParameterivNV
%% Args:       VideoCaptureSlot, Stream, Pname, Params
%% Returns:    ok
%% C-API func: void glVideoCaptureStreamParameterivNV(GLuint video_capture_slot, GLuint stream, GLenum pname, const GLint* params)

videoCaptureStreamParameterivNV(VideoCaptureSlot, Stream, Pname, Params)
 -> cast
    ( ?glVideoCaptureStreamParameterivNV
    , <<VideoCaptureSlot:?GLuint
      , Stream:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       videoCaptureStreamParameterfvNV
%% Args:       VideoCaptureSlot, Stream, Pname, Params
%% Returns:    ok
%% C-API func: void glVideoCaptureStreamParameterfvNV(GLuint video_capture_slot, GLuint stream, GLenum pname, const GLfloat* params)

videoCaptureStreamParameterfvNV(VideoCaptureSlot, Stream, Pname, Params)
 -> cast
    ( ?glVideoCaptureStreamParameterfvNV
    , <<VideoCaptureSlot:?GLuint
      , Stream:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       videoCaptureStreamParameterdvNV
%% Args:       VideoCaptureSlot, Stream, Pname, Params
%% Returns:    ok
%% C-API func: void glVideoCaptureStreamParameterdvNV(GLuint video_capture_slot, GLuint stream, GLenum pname, const GLdouble* params)

videoCaptureStreamParameterdvNV(VideoCaptureSlot, Stream, Pname, Params)
 -> cast
    ( ?glVideoCaptureStreamParameterdvNV
    , <<VideoCaptureSlot:?GLuint
      , Stream:?GLuint
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% GL_NV_copy_image

%% Func:       copyImageSubDataNV
%% Args:       SrcName, SrcTarget, SrcLevel, SrcX, SrcY, SrcZ, DstName, DstTarget, DstLevel, DstX, DstY, DstZ, Width, Height, Depth
%% Returns:    ok
%% C-API func: void glCopyImageSubDataNV(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth)

copyImageSubDataNV(SrcName, SrcTarget, SrcLevel, SrcX, SrcY, SrcZ, DstName, DstTarget, DstLevel, DstX, DstY, DstZ, Width, Height, Depth)
 -> cast
    ( ?glCopyImageSubDataNV
    , <<SrcName:?GLuint
      , SrcTarget:?GLenum
      , SrcLevel:?GLint
      , SrcX:?GLint
      , SrcY:?GLint
      , SrcZ:?GLint
      , DstName:?GLuint
      , DstTarget:?GLenum
      , DstLevel:?GLint
      , DstX:?GLint
      , DstY:?GLint
      , DstZ:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      >>
    )
.

%% GL_EXT_separate_shader_objects

%% Func:       useShaderProgramEXT
%% Args:       Type, Program
%% Returns:    ok
%% C-API func: void glUseShaderProgramEXT(GLenum type, GLuint program)

useShaderProgramEXT(Type, Program)
 -> cast
    ( ?glUseShaderProgramEXT
    , <<Type:?GLenum
      , Program:?GLuint
      >>
    )
.

%% Func:       activeProgramEXT
%% Args:       Program
%% Returns:    ok
%% C-API func: void glActiveProgramEXT(GLuint program)

activeProgramEXT(Program)
 -> cast
    ( ?glActiveProgramEXT
    , <<Program:?GLuint
      >>
    )
.

%% Func:       createShaderProgramEXT
%% Args:       Type, String
%% Returns:    Exdl
%% C-API func: GLuint glCreateShaderProgramEXT(GLenum type, const GLchar* string)

createShaderProgramEXT(Type, String)
 -> case
      call
      ( ?glCreateShaderProgramEXT
      , <<Type:?GLenum
        , String:?_PTR
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

%% GL_NV_parameter_buffer_object2
%% GL_NV_shader_buffer_load

%% Func:       makeBufferResidentNV
%% Args:       Target, Access
%% Returns:    ok
%% C-API func: void glMakeBufferResidentNV(GLenum target, GLenum access)

makeBufferResidentNV(Target, Access)
 -> cast
    ( ?glMakeBufferResidentNV
    , <<Target:?GLenum
      , Access:?GLenum
      >>
    )
.

%% Func:       makeBufferNonResidentNV
%% Args:       Target
%% Returns:    ok
%% C-API func: void glMakeBufferNonResidentNV(GLenum target)

makeBufferNonResidentNV(Target)
 -> cast
    ( ?glMakeBufferNonResidentNV
    , <<Target:?GLenum
      >>
    )
.

%% Func:       isBufferResidentNV
%% Args:       Target
%% Returns:    Exdl
%% C-API func: GLboolean glIsBufferResidentNV(GLenum target)

isBufferResidentNV(Target)
 -> case
      call
      ( ?glIsBufferResidentNV
      , <<Target:?GLenum
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

%% Func:       namedMakeBufferResidentNV
%% Args:       Buffer, Access
%% Returns:    ok
%% C-API func: void glNamedMakeBufferResidentNV(GLuint buffer, GLenum access)

namedMakeBufferResidentNV(Buffer, Access)
 -> cast
    ( ?glNamedMakeBufferResidentNV
    , <<Buffer:?GLuint
      , Access:?GLenum
      >>
    )
.

%% Func:       namedMakeBufferNonResidentNV
%% Args:       Buffer
%% Returns:    ok
%% C-API func: void glNamedMakeBufferNonResidentNV(GLuint buffer)

namedMakeBufferNonResidentNV(Buffer)
 -> cast
    ( ?glNamedMakeBufferNonResidentNV
    , <<Buffer:?GLuint
      >>
    )
.

%% Func:       isNamedBufferResidentNV
%% Args:       Buffer
%% Returns:    Exdl
%% C-API func: GLboolean glIsNamedBufferResidentNV(GLuint buffer)

isNamedBufferResidentNV(Buffer)
 -> case
      call
      ( ?glIsNamedBufferResidentNV
      , <<Buffer:?GLuint
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

%% Func:       getBufferParameterui64vNV
%% Args:       Target, Pname
%% Returns:    { Params }
%% C-API func: void glGetBufferParameterui64vNV(GLenum target, GLenum pname, GLuint64EXT* params)

getBufferParameterui64vNV(Target, Pname)
 -> case
      call
      ( ?glGetBufferParameterui64vNV
      , <<Target:?GLenum
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?_PTR
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getNamedBufferParameterui64vNV
%% Args:       Buffer, Pname
%% Returns:    { Params }
%% C-API func: void glGetNamedBufferParameterui64vNV(GLuint buffer, GLenum pname, GLuint64EXT* params)

getNamedBufferParameterui64vNV(Buffer, Pname)
 -> case
      call
      ( ?glGetNamedBufferParameterui64vNV
      , <<Buffer:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?_PTR
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getIntegerui64vNV
%% Args:       Value
%% Returns:    { Result }
%% C-API func: void glGetIntegerui64vNV(GLenum value, GLuint64EXT* result)

getIntegerui64vNV(Value)
 -> case
      call
      ( ?glGetIntegerui64vNV
      , <<Value:?GLenum
        >>
      )
    of
      <<Result:?_PTR
      >>
        -> { Result }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       uniformui64NV
%% Args:       Location, Value
%% Returns:    ok
%% C-API func: void glUniformui64NV(GLint location, GLuint64EXT value)

uniformui64NV(Location, Value)
 -> cast
    ( ?glUniformui64NV
    , <<Location:?GLint
      , Value:?GLuint64EXT
      >>
    )
.

%% Func:       uniformui64vNV
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniformui64vNV(GLint location, GLsizei count, const GLuint64EXT* value)

uniformui64vNV(Location, Count, Value)
 -> cast
    ( ?glUniformui64vNV
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       getUniformui64vNV
%% Args:       Program, Location
%% Returns:    { Params }
%% C-API func: void glGetUniformui64vNV(GLuint program, GLint location, GLuint64EXT* params)

getUniformui64vNV(Program, Location)
 -> case
      call
      ( ?glGetUniformui64vNV
      , <<Program:?GLuint
        , Location:?GLint
        >>
      )
    of
      <<Params:?_PTR
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       programUniformui64NV
%% Args:       Program, Location, Value
%% Returns:    ok
%% C-API func: void glProgramUniformui64NV(GLuint program, GLint location, GLuint64EXT value)

programUniformui64NV(Program, Location, Value)
 -> cast
    ( ?glProgramUniformui64NV
    , <<Program:?GLuint
      , Location:?GLint
      , Value:?GLuint64EXT
      >>
    )
.

%% Func:       programUniformui64vNV
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniformui64vNV(GLuint program, GLint location, GLsizei count, const GLuint64EXT* value)

programUniformui64vNV(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniformui64vNV
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% GL_NV_vertex_buffer_unified_memory

%% Func:       bufferAddressRangeNV
%% Args:       Pname, Index, Address, Length
%% Returns:    ok
%% C-API func: void glBufferAddressRangeNV(GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length)

bufferAddressRangeNV(Pname, Index, Address, Length)
 -> cast
    ( ?glBufferAddressRangeNV
    , <<Pname:?GLenum
      , Index:?GLuint
      , Address:?GLuint64EXT
      , Length:?GLsizeiptr
      >>
    )
.

%% Func:       vertexFormatNV
%% Args:       Size, Type, Stride
%% Returns:    ok
%% C-API func: void glVertexFormatNV(GLint size, GLenum type, GLsizei stride)

vertexFormatNV(Size, Type, Stride)
 -> cast
    ( ?glVertexFormatNV
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      >>
    )
.

%% Func:       normalFormatNV
%% Args:       Type, Stride
%% Returns:    ok
%% C-API func: void glNormalFormatNV(GLenum type, GLsizei stride)

normalFormatNV(Type, Stride)
 -> cast
    ( ?glNormalFormatNV
    , <<Type:?GLenum
      , Stride:?GLsizei
      >>
    )
.

%% Func:       colorFormatNV
%% Args:       Size, Type, Stride
%% Returns:    ok
%% C-API func: void glColorFormatNV(GLint size, GLenum type, GLsizei stride)

colorFormatNV(Size, Type, Stride)
 -> cast
    ( ?glColorFormatNV
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      >>
    )
.

%% Func:       indexFormatNV
%% Args:       Type, Stride
%% Returns:    ok
%% C-API func: void glIndexFormatNV(GLenum type, GLsizei stride)

indexFormatNV(Type, Stride)
 -> cast
    ( ?glIndexFormatNV
    , <<Type:?GLenum
      , Stride:?GLsizei
      >>
    )
.

%% Func:       texCoordFormatNV
%% Args:       Size, Type, Stride
%% Returns:    ok
%% C-API func: void glTexCoordFormatNV(GLint size, GLenum type, GLsizei stride)

texCoordFormatNV(Size, Type, Stride)
 -> cast
    ( ?glTexCoordFormatNV
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      >>
    )
.

%% Func:       edgeFlagFormatNV
%% Args:       Stride
%% Returns:    ok
%% C-API func: void glEdgeFlagFormatNV(GLsizei stride)

edgeFlagFormatNV(Stride)
 -> cast
    ( ?glEdgeFlagFormatNV
    , <<Stride:?GLsizei
      >>
    )
.

%% Func:       secondaryColorFormatNV
%% Args:       Size, Type, Stride
%% Returns:    ok
%% C-API func: void glSecondaryColorFormatNV(GLint size, GLenum type, GLsizei stride)

secondaryColorFormatNV(Size, Type, Stride)
 -> cast
    ( ?glSecondaryColorFormatNV
    , <<Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      >>
    )
.

%% Func:       fogCoordFormatNV
%% Args:       Type, Stride
%% Returns:    ok
%% C-API func: void glFogCoordFormatNV(GLenum type, GLsizei stride)

fogCoordFormatNV(Type, Stride)
 -> cast
    ( ?glFogCoordFormatNV
    , <<Type:?GLenum
      , Stride:?GLsizei
      >>
    )
.

%% Func:       vertexAttribFormatNV
%% Args:       Index, Size, Type, Normalized, Stride
%% Returns:    ok
%% C-API func: void glVertexAttribFormatNV(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride)

vertexAttribFormatNV(Index, Size, Type, Normalized, Stride)
 -> cast
    ( ?glVertexAttribFormatNV
    , <<Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Stride:?GLsizei
      >>
    )
.

%% Func:       vertexAttribIFormatNV
%% Args:       Index, Size, Type, Stride
%% Returns:    ok
%% C-API func: void glVertexAttribIFormatNV(GLuint index, GLint size, GLenum type, GLsizei stride)

vertexAttribIFormatNV(Index, Size, Type, Stride)
 -> cast
    ( ?glVertexAttribIFormatNV
    , <<Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      >>
    )
.

%% Func:       getIntegerui64iVNV
%% Args:       Value, Index
%% Returns:    { Result }
%% C-API func: void glGetIntegerui64i_vNV(GLenum value, GLuint index, GLuint64EXT* result)

getIntegerui64iVNV(Value, Index)
 -> case
      call
      ( ?glGetIntegerui64i_vNV
      , <<Value:?GLenum
        , Index:?GLuint
        >>
      )
    of
      <<Result:?_PTR
      >>
        -> { Result }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_NV_texture_barrier

%% Func:       textureBarrierNV
%% Args:       none
%% Returns:    ok
%% C-API func: void glTextureBarrierNV(void)

textureBarrierNV()
 -> cast
    ( ?glTextureBarrierNV
    , [
      ]
    )
.

%% GL_AMD_shader_stencil_export

%% GL_AMD_seamless_cubemap_per_texture

%% GL_AMD_conservative_depth

%% GL_EXT_shader_image_load_store

%% Func:       bindImageTextureEXT
%% Args:       Index, Texture, Level, Layered, Layer, Access, Format
%% Returns:    ok
%% C-API func: void glBindImageTextureEXT(GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format)

bindImageTextureEXT(Index, Texture, Level, Layered, Layer, Access, Format)
 -> cast
    ( ?glBindImageTextureEXT
    , <<Index:?GLuint
      , Texture:?GLuint
      , Level:?GLint
      , Layered:?GLboolean
      , Layer:?GLint
      , Access:?GLenum
      , Format:?GLint
      >>
    )
.

%% Func:       memoryBarrierEXT
%% Args:       Barriers
%% Returns:    ok
%% C-API func: void glMemoryBarrierEXT(GLbitfield barriers)

memoryBarrierEXT(Barriers)
 -> cast
    ( ?glMemoryBarrierEXT
    , <<Barriers:?GLbitfield
      >>
    )
.

%% GL_EXT_vertex_attrib_64bit

%% Func:       vertexAttribL1dEXT
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttribL1dEXT(GLuint index, GLdouble x)

vertexAttribL1dEXT(Index, X)
 -> cast
    ( ?glVertexAttribL1dEXT
    , <<Index:?GLuint
      , X:?GLdouble
      >>
    )
.

%% Func:       vertexAttribL2dEXT
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttribL2dEXT(GLuint index, GLdouble x, GLdouble y)

vertexAttribL2dEXT(Index, X, Y)
 -> cast
    ( ?glVertexAttribL2dEXT
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      >>
    )
.

%% Func:       vertexAttribL3dEXT
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttribL3dEXT(GLuint index, GLdouble x, GLdouble y, GLdouble z)

vertexAttribL3dEXT(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttribL3dEXT
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      >>
    )
.

%% Func:       vertexAttribL4dEXT
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttribL4dEXT(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

vertexAttribL4dEXT(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttribL4dEXT
    , <<Index:?GLuint
      , X:?GLdouble
      , Y:?GLdouble
      , Z:?GLdouble
      , W:?GLdouble
      >>
    )
.

%% Func:       vertexAttribL1dvEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL1dvEXT(GLuint index, const GLdouble* v)

vertexAttribL1dvEXT(Index, V)
 -> cast
    ( ?glVertexAttribL1dvEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL2dvEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL2dvEXT(GLuint index, const GLdouble* v)

vertexAttribL2dvEXT(Index, V)
 -> cast
    ( ?glVertexAttribL2dvEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL3dvEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL3dvEXT(GLuint index, const GLdouble* v)

vertexAttribL3dvEXT(Index, V)
 -> cast
    ( ?glVertexAttribL3dvEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL4dvEXT
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL4dvEXT(GLuint index, const GLdouble* v)

vertexAttribL4dvEXT(Index, V)
 -> cast
    ( ?glVertexAttribL4dvEXT
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribLPointerEXT
%% Args:       Index, Size, Type, Stride, Pointer
%% Returns:    ok
%% C-API func: void glVertexAttribLPointerEXT(GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer)

vertexAttribLPointerEXT(Index, Size, Type, Stride, Pointer)
 -> cast
    ( ?glVertexAttribLPointerEXT
    , <<Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Pointer:?_PTR
      >>
    )
.

%% Func:       getVertexAttribLdvEXT
%% Args:       Index, Pname
%% Returns:    { Params }
%% C-API func: void glGetVertexAttribLdvEXT(GLuint index, GLenum pname, GLdouble* params)

getVertexAttribLdvEXT(Index, Pname)
 -> case
      call
      ( ?glGetVertexAttribLdvEXT
      , <<Index:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?GLdouble
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       vertexArrayVertexAttribLOffsetEXT
%% Args:       Vaobj, Buffer, Index, Size, Type, Stride, Offset
%% Returns:    ok
%% C-API func: void glVertexArrayVertexAttribLOffsetEXT(GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset)

vertexArrayVertexAttribLOffsetEXT(Vaobj, Buffer, Index, Size, Type, Stride, Offset)
 -> cast
    ( ?glVertexArrayVertexAttribLOffsetEXT
    , <<Vaobj:?GLuint
      , Buffer:?GLuint
      , Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      , Offset:?GLintptr
      >>
    )
.

%% GL_NV_gpu_program5

%% Func:       programSubroutineParametersuivNV
%% Args:       Target, Count, Params
%% Returns:    ok
%% C-API func: void glProgramSubroutineParametersuivNV(GLenum target, GLsizei count, const GLuint* params)

programSubroutineParametersuivNV(Target, Count, Params)
 -> cast
    ( ?glProgramSubroutineParametersuivNV
    , <<Target:?GLenum
      , Count:?GLsizei
      , Params:?_PTR
      >>
    )
.

%% Func:       getProgramSubroutineParameteruivNV
%% Args:       Target, Index
%% Returns:    { Param }
%% C-API func: void glGetProgramSubroutineParameteruivNV(GLenum target, GLuint index, GLuint* param)

getProgramSubroutineParameteruivNV(Target, Index)
 -> case
      call
      ( ?glGetProgramSubroutineParameteruivNV
      , <<Target:?GLenum
        , Index:?GLuint
        >>
      )
    of
      <<Param:?GLuint
      >>
        -> { Param }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_NV_gpu_shader5

%% Func:       uniform1i64NV
%% Args:       Location, X
%% Returns:    ok
%% C-API func: void glUniform1i64NV(GLint location, GLint64EXT x)

uniform1i64NV(Location, X)
 -> cast
    ( ?glUniform1i64NV
    , <<Location:?GLint
      , X:?GLint64EXT
      >>
    )
.

%% Func:       uniform2i64NV
%% Args:       Location, X, Y
%% Returns:    ok
%% C-API func: void glUniform2i64NV(GLint location, GLint64EXT x, GLint64EXT y)

uniform2i64NV(Location, X, Y)
 -> cast
    ( ?glUniform2i64NV
    , <<Location:?GLint
      , X:?GLint64EXT
      , Y:?GLint64EXT
      >>
    )
.

%% Func:       uniform3i64NV
%% Args:       Location, X, Y, Z
%% Returns:    ok
%% C-API func: void glUniform3i64NV(GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z)

uniform3i64NV(Location, X, Y, Z)
 -> cast
    ( ?glUniform3i64NV
    , <<Location:?GLint
      , X:?GLint64EXT
      , Y:?GLint64EXT
      , Z:?GLint64EXT
      >>
    )
.

%% Func:       uniform4i64NV
%% Args:       Location, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glUniform4i64NV(GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)

uniform4i64NV(Location, X, Y, Z, W)
 -> cast
    ( ?glUniform4i64NV
    , <<Location:?GLint
      , X:?GLint64EXT
      , Y:?GLint64EXT
      , Z:?GLint64EXT
      , W:?GLint64EXT
      >>
    )
.

%% Func:       uniform1i64vNV
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform1i64vNV(GLint location, GLsizei count, const GLint64EXT* value)

uniform1i64vNV(Location, Count, Value)
 -> cast
    ( ?glUniform1i64vNV
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform2i64vNV
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform2i64vNV(GLint location, GLsizei count, const GLint64EXT* value)

uniform2i64vNV(Location, Count, Value)
 -> cast
    ( ?glUniform2i64vNV
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform3i64vNV
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform3i64vNV(GLint location, GLsizei count, const GLint64EXT* value)

uniform3i64vNV(Location, Count, Value)
 -> cast
    ( ?glUniform3i64vNV
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform4i64vNV
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform4i64vNV(GLint location, GLsizei count, const GLint64EXT* value)

uniform4i64vNV(Location, Count, Value)
 -> cast
    ( ?glUniform4i64vNV
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform1ui64NV
%% Args:       Location, X
%% Returns:    ok
%% C-API func: void glUniform1ui64NV(GLint location, GLuint64EXT x)

uniform1ui64NV(Location, X)
 -> cast
    ( ?glUniform1ui64NV
    , <<Location:?GLint
      , X:?GLuint64EXT
      >>
    )
.

%% Func:       uniform2ui64NV
%% Args:       Location, X, Y
%% Returns:    ok
%% C-API func: void glUniform2ui64NV(GLint location, GLuint64EXT x, GLuint64EXT y)

uniform2ui64NV(Location, X, Y)
 -> cast
    ( ?glUniform2ui64NV
    , <<Location:?GLint
      , X:?GLuint64EXT
      , Y:?GLuint64EXT
      >>
    )
.

%% Func:       uniform3ui64NV
%% Args:       Location, X, Y, Z
%% Returns:    ok
%% C-API func: void glUniform3ui64NV(GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)

uniform3ui64NV(Location, X, Y, Z)
 -> cast
    ( ?glUniform3ui64NV
    , <<Location:?GLint
      , X:?GLuint64EXT
      , Y:?GLuint64EXT
      , Z:?GLuint64EXT
      >>
    )
.

%% Func:       uniform4ui64NV
%% Args:       Location, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glUniform4ui64NV(GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)

uniform4ui64NV(Location, X, Y, Z, W)
 -> cast
    ( ?glUniform4ui64NV
    , <<Location:?GLint
      , X:?GLuint64EXT
      , Y:?GLuint64EXT
      , Z:?GLuint64EXT
      , W:?GLuint64EXT
      >>
    )
.

%% Func:       uniform1ui64vNV
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform1ui64vNV(GLint location, GLsizei count, const GLuint64EXT* value)

uniform1ui64vNV(Location, Count, Value)
 -> cast
    ( ?glUniform1ui64vNV
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform2ui64vNV
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform2ui64vNV(GLint location, GLsizei count, const GLuint64EXT* value)

uniform2ui64vNV(Location, Count, Value)
 -> cast
    ( ?glUniform2ui64vNV
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform3ui64vNV
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform3ui64vNV(GLint location, GLsizei count, const GLuint64EXT* value)

uniform3ui64vNV(Location, Count, Value)
 -> cast
    ( ?glUniform3ui64vNV
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform4ui64vNV
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform4ui64vNV(GLint location, GLsizei count, const GLuint64EXT* value)

uniform4ui64vNV(Location, Count, Value)
 -> cast
    ( ?glUniform4ui64vNV
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       getUniformi64vNV
%% Args:       Program, Location
%% Returns:    { Params }
%% C-API func: void glGetUniformi64vNV(GLuint program, GLint location, GLint64EXT* params)

getUniformi64vNV(Program, Location)
 -> case
      call
      ( ?glGetUniformi64vNV
      , <<Program:?GLuint
        , Location:?GLint
        >>
      )
    of
      <<Params:?_PTR
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       programUniform1i64NV
%% Args:       Program, Location, X
%% Returns:    ok
%% C-API func: void glProgramUniform1i64NV(GLuint program, GLint location, GLint64EXT x)

programUniform1i64NV(Program, Location, X)
 -> cast
    ( ?glProgramUniform1i64NV
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLint64EXT
      >>
    )
.

%% Func:       programUniform2i64NV
%% Args:       Program, Location, X, Y
%% Returns:    ok
%% C-API func: void glProgramUniform2i64NV(GLuint program, GLint location, GLint64EXT x, GLint64EXT y)

programUniform2i64NV(Program, Location, X, Y)
 -> cast
    ( ?glProgramUniform2i64NV
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLint64EXT
      , Y:?GLint64EXT
      >>
    )
.

%% Func:       programUniform3i64NV
%% Args:       Program, Location, X, Y, Z
%% Returns:    ok
%% C-API func: void glProgramUniform3i64NV(GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z)

programUniform3i64NV(Program, Location, X, Y, Z)
 -> cast
    ( ?glProgramUniform3i64NV
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLint64EXT
      , Y:?GLint64EXT
      , Z:?GLint64EXT
      >>
    )
.

%% Func:       programUniform4i64NV
%% Args:       Program, Location, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramUniform4i64NV(GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)

programUniform4i64NV(Program, Location, X, Y, Z, W)
 -> cast
    ( ?glProgramUniform4i64NV
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLint64EXT
      , Y:?GLint64EXT
      , Z:?GLint64EXT
      , W:?GLint64EXT
      >>
    )
.

%% Func:       programUniform1i64vNV
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform1i64vNV(GLuint program, GLint location, GLsizei count, const GLint64EXT* value)

programUniform1i64vNV(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform1i64vNV
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform2i64vNV
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform2i64vNV(GLuint program, GLint location, GLsizei count, const GLint64EXT* value)

programUniform2i64vNV(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform2i64vNV
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform3i64vNV
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform3i64vNV(GLuint program, GLint location, GLsizei count, const GLint64EXT* value)

programUniform3i64vNV(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform3i64vNV
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform4i64vNV
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform4i64vNV(GLuint program, GLint location, GLsizei count, const GLint64EXT* value)

programUniform4i64vNV(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform4i64vNV
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform1ui64NV
%% Args:       Program, Location, X
%% Returns:    ok
%% C-API func: void glProgramUniform1ui64NV(GLuint program, GLint location, GLuint64EXT x)

programUniform1ui64NV(Program, Location, X)
 -> cast
    ( ?glProgramUniform1ui64NV
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLuint64EXT
      >>
    )
.

%% Func:       programUniform2ui64NV
%% Args:       Program, Location, X, Y
%% Returns:    ok
%% C-API func: void glProgramUniform2ui64NV(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y)

programUniform2ui64NV(Program, Location, X, Y)
 -> cast
    ( ?glProgramUniform2ui64NV
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLuint64EXT
      , Y:?GLuint64EXT
      >>
    )
.

%% Func:       programUniform3ui64NV
%% Args:       Program, Location, X, Y, Z
%% Returns:    ok
%% C-API func: void glProgramUniform3ui64NV(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)

programUniform3ui64NV(Program, Location, X, Y, Z)
 -> cast
    ( ?glProgramUniform3ui64NV
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLuint64EXT
      , Y:?GLuint64EXT
      , Z:?GLuint64EXT
      >>
    )
.

%% Func:       programUniform4ui64NV
%% Args:       Program, Location, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glProgramUniform4ui64NV(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)

programUniform4ui64NV(Program, Location, X, Y, Z, W)
 -> cast
    ( ?glProgramUniform4ui64NV
    , <<Program:?GLuint
      , Location:?GLint
      , X:?GLuint64EXT
      , Y:?GLuint64EXT
      , Z:?GLuint64EXT
      , W:?GLuint64EXT
      >>
    )
.

%% Func:       programUniform1ui64vNV
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform1ui64vNV(GLuint program, GLint location, GLsizei count, const GLuint64EXT* value)

programUniform1ui64vNV(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform1ui64vNV
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform2ui64vNV
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform2ui64vNV(GLuint program, GLint location, GLsizei count, const GLuint64EXT* value)

programUniform2ui64vNV(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform2ui64vNV
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform3ui64vNV
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform3ui64vNV(GLuint program, GLint location, GLsizei count, const GLuint64EXT* value)

programUniform3ui64vNV(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform3ui64vNV
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       programUniform4ui64vNV
%% Args:       Program, Location, Count, Value
%% Returns:    ok
%% C-API func: void glProgramUniform4ui64vNV(GLuint program, GLint location, GLsizei count, const GLuint64EXT* value)

programUniform4ui64vNV(Program, Location, Count, Value)
 -> cast
    ( ?glProgramUniform4ui64vNV
    , <<Program:?GLuint
      , Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% GL_NV_shader_buffer_store

%% GL_NV_tessellation_program5

%% GL_NV_vertex_attrib_integer_64bit

%% Func:       vertexAttribL1i64NV
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttribL1i64NV(GLuint index, GLint64EXT x)

vertexAttribL1i64NV(Index, X)
 -> cast
    ( ?glVertexAttribL1i64NV
    , <<Index:?GLuint
      , X:?GLint64EXT
      >>
    )
.

%% Func:       vertexAttribL2i64NV
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttribL2i64NV(GLuint index, GLint64EXT x, GLint64EXT y)

vertexAttribL2i64NV(Index, X, Y)
 -> cast
    ( ?glVertexAttribL2i64NV
    , <<Index:?GLuint
      , X:?GLint64EXT
      , Y:?GLint64EXT
      >>
    )
.

%% Func:       vertexAttribL3i64NV
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttribL3i64NV(GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z)

vertexAttribL3i64NV(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttribL3i64NV
    , <<Index:?GLuint
      , X:?GLint64EXT
      , Y:?GLint64EXT
      , Z:?GLint64EXT
      >>
    )
.

%% Func:       vertexAttribL4i64NV
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttribL4i64NV(GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)

vertexAttribL4i64NV(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttribL4i64NV
    , <<Index:?GLuint
      , X:?GLint64EXT
      , Y:?GLint64EXT
      , Z:?GLint64EXT
      , W:?GLint64EXT
      >>
    )
.

%% Func:       vertexAttribL1i64vNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL1i64vNV(GLuint index, const GLint64EXT* v)

vertexAttribL1i64vNV(Index, V)
 -> cast
    ( ?glVertexAttribL1i64vNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL2i64vNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL2i64vNV(GLuint index, const GLint64EXT* v)

vertexAttribL2i64vNV(Index, V)
 -> cast
    ( ?glVertexAttribL2i64vNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL3i64vNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL3i64vNV(GLuint index, const GLint64EXT* v)

vertexAttribL3i64vNV(Index, V)
 -> cast
    ( ?glVertexAttribL3i64vNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL4i64vNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL4i64vNV(GLuint index, const GLint64EXT* v)

vertexAttribL4i64vNV(Index, V)
 -> cast
    ( ?glVertexAttribL4i64vNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL1ui64NV
%% Args:       Index, X
%% Returns:    ok
%% C-API func: void glVertexAttribL1ui64NV(GLuint index, GLuint64EXT x)

vertexAttribL1ui64NV(Index, X)
 -> cast
    ( ?glVertexAttribL1ui64NV
    , <<Index:?GLuint
      , X:?GLuint64EXT
      >>
    )
.

%% Func:       vertexAttribL2ui64NV
%% Args:       Index, X, Y
%% Returns:    ok
%% C-API func: void glVertexAttribL2ui64NV(GLuint index, GLuint64EXT x, GLuint64EXT y)

vertexAttribL2ui64NV(Index, X, Y)
 -> cast
    ( ?glVertexAttribL2ui64NV
    , <<Index:?GLuint
      , X:?GLuint64EXT
      , Y:?GLuint64EXT
      >>
    )
.

%% Func:       vertexAttribL3ui64NV
%% Args:       Index, X, Y, Z
%% Returns:    ok
%% C-API func: void glVertexAttribL3ui64NV(GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)

vertexAttribL3ui64NV(Index, X, Y, Z)
 -> cast
    ( ?glVertexAttribL3ui64NV
    , <<Index:?GLuint
      , X:?GLuint64EXT
      , Y:?GLuint64EXT
      , Z:?GLuint64EXT
      >>
    )
.

%% Func:       vertexAttribL4ui64NV
%% Args:       Index, X, Y, Z, W
%% Returns:    ok
%% C-API func: void glVertexAttribL4ui64NV(GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)

vertexAttribL4ui64NV(Index, X, Y, Z, W)
 -> cast
    ( ?glVertexAttribL4ui64NV
    , <<Index:?GLuint
      , X:?GLuint64EXT
      , Y:?GLuint64EXT
      , Z:?GLuint64EXT
      , W:?GLuint64EXT
      >>
    )
.

%% Func:       vertexAttribL1ui64vNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL1ui64vNV(GLuint index, const GLuint64EXT* v)

vertexAttribL1ui64vNV(Index, V)
 -> cast
    ( ?glVertexAttribL1ui64vNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL2ui64vNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL2ui64vNV(GLuint index, const GLuint64EXT* v)

vertexAttribL2ui64vNV(Index, V)
 -> cast
    ( ?glVertexAttribL2ui64vNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL3ui64vNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL3ui64vNV(GLuint index, const GLuint64EXT* v)

vertexAttribL3ui64vNV(Index, V)
 -> cast
    ( ?glVertexAttribL3ui64vNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       vertexAttribL4ui64vNV
%% Args:       Index, V
%% Returns:    ok
%% C-API func: void glVertexAttribL4ui64vNV(GLuint index, const GLuint64EXT* v)

vertexAttribL4ui64vNV(Index, V)
 -> cast
    ( ?glVertexAttribL4ui64vNV
    , <<Index:?GLuint
      , V:?_PTR
      >>
    )
.

%% Func:       getVertexAttribLi64vNV
%% Args:       Index, Pname
%% Returns:    { Params }
%% C-API func: void glGetVertexAttribLi64vNV(GLuint index, GLenum pname, GLint64EXT* params)

getVertexAttribLi64vNV(Index, Pname)
 -> case
      call
      ( ?glGetVertexAttribLi64vNV
      , <<Index:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?_PTR
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getVertexAttribLui64vNV
%% Args:       Index, Pname
%% Returns:    { Params }
%% C-API func: void glGetVertexAttribLui64vNV(GLuint index, GLenum pname, GLuint64EXT* params)

getVertexAttribLui64vNV(Index, Pname)
 -> case
      call
      ( ?glGetVertexAttribLui64vNV
      , <<Index:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Params:?_PTR
      >>
        -> { Params }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       vertexAttribLFormatNV
%% Args:       Index, Size, Type, Stride
%% Returns:    ok
%% C-API func: void glVertexAttribLFormatNV(GLuint index, GLint size, GLenum type, GLsizei stride)

vertexAttribLFormatNV(Index, Size, Type, Stride)
 -> cast
    ( ?glVertexAttribLFormatNV
    , <<Index:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Stride:?GLsizei
      >>
    )
.

%% GL_NV_multisample_coverage

%% GL_AMD_name_gen_delete

%% Func:       genNamesAMD
%% Args:       Identifier, Num
%% Returns:    { Names }
%% C-API func: void glGenNamesAMD(GLenum identifier, GLuint num, GLuint* names)

genNamesAMD(Identifier, Num)
 -> case
      call
      ( ?glGenNamesAMD
      , <<Identifier:?GLenum
        , Num:?GLuint
        >>
      )
    of
      <<Names:?GLuint
      >>
        -> { Names }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       deleteNamesAMD
%% Args:       Identifier, Num, Names
%% Returns:    ok
%% C-API func: void glDeleteNamesAMD(GLenum identifier, GLuint num, const GLuint* names)

deleteNamesAMD(Identifier, Num, Names)
 -> cast
    ( ?glDeleteNamesAMD
    , <<Identifier:?GLenum
      , Num:?GLuint
      , Names:?_PTR
      >>
    )
.

%% Func:       isNameAMD
%% Args:       Identifier, Name
%% Returns:    Exdl
%% C-API func: GLboolean glIsNameAMD(GLenum identifier, GLuint name)

isNameAMD(Identifier, Name)
 -> case
      call
      ( ?glIsNameAMD
      , <<Identifier:?GLenum
        , Name:?GLuint
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

%% GL_AMD_debug_output

%% Func:       debugMessageEnableAMD
%% Args:       Category, Severity, Count, Ids, Enabled
%% Returns:    ok
%% C-API func: void glDebugMessageEnableAMD(GLenum category, GLenum severity, GLsizei count, const GLuint* ids, GLboolean enabled)

debugMessageEnableAMD(Category, Severity, Count, Ids, Enabled)
 -> cast
    ( ?glDebugMessageEnableAMD
    , <<Category:?GLenum
      , Severity:?GLenum
      , Count:?GLsizei
      , Ids:?_PTR
      , Enabled:?GLboolean
      >>
    )
.

%% Func:       debugMessageInsertAMD
%% Args:       Category, Severity, Id, Length, Buf
%% Returns:    ok
%% C-API func: void glDebugMessageInsertAMD(GLenum category, GLenum severity, GLuint id, GLsizei length, const GLchar* buf)

debugMessageInsertAMD(Category, Severity, Id, Length, Buf)
 -> cast
    ( ?glDebugMessageInsertAMD
    , <<Category:?GLenum
      , Severity:?GLenum
      , Id:?GLuint
      , Length:?GLsizei
      , Buf:?_PTR
      >>
    )
.

%% Func:       debugMessageCallbackAMD
%% Args:       Callback, UserParam
%% Returns:    ok
%% C-API func: void glDebugMessageCallbackAMD(GLDEBUGPROCAMD callback, GLvoid* userParam)

debugMessageCallbackAMD(Callback, UserParam)
 -> cast
    ( ?glDebugMessageCallbackAMD
    , <<Callback:?GLDEBUGPROCAMD
      , UserParam:?_PTR
      >>
    )
.

%% Func:       getDebugMessageLogAMD
%% Args:       Count, Bufsize, Categories, Severities, Ids, Lengths, Message
%% Returns:    Exdl
%% C-API func: GLuint glGetDebugMessageLogAMD(GLuint count, GLsizei bufsize, GLenum* categories, GLuint* severities, GLuint* ids, GLsizei* lengths, GLchar* message)

getDebugMessageLogAMD(Count, Bufsize, Categories, Severities, Ids, Lengths, Message)
 -> case
      call
      ( ?glGetDebugMessageLogAMD
      , <<Count:?GLuint
        , Bufsize:?GLsizei
        , Categories:?_PTR
        , Severities:?_PTR
        , Ids:?_PTR
        , Lengths:?_PTR
        , Message:?_PTR
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

%% GL_NV_vdpau_interop

%% Func:       vDPAUInitNV
%% Args:       VdpDevice, GetProcAddress
%% Returns:    ok
%% C-API func: void glVDPAUInitNV(const GLvoid* vdpDevice, const GLvoid* getProcAddress)

vDPAUInitNV(VdpDevice, GetProcAddress)
 -> cast
    ( ?glVDPAUInitNV
    , <<VdpDevice:?_PTR
      , GetProcAddress:?_PTR
      >>
    )
.

%% Func:       vDPAUFiniNV
%% Args:       none
%% Returns:    ok
%% C-API func: void glVDPAUFiniNV(void)

vDPAUFiniNV()
 -> cast
    ( ?glVDPAUFiniNV
    , [
      ]
    )
.

%% Func:       vDPAURegisterVideoSurfaceNV
%% Args:       VdpSurface, Target, NumTextureNames, TextureNames
%% Returns:    Exdl
%% C-API func: GLvdpauSurfaceNV glVDPAURegisterVideoSurfaceNV(GLvoid* vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint* textureNames)

vDPAURegisterVideoSurfaceNV(VdpSurface, Target, NumTextureNames, TextureNames)
 -> case
      call
      ( ?glVDPAURegisterVideoSurfaceNV
      , <<VdpSurface:?_PTR
        , Target:?GLenum
        , NumTextureNames:?GLsizei
        , TextureNames:?_PTR
        >>
      )
    of
      <<Exdl:?GLvdpauSurfaceNV
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       vDPAURegisterOutputSurfaceNV
%% Args:       VdpSurface, Target, NumTextureNames, TextureNames
%% Returns:    Exdl
%% C-API func: GLvdpauSurfaceNV glVDPAURegisterOutputSurfaceNV(GLvoid* vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint* textureNames)

vDPAURegisterOutputSurfaceNV(VdpSurface, Target, NumTextureNames, TextureNames)
 -> case
      call
      ( ?glVDPAURegisterOutputSurfaceNV
      , <<VdpSurface:?_PTR
        , Target:?GLenum
        , NumTextureNames:?GLsizei
        , TextureNames:?_PTR
        >>
      )
    of
      <<Exdl:?GLvdpauSurfaceNV
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       vDPAUIsSurfaceNV
%% Args:       Surface
%% Returns:    ok
%% C-API func: void glVDPAUIsSurfaceNV(GLvdpauSurfaceNV surface)

vDPAUIsSurfaceNV(Surface)
 -> cast
    ( ?glVDPAUIsSurfaceNV
    , <<Surface:?GLvdpauSurfaceNV
      >>
    )
.

%% Func:       vDPAUUnregisterSurfaceNV
%% Args:       Surface
%% Returns:    ok
%% C-API func: void glVDPAUUnregisterSurfaceNV(GLvdpauSurfaceNV surface)

vDPAUUnregisterSurfaceNV(Surface)
 -> cast
    ( ?glVDPAUUnregisterSurfaceNV
    , <<Surface:?GLvdpauSurfaceNV
      >>
    )
.

%% Func:       vDPAUGetSurfaceivNV
%% Args:       Surface, Pname, BufSize
%% Returns:    { Length, Values }
%% C-API func: void glVDPAUGetSurfaceivNV(GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values)

vDPAUGetSurfaceivNV(Surface, Pname, BufSize)
 -> case
      call
      ( ?glVDPAUGetSurfaceivNV
      , <<Surface:?GLvdpauSurfaceNV
        , Pname:?GLenum
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Values:?GLint
      >>
        -> { Length, Values }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       vDPAUSurfaceAccessNV
%% Args:       Surface, Access
%% Returns:    ok
%% C-API func: void glVDPAUSurfaceAccessNV(GLvdpauSurfaceNV surface, GLenum access)

vDPAUSurfaceAccessNV(Surface, Access)
 -> cast
    ( ?glVDPAUSurfaceAccessNV
    , <<Surface:?GLvdpauSurfaceNV
      , Access:?GLenum
      >>
    )
.

%% Func:       vDPAUMapSurfacesNV
%% Args:       NumSurfaces, Surfaces
%% Returns:    ok
%% C-API func: void glVDPAUMapSurfacesNV(GLsizei numSurfaces, const GLvdpauSurfaceNV* surfaces)

vDPAUMapSurfacesNV(NumSurfaces, Surfaces)
 -> cast
    ( ?glVDPAUMapSurfacesNV
    , <<NumSurfaces:?GLsizei
      , Surfaces:?_PTR
      >>
    )
.

%% Func:       vDPAUUnmapSurfacesNV
%% Args:       NumSurface, Surfaces
%% Returns:    ok
%% C-API func: void glVDPAUUnmapSurfacesNV(GLsizei numSurface, const GLvdpauSurfaceNV* surfaces)

vDPAUUnmapSurfacesNV(NumSurface, Surfaces)
 -> cast
    ( ?glVDPAUUnmapSurfacesNV
    , <<NumSurface:?GLsizei
      , Surfaces:?_PTR
      >>
    )
.

%% GL_AMD_transform_feedback3_lines_triangles

-endif. % COMPILE_GLEXT
