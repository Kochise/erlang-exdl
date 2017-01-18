%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_glcorearb.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_glcorearb).

-include("exdl.hrl").

-ifdef(COMPILE_GLCOREARB).

%% 1- EXPORT

%-compile(export_all).

%% GL_VERSION_1_0

-export( [ cullFace/1
         , frontFace/1
         , hint/2
         , lineWidth/1
         , pointSize/1
         , polygonMode/2
         , scissor/4
         , texParameterf/3
         , texParameterfv/3
         , texParameteri/3
         , texParameteriv/3
         , texImage1D/8
         , texImage2D/9
         , drawBuffer/1
         , clear/1
         , clearColor/4
         , clearStencil/1
         , clearDepth/1
         , stencilMask/1
         , colorMask/4
         , depthMask/1
         , disable/1
         , enable/1
         , finish/0
         , flush/0
         , blendFunc/2
         , logicOp/1
         , stencilFunc/3
         , stencilOp/3
         , depthFunc/1
         , pixelStoref/2
         , pixelStorei/2
         , readBuffer/1
         , readPixels/7
         , getBooleanv/1
         , getDoublev/1
         , getError/0
         , getFloatv/1
         , getIntegerv/1
         , getString/1
         , getTexImage/4
         , getTexParameterfv/2
         , getTexParameteriv/2
         , getTexLevelParameterfv/3
         , getTexLevelParameteriv/3
         , isEnabled/1
         , depthRange/2
         , viewport/4
         ]
       ).

%% GL_VERSION_1_1

-export( [ drawArrays/3
         , drawElements/4
         , getPointerv/1
         , polygonOffset/2
         , copyTexImage1D/7
         , copyTexImage2D/8
         , copyTexSubImage1D/6
         , copyTexSubImage2D/8
         , texSubImage1D/7
         , texSubImage2D/9
         , bindTexture/2
         , deleteTextures/2
         , genTextures/1
         , isTexture/1
         ]
       ).

%% GL_VERSION_1_2

