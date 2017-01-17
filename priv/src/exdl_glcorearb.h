/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_gl3.h,v 1.5 2012/08/24 14:45:39 koch Exp $
 *     $Id: exdl_glcorearb.h,v 1.5 2014/04/17 14:45:39 koch Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_GLCOREARB

  enum
/* GL_VERSION_1_0 */
  { glCullFace_ENUM = EXDL_GLCOREARB_H
  , glFrontFace_ENUM
  , glHint_ENUM
  , glLineWidth_ENUM
  , glPointSize_ENUM
  , glPolygonMode_ENUM
  , glScissor_ENUM
  , glTexParameterf_ENUM
  , glTexParameterfv_ENUM
  , glTexParameteri_ENUM
  , glTexParameteriv_ENUM
  , glTexImage1D_ENUM
  , glTexImage2D_ENUM
  , glDrawBuffer_ENUM
  , glClear_ENUM
  , glClearColor_ENUM
  , glClearStencil_ENUM
  , glClearDepth_ENUM
  , glStencilMask_ENUM
  , glColorMask_ENUM
  , glDepthMask_ENUM
  , glDisable_ENUM
  , glEnable_ENUM
  , glFinish_ENUM
  , glFlush_ENUM
  , glBlendFunc_ENUM
  , glLogicOp_ENUM
  , glStencilFunc_ENUM
  , glStencilOp_ENUM
  , glDepthFunc_ENUM
  , glPixelStoref_ENUM
  , glPixelStorei_ENUM
  , glReadBuffer_ENUM
  , glReadPixels_ENUM
  , glGetBooleanv_ENUM
  , glGetDoublev_ENUM
  , glGetError_ENUM
  , glGetFloatv_ENUM
  , glGetIntegerv_ENUM
  , glGetString_ENUM
  , glGetTexImage_ENUM
  , glGetTexParameterfv_ENUM
  , glGetTexParameteriv_ENUM
  , glGetTexLevelParameterfv_ENUM
  , glGetTexLevelParameteriv_ENUM
  , glIsEnabled_ENUM
  , glDepthRange_ENUM
  , glViewport_ENUM
/* GL_VERSION_1_1 */
  , glDrawArrays_ENUM
  , glDrawElements_ENUM
  , glGetPointerv_ENUM
  , glPolygonOffset_ENUM
  , glCopyTexImage1D_ENUM
  , glCopyTexImage2D_ENUM
  , glCopyTexSubImage1D_ENUM
  , glCopyTexSubImage2D_ENUM
  , glTexSubImage1D_ENUM
  , glTexSubImage2D_ENUM
  , glBindTexture_ENUM
  , glDeleteTextures_ENUM
  , glGenTextures_ENUM
  , glIsTexture_ENUM
/* GL_VERSION_1_2 */
  , glBlendColor_ENUM
  , glBlendEquation_ENUM
  , glDrawRangeElements_ENUM
  , glTexImage3D_ENUM
  , glTexSubImage3D_ENUM
  , glCopyTexSubImage3D_ENUM
/* GL_VERSION_1_3 */
  , glActiveTexture_ENUM
  , glSampleCoverage_ENUM
  , glCompressedTexImage3D_ENUM
  , glCompressedTexImage2D_ENUM
  , glCompressedTexImage1D_ENUM
  , glCompressedTexSubImage3D_ENUM
  , glCompressedTexSubImage2D_ENUM
  , glCompressedTexSubImage1D_ENUM
  , glGetCompressedTexImage_ENUM
/* GL_VERSION_1_4 */
  , glBlendFuncSeparate_ENUM
  , glMultiDrawArrays_ENUM
  , glMultiDrawElements_ENUM
  , glPointParameterf_ENUM
  , glPointParameterfv_ENUM
  , glPointParameteri_ENUM
  , glPointParameteriv_ENUM
/* GL_VERSION_1_5 */
  , glGenQueries_ENUM
  , glDeleteQueries_ENUM
  , glIsQuery_ENUM
  , glBeginQuery_ENUM
  , glEndQuery_ENUM
  , glGetQueryiv_ENUM
  , glGetQueryObjectiv_ENUM
  , glGetQueryObjectuiv_ENUM
  , glBindBuffer_ENUM
  , glDeleteBuffers_ENUM
  , glGenBuffers_ENUM
  , glIsBuffer_ENUM
  , glBufferData_ENUM
  , glBufferSubData_ENUM
  , glGetBufferSubData_ENUM
  , glMapBuffer_ENUM
  , glUnmapBuffer_ENUM
  , glGetBufferParameteriv_ENUM
  , glGetBufferPointerv_ENUM
/* GL_VERSION_2_0 */
  , glBlendEquationSeparate_ENUM
  , glDrawBuffers_ENUM
  , glStencilOpSeparate_ENUM
  , glStencilFuncSeparate_ENUM
  , glStencilMaskSeparate_ENUM
  , glAttachShader_ENUM
  , glBindAttribLocation_ENUM
  , glCompileShader_ENUM
  , glCreateProgram_ENUM
  , glCreateShader_ENUM
  , glDeleteProgram_ENUM
  , glDeleteShader_ENUM
  , glDetachShader_ENUM
  , glDisableVertexAttribArray_ENUM
  , glEnableVertexAttribArray_ENUM
  , glGetActiveAttrib_ENUM
  , glGetActiveUniform_ENUM
  , glGetAttachedShaders_ENUM
  , glGetAttribLocation_ENUM
  , glGetProgramiv_ENUM
  , glGetProgramInfoLog_ENUM
  , glGetShaderiv_ENUM
  , glGetShaderInfoLog_ENUM
  , glGetShaderSource_ENUM
  , glGetUniformLocation_ENUM
  , glGetUniformfv_ENUM
  , glGetUniformiv_ENUM
  , glGetVertexAttribdv_ENUM
  , glGetVertexAttribfv_ENUM
  , glGetVertexAttribiv_ENUM
  , glGetVertexAttribPointerv_ENUM
  , glIsProgram_ENUM
  , glIsShader_ENUM
  , glLinkProgram_ENUM
  , glShaderSource_ENUM
  , glUseProgram_ENUM
  , glUniform1f_ENUM
  , glUniform2f_ENUM
  , glUniform3f_ENUM
  , glUniform4f_ENUM
  , glUniform1i_ENUM
  , glUniform2i_ENUM
  , glUniform3i_ENUM
  , glUniform4i_ENUM
  , glUniform1fv_ENUM
  , glUniform2fv_ENUM
  , glUniform3fv_ENUM
  , glUniform4fv_ENUM
  , glUniform1iv_ENUM
  , glUniform2iv_ENUM
  , glUniform3iv_ENUM
  , glUniform4iv_ENUM
  , glUniformMatrix2fv_ENUM
  , glUniformMatrix3fv_ENUM
  , glUniformMatrix4fv_ENUM
  , glValidateProgram_ENUM
  , glVertexAttrib1d_ENUM
  , glVertexAttrib1dv_ENUM
  , glVertexAttrib1f_ENUM
  , glVertexAttrib1fv_ENUM
  , glVertexAttrib1s_ENUM
  , glVertexAttrib1sv_ENUM
  , glVertexAttrib2d_ENUM
  , glVertexAttrib2dv_ENUM
  , glVertexAttrib2f_ENUM
  , glVertexAttrib2fv_ENUM
  , glVertexAttrib2s_ENUM
  , glVertexAttrib2sv_ENUM
  , glVertexAttrib3d_ENUM
  , glVertexAttrib3dv_ENUM
  , glVertexAttrib3f_ENUM
  , glVertexAttrib3fv_ENUM
  , glVertexAttrib3s_ENUM
  , glVertexAttrib3sv_ENUM
  , glVertexAttrib4Nbv_ENUM
  , glVertexAttrib4Niv_ENUM
  , glVertexAttrib4Nsv_ENUM
  , glVertexAttrib4Nub_ENUM
  , glVertexAttrib4Nubv_ENUM
  , glVertexAttrib4Nuiv_ENUM
  , glVertexAttrib4Nusv_ENUM
  , glVertexAttrib4bv_ENUM
  , glVertexAttrib4d_ENUM
  , glVertexAttrib4dv_ENUM
  , glVertexAttrib4f_ENUM
  , glVertexAttrib4fv_ENUM
  , glVertexAttrib4iv_ENUM
  , glVertexAttrib4s_ENUM
  , glVertexAttrib4sv_ENUM
  , glVertexAttrib4ubv_ENUM
  , glVertexAttrib4uiv_ENUM
  , glVertexAttrib4usv_ENUM
  , glVertexAttribPointer_ENUM
/* GL_VERSION_2_1 */
  , glUniformMatrix2x3fv_ENUM
  , glUniformMatrix3x2fv_ENUM
  , glUniformMatrix2x4fv_ENUM
  , glUniformMatrix4x2fv_ENUM
  , glUniformMatrix3x4fv_ENUM
  , glUniformMatrix4x3fv_ENUM
/* GL_VERSION_3_0 */
  , glColorMaski_ENUM
  , glGetBooleani_v_ENUM
  , glGetIntegeri_v_ENUM
  , glEnablei_ENUM
  , glDisablei_ENUM
  , glIsEnabledi_ENUM
  , glBeginTransformFeedback_ENUM
  , glEndTransformFeedback_ENUM
  , glBindBufferRange_ENUM
  , glBindBufferBase_ENUM
  , glTransformFeedbackVaryings_ENUM
  , glGetTransformFeedbackVarying_ENUM
  , glClampColor_ENUM
  , glBeginConditionalRender_ENUM
  , glEndConditionalRender_ENUM
  , glVertexAttribIPointer_ENUM
  , glGetVertexAttribIiv_ENUM
  , glGetVertexAttribIuiv_ENUM
  , glVertexAttribI1i_ENUM
  , glVertexAttribI2i_ENUM
  , glVertexAttribI3i_ENUM
  , glVertexAttribI4i_ENUM
  , glVertexAttribI1ui_ENUM
  , glVertexAttribI2ui_ENUM
  , glVertexAttribI3ui_ENUM
  , glVertexAttribI4ui_ENUM
  , glVertexAttribI1iv_ENUM
  , glVertexAttribI2iv_ENUM
  , glVertexAttribI3iv_ENUM
  , glVertexAttribI4iv_ENUM
  , glVertexAttribI1uiv_ENUM
  , glVertexAttribI2uiv_ENUM
  , glVertexAttribI3uiv_ENUM
  , glVertexAttribI4uiv_ENUM
  , glVertexAttribI4bv_ENUM
  , glVertexAttribI4sv_ENUM
  , glVertexAttribI4ubv_ENUM
  , glVertexAttribI4usv_ENUM
  , glGetUniformuiv_ENUM
  , glBindFragDataLocation_ENUM
  , glGetFragDataLocation_ENUM
  , glUniform1ui_ENUM
  , glUniform2ui_ENUM
  , glUniform3ui_ENUM
  , glUniform4ui_ENUM
  , glUniform1uiv_ENUM
  , glUniform2uiv_ENUM
  , glUniform3uiv_ENUM
  , glUniform4uiv_ENUM
  , glTexParameterIiv_ENUM
  , glTexParameterIuiv_ENUM
  , glGetTexParameterIiv_ENUM
  , glGetTexParameterIuiv_ENUM
  , glClearBufferiv_ENUM
  , glClearBufferuiv_ENUM
  , glClearBufferfv_ENUM
  , glClearBufferfi_ENUM
  , glGetStringi_ENUM
/* GL_VERSION_3_1 */
  , glDrawArraysInstanced_ENUM
  , glDrawElementsInstanced_ENUM
  , glTexBuffer_ENUM
  , glPrimitiveRestartIndex_ENUM
/* GL_VERSION_3_2 */
  , glGetInteger64i_v_ENUM
  , glGetBufferParameteri64v_ENUM
  , glFramebufferTexture_ENUM
/* GL_VERSION_3_3 */
  , glVertexAttribDivisor_ENUM
/* GL_VERSION_4_0 */
  , glMinSampleShading_ENUM
  , glBlendEquationi_ENUM
  , glBlendEquationSeparatei_ENUM
  , glBlendFunci_ENUM
  , glBlendFuncSeparatei_ENUM
/* GL_VERSION_4_1 */
/* GL_ARB_depth_buffer_float */
/* GL_ARB_framebuffer_object */
  , glIsRenderbuffer_ENUM
  , glBindRenderbuffer_ENUM
  , glDeleteRenderbuffers_ENUM
  , glGenRenderbuffers_ENUM
  , glRenderbufferStorage_ENUM
  , glGetRenderbufferParameteriv_ENUM
  , glIsFramebuffer_ENUM
  , glBindFramebuffer_ENUM
  , glDeleteFramebuffers_ENUM
  , glGenFramebuffers_ENUM
  , glCheckFramebufferStatus_ENUM
  , glFramebufferTexture1D_ENUM
  , glFramebufferTexture2D_ENUM
  , glFramebufferTexture3D_ENUM
  , glFramebufferRenderbuffer_ENUM
  , glGetFramebufferAttachmentParameteriv_ENUM
  , glGenerateMipmap_ENUM
  , glBlitFramebuffer_ENUM
  , glRenderbufferStorageMultisample_ENUM
  , glFramebufferTextureLayer_ENUM
/* GL_ARB_map_buffer_range */
  , glMapBufferRange_ENUM
  , glFlushMappedBufferRange_ENUM
/* GL_ARB_vertex_array_object */
  , glBindVertexArray_ENUM
  , glDeleteVertexArrays_ENUM
  , glGenVertexArrays_ENUM
  , glIsVertexArray_ENUM
/* GL_ARB_uniform_buffer_object */
  , glGetUniformIndices_ENUM
  , glGetActiveUniformsiv_ENUM
  , glGetActiveUniformName_ENUM
  , glGetUniformBlockIndex_ENUM
  , glGetActiveUniformBlockiv_ENUM
  , glGetActiveUniformBlockName_ENUM
  , glUniformBlockBinding_ENUM
/* GL_ARB_copy_buffer */
  , glCopyBufferSubData_ENUM
/* GL_ARB_draw_elements_base_vertex */
  , glDrawElementsBaseVertex_ENUM
  , glDrawRangeElementsBaseVertex_ENUM
  , glDrawElementsInstancedBaseVertex_ENUM
  , glMultiDrawElementsBaseVertex_ENUM
/* GL_ARB_provoking_vertex */
  , glProvokingVertex_ENUM
/* GL_ARB_sync */
  , glFenceSync_ENUM
  , glIsSync_ENUM
  , glDeleteSync_ENUM
  , glClientWaitSync_ENUM
  , glWaitSync_ENUM
  , glGetInteger64v_ENUM
  , glGetSynciv_ENUM
/* GL_ARB_texture_multisample */
  , glTexImage2DMultisample_ENUM
  , glTexImage3DMultisample_ENUM
  , glGetMultisamplefv_ENUM
  , glSampleMaski_ENUM
/* GL_ARB_draw_buffers_blend */
  , glBlendEquationiARB_ENUM
  , glBlendEquationSeparateiARB_ENUM
  , glBlendFunciARB_ENUM
  , glBlendFuncSeparateiARB_ENUM
/* GL_ARB_sample_shading */
  , glMinSampleShadingARB_ENUM
/* GL_ARB_texture_cube_map_array */
/* GL_ARB_texture_gather */
/* GL_ARB_texture_query_lod */
/* GL_ARB_shading_language_include */
  , glNamedStringARB_ENUM
  , glDeleteNamedStringARB_ENUM
  , glCompileShaderIncludeARB_ENUM
  , glIsNamedStringARB_ENUM
  , glGetNamedStringARB_ENUM
  , glGetNamedStringivARB_ENUM
/* GL_ARB_texture_compression_bptc */
/* GL_ARB_blend_func_extended */
  , glBindFragDataLocationIndexed_ENUM
  , glGetFragDataIndex_ENUM
/* GL_ARB_explicit_attrib_location */
/* GL_ARB_occlusion_query2 */
/* GL_ARB_sampler_objects */
  , glGenSamplers_ENUM
  , glDeleteSamplers_ENUM
  , glIsSampler_ENUM
  , glBindSampler_ENUM
  , glSamplerParameteri_ENUM
  , glSamplerParameteriv_ENUM
  , glSamplerParameterf_ENUM
  , glSamplerParameterfv_ENUM
  , glSamplerParameterIiv_ENUM
  , glSamplerParameterIuiv_ENUM
  , glGetSamplerParameteriv_ENUM
  , glGetSamplerParameterIiv_ENUM
  , glGetSamplerParameterfv_ENUM
  , glGetSamplerParameterIuiv_ENUM
/* GL_ARB_texture_rgb10_a2ui */
/* GL_ARB_texture_swizzle */
/* GL_ARB_timer_query */
  , glQueryCounter_ENUM
  , glGetQueryObjecti64v_ENUM
  , glGetQueryObjectui64v_ENUM
/* GL_ARB_vertex_type_2_10_10_10_rev */
  , glVertexP2ui_ENUM
  , glVertexP2uiv_ENUM
  , glVertexP3ui_ENUM
  , glVertexP3uiv_ENUM
  , glVertexP4ui_ENUM
  , glVertexP4uiv_ENUM
  , glTexCoordP1ui_ENUM
  , glTexCoordP1uiv_ENUM
  , glTexCoordP2ui_ENUM
  , glTexCoordP2uiv_ENUM
  , glTexCoordP3ui_ENUM
  , glTexCoordP3uiv_ENUM
  , glTexCoordP4ui_ENUM
  , glTexCoordP4uiv_ENUM
  , glMultiTexCoordP1ui_ENUM
  , glMultiTexCoordP1uiv_ENUM
  , glMultiTexCoordP2ui_ENUM
  , glMultiTexCoordP2uiv_ENUM
  , glMultiTexCoordP3ui_ENUM
  , glMultiTexCoordP3uiv_ENUM
  , glMultiTexCoordP4ui_ENUM
  , glMultiTexCoordP4uiv_ENUM
  , glNormalP3ui_ENUM
  , glNormalP3uiv_ENUM
  , glColorP3ui_ENUM
  , glColorP3uiv_ENUM
  , glColorP4ui_ENUM
  , glColorP4uiv_ENUM
  , glSecondaryColorP3ui_ENUM
  , glSecondaryColorP3uiv_ENUM
  , glVertexAttribP1ui_ENUM
  , glVertexAttribP1uiv_ENUM
  , glVertexAttribP2ui_ENUM
  , glVertexAttribP2uiv_ENUM
  , glVertexAttribP3ui_ENUM
  , glVertexAttribP3uiv_ENUM
  , glVertexAttribP4ui_ENUM
  , glVertexAttribP4uiv_ENUM
/* GL_ARB_draw_indirect */
  , glDrawArraysIndirect_ENUM
  , glDrawElementsIndirect_ENUM
/* GL_ARB_gpu_shader5 */
/* GL_ARB_gpu_shader_fp64 */
  , glUniform1d_ENUM
  , glUniform2d_ENUM
  , glUniform3d_ENUM
  , glUniform4d_ENUM
  , glUniform1dv_ENUM
  , glUniform2dv_ENUM
  , glUniform3dv_ENUM
  , glUniform4dv_ENUM
  , glUniformMatrix2dv_ENUM
  , glUniformMatrix3dv_ENUM
  , glUniformMatrix4dv_ENUM
  , glUniformMatrix2x3dv_ENUM
  , glUniformMatrix2x4dv_ENUM
  , glUniformMatrix3x2dv_ENUM
  , glUniformMatrix3x4dv_ENUM
  , glUniformMatrix4x2dv_ENUM
  , glUniformMatrix4x3dv_ENUM
  , glGetUniformdv_ENUM
/* GL_ARB_shader_subroutine */
  , glGetSubroutineUniformLocation_ENUM
  , glGetSubroutineIndex_ENUM
  , glGetActiveSubroutineUniformiv_ENUM
  , glGetActiveSubroutineUniformName_ENUM
  , glGetActiveSubroutineName_ENUM
  , glUniformSubroutinesuiv_ENUM
  , glGetUniformSubroutineuiv_ENUM
  , glGetProgramStageiv_ENUM
/* GL_ARB_tessellation_shader */
  , glPatchParameteri_ENUM
  , glPatchParameterfv_ENUM
/* GL_ARB_texture_buffer_object_rgb32 */
/* GL_ARB_transform_feedback2 */
  , glBindTransformFeedback_ENUM
  , glDeleteTransformFeedbacks_ENUM
  , glGenTransformFeedbacks_ENUM
  , glIsTransformFeedback_ENUM
  , glPauseTransformFeedback_ENUM
  , glResumeTransformFeedback_ENUM
  , glDrawTransformFeedback_ENUM
/* GL_ARB_transform_feedback3 */
  , glDrawTransformFeedbackStream_ENUM
  , glBeginQueryIndexed_ENUM
  , glEndQueryIndexed_ENUM
  , glGetQueryIndexediv_ENUM
/* GL_ARB_ES2_compatibility */
  , glReleaseShaderCompiler_ENUM
  , glShaderBinary_ENUM
  , glGetShaderPrecisionFormat_ENUM
  , glDepthRangef_ENUM
  , glClearDepthf_ENUM
/* GL_ARB_get_program_binary */
  , glGetProgramBinary_ENUM
  , glProgramBinary_ENUM
  , glProgramParameteri_ENUM
/* GL_ARB_separate_shader_objects */
  , glUseProgramStages_ENUM
  , glActiveShaderProgram_ENUM
  , glCreateShaderProgramv_ENUM
  , glBindProgramPipeline_ENUM
  , glDeleteProgramPipelines_ENUM
  , glGenProgramPipelines_ENUM
  , glIsProgramPipeline_ENUM
  , glGetProgramPipelineiv_ENUM
  , glProgramUniform1i_ENUM
  , glProgramUniform1iv_ENUM
  , glProgramUniform1f_ENUM
  , glProgramUniform1fv_ENUM
  , glProgramUniform1d_ENUM
  , glProgramUniform1dv_ENUM
  , glProgramUniform1ui_ENUM
  , glProgramUniform1uiv_ENUM
  , glProgramUniform2i_ENUM
  , glProgramUniform2iv_ENUM
  , glProgramUniform2f_ENUM
  , glProgramUniform2fv_ENUM
  , glProgramUniform2d_ENUM
  , glProgramUniform2dv_ENUM
  , glProgramUniform2ui_ENUM
  , glProgramUniform2uiv_ENUM
  , glProgramUniform3i_ENUM
  , glProgramUniform3iv_ENUM
  , glProgramUniform3f_ENUM
  , glProgramUniform3fv_ENUM
  , glProgramUniform3d_ENUM
  , glProgramUniform3dv_ENUM
  , glProgramUniform3ui_ENUM
  , glProgramUniform3uiv_ENUM
  , glProgramUniform4i_ENUM
  , glProgramUniform4iv_ENUM
  , glProgramUniform4f_ENUM
  , glProgramUniform4fv_ENUM
  , glProgramUniform4d_ENUM
  , glProgramUniform4dv_ENUM
  , glProgramUniform4ui_ENUM
  , glProgramUniform4uiv_ENUM
  , glProgramUniformMatrix2fv_ENUM
  , glProgramUniformMatrix3fv_ENUM
  , glProgramUniformMatrix4fv_ENUM
  , glProgramUniformMatrix2dv_ENUM
  , glProgramUniformMatrix3dv_ENUM
  , glProgramUniformMatrix4dv_ENUM
  , glProgramUniformMatrix2x3fv_ENUM
  , glProgramUniformMatrix3x2fv_ENUM
  , glProgramUniformMatrix2x4fv_ENUM
  , glProgramUniformMatrix4x2fv_ENUM
  , glProgramUniformMatrix3x4fv_ENUM
  , glProgramUniformMatrix4x3fv_ENUM
  , glProgramUniformMatrix2x3dv_ENUM
  , glProgramUniformMatrix3x2dv_ENUM
  , glProgramUniformMatrix2x4dv_ENUM
  , glProgramUniformMatrix4x2dv_ENUM
  , glProgramUniformMatrix3x4dv_ENUM
  , glProgramUniformMatrix4x3dv_ENUM
  , glValidateProgramPipeline_ENUM
  , glGetProgramPipelineInfoLog_ENUM
/* GL_ARB_vertex_attrib_64bit */
  , glVertexAttribL1d_ENUM
  , glVertexAttribL2d_ENUM
  , glVertexAttribL3d_ENUM
  , glVertexAttribL4d_ENUM
  , glVertexAttribL1dv_ENUM
  , glVertexAttribL2dv_ENUM
  , glVertexAttribL3dv_ENUM
  , glVertexAttribL4dv_ENUM
  , glVertexAttribLPointer_ENUM
  , glGetVertexAttribLdv_ENUM
/* GL_ARB_viewport_array */
  , glViewportArrayv_ENUM
  , glViewportIndexedf_ENUM
  , glViewportIndexedfv_ENUM
  , glScissorArrayv_ENUM
  , glScissorIndexed_ENUM
  , glScissorIndexedv_ENUM
  , glDepthRangeArrayv_ENUM
  , glDepthRangeIndexed_ENUM
  , glGetFloati_v_ENUM
  , glGetDoublei_v_ENUM
/* GL_ARB_cl_event */
  , glCreateSyncFromCLeventARB_ENUM
/* GL_ARB_debug_output */
  , glDebugMessageControlARB_ENUM
  , glDebugMessageInsertARB_ENUM
  , glDebugMessageCallbackARB_ENUM
  , glGetDebugMessageLogARB_ENUM
/* GL_ARB_robustness */
  , glGetGraphicsResetStatusARB_ENUM
  , glGetnMapdvARB_ENUM
  , glGetnMapfvARB_ENUM
  , glGetnMapivARB_ENUM
  , glGetnPixelMapfvARB_ENUM
  , glGetnPixelMapuivARB_ENUM
  , glGetnPixelMapusvARB_ENUM
  , glGetnPolygonStippleARB_ENUM
  , glGetnColorTableARB_ENUM
  , glGetnConvolutionFilterARB_ENUM
  , glGetnSeparableFilterARB_ENUM
  , glGetnHistogramARB_ENUM
  , glGetnMinmaxARB_ENUM
  , glGetnTexImageARB_ENUM
  , glReadnPixelsARB_ENUM
  , glGetnCompressedTexImageARB_ENUM
  , glGetnUniformfvARB_ENUM
  , glGetnUniformivARB_ENUM
  , glGetnUniformuivARB_ENUM
  , glGetnUniformdvARB_ENUM
/* GL_ARB_shader_stencil_export */
/* GL_ARB_base_instance */
  , glDrawArraysInstancedBaseInstance_ENUM
  , glDrawElementsInstancedBaseInstance_ENUM
  , glDrawElementsInstancedBaseVertexBaseInstance_ENUM
/* GL_ARB_shading_language_420pack */
/* GL_ARB_transform_feedback_instanced */
  , glDrawTransformFeedbackInstanced_ENUM
  , glDrawTransformFeedbackStreamInstanced_ENUM
/* GL_ARB_compressed_texture_pixel_storage */
/* GL_ARB_conservative_depth */
/* GL_ARB_internalformat_query */
  , glGetInternalformativ_ENUM
/* GL_ARB_map_buffer_alignment */
/* GL_ARB_shader_atomic_counters */
  , glGetActiveAtomicCounterBufferiv_ENUM
/* GL_ARB_shader_image_load_store */
  , glBindImageTexture_ENUM
  , glMemoryBarrier_ENUM
/* GL_ARB_shading_language_packing */
/* GL_ARB_texture_storage */
  , glTexStorage1D_ENUM
  , glTexStorage2D_ENUM
  , glTexStorage3D_ENUM
  , glTextureStorage1DEXT_ENUM
  , glTextureStorage2DEXT_ENUM
  , glTextureStorage3DEXT_ENUM
  , _ENUM_EXDL_GLCOREARB
  };


