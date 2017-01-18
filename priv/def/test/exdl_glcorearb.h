/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_glcorearb.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
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
/* GL_VERSION_4_2 */
/* GL_VERSION_4_3 */
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
/* GL_KHR_texture_compression_astc_ldr */
/* GL_KHR_debug */
  , glDebugMessageControl_ENUM
  , glDebugMessageInsert_ENUM
  , glDebugMessageCallback_ENUM
  , glGetDebugMessageLog_ENUM
  , glPushDebugGroup_ENUM
  , glPopDebugGroup_ENUM
  , glObjectLabel_ENUM
  , glGetObjectLabel_ENUM
  , glObjectPtrLabel_ENUM
  , glGetObjectPtrLabel_ENUM
/* GL_ARB_arrays_of_arrays */
/* GL_ARB_clear_buffer_object */
  , glClearBufferData_ENUM
  , glClearBufferSubData_ENUM
  , glClearNamedBufferDataEXT_ENUM
  , glClearNamedBufferSubDataEXT_ENUM
/* GL_ARB_compute_shader */
  , glDispatchCompute_ENUM
  , glDispatchComputeIndirect_ENUM
/* GL_ARB_copy_image */
  , glCopyImageSubData_ENUM
/* GL_ARB_texture_view */
  , glTextureView_ENUM
/* GL_ARB_vertex_attrib_binding */
  , glBindVertexBuffer_ENUM
  , glVertexAttribFormat_ENUM
  , glVertexAttribIFormat_ENUM
  , glVertexAttribLFormat_ENUM
  , glVertexAttribBinding_ENUM
  , glVertexBindingDivisor_ENUM
  , glVertexArrayBindVertexBufferEXT_ENUM
  , glVertexArrayVertexAttribFormatEXT_ENUM
  , glVertexArrayVertexAttribIFormatEXT_ENUM
  , glVertexArrayVertexAttribLFormatEXT_ENUM
  , glVertexArrayVertexAttribBindingEXT_ENUM
  , glVertexArrayVertexBindingDivisorEXT_ENUM
/* GL_ARB_robustness_isolation */
/* GL_ARB_ES3_compatibility */
/* GL_ARB_explicit_uniform_location */
/* GL_ARB_fragment_layer_viewport */
/* GL_ARB_framebuffer_no_attachments */
  , glFramebufferParameteri_ENUM
  , glGetFramebufferParameteriv_ENUM
  , glNamedFramebufferParameteriEXT_ENUM
  , glGetNamedFramebufferParameterivEXT_ENUM
/* GL_ARB_internalformat_query2 */
  , glGetInternalformati64v_ENUM
/* GL_ARB_invalidate_subdata */
  , glInvalidateTexSubImage_ENUM
  , glInvalidateTexImage_ENUM
  , glInvalidateBufferSubData_ENUM
  , glInvalidateBufferData_ENUM
  , glInvalidateFramebuffer_ENUM
  , glInvalidateSubFramebuffer_ENUM
/* GL_ARB_multi_draw_indirect */
  , glMultiDrawArraysIndirect_ENUM
  , glMultiDrawElementsIndirect_ENUM
/* GL_ARB_program_interface_query */
  , glGetProgramInterfaceiv_ENUM
  , glGetProgramResourceIndex_ENUM
  , glGetProgramResourceName_ENUM
  , glGetProgramResourceiv_ENUM
  , glGetProgramResourceLocation_ENUM
  , glGetProgramResourceLocationIndex_ENUM
/* GL_ARB_robust_buffer_access_behavior */
/* GL_ARB_shader_image_size */
/* GL_ARB_shader_storage_buffer_object */
  , glShaderStorageBlockBinding_ENUM
/* GL_ARB_stencil_texturing */
/* GL_ARB_texture_buffer_range */
  , glTexBufferRange_ENUM
  , glTextureBufferRangeEXT_ENUM
/* GL_ARB_texture_query_levels */
/* GL_ARB_texture_storage_multisample */
  , glTexStorage2DMultisample_ENUM
  , glTexStorage3DMultisample_ENUM
  , glTextureStorage2DMultisampleEXT_ENUM
  , glTextureStorage3DMultisampleEXT_ENUM
  , _ENUM_EXDL_GLCOREARB
  };