-export( [ blendColor/4
         , blendEquation/1
         , drawRangeElements/6
         , texImage3D/10
         , texSubImage3D/11
         , copyTexSubImage3D/9
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

-export( [ %% GL_VERSION_4_2

-export( [ %% GL_VERSION_4_3

-export( [ %% GL_ARB_depth_buffer_float

-export( [ %% GL_ARB_framebuffer_object

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

%% GL_ARB_map_buffer_range

-export( [ mapBufferRange/4
         , flushMappedBufferRange/3
         ]
       ).

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

%% GL_ARB_copy_buffer

-export( [ copyBufferSubData/5
         ]
       ).

%% GL_ARB_draw_elements_base_vertex

-export( [ drawElementsBaseVertex/5
         , drawRangeElementsBaseVertex/7
         , drawElementsInstancedBaseVertex/6
         , multiDrawElementsBaseVertex/6
         ]
       ).

%% GL_ARB_provoking_vertex

-export( [ provokingVertex/1
         ]
       ).

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

-export( [ %% GL_ARB_texture_gather

-export( [ %% GL_ARB_texture_query_lod

-export( [ %% GL_ARB_shading_language_include

-export( [ namedStringARB/5
         , deleteNamedStringARB/2
         , compileShaderIncludeARB/4
         , isNamedStringARB/2
         , getNamedStringARB/3
         , getNamedStringivARB/3
         ]
       ).

%% GL_ARB_texture_compression_bptc

-export( [ %% GL_ARB_blend_func_extended

-export( [ bindFragDataLocationIndexed/4
         , getFragDataIndex/2
         ]
       ).

%% GL_ARB_explicit_attrib_location

-export( [ %% GL_ARB_occlusion_query2

-export( [ %% GL_ARB_sampler_objects

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

%% GL_ARB_texture_rgb10_a2ui

-export( [ %% GL_ARB_texture_swizzle

-export( [ %% GL_ARB_timer_query

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

-export( [ %% GL_ARB_gpu_shader_fp64

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

-export( [ %% GL_ARB_transform_feedback2

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

-export( [ %% GL_ARB_base_instance

-export( [ drawArraysInstancedBaseInstance/5
         , drawElementsInstancedBaseInstance/6
         , drawElementsInstancedBaseVertexBaseInstance/7
         ]
       ).

%% GL_ARB_shading_language_420pack

-export( [ %% GL_ARB_transform_feedback_instanced

-export( [ drawTransformFeedbackInstanced/3
         , drawTransformFeedbackStreamInstanced/4
         ]
       ).

%% GL_ARB_compressed_texture_pixel_storage

-export( [ %% GL_ARB_conservative_depth

-export( [ %% GL_ARB_internalformat_query

-export( [ getInternalformativ/4
         ]
       ).

%% GL_ARB_map_buffer_alignment

-export( [ %% GL_ARB_shader_atomic_counters

-export( [ getActiveAtomicCounterBufferiv/3
         ]
       ).

%% GL_ARB_shader_image_load_store

-export( [ bindImageTexture/7
         , memoryBarrier/1
         ]
       ).

%% GL_ARB_shading_language_packing

-export( [ %% GL_ARB_texture_storage

-export( [ texStorage1D/4
         , texStorage2D/5
         , texStorage3D/6
         , textureStorage1DEXT/5
         , textureStorage2DEXT/6
         , textureStorage3DEXT/7
         ]
       ).

%% GL_KHR_texture_compression_astc_ldr

-export( [ %% GL_KHR_debug

-export( [ debugMessageControl/6
         , debugMessageInsert/6
         , debugMessageCallback/2
         , getDebugMessageLog/8
         , pushDebugGroup/4
         , popDebugGroup/0
         , objectLabel/4
         , getObjectLabel/3
         , objectPtrLabel/3
         , getObjectPtrLabel/2
         ]
       ).

%% GL_ARB_arrays_of_arrays

-export( [ %% GL_ARB_clear_buffer_object

-export( [ clearBufferData/5
         , clearBufferSubData/7
         , clearNamedBufferDataEXT/5
         , clearNamedBufferSubDataEXT/7
         ]
       ).

%% GL_ARB_compute_shader

-export( [ dispatchCompute/3
         , dispatchComputeIndirect/1
         ]
       ).

%% GL_ARB_copy_image

-export( [ copyImageSubData/15
         , %% GL_ARB_texture_view

-export( [ textureView/8
         ]
       ).

%% GL_ARB_vertex_attrib_binding

-export( [ bindVertexBuffer/4
         , vertexAttribFormat/5
         , vertexAttribIFormat/4
         , vertexAttribLFormat/4
         , vertexAttribBinding/2
         , vertexBindingDivisor/2
         , vertexArrayBindVertexBufferEXT/5
         , vertexArrayVertexAttribFormatEXT/6
         , vertexArrayVertexAttribIFormatEXT/5
         , vertexArrayVertexAttribLFormatEXT/5
         , vertexArrayVertexAttribBindingEXT/3
         , vertexArrayVertexBindingDivisorEXT/3
         ]
       ).

%% GL_ARB_robustness_isolation

-export( [ %% GL_ARB_ES3_compatibility

-export( [ %% GL_ARB_explicit_uniform_location

-export( [ %% GL_ARB_fragment_layer_viewport

-export( [ %% GL_ARB_framebuffer_no_attachments

-export( [ framebufferParameteri/3
         , getFramebufferParameteriv/2
         , namedFramebufferParameteriEXT/3
         , getNamedFramebufferParameterivEXT/2
         ]
       ).

%% GL_ARB_internalformat_query2

-export( [ getInternalformati64v/4
         ]
       ).

%% GL_ARB_invalidate_subdata

-export( [ invalidateTexSubImage/8
         , invalidateTexImage/2
         , invalidateBufferSubData/3
         , invalidateBufferData/1
         , invalidateFramebuffer/3
         , invalidateSubFramebuffer/7
         ]
       ).

%% GL_ARB_multi_draw_indirect

-export( [ multiDrawArraysIndirect/4
         , multiDrawElementsIndirect/5
         ]
       ).

%% GL_ARB_program_interface_query

-export( [ getProgramInterfaceiv/3
         , getProgramResourceIndex/3
         , getProgramResourceName/4
         , getProgramResourceiv/6
         , getProgramResourceLocation/3
         , getProgramResourceLocationIndex/3
         ]
       ).

%% GL_ARB_robust_buffer_access_behavior

-export( [ %% GL_ARB_shader_image_size

-export( [ %% GL_ARB_shader_storage_buffer_object

-export( [ shaderStorageBlockBinding/3
         ]
       ).

%% GL_ARB_stencil_texturing

-export( [ %% GL_ARB_texture_buffer_range

-export( [ texBufferRange/5
         , textureBufferRangeEXT/6
         ]
       ).

%% GL_ARB_texture_query_levels

-export( [ %% GL_ARB_texture_storage_multisample

-export( [ texStorage2DMultisample/6
         , texStorage3DMultisample/7
         , textureStorage2DMultisampleEXT/7
         , textureStorage3DMultisampleEXT/8
         ]
       ).

%% 2- INCLUDE

-include("exdl_glcorearb.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% GL_VERSION_1_0

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

%% Func:       clearColor
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)

clearColor(Red, Green, Blue, Alpha)
 -> cast
    ( ?glClearColor
    , <<Red:?GLfloat
      , Green:?GLfloat
      , Blue:?GLfloat
      , Alpha:?GLfloat
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

%% Func:       clearDepth
%% Args:       Depth
%% Returns:    ok
%% C-API func: void glClearDepth(GLdouble depth)

clearDepth(Depth)
 -> cast
    ( ?glClearDepth
    , <<Depth:?GLdouble
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

%% Func:       depthRange
%% Args:       Near, Far
%% Returns:    ok
%% C-API func: void glDepthRange(GLdouble near, GLdouble far)

depthRange(Near, Far)
 -> cast
    ( ?glDepthRange
    , <<Near:?GLdouble
      , Far:?GLdouble
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

%% GL_VERSION_1_1

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

%% Func:       copyTexImage1D
%% Args:       Target, Level, Internalformat, X, Y, Width, Border
%% Returns:    ok
%% C-API func: void glCopyTexImage1D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

copyTexImage1D(Target, Level, Internalformat, X, Y, Width, Border)
 -> cast
    ( ?glCopyTexImage1D
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

%% Func:       copyTexImage2D
%% Args:       Target, Level, Internalformat, X, Y, Width, Height, Border
%% Returns:    ok
%% C-API func: void glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

copyTexImage2D(Target, Level, Internalformat, X, Y, Width, Height, Border)
 -> cast
    ( ?glCopyTexImage2D
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

%% GL_VERSION_1_2

%% Func:       blendColor
%% Args:       Red, Green, Blue, Alpha
%% Returns:    ok
%% C-API func: void glBlendColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)

blendColor(Red, Green, Blue, Alpha)
 -> cast
    ( ?glBlendColor
    , <<Red:?GLfloat
      , Green:?GLfloat
      , Blue:?GLfloat
      , Alpha:?GLfloat
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
%% C-API func: void glSampleCoverage(GLfloat value, GLboolean invert)

sampleCoverage(Value, Invert)
 -> cast
    ( ?glSampleCoverage
    , <<Value:?GLfloat
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
%% Args:       Target, Level
%% Returns:    { Img }
%% C-API func: void glGetCompressedTexImage(GLenum target, GLint level, GLvoid* img)

getCompressedTexImage(Target, Level)
 -> case
      call
      ( ?glGetCompressedTexImage
      , <<Target:?GLenum
        , Level:?GLint
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
%% Args:       Mode, First, Count, Drawcount
%% Returns:    ok
%% C-API func: void glMultiDrawArrays(GLenum mode, const GLint* first, const GLsizei* count, GLsizei drawcount)

multiDrawArrays(Mode, First, Count, Drawcount)
 -> cast
    ( ?glMultiDrawArrays
    , <<Mode:?GLenum
      , First:?_PTR
      , Count:?_PTR
      , Drawcount:?GLsizei
      >>
    )
.

%% Func:       multiDrawElements
%% Args:       Mode, Count, Type, Indices, Drawcount
%% Returns:    ok
%% C-API func: void glMultiDrawElements(GLenum mode, const GLsizei* count, GLenum type, const GLvoid* const *indices, GLsizei drawcount)

multiDrawElements(Mode, Count, Type, Indices, Drawcount)
 -> cast
    ( ?glMultiDrawElements
    , <<Mode:?GLenum
      , Count:?_PTR
      , Type:?GLenum
      , Indices:?_PTR
      , Drawcount:?GLsizei
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
%% Args:       Pname, Params
%% Returns:    ok
%% C-API func: void glPointParameterfv(GLenum pname, const GLfloat* params)

pointParameterfv(Pname, Params)
 -> cast
    ( ?glPointParameterfv
    , <<Pname:?GLenum
      , Params:?_PTR
      >>
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
%% Args:       Pname, Params
%% Returns:    ok
%% C-API func: void glPointParameteriv(GLenum pname, const GLint* params)

pointParameteriv(Pname, Params)
 -> cast
    ( ?glPointParameteriv
    , <<Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% GL_VERSION_1_5

%% Func:       genQueries
%% Args:       N
%% Returns:    { Ids }
%% C-API func: void glGenQueries(GLsizei n, GLuint* ids)

genQueries(N)
 -> case
      call
      ( ?glGenQueries
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
%% Returns:    Exdl
%% C-API func: GLboolean glIsQuery(GLuint id)

isQuery(Id)
 -> case
      call
      ( ?glIsQuery
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
%% Returns:    [ Params ]
%% C-API func: void glGetQueryiv(GLenum target, GLenum pname, GLint* params)

getQueryiv(Target, Pname)
 -> case
      call
      ( ?glGetQueryiv
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

%% Func:       getQueryObjectiv
%% Args:       Id, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetQueryObjectiv(GLuint id, GLenum pname, GLint* params)

getQueryObjectiv(Id, Pname)
 -> case
      call
      ( ?glGetQueryObjectiv
      , <<Id:?GLuint
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

%% Func:       getQueryObjectuiv
%% Args:       Id, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetQueryObjectuiv(GLuint id, GLenum pname, GLuint* params)

getQueryObjectuiv(Id, Pname)
 -> case
      call
      ( ?glGetQueryObjectuiv
      , <<Id:?GLuint
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
%% Args:       N
%% Returns:    { Buffers }
%% C-API func: void glGenBuffers(GLsizei n, GLuint* buffers)

genBuffers(N)
 -> case
      call
      ( ?glGenBuffers
      , <<N:?GLsizei
        >>
      )
    of
      <<Buffers:?GLuint
      >>
        -> { Buffers }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       isBuffer
%% Args:       Buffer
%% Returns:    Exdl
%% C-API func: GLboolean glIsBuffer(GLuint buffer)

isBuffer(Buffer)
 -> case
      call
      ( ?glIsBuffer
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
%% Args:       Target, Offset, Size
%% Returns:    { Data }
%% C-API func: void glGetBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, GLvoid* data)

getBufferSubData(Target, Offset, Size)
 -> case
      call
      ( ?glGetBufferSubData
      , <<Target:?GLenum
        , Offset:?GLintptr
        , Size:?GLsizeiptr
        >>
      )
    of
      <<Data:?GLvoid
      >>
        -> { Data }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       mapBuffer
%% Args:       Target, Access
%% Returns:    Exdl
%% C-API func: GLvoid* glMapBuffer(GLenum target, GLenum access)

mapBuffer(Target, Access)
 -> case
      call
      ( ?glMapBuffer
      , <<Target:?GLenum
        , Access:?GLenum
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

%% Func:       unmapBuffer
%% Args:       Target
%% Returns:    Exdl
%% C-API func: GLboolean glUnmapBuffer(GLenum target)

unmapBuffer(Target)
 -> case
      call
      ( ?glUnmapBuffer
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

%% Func:       getBufferParameteriv
%% Args:       Target, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetBufferParameteriv(GLenum target, GLenum pname, GLint* params)

getBufferParameteriv(Target, Pname)
 -> case
      call
      ( ?glGetBufferParameteriv
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

%% Func:       getBufferPointerv
%% Args:       Target, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetBufferPointerv(GLenum target, GLenum pname, GLvoid** params)

getBufferPointerv(Target, Pname)
 -> case
      call
      ( ?glGetBufferPointerv
      , <<Target:?GLenum
        , Pname:?GLenum
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
%% Args:       none
%% Returns:    Exdl
%% C-API func: GLuint glCreateProgram(void)

createProgram()
 -> case
      call
      ( ?glCreateProgram
      , [
        ]
      )
    of
      <<Exdl:?GLuint
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createShader
%% Args:       Type
%% Returns:    Exdl
%% C-API func: GLuint glCreateShader(GLenum type)

createShader(Type)
 -> case
      call
      ( ?glCreateShader
      , <<Type:?GLenum
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
%% Args:       Program, Index, BufSize
%% Returns:    { Length, Size, Type, Name }
%% C-API func: void glGetActiveAttrib(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name)

getActiveAttrib(Program, Index, BufSize)
 -> case
      call
      ( ?glGetActiveAttrib
      , <<Program:?GLuint
        , Index:?GLuint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Size:?GLint
      , Type:?GLenum
      , Name:?_PTR
      >>
        -> { Length, Size, Type, Name }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getActiveUniform
%% Args:       Program, Index, BufSize
%% Returns:    { Length, Size, Type, Name }
%% C-API func: void glGetActiveUniform(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name)

getActiveUniform(Program, Index, BufSize)
 -> case
      call
      ( ?glGetActiveUniform
      , <<Program:?GLuint
        , Index:?GLuint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Size:?GLint
      , Type:?GLenum
      , Name:?_PTR
      >>
        -> { Length, Size, Type, Name }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getAttachedShaders
%% Args:       Program, MaxCount
%% Returns:    { Count, Obj }
%% C-API func: void glGetAttachedShaders(GLuint program, GLsizei maxCount, GLsizei* count, GLuint* obj)

getAttachedShaders(Program, MaxCount)
 -> case
      call
      ( ?glGetAttachedShaders
      , <<Program:?GLuint
        , MaxCount:?GLsizei
        >>
      )
    of
      <<Count:?GLsizei
      , Obj:?GLuint
      >>
        -> { Count, Obj }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getAttribLocation
%% Args:       Program, Name
%% Returns:    Exdl
%% C-API func: GLint glGetAttribLocation(GLuint program, const GLchar* name)

getAttribLocation(Program, Name)
 -> case
      call
      ( ?glGetAttribLocation
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

%% Func:       getProgramiv
%% Args:       Program, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetProgramiv(GLuint program, GLenum pname, GLint* params)

getProgramiv(Program, Pname)
 -> case
      call
      ( ?glGetProgramiv
      , <<Program:?GLuint
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

%% Func:       getProgramInfoLog
%% Args:       Program, BufSize
%% Returns:    { Length, InfoLog }
%% C-API func: void glGetProgramInfoLog(GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

getProgramInfoLog(Program, BufSize)
 -> case
      call
      ( ?glGetProgramInfoLog
      , <<Program:?GLuint
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

%% Func:       getShaderiv
%% Args:       Shader, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetShaderiv(GLuint shader, GLenum pname, GLint* params)

getShaderiv(Shader, Pname)
 -> case
      call
      ( ?glGetShaderiv
      , <<Shader:?GLuint
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

%% Func:       getShaderInfoLog
%% Args:       Shader, BufSize
%% Returns:    { Length, InfoLog }
%% C-API func: void glGetShaderInfoLog(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

getShaderInfoLog(Shader, BufSize)
 -> case
      call
      ( ?glGetShaderInfoLog
      , <<Shader:?GLuint
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

%% Func:       getShaderSource
%% Args:       Shader, BufSize
%% Returns:    { Length, Source }
%% C-API func: void glGetShaderSource(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source)

getShaderSource(Shader, BufSize)
 -> case
      call
      ( ?glGetShaderSource
      , <<Shader:?GLuint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Source:?_PTR
      >>
        -> { Length, Source }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getUniformLocation
%% Args:       Program, Name
%% Returns:    Exdl
%% C-API func: GLint glGetUniformLocation(GLuint program, const GLchar* name)

getUniformLocation(Program, Name)
 -> case
      call
      ( ?glGetUniformLocation
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

%% Func:       getUniformfv
%% Args:       Program, Location
%% Returns:    [ Params ]
%% C-API func: void glGetUniformfv(GLuint program, GLint location, GLfloat* params)

getUniformfv(Program, Location)
 -> case
      call
      ( ?glGetUniformfv
      , <<Program:?GLuint
        , Location:?GLint
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

%% Func:       getUniformiv
%% Args:       Program, Location
%% Returns:    [ Params ]
%% C-API func: void glGetUniformiv(GLuint program, GLint location, GLint* params)

getUniformiv(Program, Location)
 -> case
      call
      ( ?glGetUniformiv
      , <<Program:?GLuint
        , Location:?GLint
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

%% Func:       getVertexAttribdv
%% Args:       Index, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetVertexAttribdv(GLuint index, GLenum pname, GLdouble* params)

getVertexAttribdv(Index, Pname)
 -> case
      call
      ( ?glGetVertexAttribdv
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

%% Func:       getVertexAttribfv
%% Args:       Index, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetVertexAttribfv(GLuint index, GLenum pname, GLfloat* params)

getVertexAttribfv(Index, Pname)
 -> case
      call
      ( ?glGetVertexAttribfv
      , <<Index:?GLuint
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

%% Func:       getVertexAttribiv
%% Args:       Index, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetVertexAttribiv(GLuint index, GLenum pname, GLint* params)

getVertexAttribiv(Index, Pname)
 -> case
      call
      ( ?glGetVertexAttribiv
      , <<Index:?GLuint
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

%% Func:       getVertexAttribPointerv
%% Args:       Index, Pname
%% Returns:    [ Pointer ]
%% C-API func: void glGetVertexAttribPointerv(GLuint index, GLenum pname, GLvoid** pointer)

getVertexAttribPointerv(Index, Pname)
 -> case
      call
      ( ?glGetVertexAttribPointerv
      , <<Index:?GLuint
        , Pname:?GLenum
        >>
      )
    of
      <<Pointer:?GLvoid
      >>
        -> [ Pointer ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       isProgram
%% Args:       Program
%% Returns:    Exdl
%% C-API func: GLboolean glIsProgram(GLuint program)

isProgram(Program)
 -> case
      call
      ( ?glIsProgram
      , <<Program:?GLuint
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

%% Func:       isShader
%% Args:       Shader
%% Returns:    Exdl
%% C-API func: GLboolean glIsShader(GLuint shader)

isShader(Shader)
 -> case
      call
      ( ?glIsShader
      , <<Shader:?GLuint
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
%% C-API func: void glShaderSource(GLuint shader, GLsizei count, const GLchar* const *string, const GLint* length)

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
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform1fv(GLint location, GLsizei count, const GLfloat* value)

uniform1fv(Location, Count, Value)
 -> cast
    ( ?glUniform1fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform2fv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform2fv(GLint location, GLsizei count, const GLfloat* value)

uniform2fv(Location, Count, Value)
 -> cast
    ( ?glUniform2fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform3fv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform3fv(GLint location, GLsizei count, const GLfloat* value)

uniform3fv(Location, Count, Value)
 -> cast
    ( ?glUniform3fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
    )
.

%% Func:       uniform4fv
%% Args:       Location, Count, Value
%% Returns:    ok
%% C-API func: void glUniform4fv(GLint location, GLsizei count, const GLfloat* value)

uniform4fv(Location, Count, Value)
 -> cast
    ( ?glUniform4fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Value:?_PTR
      >>
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
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix2fv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix2fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix3fv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix3fv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix3fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix4fv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix4fv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix4fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
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
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix2x3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix2x3fv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix2x3fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix3x2fv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix3x2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix3x2fv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix3x2fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix2x4fv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix2x4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix2x4fv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix2x4fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix4x2fv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix4x2fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix4x2fv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix4x2fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix3x4fv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix3x4fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix3x4fv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix3x4fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
    )
.

%% Func:       uniformMatrix4x3fv
%% Args:       Location, Count, Transpose, Value
%% Returns:    ok
%% C-API func: void glUniformMatrix4x3fv(GLint location, GLsizei count, GLboolean transpose, const GLfloat* value)

uniformMatrix4x3fv(Location, Count, Transpose, Value)
 -> cast
    ( ?glUniformMatrix4x3fv
    , <<Location:?GLint
      , Count:?GLsizei
      , Transpose:?GLboolean
      , Value:?_PTR
      >>
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

%% Func:       getBooleaniV
%% Args:       Target, Index
%% Returns:    [ Data ]
%% C-API func: void glGetBooleani_v(GLenum target, GLuint index, GLboolean* data)

getBooleaniV(Target, Index)
 -> case
      call
      ( ?glGetBooleani_v
      , <<Target:?GLenum
        , Index:?GLuint
        >>
      )
    of
      <<Data:?GLboolean
      >>
        -> [ Data ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getIntegeriV
%% Args:       Target, Index
%% Returns:    [ Data ]
%% C-API func: void glGetIntegeri_v(GLenum target, GLuint index, GLint* data)

getIntegeriV(Target, Index)
 -> case
      call
      ( ?glGetIntegeri_v
      , <<Target:?GLenum
        , Index:?GLuint
        >>
      )
    of
      <<Data:?GLint
      >>
        -> [ Data ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
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
%% Returns:    Exdl
%% C-API func: GLboolean glIsEnabledi(GLenum target, GLuint index)

isEnabledi(Target, Index)
 -> case
      call
      ( ?glIsEnabledi
      , <<Target:?GLenum
        , Index:?GLuint
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
%% Args:       none
%% Returns:    ok
%% C-API func: void glEndTransformFeedback(void)

endTransformFeedback()
 -> cast
    ( ?glEndTransformFeedback
    , [
      ]
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
%% C-API func: void glTransformFeedbackVaryings(GLuint program, GLsizei count, const GLchar* const *varyings, GLenum bufferMode)

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
%% Args:       Program, Index, BufSize
%% Returns:    { Length, Size, Type, Name }
%% C-API func: void glGetTransformFeedbackVarying(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name)

getTransformFeedbackVarying(Program, Index, BufSize)
 -> case
      call
      ( ?glGetTransformFeedbackVarying
      , <<Program:?GLuint
        , Index:?GLuint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Size:?GLsizei
      , Type:?GLenum
      , Name:?_PTR
      >>
        -> { Length, Size, Type, Name }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
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
%% Args:       none
%% Returns:    ok
%% C-API func: void glEndConditionalRender(void)

endConditionalRender()
 -> cast
    ( ?glEndConditionalRender
    , [
      ]
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
%% Returns:    [ Params ]
%% C-API func: void glGetVertexAttribIiv(GLuint index, GLenum pname, GLint* params)

getVertexAttribIiv(Index, Pname)
 -> case
      call
      ( ?glGetVertexAttribIiv
      , <<Index:?GLuint
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

%% Func:       getVertexAttribIuiv
%% Args:       Index, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetVertexAttribIuiv(GLuint index, GLenum pname, GLuint* params)

getVertexAttribIuiv(Index, Pname)
 -> case
      call
      ( ?glGetVertexAttribIuiv
      , <<Index:?GLuint
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
%% Args:       Program, Location
%% Returns:    [ Params ]
%% C-API func: void glGetUniformuiv(GLuint program, GLint location, GLuint* params)

getUniformuiv(Program, Location)
 -> case
      call
      ( ?glGetUniformuiv
      , <<Program:?GLuint
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
%% Returns:    Exdl
%% C-API func: GLint glGetFragDataLocation(GLuint program, const GLchar* name)

getFragDataLocation(Program, Name)
 -> case
      call
      ( ?glGetFragDataLocation
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
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glTexParameterIiv(GLenum target, GLenum pname, const GLint* params)

texParameterIiv(Target, Pname, Params)
 -> cast
    ( ?glTexParameterIiv
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       texParameterIuiv
%% Args:       Target, Pname, Params
%% Returns:    ok
%% C-API func: void glTexParameterIuiv(GLenum target, GLenum pname, const GLuint* params)

texParameterIuiv(Target, Pname, Params)
 -> cast
    ( ?glTexParameterIuiv
    , <<Target:?GLenum
      , Pname:?GLenum
      , Params:?_PTR
      >>
    )
.

%% Func:       getTexParameterIiv
%% Args:       Target, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexParameterIiv(GLenum target, GLenum pname, GLint* params)

getTexParameterIiv(Target, Pname)
 -> case
      call
      ( ?glGetTexParameterIiv
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

%% Func:       getTexParameterIuiv
%% Args:       Target, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetTexParameterIuiv(GLenum target, GLenum pname, GLuint* params)

getTexParameterIuiv(Target, Pname)
 -> case
      call
      ( ?glGetTexParameterIuiv
      , <<Target:?GLenum
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
%% Args:       Buffer, Drawbuffer, Value
%% Returns:    ok
%% C-API func: void glClearBufferfv(GLenum buffer, GLint drawbuffer, const GLfloat* value)

clearBufferfv(Buffer, Drawbuffer, Value)
 -> cast
    ( ?glClearBufferfv
    , <<Buffer:?GLenum
      , Drawbuffer:?GLint
      , Value:?_PTR
      >>
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
%% Returns:    Exdl
%% C-API func: const GLubyte* glGetStringi(GLenum name, GLuint index)

getStringi(Name, Index)
 -> case
      call
      ( ?glGetStringi
      , <<Name:?GLenum
        , Index:?GLuint
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

%% GL_VERSION_3_1

%% Func:       drawArraysInstanced
%% Args:       Mode, First, Count, Instancecount
%% Returns:    ok
%% C-API func: void glDrawArraysInstanced(GLenum mode, GLint first, GLsizei count, GLsizei instancecount)

drawArraysInstanced(Mode, First, Count, Instancecount)
 -> cast
    ( ?glDrawArraysInstanced
    , <<Mode:?GLenum
      , First:?GLint
      , Count:?GLsizei
      , Instancecount:?GLsizei
      >>
    )
.

%% Func:       drawElementsInstanced
%% Args:       Mode, Count, Type, Indices, Instancecount
%% Returns:    ok
%% C-API func: void glDrawElementsInstanced(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei instancecount)

drawElementsInstanced(Mode, Count, Type, Indices, Instancecount)
 -> cast
    ( ?glDrawElementsInstanced
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Instancecount:?GLsizei
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
%% C-API func: void glMinSampleShading(GLfloat value)

minSampleShading(Value)
 -> cast
    ( ?glMinSampleShading
    , <<Value:?GLfloat
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

%% GL_VERSION_4_2

%% GL_VERSION_4_3

%% GL_ARB_depth_buffer_float

%% GL_ARB_framebuffer_object

%% Func:       isRenderbuffer
%% Args:       Renderbuffer
%% Returns:    Exdl
%% C-API func: GLboolean glIsRenderbuffer(GLuint renderbuffer)

isRenderbuffer(Renderbuffer)
 -> case
      call
      ( ?glIsRenderbuffer
      , <<Renderbuffer:?GLuint
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
%% Args:       N
%% Returns:    { Renderbuffers }
%% C-API func: void glGenRenderbuffers(GLsizei n, GLuint* renderbuffers)

genRenderbuffers(N)
 -> case
      call
      ( ?glGenRenderbuffers
      , <<N:?GLsizei
        >>
      )
    of
      <<Renderbuffers:?GLuint
      >>
        -> { Renderbuffers }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
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
%% Returns:    [ Params ]
%% C-API func: void glGetRenderbufferParameteriv(GLenum target, GLenum pname, GLint* params)

getRenderbufferParameteriv(Target, Pname)
 -> case
      call
      ( ?glGetRenderbufferParameteriv
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

%% Func:       isFramebuffer
%% Args:       Framebuffer
%% Returns:    Exdl
%% C-API func: GLboolean glIsFramebuffer(GLuint framebuffer)

isFramebuffer(Framebuffer)
 -> case
      call
      ( ?glIsFramebuffer
      , <<Framebuffer:?GLuint
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
%% Args:       N
%% Returns:    { Framebuffers }
%% C-API func: void glGenFramebuffers(GLsizei n, GLuint* framebuffers)

genFramebuffers(N)
 -> case
      call
      ( ?glGenFramebuffers
      , <<N:?GLsizei
        >>
      )
    of
      <<Framebuffers:?GLuint
      >>
        -> { Framebuffers }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       checkFramebufferStatus
%% Args:       Target
%% Returns:    Exdl
%% C-API func: GLenum glCheckFramebufferStatus(GLenum target)

checkFramebufferStatus(Target)
 -> case
      call
      ( ?glCheckFramebufferStatus
      , <<Target:?GLenum
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
%% Returns:    [ Params ]
%% C-API func: void glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname, GLint* params)

getFramebufferAttachmentParameteriv(Target, Attachment, Pname)
 -> case
      call
      ( ?glGetFramebufferAttachmentParameteriv
      , <<Target:?GLenum
        , Attachment:?GLenum
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

%% GL_ARB_map_buffer_range

%% Func:       mapBufferRange
%% Args:       Target, Offset, Length, Access
%% Returns:    Exdl
%% C-API func: GLvoid* glMapBufferRange(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access)

mapBufferRange(Target, Offset, Length, Access)
 -> case
      call
      ( ?glMapBufferRange
      , <<Target:?GLenum
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
%% Args:       N
%% Returns:    { Arrays }
%% C-API func: void glGenVertexArrays(GLsizei n, GLuint* arrays)

genVertexArrays(N)
 -> case
      call
      ( ?glGenVertexArrays
      , <<N:?GLsizei
        >>
      )
    of
      <<Arrays:?GLuint
      >>
        -> { Arrays }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       isVertexArray
%% Args:       Array
%% Returns:    Exdl
%% C-API func: GLboolean glIsVertexArray(GLuint array)

isVertexArray(Array)
 -> case
      call
      ( ?glIsVertexArray
      , <<Array:?GLuint
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

%% GL_ARB_uniform_buffer_object

%% Func:       getUniformIndices
%% Args:       Program, UniformCount, UniformNames
%% Returns:    { UniformIndices }
%% C-API func: void glGetUniformIndices(GLuint program, GLsizei uniformCount, const GLchar* const *uniformNames, GLuint* uniformIndices)

getUniformIndices(Program, UniformCount, UniformNames)
 -> case
      call
      ( ?glGetUniformIndices
      , <<Program:?GLuint
        , UniformCount:?GLsizei
        , UniformNames:?_PTR
        >>
      )
    of
      <<UniformIndices:?GLuint
      >>
        -> { UniformIndices }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getActiveUniformsiv
%% Args:       Program, UniformCount, UniformIndices, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetActiveUniformsiv(GLuint program, GLsizei uniformCount, const GLuint* uniformIndices, GLenum pname, GLint* params)

getActiveUniformsiv(Program, UniformCount, UniformIndices, Pname)
 -> case
      call
      ( ?glGetActiveUniformsiv
      , <<Program:?GLuint
        , UniformCount:?GLsizei
        , UniformIndices:?_PTR
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

%% Func:       getActiveUniformName
%% Args:       Program, UniformIndex, BufSize
%% Returns:    { Length, UniformName }
%% C-API func: void glGetActiveUniformName(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName)

getActiveUniformName(Program, UniformIndex, BufSize)
 -> case
      call
      ( ?glGetActiveUniformName
      , <<Program:?GLuint
        , UniformIndex:?GLuint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , UniformName:?_PTR
      >>
        -> { Length, UniformName }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getUniformBlockIndex
%% Args:       Program, UniformBlockName
%% Returns:    Exdl
%% C-API func: GLuint glGetUniformBlockIndex(GLuint program, const GLchar* uniformBlockName)

getUniformBlockIndex(Program, UniformBlockName)
 -> case
      call
      ( ?glGetUniformBlockIndex
      , <<Program:?GLuint
        , UniformBlockName:?_PTR
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

%% Func:       getActiveUniformBlockiv
%% Args:       Program, UniformBlockIndex, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetActiveUniformBlockiv(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params)

getActiveUniformBlockiv(Program, UniformBlockIndex, Pname)
 -> case
      call
      ( ?glGetActiveUniformBlockiv
      , <<Program:?GLuint
        , UniformBlockIndex:?GLuint
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

%% Func:       getActiveUniformBlockName
%% Args:       Program, UniformBlockIndex, BufSize
%% Returns:    { Length, UniformBlockName }
%% C-API func: void glGetActiveUniformBlockName(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName)

getActiveUniformBlockName(Program, UniformBlockIndex, BufSize)
 -> case
      call
      ( ?glGetActiveUniformBlockName
      , <<Program:?GLuint
        , UniformBlockIndex:?GLuint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , UniformBlockName:?_PTR
      >>
        -> { Length, UniformBlockName }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
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
%% Args:       Mode, Count, Type, Indices, Instancecount, Basevertex
%% Returns:    ok
%% C-API func: void glDrawElementsInstancedBaseVertex(GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei instancecount, GLint basevertex)

drawElementsInstancedBaseVertex(Mode, Count, Type, Indices, Instancecount, Basevertex)
 -> cast
    ( ?glDrawElementsInstancedBaseVertex
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Instancecount:?GLsizei
      , Basevertex:?GLint
      >>
    )
.

%% Func:       multiDrawElementsBaseVertex
%% Args:       Mode, Count, Type, Indices, Drawcount, Basevertex
%% Returns:    ok
%% C-API func: void glMultiDrawElementsBaseVertex(GLenum mode, const GLsizei* count, GLenum type, const GLvoid* const *indices, GLsizei drawcount, const GLint* basevertex)

multiDrawElementsBaseVertex(Mode, Count, Type, Indices, Drawcount, Basevertex)
 -> cast
    ( ?glMultiDrawElementsBaseVertex
    , <<Mode:?GLenum
      , Count:?_PTR
      , Type:?GLenum
      , Indices:?_PTR
      , Drawcount:?GLsizei
      , Basevertex:?_PTR
      >>
    )
.

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
%% C-API func: void glMinSampleShadingARB(GLfloat value)

minSampleShadingARB(Value)
 -> cast
    ( ?glMinSampleShadingARB
    , <<Value:?GLfloat
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
%% C-API func: void glDepthRangef(GLfloat n, GLfloat f)

depthRangef(N, F)
 -> cast
    ( ?glDepthRangef
    , <<N:?GLfloat
      , F:?GLfloat
      >>
    )
.

%% Func:       clearDepthf
%% Args:       D
%% Returns:    ok
%% C-API func: void glClearDepthf(GLfloat d)

clearDepthf(D)
 -> cast
    ( ?glClearDepthf
    , <<D:?GLfloat
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
%% C-API func: void glDepthRangeArrayv(GLuint first, GLsizei count, const GLdouble* v)

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
%% C-API func: void glDepthRangeIndexed(GLuint index, GLdouble n, GLdouble f)

depthRangeIndexed(Index, N, F)
 -> cast
    ( ?glDepthRangeIndexed
    , <<Index:?GLuint
      , N:?GLdouble
      , F:?GLdouble
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
%% Args:       Mode, First, Count, Instancecount, Baseinstance
%% Returns:    ok
%% C-API func: void glDrawArraysInstancedBaseInstance(GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance)

drawArraysInstancedBaseInstance(Mode, First, Count, Instancecount, Baseinstance)
 -> cast
    ( ?glDrawArraysInstancedBaseInstance
    , <<Mode:?GLenum
      , First:?GLint
      , Count:?GLsizei
      , Instancecount:?GLsizei
      , Baseinstance:?GLuint
      >>
    )
.

%% Func:       drawElementsInstancedBaseInstance
%% Args:       Mode, Count, Type, Indices, Instancecount, Baseinstance
%% Returns:    ok
%% C-API func: void glDrawElementsInstancedBaseInstance(GLenum mode, GLsizei count, GLenum type, const void* indices, GLsizei instancecount, GLuint baseinstance)

drawElementsInstancedBaseInstance(Mode, Count, Type, Indices, Instancecount, Baseinstance)
 -> cast
    ( ?glDrawElementsInstancedBaseInstance
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Instancecount:?GLsizei
      , Baseinstance:?GLuint
      >>
    )
.

%% Func:       drawElementsInstancedBaseVertexBaseInstance
%% Args:       Mode, Count, Type, Indices, Instancecount, Basevertex, Baseinstance
%% Returns:    ok
%% C-API func: void glDrawElementsInstancedBaseVertexBaseInstance(GLenum mode, GLsizei count, GLenum type, const void* indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance)

drawElementsInstancedBaseVertexBaseInstance(Mode, Count, Type, Indices, Instancecount, Basevertex, Baseinstance)
 -> cast
    ( ?glDrawElementsInstancedBaseVertexBaseInstance
    , <<Mode:?GLenum
      , Count:?GLsizei
      , Type:?GLenum
      , Indices:?_PTR
      , Instancecount:?GLsizei
      , Basevertex:?GLint
      , Baseinstance:?GLuint
      >>
    )
.

%% GL_ARB_shading_language_420pack

%% GL_ARB_transform_feedback_instanced

%% Func:       drawTransformFeedbackInstanced
%% Args:       Mode, Id, Instancecount
%% Returns:    ok
%% C-API func: void glDrawTransformFeedbackInstanced(GLenum mode, GLuint id, GLsizei instancecount)

drawTransformFeedbackInstanced(Mode, Id, Instancecount)
 -> cast
    ( ?glDrawTransformFeedbackInstanced
    , <<Mode:?GLenum
      , Id:?GLuint
      , Instancecount:?GLsizei
      >>
    )
.

%% Func:       drawTransformFeedbackStreamInstanced
%% Args:       Mode, Id, Stream, Instancecount
%% Returns:    ok
%% C-API func: void glDrawTransformFeedbackStreamInstanced(GLenum mode, GLuint id, GLuint stream, GLsizei instancecount)

drawTransformFeedbackStreamInstanced(Mode, Id, Stream, Instancecount)
 -> cast
    ( ?glDrawTransformFeedbackStreamInstanced
    , <<Mode:?GLenum
      , Id:?GLuint
      , Stream:?GLuint
      , Instancecount:?GLsizei
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

%% GL_KHR_texture_compression_astc_ldr

%% GL_KHR_debug

%% Func:       debugMessageControl
%% Args:       Source, Type, Severity, Count, Ids, Enabled
%% Returns:    ok
%% C-API func: void glDebugMessageControl(GLenum source, GLenum type, GLenum severity, GLsizei count, const GLuint* ids, GLboolean enabled)

debugMessageControl(Source, Type, Severity, Count, Ids, Enabled)
 -> cast
    ( ?glDebugMessageControl
    , <<Source:?GLenum
      , Type:?GLenum
      , Severity:?GLenum
      , Count:?GLsizei
      , Ids:?_PTR
      , Enabled:?GLboolean
      >>
    )
.

%% Func:       debugMessageInsert
%% Args:       Source, Type, Id, Severity, Length, Buf
%% Returns:    ok
%% C-API func: void glDebugMessageInsert(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar* buf)

debugMessageInsert(Source, Type, Id, Severity, Length, Buf)
 -> cast
    ( ?glDebugMessageInsert
    , <<Source:?GLenum
      , Type:?GLenum
      , Id:?GLuint
      , Severity:?GLenum
      , Length:?GLsizei
      , Buf:?_PTR
      >>
    )
.

%% Func:       debugMessageCallback
%% Args:       Callback, UserParam
%% Returns:    ok
%% C-API func: void glDebugMessageCallback(GLDEBUGPROC callback, const void* userParam)

debugMessageCallback(Callback, UserParam)
 -> cast
    ( ?glDebugMessageCallback
    , <<Callback:?GLDEBUGPROC
      , UserParam:?_PTR
      >>
    )
.

%% Func:       getDebugMessageLog
%% Args:       Count, Bufsize, Sources, Types, Ids, Severities, Lengths, MessageLog
%% Returns:    Exdl
%% C-API func: GLuint glGetDebugMessageLog(GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog)

getDebugMessageLog(Count, Bufsize, Sources, Types, Ids, Severities, Lengths, MessageLog)
 -> case
      call
      ( ?glGetDebugMessageLog
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

%% Func:       pushDebugGroup
%% Args:       Source, Id, Length, Message
%% Returns:    ok
%% C-API func: void glPushDebugGroup(GLenum source, GLuint id, GLsizei length, const GLchar* message)

pushDebugGroup(Source, Id, Length, Message)
 -> cast
    ( ?glPushDebugGroup
    , <<Source:?GLenum
      , Id:?GLuint
      , Length:?GLsizei
      , Message:?_PTR
      >>
    )
.

%% Func:       popDebugGroup
%% Args:       none
%% Returns:    ok
%% C-API func: void glPopDebugGroup(void)

popDebugGroup()
 -> cast
    ( ?glPopDebugGroup
    , [
      ]
    )
.

%% Func:       objectLabel
%% Args:       Identifier, Name, Length, Label
%% Returns:    ok
%% C-API func: void glObjectLabel(GLenum identifier, GLuint name, GLsizei length, const GLchar* label)

objectLabel(Identifier, Name, Length, Label)
 -> cast
    ( ?glObjectLabel
    , <<Identifier:?GLenum
      , Name:?GLuint
      , Length:?GLsizei
      , Label:?_PTR
      >>
    )
.

%% Func:       getObjectLabel
%% Args:       Identifier, Name, BufSize
%% Returns:    { Length, Label }
%% C-API func: void glGetObjectLabel(GLenum identifier, GLuint name, GLsizei bufSize, GLsizei* length, GLchar* label)

getObjectLabel(Identifier, Name, BufSize)
 -> case
      call
      ( ?glGetObjectLabel
      , <<Identifier:?GLenum
        , Name:?GLuint
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Label:?_PTR
      >>
        -> { Length, Label }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       objectPtrLabel
%% Args:       Ptr, Length, Label
%% Returns:    ok
%% C-API func: void glObjectPtrLabel(const void* ptr, GLsizei length, const GLchar* label)

objectPtrLabel(Ptr, Length, Label)
 -> cast
    ( ?glObjectPtrLabel
    , <<Ptr:?_PTR
      , Length:?GLsizei
      , Label:?_PTR
      >>
    )
.

%% Func:       getObjectPtrLabel
%% Args:       Ptr, BufSize
%% Returns:    { Length, Label }
%% C-API func: void glGetObjectPtrLabel(const void* ptr, GLsizei bufSize, GLsizei* length, GLchar* label)

getObjectPtrLabel(Ptr, BufSize)
 -> case
      call
      ( ?glGetObjectPtrLabel
      , <<Ptr:?_PTR
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Label:?_PTR
      >>
        -> { Length, Label }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% GL_ARB_arrays_of_arrays

%% GL_ARB_clear_buffer_object

%% Func:       clearBufferData
%% Args:       Target, Internalformat, Format, Type, Data
%% Returns:    ok
%% C-API func: void glClearBufferData(GLenum target, GLenum internalformat, GLenum format, GLenum type, const void* data)

clearBufferData(Target, Internalformat, Format, Type, Data)
 -> cast
    ( ?glClearBufferData
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Format:?GLenum
      , Type:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       clearBufferSubData
%% Args:       Target, Internalformat, Offset, Size, Format, Type, Data
%% Returns:    ok
%% C-API func: void glClearBufferSubData(GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const void* data)

clearBufferSubData(Target, Internalformat, Offset, Size, Format, Type, Data)
 -> cast
    ( ?glClearBufferSubData
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      , Format:?GLenum
      , Type:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       clearNamedBufferDataEXT
%% Args:       Buffer, Internalformat, Format, Type, Data
%% Returns:    ok
%% C-API func: void glClearNamedBufferDataEXT(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const void* data)

clearNamedBufferDataEXT(Buffer, Internalformat, Format, Type, Data)
 -> cast
    ( ?glClearNamedBufferDataEXT
    , <<Buffer:?GLuint
      , Internalformat:?GLenum
      , Format:?GLenum
      , Type:?GLenum
      , Data:?_PTR
      >>
    )
.

%% Func:       clearNamedBufferSubDataEXT
%% Args:       Buffer, Internalformat, Format, Type, Offset, Size, Data
%% Returns:    ok
%% C-API func: void glClearNamedBufferSubDataEXT(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, GLsizeiptr offset, GLsizeiptr size, const void* data)

clearNamedBufferSubDataEXT(Buffer, Internalformat, Format, Type, Offset, Size, Data)
 -> cast
    ( ?glClearNamedBufferSubDataEXT
    , <<Buffer:?GLuint
      , Internalformat:?GLenum
      , Format:?GLenum
      , Type:?GLenum
      , Offset:?GLsizeiptr
      , Size:?GLsizeiptr
      , Data:?_PTR
      >>
    )
.

%% GL_ARB_compute_shader

%% Func:       dispatchCompute
%% Args:       NumGroupsX, NumGroupsY, NumGroupsZ
%% Returns:    ok
%% C-API func: void glDispatchCompute(GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z)

dispatchCompute(NumGroupsX, NumGroupsY, NumGroupsZ)
 -> cast
    ( ?glDispatchCompute
    , <<NumGroupsX:?GLuint
      , NumGroupsY:?GLuint
      , NumGroupsZ:?GLuint
      >>
    )
.

%% Func:       dispatchComputeIndirect
%% Args:       Indirect
%% Returns:    ok
%% C-API func: void glDispatchComputeIndirect(GLintptr indirect)

dispatchComputeIndirect(Indirect)
 -> cast
    ( ?glDispatchComputeIndirect
    , <<Indirect:?GLintptr
      >>
    )
.

%% GL_ARB_copy_image

%% Func:       copyImageSubData
%% Args:       SrcName, SrcTarget, SrcLevel, SrcX, SrcY, SrcZ, DstName, DstTarget, DstLevel, DstX, DstY, DstZ, SrcWidth, SrcHeight, SrcDepth
%% Returns:    ok
%% C-API func: void glCopyImageSubData(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth)

copyImageSubData(SrcName, SrcTarget, SrcLevel, SrcX, SrcY, SrcZ, DstName, DstTarget, DstLevel, DstX, DstY, DstZ, SrcWidth, SrcHeight, SrcDepth)
 -> cast
    ( ?glCopyImageSubData
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
      , SrcWidth:?GLsizei
      , SrcHeight:?GLsizei
      , SrcDepth:?GLsizei
      >>
    )
.

%% GL_ARB_texture_view

%% Func:       textureView
%% Args:       Texture, Target, Origtexture, Internalformat, Minlevel, Numlevels, Minlayer, Numlayers
%% Returns:    ok
%% C-API func: void glTextureView(GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers)

textureView(Texture, Target, Origtexture, Internalformat, Minlevel, Numlevels, Minlayer, Numlayers)
 -> cast
    ( ?glTextureView
    , <<Texture:?GLuint
      , Target:?GLenum
      , Origtexture:?GLuint
      , Internalformat:?GLenum
      , Minlevel:?GLuint
      , Numlevels:?GLuint
      , Minlayer:?GLuint
      , Numlayers:?GLuint
      >>
    )
.

%% GL_ARB_vertex_attrib_binding

%% Func:       bindVertexBuffer
%% Args:       Bindingindex, Buffer, Offset, Stride
%% Returns:    ok
%% C-API func: void glBindVertexBuffer(GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride)

bindVertexBuffer(Bindingindex, Buffer, Offset, Stride)
 -> cast
    ( ?glBindVertexBuffer
    , <<Bindingindex:?GLuint
      , Buffer:?GLuint
      , Offset:?GLintptr
      , Stride:?GLsizei
      >>
    )
.

%% Func:       vertexAttribFormat
%% Args:       Attribindex, Size, Type, Normalized, Relativeoffset
%% Returns:    ok
%% C-API func: void glVertexAttribFormat(GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset)

vertexAttribFormat(Attribindex, Size, Type, Normalized, Relativeoffset)
 -> cast
    ( ?glVertexAttribFormat
    , <<Attribindex:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Relativeoffset:?GLuint
      >>
    )
.

%% Func:       vertexAttribIFormat
%% Args:       Attribindex, Size, Type, Relativeoffset
%% Returns:    ok
%% C-API func: void glVertexAttribIFormat(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

vertexAttribIFormat(Attribindex, Size, Type, Relativeoffset)
 -> cast
    ( ?glVertexAttribIFormat
    , <<Attribindex:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Relativeoffset:?GLuint
      >>
    )
.

%% Func:       vertexAttribLFormat
%% Args:       Attribindex, Size, Type, Relativeoffset
%% Returns:    ok
%% C-API func: void glVertexAttribLFormat(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

vertexAttribLFormat(Attribindex, Size, Type, Relativeoffset)
 -> cast
    ( ?glVertexAttribLFormat
    , <<Attribindex:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Relativeoffset:?GLuint
      >>
    )
.

%% Func:       vertexAttribBinding
%% Args:       Attribindex, Bindingindex
%% Returns:    ok
%% C-API func: void glVertexAttribBinding(GLuint attribindex, GLuint bindingindex)

vertexAttribBinding(Attribindex, Bindingindex)
 -> cast
    ( ?glVertexAttribBinding
    , <<Attribindex:?GLuint
      , Bindingindex:?GLuint
      >>
    )
.

%% Func:       vertexBindingDivisor
%% Args:       Bindingindex, Divisor
%% Returns:    ok
%% C-API func: void glVertexBindingDivisor(GLuint bindingindex, GLuint divisor)

vertexBindingDivisor(Bindingindex, Divisor)
 -> cast
    ( ?glVertexBindingDivisor
    , <<Bindingindex:?GLuint
      , Divisor:?GLuint
      >>
    )
.

%% Func:       vertexArrayBindVertexBufferEXT
%% Args:       Vaobj, Bindingindex, Buffer, Offset, Stride
%% Returns:    ok
%% C-API func: void glVertexArrayBindVertexBufferEXT(GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride)

vertexArrayBindVertexBufferEXT(Vaobj, Bindingindex, Buffer, Offset, Stride)
 -> cast
    ( ?glVertexArrayBindVertexBufferEXT
    , <<Vaobj:?GLuint
      , Bindingindex:?GLuint
      , Buffer:?GLuint
      , Offset:?GLintptr
      , Stride:?GLsizei
      >>
    )
.

%% Func:       vertexArrayVertexAttribFormatEXT
%% Args:       Vaobj, Attribindex, Size, Type, Normalized, Relativeoffset
%% Returns:    ok
%% C-API func: void glVertexArrayVertexAttribFormatEXT(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset)

vertexArrayVertexAttribFormatEXT(Vaobj, Attribindex, Size, Type, Normalized, Relativeoffset)
 -> cast
    ( ?glVertexArrayVertexAttribFormatEXT
    , <<Vaobj:?GLuint
      , Attribindex:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Normalized:?GLboolean
      , Relativeoffset:?GLuint
      >>
    )
.

%% Func:       vertexArrayVertexAttribIFormatEXT
%% Args:       Vaobj, Attribindex, Size, Type, Relativeoffset
%% Returns:    ok
%% C-API func: void glVertexArrayVertexAttribIFormatEXT(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

vertexArrayVertexAttribIFormatEXT(Vaobj, Attribindex, Size, Type, Relativeoffset)
 -> cast
    ( ?glVertexArrayVertexAttribIFormatEXT
    , <<Vaobj:?GLuint
      , Attribindex:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Relativeoffset:?GLuint
      >>
    )
.

%% Func:       vertexArrayVertexAttribLFormatEXT
%% Args:       Vaobj, Attribindex, Size, Type, Relativeoffset
%% Returns:    ok
%% C-API func: void glVertexArrayVertexAttribLFormatEXT(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

vertexArrayVertexAttribLFormatEXT(Vaobj, Attribindex, Size, Type, Relativeoffset)
 -> cast
    ( ?glVertexArrayVertexAttribLFormatEXT
    , <<Vaobj:?GLuint
      , Attribindex:?GLuint
      , Size:?GLint
      , Type:?GLenum
      , Relativeoffset:?GLuint
      >>
    )
.

%% Func:       vertexArrayVertexAttribBindingEXT
%% Args:       Vaobj, Attribindex, Bindingindex
%% Returns:    ok
%% C-API func: void glVertexArrayVertexAttribBindingEXT(GLuint vaobj, GLuint attribindex, GLuint bindingindex)

vertexArrayVertexAttribBindingEXT(Vaobj, Attribindex, Bindingindex)
 -> cast
    ( ?glVertexArrayVertexAttribBindingEXT
    , <<Vaobj:?GLuint
      , Attribindex:?GLuint
      , Bindingindex:?GLuint
      >>
    )
.

%% Func:       vertexArrayVertexBindingDivisorEXT
%% Args:       Vaobj, Bindingindex, Divisor
%% Returns:    ok
%% C-API func: void glVertexArrayVertexBindingDivisorEXT(GLuint vaobj, GLuint bindingindex, GLuint divisor)

vertexArrayVertexBindingDivisorEXT(Vaobj, Bindingindex, Divisor)
 -> cast
    ( ?glVertexArrayVertexBindingDivisorEXT
    , <<Vaobj:?GLuint
      , Bindingindex:?GLuint
      , Divisor:?GLuint
      >>
    )
.

%% GL_ARB_robustness_isolation

%% GL_ARB_ES3_compatibility

%% GL_ARB_explicit_uniform_location

%% GL_ARB_fragment_layer_viewport

%% GL_ARB_framebuffer_no_attachments

%% Func:       framebufferParameteri
%% Args:       Target, Pname, Param
%% Returns:    ok
%% C-API func: void glFramebufferParameteri(GLenum target, GLenum pname, GLint param)

framebufferParameteri(Target, Pname, Param)
 -> cast
    ( ?glFramebufferParameteri
    , <<Target:?GLenum
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       getFramebufferParameteriv
%% Args:       Target, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetFramebufferParameteriv(GLenum target, GLenum pname, GLint* params)

getFramebufferParameteriv(Target, Pname)
 -> case
      call
      ( ?glGetFramebufferParameteriv
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

%% Func:       namedFramebufferParameteriEXT
%% Args:       Framebuffer, Pname, Param
%% Returns:    ok
%% C-API func: void glNamedFramebufferParameteriEXT(GLuint framebuffer, GLenum pname, GLint param)

namedFramebufferParameteriEXT(Framebuffer, Pname, Param)
 -> cast
    ( ?glNamedFramebufferParameteriEXT
    , <<Framebuffer:?GLuint
      , Pname:?GLenum
      , Param:?GLint
      >>
    )
.

%% Func:       getNamedFramebufferParameterivEXT
%% Args:       Framebuffer, Pname
%% Returns:    { Params }
%% C-API func: void glGetNamedFramebufferParameterivEXT(GLuint framebuffer, GLenum pname, GLint* params)

getNamedFramebufferParameterivEXT(Framebuffer, Pname)
 -> case
      call
      ( ?glGetNamedFramebufferParameterivEXT
      , <<Framebuffer:?GLuint
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

%% GL_ARB_internalformat_query2

%% Func:       getInternalformati64v
%% Args:       Target, Internalformat, Pname, BufSize
%% Returns:    [ Params ]
%% C-API func: void glGetInternalformati64v(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64* params)

getInternalformati64v(Target, Internalformat, Pname, BufSize)
 -> case
      call
      ( ?glGetInternalformati64v
      , <<Target:?GLenum
        , Internalformat:?GLenum
        , Pname:?GLenum
        , BufSize:?GLsizei
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

%% GL_ARB_invalidate_subdata

%% Func:       invalidateTexSubImage
%% Args:       Texture, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth
%% Returns:    ok
%% C-API func: void glInvalidateTexSubImage(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth)

invalidateTexSubImage(Texture, Level, Xoffset, Yoffset, Zoffset, Width, Height, Depth)
 -> cast
    ( ?glInvalidateTexSubImage
    , <<Texture:?GLuint
      , Level:?GLint
      , Xoffset:?GLint
      , Yoffset:?GLint
      , Zoffset:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      >>
    )
.

%% Func:       invalidateTexImage
%% Args:       Texture, Level
%% Returns:    ok
%% C-API func: void glInvalidateTexImage(GLuint texture, GLint level)

invalidateTexImage(Texture, Level)
 -> cast
    ( ?glInvalidateTexImage
    , <<Texture:?GLuint
      , Level:?GLint
      >>
    )
.

%% Func:       invalidateBufferSubData
%% Args:       Buffer, Offset, Length
%% Returns:    ok
%% C-API func: void glInvalidateBufferSubData(GLuint buffer, GLintptr offset, GLsizeiptr length)

invalidateBufferSubData(Buffer, Offset, Length)
 -> cast
    ( ?glInvalidateBufferSubData
    , <<Buffer:?GLuint
      , Offset:?GLintptr
      , Length:?GLsizeiptr
      >>
    )
.

%% Func:       invalidateBufferData
%% Args:       Buffer
%% Returns:    ok
%% C-API func: void glInvalidateBufferData(GLuint buffer)

invalidateBufferData(Buffer)
 -> cast
    ( ?glInvalidateBufferData
    , <<Buffer:?GLuint
      >>
    )
.

%% Func:       invalidateFramebuffer
%% Args:       Target, NumAttachments, Attachments
%% Returns:    ok
%% C-API func: void glInvalidateFramebuffer(GLenum target, GLsizei numAttachments, const GLenum* attachments)

invalidateFramebuffer(Target, NumAttachments, Attachments)
 -> cast
    ( ?glInvalidateFramebuffer
    , <<Target:?GLenum
      , NumAttachments:?GLsizei
      , Attachments:?_PTR
      >>
    )
.

%% Func:       invalidateSubFramebuffer
%% Args:       Target, NumAttachments, Attachments, X, Y, Width, Height
%% Returns:    ok
%% C-API func: void glInvalidateSubFramebuffer(GLenum target, GLsizei numAttachments, const GLenum* attachments, GLint x, GLint y, GLsizei width, GLsizei height)

invalidateSubFramebuffer(Target, NumAttachments, Attachments, X, Y, Width, Height)
 -> cast
    ( ?glInvalidateSubFramebuffer
    , <<Target:?GLenum
      , NumAttachments:?GLsizei
      , Attachments:?_PTR
      , X:?GLint
      , Y:?GLint
      , Width:?GLsizei
      , Height:?GLsizei
      >>
    )
.

%% GL_ARB_multi_draw_indirect

%% Func:       multiDrawArraysIndirect
%% Args:       Mode, Indirect, Drawcount, Stride
%% Returns:    ok
%% C-API func: void glMultiDrawArraysIndirect(GLenum mode, const void* indirect, GLsizei drawcount, GLsizei stride)

multiDrawArraysIndirect(Mode, Indirect, Drawcount, Stride)
 -> cast
    ( ?glMultiDrawArraysIndirect
    , <<Mode:?GLenum
      , Indirect:?_PTR
      , Drawcount:?GLsizei
      , Stride:?GLsizei
      >>
    )
.

%% Func:       multiDrawElementsIndirect
%% Args:       Mode, Type, Indirect, Drawcount, Stride
%% Returns:    ok
%% C-API func: void glMultiDrawElementsIndirect(GLenum mode, GLenum type, const void* indirect, GLsizei drawcount, GLsizei stride)

multiDrawElementsIndirect(Mode, Type, Indirect, Drawcount, Stride)
 -> cast
    ( ?glMultiDrawElementsIndirect
    , <<Mode:?GLenum
      , Type:?GLenum
      , Indirect:?_PTR
      , Drawcount:?GLsizei
      , Stride:?GLsizei
      >>
    )
.

%% GL_ARB_program_interface_query

%% Func:       getProgramInterfaceiv
%% Args:       Program, ProgramInterface, Pname
%% Returns:    [ Params ]
%% C-API func: void glGetProgramInterfaceiv(GLuint program, GLenum programInterface, GLenum pname, GLint* params)

getProgramInterfaceiv(Program, ProgramInterface, Pname)
 -> case
      call
      ( ?glGetProgramInterfaceiv
      , <<Program:?GLuint
        , ProgramInterface:?GLenum
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

%% Func:       getProgramResourceIndex
%% Args:       Program, ProgramInterface, Name
%% Returns:    Exdl
%% C-API func: GLuint glGetProgramResourceIndex(GLuint program, GLenum programInterface, const GLchar* name)

getProgramResourceIndex(Program, ProgramInterface, Name)
 -> case
      call
      ( ?glGetProgramResourceIndex
      , <<Program:?GLuint
        , ProgramInterface:?GLenum
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

%% Func:       getProgramResourceName
%% Args:       Program, ProgramInterface, Index, BufSize
%% Returns:    { Length, Name }
%% C-API func: void glGetProgramResourceName(GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei* length, GLchar* name)

getProgramResourceName(Program, ProgramInterface, Index, BufSize)
 -> case
      call
      ( ?glGetProgramResourceName
      , <<Program:?GLuint
        , ProgramInterface:?GLenum
        , Index:?GLuint
        , BufSize:?GLsizei
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

%% Func:       getProgramResourceiv
%% Args:       Program, ProgramInterface, Index, PropCount, Props, BufSize
%% Returns:    [ Length, Params ]
%% C-API func: void glGetProgramResourceiv(GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, const GLenum* props, GLsizei bufSize, GLsizei* length, GLint* params)

getProgramResourceiv(Program, ProgramInterface, Index, PropCount, Props, BufSize)
 -> case
      call
      ( ?glGetProgramResourceiv
      , <<Program:?GLuint
        , ProgramInterface:?GLenum
        , Index:?GLuint
        , PropCount:?GLsizei
        , Props:?_PTR
        , BufSize:?GLsizei
        >>
      )
    of
      <<Length:?GLsizei
      , Params:?GLint
      >>
        -> [ Length, Params ]
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getProgramResourceLocation
%% Args:       Program, ProgramInterface, Name
%% Returns:    Exdl
%% C-API func: GLint glGetProgramResourceLocation(GLuint program, GLenum programInterface, const GLchar* name)

getProgramResourceLocation(Program, ProgramInterface, Name)
 -> case
      call
      ( ?glGetProgramResourceLocation
      , <<Program:?GLuint
        , ProgramInterface:?GLenum
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

%% Func:       getProgramResourceLocationIndex
%% Args:       Program, ProgramInterface, Name
%% Returns:    Exdl
%% C-API func: GLint glGetProgramResourceLocationIndex(GLuint program, GLenum programInterface, const GLchar* name)

getProgramResourceLocationIndex(Program, ProgramInterface, Name)
 -> case
      call
      ( ?glGetProgramResourceLocationIndex
      , <<Program:?GLuint
        , ProgramInterface:?GLenum
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

%% GL_ARB_robust_buffer_access_behavior

%% GL_ARB_shader_image_size

%% GL_ARB_shader_storage_buffer_object

%% Func:       shaderStorageBlockBinding
%% Args:       Program, StorageBlockIndex, StorageBlockBinding
%% Returns:    ok
%% C-API func: void glShaderStorageBlockBinding(GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding)

shaderStorageBlockBinding(Program, StorageBlockIndex, StorageBlockBinding)
 -> cast
    ( ?glShaderStorageBlockBinding
    , <<Program:?GLuint
      , StorageBlockIndex:?GLuint
      , StorageBlockBinding:?GLuint
      >>
    )
.

%% GL_ARB_stencil_texturing

%% GL_ARB_texture_buffer_range

%% Func:       texBufferRange
%% Args:       Target, Internalformat, Buffer, Offset, Size
%% Returns:    ok
%% C-API func: void glTexBufferRange(GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size)

texBufferRange(Target, Internalformat, Buffer, Offset, Size)
 -> cast
    ( ?glTexBufferRange
    , <<Target:?GLenum
      , Internalformat:?GLenum
      , Buffer:?GLuint
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      >>
    )
.

%% Func:       textureBufferRangeEXT
%% Args:       Texture, Target, Internalformat, Buffer, Offset, Size
%% Returns:    ok
%% C-API func: void glTextureBufferRangeEXT(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size)

textureBufferRangeEXT(Texture, Target, Internalformat, Buffer, Offset, Size)
 -> cast
    ( ?glTextureBufferRangeEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Internalformat:?GLenum
      , Buffer:?GLuint
      , Offset:?GLintptr
      , Size:?GLsizeiptr
      >>
    )
.

%% GL_ARB_texture_query_levels

%% GL_ARB_texture_storage_multisample

%% Func:       texStorage2DMultisample
%% Args:       Target, Samples, Internalformat, Width, Height, Fixedsamplelocations
%% Returns:    ok
%% C-API func: void glTexStorage2DMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

texStorage2DMultisample(Target, Samples, Internalformat, Width, Height, Fixedsamplelocations)
 -> cast
    ( ?glTexStorage2DMultisample
    , <<Target:?GLenum
      , Samples:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Fixedsamplelocations:?GLboolean
      >>
    )
.

%% Func:       texStorage3DMultisample
%% Args:       Target, Samples, Internalformat, Width, Height, Depth, Fixedsamplelocations
%% Returns:    ok
%% C-API func: void glTexStorage3DMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

texStorage3DMultisample(Target, Samples, Internalformat, Width, Height, Depth, Fixedsamplelocations)
 -> cast
    ( ?glTexStorage3DMultisample
    , <<Target:?GLenum
      , Samples:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Fixedsamplelocations:?GLboolean
      >>
    )
.

%% Func:       textureStorage2DMultisampleEXT
%% Args:       Texture, Target, Samples, Internalformat, Width, Height, Fixedsamplelocations
%% Returns:    ok
%% C-API func: void glTextureStorage2DMultisampleEXT(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

textureStorage2DMultisampleEXT(Texture, Target, Samples, Internalformat, Width, Height, Fixedsamplelocations)
 -> cast
    ( ?glTextureStorage2DMultisampleEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Samples:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Fixedsamplelocations:?GLboolean
      >>
    )
.

%% Func:       textureStorage3DMultisampleEXT
%% Args:       Texture, Target, Samples, Internalformat, Width, Height, Depth, Fixedsamplelocations
%% Returns:    ok
%% C-API func: void glTextureStorage3DMultisampleEXT(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

textureStorage3DMultisampleEXT(Texture, Target, Samples, Internalformat, Width, Height, Depth, Fixedsamplelocations)
 -> cast
    ( ?glTextureStorage3DMultisampleEXT
    , <<Texture:?GLuint
      , Target:?GLenum
      , Samples:?GLsizei
      , Internalformat:?GLenum
      , Width:?GLsizei
      , Height:?GLsizei
      , Depth:?GLsizei
      , Fixedsamplelocations:?GLboolean
      >>
    )
.


-endif. % COMPILE_GLCOREARB