/* GL_VERSION_1_0 */
EXDL_API(eglcorearb_cullFace);
EXDL_API(eglcorearb_frontFace);
EXDL_API(eglcorearb_hint);
EXDL_API(eglcorearb_lineWidth);
EXDL_API(eglcorearb_pointSize);
EXDL_API(eglcorearb_polygonMode);
EXDL_API(eglcorearb_scissor);
EXDL_API(eglcorearb_texParameterf);
EXDL_API(eglcorearb_texParameterfv);
EXDL_API(eglcorearb_texParameteri);
EXDL_API(eglcorearb_texParameteriv);
EXDL_API(eglcorearb_texImage1D);
EXDL_API(eglcorearb_texImage2D);
EXDL_API(eglcorearb_drawBuffer);
EXDL_API(eglcorearb_clear);
EXDL_API(eglcorearb_clearColor);
EXDL_API(eglcorearb_clearStencil);
EXDL_API(eglcorearb_clearDepth);
EXDL_API(eglcorearb_stencilMask);
EXDL_API(eglcorearb_colorMask);
EXDL_API(eglcorearb_depthMask);
EXDL_API(eglcorearb_disable);
EXDL_API(eglcorearb_enable);
EXDL_API(eglcorearb_finish);
EXDL_API(eglcorearb_flush);
EXDL_API(eglcorearb_blendFunc);
EXDL_API(eglcorearb_logicOp);
EXDL_API(eglcorearb_stencilFunc);
EXDL_API(eglcorearb_stencilOp);
EXDL_API(eglcorearb_depthFunc);
EXDL_API(eglcorearb_pixelStoref);
EXDL_API(eglcorearb_pixelStorei);
EXDL_API(eglcorearb_readBuffer);
EXDL_API(eglcorearb_readPixels);
EXDL_API(eglcorearb_getBooleanv);
EXDL_API(eglcorearb_getDoublev);
EXDL_API(eglcorearb_getError);
EXDL_API(eglcorearb_getFloatv);
EXDL_API(eglcorearb_getIntegerv);
EXDL_API(eglcorearb_getString);
EXDL_API(eglcorearb_getTexImage);
EXDL_API(eglcorearb_getTexParameterfv);
EXDL_API(eglcorearb_getTexParameteriv);
EXDL_API(eglcorearb_getTexLevelParameterfv);
EXDL_API(eglcorearb_getTexLevelParameteriv);
EXDL_API(eglcorearb_isEnabled);
EXDL_API(eglcorearb_depthRange);
EXDL_API(eglcorearb_viewport);
/* GL_VERSION_1_1 */
EXDL_API(eglcorearb_drawArrays);
EXDL_API(eglcorearb_drawElements);
EXDL_API(eglcorearb_getPointerv);
EXDL_API(eglcorearb_polygonOffset);
EXDL_API(eglcorearb_copyTexImage1D);
EXDL_API(eglcorearb_copyTexImage2D);
EXDL_API(eglcorearb_copyTexSubImage1D);
EXDL_API(eglcorearb_copyTexSubImage2D);
EXDL_API(eglcorearb_texSubImage1D);
EXDL_API(eglcorearb_texSubImage2D);
EXDL_API(eglcorearb_bindTexture);
EXDL_API(eglcorearb_deleteTextures);
EXDL_API(eglcorearb_genTextures);
EXDL_API(eglcorearb_isTexture);
/* GL_VERSION_1_2 */
EXDL_API(eglcorearb_blendColor);
EXDL_API(eglcorearb_blendEquation);
EXDL_API(eglcorearb_drawRangeElements);
EXDL_API(eglcorearb_texImage3D);
EXDL_API(eglcorearb_texSubImage3D);
EXDL_API(eglcorearb_copyTexSubImage3D);
/* GL_VERSION_1_3 */
EXDL_API(eglcorearb_activeTexture);
EXDL_API(eglcorearb_sampleCoverage);
EXDL_API(eglcorearb_compressedTexImage3D);
EXDL_API(eglcorearb_compressedTexImage2D);
EXDL_API(eglcorearb_compressedTexImage1D);
EXDL_API(eglcorearb_compressedTexSubImage3D);
EXDL_API(eglcorearb_compressedTexSubImage2D);
EXDL_API(eglcorearb_compressedTexSubImage1D);
EXDL_API(eglcorearb_getCompressedTexImage);
/* GL_VERSION_1_4 */
EXDL_API(eglcorearb_blendFuncSeparate);
EXDL_API(eglcorearb_multiDrawArrays);
EXDL_API(eglcorearb_multiDrawElements);
EXDL_API(eglcorearb_pointParameterf);
EXDL_API(eglcorearb_pointParameterfv);
EXDL_API(eglcorearb_pointParameteri);
EXDL_API(eglcorearb_pointParameteriv);
/* GL_VERSION_1_5 */
EXDL_API(eglcorearb_genQueries);
EXDL_API(eglcorearb_deleteQueries);
EXDL_API(eglcorearb_isQuery);
EXDL_API(eglcorearb_beginQuery);
EXDL_API(eglcorearb_endQuery);
EXDL_API(eglcorearb_getQueryiv);
EXDL_API(eglcorearb_getQueryObjectiv);
EXDL_API(eglcorearb_getQueryObjectuiv);
EXDL_API(eglcorearb_bindBuffer);
EXDL_API(eglcorearb_deleteBuffers);
EXDL_API(eglcorearb_genBuffers);
EXDL_API(eglcorearb_isBuffer);
EXDL_API(eglcorearb_bufferData);
EXDL_API(eglcorearb_bufferSubData);
EXDL_API(eglcorearb_getBufferSubData);
EXDL_API(eglcorearb_mapBuffer);
EXDL_API(eglcorearb_unmapBuffer);
EXDL_API(eglcorearb_getBufferParameteriv);
EXDL_API(eglcorearb_getBufferPointerv);
/* GL_VERSION_2_0 */
EXDL_API(eglcorearb_blendEquationSeparate);
EXDL_API(eglcorearb_drawBuffers);
EXDL_API(eglcorearb_stencilOpSeparate);
EXDL_API(eglcorearb_stencilFuncSeparate);
EXDL_API(eglcorearb_stencilMaskSeparate);
EXDL_API(eglcorearb_attachShader);
EXDL_API(eglcorearb_bindAttribLocation);
EXDL_API(eglcorearb_compileShader);
EXDL_API(eglcorearb_createProgram);
EXDL_API(eglcorearb_createShader);
EXDL_API(eglcorearb_deleteProgram);
EXDL_API(eglcorearb_deleteShader);
EXDL_API(eglcorearb_detachShader);
EXDL_API(eglcorearb_disableVertexAttribArray);
EXDL_API(eglcorearb_enableVertexAttribArray);
EXDL_API(eglcorearb_getActiveAttrib);
EXDL_API(eglcorearb_getActiveUniform);
EXDL_API(eglcorearb_getAttachedShaders);
EXDL_API(eglcorearb_getAttribLocation);
EXDL_API(eglcorearb_getProgramiv);
EXDL_API(eglcorearb_getProgramInfoLog);
EXDL_API(eglcorearb_getShaderiv);
EXDL_API(eglcorearb_getShaderInfoLog);
EXDL_API(eglcorearb_getShaderSource);
EXDL_API(eglcorearb_getUniformLocation);
EXDL_API(eglcorearb_getUniformfv);
EXDL_API(eglcorearb_getUniformiv);
EXDL_API(eglcorearb_getVertexAttribdv);
EXDL_API(eglcorearb_getVertexAttribfv);
EXDL_API(eglcorearb_getVertexAttribiv);
EXDL_API(eglcorearb_getVertexAttribPointerv);
EXDL_API(eglcorearb_isProgram);
EXDL_API(eglcorearb_isShader);
EXDL_API(eglcorearb_linkProgram);
EXDL_API(eglcorearb_shaderSource);
EXDL_API(eglcorearb_useProgram);
EXDL_API(eglcorearb_uniform1f);
EXDL_API(eglcorearb_uniform2f);
EXDL_API(eglcorearb_uniform3f);
EXDL_API(eglcorearb_uniform4f);
EXDL_API(eglcorearb_uniform1i);
EXDL_API(eglcorearb_uniform2i);
EXDL_API(eglcorearb_uniform3i);
EXDL_API(eglcorearb_uniform4i);
EXDL_API(eglcorearb_uniform1fv);
EXDL_API(eglcorearb_uniform2fv);
EXDL_API(eglcorearb_uniform3fv);
EXDL_API(eglcorearb_uniform4fv);
EXDL_API(eglcorearb_uniform1iv);
EXDL_API(eglcorearb_uniform2iv);
EXDL_API(eglcorearb_uniform3iv);
EXDL_API(eglcorearb_uniform4iv);
EXDL_API(eglcorearb_uniformMatrix2fv);
EXDL_API(eglcorearb_uniformMatrix3fv);
EXDL_API(eglcorearb_uniformMatrix4fv);
EXDL_API(eglcorearb_validateProgram);
EXDL_API(eglcorearb_vertexAttrib1d);
EXDL_API(eglcorearb_vertexAttrib1dv);
EXDL_API(eglcorearb_vertexAttrib1f);
EXDL_API(eglcorearb_vertexAttrib1fv);
EXDL_API(eglcorearb_vertexAttrib1s);
EXDL_API(eglcorearb_vertexAttrib1sv);
EXDL_API(eglcorearb_vertexAttrib2d);
EXDL_API(eglcorearb_vertexAttrib2dv);
EXDL_API(eglcorearb_vertexAttrib2f);
EXDL_API(eglcorearb_vertexAttrib2fv);
EXDL_API(eglcorearb_vertexAttrib2s);
EXDL_API(eglcorearb_vertexAttrib2sv);
EXDL_API(eglcorearb_vertexAttrib3d);
EXDL_API(eglcorearb_vertexAttrib3dv);
EXDL_API(eglcorearb_vertexAttrib3f);
EXDL_API(eglcorearb_vertexAttrib3fv);
EXDL_API(eglcorearb_vertexAttrib3s);
EXDL_API(eglcorearb_vertexAttrib3sv);
EXDL_API(eglcorearb_vertexAttrib4Nbv);
EXDL_API(eglcorearb_vertexAttrib4Niv);
EXDL_API(eglcorearb_vertexAttrib4Nsv);
EXDL_API(eglcorearb_vertexAttrib4Nub);
EXDL_API(eglcorearb_vertexAttrib4Nubv);
EXDL_API(eglcorearb_vertexAttrib4Nuiv);
EXDL_API(eglcorearb_vertexAttrib4Nusv);
EXDL_API(eglcorearb_vertexAttrib4bv);
EXDL_API(eglcorearb_vertexAttrib4d);
EXDL_API(eglcorearb_vertexAttrib4dv);
EXDL_API(eglcorearb_vertexAttrib4f);
EXDL_API(eglcorearb_vertexAttrib4fv);
EXDL_API(eglcorearb_vertexAttrib4iv);
EXDL_API(eglcorearb_vertexAttrib4s);
EXDL_API(eglcorearb_vertexAttrib4sv);
EXDL_API(eglcorearb_vertexAttrib4ubv);
EXDL_API(eglcorearb_vertexAttrib4uiv);
EXDL_API(eglcorearb_vertexAttrib4usv);
EXDL_API(eglcorearb_vertexAttribPointer);
/* GL_VERSION_2_1 */
EXDL_API(eglcorearb_uniformMatrix2x3fv);
EXDL_API(eglcorearb_uniformMatrix3x2fv);
EXDL_API(eglcorearb_uniformMatrix2x4fv);
EXDL_API(eglcorearb_uniformMatrix4x2fv);
EXDL_API(eglcorearb_uniformMatrix3x4fv);
EXDL_API(eglcorearb_uniformMatrix4x3fv);
/* GL_VERSION_3_0 */
EXDL_API(eglcorearb_colorMaski);
EXDL_API(eglcorearb_getBooleani_v);
EXDL_API(eglcorearb_getIntegeri_v);
EXDL_API(eglcorearb_enablei);
EXDL_API(eglcorearb_disablei);
EXDL_API(eglcorearb_isEnabledi);
EXDL_API(eglcorearb_beginTransformFeedback);
EXDL_API(eglcorearb_endTransformFeedback);
EXDL_API(eglcorearb_bindBufferRange);
EXDL_API(eglcorearb_bindBufferBase);
EXDL_API(eglcorearb_transformFeedbackVaryings);
EXDL_API(eglcorearb_getTransformFeedbackVarying);
EXDL_API(eglcorearb_clampColor);
EXDL_API(eglcorearb_beginConditionalRender);
EXDL_API(eglcorearb_endConditionalRender);
EXDL_API(eglcorearb_vertexAttribIPointer);
EXDL_API(eglcorearb_getVertexAttribIiv);
EXDL_API(eglcorearb_getVertexAttribIuiv);
EXDL_API(eglcorearb_vertexAttribI1i);
EXDL_API(eglcorearb_vertexAttribI2i);
EXDL_API(eglcorearb_vertexAttribI3i);
EXDL_API(eglcorearb_vertexAttribI4i);
EXDL_API(eglcorearb_vertexAttribI1ui);
EXDL_API(eglcorearb_vertexAttribI2ui);
EXDL_API(eglcorearb_vertexAttribI3ui);
EXDL_API(eglcorearb_vertexAttribI4ui);
EXDL_API(eglcorearb_vertexAttribI1iv);
EXDL_API(eglcorearb_vertexAttribI2iv);
EXDL_API(eglcorearb_vertexAttribI3iv);
EXDL_API(eglcorearb_vertexAttribI4iv);
EXDL_API(eglcorearb_vertexAttribI1uiv);
EXDL_API(eglcorearb_vertexAttribI2uiv);
EXDL_API(eglcorearb_vertexAttribI3uiv);
EXDL_API(eglcorearb_vertexAttribI4uiv);
EXDL_API(eglcorearb_vertexAttribI4bv);
EXDL_API(eglcorearb_vertexAttribI4sv);
EXDL_API(eglcorearb_vertexAttribI4ubv);
EXDL_API(eglcorearb_vertexAttribI4usv);
EXDL_API(eglcorearb_getUniformuiv);
EXDL_API(eglcorearb_bindFragDataLocation);
EXDL_API(eglcorearb_getFragDataLocation);
EXDL_API(eglcorearb_uniform1ui);
EXDL_API(eglcorearb_uniform2ui);
EXDL_API(eglcorearb_uniform3ui);
EXDL_API(eglcorearb_uniform4ui);
EXDL_API(eglcorearb_uniform1uiv);
EXDL_API(eglcorearb_uniform2uiv);
EXDL_API(eglcorearb_uniform3uiv);
EXDL_API(eglcorearb_uniform4uiv);
EXDL_API(eglcorearb_texParameterIiv);
EXDL_API(eglcorearb_texParameterIuiv);
EXDL_API(eglcorearb_getTexParameterIiv);
EXDL_API(eglcorearb_getTexParameterIuiv);
EXDL_API(eglcorearb_clearBufferiv);
EXDL_API(eglcorearb_clearBufferuiv);
EXDL_API(eglcorearb_clearBufferfv);
EXDL_API(eglcorearb_clearBufferfi);
EXDL_API(eglcorearb_getStringi);
/* GL_VERSION_3_1 */
EXDL_API(eglcorearb_drawArraysInstanced);
EXDL_API(eglcorearb_drawElementsInstanced);
EXDL_API(eglcorearb_texBuffer);
EXDL_API(eglcorearb_primitiveRestartIndex);
/* GL_VERSION_3_2 */
EXDL_API(eglcorearb_getInteger64i_v);
EXDL_API(eglcorearb_getBufferParameteri64v);
EXDL_API(eglcorearb_framebufferTexture);
/* GL_VERSION_3_3 */
EXDL_API(eglcorearb_vertexAttribDivisor);
/* GL_VERSION_4_0 */
EXDL_API(eglcorearb_minSampleShading);
EXDL_API(eglcorearb_blendEquationi);
EXDL_API(eglcorearb_blendEquationSeparatei);
EXDL_API(eglcorearb_blendFunci);
EXDL_API(eglcorearb_blendFuncSeparatei);
/* GL_VERSION_4_1 */
/* GL_ARB_depth_buffer_float */
/* GL_ARB_framebuffer_object */
EXDL_API(eglcorearb_isRenderbuffer);
EXDL_API(eglcorearb_bindRenderbuffer);
EXDL_API(eglcorearb_deleteRenderbuffers);
EXDL_API(eglcorearb_genRenderbuffers);
EXDL_API(eglcorearb_renderbufferStorage);
EXDL_API(eglcorearb_getRenderbufferParameteriv);
EXDL_API(eglcorearb_isFramebuffer);
EXDL_API(eglcorearb_bindFramebuffer);
EXDL_API(eglcorearb_deleteFramebuffers);
EXDL_API(eglcorearb_genFramebuffers);
EXDL_API(eglcorearb_checkFramebufferStatus);
EXDL_API(eglcorearb_framebufferTexture1D);
EXDL_API(eglcorearb_framebufferTexture2D);
EXDL_API(eglcorearb_framebufferTexture3D);
EXDL_API(eglcorearb_framebufferRenderbuffer);
EXDL_API(eglcorearb_getFramebufferAttachmentParameteriv);
EXDL_API(eglcorearb_generateMipmap);
EXDL_API(eglcorearb_blitFramebuffer);
EXDL_API(eglcorearb_renderbufferStorageMultisample);
EXDL_API(eglcorearb_framebufferTextureLayer);
/* GL_ARB_map_buffer_range */
EXDL_API(eglcorearb_mapBufferRange);
EXDL_API(eglcorearb_flushMappedBufferRange);
/* GL_ARB_vertex_array_object */
EXDL_API(eglcorearb_bindVertexArray);
EXDL_API(eglcorearb_deleteVertexArrays);
EXDL_API(eglcorearb_genVertexArrays);
EXDL_API(eglcorearb_isVertexArray);
/* GL_ARB_uniform_buffer_object */
EXDL_API(eglcorearb_getUniformIndices);
EXDL_API(eglcorearb_getActiveUniformsiv);
EXDL_API(eglcorearb_getActiveUniformName);
EXDL_API(eglcorearb_getUniformBlockIndex);
EXDL_API(eglcorearb_getActiveUniformBlockiv);
EXDL_API(eglcorearb_getActiveUniformBlockName);
EXDL_API(eglcorearb_uniformBlockBinding);
/* GL_ARB_copy_buffer */
EXDL_API(eglcorearb_copyBufferSubData);
/* GL_ARB_draw_elements_base_vertex */
EXDL_API(eglcorearb_drawElementsBaseVertex);
EXDL_API(eglcorearb_drawRangeElementsBaseVertex);
EXDL_API(eglcorearb_drawElementsInstancedBaseVertex);
EXDL_API(eglcorearb_multiDrawElementsBaseVertex);
/* GL_ARB_provoking_vertex */
EXDL_API(eglcorearb_provokingVertex);
/* GL_ARB_sync */
EXDL_API(eglcorearb_fenceSync);
EXDL_API(eglcorearb_isSync);
EXDL_API(eglcorearb_deleteSync);
EXDL_API(eglcorearb_clientWaitSync);
EXDL_API(eglcorearb_waitSync);
EXDL_API(eglcorearb_getInteger64v);
EXDL_API(eglcorearb_getSynciv);
/* GL_ARB_texture_multisample */
EXDL_API(eglcorearb_texImage2DMultisample);
EXDL_API(eglcorearb_texImage3DMultisample);
EXDL_API(eglcorearb_getMultisamplefv);
EXDL_API(eglcorearb_sampleMaski);
/* GL_ARB_draw_buffers_blend */
EXDL_API(eglcorearb_blendEquationiARB);
EXDL_API(eglcorearb_blendEquationSeparateiARB);
EXDL_API(eglcorearb_blendFunciARB);
EXDL_API(eglcorearb_blendFuncSeparateiARB);
/* GL_ARB_sample_shading */
EXDL_API(eglcorearb_minSampleShadingARB);
/* GL_ARB_texture_cube_map_array */
/* GL_ARB_texture_gather */
/* GL_ARB_texture_query_lod */
/* GL_ARB_shading_language_include */
EXDL_API(eglcorearb_namedStringARB);
EXDL_API(eglcorearb_deleteNamedStringARB);
EXDL_API(eglcorearb_compileShaderIncludeARB);
EXDL_API(eglcorearb_isNamedStringARB);
EXDL_API(eglcorearb_getNamedStringARB);
EXDL_API(eglcorearb_getNamedStringivARB);
/* GL_ARB_texture_compression_bptc */
/* GL_ARB_blend_func_extended */
EXDL_API(eglcorearb_bindFragDataLocationIndexed);
EXDL_API(eglcorearb_getFragDataIndex);
/* GL_ARB_explicit_attrib_location */
/* GL_ARB_occlusion_query2 */
/* GL_ARB_sampler_objects */
EXDL_API(eglcorearb_genSamplers);
EXDL_API(eglcorearb_deleteSamplers);
EXDL_API(eglcorearb_isSampler);
EXDL_API(eglcorearb_bindSampler);
EXDL_API(eglcorearb_samplerParameteri);
EXDL_API(eglcorearb_samplerParameteriv);
EXDL_API(eglcorearb_samplerParameterf);
EXDL_API(eglcorearb_samplerParameterfv);
EXDL_API(eglcorearb_samplerParameterIiv);
EXDL_API(eglcorearb_samplerParameterIuiv);
EXDL_API(eglcorearb_getSamplerParameteriv);
EXDL_API(eglcorearb_getSamplerParameterIiv);
EXDL_API(eglcorearb_getSamplerParameterfv);
EXDL_API(eglcorearb_getSamplerParameterIuiv);
/* GL_ARB_texture_rgb10_a2ui */
/* GL_ARB_texture_swizzle */
/* GL_ARB_timer_query */
EXDL_API(eglcorearb_queryCounter);
EXDL_API(eglcorearb_getQueryObjecti64v);
EXDL_API(eglcorearb_getQueryObjectui64v);
/* GL_ARB_vertex_type_2_10_10_10_rev */
EXDL_API(eglcorearb_vertexP2ui);
EXDL_API(eglcorearb_vertexP2uiv);
EXDL_API(eglcorearb_vertexP3ui);
EXDL_API(eglcorearb_vertexP3uiv);
EXDL_API(eglcorearb_vertexP4ui);
EXDL_API(eglcorearb_vertexP4uiv);
EXDL_API(eglcorearb_texCoordP1ui);
EXDL_API(eglcorearb_texCoordP1uiv);
EXDL_API(eglcorearb_texCoordP2ui);
EXDL_API(eglcorearb_texCoordP2uiv);
EXDL_API(eglcorearb_texCoordP3ui);
EXDL_API(eglcorearb_texCoordP3uiv);
EXDL_API(eglcorearb_texCoordP4ui);
EXDL_API(eglcorearb_texCoordP4uiv);
EXDL_API(eglcorearb_multiTexCoordP1ui);
EXDL_API(eglcorearb_multiTexCoordP1uiv);
EXDL_API(eglcorearb_multiTexCoordP2ui);
EXDL_API(eglcorearb_multiTexCoordP2uiv);
EXDL_API(eglcorearb_multiTexCoordP3ui);
EXDL_API(eglcorearb_multiTexCoordP3uiv);
EXDL_API(eglcorearb_multiTexCoordP4ui);
EXDL_API(eglcorearb_multiTexCoordP4uiv);
EXDL_API(eglcorearb_normalP3ui);
EXDL_API(eglcorearb_normalP3uiv);
EXDL_API(eglcorearb_colorP3ui);
EXDL_API(eglcorearb_colorP3uiv);
EXDL_API(eglcorearb_colorP4ui);
EXDL_API(eglcorearb_colorP4uiv);
EXDL_API(eglcorearb_secondaryColorP3ui);
EXDL_API(eglcorearb_secondaryColorP3uiv);
EXDL_API(eglcorearb_vertexAttribP1ui);
EXDL_API(eglcorearb_vertexAttribP1uiv);
EXDL_API(eglcorearb_vertexAttribP2ui);
EXDL_API(eglcorearb_vertexAttribP2uiv);
EXDL_API(eglcorearb_vertexAttribP3ui);
EXDL_API(eglcorearb_vertexAttribP3uiv);
EXDL_API(eglcorearb_vertexAttribP4ui);
EXDL_API(eglcorearb_vertexAttribP4uiv);
/* GL_ARB_draw_indirect */
EXDL_API(eglcorearb_drawArraysIndirect);
EXDL_API(eglcorearb_drawElementsIndirect);
/* GL_ARB_gpu_shader5 */
/* GL_ARB_gpu_shader_fp64 */
EXDL_API(eglcorearb_uniform1d);
EXDL_API(eglcorearb_uniform2d);
EXDL_API(eglcorearb_uniform3d);
EXDL_API(eglcorearb_uniform4d);
EXDL_API(eglcorearb_uniform1dv);
EXDL_API(eglcorearb_uniform2dv);
EXDL_API(eglcorearb_uniform3dv);
EXDL_API(eglcorearb_uniform4dv);
EXDL_API(eglcorearb_uniformMatrix2dv);
EXDL_API(eglcorearb_uniformMatrix3dv);
EXDL_API(eglcorearb_uniformMatrix4dv);
EXDL_API(eglcorearb_uniformMatrix2x3dv);
EXDL_API(eglcorearb_uniformMatrix2x4dv);
EXDL_API(eglcorearb_uniformMatrix3x2dv);
EXDL_API(eglcorearb_uniformMatrix3x4dv);
EXDL_API(eglcorearb_uniformMatrix4x2dv);
EXDL_API(eglcorearb_uniformMatrix4x3dv);
EXDL_API(eglcorearb_getUniformdv);
/* GL_ARB_shader_subroutine */
EXDL_API(eglcorearb_getSubroutineUniformLocation);
EXDL_API(eglcorearb_getSubroutineIndex);
EXDL_API(eglcorearb_getActiveSubroutineUniformiv);
EXDL_API(eglcorearb_getActiveSubroutineUniformName);
EXDL_API(eglcorearb_getActiveSubroutineName);
EXDL_API(eglcorearb_uniformSubroutinesuiv);
EXDL_API(eglcorearb_getUniformSubroutineuiv);
EXDL_API(eglcorearb_getProgramStageiv);
/* GL_ARB_tessellation_shader */
EXDL_API(eglcorearb_patchParameteri);
EXDL_API(eglcorearb_patchParameterfv);
/* GL_ARB_texture_buffer_object_rgb32 */
/* GL_ARB_transform_feedback2 */
EXDL_API(eglcorearb_bindTransformFeedback);
EXDL_API(eglcorearb_deleteTransformFeedbacks);
EXDL_API(eglcorearb_genTransformFeedbacks);
EXDL_API(eglcorearb_isTransformFeedback);
EXDL_API(eglcorearb_pauseTransformFeedback);
EXDL_API(eglcorearb_resumeTransformFeedback);
EXDL_API(eglcorearb_drawTransformFeedback);
/* GL_ARB_transform_feedback3 */
EXDL_API(eglcorearb_drawTransformFeedbackStream);
EXDL_API(eglcorearb_beginQueryIndexed);
EXDL_API(eglcorearb_endQueryIndexed);
EXDL_API(eglcorearb_getQueryIndexediv);
/* GL_ARB_ES2_compatibility */
EXDL_API(eglcorearb_releaseShaderCompiler);
EXDL_API(eglcorearb_shaderBinary);
EXDL_API(eglcorearb_getShaderPrecisionFormat);
EXDL_API(eglcorearb_depthRangef);
EXDL_API(eglcorearb_clearDepthf);
/* GL_ARB_get_program_binary */
EXDL_API(eglcorearb_getProgramBinary);
EXDL_API(eglcorearb_programBinary);
EXDL_API(eglcorearb_programParameteri);
/* GL_ARB_separate_shader_objects */
EXDL_API(eglcorearb_useProgramStages);
EXDL_API(eglcorearb_activeShaderProgram);
EXDL_API(eglcorearb_createShaderProgramv);
EXDL_API(eglcorearb_bindProgramPipeline);
EXDL_API(eglcorearb_deleteProgramPipelines);
EXDL_API(eglcorearb_genProgramPipelines);
EXDL_API(eglcorearb_isProgramPipeline);
EXDL_API(eglcorearb_getProgramPipelineiv);
EXDL_API(eglcorearb_programUniform1i);
EXDL_API(eglcorearb_programUniform1iv);
EXDL_API(eglcorearb_programUniform1f);
EXDL_API(eglcorearb_programUniform1fv);
EXDL_API(eglcorearb_programUniform1d);
EXDL_API(eglcorearb_programUniform1dv);
EXDL_API(eglcorearb_programUniform1ui);
EXDL_API(eglcorearb_programUniform1uiv);
EXDL_API(eglcorearb_programUniform2i);
EXDL_API(eglcorearb_programUniform2iv);
EXDL_API(eglcorearb_programUniform2f);
EXDL_API(eglcorearb_programUniform2fv);
EXDL_API(eglcorearb_programUniform2d);
EXDL_API(eglcorearb_programUniform2dv);
EXDL_API(eglcorearb_programUniform2ui);
EXDL_API(eglcorearb_programUniform2uiv);
EXDL_API(eglcorearb_programUniform3i);
EXDL_API(eglcorearb_programUniform3iv);
EXDL_API(eglcorearb_programUniform3f);
EXDL_API(eglcorearb_programUniform3fv);
EXDL_API(eglcorearb_programUniform3d);
EXDL_API(eglcorearb_programUniform3dv);
EXDL_API(eglcorearb_programUniform3ui);
EXDL_API(eglcorearb_programUniform3uiv);
EXDL_API(eglcorearb_programUniform4i);
EXDL_API(eglcorearb_programUniform4iv);
EXDL_API(eglcorearb_programUniform4f);
EXDL_API(eglcorearb_programUniform4fv);
EXDL_API(eglcorearb_programUniform4d);
EXDL_API(eglcorearb_programUniform4dv);
EXDL_API(eglcorearb_programUniform4ui);
EXDL_API(eglcorearb_programUniform4uiv);
EXDL_API(eglcorearb_programUniformMatrix2fv);
EXDL_API(eglcorearb_programUniformMatrix3fv);
EXDL_API(eglcorearb_programUniformMatrix4fv);
EXDL_API(eglcorearb_programUniformMatrix2dv);
EXDL_API(eglcorearb_programUniformMatrix3dv);
EXDL_API(eglcorearb_programUniformMatrix4dv);
EXDL_API(eglcorearb_programUniformMatrix2x3fv);
EXDL_API(eglcorearb_programUniformMatrix3x2fv);
EXDL_API(eglcorearb_programUniformMatrix2x4fv);
EXDL_API(eglcorearb_programUniformMatrix4x2fv);
EXDL_API(eglcorearb_programUniformMatrix3x4fv);
EXDL_API(eglcorearb_programUniformMatrix4x3fv);
EXDL_API(eglcorearb_programUniformMatrix2x3dv);
EXDL_API(eglcorearb_programUniformMatrix3x2dv);
EXDL_API(eglcorearb_programUniformMatrix2x4dv);
EXDL_API(eglcorearb_programUniformMatrix4x2dv);
EXDL_API(eglcorearb_programUniformMatrix3x4dv);
EXDL_API(eglcorearb_programUniformMatrix4x3dv);
EXDL_API(eglcorearb_validateProgramPipeline);
EXDL_API(eglcorearb_getProgramPipelineInfoLog);
/* GL_ARB_vertex_attrib_64bit */
EXDL_API(eglcorearb_vertexAttribL1d);
EXDL_API(eglcorearb_vertexAttribL2d);
EXDL_API(eglcorearb_vertexAttribL3d);
EXDL_API(eglcorearb_vertexAttribL4d);
EXDL_API(eglcorearb_vertexAttribL1dv);
EXDL_API(eglcorearb_vertexAttribL2dv);
EXDL_API(eglcorearb_vertexAttribL3dv);
EXDL_API(eglcorearb_vertexAttribL4dv);
EXDL_API(eglcorearb_vertexAttribLPointer);
EXDL_API(eglcorearb_getVertexAttribLdv);
/* GL_ARB_viewport_array */
EXDL_API(eglcorearb_viewportArrayv);
EXDL_API(eglcorearb_viewportIndexedf);
EXDL_API(eglcorearb_viewportIndexedfv);
EXDL_API(eglcorearb_scissorArrayv);
EXDL_API(eglcorearb_scissorIndexed);
EXDL_API(eglcorearb_scissorIndexedv);
EXDL_API(eglcorearb_depthRangeArrayv);
EXDL_API(eglcorearb_depthRangeIndexed);
EXDL_API(eglcorearb_getFloati_v);
EXDL_API(eglcorearb_getDoublei_v);
/* GL_ARB_cl_event */
EXDL_API(eglcorearb_createSyncFromCLeventARB);
/* GL_ARB_debug_output */
EXDL_API(eglcorearb_debugMessageControlARB);
EXDL_API(eglcorearb_debugMessageInsertARB);
EXDL_API(eglcorearb_debugMessageCallbackARB);
EXDL_API(eglcorearb_getDebugMessageLogARB);
/* GL_ARB_robustness */
EXDL_API(eglcorearb_getGraphicsResetStatusARB);
EXDL_API(eglcorearb_getnMapdvARB);
EXDL_API(eglcorearb_getnMapfvARB);
EXDL_API(eglcorearb_getnMapivARB);
EXDL_API(eglcorearb_getnPixelMapfvARB);
EXDL_API(eglcorearb_getnPixelMapuivARB);
EXDL_API(eglcorearb_getnPixelMapusvARB);
EXDL_API(eglcorearb_getnPolygonStippleARB);
EXDL_API(eglcorearb_getnColorTableARB);
EXDL_API(eglcorearb_getnConvolutionFilterARB);
EXDL_API(eglcorearb_getnSeparableFilterARB);
EXDL_API(eglcorearb_getnHistogramARB);
EXDL_API(eglcorearb_getnMinmaxARB);
EXDL_API(eglcorearb_getnTexImageARB);
EXDL_API(eglcorearb_readnPixelsARB);
EXDL_API(eglcorearb_getnCompressedTexImageARB);
EXDL_API(eglcorearb_getnUniformfvARB);
EXDL_API(eglcorearb_getnUniformivARB);
EXDL_API(eglcorearb_getnUniformuivARB);
EXDL_API(eglcorearb_getnUniformdvARB);
/* GL_ARB_shader_stencil_export */
/* GL_ARB_base_instance */
EXDL_API(eglcorearb_drawArraysInstancedBaseInstance);
EXDL_API(eglcorearb_drawElementsInstancedBaseInstance);
EXDL_API(eglcorearb_drawElementsInstancedBaseVertexBaseInstance);
/* GL_ARB_shading_language_420pack */
/* GL_ARB_transform_feedback_instanced */
EXDL_API(eglcorearb_drawTransformFeedbackInstanced);
EXDL_API(eglcorearb_drawTransformFeedbackStreamInstanced);
/* GL_ARB_compressed_texture_pixel_storage */
/* GL_ARB_conservative_depth */
/* GL_ARB_internalformat_query */
EXDL_API(eglcorearb_getInternalformativ);
/* GL_ARB_map_buffer_alignment */
/* GL_ARB_shader_atomic_counters */
EXDL_API(eglcorearb_getActiveAtomicCounterBufferiv);
/* GL_ARB_shader_image_load_store */
EXDL_API(eglcorearb_bindImageTexture);
EXDL_API(eglcorearb_memoryBarrier);
/* GL_ARB_shading_language_packing */
/* GL_ARB_texture_storage */
EXDL_API(eglcorearb_texStorage1D);
EXDL_API(eglcorearb_texStorage2D);
EXDL_API(eglcorearb_texStorage3D);
EXDL_API(eglcorearb_textureStorage1DEXT);
EXDL_API(eglcorearb_textureStorage2DEXT);
EXDL_API(eglcorearb_textureStorage3DEXT);

#else // COMPILE_GLCOREARB

  enum { _ENUM_EXDL_GLCOREARB = EXDL_GLCOREARB_H };

#endif // COMPILE_GLCOREARB

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