/* GL_VERSION_1_0 */
EXDL_API(eglc_cullFace);
EXDL_API(eglc_frontFace);
EXDL_API(eglc_hint);
EXDL_API(eglc_lineWidth);
EXDL_API(eglc_pointSize);
EXDL_API(eglc_polygonMode);
EXDL_API(eglc_scissor);
EXDL_API(eglc_texParameterf);
EXDL_API(eglc_texParameterfv);
EXDL_API(eglc_texParameteri);
EXDL_API(eglc_texParameteriv);
EXDL_API(eglc_texImage1D);
EXDL_API(eglc_texImage2D);
EXDL_API(eglc_drawBuffer);
EXDL_API(eglc_clear);
EXDL_API(eglc_clearColor);
EXDL_API(eglc_clearStencil);
EXDL_API(eglc_clearDepth);
EXDL_API(eglc_stencilMask);
EXDL_API(eglc_colorMask);
EXDL_API(eglc_depthMask);
EXDL_API(eglc_disable);
EXDL_API(eglc_enable);
EXDL_API(eglc_finish);
EXDL_API(eglc_flush);
EXDL_API(eglc_blendFunc);
EXDL_API(eglc_logicOp);
EXDL_API(eglc_stencilFunc);
EXDL_API(eglc_stencilOp);
EXDL_API(eglc_depthFunc);
EXDL_API(eglc_pixelStoref);
EXDL_API(eglc_pixelStorei);
EXDL_API(eglc_readBuffer);
EXDL_API(eglc_readPixels);
EXDL_API(eglc_getBooleanv);
EXDL_API(eglc_getDoublev);
EXDL_API(eglc_getError);
EXDL_API(eglc_getFloatv);
EXDL_API(eglc_getIntegerv);
EXDL_API(eglc_getString);
EXDL_API(eglc_getTexImage);
EXDL_API(eglc_getTexParameterfv);
EXDL_API(eglc_getTexParameteriv);
EXDL_API(eglc_getTexLevelParameterfv);
EXDL_API(eglc_getTexLevelParameteriv);
EXDL_API(eglc_isEnabled);
EXDL_API(eglc_depthRange);
EXDL_API(eglc_viewport);
/* GL_VERSION_1_1 */
EXDL_API(eglc_drawArrays);
EXDL_API(eglc_drawElements);
EXDL_API(eglc_getPointerv);
EXDL_API(eglc_polygonOffset);
EXDL_API(eglc_copyTexImage1D);
EXDL_API(eglc_copyTexImage2D);
EXDL_API(eglc_copyTexSubImage1D);
EXDL_API(eglc_copyTexSubImage2D);
EXDL_API(eglc_texSubImage1D);
EXDL_API(eglc_texSubImage2D);
EXDL_API(eglc_bindTexture);
EXDL_API(eglc_deleteTextures);
EXDL_API(eglc_genTextures);
EXDL_API(eglc_isTexture);
/* GL_VERSION_1_2 */
EXDL_API(eglc_blendColor);
EXDL_API(eglc_blendEquation);
EXDL_API(eglc_drawRangeElements);
EXDL_API(eglc_texImage3D);
EXDL_API(eglc_texSubImage3D);
EXDL_API(eglc_copyTexSubImage3D);
/* GL_VERSION_1_3 */
EXDL_API(eglc_activeTexture);
EXDL_API(eglc_sampleCoverage);
EXDL_API(eglc_compressedTexImage3D);
EXDL_API(eglc_compressedTexImage2D);
EXDL_API(eglc_compressedTexImage1D);
EXDL_API(eglc_compressedTexSubImage3D);
EXDL_API(eglc_compressedTexSubImage2D);
EXDL_API(eglc_compressedTexSubImage1D);
EXDL_API(eglc_getCompressedTexImage);
/* GL_VERSION_1_4 */
EXDL_API(eglc_blendFuncSeparate);
EXDL_API(eglc_multiDrawArrays);
EXDL_API(eglc_multiDrawElements);
EXDL_API(eglc_pointParameterf);
EXDL_API(eglc_pointParameterfv);
EXDL_API(eglc_pointParameteri);
EXDL_API(eglc_pointParameteriv);
/* GL_VERSION_1_5 */
EXDL_API(eglc_genQueries);
EXDL_API(eglc_deleteQueries);
EXDL_API(eglc_isQuery);
EXDL_API(eglc_beginQuery);
EXDL_API(eglc_endQuery);
EXDL_API(eglc_getQueryiv);
EXDL_API(eglc_getQueryObjectiv);
EXDL_API(eglc_getQueryObjectuiv);
EXDL_API(eglc_bindBuffer);
EXDL_API(eglc_deleteBuffers);
EXDL_API(eglc_genBuffers);
EXDL_API(eglc_isBuffer);
EXDL_API(eglc_bufferData);
EXDL_API(eglc_bufferSubData);
EXDL_API(eglc_getBufferSubData);
EXDL_API(eglc_mapBuffer);
EXDL_API(eglc_unmapBuffer);
EXDL_API(eglc_getBufferParameteriv);
EXDL_API(eglc_getBufferPointerv);
/* GL_VERSION_2_0 */
EXDL_API(eglc_blendEquationSeparate);
EXDL_API(eglc_drawBuffers);
EXDL_API(eglc_stencilOpSeparate);
EXDL_API(eglc_stencilFuncSeparate);
EXDL_API(eglc_stencilMaskSeparate);
EXDL_API(eglc_attachShader);
EXDL_API(eglc_bindAttribLocation);
EXDL_API(eglc_compileShader);
EXDL_API(eglc_createProgram);
EXDL_API(eglc_createShader);
EXDL_API(eglc_deleteProgram);
EXDL_API(eglc_deleteShader);
EXDL_API(eglc_detachShader);
EXDL_API(eglc_disableVertexAttribArray);
EXDL_API(eglc_enableVertexAttribArray);
EXDL_API(eglc_getActiveAttrib);
EXDL_API(eglc_getActiveUniform);
EXDL_API(eglc_getAttachedShaders);
EXDL_API(eglc_getAttribLocation);
EXDL_API(eglc_getProgramiv);
EXDL_API(eglc_getProgramInfoLog);
EXDL_API(eglc_getShaderiv);
EXDL_API(eglc_getShaderInfoLog);
EXDL_API(eglc_getShaderSource);
EXDL_API(eglc_getUniformLocation);
EXDL_API(eglc_getUniformfv);
EXDL_API(eglc_getUniformiv);
EXDL_API(eglc_getVertexAttribdv);
EXDL_API(eglc_getVertexAttribfv);
EXDL_API(eglc_getVertexAttribiv);
EXDL_API(eglc_getVertexAttribPointerv);
EXDL_API(eglc_isProgram);
EXDL_API(eglc_isShader);
EXDL_API(eglc_linkProgram);
EXDL_API(eglc_shaderSource);
EXDL_API(eglc_useProgram);
EXDL_API(eglc_uniform1f);
EXDL_API(eglc_uniform2f);
EXDL_API(eglc_uniform3f);
EXDL_API(eglc_uniform4f);
EXDL_API(eglc_uniform1i);
EXDL_API(eglc_uniform2i);
EXDL_API(eglc_uniform3i);
EXDL_API(eglc_uniform4i);
EXDL_API(eglc_uniform1fv);
EXDL_API(eglc_uniform2fv);
EXDL_API(eglc_uniform3fv);
EXDL_API(eglc_uniform4fv);
EXDL_API(eglc_uniform1iv);
EXDL_API(eglc_uniform2iv);
EXDL_API(eglc_uniform3iv);
EXDL_API(eglc_uniform4iv);
EXDL_API(eglc_uniformMatrix2fv);
EXDL_API(eglc_uniformMatrix3fv);
EXDL_API(eglc_uniformMatrix4fv);
EXDL_API(eglc_validateProgram);
EXDL_API(eglc_vertexAttrib1d);
EXDL_API(eglc_vertexAttrib1dv);
EXDL_API(eglc_vertexAttrib1f);
EXDL_API(eglc_vertexAttrib1fv);
EXDL_API(eglc_vertexAttrib1s);
EXDL_API(eglc_vertexAttrib1sv);
EXDL_API(eglc_vertexAttrib2d);
EXDL_API(eglc_vertexAttrib2dv);
EXDL_API(eglc_vertexAttrib2f);
EXDL_API(eglc_vertexAttrib2fv);
EXDL_API(eglc_vertexAttrib2s);
EXDL_API(eglc_vertexAttrib2sv);
EXDL_API(eglc_vertexAttrib3d);
EXDL_API(eglc_vertexAttrib3dv);
EXDL_API(eglc_vertexAttrib3f);
EXDL_API(eglc_vertexAttrib3fv);
EXDL_API(eglc_vertexAttrib3s);
EXDL_API(eglc_vertexAttrib3sv);
EXDL_API(eglc_vertexAttrib4Nbv);
EXDL_API(eglc_vertexAttrib4Niv);
EXDL_API(eglc_vertexAttrib4Nsv);
EXDL_API(eglc_vertexAttrib4Nub);
EXDL_API(eglc_vertexAttrib4Nubv);
EXDL_API(eglc_vertexAttrib4Nuiv);
EXDL_API(eglc_vertexAttrib4Nusv);
EXDL_API(eglc_vertexAttrib4bv);
EXDL_API(eglc_vertexAttrib4d);
EXDL_API(eglc_vertexAttrib4dv);
EXDL_API(eglc_vertexAttrib4f);
EXDL_API(eglc_vertexAttrib4fv);
EXDL_API(eglc_vertexAttrib4iv);
EXDL_API(eglc_vertexAttrib4s);
EXDL_API(eglc_vertexAttrib4sv);
EXDL_API(eglc_vertexAttrib4ubv);
EXDL_API(eglc_vertexAttrib4uiv);
EXDL_API(eglc_vertexAttrib4usv);
EXDL_API(eglc_vertexAttribPointer);
/* GL_VERSION_2_1 */
EXDL_API(eglc_uniformMatrix2x3fv);
EXDL_API(eglc_uniformMatrix3x2fv);
EXDL_API(eglc_uniformMatrix2x4fv);
EXDL_API(eglc_uniformMatrix4x2fv);
EXDL_API(eglc_uniformMatrix3x4fv);
EXDL_API(eglc_uniformMatrix4x3fv);
/* GL_VERSION_3_0 */
EXDL_API(eglc_colorMaski);
EXDL_API(eglc_getBooleani_v);
EXDL_API(eglc_getIntegeri_v);
EXDL_API(eglc_enablei);
EXDL_API(eglc_disablei);
EXDL_API(eglc_isEnabledi);
EXDL_API(eglc_beginTransformFeedback);
EXDL_API(eglc_endTransformFeedback);
EXDL_API(eglc_bindBufferRange);
EXDL_API(eglc_bindBufferBase);
EXDL_API(eglc_transformFeedbackVaryings);
EXDL_API(eglc_getTransformFeedbackVarying);
EXDL_API(eglc_clampColor);
EXDL_API(eglc_beginConditionalRender);
EXDL_API(eglc_endConditionalRender);
EXDL_API(eglc_vertexAttribIPointer);
EXDL_API(eglc_getVertexAttribIiv);
EXDL_API(eglc_getVertexAttribIuiv);
EXDL_API(eglc_vertexAttribI1i);
EXDL_API(eglc_vertexAttribI2i);
EXDL_API(eglc_vertexAttribI3i);
EXDL_API(eglc_vertexAttribI4i);
EXDL_API(eglc_vertexAttribI1ui);
EXDL_API(eglc_vertexAttribI2ui);
EXDL_API(eglc_vertexAttribI3ui);
EXDL_API(eglc_vertexAttribI4ui);
EXDL_API(eglc_vertexAttribI1iv);
EXDL_API(eglc_vertexAttribI2iv);
EXDL_API(eglc_vertexAttribI3iv);
EXDL_API(eglc_vertexAttribI4iv);
EXDL_API(eglc_vertexAttribI1uiv);
EXDL_API(eglc_vertexAttribI2uiv);
EXDL_API(eglc_vertexAttribI3uiv);
EXDL_API(eglc_vertexAttribI4uiv);
EXDL_API(eglc_vertexAttribI4bv);
EXDL_API(eglc_vertexAttribI4sv);
EXDL_API(eglc_vertexAttribI4ubv);
EXDL_API(eglc_vertexAttribI4usv);
EXDL_API(eglc_getUniformuiv);
EXDL_API(eglc_bindFragDataLocation);
EXDL_API(eglc_getFragDataLocation);
EXDL_API(eglc_uniform1ui);
EXDL_API(eglc_uniform2ui);
EXDL_API(eglc_uniform3ui);
EXDL_API(eglc_uniform4ui);
EXDL_API(eglc_uniform1uiv);
EXDL_API(eglc_uniform2uiv);
EXDL_API(eglc_uniform3uiv);
EXDL_API(eglc_uniform4uiv);
EXDL_API(eglc_texParameterIiv);
EXDL_API(eglc_texParameterIuiv);
EXDL_API(eglc_getTexParameterIiv);
EXDL_API(eglc_getTexParameterIuiv);
EXDL_API(eglc_clearBufferiv);
EXDL_API(eglc_clearBufferuiv);
EXDL_API(eglc_clearBufferfv);
EXDL_API(eglc_clearBufferfi);
EXDL_API(eglc_getStringi);
/* GL_VERSION_3_1 */
EXDL_API(eglc_drawArraysInstanced);
EXDL_API(eglc_drawElementsInstanced);
EXDL_API(eglc_texBuffer);
EXDL_API(eglc_primitiveRestartIndex);
/* GL_VERSION_3_2 */
EXDL_API(eglc_getInteger64i_v);
EXDL_API(eglc_getBufferParameteri64v);
EXDL_API(eglc_framebufferTexture);
/* GL_VERSION_3_3 */
EXDL_API(eglc_vertexAttribDivisor);
/* GL_VERSION_4_0 */
EXDL_API(eglc_minSampleShading);
EXDL_API(eglc_blendEquationi);
EXDL_API(eglc_blendEquationSeparatei);
EXDL_API(eglc_blendFunci);
EXDL_API(eglc_blendFuncSeparatei);
/* GL_VERSION_4_1 */
/* GL_VERSION_4_2 */
/* GL_VERSION_4_3 */
/* GL_ARB_depth_buffer_float */
/* GL_ARB_framebuffer_object */
EXDL_API(eglc_isRenderbuffer);
EXDL_API(eglc_bindRenderbuffer);
EXDL_API(eglc_deleteRenderbuffers);
EXDL_API(eglc_genRenderbuffers);
EXDL_API(eglc_renderbufferStorage);
EXDL_API(eglc_getRenderbufferParameteriv);
EXDL_API(eglc_isFramebuffer);
EXDL_API(eglc_bindFramebuffer);
EXDL_API(eglc_deleteFramebuffers);
EXDL_API(eglc_genFramebuffers);
EXDL_API(eglc_checkFramebufferStatus);
EXDL_API(eglc_framebufferTexture1D);
EXDL_API(eglc_framebufferTexture2D);
EXDL_API(eglc_framebufferTexture3D);
EXDL_API(eglc_framebufferRenderbuffer);
EXDL_API(eglc_getFramebufferAttachmentParameteriv);
EXDL_API(eglc_generateMipmap);
EXDL_API(eglc_blitFramebuffer);
EXDL_API(eglc_renderbufferStorageMultisample);
EXDL_API(eglc_framebufferTextureLayer);
/* GL_ARB_map_buffer_range */
EXDL_API(eglc_mapBufferRange);
EXDL_API(eglc_flushMappedBufferRange);
/* GL_ARB_vertex_array_object */
EXDL_API(eglc_bindVertexArray);
EXDL_API(eglc_deleteVertexArrays);
EXDL_API(eglc_genVertexArrays);
EXDL_API(eglc_isVertexArray);
/* GL_ARB_uniform_buffer_object */
EXDL_API(eglc_getUniformIndices);
EXDL_API(eglc_getActiveUniformsiv);
EXDL_API(eglc_getActiveUniformName);
EXDL_API(eglc_getUniformBlockIndex);
EXDL_API(eglc_getActiveUniformBlockiv);
EXDL_API(eglc_getActiveUniformBlockName);
EXDL_API(eglc_uniformBlockBinding);
/* GL_ARB_copy_buffer */
EXDL_API(eglc_copyBufferSubData);
/* GL_ARB_draw_elements_base_vertex */
EXDL_API(eglc_drawElementsBaseVertex);
EXDL_API(eglc_drawRangeElementsBaseVertex);
EXDL_API(eglc_drawElementsInstancedBaseVertex);
EXDL_API(eglc_multiDrawElementsBaseVertex);
/* GL_ARB_provoking_vertex */
EXDL_API(eglc_provokingVertex);
/* GL_ARB_sync */
EXDL_API(eglc_fenceSync);
EXDL_API(eglc_isSync);
EXDL_API(eglc_deleteSync);
EXDL_API(eglc_clientWaitSync);
EXDL_API(eglc_waitSync);
EXDL_API(eglc_getInteger64v);
EXDL_API(eglc_getSynciv);
/* GL_ARB_texture_multisample */
EXDL_API(eglc_texImage2DMultisample);
EXDL_API(eglc_texImage3DMultisample);
EXDL_API(eglc_getMultisamplefv);
EXDL_API(eglc_sampleMaski);
/* GL_ARB_draw_buffers_blend */
EXDL_API(eglc_blendEquationiARB);
EXDL_API(eglc_blendEquationSeparateiARB);
EXDL_API(eglc_blendFunciARB);
EXDL_API(eglc_blendFuncSeparateiARB);
/* GL_ARB_sample_shading */
EXDL_API(eglc_minSampleShadingARB);
/* GL_ARB_texture_cube_map_array */
/* GL_ARB_texture_gather */
/* GL_ARB_texture_query_lod */
/* GL_ARB_shading_language_include */
EXDL_API(eglc_namedStringARB);
EXDL_API(eglc_deleteNamedStringARB);
EXDL_API(eglc_compileShaderIncludeARB);
EXDL_API(eglc_isNamedStringARB);
EXDL_API(eglc_getNamedStringARB);
EXDL_API(eglc_getNamedStringivARB);
/* GL_ARB_texture_compression_bptc */
/* GL_ARB_blend_func_extended */
EXDL_API(eglc_bindFragDataLocationIndexed);
EXDL_API(eglc_getFragDataIndex);
/* GL_ARB_explicit_attrib_location */
/* GL_ARB_occlusion_query2 */
/* GL_ARB_sampler_objects */
EXDL_API(eglc_genSamplers);
EXDL_API(eglc_deleteSamplers);
EXDL_API(eglc_isSampler);
EXDL_API(eglc_bindSampler);
EXDL_API(eglc_samplerParameteri);
EXDL_API(eglc_samplerParameteriv);
EXDL_API(eglc_samplerParameterf);
EXDL_API(eglc_samplerParameterfv);
EXDL_API(eglc_samplerParameterIiv);
EXDL_API(eglc_samplerParameterIuiv);
EXDL_API(eglc_getSamplerParameteriv);
EXDL_API(eglc_getSamplerParameterIiv);
EXDL_API(eglc_getSamplerParameterfv);
EXDL_API(eglc_getSamplerParameterIuiv);
/* GL_ARB_texture_rgb10_a2ui */
/* GL_ARB_texture_swizzle */
/* GL_ARB_timer_query */
EXDL_API(eglc_queryCounter);
EXDL_API(eglc_getQueryObjecti64v);
EXDL_API(eglc_getQueryObjectui64v);
/* GL_ARB_vertex_type_2_10_10_10_rev */
EXDL_API(eglc_vertexP2ui);
EXDL_API(eglc_vertexP2uiv);
EXDL_API(eglc_vertexP3ui);
EXDL_API(eglc_vertexP3uiv);
EXDL_API(eglc_vertexP4ui);
EXDL_API(eglc_vertexP4uiv);
EXDL_API(eglc_texCoordP1ui);
EXDL_API(eglc_texCoordP1uiv);
EXDL_API(eglc_texCoordP2ui);
EXDL_API(eglc_texCoordP2uiv);
EXDL_API(eglc_texCoordP3ui);
EXDL_API(eglc_texCoordP3uiv);
EXDL_API(eglc_texCoordP4ui);
EXDL_API(eglc_texCoordP4uiv);
EXDL_API(eglc_multiTexCoordP1ui);
EXDL_API(eglc_multiTexCoordP1uiv);
EXDL_API(eglc_multiTexCoordP2ui);
EXDL_API(eglc_multiTexCoordP2uiv);
EXDL_API(eglc_multiTexCoordP3ui);
EXDL_API(eglc_multiTexCoordP3uiv);
EXDL_API(eglc_multiTexCoordP4ui);
EXDL_API(eglc_multiTexCoordP4uiv);
EXDL_API(eglc_normalP3ui);
EXDL_API(eglc_normalP3uiv);
EXDL_API(eglc_colorP3ui);
EXDL_API(eglc_colorP3uiv);
EXDL_API(eglc_colorP4ui);
EXDL_API(eglc_colorP4uiv);
EXDL_API(eglc_secondaryColorP3ui);
EXDL_API(eglc_secondaryColorP3uiv);
EXDL_API(eglc_vertexAttribP1ui);
EXDL_API(eglc_vertexAttribP1uiv);
EXDL_API(eglc_vertexAttribP2ui);
EXDL_API(eglc_vertexAttribP2uiv);
EXDL_API(eglc_vertexAttribP3ui);
EXDL_API(eglc_vertexAttribP3uiv);
EXDL_API(eglc_vertexAttribP4ui);
EXDL_API(eglc_vertexAttribP4uiv);
/* GL_ARB_draw_indirect */
EXDL_API(eglc_drawArraysIndirect);
EXDL_API(eglc_drawElementsIndirect);
/* GL_ARB_gpu_shader5 */
/* GL_ARB_gpu_shader_fp64 */
EXDL_API(eglc_uniform1d);
EXDL_API(eglc_uniform2d);
EXDL_API(eglc_uniform3d);
EXDL_API(eglc_uniform4d);
EXDL_API(eglc_uniform1dv);
EXDL_API(eglc_uniform2dv);
EXDL_API(eglc_uniform3dv);
EXDL_API(eglc_uniform4dv);
EXDL_API(eglc_uniformMatrix2dv);
EXDL_API(eglc_uniformMatrix3dv);
EXDL_API(eglc_uniformMatrix4dv);
EXDL_API(eglc_uniformMatrix2x3dv);
EXDL_API(eglc_uniformMatrix2x4dv);
EXDL_API(eglc_uniformMatrix3x2dv);
EXDL_API(eglc_uniformMatrix3x4dv);
EXDL_API(eglc_uniformMatrix4x2dv);
EXDL_API(eglc_uniformMatrix4x3dv);
EXDL_API(eglc_getUniformdv);
/* GL_ARB_shader_subroutine */
EXDL_API(eglc_getSubroutineUniformLocation);
EXDL_API(eglc_getSubroutineIndex);
EXDL_API(eglc_getActiveSubroutineUniformiv);
EXDL_API(eglc_getActiveSubroutineUniformName);
EXDL_API(eglc_getActiveSubroutineName);
EXDL_API(eglc_uniformSubroutinesuiv);
EXDL_API(eglc_getUniformSubroutineuiv);
EXDL_API(eglc_getProgramStageiv);
/* GL_ARB_tessellation_shader */
EXDL_API(eglc_patchParameteri);
EXDL_API(eglc_patchParameterfv);
/* GL_ARB_texture_buffer_object_rgb32 */
/* GL_ARB_transform_feedback2 */
EXDL_API(eglc_bindTransformFeedback);
EXDL_API(eglc_deleteTransformFeedbacks);
EXDL_API(eglc_genTransformFeedbacks);
EXDL_API(eglc_isTransformFeedback);
EXDL_API(eglc_pauseTransformFeedback);
EXDL_API(eglc_resumeTransformFeedback);
EXDL_API(eglc_drawTransformFeedback);
/* GL_ARB_transform_feedback3 */
EXDL_API(eglc_drawTransformFeedbackStream);
EXDL_API(eglc_beginQueryIndexed);
EXDL_API(eglc_endQueryIndexed);
EXDL_API(eglc_getQueryIndexediv);
/* GL_ARB_ES2_compatibility */
EXDL_API(eglc_releaseShaderCompiler);
EXDL_API(eglc_shaderBinary);
EXDL_API(eglc_getShaderPrecisionFormat);
EXDL_API(eglc_depthRangef);
EXDL_API(eglc_clearDepthf);
/* GL_ARB_get_program_binary */
EXDL_API(eglc_getProgramBinary);
EXDL_API(eglc_programBinary);
EXDL_API(eglc_programParameteri);
/* GL_ARB_separate_shader_objects */
EXDL_API(eglc_useProgramStages);
EXDL_API(eglc_activeShaderProgram);
EXDL_API(eglc_createShaderProgramv);
EXDL_API(eglc_bindProgramPipeline);
EXDL_API(eglc_deleteProgramPipelines);
EXDL_API(eglc_genProgramPipelines);
EXDL_API(eglc_isProgramPipeline);
EXDL_API(eglc_getProgramPipelineiv);
EXDL_API(eglc_programUniform1i);
EXDL_API(eglc_programUniform1iv);
EXDL_API(eglc_programUniform1f);
EXDL_API(eglc_programUniform1fv);
EXDL_API(eglc_programUniform1d);
EXDL_API(eglc_programUniform1dv);
EXDL_API(eglc_programUniform1ui);
EXDL_API(eglc_programUniform1uiv);
EXDL_API(eglc_programUniform2i);
EXDL_API(eglc_programUniform2iv);
EXDL_API(eglc_programUniform2f);
EXDL_API(eglc_programUniform2fv);
EXDL_API(eglc_programUniform2d);
EXDL_API(eglc_programUniform2dv);
EXDL_API(eglc_programUniform2ui);
EXDL_API(eglc_programUniform2uiv);
EXDL_API(eglc_programUniform3i);
EXDL_API(eglc_programUniform3iv);
EXDL_API(eglc_programUniform3f);
EXDL_API(eglc_programUniform3fv);
EXDL_API(eglc_programUniform3d);
EXDL_API(eglc_programUniform3dv);
EXDL_API(eglc_programUniform3ui);
EXDL_API(eglc_programUniform3uiv);
EXDL_API(eglc_programUniform4i);
EXDL_API(eglc_programUniform4iv);
EXDL_API(eglc_programUniform4f);
EXDL_API(eglc_programUniform4fv);
EXDL_API(eglc_programUniform4d);
EXDL_API(eglc_programUniform4dv);
EXDL_API(eglc_programUniform4ui);
EXDL_API(eglc_programUniform4uiv);
EXDL_API(eglc_programUniformMatrix2fv);
EXDL_API(eglc_programUniformMatrix3fv);
EXDL_API(eglc_programUniformMatrix4fv);
EXDL_API(eglc_programUniformMatrix2dv);
EXDL_API(eglc_programUniformMatrix3dv);
EXDL_API(eglc_programUniformMatrix4dv);
EXDL_API(eglc_programUniformMatrix2x3fv);
EXDL_API(eglc_programUniformMatrix3x2fv);
EXDL_API(eglc_programUniformMatrix2x4fv);
EXDL_API(eglc_programUniformMatrix4x2fv);
EXDL_API(eglc_programUniformMatrix3x4fv);
EXDL_API(eglc_programUniformMatrix4x3fv);
EXDL_API(eglc_programUniformMatrix2x3dv);
EXDL_API(eglc_programUniformMatrix3x2dv);
EXDL_API(eglc_programUniformMatrix2x4dv);
EXDL_API(eglc_programUniformMatrix4x2dv);
EXDL_API(eglc_programUniformMatrix3x4dv);
EXDL_API(eglc_programUniformMatrix4x3dv);
EXDL_API(eglc_validateProgramPipeline);
EXDL_API(eglc_getProgramPipelineInfoLog);
/* GL_ARB_vertex_attrib_64bit */
EXDL_API(eglc_vertexAttribL1d);
EXDL_API(eglc_vertexAttribL2d);
EXDL_API(eglc_vertexAttribL3d);
EXDL_API(eglc_vertexAttribL4d);
EXDL_API(eglc_vertexAttribL1dv);
EXDL_API(eglc_vertexAttribL2dv);
EXDL_API(eglc_vertexAttribL3dv);
EXDL_API(eglc_vertexAttribL4dv);
EXDL_API(eglc_vertexAttribLPointer);
EXDL_API(eglc_getVertexAttribLdv);
/* GL_ARB_viewport_array */
EXDL_API(eglc_viewportArrayv);
EXDL_API(eglc_viewportIndexedf);
EXDL_API(eglc_viewportIndexedfv);
EXDL_API(eglc_scissorArrayv);
EXDL_API(eglc_scissorIndexed);
EXDL_API(eglc_scissorIndexedv);
EXDL_API(eglc_depthRangeArrayv);
EXDL_API(eglc_depthRangeIndexed);
EXDL_API(eglc_getFloati_v);
EXDL_API(eglc_getDoublei_v);
/* GL_ARB_cl_event */
EXDL_API(eglc_createSyncFromCLeventARB);
/* GL_ARB_debug_output */
EXDL_API(eglc_debugMessageControlARB);
EXDL_API(eglc_debugMessageInsertARB);
EXDL_API(eglc_debugMessageCallbackARB);
EXDL_API(eglc_getDebugMessageLogARB);
/* GL_ARB_robustness */
EXDL_API(eglc_getGraphicsResetStatusARB);
EXDL_API(eglc_getnTexImageARB);
EXDL_API(eglc_readnPixelsARB);
EXDL_API(eglc_getnCompressedTexImageARB);
EXDL_API(eglc_getnUniformfvARB);
EXDL_API(eglc_getnUniformivARB);
EXDL_API(eglc_getnUniformuivARB);
EXDL_API(eglc_getnUniformdvARB);
/* GL_ARB_shader_stencil_export */
/* GL_ARB_base_instance */
EXDL_API(eglc_drawArraysInstancedBaseInstance);
EXDL_API(eglc_drawElementsInstancedBaseInstance);
EXDL_API(eglc_drawElementsInstancedBaseVertexBaseInstance);
/* GL_ARB_shading_language_420pack */
/* GL_ARB_transform_feedback_instanced */
EXDL_API(eglc_drawTransformFeedbackInstanced);
EXDL_API(eglc_drawTransformFeedbackStreamInstanced);
/* GL_ARB_compressed_texture_pixel_storage */
/* GL_ARB_conservative_depth */
/* GL_ARB_internalformat_query */
EXDL_API(eglc_getInternalformativ);
/* GL_ARB_map_buffer_alignment */
/* GL_ARB_shader_atomic_counters */
EXDL_API(eglc_getActiveAtomicCounterBufferiv);
/* GL_ARB_shader_image_load_store */
EXDL_API(eglc_bindImageTexture);
EXDL_API(eglc_memoryBarrier);
/* GL_ARB_shading_language_packing */
/* GL_ARB_texture_storage */
EXDL_API(eglc_texStorage1D);
EXDL_API(eglc_texStorage2D);
EXDL_API(eglc_texStorage3D);
EXDL_API(eglc_textureStorage1DEXT);
EXDL_API(eglc_textureStorage2DEXT);
EXDL_API(eglc_textureStorage3DEXT);
/* GL_KHR_texture_compression_astc_ldr */
/* GL_KHR_debug */
EXDL_API(eglc_debugMessageControl);
EXDL_API(eglc_debugMessageInsert);
EXDL_API(eglc_debugMessageCallback);
EXDL_API(eglc_getDebugMessageLog);
EXDL_API(eglc_pushDebugGroup);
EXDL_API(eglc_popDebugGroup);
EXDL_API(eglc_objectLabel);
EXDL_API(eglc_getObjectLabel);
EXDL_API(eglc_objectPtrLabel);
EXDL_API(eglc_getObjectPtrLabel);
/* GL_ARB_arrays_of_arrays */
/* GL_ARB_clear_buffer_object */
EXDL_API(eglc_clearBufferData);
EXDL_API(eglc_clearBufferSubData);
EXDL_API(eglc_clearNamedBufferDataEXT);
EXDL_API(eglc_clearNamedBufferSubDataEXT);
/* GL_ARB_compute_shader */
EXDL_API(eglc_dispatchCompute);
EXDL_API(eglc_dispatchComputeIndirect);
/* GL_ARB_copy_image */
EXDL_API(eglc_copyImageSubData);
/* GL_ARB_texture_view */
EXDL_API(eglc_textureView);
/* GL_ARB_vertex_attrib_binding */
EXDL_API(eglc_bindVertexBuffer);
EXDL_API(eglc_vertexAttribFormat);
EXDL_API(eglc_vertexAttribIFormat);
EXDL_API(eglc_vertexAttribLFormat);
EXDL_API(eglc_vertexAttribBinding);
EXDL_API(eglc_vertexBindingDivisor);
EXDL_API(eglc_vertexArrayBindVertexBufferEXT);
EXDL_API(eglc_vertexArrayVertexAttribFormatEXT);
EXDL_API(eglc_vertexArrayVertexAttribIFormatEXT);
EXDL_API(eglc_vertexArrayVertexAttribLFormatEXT);
EXDL_API(eglc_vertexArrayVertexAttribBindingEXT);
EXDL_API(eglc_vertexArrayVertexBindingDivisorEXT);
/* GL_ARB_robustness_isolation */
/* GL_ARB_ES3_compatibility */
/* GL_ARB_explicit_uniform_location */
/* GL_ARB_fragment_layer_viewport */
/* GL_ARB_framebuffer_no_attachments */
EXDL_API(eglc_framebufferParameteri);
EXDL_API(eglc_getFramebufferParameteriv);
EXDL_API(eglc_namedFramebufferParameteriEXT);
EXDL_API(eglc_getNamedFramebufferParameterivEXT);
/* GL_ARB_internalformat_query2 */
EXDL_API(eglc_getInternalformati64v);
/* GL_ARB_invalidate_subdata */
EXDL_API(eglc_invalidateTexSubImage);
EXDL_API(eglc_invalidateTexImage);
EXDL_API(eglc_invalidateBufferSubData);
EXDL_API(eglc_invalidateBufferData);
EXDL_API(eglc_invalidateFramebuffer);
EXDL_API(eglc_invalidateSubFramebuffer);
/* GL_ARB_multi_draw_indirect */
EXDL_API(eglc_multiDrawArraysIndirect);
EXDL_API(eglc_multiDrawElementsIndirect);
/* GL_ARB_program_interface_query */
EXDL_API(eglc_getProgramInterfaceiv);
EXDL_API(eglc_getProgramResourceIndex);
EXDL_API(eglc_getProgramResourceName);
EXDL_API(eglc_getProgramResourceiv);
EXDL_API(eglc_getProgramResourceLocation);
EXDL_API(eglc_getProgramResourceLocationIndex);
/* GL_ARB_robust_buffer_access_behavior */
/* GL_ARB_shader_image_size */
/* GL_ARB_shader_storage_buffer_object */
EXDL_API(eglc_shaderStorageBlockBinding);
/* GL_ARB_stencil_texturing */
/* GL_ARB_texture_buffer_range */
EXDL_API(eglc_texBufferRange);
EXDL_API(eglc_textureBufferRangeEXT);
/* GL_ARB_texture_query_levels */
/* GL_ARB_texture_storage_multisample */
EXDL_API(eglc_texStorage2DMultisample);
EXDL_API(eglc_texStorage3DMultisample);
EXDL_API(eglc_textureStorage2DMultisampleEXT);
EXDL_API(eglc_textureStorage3DMultisampleEXT);

#else // COMPILE_GLCOREARB
  enum { _ENUM_EXDL_GLCOREARB = EXDL_GLCOREARB_H };
#endif // COMPILE_GLCOREARB

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
