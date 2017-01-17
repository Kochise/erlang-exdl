/*
 *  Copyright (c) 2005 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_glext.h,v 1.6 2005/03/04 15:15:00 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_GLEXT

#ifdef EXDL_DEFINE_EXTS
  #define EXDL_EXTERN
#else
  #define EXDL_EXTERN extern
#endif

/* For lazy, lazy compilers */
#ifndef GL_EXT_timer_query
  typedef int64_t  GLint64EXT;
  typedef uint64_t GLuint64EXT;
#endif

  enum
/* GL_VERSION_1_2 */
  { glBlendColor_ENUM = EXDL_GLEXT_H
  , glBlendEquation_ENUM
  , glDrawRangeElements_ENUM
  , glTexImage3D_ENUM
  , glTexSubImage3D_ENUM
  , glCopyTexSubImage3D_ENUM
/* GL_VERSION_1_2_DEPRECATED */
  , glColorTable_ENUM
  , glColorTableParameterfv_ENUM
  , glColorTableParameteriv_ENUM
  , glCopyColorTable_ENUM
  , glGetColorTable_ENUM
  , glGetColorTableParameterfv_ENUM
  , glGetColorTableParameteriv_ENUM
  , glColorSubTable_ENUM
  , glCopyColorSubTable_ENUM
  , glConvolutionFilter1D_ENUM
  , glConvolutionFilter2D_ENUM
  , glConvolutionParameterf_ENUM
  , glConvolutionParameterfv_ENUM
  , glConvolutionParameteri_ENUM
  , glConvolutionParameteriv_ENUM
  , glCopyConvolutionFilter1D_ENUM
  , glCopyConvolutionFilter2D_ENUM
  , glGetConvolutionFilter_ENUM
  , glGetConvolutionParameterfv_ENUM
  , glGetConvolutionParameteriv_ENUM
  , glGetSeparableFilter_ENUM
  , glSeparableFilter2D_ENUM
  , glGetHistogram_ENUM
  , glGetHistogramParameterfv_ENUM
  , glGetHistogramParameteriv_ENUM
  , glGetMinmax_ENUM
  , glGetMinmaxParameterfv_ENUM
  , glGetMinmaxParameteriv_ENUM
  , glHistogram_ENUM
  , glMinmax_ENUM
  , glResetHistogram_ENUM
  , glResetMinmax_ENUM
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
/* GL_VERSION_1_3_DEPRECATED */
  , glClientActiveTexture_ENUM
  , glMultiTexCoord1d_ENUM
  , glMultiTexCoord1dv_ENUM
  , glMultiTexCoord1f_ENUM
  , glMultiTexCoord1fv_ENUM
  , glMultiTexCoord1i_ENUM
  , glMultiTexCoord1iv_ENUM
  , glMultiTexCoord1s_ENUM
  , glMultiTexCoord1sv_ENUM
  , glMultiTexCoord2d_ENUM
  , glMultiTexCoord2dv_ENUM
  , glMultiTexCoord2f_ENUM
  , glMultiTexCoord2fv_ENUM
  , glMultiTexCoord2i_ENUM
  , glMultiTexCoord2iv_ENUM
  , glMultiTexCoord2s_ENUM
  , glMultiTexCoord2sv_ENUM
  , glMultiTexCoord3d_ENUM
  , glMultiTexCoord3dv_ENUM
  , glMultiTexCoord3f_ENUM
  , glMultiTexCoord3fv_ENUM
  , glMultiTexCoord3i_ENUM
  , glMultiTexCoord3iv_ENUM
  , glMultiTexCoord3s_ENUM
  , glMultiTexCoord3sv_ENUM
  , glMultiTexCoord4d_ENUM
  , glMultiTexCoord4dv_ENUM
  , glMultiTexCoord4f_ENUM
  , glMultiTexCoord4fv_ENUM
  , glMultiTexCoord4i_ENUM
  , glMultiTexCoord4iv_ENUM
  , glMultiTexCoord4s_ENUM
  , glMultiTexCoord4sv_ENUM
  , glLoadTransposeMatrixf_ENUM
  , glLoadTransposeMatrixd_ENUM
  , glMultTransposeMatrixf_ENUM
  , glMultTransposeMatrixd_ENUM
/* GL_VERSION_1_4 */
  , glBlendFuncSeparate_ENUM
  , glMultiDrawArrays_ENUM
  , glMultiDrawElements_ENUM
  , glPointParameterf_ENUM
  , glPointParameterfv_ENUM
  , glPointParameteri_ENUM
  , glPointParameteriv_ENUM
/* GL_VERSION_1_4_DEPRECATED */
  , glFogCoordf_ENUM
  , glFogCoordfv_ENUM
  , glFogCoordd_ENUM
  , glFogCoorddv_ENUM
  , glFogCoordPointer_ENUM
  , glSecondaryColor3b_ENUM
  , glSecondaryColor3bv_ENUM
  , glSecondaryColor3d_ENUM
  , glSecondaryColor3dv_ENUM
  , glSecondaryColor3f_ENUM
  , glSecondaryColor3fv_ENUM
  , glSecondaryColor3i_ENUM
  , glSecondaryColor3iv_ENUM
  , glSecondaryColor3s_ENUM
  , glSecondaryColor3sv_ENUM
  , glSecondaryColor3ub_ENUM
  , glSecondaryColor3ubv_ENUM
  , glSecondaryColor3ui_ENUM
  , glSecondaryColor3uiv_ENUM
  , glSecondaryColor3us_ENUM
  , glSecondaryColor3usv_ENUM
  , glSecondaryColorPointer_ENUM
  , glWindowPos2d_ENUM
  , glWindowPos2dv_ENUM
  , glWindowPos2f_ENUM
  , glWindowPos2fv_ENUM
  , glWindowPos2i_ENUM
  , glWindowPos2iv_ENUM
  , glWindowPos2s_ENUM
  , glWindowPos2sv_ENUM
  , glWindowPos3d_ENUM
  , glWindowPos3dv_ENUM
  , glWindowPos3f_ENUM
  , glWindowPos3fv_ENUM
  , glWindowPos3i_ENUM
  , glWindowPos3iv_ENUM
  , glWindowPos3s_ENUM
  , glWindowPos3sv_ENUM
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
/* GL_ARB_multitexture */
  , glActiveTextureARB_ENUM
  , glClientActiveTextureARB_ENUM
  , glMultiTexCoord1dARB_ENUM
  , glMultiTexCoord1dvARB_ENUM
  , glMultiTexCoord1fARB_ENUM
  , glMultiTexCoord1fvARB_ENUM
  , glMultiTexCoord1iARB_ENUM
  , glMultiTexCoord1ivARB_ENUM
  , glMultiTexCoord1sARB_ENUM
  , glMultiTexCoord1svARB_ENUM
  , glMultiTexCoord2dARB_ENUM
  , glMultiTexCoord2dvARB_ENUM
  , glMultiTexCoord2fARB_ENUM
  , glMultiTexCoord2fvARB_ENUM
  , glMultiTexCoord2iARB_ENUM
  , glMultiTexCoord2ivARB_ENUM
  , glMultiTexCoord2sARB_ENUM
  , glMultiTexCoord2svARB_ENUM
  , glMultiTexCoord3dARB_ENUM
  , glMultiTexCoord3dvARB_ENUM
  , glMultiTexCoord3fARB_ENUM
  , glMultiTexCoord3fvARB_ENUM
  , glMultiTexCoord3iARB_ENUM
  , glMultiTexCoord3ivARB_ENUM
  , glMultiTexCoord3sARB_ENUM
  , glMultiTexCoord3svARB_ENUM
  , glMultiTexCoord4dARB_ENUM
  , glMultiTexCoord4dvARB_ENUM
  , glMultiTexCoord4fARB_ENUM
  , glMultiTexCoord4fvARB_ENUM
  , glMultiTexCoord4iARB_ENUM
  , glMultiTexCoord4ivARB_ENUM
  , glMultiTexCoord4sARB_ENUM
  , glMultiTexCoord4svARB_ENUM
/* GL_ARB_transpose_matrix */
  , glLoadTransposeMatrixfARB_ENUM
  , glLoadTransposeMatrixdARB_ENUM
  , glMultTransposeMatrixfARB_ENUM
  , glMultTransposeMatrixdARB_ENUM
/* GL_ARB_multisample */
  , glSampleCoverageARB_ENUM
/* GL_ARB_texture_env_add */
/* GL_ARB_texture_cube_map */
/* GL_ARB_texture_compression */
  , glCompressedTexImage3DARB_ENUM
  , glCompressedTexImage2DARB_ENUM
  , glCompressedTexImage1DARB_ENUM
  , glCompressedTexSubImage3DARB_ENUM
  , glCompressedTexSubImage2DARB_ENUM
  , glCompressedTexSubImage1DARB_ENUM
  , glGetCompressedTexImageARB_ENUM
/* GL_ARB_texture_border_clamp */
/* GL_ARB_point_parameters */
  , glPointParameterfARB_ENUM
  , glPointParameterfvARB_ENUM
/* GL_ARB_vertex_blend */
  , glWeightbvARB_ENUM
  , glWeightsvARB_ENUM
  , glWeightivARB_ENUM
  , glWeightfvARB_ENUM
  , glWeightdvARB_ENUM
  , glWeightubvARB_ENUM
  , glWeightusvARB_ENUM
  , glWeightuivARB_ENUM
  , glWeightPointerARB_ENUM
  , glVertexBlendARB_ENUM
/* GL_ARB_matrix_palette */
  , glCurrentPaletteMatrixARB_ENUM
  , glMatrixIndexubvARB_ENUM
  , glMatrixIndexusvARB_ENUM
  , glMatrixIndexuivARB_ENUM
  , glMatrixIndexPointerARB_ENUM
/* GL_ARB_texture_env_combine */
/* GL_ARB_texture_env_crossbar */
/* GL_ARB_texture_env_dot3 */
/* GL_ARB_texture_mirrored_repeat */
/* GL_ARB_depth_texture */
/* GL_ARB_shadow */
/* GL_ARB_shadow_ambient */
/* GL_ARB_window_pos */
  , glWindowPos2dARB_ENUM
  , glWindowPos2dvARB_ENUM
  , glWindowPos2fARB_ENUM
  , glWindowPos2fvARB_ENUM
  , glWindowPos2iARB_ENUM
  , glWindowPos2ivARB_ENUM
  , glWindowPos2sARB_ENUM
  , glWindowPos2svARB_ENUM
  , glWindowPos3dARB_ENUM
  , glWindowPos3dvARB_ENUM
  , glWindowPos3fARB_ENUM
  , glWindowPos3fvARB_ENUM
  , glWindowPos3iARB_ENUM
  , glWindowPos3ivARB_ENUM
  , glWindowPos3sARB_ENUM
  , glWindowPos3svARB_ENUM
/* GL_ARB_vertex_program */
  , glVertexAttrib1dARB_ENUM
  , glVertexAttrib1dvARB_ENUM
  , glVertexAttrib1fARB_ENUM
  , glVertexAttrib1fvARB_ENUM
  , glVertexAttrib1sARB_ENUM
  , glVertexAttrib1svARB_ENUM
  , glVertexAttrib2dARB_ENUM
  , glVertexAttrib2dvARB_ENUM
  , glVertexAttrib2fARB_ENUM
  , glVertexAttrib2fvARB_ENUM
  , glVertexAttrib2sARB_ENUM
  , glVertexAttrib2svARB_ENUM
  , glVertexAttrib3dARB_ENUM
  , glVertexAttrib3dvARB_ENUM
  , glVertexAttrib3fARB_ENUM
  , glVertexAttrib3fvARB_ENUM
  , glVertexAttrib3sARB_ENUM
  , glVertexAttrib3svARB_ENUM
  , glVertexAttrib4NbvARB_ENUM
  , glVertexAttrib4NivARB_ENUM
  , glVertexAttrib4NsvARB_ENUM
  , glVertexAttrib4NubARB_ENUM
  , glVertexAttrib4NubvARB_ENUM
  , glVertexAttrib4NuivARB_ENUM
  , glVertexAttrib4NusvARB_ENUM
  , glVertexAttrib4bvARB_ENUM
  , glVertexAttrib4dARB_ENUM
  , glVertexAttrib4dvARB_ENUM
  , glVertexAttrib4fARB_ENUM
  , glVertexAttrib4fvARB_ENUM
  , glVertexAttrib4ivARB_ENUM
  , glVertexAttrib4sARB_ENUM
  , glVertexAttrib4svARB_ENUM
  , glVertexAttrib4ubvARB_ENUM
  , glVertexAttrib4uivARB_ENUM
  , glVertexAttrib4usvARB_ENUM
  , glVertexAttribPointerARB_ENUM
  , glEnableVertexAttribArrayARB_ENUM
  , glDisableVertexAttribArrayARB_ENUM
  , glProgramStringARB_ENUM
  , glBindProgramARB_ENUM
  , glDeleteProgramsARB_ENUM
  , glGenProgramsARB_ENUM
  , glProgramEnvParameter4dARB_ENUM
  , glProgramEnvParameter4dvARB_ENUM
  , glProgramEnvParameter4fARB_ENUM
  , glProgramEnvParameter4fvARB_ENUM
  , glProgramLocalParameter4dARB_ENUM
  , glProgramLocalParameter4dvARB_ENUM
  , glProgramLocalParameter4fARB_ENUM
  , glProgramLocalParameter4fvARB_ENUM
  , glGetProgramEnvParameterdvARB_ENUM
  , glGetProgramEnvParameterfvARB_ENUM
  , glGetProgramLocalParameterdvARB_ENUM
  , glGetProgramLocalParameterfvARB_ENUM
  , glGetProgramivARB_ENUM
  , glGetProgramStringARB_ENUM
  , glGetVertexAttribdvARB_ENUM
  , glGetVertexAttribfvARB_ENUM
  , glGetVertexAttribivARB_ENUM
  , glGetVertexAttribPointervARB_ENUM
  , glIsProgramARB_ENUM
/* GL_ARB_fragment_program */
/* GL_ARB_vertex_buffer_object */
  , glBindBufferARB_ENUM
  , glDeleteBuffersARB_ENUM
  , glGenBuffersARB_ENUM
  , glIsBufferARB_ENUM
  , glBufferDataARB_ENUM
  , glBufferSubDataARB_ENUM
  , glGetBufferSubDataARB_ENUM
  , glMapBufferARB_ENUM
  , glUnmapBufferARB_ENUM
  , glGetBufferParameterivARB_ENUM
  , glGetBufferPointervARB_ENUM
/* GL_ARB_occlusion_query */
  , glGenQueriesARB_ENUM
  , glDeleteQueriesARB_ENUM
  , glIsQueryARB_ENUM
  , glBeginQueryARB_ENUM
  , glEndQueryARB_ENUM
  , glGetQueryivARB_ENUM
  , glGetQueryObjectivARB_ENUM
  , glGetQueryObjectuivARB_ENUM
/* GL_ARB_shader_objects */
  , glDeleteObjectARB_ENUM
  , glGetHandleARB_ENUM
  , glDetachObjectARB_ENUM
  , glCreateShaderObjectARB_ENUM
  , glShaderSourceARB_ENUM
  , glCompileShaderARB_ENUM
  , glCreateProgramObjectARB_ENUM
  , glAttachObjectARB_ENUM
  , glLinkProgramARB_ENUM
  , glUseProgramObjectARB_ENUM
  , glValidateProgramARB_ENUM
  , glUniform1fARB_ENUM
  , glUniform2fARB_ENUM
  , glUniform3fARB_ENUM
  , glUniform4fARB_ENUM
  , glUniform1iARB_ENUM
  , glUniform2iARB_ENUM
  , glUniform3iARB_ENUM
  , glUniform4iARB_ENUM
  , glUniform1fvARB_ENUM
  , glUniform2fvARB_ENUM
  , glUniform3fvARB_ENUM
  , glUniform4fvARB_ENUM
  , glUniform1ivARB_ENUM
  , glUniform2ivARB_ENUM
  , glUniform3ivARB_ENUM
  , glUniform4ivARB_ENUM
  , glUniformMatrix2fvARB_ENUM
  , glUniformMatrix3fvARB_ENUM
  , glUniformMatrix4fvARB_ENUM
  , glGetObjectParameterfvARB_ENUM
  , glGetObjectParameterivARB_ENUM
  , glGetInfoLogARB_ENUM
  , glGetAttachedObjectsARB_ENUM
  , glGetUniformLocationARB_ENUM
  , glGetActiveUniformARB_ENUM
  , glGetUniformfvARB_ENUM
  , glGetUniformivARB_ENUM
  , glGetShaderSourceARB_ENUM
/* GL_ARB_vertex_shader */
  , glBindAttribLocationARB_ENUM
  , glGetActiveAttribARB_ENUM
  , glGetAttribLocationARB_ENUM
/* GL_ARB_fragment_shader */
/* GL_ARB_shading_language_100 */
/* GL_ARB_texture_non_power_of_two */
/* GL_ARB_point_sprite */
/* GL_ARB_fragment_program_shadow */
/* GL_ARB_draw_buffers */
  , glDrawBuffersARB_ENUM
/* GL_ARB_texture_rectangle */
/* GL_ARB_color_buffer_float */
  , glClampColorARB_ENUM
/* GL_ARB_half_float_pixel */
/* GL_ARB_texture_float */
/* GL_ARB_pixel_buffer_object */
/* GL_ARB_depth_buffer_float */
/* GL_ARB_draw_instanced */
  , glDrawArraysInstancedARB_ENUM
  , glDrawElementsInstancedARB_ENUM
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
/* GL_ARB_framebuffer_sRGB */
/* GL_ARB_geometry_shader4 */
  , glProgramParameteriARB_ENUM
  , glFramebufferTextureARB_ENUM
  , glFramebufferTextureLayerARB_ENUM
  , glFramebufferTextureFaceARB_ENUM
/* GL_ARB_half_float_vertex */
/* GL_ARB_instanced_arrays */
  , glVertexAttribDivisorARB_ENUM
/* GL_ARB_map_buffer_range */
  , glMapBufferRange_ENUM
  , glFlushMappedBufferRange_ENUM
/* GL_ARB_texture_buffer_object */
  , glTexBufferARB_ENUM
/* GL_ARB_texture_compression_rgtc */
/* GL_ARB_texture_rg */
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
/* GL_ARB_compatibility */
/* GL_ARB_copy_buffer */
  , glCopyBufferSubData_ENUM
/* GL_ARB_shader_texture_lod */
/* GL_ARB_depth_clamp */
/* GL_ARB_draw_elements_base_vertex */
  , glDrawElementsBaseVertex_ENUM
  , glDrawRangeElementsBaseVertex_ENUM
  , glDrawElementsInstancedBaseVertex_ENUM
  , glMultiDrawElementsBaseVertex_ENUM
/* GL_ARB_fragment_coord_conventions */
/* GL_ARB_provoking_vertex */
  , glProvokingVertex_ENUM
/* GL_ARB_seamless_cube_map */
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
/* GL_ARB_vertex_array_bgra */
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
/* GL_ARB_shader_bit_encoding */
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
/* GL_EXT_abgr */
/* GL_EXT_blend_color */
  , glBlendColorEXT_ENUM
/* GL_EXT_polygon_offset */
  , glPolygonOffsetEXT_ENUM
/* GL_EXT_texture */
/* GL_EXT_texture3D */
  , glTexImage3DEXT_ENUM
  , glTexSubImage3DEXT_ENUM
/* GL_SGIS_texture_filter4 */
  , glGetTexFilterFuncSGIS_ENUM
  , glTexFilterFuncSGIS_ENUM
/* GL_EXT_subtexture */
  , glTexSubImage1DEXT_ENUM
  , glTexSubImage2DEXT_ENUM
/* GL_EXT_copy_texture */
  , glCopyTexImage1DEXT_ENUM
  , glCopyTexImage2DEXT_ENUM
  , glCopyTexSubImage1DEXT_ENUM
  , glCopyTexSubImage2DEXT_ENUM
  , glCopyTexSubImage3DEXT_ENUM
/* GL_EXT_histogram */
  , glGetHistogramEXT_ENUM
  , glGetHistogramParameterfvEXT_ENUM
  , glGetHistogramParameterivEXT_ENUM
  , glGetMinmaxEXT_ENUM
  , glGetMinmaxParameterfvEXT_ENUM
  , glGetMinmaxParameterivEXT_ENUM
  , glHistogramEXT_ENUM
  , glMinmaxEXT_ENUM
  , glResetHistogramEXT_ENUM
  , glResetMinmaxEXT_ENUM
/* GL_EXT_convolution */
  , glConvolutionFilter1DEXT_ENUM
  , glConvolutionFilter2DEXT_ENUM
  , glConvolutionParameterfEXT_ENUM
  , glConvolutionParameterfvEXT_ENUM
  , glConvolutionParameteriEXT_ENUM
  , glConvolutionParameterivEXT_ENUM
  , glCopyConvolutionFilter1DEXT_ENUM
  , glCopyConvolutionFilter2DEXT_ENUM
  , glGetConvolutionFilterEXT_ENUM
  , glGetConvolutionParameterfvEXT_ENUM
  , glGetConvolutionParameterivEXT_ENUM
  , glGetSeparableFilterEXT_ENUM
  , glSeparableFilter2DEXT_ENUM
/* GL_EXT_color_matrix */
/* GL_SGI_color_matrix */
/* GL_SGI_color_table */
  , glColorTableSGI_ENUM
  , glColorTableParameterfvSGI_ENUM
  , glColorTableParameterivSGI_ENUM
  , glCopyColorTableSGI_ENUM
  , glGetColorTableSGI_ENUM
  , glGetColorTableParameterfvSGI_ENUM
  , glGetColorTableParameterivSGI_ENUM
/* GL_SGIX_pixel_texture */
  , glPixelTexGenSGIX_ENUM
/* GL_SGIS_pixel_texture */
  , glPixelTexGenParameteriSGIS_ENUM
  , glPixelTexGenParameterivSGIS_ENUM
  , glPixelTexGenParameterfSGIS_ENUM
  , glPixelTexGenParameterfvSGIS_ENUM
  , glGetPixelTexGenParameterivSGIS_ENUM
  , glGetPixelTexGenParameterfvSGIS_ENUM
/* GL_SGIS_texture4D */
  , glTexImage4DSGIS_ENUM
  , glTexSubImage4DSGIS_ENUM
/* GL_SGI_texture_color_table */
/* GL_EXT_cmyka */
/* GL_EXT_texture_object */
  , glAreTexturesResidentEXT_ENUM
  , glBindTextureEXT_ENUM
  , glDeleteTexturesEXT_ENUM
  , glGenTexturesEXT_ENUM
  , glIsTextureEXT_ENUM
  , glPrioritizeTexturesEXT_ENUM
/* GL_SGIS_detail_texture */
  , glDetailTexFuncSGIS_ENUM
  , glGetDetailTexFuncSGIS_ENUM
/* GL_SGIS_sharpen_texture */
  , glSharpenTexFuncSGIS_ENUM
  , glGetSharpenTexFuncSGIS_ENUM
/* GL_EXT_packed_pixels */
/* GL_SGIS_texture_lod */
/* GL_SGIS_multisample */
  , glSampleMaskSGIS_ENUM
  , glSamplePatternSGIS_ENUM
/* GL_EXT_rescale_normal */
/* GL_EXT_vertex_array */
  , glArrayElementEXT_ENUM
  , glColorPointerEXT_ENUM
  , glDrawArraysEXT_ENUM
  , glEdgeFlagPointerEXT_ENUM
  , glGetPointervEXT_ENUM
  , glIndexPointerEXT_ENUM
  , glNormalPointerEXT_ENUM
  , glTexCoordPointerEXT_ENUM
  , glVertexPointerEXT_ENUM
/* GL_EXT_misc_attribute */
/* GL_SGIS_generate_mipmap */
/* GL_SGIX_clipmap */
/* GL_SGIX_shadow */
/* GL_SGIS_texture_edge_clamp */
/* GL_SGIS_texture_border_clamp */
/* GL_EXT_blend_minmax */
  , glBlendEquationEXT_ENUM
/* GL_EXT_blend_subtract */
/* GL_EXT_blend_logic_op */
/* GL_SGIX_interlace */
/* GL_SGIX_pixel_tiles */
/* GL_SGIX_texture_select */
/* GL_SGIX_sprite */
  , glSpriteParameterfSGIX_ENUM
  , glSpriteParameterfvSGIX_ENUM
  , glSpriteParameteriSGIX_ENUM
  , glSpriteParameterivSGIX_ENUM
/* GL_SGIX_texture_multi_buffer */
/* GL_EXT_point_parameters */
  , glPointParameterfEXT_ENUM
  , glPointParameterfvEXT_ENUM
/* GL_SGIS_point_parameters */
  , glPointParameterfSGIS_ENUM
  , glPointParameterfvSGIS_ENUM
/* GL_SGIX_instruments */
  , glGetInstrumentsSGIX_ENUM
  , glInstrumentsBufferSGIX_ENUM
  , glPollInstrumentsSGIX_ENUM
  , glReadInstrumentsSGIX_ENUM
  , glStartInstrumentsSGIX_ENUM
  , glStopInstrumentsSGIX_ENUM
/* GL_SGIX_texture_scale_bias */
/* GL_SGIX_framezoom */
  , glFrameZoomSGIX_ENUM
/* GL_SGIX_tag_sample_buffer */
  , glTagSampleBufferSGIX_ENUM
/* GL_SGIX_polynomial_ffd */
  , glDeformationMap3dSGIX_ENUM
  , glDeformationMap3fSGIX_ENUM
  , glDeformSGIX_ENUM
  , glLoadIdentityDeformationMapSGIX_ENUM
/* GL_SGIX_reference_plane */
  , glReferencePlaneSGIX_ENUM
/* GL_SGIX_flush_raster */
  , glFlushRasterSGIX_ENUM
/* GL_SGIX_depth_texture */
/* GL_SGIS_fog_function */
  , glFogFuncSGIS_ENUM
  , glGetFogFuncSGIS_ENUM
/* GL_SGIX_fog_offset */
/* GL_HP_image_transform */
  , glImageTransformParameteriHP_ENUM
  , glImageTransformParameterfHP_ENUM
  , glImageTransformParameterivHP_ENUM
  , glImageTransformParameterfvHP_ENUM
  , glGetImageTransformParameterivHP_ENUM
  , glGetImageTransformParameterfvHP_ENUM
/* GL_HP_convolution_border_modes */
/* GL_SGIX_texture_add_env */
/* GL_EXT_color_subtable */
  , glColorSubTableEXT_ENUM
  , glCopyColorSubTableEXT_ENUM
/* GL_PGI_vertex_hints */
/* GL_PGI_misc_hints */
  , glHintPGI_ENUM
/* GL_EXT_paletted_texture */
  , glColorTableEXT_ENUM
  , glGetColorTableEXT_ENUM
  , glGetColorTableParameterivEXT_ENUM
  , glGetColorTableParameterfvEXT_ENUM
/* GL_EXT_clip_volume_hint */
/* GL_SGIX_list_priority */
  , glGetListParameterfvSGIX_ENUM
  , glGetListParameterivSGIX_ENUM
  , glListParameterfSGIX_ENUM
  , glListParameterfvSGIX_ENUM
  , glListParameteriSGIX_ENUM
  , glListParameterivSGIX_ENUM
/* GL_SGIX_ir_instrument1 */
/* GL_SGIX_calligraphic_fragment */
/* GL_SGIX_texture_lod_bias */
/* GL_SGIX_shadow_ambient */
/* GL_EXT_index_texture */
/* GL_EXT_index_material */
  , glIndexMaterialEXT_ENUM
/* GL_EXT_index_func */
  , glIndexFuncEXT_ENUM
/* GL_EXT_index_array_formats */
/* GL_EXT_compiled_vertex_array */
  , glLockArraysEXT_ENUM
  , glUnlockArraysEXT_ENUM
/* GL_EXT_cull_vertex */
  , glCullParameterdvEXT_ENUM
  , glCullParameterfvEXT_ENUM
/* GL_SGIX_ycrcb */
/* GL_SGIX_fragment_lighting */
  , glFragmentColorMaterialSGIX_ENUM
  , glFragmentLightfSGIX_ENUM
  , glFragmentLightfvSGIX_ENUM
  , glFragmentLightiSGIX_ENUM
  , glFragmentLightivSGIX_ENUM
  , glFragmentLightModelfSGIX_ENUM
  , glFragmentLightModelfvSGIX_ENUM
  , glFragmentLightModeliSGIX_ENUM
  , glFragmentLightModelivSGIX_ENUM
  , glFragmentMaterialfSGIX_ENUM
  , glFragmentMaterialfvSGIX_ENUM
  , glFragmentMaterialiSGIX_ENUM
  , glFragmentMaterialivSGIX_ENUM
  , glGetFragmentLightfvSGIX_ENUM
  , glGetFragmentLightivSGIX_ENUM
  , glGetFragmentMaterialfvSGIX_ENUM
  , glGetFragmentMaterialivSGIX_ENUM
  , glLightEnviSGIX_ENUM
/* GL_IBM_rasterpos_clip */
/* GL_HP_texture_lighting */
/* GL_EXT_draw_range_elements */
  , glDrawRangeElementsEXT_ENUM
/* GL_WIN_phong_shading */
/* GL_WIN_specular_fog */
/* GL_EXT_light_texture */
  , glApplyTextureEXT_ENUM
  , glTextureLightEXT_ENUM
  , glTextureMaterialEXT_ENUM
/* GL_SGIX_blend_alpha_minmax */
/* GL_EXT_bgra */
/* GL_SGIX_async */
  , glAsyncMarkerSGIX_ENUM
  , glFinishAsyncSGIX_ENUM
  , glPollAsyncSGIX_ENUM
  , glGenAsyncMarkersSGIX_ENUM
  , glDeleteAsyncMarkersSGIX_ENUM
  , glIsAsyncMarkerSGIX_ENUM
/* GL_SGIX_async_pixel */
/* GL_SGIX_async_histogram */
/* GL_INTEL_parallel_arrays */
  , glVertexPointervINTEL_ENUM
  , glNormalPointervINTEL_ENUM
  , glColorPointervINTEL_ENUM
  , glTexCoordPointervINTEL_ENUM
/* GL_HP_occlusion_test */
/* GL_EXT_pixel_transform */
  , glPixelTransformParameteriEXT_ENUM
  , glPixelTransformParameterfEXT_ENUM
  , glPixelTransformParameterivEXT_ENUM
  , glPixelTransformParameterfvEXT_ENUM
/* GL_EXT_pixel_transform_color_table */
/* GL_EXT_shared_texture_palette */
/* GL_EXT_separate_specular_color */
/* GL_EXT_secondary_color */
  , glSecondaryColor3bEXT_ENUM
  , glSecondaryColor3bvEXT_ENUM
  , glSecondaryColor3dEXT_ENUM
  , glSecondaryColor3dvEXT_ENUM
  , glSecondaryColor3fEXT_ENUM
  , glSecondaryColor3fvEXT_ENUM
  , glSecondaryColor3iEXT_ENUM
  , glSecondaryColor3ivEXT_ENUM
  , glSecondaryColor3sEXT_ENUM
  , glSecondaryColor3svEXT_ENUM
  , glSecondaryColor3ubEXT_ENUM
  , glSecondaryColor3ubvEXT_ENUM
  , glSecondaryColor3uiEXT_ENUM
  , glSecondaryColor3uivEXT_ENUM
  , glSecondaryColor3usEXT_ENUM
  , glSecondaryColor3usvEXT_ENUM
  , glSecondaryColorPointerEXT_ENUM
/* GL_EXT_texture_perturb_normal */
  , glTextureNormalEXT_ENUM
/* GL_EXT_multi_draw_arrays */
  , glMultiDrawArraysEXT_ENUM
  , glMultiDrawElementsEXT_ENUM
/* GL_EXT_fog_coord */
  , glFogCoordfEXT_ENUM
  , glFogCoordfvEXT_ENUM
  , glFogCoorddEXT_ENUM
  , glFogCoorddvEXT_ENUM
  , glFogCoordPointerEXT_ENUM
/* GL_REND_screen_coordinates */
/* GL_EXT_coordinate_frame */
  , glTangent3bEXT_ENUM
  , glTangent3bvEXT_ENUM
  , glTangent3dEXT_ENUM
  , glTangent3dvEXT_ENUM
  , glTangent3fEXT_ENUM
  , glTangent3fvEXT_ENUM
  , glTangent3iEXT_ENUM
  , glTangent3ivEXT_ENUM
  , glTangent3sEXT_ENUM
  , glTangent3svEXT_ENUM
  , glBinormal3bEXT_ENUM
  , glBinormal3bvEXT_ENUM
  , glBinormal3dEXT_ENUM
  , glBinormal3dvEXT_ENUM
  , glBinormal3fEXT_ENUM
  , glBinormal3fvEXT_ENUM
  , glBinormal3iEXT_ENUM
  , glBinormal3ivEXT_ENUM
  , glBinormal3sEXT_ENUM
  , glBinormal3svEXT_ENUM
  , glTangentPointerEXT_ENUM
  , glBinormalPointerEXT_ENUM
/* GL_EXT_texture_env_combine */
/* GL_APPLE_specular_vector */
/* GL_APPLE_transform_hint */
/* GL_SGIX_fog_scale */
/* GL_SUNX_constant_data */
  , glFinishTextureSUNX_ENUM
/* GL_SUN_global_alpha */
  , glGlobalAlphaFactorbSUN_ENUM
  , glGlobalAlphaFactorsSUN_ENUM
  , glGlobalAlphaFactoriSUN_ENUM
  , glGlobalAlphaFactorfSUN_ENUM
  , glGlobalAlphaFactordSUN_ENUM
  , glGlobalAlphaFactorubSUN_ENUM
  , glGlobalAlphaFactorusSUN_ENUM
  , glGlobalAlphaFactoruiSUN_ENUM
/* GL_SUN_triangle_list */
  , glReplacementCodeuiSUN_ENUM
  , glReplacementCodeusSUN_ENUM
  , glReplacementCodeubSUN_ENUM
  , glReplacementCodeuivSUN_ENUM
  , glReplacementCodeusvSUN_ENUM
  , glReplacementCodeubvSUN_ENUM
  , glReplacementCodePointerSUN_ENUM
/* GL_SUN_vertex */
  , glColor4ubVertex2fSUN_ENUM
  , glColor4ubVertex2fvSUN_ENUM
  , glColor4ubVertex3fSUN_ENUM
  , glColor4ubVertex3fvSUN_ENUM
  , glColor3fVertex3fSUN_ENUM
  , glColor3fVertex3fvSUN_ENUM
  , glNormal3fVertex3fSUN_ENUM
  , glNormal3fVertex3fvSUN_ENUM
  , glColor4fNormal3fVertex3fSUN_ENUM
  , glColor4fNormal3fVertex3fvSUN_ENUM
  , glTexCoord2fVertex3fSUN_ENUM
  , glTexCoord2fVertex3fvSUN_ENUM
  , glTexCoord4fVertex4fSUN_ENUM
  , glTexCoord4fVertex4fvSUN_ENUM
  , glTexCoord2fColor4ubVertex3fSUN_ENUM
  , glTexCoord2fColor4ubVertex3fvSUN_ENUM
  , glTexCoord2fColor3fVertex3fSUN_ENUM
  , glTexCoord2fColor3fVertex3fvSUN_ENUM
  , glTexCoord2fNormal3fVertex3fSUN_ENUM
  , glTexCoord2fNormal3fVertex3fvSUN_ENUM
  , glTexCoord2fColor4fNormal3fVertex3fSUN_ENUM
  , glTexCoord2fColor4fNormal3fVertex3fvSUN_ENUM
  , glTexCoord4fColor4fNormal3fVertex4fSUN_ENUM
  , glTexCoord4fColor4fNormal3fVertex4fvSUN_ENUM
  , glReplacementCodeuiVertex3fSUN_ENUM
  , glReplacementCodeuiVertex3fvSUN_ENUM
  , glReplacementCodeuiColor4ubVertex3fSUN_ENUM
  , glReplacementCodeuiColor4ubVertex3fvSUN_ENUM
  , glReplacementCodeuiColor3fVertex3fSUN_ENUM
  , glReplacementCodeuiColor3fVertex3fvSUN_ENUM
  , glReplacementCodeuiNormal3fVertex3fSUN_ENUM
  , glReplacementCodeuiNormal3fVertex3fvSUN_ENUM
  , glReplacementCodeuiColor4fNormal3fVertex3fSUN_ENUM
  , glReplacementCodeuiColor4fNormal3fVertex3fvSUN_ENUM
  , glReplacementCodeuiTexCoord2fVertex3fSUN_ENUM
  , glReplacementCodeuiTexCoord2fVertex3fvSUN_ENUM
  , glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN_ENUM
  , glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN_ENUM
  , glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN_ENUM
  , glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN_ENUM
/* GL_EXT_blend_func_separate */
  , glBlendFuncSeparateEXT_ENUM
/* GL_INGR_blend_func_separate */
  , glBlendFuncSeparateINGR_ENUM
/* GL_INGR_color_clamp */
/* GL_INGR_interlace_read */
/* GL_EXT_stencil_wrap */
/* GL_EXT_422_pixels */
/* GL_NV_texgen_reflection */
/* GL_SUN_convolution_border_modes */
/* GL_EXT_texture_env_add */
/* GL_EXT_texture_lod_bias */
/* GL_EXT_texture_filter_anisotropic */
/* GL_EXT_vertex_weighting */
  , glVertexWeightfEXT_ENUM
  , glVertexWeightfvEXT_ENUM
  , glVertexWeightPointerEXT_ENUM
/* GL_NV_light_max_exponent */
/* GL_NV_vertex_array_range */
  , glFlushVertexArrayRangeNV_ENUM
  , glVertexArrayRangeNV_ENUM
/* GL_NV_register_combiners */
  , glCombinerParameterfvNV_ENUM
  , glCombinerParameterfNV_ENUM
  , glCombinerParameterivNV_ENUM
  , glCombinerParameteriNV_ENUM
  , glCombinerInputNV_ENUM
  , glCombinerOutputNV_ENUM
  , glFinalCombinerInputNV_ENUM
  , glGetCombinerInputParameterfvNV_ENUM
  , glGetCombinerInputParameterivNV_ENUM
  , glGetCombinerOutputParameterfvNV_ENUM
  , glGetCombinerOutputParameterivNV_ENUM
  , glGetFinalCombinerInputParameterfvNV_ENUM
  , glGetFinalCombinerInputParameterivNV_ENUM
/* GL_NV_fog_distance */
/* GL_NV_texgen_emboss */
/* GL_NV_blend_square */
/* GL_NV_texture_env_combine4 */
/* GL_MESA_resize_buffers */
  , glResizeBuffersMESA_ENUM
/* GL_MESA_window_pos */
  , glWindowPos2dMESA_ENUM
  , glWindowPos2dvMESA_ENUM
  , glWindowPos2fMESA_ENUM
  , glWindowPos2fvMESA_ENUM
  , glWindowPos2iMESA_ENUM
  , glWindowPos2ivMESA_ENUM
  , glWindowPos2sMESA_ENUM
  , glWindowPos2svMESA_ENUM
  , glWindowPos3dMESA_ENUM
  , glWindowPos3dvMESA_ENUM
  , glWindowPos3fMESA_ENUM
  , glWindowPos3fvMESA_ENUM
  , glWindowPos3iMESA_ENUM
  , glWindowPos3ivMESA_ENUM
  , glWindowPos3sMESA_ENUM
  , glWindowPos3svMESA_ENUM
  , glWindowPos4dMESA_ENUM
  , glWindowPos4dvMESA_ENUM
  , glWindowPos4fMESA_ENUM
  , glWindowPos4fvMESA_ENUM
  , glWindowPos4iMESA_ENUM
  , glWindowPos4ivMESA_ENUM
  , glWindowPos4sMESA_ENUM
  , glWindowPos4svMESA_ENUM
/* GL_IBM_cull_vertex */
/* GL_IBM_multimode_draw_arrays */
  , glMultiModeDrawArraysIBM_ENUM
  , glMultiModeDrawElementsIBM_ENUM
/* GL_IBM_vertex_array_lists */
  , glColorPointerListIBM_ENUM
  , glSecondaryColorPointerListIBM_ENUM
  , glEdgeFlagPointerListIBM_ENUM
  , glFogCoordPointerListIBM_ENUM
  , glIndexPointerListIBM_ENUM
  , glNormalPointerListIBM_ENUM
  , glTexCoordPointerListIBM_ENUM
  , glVertexPointerListIBM_ENUM
/* GL_SGIX_subsample */
/* GL_SGIX_ycrcba */
/* GL_SGIX_ycrcb_subsample */
/* GL_SGIX_depth_pass_instrument */
/* GL_3DFX_texture_compression_FXT1 */
/* GL_3DFX_multisample */
/* GL_3DFX_tbuffer */
  , glTbufferMask3DFX_ENUM
/* GL_EXT_multisample */
  , glSampleMaskEXT_ENUM
  , glSamplePatternEXT_ENUM
/* GL_SGIX_vertex_preclip */
/* GL_SGIX_convolution_accuracy */
/* GL_SGIX_resample */
/* GL_SGIS_point_line_texgen */
/* GL_SGIS_texture_color_mask */
  , glTextureColorMaskSGIS_ENUM
/* GL_SGIX_igloo_interface */
  , glIglooInterfaceSGIX_ENUM
/* GL_EXT_texture_env_dot3 */
/* GL_ATI_texture_mirror_once */
/* GL_NV_fence */
  , glDeleteFencesNV_ENUM
  , glGenFencesNV_ENUM
  , glIsFenceNV_ENUM
  , glTestFenceNV_ENUM
  , glGetFenceivNV_ENUM
  , glFinishFenceNV_ENUM
  , glSetFenceNV_ENUM
/* GL_NV_evaluators */
  , glMapControlPointsNV_ENUM
  , glMapParameterivNV_ENUM
  , glMapParameterfvNV_ENUM
  , glGetMapControlPointsNV_ENUM
  , glGetMapParameterivNV_ENUM
  , glGetMapParameterfvNV_ENUM
  , glGetMapAttribParameterivNV_ENUM
  , glGetMapAttribParameterfvNV_ENUM
  , glEvalMapsNV_ENUM
/* GL_NV_packed_depth_stencil */
/* GL_NV_register_combiners2 */
  , glCombinerStageParameterfvNV_ENUM
  , glGetCombinerStageParameterfvNV_ENUM
/* GL_NV_texture_compression_vtc */
/* GL_NV_texture_rectangle */
/* GL_NV_texture_shader */
/* GL_NV_texture_shader2 */
/* GL_NV_vertex_array_range2 */
/* GL_NV_vertex_program */
  , glAreProgramsResidentNV_ENUM
  , glBindProgramNV_ENUM
  , glDeleteProgramsNV_ENUM
  , glExecuteProgramNV_ENUM
  , glGenProgramsNV_ENUM
  , glGetProgramParameterdvNV_ENUM
  , glGetProgramParameterfvNV_ENUM
  , glGetProgramivNV_ENUM
  , glGetProgramStringNV_ENUM
  , glGetTrackMatrixivNV_ENUM
  , glGetVertexAttribdvNV_ENUM
  , glGetVertexAttribfvNV_ENUM
  , glGetVertexAttribivNV_ENUM
  , glGetVertexAttribPointervNV_ENUM
  , glIsProgramNV_ENUM
  , glLoadProgramNV_ENUM
  , glProgramParameter4dNV_ENUM
  , glProgramParameter4dvNV_ENUM
  , glProgramParameter4fNV_ENUM
  , glProgramParameter4fvNV_ENUM
  , glProgramParameters4dvNV_ENUM
  , glProgramParameters4fvNV_ENUM
  , glRequestResidentProgramsNV_ENUM
  , glTrackMatrixNV_ENUM
  , glVertexAttribPointerNV_ENUM
  , glVertexAttrib1dNV_ENUM
  , glVertexAttrib1dvNV_ENUM
  , glVertexAttrib1fNV_ENUM
  , glVertexAttrib1fvNV_ENUM
  , glVertexAttrib1sNV_ENUM
  , glVertexAttrib1svNV_ENUM
  , glVertexAttrib2dNV_ENUM
  , glVertexAttrib2dvNV_ENUM
  , glVertexAttrib2fNV_ENUM
  , glVertexAttrib2fvNV_ENUM
  , glVertexAttrib2sNV_ENUM
  , glVertexAttrib2svNV_ENUM
  , glVertexAttrib3dNV_ENUM
  , glVertexAttrib3dvNV_ENUM
  , glVertexAttrib3fNV_ENUM
  , glVertexAttrib3fvNV_ENUM
  , glVertexAttrib3sNV_ENUM
  , glVertexAttrib3svNV_ENUM
  , glVertexAttrib4dNV_ENUM
  , glVertexAttrib4dvNV_ENUM
  , glVertexAttrib4fNV_ENUM
  , glVertexAttrib4fvNV_ENUM
  , glVertexAttrib4sNV_ENUM
  , glVertexAttrib4svNV_ENUM
  , glVertexAttrib4ubNV_ENUM
  , glVertexAttrib4ubvNV_ENUM
  , glVertexAttribs1dvNV_ENUM
  , glVertexAttribs1fvNV_ENUM
  , glVertexAttribs1svNV_ENUM
  , glVertexAttribs2dvNV_ENUM
  , glVertexAttribs2fvNV_ENUM
  , glVertexAttribs2svNV_ENUM
  , glVertexAttribs3dvNV_ENUM
  , glVertexAttribs3fvNV_ENUM
  , glVertexAttribs3svNV_ENUM
  , glVertexAttribs4dvNV_ENUM
  , glVertexAttribs4fvNV_ENUM
  , glVertexAttribs4svNV_ENUM
  , glVertexAttribs4ubvNV_ENUM
/* GL_SGIX_texture_coordinate_clamp */
/* GL_SGIX_scalebias_hint */
/* GL_OML_interlace */
/* GL_OML_subsample */
/* GL_OML_resample */
/* GL_NV_copy_depth_to_color */
/* GL_ATI_envmap_bumpmap */
  , glTexBumpParameterivATI_ENUM
  , glTexBumpParameterfvATI_ENUM
  , glGetTexBumpParameterivATI_ENUM
  , glGetTexBumpParameterfvATI_ENUM
/* GL_ATI_fragment_shader */
  , glGenFragmentShadersATI_ENUM
  , glBindFragmentShaderATI_ENUM
  , glDeleteFragmentShaderATI_ENUM
  , glBeginFragmentShaderATI_ENUM
  , glEndFragmentShaderATI_ENUM
  , glPassTexCoordATI_ENUM
  , glSampleMapATI_ENUM
  , glColorFragmentOp1ATI_ENUM
  , glColorFragmentOp2ATI_ENUM
  , glColorFragmentOp3ATI_ENUM
  , glAlphaFragmentOp1ATI_ENUM
  , glAlphaFragmentOp2ATI_ENUM
  , glAlphaFragmentOp3ATI_ENUM
  , glSetFragmentShaderConstantATI_ENUM
/* GL_ATI_pn_triangles */
  , glPNTrianglesiATI_ENUM
  , glPNTrianglesfATI_ENUM
/* GL_ATI_vertex_array_object */
  , glNewObjectBufferATI_ENUM
  , glIsObjectBufferATI_ENUM
  , glUpdateObjectBufferATI_ENUM
  , glGetObjectBufferfvATI_ENUM
  , glGetObjectBufferivATI_ENUM
  , glFreeObjectBufferATI_ENUM
  , glArrayObjectATI_ENUM
  , glGetArrayObjectfvATI_ENUM
  , glGetArrayObjectivATI_ENUM
  , glVariantArrayObjectATI_ENUM
  , glGetVariantArrayObjectfvATI_ENUM
  , glGetVariantArrayObjectivATI_ENUM
/* GL_EXT_vertex_shader */
  , glBeginVertexShaderEXT_ENUM
  , glEndVertexShaderEXT_ENUM
  , glBindVertexShaderEXT_ENUM
  , glGenVertexShadersEXT_ENUM
  , glDeleteVertexShaderEXT_ENUM
  , glShaderOp1EXT_ENUM
  , glShaderOp2EXT_ENUM
  , glShaderOp3EXT_ENUM
  , glSwizzleEXT_ENUM
  , glWriteMaskEXT_ENUM
  , glInsertComponentEXT_ENUM
  , glExtractComponentEXT_ENUM
  , glGenSymbolsEXT_ENUM
  , glSetInvariantEXT_ENUM
  , glSetLocalConstantEXT_ENUM
  , glVariantbvEXT_ENUM
  , glVariantsvEXT_ENUM
  , glVariantivEXT_ENUM
  , glVariantfvEXT_ENUM
  , glVariantdvEXT_ENUM
  , glVariantubvEXT_ENUM
  , glVariantusvEXT_ENUM
  , glVariantuivEXT_ENUM
  , glVariantPointerEXT_ENUM
  , glEnableVariantClientStateEXT_ENUM
  , glDisableVariantClientStateEXT_ENUM
  , glBindLightParameterEXT_ENUM
  , glBindMaterialParameterEXT_ENUM
  , glBindTexGenParameterEXT_ENUM
  , glBindTextureUnitParameterEXT_ENUM
  , glBindParameterEXT_ENUM
  , glIsVariantEnabledEXT_ENUM
  , glGetVariantBooleanvEXT_ENUM
  , glGetVariantIntegervEXT_ENUM
  , glGetVariantFloatvEXT_ENUM
  , glGetVariantPointervEXT_ENUM
  , glGetInvariantBooleanvEXT_ENUM
  , glGetInvariantIntegervEXT_ENUM
  , glGetInvariantFloatvEXT_ENUM
  , glGetLocalConstantBooleanvEXT_ENUM
  , glGetLocalConstantIntegervEXT_ENUM
  , glGetLocalConstantFloatvEXT_ENUM
/* GL_ATI_vertex_streams */
  , glVertexStream1sATI_ENUM
  , glVertexStream1svATI_ENUM
  , glVertexStream1iATI_ENUM
  , glVertexStream1ivATI_ENUM
  , glVertexStream1fATI_ENUM
  , glVertexStream1fvATI_ENUM
  , glVertexStream1dATI_ENUM
  , glVertexStream1dvATI_ENUM
  , glVertexStream2sATI_ENUM
  , glVertexStream2svATI_ENUM
  , glVertexStream2iATI_ENUM
  , glVertexStream2ivATI_ENUM
  , glVertexStream2fATI_ENUM
  , glVertexStream2fvATI_ENUM
  , glVertexStream2dATI_ENUM
  , glVertexStream2dvATI_ENUM
  , glVertexStream3sATI_ENUM
  , glVertexStream3svATI_ENUM
  , glVertexStream3iATI_ENUM
  , glVertexStream3ivATI_ENUM
  , glVertexStream3fATI_ENUM
  , glVertexStream3fvATI_ENUM
  , glVertexStream3dATI_ENUM
  , glVertexStream3dvATI_ENUM
  , glVertexStream4sATI_ENUM
  , glVertexStream4svATI_ENUM
  , glVertexStream4iATI_ENUM
  , glVertexStream4ivATI_ENUM
  , glVertexStream4fATI_ENUM
  , glVertexStream4fvATI_ENUM
  , glVertexStream4dATI_ENUM
  , glVertexStream4dvATI_ENUM
  , glNormalStream3bATI_ENUM
  , glNormalStream3bvATI_ENUM
  , glNormalStream3sATI_ENUM
  , glNormalStream3svATI_ENUM
  , glNormalStream3iATI_ENUM
  , glNormalStream3ivATI_ENUM
  , glNormalStream3fATI_ENUM
  , glNormalStream3fvATI_ENUM
  , glNormalStream3dATI_ENUM
  , glNormalStream3dvATI_ENUM
  , glClientActiveVertexStreamATI_ENUM
  , glVertexBlendEnviATI_ENUM
  , glVertexBlendEnvfATI_ENUM
/* GL_ATI_element_array */
  , glElementPointerATI_ENUM
  , glDrawElementArrayATI_ENUM
  , glDrawRangeElementArrayATI_ENUM
/* GL_SUN_mesh_array */
  , glDrawMeshArraysSUN_ENUM
/* GL_SUN_slice_accum */
/* GL_NV_multisample_filter_hint */
/* GL_NV_depth_clamp */
/* GL_NV_occlusion_query */
  , glGenOcclusionQueriesNV_ENUM
  , glDeleteOcclusionQueriesNV_ENUM
  , glIsOcclusionQueryNV_ENUM
  , glBeginOcclusionQueryNV_ENUM
  , glEndOcclusionQueryNV_ENUM
  , glGetOcclusionQueryivNV_ENUM
  , glGetOcclusionQueryuivNV_ENUM
/* GL_NV_point_sprite */
  , glPointParameteriNV_ENUM
  , glPointParameterivNV_ENUM
/* GL_NV_texture_shader3 */
/* GL_NV_vertex_program1_1 */
/* GL_EXT_shadow_funcs */
/* GL_EXT_stencil_two_side */
  , glActiveStencilFaceEXT_ENUM
/* GL_ATI_text_fragment_shader */
/* GL_APPLE_client_storage */
/* GL_APPLE_element_array */
  , glElementPointerAPPLE_ENUM
  , glDrawElementArrayAPPLE_ENUM
  , glDrawRangeElementArrayAPPLE_ENUM
  , glMultiDrawElementArrayAPPLE_ENUM
  , glMultiDrawRangeElementArrayAPPLE_ENUM
/* GL_APPLE_fence */
  , glGenFencesAPPLE_ENUM
  , glDeleteFencesAPPLE_ENUM
  , glSetFenceAPPLE_ENUM
  , glIsFenceAPPLE_ENUM
  , glTestFenceAPPLE_ENUM
  , glFinishFenceAPPLE_ENUM
  , glTestObjectAPPLE_ENUM
  , glFinishObjectAPPLE_ENUM
/* GL_APPLE_vertex_array_object */
  , glBindVertexArrayAPPLE_ENUM
  , glDeleteVertexArraysAPPLE_ENUM
  , glGenVertexArraysAPPLE_ENUM
  , glIsVertexArrayAPPLE_ENUM
/* GL_APPLE_vertex_array_range */
  , glVertexArrayRangeAPPLE_ENUM
  , glFlushVertexArrayRangeAPPLE_ENUM
  , glVertexArrayParameteriAPPLE_ENUM
/* GL_APPLE_ycbcr_422 */
/* GL_S3_s3tc */
/* GL_ATI_draw_buffers */
  , glDrawBuffersATI_ENUM
/* GL_ATI_pixel_format_float */
/* GL_ATI_texture_env_combine3 */
/* GL_ATI_texture_float */
/* GL_NV_float_buffer */
/* GL_NV_fragment_program */
  , glProgramNamedParameter4fNV_ENUM
  , glProgramNamedParameter4dNV_ENUM
  , glProgramNamedParameter4fvNV_ENUM
  , glProgramNamedParameter4dvNV_ENUM
  , glGetProgramNamedParameterfvNV_ENUM
  , glGetProgramNamedParameterdvNV_ENUM
/* GL_NV_half_float */
  , glVertex2hNV_ENUM
  , glVertex2hvNV_ENUM
  , glVertex3hNV_ENUM
  , glVertex3hvNV_ENUM
  , glVertex4hNV_ENUM
  , glVertex4hvNV_ENUM
  , glNormal3hNV_ENUM
  , glNormal3hvNV_ENUM
  , glColor3hNV_ENUM
  , glColor3hvNV_ENUM
  , glColor4hNV_ENUM
  , glColor4hvNV_ENUM
  , glTexCoord1hNV_ENUM
  , glTexCoord1hvNV_ENUM
  , glTexCoord2hNV_ENUM
  , glTexCoord2hvNV_ENUM
  , glTexCoord3hNV_ENUM
  , glTexCoord3hvNV_ENUM
  , glTexCoord4hNV_ENUM
  , glTexCoord4hvNV_ENUM
  , glMultiTexCoord1hNV_ENUM
  , glMultiTexCoord1hvNV_ENUM
  , glMultiTexCoord2hNV_ENUM
  , glMultiTexCoord2hvNV_ENUM
  , glMultiTexCoord3hNV_ENUM
  , glMultiTexCoord3hvNV_ENUM
  , glMultiTexCoord4hNV_ENUM
  , glMultiTexCoord4hvNV_ENUM
  , glFogCoordhNV_ENUM
  , glFogCoordhvNV_ENUM
  , glSecondaryColor3hNV_ENUM
  , glSecondaryColor3hvNV_ENUM
  , glVertexWeighthNV_ENUM
  , glVertexWeighthvNV_ENUM
  , glVertexAttrib1hNV_ENUM
  , glVertexAttrib1hvNV_ENUM
  , glVertexAttrib2hNV_ENUM
  , glVertexAttrib2hvNV_ENUM
  , glVertexAttrib3hNV_ENUM
  , glVertexAttrib3hvNV_ENUM
  , glVertexAttrib4hNV_ENUM
  , glVertexAttrib4hvNV_ENUM
  , glVertexAttribs1hvNV_ENUM
  , glVertexAttribs2hvNV_ENUM
  , glVertexAttribs3hvNV_ENUM
  , glVertexAttribs4hvNV_ENUM
/* GL_NV_pixel_data_range */
  , glPixelDataRangeNV_ENUM
  , glFlushPixelDataRangeNV_ENUM
/* GL_NV_primitive_restart */
  , glPrimitiveRestartNV_ENUM
  , glPrimitiveRestartIndexNV_ENUM
/* GL_NV_texture_expand_normal */
/* GL_NV_vertex_program2 */
/* GL_ATI_map_object_buffer */
  , glMapObjectBufferATI_ENUM
  , glUnmapObjectBufferATI_ENUM
/* GL_ATI_separate_stencil */
  , glStencilOpSeparateATI_ENUM
  , glStencilFuncSeparateATI_ENUM
/* GL_ATI_vertex_attrib_array_object */
  , glVertexAttribArrayObjectATI_ENUM
  , glGetVertexAttribArrayObjectfvATI_ENUM
  , glGetVertexAttribArrayObjectivATI_ENUM
/* GL_OES_read_format */
/* GL_EXT_depth_bounds_test */
  , glDepthBoundsEXT_ENUM
/* GL_EXT_texture_mirror_clamp */
/* GL_EXT_blend_equation_separate */
  , glBlendEquationSeparateEXT_ENUM
/* GL_MESA_pack_invert */
/* GL_MESA_ycbcr_texture */
/* GL_EXT_pixel_buffer_object */
/* GL_NV_fragment_program_option */
/* GL_NV_fragment_program2 */
/* GL_NV_vertex_program2_option */
/* GL_NV_vertex_program3 */
/* GL_EXT_framebuffer_object */
  , glIsRenderbufferEXT_ENUM
  , glBindRenderbufferEXT_ENUM
  , glDeleteRenderbuffersEXT_ENUM
  , glGenRenderbuffersEXT_ENUM
  , glRenderbufferStorageEXT_ENUM
  , glGetRenderbufferParameterivEXT_ENUM
  , glIsFramebufferEXT_ENUM
  , glBindFramebufferEXT_ENUM
  , glDeleteFramebuffersEXT_ENUM
  , glGenFramebuffersEXT_ENUM
  , glCheckFramebufferStatusEXT_ENUM
  , glFramebufferTexture1DEXT_ENUM
  , glFramebufferTexture2DEXT_ENUM
  , glFramebufferTexture3DEXT_ENUM
  , glFramebufferRenderbufferEXT_ENUM
  , glGetFramebufferAttachmentParameterivEXT_ENUM
  , glGenerateMipmapEXT_ENUM
/* GL_GREMEDY_string_marker */
  , glStringMarkerGREMEDY_ENUM
/* GL_EXT_packed_depth_stencil */
/* GL_EXT_stencil_clear_tag */
  , glStencilClearTagEXT_ENUM
/* GL_EXT_texture_sRGB */
/* GL_EXT_framebuffer_blit */
  , glBlitFramebufferEXT_ENUM
/* GL_EXT_framebuffer_multisample */
  , glRenderbufferStorageMultisampleEXT_ENUM
/* GL_MESAX_texture_stack */
/* GL_EXT_timer_query */
  , glGetQueryObjecti64vEXT_ENUM
  , glGetQueryObjectui64vEXT_ENUM
/* GL_EXT_gpu_program_parameters */
  , glProgramEnvParameters4fvEXT_ENUM
  , glProgramLocalParameters4fvEXT_ENUM
/* GL_APPLE_flush_buffer_range */
  , glBufferParameteriAPPLE_ENUM
  , glFlushMappedBufferRangeAPPLE_ENUM
/* GL_NV_gpu_program4 */
  , glProgramLocalParameterI4iNV_ENUM
  , glProgramLocalParameterI4ivNV_ENUM
  , glProgramLocalParametersI4ivNV_ENUM
  , glProgramLocalParameterI4uiNV_ENUM
  , glProgramLocalParameterI4uivNV_ENUM
  , glProgramLocalParametersI4uivNV_ENUM
  , glProgramEnvParameterI4iNV_ENUM
  , glProgramEnvParameterI4ivNV_ENUM
  , glProgramEnvParametersI4ivNV_ENUM
  , glProgramEnvParameterI4uiNV_ENUM
  , glProgramEnvParameterI4uivNV_ENUM
  , glProgramEnvParametersI4uivNV_ENUM
  , glGetProgramLocalParameterIivNV_ENUM
  , glGetProgramLocalParameterIuivNV_ENUM
  , glGetProgramEnvParameterIivNV_ENUM
  , glGetProgramEnvParameterIuivNV_ENUM
/* GL_NV_geometry_program4 */
  , glProgramVertexLimitNV_ENUM
  , glFramebufferTextureEXT_ENUM
  , glFramebufferTextureLayerEXT_ENUM
  , glFramebufferTextureFaceEXT_ENUM
/* GL_EXT_geometry_shader4 */
  , glProgramParameteriEXT_ENUM
/* GL_NV_vertex_program4 */
  , glVertexAttribI1iEXT_ENUM
  , glVertexAttribI2iEXT_ENUM
  , glVertexAttribI3iEXT_ENUM
  , glVertexAttribI4iEXT_ENUM
  , glVertexAttribI1uiEXT_ENUM
  , glVertexAttribI2uiEXT_ENUM
  , glVertexAttribI3uiEXT_ENUM
  , glVertexAttribI4uiEXT_ENUM
  , glVertexAttribI1ivEXT_ENUM
  , glVertexAttribI2ivEXT_ENUM
  , glVertexAttribI3ivEXT_ENUM
  , glVertexAttribI4ivEXT_ENUM
  , glVertexAttribI1uivEXT_ENUM
  , glVertexAttribI2uivEXT_ENUM
  , glVertexAttribI3uivEXT_ENUM
  , glVertexAttribI4uivEXT_ENUM
  , glVertexAttribI4bvEXT_ENUM
  , glVertexAttribI4svEXT_ENUM
  , glVertexAttribI4ubvEXT_ENUM
  , glVertexAttribI4usvEXT_ENUM
  , glVertexAttribIPointerEXT_ENUM
  , glGetVertexAttribIivEXT_ENUM
  , glGetVertexAttribIuivEXT_ENUM
/* GL_EXT_gpu_shader4 */
  , glGetUniformuivEXT_ENUM
  , glBindFragDataLocationEXT_ENUM
  , glGetFragDataLocationEXT_ENUM
  , glUniform1uiEXT_ENUM
  , glUniform2uiEXT_ENUM
  , glUniform3uiEXT_ENUM
  , glUniform4uiEXT_ENUM
  , glUniform1uivEXT_ENUM
  , glUniform2uivEXT_ENUM
  , glUniform3uivEXT_ENUM
  , glUniform4uivEXT_ENUM
/* GL_EXT_draw_instanced */
  , glDrawArraysInstancedEXT_ENUM
  , glDrawElementsInstancedEXT_ENUM
/* GL_EXT_packed_float */
/* GL_EXT_texture_array */
/* GL_EXT_texture_buffer_object */
  , glTexBufferEXT_ENUM
/* GL_EXT_texture_compression_latc */
/* GL_EXT_texture_compression_rgtc */
/* GL_EXT_texture_shared_exponent */
/* GL_NV_depth_buffer_float */
  , glDepthRangedNV_ENUM
  , glClearDepthdNV_ENUM
  , glDepthBoundsdNV_ENUM
/* GL_NV_fragment_program4 */
/* GL_NV_framebuffer_multisample_coverage */
  , glRenderbufferStorageMultisampleCoverageNV_ENUM
/* GL_EXT_framebuffer_sRGB */
/* GL_NV_geometry_shader4 */
/* GL_NV_parameter_buffer_object */
  , glProgramBufferParametersfvNV_ENUM
  , glProgramBufferParametersIivNV_ENUM
  , glProgramBufferParametersIuivNV_ENUM
/* GL_EXT_draw_buffers2 */
  , glColorMaskIndexedEXT_ENUM
  , glGetBooleanIndexedvEXT_ENUM
  , glGetIntegerIndexedvEXT_ENUM
  , glEnableIndexedEXT_ENUM
  , glDisableIndexedEXT_ENUM
  , glIsEnabledIndexedEXT_ENUM
/* GL_NV_transform_feedback */
  , glBeginTransformFeedbackNV_ENUM
  , glEndTransformFeedbackNV_ENUM
  , glTransformFeedbackAttribsNV_ENUM
  , glBindBufferRangeNV_ENUM
  , glBindBufferOffsetNV_ENUM
  , glBindBufferBaseNV_ENUM
  , glTransformFeedbackVaryingsNV_ENUM
  , glActiveVaryingNV_ENUM
  , glGetVaryingLocationNV_ENUM
  , glGetActiveVaryingNV_ENUM
  , glGetTransformFeedbackVaryingNV_ENUM
  , glTransformFeedbackStreamAttribsNV_ENUM
/* GL_EXT_bindable_uniform */
  , glUniformBufferEXT_ENUM
  , glGetUniformBufferSizeEXT_ENUM
  , glGetUniformOffsetEXT_ENUM
/* GL_EXT_texture_integer */
  , glTexParameterIivEXT_ENUM
  , glTexParameterIuivEXT_ENUM
  , glGetTexParameterIivEXT_ENUM
  , glGetTexParameterIuivEXT_ENUM
  , glClearColorIiEXT_ENUM
  , glClearColorIuiEXT_ENUM
/* GL_GREMEDY_frame_terminator */
  , glFrameTerminatorGREMEDY_ENUM
/* GL_NV_conditional_render */
  , glBeginConditionalRenderNV_ENUM
  , glEndConditionalRenderNV_ENUM
/* GL_NV_present_video */
  , glPresentFrameKeyedNV_ENUM
  , glPresentFrameDualFillNV_ENUM
  , glGetVideoivNV_ENUM
  , glGetVideouivNV_ENUM
  , glGetVideoi64vNV_ENUM
  , glGetVideoui64vNV_ENUM
  , glVideoParameterivNV_ENUM
/* GL_EXT_transform_feedback */
  , glBeginTransformFeedbackEXT_ENUM
  , glEndTransformFeedbackEXT_ENUM
  , glBindBufferRangeEXT_ENUM
  , glBindBufferOffsetEXT_ENUM
  , glBindBufferBaseEXT_ENUM
  , glTransformFeedbackVaryingsEXT_ENUM
  , glGetTransformFeedbackVaryingEXT_ENUM
/* GL_EXT_direct_state_access */
  , glClientAttribDefaultEXT_ENUM
  , glPushClientAttribDefaultEXT_ENUM
  , glMatrixLoadfEXT_ENUM
  , glMatrixLoaddEXT_ENUM
  , glMatrixMultfEXT_ENUM
  , glMatrixMultdEXT_ENUM
  , glMatrixLoadIdentityEXT_ENUM
  , glMatrixRotatefEXT_ENUM
  , glMatrixRotatedEXT_ENUM
  , glMatrixScalefEXT_ENUM
  , glMatrixScaledEXT_ENUM
  , glMatrixTranslatefEXT_ENUM
  , glMatrixTranslatedEXT_ENUM
  , glMatrixFrustumEXT_ENUM
  , glMatrixOrthoEXT_ENUM
  , glMatrixPopEXT_ENUM
  , glMatrixPushEXT_ENUM
  , glMatrixLoadTransposefEXT_ENUM
  , glMatrixLoadTransposedEXT_ENUM
  , glMatrixMultTransposefEXT_ENUM
  , glMatrixMultTransposedEXT_ENUM
  , glTextureParameterfEXT_ENUM
  , glTextureParameterfvEXT_ENUM
  , glTextureParameteriEXT_ENUM
  , glTextureParameterivEXT_ENUM
  , glTextureImage1DEXT_ENUM
  , glTextureImage2DEXT_ENUM
  , glTextureSubImage1DEXT_ENUM
  , glTextureSubImage2DEXT_ENUM
  , glCopyTextureImage1DEXT_ENUM
  , glCopyTextureImage2DEXT_ENUM
  , glCopyTextureSubImage1DEXT_ENUM
  , glCopyTextureSubImage2DEXT_ENUM
  , glGetTextureImageEXT_ENUM
  , glGetTextureParameterfvEXT_ENUM
  , glGetTextureParameterivEXT_ENUM
  , glGetTextureLevelParameterfvEXT_ENUM
  , glGetTextureLevelParameterivEXT_ENUM
  , glTextureImage3DEXT_ENUM
  , glTextureSubImage3DEXT_ENUM
  , glCopyTextureSubImage3DEXT_ENUM
  , glMultiTexParameterfEXT_ENUM
  , glMultiTexParameterfvEXT_ENUM
  , glMultiTexParameteriEXT_ENUM
  , glMultiTexParameterivEXT_ENUM
  , glMultiTexImage1DEXT_ENUM
  , glMultiTexImage2DEXT_ENUM
  , glMultiTexSubImage1DEXT_ENUM
  , glMultiTexSubImage2DEXT_ENUM
  , glCopyMultiTexImage1DEXT_ENUM
  , glCopyMultiTexImage2DEXT_ENUM
  , glCopyMultiTexSubImage1DEXT_ENUM
  , glCopyMultiTexSubImage2DEXT_ENUM
  , glGetMultiTexImageEXT_ENUM
  , glGetMultiTexParameterfvEXT_ENUM
  , glGetMultiTexParameterivEXT_ENUM
  , glGetMultiTexLevelParameterfvEXT_ENUM
  , glGetMultiTexLevelParameterivEXT_ENUM
  , glMultiTexImage3DEXT_ENUM
  , glMultiTexSubImage3DEXT_ENUM
  , glCopyMultiTexSubImage3DEXT_ENUM
  , glBindMultiTextureEXT_ENUM
  , glEnableClientStateIndexedEXT_ENUM
  , glDisableClientStateIndexedEXT_ENUM
  , glMultiTexCoordPointerEXT_ENUM
  , glMultiTexEnvfEXT_ENUM
  , glMultiTexEnvfvEXT_ENUM
  , glMultiTexEnviEXT_ENUM
  , glMultiTexEnvivEXT_ENUM
  , glMultiTexGendEXT_ENUM
  , glMultiTexGendvEXT_ENUM
  , glMultiTexGenfEXT_ENUM
  , glMultiTexGenfvEXT_ENUM
  , glMultiTexGeniEXT_ENUM
  , glMultiTexGenivEXT_ENUM
  , glGetMultiTexEnvfvEXT_ENUM
  , glGetMultiTexEnvivEXT_ENUM
  , glGetMultiTexGendvEXT_ENUM
  , glGetMultiTexGenfvEXT_ENUM
  , glGetMultiTexGenivEXT_ENUM
  , glGetFloatIndexedvEXT_ENUM
  , glGetDoubleIndexedvEXT_ENUM
  , glGetPointerIndexedvEXT_ENUM
  , glCompressedTextureImage3DEXT_ENUM
  , glCompressedTextureImage2DEXT_ENUM
  , glCompressedTextureImage1DEXT_ENUM
  , glCompressedTextureSubImage3DEXT_ENUM
  , glCompressedTextureSubImage2DEXT_ENUM
  , glCompressedTextureSubImage1DEXT_ENUM
  , glGetCompressedTextureImageEXT_ENUM
  , glCompressedMultiTexImage3DEXT_ENUM
  , glCompressedMultiTexImage2DEXT_ENUM
  , glCompressedMultiTexImage1DEXT_ENUM
  , glCompressedMultiTexSubImage3DEXT_ENUM
  , glCompressedMultiTexSubImage2DEXT_ENUM
  , glCompressedMultiTexSubImage1DEXT_ENUM
  , glGetCompressedMultiTexImageEXT_ENUM
  , glNamedProgramStringEXT_ENUM
  , glNamedProgramLocalParameter4dEXT_ENUM
  , glNamedProgramLocalParameter4dvEXT_ENUM
  , glNamedProgramLocalParameter4fEXT_ENUM
  , glNamedProgramLocalParameter4fvEXT_ENUM
  , glGetNamedProgramLocalParameterdvEXT_ENUM
  , glGetNamedProgramLocalParameterfvEXT_ENUM
  , glGetNamedProgramivEXT_ENUM
  , glGetNamedProgramStringEXT_ENUM
  , glNamedProgramLocalParameters4fvEXT_ENUM
  , glNamedProgramLocalParameterI4iEXT_ENUM
  , glNamedProgramLocalParameterI4ivEXT_ENUM
  , glNamedProgramLocalParametersI4ivEXT_ENUM
  , glNamedProgramLocalParameterI4uiEXT_ENUM
  , glNamedProgramLocalParameterI4uivEXT_ENUM
  , glNamedProgramLocalParametersI4uivEXT_ENUM
  , glGetNamedProgramLocalParameterIivEXT_ENUM
  , glGetNamedProgramLocalParameterIuivEXT_ENUM
  , glTextureParameterIivEXT_ENUM
  , glTextureParameterIuivEXT_ENUM
  , glGetTextureParameterIivEXT_ENUM
  , glGetTextureParameterIuivEXT_ENUM
  , glMultiTexParameterIivEXT_ENUM
  , glMultiTexParameterIuivEXT_ENUM
  , glGetMultiTexParameterIivEXT_ENUM
  , glGetMultiTexParameterIuivEXT_ENUM
  , glProgramUniform1fEXT_ENUM
  , glProgramUniform2fEXT_ENUM
  , glProgramUniform3fEXT_ENUM
  , glProgramUniform4fEXT_ENUM
  , glProgramUniform1iEXT_ENUM
  , glProgramUniform2iEXT_ENUM
  , glProgramUniform3iEXT_ENUM
  , glProgramUniform4iEXT_ENUM
  , glProgramUniform1fvEXT_ENUM
  , glProgramUniform2fvEXT_ENUM
  , glProgramUniform3fvEXT_ENUM
  , glProgramUniform4fvEXT_ENUM
  , glProgramUniform1ivEXT_ENUM
  , glProgramUniform2ivEXT_ENUM
  , glProgramUniform3ivEXT_ENUM
  , glProgramUniform4ivEXT_ENUM
  , glProgramUniformMatrix2fvEXT_ENUM
  , glProgramUniformMatrix3fvEXT_ENUM
  , glProgramUniformMatrix4fvEXT_ENUM
  , glProgramUniformMatrix2x3fvEXT_ENUM
  , glProgramUniformMatrix3x2fvEXT_ENUM
  , glProgramUniformMatrix2x4fvEXT_ENUM
  , glProgramUniformMatrix4x2fvEXT_ENUM
  , glProgramUniformMatrix3x4fvEXT_ENUM
  , glProgramUniformMatrix4x3fvEXT_ENUM
  , glProgramUniform1uiEXT_ENUM
  , glProgramUniform2uiEXT_ENUM
  , glProgramUniform3uiEXT_ENUM
  , glProgramUniform4uiEXT_ENUM
  , glProgramUniform1uivEXT_ENUM
  , glProgramUniform2uivEXT_ENUM
  , glProgramUniform3uivEXT_ENUM
  , glProgramUniform4uivEXT_ENUM
  , glNamedBufferDataEXT_ENUM
  , glNamedBufferSubDataEXT_ENUM
  , glMapNamedBufferEXT_ENUM
  , glUnmapNamedBufferEXT_ENUM
  , glMapNamedBufferRangeEXT_ENUM
  , glFlushMappedNamedBufferRangeEXT_ENUM
  , glNamedCopyBufferSubDataEXT_ENUM
  , glGetNamedBufferParameterivEXT_ENUM
  , glGetNamedBufferPointervEXT_ENUM
  , glGetNamedBufferSubDataEXT_ENUM
  , glTextureBufferEXT_ENUM
  , glMultiTexBufferEXT_ENUM
  , glNamedRenderbufferStorageEXT_ENUM
  , glGetNamedRenderbufferParameterivEXT_ENUM
  , glCheckNamedFramebufferStatusEXT_ENUM
  , glNamedFramebufferTexture1DEXT_ENUM
  , glNamedFramebufferTexture2DEXT_ENUM
  , glNamedFramebufferTexture3DEXT_ENUM
  , glNamedFramebufferRenderbufferEXT_ENUM
  , glGetNamedFramebufferAttachmentParameterivEXT_ENUM
  , glGenerateTextureMipmapEXT_ENUM
  , glGenerateMultiTexMipmapEXT_ENUM
  , glFramebufferDrawBufferEXT_ENUM
  , glFramebufferDrawBuffersEXT_ENUM
  , glFramebufferReadBufferEXT_ENUM
  , glGetFramebufferParameterivEXT_ENUM
  , glNamedRenderbufferStorageMultisampleEXT_ENUM
  , glNamedRenderbufferStorageMultisampleCoverageEXT_ENUM
  , glNamedFramebufferTextureEXT_ENUM
  , glNamedFramebufferTextureLayerEXT_ENUM
  , glNamedFramebufferTextureFaceEXT_ENUM
  , glTextureRenderbufferEXT_ENUM
  , glMultiTexRenderbufferEXT_ENUM
  , glProgramUniform1dEXT_ENUM
  , glProgramUniform2dEXT_ENUM
  , glProgramUniform3dEXT_ENUM
  , glProgramUniform4dEXT_ENUM
  , glProgramUniform1dvEXT_ENUM
  , glProgramUniform2dvEXT_ENUM
  , glProgramUniform3dvEXT_ENUM
  , glProgramUniform4dvEXT_ENUM
  , glProgramUniformMatrix2dvEXT_ENUM
  , glProgramUniformMatrix3dvEXT_ENUM
  , glProgramUniformMatrix4dvEXT_ENUM
  , glProgramUniformMatrix2x3dvEXT_ENUM
  , glProgramUniformMatrix2x4dvEXT_ENUM
  , glProgramUniformMatrix3x2dvEXT_ENUM
  , glProgramUniformMatrix3x4dvEXT_ENUM
  , glProgramUniformMatrix4x2dvEXT_ENUM
  , glProgramUniformMatrix4x3dvEXT_ENUM
/* GL_EXT_vertex_array_bgra */
/* GL_EXT_texture_swizzle */
/* GL_NV_explicit_multisample */
  , glGetMultisamplefvNV_ENUM
  , glSampleMaskIndexedNV_ENUM
  , glTexRenderbufferNV_ENUM
/* GL_NV_transform_feedback2 */
  , glBindTransformFeedbackNV_ENUM
  , glDeleteTransformFeedbacksNV_ENUM
  , glGenTransformFeedbacksNV_ENUM
  , glIsTransformFeedbackNV_ENUM
  , glPauseTransformFeedbackNV_ENUM
  , glResumeTransformFeedbackNV_ENUM
  , glDrawTransformFeedbackNV_ENUM
/* GL_ATI_meminfo */
/* GL_AMD_performance_monitor */
  , glGetPerfMonitorGroupsAMD_ENUM
  , glGetPerfMonitorCountersAMD_ENUM
  , glGetPerfMonitorGroupStringAMD_ENUM
  , glGetPerfMonitorCounterStringAMD_ENUM
  , glGetPerfMonitorCounterInfoAMD_ENUM
  , glGenPerfMonitorsAMD_ENUM
  , glDeletePerfMonitorsAMD_ENUM
  , glSelectPerfMonitorCountersAMD_ENUM
  , glBeginPerfMonitorAMD_ENUM
  , glEndPerfMonitorAMD_ENUM
  , glGetPerfMonitorCounterDataAMD_ENUM
/* GL_AMD_texture_texture4 */
/* GL_AMD_vertex_shader_tesselator */
  , glTessellationFactorAMD_ENUM
  , glTessellationModeAMD_ENUM
/* GL_EXT_provoking_vertex */
  , glProvokingVertexEXT_ENUM
/* GL_EXT_texture_snorm */
/* GL_AMD_draw_buffers_blend */
  , glBlendFuncIndexedAMD_ENUM
  , glBlendFuncSeparateIndexedAMD_ENUM
  , glBlendEquationIndexedAMD_ENUM
  , glBlendEquationSeparateIndexedAMD_ENUM
/* GL_APPLE_texture_range */
  , glTextureRangeAPPLE_ENUM
  , glGetTexParameterPointervAPPLE_ENUM
/* GL_APPLE_float_pixels */
/* GL_APPLE_vertex_program_evaluators */
  , glEnableVertexAttribAPPLE_ENUM
  , glDisableVertexAttribAPPLE_ENUM
  , glIsVertexAttribEnabledAPPLE_ENUM
  , glMapVertexAttrib1dAPPLE_ENUM
  , glMapVertexAttrib1fAPPLE_ENUM
  , glMapVertexAttrib2dAPPLE_ENUM
  , glMapVertexAttrib2fAPPLE_ENUM
/* GL_APPLE_aux_depth_stencil */
/* GL_APPLE_object_purgeable */
  , glObjectPurgeableAPPLE_ENUM
  , glObjectUnpurgeableAPPLE_ENUM
  , glGetObjectParameterivAPPLE_ENUM
/* GL_APPLE_row_bytes */
/* GL_APPLE_rgb_422 */
/* GL_NV_video_capture */
  , glBeginVideoCaptureNV_ENUM
  , glBindVideoCaptureStreamBufferNV_ENUM
  , glBindVideoCaptureStreamTextureNV_ENUM
  , glEndVideoCaptureNV_ENUM
  , glGetVideoCaptureivNV_ENUM
  , glGetVideoCaptureStreamivNV_ENUM
  , glGetVideoCaptureStreamfvNV_ENUM
  , glGetVideoCaptureStreamdvNV_ENUM
  , glVideoCaptureNV_ENUM
  , glVideoCaptureStreamParameterivNV_ENUM
  , glVideoCaptureStreamParameterfvNV_ENUM
  , glVideoCaptureStreamParameterdvNV_ENUM
/* GL_NV_copy_image */
  , glCopyImageSubDataNV_ENUM
/* GL_EXT_separate_shader_objects */
  , glUseShaderProgramEXT_ENUM
  , glActiveProgramEXT_ENUM
  , glCreateShaderProgramEXT_ENUM
/* GL_NV_parameter_buffer_object2 */
/* GL_NV_shader_buffer_load */
  , glMakeBufferResidentNV_ENUM
  , glMakeBufferNonResidentNV_ENUM
  , glIsBufferResidentNV_ENUM
  , glNamedMakeBufferResidentNV_ENUM
  , glNamedMakeBufferNonResidentNV_ENUM
  , glIsNamedBufferResidentNV_ENUM
  , glGetBufferParameterui64vNV_ENUM
  , glGetNamedBufferParameterui64vNV_ENUM
  , glGetIntegerui64vNV_ENUM
  , glUniformui64NV_ENUM
  , glUniformui64vNV_ENUM
  , glGetUniformui64vNV_ENUM
  , glProgramUniformui64NV_ENUM
  , glProgramUniformui64vNV_ENUM
/* GL_NV_vertex_buffer_unified_memory */
  , glBufferAddressRangeNV_ENUM
  , glVertexFormatNV_ENUM
  , glNormalFormatNV_ENUM
  , glColorFormatNV_ENUM
  , glIndexFormatNV_ENUM
  , glTexCoordFormatNV_ENUM
  , glEdgeFlagFormatNV_ENUM
  , glSecondaryColorFormatNV_ENUM
  , glFogCoordFormatNV_ENUM
  , glVertexAttribFormatNV_ENUM
  , glVertexAttribIFormatNV_ENUM
  , glGetIntegerui64i_vNV_ENUM
/* GL_NV_texture_barrier */
  , glTextureBarrierNV_ENUM
/* GL_AMD_shader_stencil_export */
/* GL_AMD_seamless_cubemap_per_texture */
/* GL_AMD_conservative_depth */
/* GL_EXT_shader_image_load_store */
  , glBindImageTextureEXT_ENUM
  , glMemoryBarrierEXT_ENUM
/* GL_EXT_vertex_attrib_64bit */
  , glVertexAttribL1dEXT_ENUM
  , glVertexAttribL2dEXT_ENUM
  , glVertexAttribL3dEXT_ENUM
  , glVertexAttribL4dEXT_ENUM
  , glVertexAttribL1dvEXT_ENUM
  , glVertexAttribL2dvEXT_ENUM
  , glVertexAttribL3dvEXT_ENUM
  , glVertexAttribL4dvEXT_ENUM
  , glVertexAttribLPointerEXT_ENUM
  , glGetVertexAttribLdvEXT_ENUM
  , glVertexArrayVertexAttribLOffsetEXT_ENUM
/* GL_NV_gpu_program5 */
  , glProgramSubroutineParametersuivNV_ENUM
  , glGetProgramSubroutineParameteruivNV_ENUM
/* GL_NV_gpu_shader5 */
  , glUniform1i64NV_ENUM
  , glUniform2i64NV_ENUM
  , glUniform3i64NV_ENUM
  , glUniform4i64NV_ENUM
  , glUniform1i64vNV_ENUM
  , glUniform2i64vNV_ENUM
  , glUniform3i64vNV_ENUM
  , glUniform4i64vNV_ENUM
  , glUniform1ui64NV_ENUM
  , glUniform2ui64NV_ENUM
  , glUniform3ui64NV_ENUM
  , glUniform4ui64NV_ENUM
  , glUniform1ui64vNV_ENUM
  , glUniform2ui64vNV_ENUM
  , glUniform3ui64vNV_ENUM
  , glUniform4ui64vNV_ENUM
  , glGetUniformi64vNV_ENUM
  , glProgramUniform1i64NV_ENUM
  , glProgramUniform2i64NV_ENUM
  , glProgramUniform3i64NV_ENUM
  , glProgramUniform4i64NV_ENUM
  , glProgramUniform1i64vNV_ENUM
  , glProgramUniform2i64vNV_ENUM
  , glProgramUniform3i64vNV_ENUM
  , glProgramUniform4i64vNV_ENUM
  , glProgramUniform1ui64NV_ENUM
  , glProgramUniform2ui64NV_ENUM
  , glProgramUniform3ui64NV_ENUM
  , glProgramUniform4ui64NV_ENUM
  , glProgramUniform1ui64vNV_ENUM
  , glProgramUniform2ui64vNV_ENUM
  , glProgramUniform3ui64vNV_ENUM
  , glProgramUniform4ui64vNV_ENUM
/* GL_NV_shader_buffer_store */
/* GL_NV_tessellation_program5 */
/* GL_NV_vertex_attrib_integer_64bit */
  , glVertexAttribL1i64NV_ENUM
  , glVertexAttribL2i64NV_ENUM
  , glVertexAttribL3i64NV_ENUM
  , glVertexAttribL4i64NV_ENUM
  , glVertexAttribL1i64vNV_ENUM
  , glVertexAttribL2i64vNV_ENUM
  , glVertexAttribL3i64vNV_ENUM
  , glVertexAttribL4i64vNV_ENUM
  , glVertexAttribL1ui64NV_ENUM
  , glVertexAttribL2ui64NV_ENUM
  , glVertexAttribL3ui64NV_ENUM
  , glVertexAttribL4ui64NV_ENUM
  , glVertexAttribL1ui64vNV_ENUM
  , glVertexAttribL2ui64vNV_ENUM
  , glVertexAttribL3ui64vNV_ENUM
  , glVertexAttribL4ui64vNV_ENUM
  , glGetVertexAttribLi64vNV_ENUM
  , glGetVertexAttribLui64vNV_ENUM
  , glVertexAttribLFormatNV_ENUM
/* GL_NV_multisample_coverage */
/* GL_AMD_name_gen_delete */
  , glGenNamesAMD_ENUM
  , glDeleteNamesAMD_ENUM
  , glIsNameAMD_ENUM
/* GL_AMD_debug_output */
  , glDebugMessageEnableAMD_ENUM
  , glDebugMessageInsertAMD_ENUM
  , glDebugMessageCallbackAMD_ENUM
  , glGetDebugMessageLogAMD_ENUM
/* GL_NV_vdpau_interop */
  , glVDPAUInitNV_ENUM
  , glVDPAUFiniNV_ENUM
  , glVDPAURegisterVideoSurfaceNV_ENUM
  , glVDPAURegisterOutputSurfaceNV_ENUM
  , glVDPAUIsSurfaceNV_ENUM
  , glVDPAUUnregisterSurfaceNV_ENUM
  , glVDPAUGetSurfaceivNV_ENUM
  , glVDPAUSurfaceAccessNV_ENUM
  , glVDPAUMapSurfacesNV_ENUM
  , glVDPAUUnmapSurfacesNV_ENUM
/* GL_AMD_transform_feedback3_lines_triangles */
/* GL_AMD_depth_clamp_separate */
/* GL_EXT_texture_sRGB_decode */
/* GL_NV_texture_multisample */
  , glTexImage2DMultisampleCoverageNV_ENUM
  , glTexImage3DMultisampleCoverageNV_ENUM
  , glTextureImage2DMultisampleNV_ENUM
  , glTextureImage3DMultisampleNV_ENUM
  , glTextureImage2DMultisampleCoverageNV_ENUM
  , glTextureImage3DMultisampleCoverageNV_ENUM
/* GL_AMD_blend_minmax_factor */
/* GL_AMD_sample_positions */
  , glSetMultisamplefvAMD_ENUM
/* GL_EXT_x11_sync_object */
  , glImportSyncEXT_ENUM
/* GL_AMD_multi_draw_indirect */
  , glMultiDrawArraysIndirectAMD_ENUM
  , glMultiDrawElementsIndirectAMD_ENUM
/* GL_EXT_framebuffer_multisample_blit_scaled */
/* GL_NV_path_rendering */
  , glGenPathsNV_ENUM
  , glDeletePathsNV_ENUM
  , glIsPathNV_ENUM
  , glPathCommandsNV_ENUM
  , glPathCoordsNV_ENUM
  , glPathSubCommandsNV_ENUM
  , glPathSubCoordsNV_ENUM
  , glPathStringNV_ENUM
  , glPathGlyphsNV_ENUM
  , glPathGlyphRangeNV_ENUM
  , glWeightPathsNV_ENUM
  , glCopyPathNV_ENUM
  , glInterpolatePathsNV_ENUM
  , glTransformPathNV_ENUM
  , glPathParameterivNV_ENUM
  , glPathParameteriNV_ENUM
  , glPathParameterfvNV_ENUM
  , glPathParameterfNV_ENUM
  , glPathDashArrayNV_ENUM
  , glPathStencilFuncNV_ENUM
  , glPathStencilDepthOffsetNV_ENUM
  , glStencilFillPathNV_ENUM
  , glStencilStrokePathNV_ENUM
  , glStencilFillPathInstancedNV_ENUM
  , glStencilStrokePathInstancedNV_ENUM
  , glPathCoverDepthFuncNV_ENUM
  , glPathColorGenNV_ENUM
  , glPathTexGenNV_ENUM
  , glPathFogGenNV_ENUM
  , glCoverFillPathNV_ENUM
  , glCoverStrokePathNV_ENUM
  , glCoverFillPathInstancedNV_ENUM
  , glCoverStrokePathInstancedNV_ENUM
  , glGetPathParameterivNV_ENUM
  , glGetPathParameterfvNV_ENUM
  , glGetPathCommandsNV_ENUM
  , glGetPathCoordsNV_ENUM
  , glGetPathDashArrayNV_ENUM
  , glGetPathMetricsNV_ENUM
  , glGetPathMetricRangeNV_ENUM
  , glGetPathSpacingNV_ENUM
  , glGetPathColorGenivNV_ENUM
  , glGetPathColorGenfvNV_ENUM
  , glGetPathTexGenivNV_ENUM
  , glGetPathTexGenfvNV_ENUM
  , glIsPointInFillPathNV_ENUM
  , glIsPointInStrokePathNV_ENUM
  , glGetPathLengthNV_ENUM
  , glPointAlongPathNV_ENUM
/* GL_AMD_pinned_memory */
/* GL_AMD_stencil_operation_extended */
  , glStencilOpValueAMD_ENUM
/* GL_AMD_vertex_shader_viewport_index */
/* GL_AMD_vertex_shader_layer */
/* GL_NV_bindless_texture */
  , glGetTextureHandleNV_ENUM
  , glGetTextureSamplerHandleNV_ENUM
  , glMakeTextureHandleResidentNV_ENUM
  , glMakeTextureHandleNonResidentNV_ENUM
  , glGetImageHandleNV_ENUM
  , glMakeImageHandleResidentNV_ENUM
  , glMakeImageHandleNonResidentNV_ENUM
  , glUniformHandleui64NV_ENUM
  , glUniformHandleui64vNV_ENUM
  , glProgramUniformHandleui64NV_ENUM
  , glProgramUniformHandleui64vNV_ENUM
  , glIsTextureHandleResidentNV_ENUM
  , glIsImageHandleResidentNV_ENUM
/* GL_NV_shader_atomic_float */
  , _ENUM_EXDL_GLEXT
  };


/* GL_VERSION_1_2 */
typedef void             (APIENTRY* EXDLGLBLENDCOLORPROC)                                         (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
typedef void             (APIENTRY* EXDLGLBLENDEQUATIONPROC)                                      (GLenum mode);
typedef void             (APIENTRY* EXDLGLDRAWRANGEELEMENTSPROC)                                  (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid* indices);
typedef void             (APIENTRY* EXDLGLTEXIMAGE3DPROC)                                         (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLTEXSUBIMAGE3DPROC)                                      (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLCOPYTEXSUBIMAGE3DPROC)                                  (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
/* GL_VERSION_1_2_DEPRECATED */
typedef void             (APIENTRY* EXDLGLCOLORTABLEPROC)                                         (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* table);
typedef void             (APIENTRY* EXDLGLCOLORTABLEPARAMETERFVPROC)                              (GLenum target, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLCOLORTABLEPARAMETERIVPROC)                              (GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLCOPYCOLORTABLEPROC)                                     (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
typedef void             (APIENTRY* EXDLGLGETCOLORTABLEPROC)                                      (GLenum target, GLenum format, GLenum type, GLvoid* table);
typedef void             (APIENTRY* EXDLGLGETCOLORTABLEPARAMETERFVPROC)                           (GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETCOLORTABLEPARAMETERIVPROC)                           (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLCOLORSUBTABLEPROC)                                      (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOPYCOLORSUBTABLEPROC)                                  (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONFILTER1DPROC)                                (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* image);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONFILTER2DPROC)                                (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* image);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONPARAMETERFPROC)                              (GLenum target, GLenum pname, GLfloat params);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONPARAMETERFVPROC)                             (GLenum target, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONPARAMETERIPROC)                              (GLenum target, GLenum pname, GLint params);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONPARAMETERIVPROC)                             (GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLCOPYCONVOLUTIONFILTER1DPROC)                            (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
typedef void             (APIENTRY* EXDLGLCOPYCONVOLUTIONFILTER2DPROC)                            (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLGETCONVOLUTIONFILTERPROC)                               (GLenum target, GLenum format, GLenum type, GLvoid* image);
typedef void             (APIENTRY* EXDLGLGETCONVOLUTIONPARAMETERFVPROC)                          (GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETCONVOLUTIONPARAMETERIVPROC)                          (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETSEPARABLEFILTERPROC)                                 (GLenum target, GLenum format, GLenum type, GLvoid* row, GLvoid* column, GLvoid* span);
typedef void             (APIENTRY* EXDLGLSEPARABLEFILTER2DPROC)                                  (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* row, const GLvoid* column);
typedef void             (APIENTRY* EXDLGLGETHISTOGRAMPROC)                                       (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values);
typedef void             (APIENTRY* EXDLGLGETHISTOGRAMPARAMETERFVPROC)                            (GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETHISTOGRAMPARAMETERIVPROC)                            (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETMINMAXPROC)                                          (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values);
typedef void             (APIENTRY* EXDLGLGETMINMAXPARAMETERFVPROC)                               (GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETMINMAXPARAMETERIVPROC)                               (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLHISTOGRAMPROC)                                          (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
typedef void             (APIENTRY* EXDLGLMINMAXPROC)                                             (GLenum target, GLenum internalformat, GLboolean sink);
typedef void             (APIENTRY* EXDLGLRESETHISTOGRAMPROC)                                     (GLenum target);
typedef void             (APIENTRY* EXDLGLRESETMINMAXPROC)                                        (GLenum target);
/* GL_VERSION_1_3 */
typedef void             (APIENTRY* EXDLGLACTIVETEXTUREPROC)                                      (GLenum texture);
typedef void             (APIENTRY* EXDLGLSAMPLECOVERAGEPROC)                                     (GLfloat value, GLboolean invert);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXIMAGE3DPROC)                               (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXIMAGE2DPROC)                               (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXIMAGE1DPROC)                               (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXSUBIMAGE3DPROC)                            (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXSUBIMAGE2DPROC)                            (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXSUBIMAGE1DPROC)                            (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLGETCOMPRESSEDTEXIMAGEPROC)                              (GLenum target, GLint level, GLvoid* img);
/* GL_VERSION_1_3_DEPRECATED */
typedef void             (APIENTRY* EXDLGLCLIENTACTIVETEXTUREPROC)                                (GLenum texture);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1DPROC)                                    (GLenum target, GLdouble s);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1DVPROC)                                   (GLenum target, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1FPROC)                                    (GLenum target, GLfloat s);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1FVPROC)                                   (GLenum target, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1IPROC)                                    (GLenum target, GLint s);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1IVPROC)                                   (GLenum target, const GLint* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1SPROC)                                    (GLenum target, GLshort s);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1SVPROC)                                   (GLenum target, const GLshort* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2DPROC)                                    (GLenum target, GLdouble s, GLdouble t);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2DVPROC)                                   (GLenum target, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2FPROC)                                    (GLenum target, GLfloat s, GLfloat t);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2FVPROC)                                   (GLenum target, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2IPROC)                                    (GLenum target, GLint s, GLint t);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2IVPROC)                                   (GLenum target, const GLint* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2SPROC)                                    (GLenum target, GLshort s, GLshort t);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2SVPROC)                                   (GLenum target, const GLshort* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3DPROC)                                    (GLenum target, GLdouble s, GLdouble t, GLdouble r);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3DVPROC)                                   (GLenum target, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3FPROC)                                    (GLenum target, GLfloat s, GLfloat t, GLfloat r);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3FVPROC)                                   (GLenum target, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3IPROC)                                    (GLenum target, GLint s, GLint t, GLint r);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3IVPROC)                                   (GLenum target, const GLint* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3SPROC)                                    (GLenum target, GLshort s, GLshort t, GLshort r);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3SVPROC)                                   (GLenum target, const GLshort* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4DPROC)                                    (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4DVPROC)                                   (GLenum target, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4FPROC)                                    (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4FVPROC)                                   (GLenum target, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4IPROC)                                    (GLenum target, GLint s, GLint t, GLint r, GLint q);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4IVPROC)                                   (GLenum target, const GLint* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4SPROC)                                    (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4SVPROC)                                   (GLenum target, const GLshort* v);
typedef void             (APIENTRY* EXDLGLLOADTRANSPOSEMATRIXFPROC)                               (const GLfloat* m);
typedef void             (APIENTRY* EXDLGLLOADTRANSPOSEMATRIXDPROC)                               (const GLdouble* m);
typedef void             (APIENTRY* EXDLGLMULTTRANSPOSEMATRIXFPROC)                               (const GLfloat* m);
typedef void             (APIENTRY* EXDLGLMULTTRANSPOSEMATRIXDPROC)                               (const GLdouble* m);
/* GL_VERSION_1_4 */
typedef void             (APIENTRY* EXDLGLBLENDFUNCSEPARATEPROC)                                  (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
typedef void             (APIENTRY* EXDLGLMULTIDRAWARRAYSPROC)                                    (GLenum mode, const GLint* first, const GLsizei* count, GLsizei primcount);
typedef void             (APIENTRY* EXDLGLMULTIDRAWELEMENTSPROC)                                  (GLenum mode, const GLsizei* count, GLenum type, const GLvoid** indices, GLsizei primcount);
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERFPROC)                                    (GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERFVPROC)                                   (GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERIPROC)                                    (GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERIVPROC)                                   (GLenum pname, const GLint* params);
/* GL_VERSION_1_4_DEPRECATED */
typedef void             (APIENTRY* EXDLGLFOGCOORDFPROC)                                          (GLfloat coord);
typedef void             (APIENTRY* EXDLGLFOGCOORDFVPROC)                                         (const GLfloat* coord);
typedef void             (APIENTRY* EXDLGLFOGCOORDDPROC)                                          (GLdouble coord);
typedef void             (APIENTRY* EXDLGLFOGCOORDDVPROC)                                         (const GLdouble* coord);
typedef void             (APIENTRY* EXDLGLFOGCOORDPOINTERPROC)                                    (GLenum type, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3BPROC)                                   (GLbyte red, GLbyte green, GLbyte blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3BVPROC)                                  (const GLbyte* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3DPROC)                                   (GLdouble red, GLdouble green, GLdouble blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3DVPROC)                                  (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3FPROC)                                   (GLfloat red, GLfloat green, GLfloat blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3FVPROC)                                  (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3IPROC)                                   (GLint red, GLint green, GLint blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3IVPROC)                                  (const GLint* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3SPROC)                                   (GLshort red, GLshort green, GLshort blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3SVPROC)                                  (const GLshort* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3UBPROC)                                  (GLubyte red, GLubyte green, GLubyte blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3UBVPROC)                                 (const GLubyte* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3UIPROC)                                  (GLuint red, GLuint green, GLuint blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3UIVPROC)                                 (const GLuint* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3USPROC)                                  (GLushort red, GLushort green, GLushort blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3USVPROC)                                 (const GLushort* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLORPOINTERPROC)                              (GLint size, GLenum type, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2DPROC)                                        (GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2DVPROC)                                       (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2FPROC)                                        (GLfloat x, GLfloat y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2FVPROC)                                       (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2IPROC)                                        (GLint x, GLint y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2IVPROC)                                       (const GLint* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2SPROC)                                        (GLshort x, GLshort y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2SVPROC)                                       (const GLshort* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3DPROC)                                        (GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3DVPROC)                                       (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3FPROC)                                        (GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3FVPROC)                                       (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3IPROC)                                        (GLint x, GLint y, GLint z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3IVPROC)                                       (const GLint* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3SPROC)                                        (GLshort x, GLshort y, GLshort z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3SVPROC)                                       (const GLshort* v);
/* GL_VERSION_1_5 */
typedef void             (APIENTRY* EXDLGLGENQUERIESPROC)                                         (GLsizei n, GLuint* ids);
typedef void             (APIENTRY* EXDLGLDELETEQUERIESPROC)                                      (GLsizei n, const GLuint* ids);
typedef GLboolean        (APIENTRY* EXDLGLISQUERYPROC)                                            (GLuint id);
typedef void             (APIENTRY* EXDLGLBEGINQUERYPROC)                                         (GLenum target, GLuint id);
typedef void             (APIENTRY* EXDLGLENDQUERYPROC)                                           (GLenum target);
typedef void             (APIENTRY* EXDLGLGETQUERYIVPROC)                                         (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETQUERYOBJECTIVPROC)                                   (GLuint id, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETQUERYOBJECTUIVPROC)                                  (GLuint id, GLenum pname, GLuint* params);
typedef void             (APIENTRY* EXDLGLBINDBUFFERPROC)                                         (GLenum target, GLuint buffer);
typedef void             (APIENTRY* EXDLGLDELETEBUFFERSPROC)                                      (GLsizei n, const GLuint* buffers);
typedef void             (APIENTRY* EXDLGLGENBUFFERSPROC)                                         (GLsizei n, GLuint* buffers);
typedef GLboolean        (APIENTRY* EXDLGLISBUFFERPROC)                                           (GLuint buffer);
typedef void             (APIENTRY* EXDLGLBUFFERDATAPROC)                                         (GLenum target, GLsizeiptr size, const GLvoid* data, GLenum usage);
typedef void             (APIENTRY* EXDLGLBUFFERSUBDATAPROC)                                      (GLenum target, GLintptr offset, GLsizeiptr size, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLGETBUFFERSUBDATAPROC)                                   (GLenum target, GLintptr offset, GLsizeiptr size, GLvoid* data);
typedef GLvoid*          (APIENTRY* EXDLGLMAPBUFFERPROC)                                          (GLenum target, GLenum access);
typedef GLboolean        (APIENTRY* EXDLGLUNMAPBUFFERPROC)                                        (GLenum target);
typedef void             (APIENTRY* EXDLGLGETBUFFERPARAMETERIVPROC)                               (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETBUFFERPOINTERVPROC)                                  (GLenum target, GLenum pname, GLvoid** params);
/* GL_VERSION_2_0 */
typedef void             (APIENTRY* EXDLGLBLENDEQUATIONSEPARATEPROC)                              (GLenum modeRGB, GLenum modeAlpha);
typedef void             (APIENTRY* EXDLGLDRAWBUFFERSPROC)                                        (GLsizei n, const GLenum* bufs);
typedef void             (APIENTRY* EXDLGLSTENCILOPSEPARATEPROC)                                  (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
typedef void             (APIENTRY* EXDLGLSTENCILFUNCSEPARATEPROC)                                (GLenum face, GLenum func, GLint ref, GLuint mask);
typedef void             (APIENTRY* EXDLGLSTENCILMASKSEPARATEPROC)                                (GLenum face, GLuint mask);
typedef void             (APIENTRY* EXDLGLATTACHSHADERPROC)                                       (GLuint program, GLuint shader);
typedef void             (APIENTRY* EXDLGLBINDATTRIBLOCATIONPROC)                                 (GLuint program, GLuint index, const GLchar* name);
typedef void             (APIENTRY* EXDLGLCOMPILESHADERPROC)                                      (GLuint shader);
typedef GLuint           (APIENTRY* EXDLGLCREATEPROGRAMPROC)                                      (void);
typedef GLuint           (APIENTRY* EXDLGLCREATESHADERPROC)                                       (GLenum type);
typedef void             (APIENTRY* EXDLGLDELETEPROGRAMPROC)                                      (GLuint program);
typedef void             (APIENTRY* EXDLGLDELETESHADERPROC)                                       (GLuint shader);
typedef void             (APIENTRY* EXDLGLDETACHSHADERPROC)                                       (GLuint program, GLuint shader);
typedef void             (APIENTRY* EXDLGLDISABLEVERTEXATTRIBARRAYPROC)                           (GLuint index);
typedef void             (APIENTRY* EXDLGLENABLEVERTEXATTRIBARRAYPROC)                            (GLuint index);
typedef void             (APIENTRY* EXDLGLGETACTIVEATTRIBPROC)                                    (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name);
typedef void             (APIENTRY* EXDLGLGETACTIVEUNIFORMPROC)                                   (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name);
typedef void             (APIENTRY* EXDLGLGETATTACHEDSHADERSPROC)                                 (GLuint program, GLsizei maxCount, GLsizei* count, GLuint* obj);
typedef GLint            (APIENTRY* EXDLGLGETATTRIBLOCATIONPROC)                                  (GLuint program, const GLchar* name);
typedef void             (APIENTRY* EXDLGLGETPROGRAMIVPROC)                                       (GLuint program, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMINFOLOGPROC)                                  (GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
typedef void             (APIENTRY* EXDLGLGETSHADERIVPROC)                                        (GLuint shader, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETSHADERINFOLOGPROC)                                   (GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
typedef void             (APIENTRY* EXDLGLGETSHADERSOURCEPROC)                                    (GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source);
typedef GLint            (APIENTRY* EXDLGLGETUNIFORMLOCATIONPROC)                                 (GLuint program, const GLchar* name);
typedef void             (APIENTRY* EXDLGLGETUNIFORMFVPROC)                                       (GLuint program, GLint location, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETUNIFORMIVPROC)                                       (GLuint program, GLint location, GLint* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBDVPROC)                                  (GLuint index, GLenum pname, GLdouble* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBFVPROC)                                  (GLuint index, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBIVPROC)                                  (GLuint index, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBPOINTERVPROC)                            (GLuint index, GLenum pname, GLvoid** pointer);
typedef GLboolean        (APIENTRY* EXDLGLISPROGRAMPROC)                                          (GLuint program);
typedef GLboolean        (APIENTRY* EXDLGLISSHADERPROC)                                           (GLuint shader);
typedef void             (APIENTRY* EXDLGLLINKPROGRAMPROC)                                        (GLuint program);
typedef void             (APIENTRY* EXDLGLSHADERSOURCEPROC)                                       (GLuint shader, GLsizei count, const GLchar** string, const GLint* length);
typedef void             (APIENTRY* EXDLGLUSEPROGRAMPROC)                                         (GLuint program);
typedef void             (APIENTRY* EXDLGLUNIFORM1FPROC)                                          (GLint location, GLfloat v0);
typedef void             (APIENTRY* EXDLGLUNIFORM2FPROC)                                          (GLint location, GLfloat v0, GLfloat v1);
typedef void             (APIENTRY* EXDLGLUNIFORM3FPROC)                                          (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
typedef void             (APIENTRY* EXDLGLUNIFORM4FPROC)                                          (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
typedef void             (APIENTRY* EXDLGLUNIFORM1IPROC)                                          (GLint location, GLint v0);
typedef void             (APIENTRY* EXDLGLUNIFORM2IPROC)                                          (GLint location, GLint v0, GLint v1);
typedef void             (APIENTRY* EXDLGLUNIFORM3IPROC)                                          (GLint location, GLint v0, GLint v1, GLint v2);
typedef void             (APIENTRY* EXDLGLUNIFORM4IPROC)                                          (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
typedef void             (APIENTRY* EXDLGLUNIFORM1FVPROC)                                         (GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORM2FVPROC)                                         (GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORM3FVPROC)                                         (GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORM4FVPROC)                                         (GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORM1IVPROC)                                         (GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM2IVPROC)                                         (GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM3IVPROC)                                         (GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM4IVPROC)                                         (GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX2FVPROC)                                   (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX3FVPROC)                                   (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX4FVPROC)                                   (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLVALIDATEPROGRAMPROC)                                    (GLuint program);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1DPROC)                                     (GLuint index, GLdouble x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1DVPROC)                                    (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1FPROC)                                     (GLuint index, GLfloat x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1FVPROC)                                    (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1SPROC)                                     (GLuint index, GLshort x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1SVPROC)                                    (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2DPROC)                                     (GLuint index, GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2DVPROC)                                    (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2FPROC)                                     (GLuint index, GLfloat x, GLfloat y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2FVPROC)                                    (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2SPROC)                                     (GLuint index, GLshort x, GLshort y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2SVPROC)                                    (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3DPROC)                                     (GLuint index, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3DVPROC)                                    (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3FPROC)                                     (GLuint index, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3FVPROC)                                    (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3SPROC)                                     (GLuint index, GLshort x, GLshort y, GLshort z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3SVPROC)                                    (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NBVPROC)                                   (GLuint index, const GLbyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NIVPROC)                                   (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NSVPROC)                                   (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NUBPROC)                                   (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NUBVPROC)                                  (GLuint index, const GLubyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NUIVPROC)                                  (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NUSVPROC)                                  (GLuint index, const GLushort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4BVPROC)                                    (GLuint index, const GLbyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4DPROC)                                     (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4DVPROC)                                    (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4FPROC)                                     (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4FVPROC)                                    (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4IVPROC)                                    (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4SPROC)                                     (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4SVPROC)                                    (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4UBVPROC)                                   (GLuint index, const GLubyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4UIVPROC)                                   (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4USVPROC)                                   (GLuint index, const GLushort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBPOINTERPROC)                                (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid* pointer);
/* GL_VERSION_2_1 */
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX2X3FVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX3X2FVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX2X4FVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX4X2FVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX3X4FVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX4X3FVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
/* GL_VERSION_3_0 */
typedef void             (APIENTRY* EXDLGLCOLORMASKIPROC)                                         (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
typedef void             (APIENTRY* EXDLGLGETBOOLEANI_VPROC)                                      (GLenum target, GLuint index, GLboolean* data);
typedef void             (APIENTRY* EXDLGLGETINTEGERI_VPROC)                                      (GLenum target, GLuint index, GLint* data);
typedef void             (APIENTRY* EXDLGLENABLEIPROC)                                            (GLenum target, GLuint index);
typedef void             (APIENTRY* EXDLGLDISABLEIPROC)                                           (GLenum target, GLuint index);
typedef GLboolean        (APIENTRY* EXDLGLISENABLEDIPROC)                                         (GLenum target, GLuint index);
typedef void             (APIENTRY* EXDLGLBEGINTRANSFORMFEEDBACKPROC)                             (GLenum primitiveMode);
typedef void             (APIENTRY* EXDLGLENDTRANSFORMFEEDBACKPROC)                               (void);
typedef void             (APIENTRY* EXDLGLBINDBUFFERRANGEPROC)                                    (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
typedef void             (APIENTRY* EXDLGLBINDBUFFERBASEPROC)                                     (GLenum target, GLuint index, GLuint buffer);
typedef void             (APIENTRY* EXDLGLTRANSFORMFEEDBACKVARYINGSPROC)                          (GLuint program, GLsizei count, const GLchar** varyings, GLenum bufferMode);
typedef void             (APIENTRY* EXDLGLGETTRANSFORMFEEDBACKVARYINGPROC)                        (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);
typedef void             (APIENTRY* EXDLGLCLAMPCOLORPROC)                                         (GLenum target, GLenum clamp);
typedef void             (APIENTRY* EXDLGLBEGINCONDITIONALRENDERPROC)                             (GLuint id, GLenum mode);
typedef void             (APIENTRY* EXDLGLENDCONDITIONALRENDERPROC)                               (void);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBIPOINTERPROC)                               (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBIIVPROC)                                 (GLuint index, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBIUIVPROC)                                (GLuint index, GLenum pname, GLuint* params);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI1IPROC)                                    (GLuint index, GLint x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI2IPROC)                                    (GLuint index, GLint x, GLint y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI3IPROC)                                    (GLuint index, GLint x, GLint y, GLint z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4IPROC)                                    (GLuint index, GLint x, GLint y, GLint z, GLint w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI1UIPROC)                                   (GLuint index, GLuint x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI2UIPROC)                                   (GLuint index, GLuint x, GLuint y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI3UIPROC)                                   (GLuint index, GLuint x, GLuint y, GLuint z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4UIPROC)                                   (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI1IVPROC)                                   (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI2IVPROC)                                   (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI3IVPROC)                                   (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4IVPROC)                                   (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI1UIVPROC)                                  (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI2UIVPROC)                                  (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI3UIVPROC)                                  (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4UIVPROC)                                  (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4BVPROC)                                   (GLuint index, const GLbyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4SVPROC)                                   (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4UBVPROC)                                  (GLuint index, const GLubyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4USVPROC)                                  (GLuint index, const GLushort* v);
typedef void             (APIENTRY* EXDLGLGETUNIFORMUIVPROC)                                      (GLuint program, GLint location, GLuint* params);
typedef void             (APIENTRY* EXDLGLBINDFRAGDATALOCATIONPROC)                               (GLuint program, GLuint color, const GLchar* name);
typedef GLint            (APIENTRY* EXDLGLGETFRAGDATALOCATIONPROC)                                (GLuint program, const GLchar* name);
typedef void             (APIENTRY* EXDLGLUNIFORM1UIPROC)                                         (GLint location, GLuint v0);
typedef void             (APIENTRY* EXDLGLUNIFORM2UIPROC)                                         (GLint location, GLuint v0, GLuint v1);
typedef void             (APIENTRY* EXDLGLUNIFORM3UIPROC)                                         (GLint location, GLuint v0, GLuint v1, GLuint v2);
typedef void             (APIENTRY* EXDLGLUNIFORM4UIPROC)                                         (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
typedef void             (APIENTRY* EXDLGLUNIFORM1UIVPROC)                                        (GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM2UIVPROC)                                        (GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM3UIVPROC)                                        (GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM4UIVPROC)                                        (GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLTEXPARAMETERIIVPROC)                                    (GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLTEXPARAMETERIUIVPROC)                                   (GLenum target, GLenum pname, const GLuint* params);
typedef void             (APIENTRY* EXDLGLGETTEXPARAMETERIIVPROC)                                 (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETTEXPARAMETERIUIVPROC)                                (GLenum target, GLenum pname, GLuint* params);
typedef void             (APIENTRY* EXDLGLCLEARBUFFERIVPROC)                                      (GLenum buffer, GLint drawbuffer, const GLint* value);
typedef void             (APIENTRY* EXDLGLCLEARBUFFERUIVPROC)                                     (GLenum buffer, GLint drawbuffer, const GLuint* value);
typedef void             (APIENTRY* EXDLGLCLEARBUFFERFVPROC)                                      (GLenum buffer, GLint drawbuffer, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLCLEARBUFFERFIPROC)                                      (GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
typedef const GLubyte*   (APIENTRY* EXDLGLGETSTRINGIPROC)                                         (GLenum name, GLuint index);
/* GL_VERSION_3_1 */
typedef void             (APIENTRY* EXDLGLDRAWARRAYSINSTANCEDPROC)                                (GLenum mode, GLint first, GLsizei count, GLsizei primcount);
typedef void             (APIENTRY* EXDLGLDRAWELEMENTSINSTANCEDPROC)                              (GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei primcount);
typedef void             (APIENTRY* EXDLGLTEXBUFFERPROC)                                          (GLenum target, GLenum internalformat, GLuint buffer);
typedef void             (APIENTRY* EXDLGLPRIMITIVERESTARTINDEXPROC)                              (GLuint index);
/* GL_VERSION_3_2 */
typedef void             (APIENTRY* EXDLGLGETINTEGER64I_VPROC)                                    (GLenum target, GLuint index, GLint64* data);
typedef void             (APIENTRY* EXDLGLGETBUFFERPARAMETERI64VPROC)                             (GLenum target, GLenum pname, GLint64* params);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTUREPROC)                                 (GLenum target, GLenum attachment, GLuint texture, GLint level);
/* GL_VERSION_3_3 */
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBDIVISORPROC)                                (GLuint index, GLuint divisor);
/* GL_VERSION_4_0 */
typedef void             (APIENTRY* EXDLGLMINSAMPLESHADINGPROC)                                   (GLfloat value);
typedef void             (APIENTRY* EXDLGLBLENDEQUATIONIPROC)                                     (GLuint buf, GLenum mode);
typedef void             (APIENTRY* EXDLGLBLENDEQUATIONSEPARATEIPROC)                             (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
typedef void             (APIENTRY* EXDLGLBLENDFUNCIPROC)                                         (GLuint buf, GLenum src, GLenum dst);
typedef void             (APIENTRY* EXDLGLBLENDFUNCSEPARATEIPROC)                                 (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
/* GL_VERSION_4_1 */
/* GL_VERSION_4_2 */
/* GL_ARB_multitexture */
typedef void             (APIENTRY* EXDLGLACTIVETEXTUREARBPROC)                                   (GLenum texture);
typedef void             (APIENTRY* EXDLGLCLIENTACTIVETEXTUREARBPROC)                             (GLenum texture);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1DARBPROC)                                 (GLenum target, GLdouble s);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1DVARBPROC)                                (GLenum target, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1FARBPROC)                                 (GLenum target, GLfloat s);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1FVARBPROC)                                (GLenum target, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1IARBPROC)                                 (GLenum target, GLint s);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1IVARBPROC)                                (GLenum target, const GLint* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1SARBPROC)                                 (GLenum target, GLshort s);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1SVARBPROC)                                (GLenum target, const GLshort* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2DARBPROC)                                 (GLenum target, GLdouble s, GLdouble t);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2DVARBPROC)                                (GLenum target, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2FARBPROC)                                 (GLenum target, GLfloat s, GLfloat t);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2FVARBPROC)                                (GLenum target, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2IARBPROC)                                 (GLenum target, GLint s, GLint t);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2IVARBPROC)                                (GLenum target, const GLint* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2SARBPROC)                                 (GLenum target, GLshort s, GLshort t);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2SVARBPROC)                                (GLenum target, const GLshort* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3DARBPROC)                                 (GLenum target, GLdouble s, GLdouble t, GLdouble r);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3DVARBPROC)                                (GLenum target, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3FARBPROC)                                 (GLenum target, GLfloat s, GLfloat t, GLfloat r);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3FVARBPROC)                                (GLenum target, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3IARBPROC)                                 (GLenum target, GLint s, GLint t, GLint r);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3IVARBPROC)                                (GLenum target, const GLint* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3SARBPROC)                                 (GLenum target, GLshort s, GLshort t, GLshort r);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3SVARBPROC)                                (GLenum target, const GLshort* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4DARBPROC)                                 (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4DVARBPROC)                                (GLenum target, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4FARBPROC)                                 (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4FVARBPROC)                                (GLenum target, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4IARBPROC)                                 (GLenum target, GLint s, GLint t, GLint r, GLint q);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4IVARBPROC)                                (GLenum target, const GLint* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4SARBPROC)                                 (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4SVARBPROC)                                (GLenum target, const GLshort* v);
/* GL_ARB_transpose_matrix */
typedef void             (APIENTRY* EXDLGLLOADTRANSPOSEMATRIXFARBPROC)                            (const GLfloat* m);
typedef void             (APIENTRY* EXDLGLLOADTRANSPOSEMATRIXDARBPROC)                            (const GLdouble* m);
typedef void             (APIENTRY* EXDLGLMULTTRANSPOSEMATRIXFARBPROC)                            (const GLfloat* m);
typedef void             (APIENTRY* EXDLGLMULTTRANSPOSEMATRIXDARBPROC)                            (const GLdouble* m);
/* GL_ARB_multisample */
typedef void             (APIENTRY* EXDLGLSAMPLECOVERAGEARBPROC)                                  (GLfloat value, GLboolean invert);
/* GL_ARB_texture_env_add */
/* GL_ARB_texture_cube_map */
/* GL_ARB_texture_compression */
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXIMAGE3DARBPROC)                            (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXIMAGE2DARBPROC)                            (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXIMAGE1DARBPROC)                            (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXSUBIMAGE3DARBPROC)                         (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXSUBIMAGE2DARBPROC)                         (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXSUBIMAGE1DARBPROC)                         (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLGETCOMPRESSEDTEXIMAGEARBPROC)                           (GLenum target, GLint level, GLvoid* img);
/* GL_ARB_texture_border_clamp */
/* GL_ARB_point_parameters */
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERFARBPROC)                                 (GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERFVARBPROC)                                (GLenum pname, const GLfloat* params);
/* GL_ARB_vertex_blend */
typedef void             (APIENTRY* EXDLGLWEIGHTBVARBPROC)                                        (GLint size, const GLbyte* weights);
typedef void             (APIENTRY* EXDLGLWEIGHTSVARBPROC)                                        (GLint size, const GLshort* weights);
typedef void             (APIENTRY* EXDLGLWEIGHTIVARBPROC)                                        (GLint size, const GLint* weights);
typedef void             (APIENTRY* EXDLGLWEIGHTFVARBPROC)                                        (GLint size, const GLfloat* weights);
typedef void             (APIENTRY* EXDLGLWEIGHTDVARBPROC)                                        (GLint size, const GLdouble* weights);
typedef void             (APIENTRY* EXDLGLWEIGHTUBVARBPROC)                                       (GLint size, const GLubyte* weights);
typedef void             (APIENTRY* EXDLGLWEIGHTUSVARBPROC)                                       (GLint size, const GLushort* weights);
typedef void             (APIENTRY* EXDLGLWEIGHTUIVARBPROC)                                       (GLint size, const GLuint* weights);
typedef void             (APIENTRY* EXDLGLWEIGHTPOINTERARBPROC)                                   (GLint size, GLenum type, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLVERTEXBLENDARBPROC)                                     (GLint count);
/* GL_ARB_matrix_palette */
typedef void             (APIENTRY* EXDLGLCURRENTPALETTEMATRIXARBPROC)                            (GLint index);
typedef void             (APIENTRY* EXDLGLMATRIXINDEXUBVARBPROC)                                  (GLint size, const GLubyte* indices);
typedef void             (APIENTRY* EXDLGLMATRIXINDEXUSVARBPROC)                                  (GLint size, const GLushort* indices);
typedef void             (APIENTRY* EXDLGLMATRIXINDEXUIVARBPROC)                                  (GLint size, const GLuint* indices);
typedef void             (APIENTRY* EXDLGLMATRIXINDEXPOINTERARBPROC)                              (GLint size, GLenum type, GLsizei stride, const GLvoid* pointer);
/* GL_ARB_texture_env_combine */
/* GL_ARB_texture_env_crossbar */
/* GL_ARB_texture_env_dot3 */
/* GL_ARB_texture_mirrored_repeat */
/* GL_ARB_depth_texture */
/* GL_ARB_shadow */
/* GL_ARB_shadow_ambient */
/* GL_ARB_window_pos */
typedef void             (APIENTRY* EXDLGLWINDOWPOS2DARBPROC)                                     (GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2DVARBPROC)                                    (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2FARBPROC)                                     (GLfloat x, GLfloat y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2FVARBPROC)                                    (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2IARBPROC)                                     (GLint x, GLint y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2IVARBPROC)                                    (const GLint* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2SARBPROC)                                     (GLshort x, GLshort y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2SVARBPROC)                                    (const GLshort* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3DARBPROC)                                     (GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3DVARBPROC)                                    (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3FARBPROC)                                     (GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3FVARBPROC)                                    (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3IARBPROC)                                     (GLint x, GLint y, GLint z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3IVARBPROC)                                    (const GLint* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3SARBPROC)                                     (GLshort x, GLshort y, GLshort z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3SVARBPROC)                                    (const GLshort* v);
/* GL_ARB_vertex_program */
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1DARBPROC)                                  (GLuint index, GLdouble x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1DVARBPROC)                                 (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1FARBPROC)                                  (GLuint index, GLfloat x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1FVARBPROC)                                 (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1SARBPROC)                                  (GLuint index, GLshort x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1SVARBPROC)                                 (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2DARBPROC)                                  (GLuint index, GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2DVARBPROC)                                 (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2FARBPROC)                                  (GLuint index, GLfloat x, GLfloat y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2FVARBPROC)                                 (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2SARBPROC)                                  (GLuint index, GLshort x, GLshort y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2SVARBPROC)                                 (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3DARBPROC)                                  (GLuint index, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3DVARBPROC)                                 (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3FARBPROC)                                  (GLuint index, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3FVARBPROC)                                 (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3SARBPROC)                                  (GLuint index, GLshort x, GLshort y, GLshort z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3SVARBPROC)                                 (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NBVARBPROC)                                (GLuint index, const GLbyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NIVARBPROC)                                (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NSVARBPROC)                                (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NUBARBPROC)                                (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NUBVARBPROC)                               (GLuint index, const GLubyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NUIVARBPROC)                               (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4NUSVARBPROC)                               (GLuint index, const GLushort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4BVARBPROC)                                 (GLuint index, const GLbyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4DARBPROC)                                  (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4DVARBPROC)                                 (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4FARBPROC)                                  (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4FVARBPROC)                                 (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4IVARBPROC)                                 (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4SARBPROC)                                  (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4SVARBPROC)                                 (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4UBVARBPROC)                                (GLuint index, const GLubyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4UIVARBPROC)                                (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4USVARBPROC)                                (GLuint index, const GLushort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBPOINTERARBPROC)                             (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLENABLEVERTEXATTRIBARRAYARBPROC)                         (GLuint index);
typedef void             (APIENTRY* EXDLGLDISABLEVERTEXATTRIBARRAYARBPROC)                        (GLuint index);
typedef void             (APIENTRY* EXDLGLPROGRAMSTRINGARBPROC)                                   (GLenum target, GLenum format, GLsizei len, const GLvoid* string);
typedef void             (APIENTRY* EXDLGLBINDPROGRAMARBPROC)                                     (GLenum target, GLuint program);
typedef void             (APIENTRY* EXDLGLDELETEPROGRAMSARBPROC)                                  (GLsizei n, const GLuint* programs);
typedef void             (APIENTRY* EXDLGLGENPROGRAMSARBPROC)                                     (GLsizei n, GLuint* programs);
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETER4DARBPROC)                           (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETER4DVARBPROC)                          (GLenum target, GLuint index, const GLdouble* params);
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETER4FARBPROC)                           (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETER4FVARBPROC)                          (GLenum target, GLuint index, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETER4DARBPROC)                         (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETER4DVARBPROC)                        (GLenum target, GLuint index, const GLdouble* params);
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETER4FARBPROC)                         (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETER4FVARBPROC)                        (GLenum target, GLuint index, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMENVPARAMETERDVARBPROC)                        (GLenum target, GLuint index, GLdouble* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMENVPARAMETERFVARBPROC)                        (GLenum target, GLuint index, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMLOCALPARAMETERDVARBPROC)                      (GLenum target, GLuint index, GLdouble* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMLOCALPARAMETERFVARBPROC)                      (GLenum target, GLuint index, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMIVARBPROC)                                    (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMSTRINGARBPROC)                                (GLenum target, GLenum pname, GLvoid* string);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBDVARBPROC)                               (GLuint index, GLenum pname, GLdouble* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBFVARBPROC)                               (GLuint index, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBIVARBPROC)                               (GLuint index, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBPOINTERVARBPROC)                         (GLuint index, GLenum pname, GLvoid** pointer);
typedef GLboolean        (APIENTRY* EXDLGLISPROGRAMARBPROC)                                       (GLuint program);
/* GL_ARB_fragment_program */
/* GL_ARB_vertex_buffer_object */
typedef void             (APIENTRY* EXDLGLBINDBUFFERARBPROC)                                      (GLenum target, GLuint buffer);
typedef void             (APIENTRY* EXDLGLDELETEBUFFERSARBPROC)                                   (GLsizei n, const GLuint* buffers);
typedef void             (APIENTRY* EXDLGLGENBUFFERSARBPROC)                                      (GLsizei n, GLuint* buffers);
typedef GLboolean        (APIENTRY* EXDLGLISBUFFERARBPROC)                                        (GLuint buffer);
typedef void             (APIENTRY* EXDLGLBUFFERDATAARBPROC)                                      (GLenum target, GLsizeiptrARB size, const GLvoid* data, GLenum usage);
typedef void             (APIENTRY* EXDLGLBUFFERSUBDATAARBPROC)                                   (GLenum target, GLintptrARB offset, GLsizeiptrARB size, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLGETBUFFERSUBDATAARBPROC)                                (GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid* data);
typedef GLvoid*          (APIENTRY* EXDLGLMAPBUFFERARBPROC)                                       (GLenum target, GLenum access);
typedef GLboolean        (APIENTRY* EXDLGLUNMAPBUFFERARBPROC)                                     (GLenum target);
typedef void             (APIENTRY* EXDLGLGETBUFFERPARAMETERIVARBPROC)                            (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETBUFFERPOINTERVARBPROC)                               (GLenum target, GLenum pname, GLvoid** params);
/* GL_ARB_occlusion_query */
typedef void             (APIENTRY* EXDLGLGENQUERIESARBPROC)                                      (GLsizei n, GLuint* ids);
typedef void             (APIENTRY* EXDLGLDELETEQUERIESARBPROC)                                   (GLsizei n, const GLuint* ids);
typedef GLboolean        (APIENTRY* EXDLGLISQUERYARBPROC)                                         (GLuint id);
typedef void             (APIENTRY* EXDLGLBEGINQUERYARBPROC)                                      (GLenum target, GLuint id);
typedef void             (APIENTRY* EXDLGLENDQUERYARBPROC)                                        (GLenum target);
typedef void             (APIENTRY* EXDLGLGETQUERYIVARBPROC)                                      (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETQUERYOBJECTIVARBPROC)                                (GLuint id, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETQUERYOBJECTUIVARBPROC)                               (GLuint id, GLenum pname, GLuint* params);
/* GL_ARB_shader_objects */
typedef void             (APIENTRY* EXDLGLDELETEOBJECTARBPROC)                                    (GLhandleARB obj);
typedef GLhandleARB      (APIENTRY* EXDLGLGETHANDLEARBPROC)                                       (GLenum pname);
typedef void             (APIENTRY* EXDLGLDETACHOBJECTARBPROC)                                    (GLhandleARB containerObj, GLhandleARB attachedObj);
typedef GLhandleARB      (APIENTRY* EXDLGLCREATESHADEROBJECTARBPROC)                              (GLenum shaderType);
typedef void             (APIENTRY* EXDLGLSHADERSOURCEARBPROC)                                    (GLhandleARB shaderObj, GLsizei count, const GLcharARB** string, const GLint* length);
typedef void             (APIENTRY* EXDLGLCOMPILESHADERARBPROC)                                   (GLhandleARB shaderObj);
typedef GLhandleARB      (APIENTRY* EXDLGLCREATEPROGRAMOBJECTARBPROC)                             (void);
typedef void             (APIENTRY* EXDLGLATTACHOBJECTARBPROC)                                    (GLhandleARB containerObj, GLhandleARB obj);
typedef void             (APIENTRY* EXDLGLLINKPROGRAMARBPROC)                                     (GLhandleARB programObj);
typedef void             (APIENTRY* EXDLGLUSEPROGRAMOBJECTARBPROC)                                (GLhandleARB programObj);
typedef void             (APIENTRY* EXDLGLVALIDATEPROGRAMARBPROC)                                 (GLhandleARB programObj);
typedef void             (APIENTRY* EXDLGLUNIFORM1FARBPROC)                                       (GLint location, GLfloat v0);
typedef void             (APIENTRY* EXDLGLUNIFORM2FARBPROC)                                       (GLint location, GLfloat v0, GLfloat v1);
typedef void             (APIENTRY* EXDLGLUNIFORM3FARBPROC)                                       (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
typedef void             (APIENTRY* EXDLGLUNIFORM4FARBPROC)                                       (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
typedef void             (APIENTRY* EXDLGLUNIFORM1IARBPROC)                                       (GLint location, GLint v0);
typedef void             (APIENTRY* EXDLGLUNIFORM2IARBPROC)                                       (GLint location, GLint v0, GLint v1);
typedef void             (APIENTRY* EXDLGLUNIFORM3IARBPROC)                                       (GLint location, GLint v0, GLint v1, GLint v2);
typedef void             (APIENTRY* EXDLGLUNIFORM4IARBPROC)                                       (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
typedef void             (APIENTRY* EXDLGLUNIFORM1FVARBPROC)                                      (GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORM2FVARBPROC)                                      (GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORM3FVARBPROC)                                      (GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORM4FVARBPROC)                                      (GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORM1IVARBPROC)                                      (GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM2IVARBPROC)                                      (GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM3IVARBPROC)                                      (GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM4IVARBPROC)                                      (GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX2FVARBPROC)                                (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX3FVARBPROC)                                (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX4FVARBPROC)                                (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLGETOBJECTPARAMETERFVARBPROC)                            (GLhandleARB obj, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETOBJECTPARAMETERIVARBPROC)                            (GLhandleARB obj, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETINFOLOGARBPROC)                                      (GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* infoLog);
typedef void             (APIENTRY* EXDLGLGETATTACHEDOBJECTSARBPROC)                              (GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB* obj);
typedef GLint            (APIENTRY* EXDLGLGETUNIFORMLOCATIONARBPROC)                              (GLhandleARB programObj, const GLcharARB* name);
typedef void             (APIENTRY* EXDLGLGETACTIVEUNIFORMARBPROC)                                (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name);
typedef void             (APIENTRY* EXDLGLGETUNIFORMFVARBPROC)                                    (GLhandleARB programObj, GLint location, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETUNIFORMIVARBPROC)                                    (GLhandleARB programObj, GLint location, GLint* params);
typedef void             (APIENTRY* EXDLGLGETSHADERSOURCEARBPROC)                                 (GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* source);
/* GL_ARB_vertex_shader */
typedef void             (APIENTRY* EXDLGLBINDATTRIBLOCATIONARBPROC)                              (GLhandleARB programObj, GLuint index, const GLcharARB* name);
typedef void             (APIENTRY* EXDLGLGETACTIVEATTRIBARBPROC)                                 (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name);
typedef GLint            (APIENTRY* EXDLGLGETATTRIBLOCATIONARBPROC)                               (GLhandleARB programObj, const GLcharARB* name);
/* GL_ARB_fragment_shader */
/* GL_ARB_shading_language_100 */
/* GL_ARB_texture_non_power_of_two */
/* GL_ARB_point_sprite */
/* GL_ARB_fragment_program_shadow */
/* GL_ARB_draw_buffers */
typedef void             (APIENTRY* EXDLGLDRAWBUFFERSARBPROC)                                     (GLsizei n, const GLenum* bufs);
/* GL_ARB_texture_rectangle */
/* GL_ARB_color_buffer_float */
typedef void             (APIENTRY* EXDLGLCLAMPCOLORARBPROC)                                      (GLenum target, GLenum clamp);
/* GL_ARB_half_float_pixel */
/* GL_ARB_texture_float */
/* GL_ARB_pixel_buffer_object */
/* GL_ARB_depth_buffer_float */
/* GL_ARB_draw_instanced */
typedef void             (APIENTRY* EXDLGLDRAWARRAYSINSTANCEDARBPROC)                             (GLenum mode, GLint first, GLsizei count, GLsizei primcount);
typedef void             (APIENTRY* EXDLGLDRAWELEMENTSINSTANCEDARBPROC)                           (GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei primcount);
/* GL_ARB_framebuffer_object */
typedef GLboolean        (APIENTRY* EXDLGLISRENDERBUFFERPROC)                                     (GLuint renderbuffer);
typedef void             (APIENTRY* EXDLGLBINDRENDERBUFFERPROC)                                   (GLenum target, GLuint renderbuffer);
typedef void             (APIENTRY* EXDLGLDELETERENDERBUFFERSPROC)                                (GLsizei n, const GLuint* renderbuffers);
typedef void             (APIENTRY* EXDLGLGENRENDERBUFFERSPROC)                                   (GLsizei n, GLuint* renderbuffers);
typedef void             (APIENTRY* EXDLGLRENDERBUFFERSTORAGEPROC)                                (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLGETRENDERBUFFERPARAMETERIVPROC)                         (GLenum target, GLenum pname, GLint* params);
typedef GLboolean        (APIENTRY* EXDLGLISFRAMEBUFFERPROC)                                      (GLuint framebuffer);
typedef void             (APIENTRY* EXDLGLBINDFRAMEBUFFERPROC)                                    (GLenum target, GLuint framebuffer);
typedef void             (APIENTRY* EXDLGLDELETEFRAMEBUFFERSPROC)                                 (GLsizei n, const GLuint* framebuffers);
typedef void             (APIENTRY* EXDLGLGENFRAMEBUFFERSPROC)                                    (GLsizei n, GLuint* framebuffers);
typedef GLenum           (APIENTRY* EXDLGLCHECKFRAMEBUFFERSTATUSPROC)                             (GLenum target);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTURE1DPROC)                               (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTURE2DPROC)                               (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTURE3DPROC)                               (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERRENDERBUFFERPROC)                            (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
typedef void             (APIENTRY* EXDLGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC)                (GLenum target, GLenum attachment, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGENERATEMIPMAPPROC)                                     (GLenum target);
typedef void             (APIENTRY* EXDLGLBLITFRAMEBUFFERPROC)                                    (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
typedef void             (APIENTRY* EXDLGLRENDERBUFFERSTORAGEMULTISAMPLEPROC)                     (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTURELAYERPROC)                            (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
/* GL_ARB_framebuffer_sRGB */
/* GL_ARB_geometry_shader4 */
typedef void             (APIENTRY* EXDLGLPROGRAMPARAMETERIARBPROC)                               (GLuint program, GLenum pname, GLint value);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTUREARBPROC)                              (GLenum target, GLenum attachment, GLuint texture, GLint level);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTURELAYERARBPROC)                         (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTUREFACEARBPROC)                          (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);
/* GL_ARB_half_float_vertex */
/* GL_ARB_instanced_arrays */
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBDIVISORARBPROC)                             (GLuint index, GLuint divisor);
/* GL_ARB_map_buffer_range */
typedef GLvoid*          (APIENTRY* EXDLGLMAPBUFFERRANGEPROC)                                     (GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access);
typedef void             (APIENTRY* EXDLGLFLUSHMAPPEDBUFFERRANGEPROC)                             (GLenum target, GLintptr offset, GLsizeiptr length);
/* GL_ARB_texture_buffer_object */
typedef void             (APIENTRY* EXDLGLTEXBUFFERARBPROC)                                       (GLenum target, GLenum internalformat, GLuint buffer);
/* GL_ARB_texture_compression_rgtc */
/* GL_ARB_texture_rg */
/* GL_ARB_vertex_array_object */
typedef void             (APIENTRY* EXDLGLBINDVERTEXARRAYPROC)                                    (GLuint array);
typedef void             (APIENTRY* EXDLGLDELETEVERTEXARRAYSPROC)                                 (GLsizei n, const GLuint* arrays);
typedef void             (APIENTRY* EXDLGLGENVERTEXARRAYSPROC)                                    (GLsizei n, GLuint* arrays);
typedef GLboolean        (APIENTRY* EXDLGLISVERTEXARRAYPROC)                                      (GLuint array);
/* GL_ARB_uniform_buffer_object */
typedef void             (APIENTRY* EXDLGLGETUNIFORMINDICESPROC)                                  (GLuint program, GLsizei uniformCount, const GLchar** uniformNames, GLuint* uniformIndices);
typedef void             (APIENTRY* EXDLGLGETACTIVEUNIFORMSIVPROC)                                (GLuint program, GLsizei uniformCount, const GLuint* uniformIndices, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETACTIVEUNIFORMNAMEPROC)                               (GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName);
typedef GLuint           (APIENTRY* EXDLGLGETUNIFORMBLOCKINDEXPROC)                               (GLuint program, const GLchar* uniformBlockName);
typedef void             (APIENTRY* EXDLGLGETACTIVEUNIFORMBLOCKIVPROC)                            (GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETACTIVEUNIFORMBLOCKNAMEPROC)                          (GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName);
typedef void             (APIENTRY* EXDLGLUNIFORMBLOCKBINDINGPROC)                                (GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);
/* GL_ARB_compatibility */
/* GL_ARB_copy_buffer */
typedef void             (APIENTRY* EXDLGLCOPYBUFFERSUBDATAPROC)                                  (GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
/* GL_ARB_shader_texture_lod */
/* GL_ARB_depth_clamp */
/* GL_ARB_draw_elements_base_vertex */
typedef void             (APIENTRY* EXDLGLDRAWELEMENTSBASEVERTEXPROC)                             (GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLint basevertex);
typedef void             (APIENTRY* EXDLGLDRAWRANGEELEMENTSBASEVERTEXPROC)                        (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid* indices, GLint basevertex);
typedef void             (APIENTRY* EXDLGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC)                    (GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei primcount, GLint basevertex);
typedef void             (APIENTRY* EXDLGLMULTIDRAWELEMENTSBASEVERTEXPROC)                        (GLenum mode, const GLsizei* count, GLenum type, const GLvoid** indices, GLsizei primcount, const GLint* basevertex);
/* GL_ARB_fragment_coord_conventions */
/* GL_ARB_provoking_vertex */
typedef void             (APIENTRY* EXDLGLPROVOKINGVERTEXPROC)                                    (GLenum mode);
/* GL_ARB_seamless_cube_map */
/* GL_ARB_sync */
typedef GLsync           (APIENTRY* EXDLGLFENCESYNCPROC)                                          (GLenum condition, GLbitfield flags);
typedef GLboolean        (APIENTRY* EXDLGLISSYNCPROC)                                             (GLsync sync);
typedef void             (APIENTRY* EXDLGLDELETESYNCPROC)                                         (GLsync sync);
typedef GLenum           (APIENTRY* EXDLGLCLIENTWAITSYNCPROC)                                     (GLsync sync, GLbitfield flags, GLuint64 timeout);
typedef void             (APIENTRY* EXDLGLWAITSYNCPROC)                                           (GLsync sync, GLbitfield flags, GLuint64 timeout);
typedef void             (APIENTRY* EXDLGLGETINTEGER64VPROC)                                      (GLenum pname, GLint64* params);
typedef void             (APIENTRY* EXDLGLGETSYNCIVPROC)                                          (GLsync sync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values);
/* GL_ARB_texture_multisample */
typedef void             (APIENTRY* EXDLGLTEXIMAGE2DMULTISAMPLEPROC)                              (GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
typedef void             (APIENTRY* EXDLGLTEXIMAGE3DMULTISAMPLEPROC)                              (GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
typedef void             (APIENTRY* EXDLGLGETMULTISAMPLEFVPROC)                                   (GLenum pname, GLuint index, GLfloat* val);
typedef void             (APIENTRY* EXDLGLSAMPLEMASKIPROC)                                        (GLuint index, GLbitfield mask);
/* GL_ARB_vertex_array_bgra */
/* GL_ARB_draw_buffers_blend */
typedef void             (APIENTRY* EXDLGLBLENDEQUATIONIARBPROC)                                  (GLuint buf, GLenum mode);
typedef void             (APIENTRY* EXDLGLBLENDEQUATIONSEPARATEIARBPROC)                          (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
typedef void             (APIENTRY* EXDLGLBLENDFUNCIARBPROC)                                      (GLuint buf, GLenum src, GLenum dst);
typedef void             (APIENTRY* EXDLGLBLENDFUNCSEPARATEIARBPROC)                              (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
/* GL_ARB_sample_shading */
typedef void             (APIENTRY* EXDLGLMINSAMPLESHADINGARBPROC)                                (GLfloat value);
/* GL_ARB_texture_cube_map_array */
/* GL_ARB_texture_gather */
/* GL_ARB_texture_query_lod */
/* GL_ARB_shading_language_include */
typedef void             (APIENTRY* EXDLGLNAMEDSTRINGARBPROC)                                     (GLenum type, GLint namelen, const GLchar* name, GLint stringlen, const GLchar* string);
typedef void             (APIENTRY* EXDLGLDELETENAMEDSTRINGARBPROC)                               (GLint namelen, const GLchar* name);
typedef void             (APIENTRY* EXDLGLCOMPILESHADERINCLUDEARBPROC)                            (GLuint shader, GLsizei count, const GLchar** path, const GLint* length);
typedef GLboolean        (APIENTRY* EXDLGLISNAMEDSTRINGARBPROC)                                   (GLint namelen, const GLchar* name);
typedef void             (APIENTRY* EXDLGLGETNAMEDSTRINGARBPROC)                                  (GLint namelen, const GLchar* name, GLsizei bufSize, GLint* stringlen, GLchar* string);
typedef void             (APIENTRY* EXDLGLGETNAMEDSTRINGIVARBPROC)                                (GLint namelen, const GLchar* name, GLenum pname, GLint* params);
/* GL_ARB_texture_compression_bptc */
/* GL_ARB_blend_func_extended */
typedef void             (APIENTRY* EXDLGLBINDFRAGDATALOCATIONINDEXEDPROC)                        (GLuint program, GLuint colorNumber, GLuint index, const GLchar* name);
typedef GLint            (APIENTRY* EXDLGLGETFRAGDATAINDEXPROC)                                   (GLuint program, const GLchar* name);
/* GL_ARB_explicit_attrib_location */
/* GL_ARB_occlusion_query2 */
/* GL_ARB_sampler_objects */
typedef void             (APIENTRY* EXDLGLGENSAMPLERSPROC)                                        (GLsizei count, GLuint* samplers);
typedef void             (APIENTRY* EXDLGLDELETESAMPLERSPROC)                                     (GLsizei count, const GLuint* samplers);
typedef GLboolean        (APIENTRY* EXDLGLISSAMPLERPROC)                                          (GLuint sampler);
typedef void             (APIENTRY* EXDLGLBINDSAMPLERPROC)                                        (GLuint unit, GLuint sampler);
typedef void             (APIENTRY* EXDLGLSAMPLERPARAMETERIPROC)                                  (GLuint sampler, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLSAMPLERPARAMETERIVPROC)                                 (GLuint sampler, GLenum pname, const GLint* param);
typedef void             (APIENTRY* EXDLGLSAMPLERPARAMETERFPROC)                                  (GLuint sampler, GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLSAMPLERPARAMETERFVPROC)                                 (GLuint sampler, GLenum pname, const GLfloat* param);
typedef void             (APIENTRY* EXDLGLSAMPLERPARAMETERIIVPROC)                                (GLuint sampler, GLenum pname, const GLint* param);
typedef void             (APIENTRY* EXDLGLSAMPLERPARAMETERIUIVPROC)                               (GLuint sampler, GLenum pname, const GLuint* param);
typedef void             (APIENTRY* EXDLGLGETSAMPLERPARAMETERIVPROC)                              (GLuint sampler, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETSAMPLERPARAMETERIIVPROC)                             (GLuint sampler, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETSAMPLERPARAMETERFVPROC)                              (GLuint sampler, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETSAMPLERPARAMETERIUIVPROC)                            (GLuint sampler, GLenum pname, GLuint* params);
/* GL_ARB_shader_bit_encoding */
/* GL_ARB_texture_rgb10_a2ui */
/* GL_ARB_texture_swizzle */
/* GL_ARB_timer_query */
typedef void             (APIENTRY* EXDLGLQUERYCOUNTERPROC)                                       (GLuint id, GLenum target);
typedef void             (APIENTRY* EXDLGLGETQUERYOBJECTI64VPROC)                                 (GLuint id, GLenum pname, GLint64* params);
typedef void             (APIENTRY* EXDLGLGETQUERYOBJECTUI64VPROC)                                (GLuint id, GLenum pname, GLuint64* params);
/* GL_ARB_vertex_type_2_10_10_10_rev */
typedef void             (APIENTRY* EXDLGLVERTEXP2UIPROC)                                         (GLenum type, GLuint value);
typedef void             (APIENTRY* EXDLGLVERTEXP2UIVPROC)                                        (GLenum type, const GLuint* value);
typedef void             (APIENTRY* EXDLGLVERTEXP3UIPROC)                                         (GLenum type, GLuint value);
typedef void             (APIENTRY* EXDLGLVERTEXP3UIVPROC)                                        (GLenum type, const GLuint* value);
typedef void             (APIENTRY* EXDLGLVERTEXP4UIPROC)                                         (GLenum type, GLuint value);
typedef void             (APIENTRY* EXDLGLVERTEXP4UIVPROC)                                        (GLenum type, const GLuint* value);
typedef void             (APIENTRY* EXDLGLTEXCOORDP1UIPROC)                                       (GLenum type, GLuint coords);
typedef void             (APIENTRY* EXDLGLTEXCOORDP1UIVPROC)                                      (GLenum type, const GLuint* coords);
typedef void             (APIENTRY* EXDLGLTEXCOORDP2UIPROC)                                       (GLenum type, GLuint coords);
typedef void             (APIENTRY* EXDLGLTEXCOORDP2UIVPROC)                                      (GLenum type, const GLuint* coords);
typedef void             (APIENTRY* EXDLGLTEXCOORDP3UIPROC)                                       (GLenum type, GLuint coords);
typedef void             (APIENTRY* EXDLGLTEXCOORDP3UIVPROC)                                      (GLenum type, const GLuint* coords);
typedef void             (APIENTRY* EXDLGLTEXCOORDP4UIPROC)                                       (GLenum type, GLuint coords);
typedef void             (APIENTRY* EXDLGLTEXCOORDP4UIVPROC)                                      (GLenum type, const GLuint* coords);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORDP1UIPROC)                                  (GLenum texture, GLenum type, GLuint coords);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORDP1UIVPROC)                                 (GLenum texture, GLenum type, const GLuint* coords);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORDP2UIPROC)                                  (GLenum texture, GLenum type, GLuint coords);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORDP2UIVPROC)                                 (GLenum texture, GLenum type, const GLuint* coords);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORDP3UIPROC)                                  (GLenum texture, GLenum type, GLuint coords);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORDP3UIVPROC)                                 (GLenum texture, GLenum type, const GLuint* coords);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORDP4UIPROC)                                  (GLenum texture, GLenum type, GLuint coords);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORDP4UIVPROC)                                 (GLenum texture, GLenum type, const GLuint* coords);
typedef void             (APIENTRY* EXDLGLNORMALP3UIPROC)                                         (GLenum type, GLuint coords);
typedef void             (APIENTRY* EXDLGLNORMALP3UIVPROC)                                        (GLenum type, const GLuint* coords);
typedef void             (APIENTRY* EXDLGLCOLORP3UIPROC)                                          (GLenum type, GLuint color);
typedef void             (APIENTRY* EXDLGLCOLORP3UIVPROC)                                         (GLenum type, const GLuint* color);
typedef void             (APIENTRY* EXDLGLCOLORP4UIPROC)                                          (GLenum type, GLuint color);
typedef void             (APIENTRY* EXDLGLCOLORP4UIVPROC)                                         (GLenum type, const GLuint* color);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLORP3UIPROC)                                 (GLenum type, GLuint color);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLORP3UIVPROC)                                (GLenum type, const GLuint* color);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBP1UIPROC)                                   (GLuint index, GLenum type, GLboolean normalized, GLuint value);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBP1UIVPROC)                                  (GLuint index, GLenum type, GLboolean normalized, const GLuint* value);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBP2UIPROC)                                   (GLuint index, GLenum type, GLboolean normalized, GLuint value);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBP2UIVPROC)                                  (GLuint index, GLenum type, GLboolean normalized, const GLuint* value);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBP3UIPROC)                                   (GLuint index, GLenum type, GLboolean normalized, GLuint value);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBP3UIVPROC)                                  (GLuint index, GLenum type, GLboolean normalized, const GLuint* value);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBP4UIPROC)                                   (GLuint index, GLenum type, GLboolean normalized, GLuint value);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBP4UIVPROC)                                  (GLuint index, GLenum type, GLboolean normalized, const GLuint* value);
/* GL_ARB_draw_indirect */
typedef void             (APIENTRY* EXDLGLDRAWARRAYSINDIRECTPROC)                                 (GLenum mode, const GLvoid* indirect);
typedef void             (APIENTRY* EXDLGLDRAWELEMENTSINDIRECTPROC)                               (GLenum mode, GLenum type, const GLvoid* indirect);
/* GL_ARB_gpu_shader5 */
/* GL_ARB_gpu_shader_fp64 */
typedef void             (APIENTRY* EXDLGLUNIFORM1DPROC)                                          (GLint location, GLdouble x);
typedef void             (APIENTRY* EXDLGLUNIFORM2DPROC)                                          (GLint location, GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLUNIFORM3DPROC)                                          (GLint location, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLUNIFORM4DPROC)                                          (GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLUNIFORM1DVPROC)                                         (GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORM2DVPROC)                                         (GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORM3DVPROC)                                         (GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORM4DVPROC)                                         (GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX2DVPROC)                                   (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX3DVPROC)                                   (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX4DVPROC)                                   (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX2X3DVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX2X4DVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX3X2DVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX3X4DVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX4X2DVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLUNIFORMMATRIX4X3DVPROC)                                 (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLGETUNIFORMDVPROC)                                       (GLuint program, GLint location, GLdouble* params);
/* GL_ARB_shader_subroutine */
typedef GLint            (APIENTRY* EXDLGLGETSUBROUTINEUNIFORMLOCATIONPROC)                       (GLuint program, GLenum shadertype, const GLchar* name);
typedef GLuint           (APIENTRY* EXDLGLGETSUBROUTINEINDEXPROC)                                 (GLuint program, GLenum shadertype, const GLchar* name);
typedef void             (APIENTRY* EXDLGLGETACTIVESUBROUTINEUNIFORMIVPROC)                       (GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values);
typedef void             (APIENTRY* EXDLGLGETACTIVESUBROUTINEUNIFORMNAMEPROC)                     (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name);
typedef void             (APIENTRY* EXDLGLGETACTIVESUBROUTINENAMEPROC)                            (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name);
typedef void             (APIENTRY* EXDLGLUNIFORMSUBROUTINESUIVPROC)                              (GLenum shadertype, GLsizei count, const GLuint* indices);
typedef void             (APIENTRY* EXDLGLGETUNIFORMSUBROUTINEUIVPROC)                            (GLenum shadertype, GLint location, GLuint* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMSTAGEIVPROC)                                  (GLuint program, GLenum shadertype, GLenum pname, GLint* values);
/* GL_ARB_tessellation_shader */
typedef void             (APIENTRY* EXDLGLPATCHPARAMETERIPROC)                                    (GLenum pname, GLint value);
typedef void             (APIENTRY* EXDLGLPATCHPARAMETERFVPROC)                                   (GLenum pname, const GLfloat* values);
/* GL_ARB_texture_buffer_object_rgb32 */
/* GL_ARB_transform_feedback2 */
typedef void             (APIENTRY* EXDLGLBINDTRANSFORMFEEDBACKPROC)                              (GLenum target, GLuint id);
typedef void             (APIENTRY* EXDLGLDELETETRANSFORMFEEDBACKSPROC)                           (GLsizei n, const GLuint* ids);
typedef void             (APIENTRY* EXDLGLGENTRANSFORMFEEDBACKSPROC)                              (GLsizei n, GLuint* ids);
typedef GLboolean        (APIENTRY* EXDLGLISTRANSFORMFEEDBACKPROC)                                (GLuint id);
typedef void             (APIENTRY* EXDLGLPAUSETRANSFORMFEEDBACKPROC)                             (void);
typedef void             (APIENTRY* EXDLGLRESUMETRANSFORMFEEDBACKPROC)                            (void);
typedef void             (APIENTRY* EXDLGLDRAWTRANSFORMFEEDBACKPROC)                              (GLenum mode, GLuint id);
/* GL_ARB_transform_feedback3 */
typedef void             (APIENTRY* EXDLGLDRAWTRANSFORMFEEDBACKSTREAMPROC)                        (GLenum mode, GLuint id, GLuint stream);
typedef void             (APIENTRY* EXDLGLBEGINQUERYINDEXEDPROC)                                  (GLenum target, GLuint index, GLuint id);
typedef void             (APIENTRY* EXDLGLENDQUERYINDEXEDPROC)                                    (GLenum target, GLuint index);
typedef void             (APIENTRY* EXDLGLGETQUERYINDEXEDIVPROC)                                  (GLenum target, GLuint index, GLenum pname, GLint* params);
/* GL_ARB_ES2_compatibility */
typedef void             (APIENTRY* EXDLGLRELEASESHADERCOMPILERPROC)                              (void);
typedef void             (APIENTRY* EXDLGLSHADERBINARYPROC)                                       (GLsizei count, const GLuint* shaders, GLenum binaryformat, const GLvoid* binary, GLsizei length);
typedef void             (APIENTRY* EXDLGLGETSHADERPRECISIONFORMATPROC)                           (GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision);
typedef void             (APIENTRY* EXDLGLDEPTHRANGEFPROC)                                        (GLfloat n, GLfloat f);
typedef void             (APIENTRY* EXDLGLCLEARDEPTHFPROC)                                        (GLfloat d);
/* GL_ARB_get_program_binary */
typedef void             (APIENTRY* EXDLGLGETPROGRAMBINARYPROC)                                   (GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, GLvoid* binary);
typedef void             (APIENTRY* EXDLGLPROGRAMBINARYPROC)                                      (GLuint program, GLenum binaryFormat, const GLvoid* binary, GLsizei length);
typedef void             (APIENTRY* EXDLGLPROGRAMPARAMETERIPROC)                                  (GLuint program, GLenum pname, GLint value);
/* GL_ARB_separate_shader_objects */
typedef void             (APIENTRY* EXDLGLUSEPROGRAMSTAGESPROC)                                   (GLuint pipeline, GLbitfield stages, GLuint program);
typedef void             (APIENTRY* EXDLGLACTIVESHADERPROGRAMPROC)                                (GLuint pipeline, GLuint program);
typedef GLuint           (APIENTRY* EXDLGLCREATESHADERPROGRAMVPROC)                               (GLenum type, GLsizei count, const GLchar** strings);
typedef void             (APIENTRY* EXDLGLBINDPROGRAMPIPELINEPROC)                                (GLuint pipeline);
typedef void             (APIENTRY* EXDLGLDELETEPROGRAMPIPELINESPROC)                             (GLsizei n, const GLuint* pipelines);
typedef void             (APIENTRY* EXDLGLGENPROGRAMPIPELINESPROC)                                (GLsizei n, GLuint* pipelines);
typedef GLboolean        (APIENTRY* EXDLGLISPROGRAMPIPELINEPROC)                                  (GLuint pipeline);
typedef void             (APIENTRY* EXDLGLGETPROGRAMPIPELINEIVPROC)                               (GLuint pipeline, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1IPROC)                                   (GLuint program, GLint location, GLint v0);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1IVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1FPROC)                                   (GLuint program, GLint location, GLfloat v0);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1FVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1DPROC)                                   (GLuint program, GLint location, GLdouble v0);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1DVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1UIPROC)                                  (GLuint program, GLint location, GLuint v0);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1UIVPROC)                                 (GLuint program, GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2IPROC)                                   (GLuint program, GLint location, GLint v0, GLint v1);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2IVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2FPROC)                                   (GLuint program, GLint location, GLfloat v0, GLfloat v1);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2FVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2DPROC)                                   (GLuint program, GLint location, GLdouble v0, GLdouble v1);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2DVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2UIPROC)                                  (GLuint program, GLint location, GLuint v0, GLuint v1);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2UIVPROC)                                 (GLuint program, GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3IPROC)                                   (GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3IVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3FPROC)                                   (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3FVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3DPROC)                                   (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3DVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3UIPROC)                                  (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3UIVPROC)                                 (GLuint program, GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4IPROC)                                   (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4IVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4FPROC)                                   (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4FVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4DPROC)                                   (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4DVPROC)                                  (GLuint program, GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4UIPROC)                                  (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4UIVPROC)                                 (GLuint program, GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2FVPROC)                            (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3FVPROC)                            (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4FVPROC)                            (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2DVPROC)                            (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3DVPROC)                            (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4DVPROC)                            (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2X3FVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3X2FVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2X4FVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4X2FVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3X4FVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4X3FVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2X3DVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3X2DVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2X4DVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4X2DVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3X4DVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4X3DVPROC)                          (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLVALIDATEPROGRAMPIPELINEPROC)                            (GLuint pipeline);
typedef void             (APIENTRY* EXDLGLGETPROGRAMPIPELINEINFOLOGPROC)                          (GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
/* GL_ARB_vertex_attrib_64bit */
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL1DPROC)                                    (GLuint index, GLdouble x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL2DPROC)                                    (GLuint index, GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL3DPROC)                                    (GLuint index, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL4DPROC)                                    (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL1DVPROC)                                   (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL2DVPROC)                                   (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL3DVPROC)                                   (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL4DVPROC)                                   (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBLPOINTERPROC)                               (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBLDVPROC)                                 (GLuint index, GLenum pname, GLdouble* params);
/* GL_ARB_viewport_array */
typedef void             (APIENTRY* EXDLGLVIEWPORTARRAYVPROC)                                     (GLuint first, GLsizei count, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVIEWPORTINDEXEDFPROC)                                   (GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h);
typedef void             (APIENTRY* EXDLGLVIEWPORTINDEXEDFVPROC)                                  (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLSCISSORARRAYVPROC)                                      (GLuint first, GLsizei count, const GLint* v);
typedef void             (APIENTRY* EXDLGLSCISSORINDEXEDPROC)                                     (GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLSCISSORINDEXEDVPROC)                                    (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLDEPTHRANGEARRAYVPROC)                                   (GLuint first, GLsizei count, const GLclampd* v);
typedef void             (APIENTRY* EXDLGLDEPTHRANGEINDEXEDPROC)                                  (GLuint index, GLdouble n, GLdouble f);
typedef void             (APIENTRY* EXDLGLGETFLOATI_VPROC)                                        (GLenum target, GLuint index, GLfloat* data);
typedef void             (APIENTRY* EXDLGLGETDOUBLEI_VPROC)                                       (GLenum target, GLuint index, GLdouble* data);
/* GL_ARB_cl_event */
typedef GLsync           (APIENTRY* EXDLGLCREATESYNCFROMCLEVENTARBPROC)                           (struct _cl_context* context, struct _cl_event* event, GLbitfield flags);
/* GL_ARB_debug_output */
typedef void             (APIENTRY* EXDLGLDEBUGMESSAGECONTROLARBPROC)                             (GLenum source, GLenum type, GLenum severity, GLsizei count, const GLuint* ids, GLboolean enabled);
typedef void             (APIENTRY* EXDLGLDEBUGMESSAGEINSERTARBPROC)                              (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar* buf);
typedef void             (APIENTRY* EXDLGLDEBUGMESSAGECALLBACKARBPROC)                            (GLDEBUGPROCARB callback, const GLvoid* userParam);
typedef GLuint           (APIENTRY* EXDLGLGETDEBUGMESSAGELOGARBPROC)                              (GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog);
/* GL_ARB_robustness */
typedef GLenum           (APIENTRY* EXDLGLGETGRAPHICSRESETSTATUSARBPROC)                          (void);
typedef void             (APIENTRY* EXDLGLGETNMAPDVARBPROC)                                       (GLenum target, GLenum query, GLsizei bufSize, GLdouble* v);
typedef void             (APIENTRY* EXDLGLGETNMAPFVARBPROC)                                       (GLenum target, GLenum query, GLsizei bufSize, GLfloat* v);
typedef void             (APIENTRY* EXDLGLGETNMAPIVARBPROC)                                       (GLenum target, GLenum query, GLsizei bufSize, GLint* v);
typedef void             (APIENTRY* EXDLGLGETNPIXELMAPFVARBPROC)                                  (GLenum map, GLsizei bufSize, GLfloat* values);
typedef void             (APIENTRY* EXDLGLGETNPIXELMAPUIVARBPROC)                                 (GLenum map, GLsizei bufSize, GLuint* values);
typedef void             (APIENTRY* EXDLGLGETNPIXELMAPUSVARBPROC)                                 (GLenum map, GLsizei bufSize, GLushort* values);
typedef void             (APIENTRY* EXDLGLGETNPOLYGONSTIPPLEARBPROC)                              (GLsizei bufSize, GLubyte* pattern);
typedef void             (APIENTRY* EXDLGLGETNCOLORTABLEARBPROC)                                  (GLenum target, GLenum format, GLenum type, GLsizei bufSize, GLvoid* table);
typedef void             (APIENTRY* EXDLGLGETNCONVOLUTIONFILTERARBPROC)                           (GLenum target, GLenum format, GLenum type, GLsizei bufSize, GLvoid* image);
typedef void             (APIENTRY* EXDLGLGETNSEPARABLEFILTERARBPROC)                             (GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, GLvoid* row, GLsizei columnBufSize, GLvoid* column, GLvoid* span);
typedef void             (APIENTRY* EXDLGLGETNHISTOGRAMARBPROC)                                   (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, GLvoid* values);
typedef void             (APIENTRY* EXDLGLGETNMINMAXARBPROC)                                      (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, GLvoid* values);
typedef void             (APIENTRY* EXDLGLGETNTEXIMAGEARBPROC)                                    (GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, GLvoid* img);
typedef void             (APIENTRY* EXDLGLREADNPIXELSARBPROC)                                     (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, GLvoid* data);
typedef void             (APIENTRY* EXDLGLGETNCOMPRESSEDTEXIMAGEARBPROC)                          (GLenum target, GLint lod, GLsizei bufSize, GLvoid* img);
typedef void             (APIENTRY* EXDLGLGETNUNIFORMFVARBPROC)                                   (GLuint program, GLint location, GLsizei bufSize, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETNUNIFORMIVARBPROC)                                   (GLuint program, GLint location, GLsizei bufSize, GLint* params);
typedef void             (APIENTRY* EXDLGLGETNUNIFORMUIVARBPROC)                                  (GLuint program, GLint location, GLsizei bufSize, GLuint* params);
typedef void             (APIENTRY* EXDLGLGETNUNIFORMDVARBPROC)                                   (GLuint program, GLint location, GLsizei bufSize, GLdouble* params);
/* GL_ARB_shader_stencil_export */
/* GL_ARB_base_instance */
typedef void             (APIENTRY* EXDLGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC)                    (GLenum mode, GLint first, GLsizei count, GLsizei primcount, GLuint baseinstance);
typedef void             (APIENTRY* EXDLGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC)                  (GLenum mode, GLsizei count, GLenum type, const void* indices, GLsizei primcount, GLuint baseinstance);
typedef void             (APIENTRY* EXDLGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC)        (GLenum mode, GLsizei count, GLenum type, const void* indices, GLsizei primcount, GLint basevertex, GLuint baseinstance);
/* GL_ARB_shading_language_420pack */
/* GL_ARB_transform_feedback_instanced */
typedef void             (APIENTRY* EXDLGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC)                     (GLenum mode, GLuint id, GLsizei primcount);
typedef void             (APIENTRY* EXDLGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC)               (GLenum mode, GLuint id, GLuint stream, GLsizei primcount);
/* GL_ARB_compressed_texture_pixel_storage */
/* GL_ARB_conservative_depth */
/* GL_ARB_internalformat_query */
typedef void             (APIENTRY* EXDLGLGETINTERNALFORMATIVPROC)                                (GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params);
/* GL_ARB_map_buffer_alignment */
/* GL_ARB_shader_atomic_counters */
typedef void             (APIENTRY* EXDLGLGETACTIVEATOMICCOUNTERBUFFERIVPROC)                     (GLuint program, GLuint bufferIndex, GLenum pname, GLint* params);
/* GL_ARB_shader_image_load_store */
typedef void             (APIENTRY* EXDLGLBINDIMAGETEXTUREPROC)                                   (GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format);
typedef void             (APIENTRY* EXDLGLMEMORYBARRIERPROC)                                      (GLbitfield barriers);
/* GL_ARB_shading_language_packing */
/* GL_ARB_texture_storage */
typedef void             (APIENTRY* EXDLGLTEXSTORAGE1DPROC)                                       (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
typedef void             (APIENTRY* EXDLGLTEXSTORAGE2DPROC)                                       (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLTEXSTORAGE3DPROC)                                       (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
typedef void             (APIENTRY* EXDLGLTEXTURESTORAGE1DEXTPROC)                                (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
typedef void             (APIENTRY* EXDLGLTEXTURESTORAGE2DEXTPROC)                                (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLTEXTURESTORAGE3DEXTPROC)                                (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
/* GL_EXT_abgr */
/* GL_EXT_blend_color */
typedef void             (APIENTRY* EXDLGLBLENDCOLOREXTPROC)                                      (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
/* GL_EXT_polygon_offset */
typedef void             (APIENTRY* EXDLGLPOLYGONOFFSETEXTPROC)                                   (GLfloat factor, GLfloat bias);
/* GL_EXT_texture */
/* GL_EXT_texture3D */
typedef void             (APIENTRY* EXDLGLTEXIMAGE3DEXTPROC)                                      (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLTEXSUBIMAGE3DEXTPROC)                                   (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels);
/* GL_SGIS_texture_filter4 */
typedef void             (APIENTRY* EXDLGLGETTEXFILTERFUNCSGISPROC)                               (GLenum target, GLenum filter, GLfloat* weights);
typedef void             (APIENTRY* EXDLGLTEXFILTERFUNCSGISPROC)                                  (GLenum target, GLenum filter, GLsizei n, const GLfloat* weights);
/* GL_EXT_subtexture */
typedef void             (APIENTRY* EXDLGLTEXSUBIMAGE1DEXTPROC)                                   (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLTEXSUBIMAGE2DEXTPROC)                                   (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels);
/* GL_EXT_copy_texture */
typedef void             (APIENTRY* EXDLGLCOPYTEXIMAGE1DEXTPROC)                                  (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
typedef void             (APIENTRY* EXDLGLCOPYTEXIMAGE2DEXTPROC)                                  (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
typedef void             (APIENTRY* EXDLGLCOPYTEXSUBIMAGE1DEXTPROC)                               (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
typedef void             (APIENTRY* EXDLGLCOPYTEXSUBIMAGE2DEXTPROC)                               (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLCOPYTEXSUBIMAGE3DEXTPROC)                               (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
/* GL_EXT_histogram */
typedef void             (APIENTRY* EXDLGLGETHISTOGRAMEXTPROC)                                    (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values);
typedef void             (APIENTRY* EXDLGLGETHISTOGRAMPARAMETERFVEXTPROC)                         (GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETHISTOGRAMPARAMETERIVEXTPROC)                         (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETMINMAXEXTPROC)                                       (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values);
typedef void             (APIENTRY* EXDLGLGETMINMAXPARAMETERFVEXTPROC)                            (GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETMINMAXPARAMETERIVEXTPROC)                            (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLHISTOGRAMEXTPROC)                                       (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
typedef void             (APIENTRY* EXDLGLMINMAXEXTPROC)                                          (GLenum target, GLenum internalformat, GLboolean sink);
typedef void             (APIENTRY* EXDLGLRESETHISTOGRAMEXTPROC)                                  (GLenum target);
typedef void             (APIENTRY* EXDLGLRESETMINMAXEXTPROC)                                     (GLenum target);
/* GL_EXT_convolution */
typedef void             (APIENTRY* EXDLGLCONVOLUTIONFILTER1DEXTPROC)                             (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* image);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONFILTER2DEXTPROC)                             (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* image);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONPARAMETERFEXTPROC)                           (GLenum target, GLenum pname, GLfloat params);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONPARAMETERFVEXTPROC)                          (GLenum target, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONPARAMETERIEXTPROC)                           (GLenum target, GLenum pname, GLint params);
typedef void             (APIENTRY* EXDLGLCONVOLUTIONPARAMETERIVEXTPROC)                          (GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLCOPYCONVOLUTIONFILTER1DEXTPROC)                         (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
typedef void             (APIENTRY* EXDLGLCOPYCONVOLUTIONFILTER2DEXTPROC)                         (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLGETCONVOLUTIONFILTEREXTPROC)                            (GLenum target, GLenum format, GLenum type, GLvoid* image);
typedef void             (APIENTRY* EXDLGLGETCONVOLUTIONPARAMETERFVEXTPROC)                       (GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETCONVOLUTIONPARAMETERIVEXTPROC)                       (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETSEPARABLEFILTEREXTPROC)                              (GLenum target, GLenum format, GLenum type, GLvoid* row, GLvoid* column, GLvoid* span);
typedef void             (APIENTRY* EXDLGLSEPARABLEFILTER2DEXTPROC)                               (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* row, const GLvoid* column);
/* GL_EXT_color_matrix */
/* GL_SGI_color_matrix */
/* GL_SGI_color_table */
typedef void             (APIENTRY* EXDLGLCOLORTABLESGIPROC)                                      (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid* table);
typedef void             (APIENTRY* EXDLGLCOLORTABLEPARAMETERFVSGIPROC)                           (GLenum target, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLCOLORTABLEPARAMETERIVSGIPROC)                           (GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLCOPYCOLORTABLESGIPROC)                                  (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
typedef void             (APIENTRY* EXDLGLGETCOLORTABLESGIPROC)                                   (GLenum target, GLenum format, GLenum type, GLvoid* table);
typedef void             (APIENTRY* EXDLGLGETCOLORTABLEPARAMETERFVSGIPROC)                        (GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETCOLORTABLEPARAMETERIVSGIPROC)                        (GLenum target, GLenum pname, GLint* params);
/* GL_SGIX_pixel_texture */
typedef void             (APIENTRY* EXDLGLPIXELTEXGENSGIXPROC)                                    (GLenum mode);
/* GL_SGIS_pixel_texture */
typedef void             (APIENTRY* EXDLGLPIXELTEXGENPARAMETERISGISPROC)                          (GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLPIXELTEXGENPARAMETERIVSGISPROC)                         (GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLPIXELTEXGENPARAMETERFSGISPROC)                          (GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLPIXELTEXGENPARAMETERFVSGISPROC)                         (GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETPIXELTEXGENPARAMETERIVSGISPROC)                      (GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETPIXELTEXGENPARAMETERFVSGISPROC)                      (GLenum pname, GLfloat* params);
/* GL_SGIS_texture4D */
typedef void             (APIENTRY* EXDLGLTEXIMAGE4DSGISPROC)                                     (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLTEXSUBIMAGE4DSGISPROC)                                  (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, const GLvoid* pixels);
/* GL_SGI_texture_color_table */
/* GL_EXT_cmyka */
/* GL_EXT_texture_object */
typedef GLboolean        (APIENTRY* EXDLGLARETEXTURESRESIDENTEXTPROC)                             (GLsizei n, const GLuint* textures, GLboolean* residences);
typedef void             (APIENTRY* EXDLGLBINDTEXTUREEXTPROC)                                     (GLenum target, GLuint texture);
typedef void             (APIENTRY* EXDLGLDELETETEXTURESEXTPROC)                                  (GLsizei n, const GLuint* textures);
typedef void             (APIENTRY* EXDLGLGENTEXTURESEXTPROC)                                     (GLsizei n, GLuint* textures);
typedef GLboolean        (APIENTRY* EXDLGLISTEXTUREEXTPROC)                                       (GLuint texture);
typedef void             (APIENTRY* EXDLGLPRIORITIZETEXTURESEXTPROC)                              (GLsizei n, const GLuint* textures, const GLclampf* priorities);
/* GL_SGIS_detail_texture */
typedef void             (APIENTRY* EXDLGLDETAILTEXFUNCSGISPROC)                                  (GLenum target, GLsizei n, const GLfloat* points);
typedef void             (APIENTRY* EXDLGLGETDETAILTEXFUNCSGISPROC)                               (GLenum target, GLfloat* points);
/* GL_SGIS_sharpen_texture */
typedef void             (APIENTRY* EXDLGLSHARPENTEXFUNCSGISPROC)                                 (GLenum target, GLsizei n, const GLfloat* points);
typedef void             (APIENTRY* EXDLGLGETSHARPENTEXFUNCSGISPROC)                              (GLenum target, GLfloat* points);
/* GL_EXT_packed_pixels */
/* GL_SGIS_texture_lod */
/* GL_SGIS_multisample */
typedef void             (APIENTRY* EXDLGLSAMPLEMASKSGISPROC)                                     (GLclampf value, GLboolean invert);
typedef void             (APIENTRY* EXDLGLSAMPLEPATTERNSGISPROC)                                  (GLenum pattern);
/* GL_EXT_rescale_normal */
/* GL_EXT_vertex_array */
typedef void             (APIENTRY* EXDLGLARRAYELEMENTEXTPROC)                                    (GLint i);
typedef void             (APIENTRY* EXDLGLCOLORPOINTEREXTPROC)                                    (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLDRAWARRAYSEXTPROC)                                      (GLenum mode, GLint first, GLsizei count);
typedef void             (APIENTRY* EXDLGLEDGEFLAGPOINTEREXTPROC)                                 (GLsizei stride, GLsizei count, const GLboolean* pointer);
typedef void             (APIENTRY* EXDLGLGETPOINTERVEXTPROC)                                     (GLenum pname, GLvoid** params);
typedef void             (APIENTRY* EXDLGLINDEXPOINTEREXTPROC)                                    (GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLNORMALPOINTEREXTPROC)                                   (GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLTEXCOORDPOINTEREXTPROC)                                 (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLVERTEXPOINTEREXTPROC)                                   (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid* pointer);
/* GL_EXT_misc_attribute */
/* GL_SGIS_generate_mipmap */
/* GL_SGIX_clipmap */
/* GL_SGIX_shadow */
/* GL_SGIS_texture_edge_clamp */
/* GL_SGIS_texture_border_clamp */
/* GL_EXT_blend_minmax */
typedef void             (APIENTRY* EXDLGLBLENDEQUATIONEXTPROC)                                   (GLenum mode);
/* GL_EXT_blend_subtract */
/* GL_EXT_blend_logic_op */
/* GL_SGIX_interlace */
/* GL_SGIX_pixel_tiles */
/* GL_SGIX_texture_select */
/* GL_SGIX_sprite */
typedef void             (APIENTRY* EXDLGLSPRITEPARAMETERFSGIXPROC)                               (GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLSPRITEPARAMETERFVSGIXPROC)                              (GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLSPRITEPARAMETERISGIXPROC)                               (GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLSPRITEPARAMETERIVSGIXPROC)                              (GLenum pname, const GLint* params);
/* GL_SGIX_texture_multi_buffer */
/* GL_EXT_point_parameters */
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERFEXTPROC)                                 (GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERFVEXTPROC)                                (GLenum pname, const GLfloat* params);
/* GL_SGIS_point_parameters */
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERFSGISPROC)                                (GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERFVSGISPROC)                               (GLenum pname, const GLfloat* params);
/* GL_SGIX_instruments */
typedef GLint            (APIENTRY* EXDLGLGETINSTRUMENTSSGIXPROC)                                 (void);
typedef void             (APIENTRY* EXDLGLINSTRUMENTSBUFFERSGIXPROC)                              (GLsizei size, GLint* buffer);
typedef GLint            (APIENTRY* EXDLGLPOLLINSTRUMENTSSGIXPROC)                                (GLint* marker_p);
typedef void             (APIENTRY* EXDLGLREADINSTRUMENTSSGIXPROC)                                (GLint marker);
typedef void             (APIENTRY* EXDLGLSTARTINSTRUMENTSSGIXPROC)                               (void);
typedef void             (APIENTRY* EXDLGLSTOPINSTRUMENTSSGIXPROC)                                (GLint marker);
/* GL_SGIX_texture_scale_bias */
/* GL_SGIX_framezoom */
typedef void             (APIENTRY* EXDLGLFRAMEZOOMSGIXPROC)                                      (GLint factor);
/* GL_SGIX_tag_sample_buffer */
typedef void             (APIENTRY* EXDLGLTAGSAMPLEBUFFERSGIXPROC)                                (void);
/* GL_SGIX_polynomial_ffd */
typedef void             (APIENTRY* EXDLGLDEFORMATIONMAP3DSGIXPROC)                               (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const GLdouble* points);
typedef void             (APIENTRY* EXDLGLDEFORMATIONMAP3FSGIXPROC)                               (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const GLfloat* points);
typedef void             (APIENTRY* EXDLGLDEFORMSGIXPROC)                                         (GLbitfield mask);
typedef void             (APIENTRY* EXDLGLLOADIDENTITYDEFORMATIONMAPSGIXPROC)                     (GLbitfield mask);
/* GL_SGIX_reference_plane */
typedef void             (APIENTRY* EXDLGLREFERENCEPLANESGIXPROC)                                 (const GLdouble* equation);
/* GL_SGIX_flush_raster */
typedef void             (APIENTRY* EXDLGLFLUSHRASTERSGIXPROC)                                    (void);
/* GL_SGIX_depth_texture */
/* GL_SGIS_fog_function */
typedef void             (APIENTRY* EXDLGLFOGFUNCSGISPROC)                                        (GLsizei n, const GLfloat* points);
typedef void             (APIENTRY* EXDLGLGETFOGFUNCSGISPROC)                                     (GLfloat* points);
/* GL_SGIX_fog_offset */
/* GL_HP_image_transform */
typedef void             (APIENTRY* EXDLGLIMAGETRANSFORMPARAMETERIHPPROC)                         (GLenum target, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLIMAGETRANSFORMPARAMETERFHPPROC)                         (GLenum target, GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLIMAGETRANSFORMPARAMETERIVHPPROC)                        (GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLIMAGETRANSFORMPARAMETERFVHPPROC)                        (GLenum target, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETIMAGETRANSFORMPARAMETERIVHPPROC)                     (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETIMAGETRANSFORMPARAMETERFVHPPROC)                     (GLenum target, GLenum pname, GLfloat* params);
/* GL_HP_convolution_border_modes */
/* GL_SGIX_texture_add_env */
/* GL_EXT_color_subtable */
typedef void             (APIENTRY* EXDLGLCOLORSUBTABLEEXTPROC)                                   (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid* data);
typedef void             (APIENTRY* EXDLGLCOPYCOLORSUBTABLEEXTPROC)                               (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
/* GL_PGI_vertex_hints */
/* GL_PGI_misc_hints */
typedef void             (APIENTRY* EXDLGLHINTPGIPROC)                                            (GLenum target, GLint mode);
/* GL_EXT_paletted_texture */
typedef void             (APIENTRY* EXDLGLCOLORTABLEEXTPROC)                                      (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const GLvoid* table);
typedef void             (APIENTRY* EXDLGLGETCOLORTABLEEXTPROC)                                   (GLenum target, GLenum format, GLenum type, GLvoid* data);
typedef void             (APIENTRY* EXDLGLGETCOLORTABLEPARAMETERIVEXTPROC)                        (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETCOLORTABLEPARAMETERFVEXTPROC)                        (GLenum target, GLenum pname, GLfloat* params);
/* GL_EXT_clip_volume_hint */
/* GL_SGIX_list_priority */
typedef void             (APIENTRY* EXDLGLGETLISTPARAMETERFVSGIXPROC)                             (GLuint list, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETLISTPARAMETERIVSGIXPROC)                             (GLuint list, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLLISTPARAMETERFSGIXPROC)                                 (GLuint list, GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLLISTPARAMETERFVSGIXPROC)                                (GLuint list, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLLISTPARAMETERISGIXPROC)                                 (GLuint list, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLLISTPARAMETERIVSGIXPROC)                                (GLuint list, GLenum pname, const GLint* params);
/* GL_SGIX_ir_instrument1 */
/* GL_SGIX_calligraphic_fragment */
/* GL_SGIX_texture_lod_bias */
/* GL_SGIX_shadow_ambient */
/* GL_EXT_index_texture */
/* GL_EXT_index_material */
typedef void             (APIENTRY* EXDLGLINDEXMATERIALEXTPROC)                                   (GLenum face, GLenum mode);
/* GL_EXT_index_func */
typedef void             (APIENTRY* EXDLGLINDEXFUNCEXTPROC)                                       (GLenum func, GLclampf ref);
/* GL_EXT_index_array_formats */
/* GL_EXT_compiled_vertex_array */
typedef void             (APIENTRY* EXDLGLLOCKARRAYSEXTPROC)                                      (GLint first, GLsizei count);
typedef void             (APIENTRY* EXDLGLUNLOCKARRAYSEXTPROC)                                    (void);
/* GL_EXT_cull_vertex */
typedef void             (APIENTRY* EXDLGLCULLPARAMETERDVEXTPROC)                                 (GLenum pname, GLdouble* params);
typedef void             (APIENTRY* EXDLGLCULLPARAMETERFVEXTPROC)                                 (GLenum pname, GLfloat* params);
/* GL_SGIX_ycrcb */
/* GL_SGIX_fragment_lighting */
typedef void             (APIENTRY* EXDLGLFRAGMENTCOLORMATERIALSGIXPROC)                          (GLenum face, GLenum mode);
typedef void             (APIENTRY* EXDLGLFRAGMENTLIGHTFSGIXPROC)                                 (GLenum light, GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLFRAGMENTLIGHTFVSGIXPROC)                                (GLenum light, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLFRAGMENTLIGHTISGIXPROC)                                 (GLenum light, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLFRAGMENTLIGHTIVSGIXPROC)                                (GLenum light, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLFRAGMENTLIGHTMODELFSGIXPROC)                            (GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLFRAGMENTLIGHTMODELFVSGIXPROC)                           (GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLFRAGMENTLIGHTMODELISGIXPROC)                            (GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLFRAGMENTLIGHTMODELIVSGIXPROC)                           (GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLFRAGMENTMATERIALFSGIXPROC)                              (GLenum face, GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLFRAGMENTMATERIALFVSGIXPROC)                             (GLenum face, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLFRAGMENTMATERIALISGIXPROC)                              (GLenum face, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLFRAGMENTMATERIALIVSGIXPROC)                             (GLenum face, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLGETFRAGMENTLIGHTFVSGIXPROC)                             (GLenum light, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETFRAGMENTLIGHTIVSGIXPROC)                             (GLenum light, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETFRAGMENTMATERIALFVSGIXPROC)                          (GLenum face, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETFRAGMENTMATERIALIVSGIXPROC)                          (GLenum face, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLLIGHTENVISGIXPROC)                                      (GLenum pname, GLint param);
/* GL_IBM_rasterpos_clip */
/* GL_HP_texture_lighting */
/* GL_EXT_draw_range_elements */
typedef void             (APIENTRY* EXDLGLDRAWRANGEELEMENTSEXTPROC)                               (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid* indices);
/* GL_WIN_phong_shading */
/* GL_WIN_specular_fog */
/* GL_EXT_light_texture */
typedef void             (APIENTRY* EXDLGLAPPLYTEXTUREEXTPROC)                                    (GLenum mode);
typedef void             (APIENTRY* EXDLGLTEXTURELIGHTEXTPROC)                                    (GLenum pname);
typedef void             (APIENTRY* EXDLGLTEXTUREMATERIALEXTPROC)                                 (GLenum face, GLenum mode);
/* GL_SGIX_blend_alpha_minmax */
/* GL_EXT_bgra */
/* GL_SGIX_async */
typedef void             (APIENTRY* EXDLGLASYNCMARKERSGIXPROC)                                    (GLuint marker);
typedef GLint            (APIENTRY* EXDLGLFINISHASYNCSGIXPROC)                                    (GLuint* markerp);
typedef GLint            (APIENTRY* EXDLGLPOLLASYNCSGIXPROC)                                      (GLuint* markerp);
typedef GLuint           (APIENTRY* EXDLGLGENASYNCMARKERSSGIXPROC)                                (GLsizei range);
typedef void             (APIENTRY* EXDLGLDELETEASYNCMARKERSSGIXPROC)                             (GLuint marker, GLsizei range);
typedef GLboolean        (APIENTRY* EXDLGLISASYNCMARKERSGIXPROC)                                  (GLuint marker);
/* GL_SGIX_async_pixel */
/* GL_SGIX_async_histogram */
/* GL_INTEL_parallel_arrays */
typedef void             (APIENTRY* EXDLGLVERTEXPOINTERVINTELPROC)                                (GLint size, GLenum type, const GLvoid** pointer);
typedef void             (APIENTRY* EXDLGLNORMALPOINTERVINTELPROC)                                (GLenum type, const GLvoid** pointer);
typedef void             (APIENTRY* EXDLGLCOLORPOINTERVINTELPROC)                                 (GLint size, GLenum type, const GLvoid** pointer);
typedef void             (APIENTRY* EXDLGLTEXCOORDPOINTERVINTELPROC)                              (GLint size, GLenum type, const GLvoid** pointer);
/* GL_HP_occlusion_test */
/* GL_EXT_pixel_transform */
typedef void             (APIENTRY* EXDLGLPIXELTRANSFORMPARAMETERIEXTPROC)                        (GLenum target, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLPIXELTRANSFORMPARAMETERFEXTPROC)                        (GLenum target, GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLPIXELTRANSFORMPARAMETERIVEXTPROC)                       (GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLPIXELTRANSFORMPARAMETERFVEXTPROC)                       (GLenum target, GLenum pname, const GLfloat* params);
/* GL_EXT_pixel_transform_color_table */
/* GL_EXT_shared_texture_palette */
/* GL_EXT_separate_specular_color */
/* GL_EXT_secondary_color */
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3BEXTPROC)                                (GLbyte red, GLbyte green, GLbyte blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3BVEXTPROC)                               (const GLbyte* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3DEXTPROC)                                (GLdouble red, GLdouble green, GLdouble blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3DVEXTPROC)                               (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3FEXTPROC)                                (GLfloat red, GLfloat green, GLfloat blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3FVEXTPROC)                               (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3IEXTPROC)                                (GLint red, GLint green, GLint blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3IVEXTPROC)                               (const GLint* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3SEXTPROC)                                (GLshort red, GLshort green, GLshort blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3SVEXTPROC)                               (const GLshort* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3UBEXTPROC)                               (GLubyte red, GLubyte green, GLubyte blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3UBVEXTPROC)                              (const GLubyte* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3UIEXTPROC)                               (GLuint red, GLuint green, GLuint blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3UIVEXTPROC)                              (const GLuint* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3USEXTPROC)                               (GLushort red, GLushort green, GLushort blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3USVEXTPROC)                              (const GLushort* v);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLORPOINTEREXTPROC)                           (GLint size, GLenum type, GLsizei stride, const GLvoid* pointer);
/* GL_EXT_texture_perturb_normal */
typedef void             (APIENTRY* EXDLGLTEXTURENORMALEXTPROC)                                   (GLenum mode);
/* GL_EXT_multi_draw_arrays */
typedef void             (APIENTRY* EXDLGLMULTIDRAWARRAYSEXTPROC)                                 (GLenum mode, const GLint* first, const GLsizei* count, GLsizei primcount);
typedef void             (APIENTRY* EXDLGLMULTIDRAWELEMENTSEXTPROC)                               (GLenum mode, const GLsizei* count, GLenum type, const GLvoid** indices, GLsizei primcount);
/* GL_EXT_fog_coord */
typedef void             (APIENTRY* EXDLGLFOGCOORDFEXTPROC)                                       (GLfloat coord);
typedef void             (APIENTRY* EXDLGLFOGCOORDFVEXTPROC)                                      (const GLfloat* coord);
typedef void             (APIENTRY* EXDLGLFOGCOORDDEXTPROC)                                       (GLdouble coord);
typedef void             (APIENTRY* EXDLGLFOGCOORDDVEXTPROC)                                      (const GLdouble* coord);
typedef void             (APIENTRY* EXDLGLFOGCOORDPOINTEREXTPROC)                                 (GLenum type, GLsizei stride, const GLvoid* pointer);
/* GL_REND_screen_coordinates */
/* GL_EXT_coordinate_frame */
typedef void             (APIENTRY* EXDLGLTANGENT3BEXTPROC)                                       (GLbyte tx, GLbyte ty, GLbyte tz);
typedef void             (APIENTRY* EXDLGLTANGENT3BVEXTPROC)                                      (const GLbyte* v);
typedef void             (APIENTRY* EXDLGLTANGENT3DEXTPROC)                                       (GLdouble tx, GLdouble ty, GLdouble tz);
typedef void             (APIENTRY* EXDLGLTANGENT3DVEXTPROC)                                      (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLTANGENT3FEXTPROC)                                       (GLfloat tx, GLfloat ty, GLfloat tz);
typedef void             (APIENTRY* EXDLGLTANGENT3FVEXTPROC)                                      (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLTANGENT3IEXTPROC)                                       (GLint tx, GLint ty, GLint tz);
typedef void             (APIENTRY* EXDLGLTANGENT3IVEXTPROC)                                      (const GLint* v);
typedef void             (APIENTRY* EXDLGLTANGENT3SEXTPROC)                                       (GLshort tx, GLshort ty, GLshort tz);
typedef void             (APIENTRY* EXDLGLTANGENT3SVEXTPROC)                                      (const GLshort* v);
typedef void             (APIENTRY* EXDLGLBINORMAL3BEXTPROC)                                      (GLbyte bx, GLbyte by, GLbyte bz);
typedef void             (APIENTRY* EXDLGLBINORMAL3BVEXTPROC)                                     (const GLbyte* v);
typedef void             (APIENTRY* EXDLGLBINORMAL3DEXTPROC)                                      (GLdouble bx, GLdouble by, GLdouble bz);
typedef void             (APIENTRY* EXDLGLBINORMAL3DVEXTPROC)                                     (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLBINORMAL3FEXTPROC)                                      (GLfloat bx, GLfloat by, GLfloat bz);
typedef void             (APIENTRY* EXDLGLBINORMAL3FVEXTPROC)                                     (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLBINORMAL3IEXTPROC)                                      (GLint bx, GLint by, GLint bz);
typedef void             (APIENTRY* EXDLGLBINORMAL3IVEXTPROC)                                     (const GLint* v);
typedef void             (APIENTRY* EXDLGLBINORMAL3SEXTPROC)                                      (GLshort bx, GLshort by, GLshort bz);
typedef void             (APIENTRY* EXDLGLBINORMAL3SVEXTPROC)                                     (const GLshort* v);
typedef void             (APIENTRY* EXDLGLTANGENTPOINTEREXTPROC)                                  (GLenum type, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLBINORMALPOINTEREXTPROC)                                 (GLenum type, GLsizei stride, const GLvoid* pointer);
/* GL_EXT_texture_env_combine */
/* GL_APPLE_specular_vector */
/* GL_APPLE_transform_hint */
/* GL_SGIX_fog_scale */
/* GL_SUNX_constant_data */
typedef void             (APIENTRY* EXDLGLFINISHTEXTURESUNXPROC)                                  (void);
/* GL_SUN_global_alpha */
typedef void             (APIENTRY* EXDLGLGLOBALALPHAFACTORBSUNPROC)                              (GLbyte factor);
typedef void             (APIENTRY* EXDLGLGLOBALALPHAFACTORSSUNPROC)                              (GLshort factor);
typedef void             (APIENTRY* EXDLGLGLOBALALPHAFACTORISUNPROC)                              (GLint factor);
typedef void             (APIENTRY* EXDLGLGLOBALALPHAFACTORFSUNPROC)                              (GLfloat factor);
typedef void             (APIENTRY* EXDLGLGLOBALALPHAFACTORDSUNPROC)                              (GLdouble factor);
typedef void             (APIENTRY* EXDLGLGLOBALALPHAFACTORUBSUNPROC)                             (GLubyte factor);
typedef void             (APIENTRY* EXDLGLGLOBALALPHAFACTORUSSUNPROC)                             (GLushort factor);
typedef void             (APIENTRY* EXDLGLGLOBALALPHAFACTORUISUNPROC)                             (GLuint factor);
/* GL_SUN_triangle_list */
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUISUNPROC)                               (GLuint code);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUSSUNPROC)                               (GLushort code);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUBSUNPROC)                               (GLubyte code);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUIVSUNPROC)                              (const GLuint* code);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUSVSUNPROC)                              (const GLushort* code);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUBVSUNPROC)                              (const GLubyte* code);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEPOINTERSUNPROC)                          (GLenum type, GLsizei stride, const GLvoid** pointer);
/* GL_SUN_vertex */
typedef void             (APIENTRY* EXDLGLCOLOR4UBVERTEX2FSUNPROC)                                (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y);
typedef void             (APIENTRY* EXDLGLCOLOR4UBVERTEX2FVSUNPROC)                               (const GLubyte* c, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLCOLOR4UBVERTEX3FSUNPROC)                                (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLCOLOR4UBVERTEX3FVSUNPROC)                               (const GLubyte* c, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLCOLOR3FVERTEX3FSUNPROC)                                 (GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLCOLOR3FVERTEX3FVSUNPROC)                                (const GLfloat* c, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLNORMAL3FVERTEX3FSUNPROC)                                (GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLNORMAL3FVERTEX3FVSUNPROC)                               (const GLfloat* n, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLCOLOR4FNORMAL3FVERTEX3FSUNPROC)                         (GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC)                        (const GLfloat* c, const GLfloat* n, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD2FVERTEX3FSUNPROC)                              (GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLTEXCOORD2FVERTEX3FVSUNPROC)                             (const GLfloat* tc, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD4FVERTEX4FSUNPROC)                              (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLTEXCOORD4FVERTEX4FVSUNPROC)                             (const GLfloat* tc, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC)                      (GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC)                     (const GLfloat* tc, const GLubyte* c, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC)                       (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC)                      (const GLfloat* tc, const GLfloat* c, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC)                      (GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC)                     (const GLfloat* tc, const GLfloat* n, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC)               (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC)              (const GLfloat* tc, const GLfloat* c, const GLfloat* n, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC)               (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC)              (const GLfloat* tc, const GLfloat* c, const GLfloat* n, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUIVERTEX3FSUNPROC)                       (GLuint rc, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUIVERTEX3FVSUNPROC)                      (const GLuint* rc, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC)               (GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC)              (const GLuint* rc, const GLubyte* c, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC)                (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC)               (const GLuint* rc, const GLfloat* c, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC)               (GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC)              (const GLuint* rc, const GLfloat* n, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC)        (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC)       (const GLuint* rc, const GLfloat* c, const GLfloat* n, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC)             (GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC)            (const GLuint* rc, const GLfloat* tc, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC)     (GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC)    (const GLuint* rc, const GLfloat* tc, const GLfloat* n, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC) (const GLuint* rc, const GLfloat* tc, const GLfloat* c, const GLfloat* n, const GLfloat* v);
/* GL_EXT_blend_func_separate */
typedef void             (APIENTRY* EXDLGLBLENDFUNCSEPARATEEXTPROC)                               (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
/* GL_INGR_blend_func_separate */
typedef void             (APIENTRY* EXDLGLBLENDFUNCSEPARATEINGRPROC)                              (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
/* GL_INGR_color_clamp */
/* GL_INGR_interlace_read */
/* GL_EXT_stencil_wrap */
/* GL_EXT_422_pixels */
/* GL_NV_texgen_reflection */
/* GL_SUN_convolution_border_modes */
/* GL_EXT_texture_env_add */
/* GL_EXT_texture_lod_bias */
/* GL_EXT_texture_filter_anisotropic */
/* GL_EXT_vertex_weighting */
typedef void             (APIENTRY* EXDLGLVERTEXWEIGHTFEXTPROC)                                   (GLfloat weight);
typedef void             (APIENTRY* EXDLGLVERTEXWEIGHTFVEXTPROC)                                  (const GLfloat* weight);
typedef void             (APIENTRY* EXDLGLVERTEXWEIGHTPOINTEREXTPROC)                             (GLsizei size, GLenum type, GLsizei stride, const GLvoid* pointer);
/* GL_NV_light_max_exponent */
/* GL_NV_vertex_array_range */
typedef void             (APIENTRY* EXDLGLFLUSHVERTEXARRAYRANGENVPROC)                            (void);
typedef void             (APIENTRY* EXDLGLVERTEXARRAYRANGENVPROC)                                 (GLsizei length, const GLvoid* pointer);
/* GL_NV_register_combiners */
typedef void             (APIENTRY* EXDLGLCOMBINERPARAMETERFVNVPROC)                              (GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLCOMBINERPARAMETERFNVPROC)                               (GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLCOMBINERPARAMETERIVNVPROC)                              (GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLCOMBINERPARAMETERINVPROC)                               (GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLCOMBINERINPUTNVPROC)                                    (GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
typedef void             (APIENTRY* EXDLGLCOMBINEROUTPUTNVPROC)                                   (GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum);
typedef void             (APIENTRY* EXDLGLFINALCOMBINERINPUTNVPROC)                               (GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
typedef void             (APIENTRY* EXDLGLGETCOMBINERINPUTPARAMETERFVNVPROC)                      (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETCOMBINERINPUTPARAMETERIVNVPROC)                      (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETCOMBINEROUTPUTPARAMETERFVNVPROC)                     (GLenum stage, GLenum portion, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETCOMBINEROUTPUTPARAMETERIVNVPROC)                     (GLenum stage, GLenum portion, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC)                 (GLenum variable, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC)                 (GLenum variable, GLenum pname, GLint* params);
/* GL_NV_fog_distance */
/* GL_NV_texgen_emboss */
/* GL_NV_blend_square */
/* GL_NV_texture_env_combine4 */
/* GL_MESA_resize_buffers */
typedef void             (APIENTRY* EXDLGLRESIZEBUFFERSMESAPROC)                                  (void);
/* GL_MESA_window_pos */
typedef void             (APIENTRY* EXDLGLWINDOWPOS2DMESAPROC)                                    (GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2DVMESAPROC)                                   (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2FMESAPROC)                                    (GLfloat x, GLfloat y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2FVMESAPROC)                                   (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2IMESAPROC)                                    (GLint x, GLint y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2IVMESAPROC)                                   (const GLint* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2SMESAPROC)                                    (GLshort x, GLshort y);
typedef void             (APIENTRY* EXDLGLWINDOWPOS2SVMESAPROC)                                   (const GLshort* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3DMESAPROC)                                    (GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3DVMESAPROC)                                   (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3FMESAPROC)                                    (GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3FVMESAPROC)                                   (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3IMESAPROC)                                    (GLint x, GLint y, GLint z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3IVMESAPROC)                                   (const GLint* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3SMESAPROC)                                    (GLshort x, GLshort y, GLshort z);
typedef void             (APIENTRY* EXDLGLWINDOWPOS3SVMESAPROC)                                   (const GLshort* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS4DMESAPROC)                                    (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLWINDOWPOS4DVMESAPROC)                                   (const GLdouble* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS4FMESAPROC)                                    (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLWINDOWPOS4FVMESAPROC)                                   (const GLfloat* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS4IMESAPROC)                                    (GLint x, GLint y, GLint z, GLint w);
typedef void             (APIENTRY* EXDLGLWINDOWPOS4IVMESAPROC)                                   (const GLint* v);
typedef void             (APIENTRY* EXDLGLWINDOWPOS4SMESAPROC)                                    (GLshort x, GLshort y, GLshort z, GLshort w);
typedef void             (APIENTRY* EXDLGLWINDOWPOS4SVMESAPROC)                                   (const GLshort* v);
/* GL_IBM_cull_vertex */
/* GL_IBM_multimode_draw_arrays */
typedef void             (APIENTRY* EXDLGLMULTIMODEDRAWARRAYSIBMPROC)                             (const GLenum* mode, const GLint* first, const GLsizei* count, GLsizei primcount, GLint modestride);
typedef void             (APIENTRY* EXDLGLMULTIMODEDRAWELEMENTSIBMPROC)                           (const GLenum* mode, const GLsizei* count, GLenum type, const GLvoid* const* indices, GLsizei primcount, GLint modestride);
/* GL_IBM_vertex_array_lists */
typedef void             (APIENTRY* EXDLGLCOLORPOINTERLISTIBMPROC)                                (GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLORPOINTERLISTIBMPROC)                       (GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride);
typedef void             (APIENTRY* EXDLGLEDGEFLAGPOINTERLISTIBMPROC)                             (GLint stride, const GLboolean** pointer, GLint ptrstride);
typedef void             (APIENTRY* EXDLGLFOGCOORDPOINTERLISTIBMPROC)                             (GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride);
typedef void             (APIENTRY* EXDLGLINDEXPOINTERLISTIBMPROC)                                (GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride);
typedef void             (APIENTRY* EXDLGLNORMALPOINTERLISTIBMPROC)                               (GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride);
typedef void             (APIENTRY* EXDLGLTEXCOORDPOINTERLISTIBMPROC)                             (GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride);
typedef void             (APIENTRY* EXDLGLVERTEXPOINTERLISTIBMPROC)                               (GLint size, GLenum type, GLint stride, const GLvoid** pointer, GLint ptrstride);
/* GL_SGIX_subsample */
/* GL_SGIX_ycrcba */
/* GL_SGIX_ycrcb_subsample */
/* GL_SGIX_depth_pass_instrument */
/* GL_3DFX_texture_compression_FXT1 */
/* GL_3DFX_multisample */
/* GL_3DFX_tbuffer */
typedef void             (APIENTRY* EXDLGLTBUFFERMASK3DFXPROC)                                    (GLuint mask);
/* GL_EXT_multisample */
typedef void             (APIENTRY* EXDLGLSAMPLEMASKEXTPROC)                                      (GLclampf value, GLboolean invert);
typedef void             (APIENTRY* EXDLGLSAMPLEPATTERNEXTPROC)                                   (GLenum pattern);
/* GL_SGIX_vertex_preclip */
/* GL_SGIX_convolution_accuracy */
/* GL_SGIX_resample */
/* GL_SGIS_point_line_texgen */
/* GL_SGIS_texture_color_mask */
typedef void             (APIENTRY* EXDLGLTEXTURECOLORMASKSGISPROC)                               (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
/* GL_SGIX_igloo_interface */
typedef void             (APIENTRY* EXDLGLIGLOOINTERFACESGIXPROC)                                 (GLenum pname, const GLvoid* params);
/* GL_EXT_texture_env_dot3 */
/* GL_ATI_texture_mirror_once */
/* GL_NV_fence */
typedef void             (APIENTRY* EXDLGLDELETEFENCESNVPROC)                                     (GLsizei n, const GLuint* fences);
typedef void             (APIENTRY* EXDLGLGENFENCESNVPROC)                                        (GLsizei n, GLuint* fences);
typedef GLboolean        (APIENTRY* EXDLGLISFENCENVPROC)                                          (GLuint fence);
typedef GLboolean        (APIENTRY* EXDLGLTESTFENCENVPROC)                                        (GLuint fence);
typedef void             (APIENTRY* EXDLGLGETFENCEIVNVPROC)                                       (GLuint fence, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLFINISHFENCENVPROC)                                      (GLuint fence);
typedef void             (APIENTRY* EXDLGLSETFENCENVPROC)                                         (GLuint fence, GLenum condition);
/* GL_NV_evaluators */
typedef void             (APIENTRY* EXDLGLMAPCONTROLPOINTSNVPROC)                                 (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const GLvoid* points);
typedef void             (APIENTRY* EXDLGLMAPPARAMETERIVNVPROC)                                   (GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLMAPPARAMETERFVNVPROC)                                   (GLenum target, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETMAPCONTROLPOINTSNVPROC)                              (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, GLvoid* points);
typedef void             (APIENTRY* EXDLGLGETMAPPARAMETERIVNVPROC)                                (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETMAPPARAMETERFVNVPROC)                                (GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETMAPATTRIBPARAMETERIVNVPROC)                          (GLenum target, GLuint index, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETMAPATTRIBPARAMETERFVNVPROC)                          (GLenum target, GLuint index, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLEVALMAPSNVPROC)                                         (GLenum target, GLenum mode);
/* GL_NV_packed_depth_stencil */
/* GL_NV_register_combiners2 */
typedef void             (APIENTRY* EXDLGLCOMBINERSTAGEPARAMETERFVNVPROC)                         (GLenum stage, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETCOMBINERSTAGEPARAMETERFVNVPROC)                      (GLenum stage, GLenum pname, GLfloat* params);
/* GL_NV_texture_compression_vtc */
/* GL_NV_texture_rectangle */
/* GL_NV_texture_shader */
/* GL_NV_texture_shader2 */
/* GL_NV_vertex_array_range2 */
/* GL_NV_vertex_program */
typedef GLboolean        (APIENTRY* EXDLGLAREPROGRAMSRESIDENTNVPROC)                              (GLsizei n, const GLuint* programs, GLboolean* residences);
typedef void             (APIENTRY* EXDLGLBINDPROGRAMNVPROC)                                      (GLenum target, GLuint id);
typedef void             (APIENTRY* EXDLGLDELETEPROGRAMSNVPROC)                                   (GLsizei n, const GLuint* programs);
typedef void             (APIENTRY* EXDLGLEXECUTEPROGRAMNVPROC)                                   (GLenum target, GLuint id, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLGENPROGRAMSNVPROC)                                      (GLsizei n, GLuint* programs);
typedef void             (APIENTRY* EXDLGLGETPROGRAMPARAMETERDVNVPROC)                            (GLenum target, GLuint index, GLenum pname, GLdouble* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMPARAMETERFVNVPROC)                            (GLenum target, GLuint index, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMIVNVPROC)                                     (GLuint id, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMSTRINGNVPROC)                                 (GLuint id, GLenum pname, GLubyte* program);
typedef void             (APIENTRY* EXDLGLGETTRACKMATRIXIVNVPROC)                                 (GLenum target, GLuint address, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBDVNVPROC)                                (GLuint index, GLenum pname, GLdouble* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBFVNVPROC)                                (GLuint index, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBIVNVPROC)                                (GLuint index, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBPOINTERVNVPROC)                          (GLuint index, GLenum pname, GLvoid** pointer);
typedef GLboolean        (APIENTRY* EXDLGLISPROGRAMNVPROC)                                        (GLuint id);
typedef void             (APIENTRY* EXDLGLLOADPROGRAMNVPROC)                                      (GLenum target, GLuint id, GLsizei len, const GLubyte* program);
typedef void             (APIENTRY* EXDLGLPROGRAMPARAMETER4DNVPROC)                               (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLPROGRAMPARAMETER4DVNVPROC)                              (GLenum target, GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLPROGRAMPARAMETER4FNVPROC)                               (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLPROGRAMPARAMETER4FVNVPROC)                              (GLenum target, GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLPROGRAMPARAMETERS4DVNVPROC)                             (GLenum target, GLuint index, GLsizei count, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLPROGRAMPARAMETERS4FVNVPROC)                             (GLenum target, GLuint index, GLsizei count, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLREQUESTRESIDENTPROGRAMSNVPROC)                          (GLsizei n, const GLuint* programs);
typedef void             (APIENTRY* EXDLGLTRACKMATRIXNVPROC)                                      (GLenum target, GLuint address, GLenum matrix, GLenum transform);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBPOINTERNVPROC)                              (GLuint index, GLint fsize, GLenum type, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1DNVPROC)                                   (GLuint index, GLdouble x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1DVNVPROC)                                  (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1FNVPROC)                                   (GLuint index, GLfloat x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1FVNVPROC)                                  (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1SNVPROC)                                   (GLuint index, GLshort x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1SVNVPROC)                                  (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2DNVPROC)                                   (GLuint index, GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2DVNVPROC)                                  (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2FNVPROC)                                   (GLuint index, GLfloat x, GLfloat y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2FVNVPROC)                                  (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2SNVPROC)                                   (GLuint index, GLshort x, GLshort y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2SVNVPROC)                                  (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3DNVPROC)                                   (GLuint index, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3DVNVPROC)                                  (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3FNVPROC)                                   (GLuint index, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3FVNVPROC)                                  (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3SNVPROC)                                   (GLuint index, GLshort x, GLshort y, GLshort z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3SVNVPROC)                                  (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4DNVPROC)                                   (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4DVNVPROC)                                  (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4FNVPROC)                                   (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4FVNVPROC)                                  (GLuint index, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4SNVPROC)                                   (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4SVNVPROC)                                  (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4UBNVPROC)                                  (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4UBVNVPROC)                                 (GLuint index, const GLubyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS1DVNVPROC)                                 (GLuint index, GLsizei count, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS1FVNVPROC)                                 (GLuint index, GLsizei count, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS1SVNVPROC)                                 (GLuint index, GLsizei count, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS2DVNVPROC)                                 (GLuint index, GLsizei count, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS2FVNVPROC)                                 (GLuint index, GLsizei count, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS2SVNVPROC)                                 (GLuint index, GLsizei count, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS3DVNVPROC)                                 (GLuint index, GLsizei count, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS3FVNVPROC)                                 (GLuint index, GLsizei count, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS3SVNVPROC)                                 (GLuint index, GLsizei count, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS4DVNVPROC)                                 (GLuint index, GLsizei count, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS4FVNVPROC)                                 (GLuint index, GLsizei count, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS4SVNVPROC)                                 (GLuint index, GLsizei count, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS4UBVNVPROC)                                (GLuint index, GLsizei count, const GLubyte* v);
/* GL_SGIX_texture_coordinate_clamp */
/* GL_SGIX_scalebias_hint */
/* GL_OML_interlace */
/* GL_OML_subsample */
/* GL_OML_resample */
/* GL_NV_copy_depth_to_color */
/* GL_ATI_envmap_bumpmap */
typedef void             (APIENTRY* EXDLGLTEXBUMPPARAMETERIVATIPROC)                              (GLenum pname, const GLint* param);
typedef void             (APIENTRY* EXDLGLTEXBUMPPARAMETERFVATIPROC)                              (GLenum pname, const GLfloat* param);
typedef void             (APIENTRY* EXDLGLGETTEXBUMPPARAMETERIVATIPROC)                           (GLenum pname, GLint* param);
typedef void             (APIENTRY* EXDLGLGETTEXBUMPPARAMETERFVATIPROC)                           (GLenum pname, GLfloat* param);
/* GL_ATI_fragment_shader */
typedef GLuint           (APIENTRY* EXDLGLGENFRAGMENTSHADERSATIPROC)                              (GLuint range);
typedef void             (APIENTRY* EXDLGLBINDFRAGMENTSHADERATIPROC)                              (GLuint id);
typedef void             (APIENTRY* EXDLGLDELETEFRAGMENTSHADERATIPROC)                            (GLuint id);
typedef void             (APIENTRY* EXDLGLBEGINFRAGMENTSHADERATIPROC)                             (void);
typedef void             (APIENTRY* EXDLGLENDFRAGMENTSHADERATIPROC)                               (void);
typedef void             (APIENTRY* EXDLGLPASSTEXCOORDATIPROC)                                    (GLuint dst, GLuint coord, GLenum swizzle);
typedef void             (APIENTRY* EXDLGLSAMPLEMAPATIPROC)                                       (GLuint dst, GLuint interp, GLenum swizzle);
typedef void             (APIENTRY* EXDLGLCOLORFRAGMENTOP1ATIPROC)                                (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
typedef void             (APIENTRY* EXDLGLCOLORFRAGMENTOP2ATIPROC)                                (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
typedef void             (APIENTRY* EXDLGLCOLORFRAGMENTOP3ATIPROC)                                (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
typedef void             (APIENTRY* EXDLGLALPHAFRAGMENTOP1ATIPROC)                                (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
typedef void             (APIENTRY* EXDLGLALPHAFRAGMENTOP2ATIPROC)                                (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
typedef void             (APIENTRY* EXDLGLALPHAFRAGMENTOP3ATIPROC)                                (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
typedef void             (APIENTRY* EXDLGLSETFRAGMENTSHADERCONSTANTATIPROC)                       (GLuint dst, const GLfloat* value);
/* GL_ATI_pn_triangles */
typedef void             (APIENTRY* EXDLGLPNTRIANGLESIATIPROC)                                    (GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLPNTRIANGLESFATIPROC)                                    (GLenum pname, GLfloat param);
/* GL_ATI_vertex_array_object */
typedef GLuint           (APIENTRY* EXDLGLNEWOBJECTBUFFERATIPROC)                                 (GLsizei size, const GLvoid* pointer, GLenum usage);
typedef GLboolean        (APIENTRY* EXDLGLISOBJECTBUFFERATIPROC)                                  (GLuint buffer);
typedef void             (APIENTRY* EXDLGLUPDATEOBJECTBUFFERATIPROC)                              (GLuint buffer, GLuint offset, GLsizei size, const GLvoid* pointer, GLenum preserve);
typedef void             (APIENTRY* EXDLGLGETOBJECTBUFFERFVATIPROC)                               (GLuint buffer, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETOBJECTBUFFERIVATIPROC)                               (GLuint buffer, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLFREEOBJECTBUFFERATIPROC)                                (GLuint buffer);
typedef void             (APIENTRY* EXDLGLARRAYOBJECTATIPROC)                                     (GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
typedef void             (APIENTRY* EXDLGLGETARRAYOBJECTFVATIPROC)                                (GLenum array, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETARRAYOBJECTIVATIPROC)                                (GLenum array, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLVARIANTARRAYOBJECTATIPROC)                              (GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
typedef void             (APIENTRY* EXDLGLGETVARIANTARRAYOBJECTFVATIPROC)                         (GLuint id, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETVARIANTARRAYOBJECTIVATIPROC)                         (GLuint id, GLenum pname, GLint* params);
/* GL_EXT_vertex_shader */
typedef void             (APIENTRY* EXDLGLBEGINVERTEXSHADEREXTPROC)                               (void);
typedef void             (APIENTRY* EXDLGLENDVERTEXSHADEREXTPROC)                                 (void);
typedef void             (APIENTRY* EXDLGLBINDVERTEXSHADEREXTPROC)                                (GLuint id);
typedef GLuint           (APIENTRY* EXDLGLGENVERTEXSHADERSEXTPROC)                                (GLuint range);
typedef void             (APIENTRY* EXDLGLDELETEVERTEXSHADEREXTPROC)                              (GLuint id);
typedef void             (APIENTRY* EXDLGLSHADEROP1EXTPROC)                                       (GLenum op, GLuint res, GLuint arg1);
typedef void             (APIENTRY* EXDLGLSHADEROP2EXTPROC)                                       (GLenum op, GLuint res, GLuint arg1, GLuint arg2);
typedef void             (APIENTRY* EXDLGLSHADEROP3EXTPROC)                                       (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3);
typedef void             (APIENTRY* EXDLGLSWIZZLEEXTPROC)                                         (GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
typedef void             (APIENTRY* EXDLGLWRITEMASKEXTPROC)                                       (GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
typedef void             (APIENTRY* EXDLGLINSERTCOMPONENTEXTPROC)                                 (GLuint res, GLuint src, GLuint num);
typedef void             (APIENTRY* EXDLGLEXTRACTCOMPONENTEXTPROC)                                (GLuint res, GLuint src, GLuint num);
typedef GLuint           (APIENTRY* EXDLGLGENSYMBOLSEXTPROC)                                      (GLenum datatype, GLenum storagetype, GLenum range, GLuint components);
typedef void             (APIENTRY* EXDLGLSETINVARIANTEXTPROC)                                    (GLuint id, GLenum type, const GLvoid* addr);
typedef void             (APIENTRY* EXDLGLSETLOCALCONSTANTEXTPROC)                                (GLuint id, GLenum type, const GLvoid* addr);
typedef void             (APIENTRY* EXDLGLVARIANTBVEXTPROC)                                       (GLuint id, const GLbyte* addr);
typedef void             (APIENTRY* EXDLGLVARIANTSVEXTPROC)                                       (GLuint id, const GLshort* addr);
typedef void             (APIENTRY* EXDLGLVARIANTIVEXTPROC)                                       (GLuint id, const GLint* addr);
typedef void             (APIENTRY* EXDLGLVARIANTFVEXTPROC)                                       (GLuint id, const GLfloat* addr);
typedef void             (APIENTRY* EXDLGLVARIANTDVEXTPROC)                                       (GLuint id, const GLdouble* addr);
typedef void             (APIENTRY* EXDLGLVARIANTUBVEXTPROC)                                      (GLuint id, const GLubyte* addr);
typedef void             (APIENTRY* EXDLGLVARIANTUSVEXTPROC)                                      (GLuint id, const GLushort* addr);
typedef void             (APIENTRY* EXDLGLVARIANTUIVEXTPROC)                                      (GLuint id, const GLuint* addr);
typedef void             (APIENTRY* EXDLGLVARIANTPOINTEREXTPROC)                                  (GLuint id, GLenum type, GLuint stride, const GLvoid* addr);
typedef void             (APIENTRY* EXDLGLENABLEVARIANTCLIENTSTATEEXTPROC)                        (GLuint id);
typedef void             (APIENTRY* EXDLGLDISABLEVARIANTCLIENTSTATEEXTPROC)                       (GLuint id);
typedef GLuint           (APIENTRY* EXDLGLBINDLIGHTPARAMETEREXTPROC)                              (GLenum light, GLenum value);
typedef GLuint           (APIENTRY* EXDLGLBINDMATERIALPARAMETEREXTPROC)                           (GLenum face, GLenum value);
typedef GLuint           (APIENTRY* EXDLGLBINDTEXGENPARAMETEREXTPROC)                             (GLenum unit, GLenum coord, GLenum value);
typedef GLuint           (APIENTRY* EXDLGLBINDTEXTUREUNITPARAMETEREXTPROC)                        (GLenum unit, GLenum value);
typedef GLuint           (APIENTRY* EXDLGLBINDPARAMETEREXTPROC)                                   (GLenum value);
typedef GLboolean        (APIENTRY* EXDLGLISVARIANTENABLEDEXTPROC)                                (GLuint id, GLenum cap);
typedef void             (APIENTRY* EXDLGLGETVARIANTBOOLEANVEXTPROC)                              (GLuint id, GLenum value, GLboolean* data);
typedef void             (APIENTRY* EXDLGLGETVARIANTINTEGERVEXTPROC)                              (GLuint id, GLenum value, GLint* data);
typedef void             (APIENTRY* EXDLGLGETVARIANTFLOATVEXTPROC)                                (GLuint id, GLenum value, GLfloat* data);
typedef void             (APIENTRY* EXDLGLGETVARIANTPOINTERVEXTPROC)                              (GLuint id, GLenum value, GLvoid** data);
typedef void             (APIENTRY* EXDLGLGETINVARIANTBOOLEANVEXTPROC)                            (GLuint id, GLenum value, GLboolean* data);
typedef void             (APIENTRY* EXDLGLGETINVARIANTINTEGERVEXTPROC)                            (GLuint id, GLenum value, GLint* data);
typedef void             (APIENTRY* EXDLGLGETINVARIANTFLOATVEXTPROC)                              (GLuint id, GLenum value, GLfloat* data);
typedef void             (APIENTRY* EXDLGLGETLOCALCONSTANTBOOLEANVEXTPROC)                        (GLuint id, GLenum value, GLboolean* data);
typedef void             (APIENTRY* EXDLGLGETLOCALCONSTANTINTEGERVEXTPROC)                        (GLuint id, GLenum value, GLint* data);
typedef void             (APIENTRY* EXDLGLGETLOCALCONSTANTFLOATVEXTPROC)                          (GLuint id, GLenum value, GLfloat* data);
/* GL_ATI_vertex_streams */
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM1SATIPROC)                                  (GLenum stream, GLshort x);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM1SVATIPROC)                                 (GLenum stream, const GLshort* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM1IATIPROC)                                  (GLenum stream, GLint x);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM1IVATIPROC)                                 (GLenum stream, const GLint* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM1FATIPROC)                                  (GLenum stream, GLfloat x);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM1FVATIPROC)                                 (GLenum stream, const GLfloat* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM1DATIPROC)                                  (GLenum stream, GLdouble x);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM1DVATIPROC)                                 (GLenum stream, const GLdouble* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM2SATIPROC)                                  (GLenum stream, GLshort x, GLshort y);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM2SVATIPROC)                                 (GLenum stream, const GLshort* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM2IATIPROC)                                  (GLenum stream, GLint x, GLint y);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM2IVATIPROC)                                 (GLenum stream, const GLint* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM2FATIPROC)                                  (GLenum stream, GLfloat x, GLfloat y);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM2FVATIPROC)                                 (GLenum stream, const GLfloat* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM2DATIPROC)                                  (GLenum stream, GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM2DVATIPROC)                                 (GLenum stream, const GLdouble* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM3SATIPROC)                                  (GLenum stream, GLshort x, GLshort y, GLshort z);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM3SVATIPROC)                                 (GLenum stream, const GLshort* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM3IATIPROC)                                  (GLenum stream, GLint x, GLint y, GLint z);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM3IVATIPROC)                                 (GLenum stream, const GLint* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM3FATIPROC)                                  (GLenum stream, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM3FVATIPROC)                                 (GLenum stream, const GLfloat* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM3DATIPROC)                                  (GLenum stream, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM3DVATIPROC)                                 (GLenum stream, const GLdouble* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM4SATIPROC)                                  (GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM4SVATIPROC)                                 (GLenum stream, const GLshort* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM4IATIPROC)                                  (GLenum stream, GLint x, GLint y, GLint z, GLint w);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM4IVATIPROC)                                 (GLenum stream, const GLint* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM4FATIPROC)                                  (GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM4FVATIPROC)                                 (GLenum stream, const GLfloat* coords);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM4DATIPROC)                                  (GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLVERTEXSTREAM4DVATIPROC)                                 (GLenum stream, const GLdouble* coords);
typedef void             (APIENTRY* EXDLGLNORMALSTREAM3BATIPROC)                                  (GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz);
typedef void             (APIENTRY* EXDLGLNORMALSTREAM3BVATIPROC)                                 (GLenum stream, const GLbyte* coords);
typedef void             (APIENTRY* EXDLGLNORMALSTREAM3SATIPROC)                                  (GLenum stream, GLshort nx, GLshort ny, GLshort nz);
typedef void             (APIENTRY* EXDLGLNORMALSTREAM3SVATIPROC)                                 (GLenum stream, const GLshort* coords);
typedef void             (APIENTRY* EXDLGLNORMALSTREAM3IATIPROC)                                  (GLenum stream, GLint nx, GLint ny, GLint nz);
typedef void             (APIENTRY* EXDLGLNORMALSTREAM3IVATIPROC)                                 (GLenum stream, const GLint* coords);
typedef void             (APIENTRY* EXDLGLNORMALSTREAM3FATIPROC)                                  (GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz);
typedef void             (APIENTRY* EXDLGLNORMALSTREAM3FVATIPROC)                                 (GLenum stream, const GLfloat* coords);
typedef void             (APIENTRY* EXDLGLNORMALSTREAM3DATIPROC)                                  (GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz);
typedef void             (APIENTRY* EXDLGLNORMALSTREAM3DVATIPROC)                                 (GLenum stream, const GLdouble* coords);
typedef void             (APIENTRY* EXDLGLCLIENTACTIVEVERTEXSTREAMATIPROC)                        (GLenum stream);
typedef void             (APIENTRY* EXDLGLVERTEXBLENDENVIATIPROC)                                 (GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLVERTEXBLENDENVFATIPROC)                                 (GLenum pname, GLfloat param);
/* GL_ATI_element_array */
typedef void             (APIENTRY* EXDLGLELEMENTPOINTERATIPROC)                                  (GLenum type, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLDRAWELEMENTARRAYATIPROC)                                (GLenum mode, GLsizei count);
typedef void             (APIENTRY* EXDLGLDRAWRANGEELEMENTARRAYATIPROC)                           (GLenum mode, GLuint start, GLuint end, GLsizei count);
/* GL_SUN_mesh_array */
typedef void             (APIENTRY* EXDLGLDRAWMESHARRAYSSUNPROC)                                  (GLenum mode, GLint first, GLsizei count, GLsizei width);
/* GL_SUN_slice_accum */
/* GL_NV_multisample_filter_hint */
/* GL_NV_depth_clamp */
/* GL_NV_occlusion_query */
typedef void             (APIENTRY* EXDLGLGENOCCLUSIONQUERIESNVPROC)                              (GLsizei n, GLuint* ids);
typedef void             (APIENTRY* EXDLGLDELETEOCCLUSIONQUERIESNVPROC)                           (GLsizei n, const GLuint* ids);
typedef GLboolean        (APIENTRY* EXDLGLISOCCLUSIONQUERYNVPROC)                                 (GLuint id);
typedef void             (APIENTRY* EXDLGLBEGINOCCLUSIONQUERYNVPROC)                              (GLuint id);
typedef void             (APIENTRY* EXDLGLENDOCCLUSIONQUERYNVPROC)                                (void);
typedef void             (APIENTRY* EXDLGLGETOCCLUSIONQUERYIVNVPROC)                              (GLuint id, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETOCCLUSIONQUERYUIVNVPROC)                             (GLuint id, GLenum pname, GLuint* params);
/* GL_NV_point_sprite */
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERINVPROC)                                  (GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLPOINTPARAMETERIVNVPROC)                                 (GLenum pname, const GLint* params);
/* GL_NV_texture_shader3 */
/* GL_NV_vertex_program1_1 */
/* GL_EXT_shadow_funcs */
/* GL_EXT_stencil_two_side */
typedef void             (APIENTRY* EXDLGLACTIVESTENCILFACEEXTPROC)                               (GLenum face);
/* GL_ATI_text_fragment_shader */
/* GL_APPLE_client_storage */
/* GL_APPLE_element_array */
typedef void             (APIENTRY* EXDLGLELEMENTPOINTERAPPLEPROC)                                (GLenum type, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLDRAWELEMENTARRAYAPPLEPROC)                              (GLenum mode, GLint first, GLsizei count);
typedef void             (APIENTRY* EXDLGLDRAWRANGEELEMENTARRAYAPPLEPROC)                         (GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count);
typedef void             (APIENTRY* EXDLGLMULTIDRAWELEMENTARRAYAPPLEPROC)                         (GLenum mode, const GLint* first, const GLsizei* count, GLsizei primcount);
typedef void             (APIENTRY* EXDLGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC)                    (GLenum mode, GLuint start, GLuint end, const GLint* first, const GLsizei* count, GLsizei primcount);
/* GL_APPLE_fence */
typedef void             (APIENTRY* EXDLGLGENFENCESAPPLEPROC)                                     (GLsizei n, GLuint* fences);
typedef void             (APIENTRY* EXDLGLDELETEFENCESAPPLEPROC)                                  (GLsizei n, const GLuint* fences);
typedef void             (APIENTRY* EXDLGLSETFENCEAPPLEPROC)                                      (GLuint fence);
typedef GLboolean        (APIENTRY* EXDLGLISFENCEAPPLEPROC)                                       (GLuint fence);
typedef GLboolean        (APIENTRY* EXDLGLTESTFENCEAPPLEPROC)                                     (GLuint fence);
typedef void             (APIENTRY* EXDLGLFINISHFENCEAPPLEPROC)                                   (GLuint fence);
typedef GLboolean        (APIENTRY* EXDLGLTESTOBJECTAPPLEPROC)                                    (GLenum object, GLuint name);
typedef void             (APIENTRY* EXDLGLFINISHOBJECTAPPLEPROC)                                  (GLenum object, GLint name);
/* GL_APPLE_vertex_array_object */
typedef void             (APIENTRY* EXDLGLBINDVERTEXARRAYAPPLEPROC)                               (GLuint array);
typedef void             (APIENTRY* EXDLGLDELETEVERTEXARRAYSAPPLEPROC)                            (GLsizei n, const GLuint* arrays);
typedef void             (APIENTRY* EXDLGLGENVERTEXARRAYSAPPLEPROC)                               (GLsizei n, GLuint* arrays);
typedef GLboolean        (APIENTRY* EXDLGLISVERTEXARRAYAPPLEPROC)                                 (GLuint array);
/* GL_APPLE_vertex_array_range */
typedef void             (APIENTRY* EXDLGLVERTEXARRAYRANGEAPPLEPROC)                              (GLsizei length, GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLFLUSHVERTEXARRAYRANGEAPPLEPROC)                         (GLsizei length, GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLVERTEXARRAYPARAMETERIAPPLEPROC)                         (GLenum pname, GLint param);
/* GL_APPLE_ycbcr_422 */
/* GL_S3_s3tc */
/* GL_ATI_draw_buffers */
typedef void             (APIENTRY* EXDLGLDRAWBUFFERSATIPROC)                                     (GLsizei n, const GLenum* bufs);
/* GL_ATI_pixel_format_float */
/* GL_ATI_texture_env_combine3 */
/* GL_ATI_texture_float */
/* GL_NV_float_buffer */
/* GL_NV_fragment_program */
typedef void             (APIENTRY* EXDLGLPROGRAMNAMEDPARAMETER4FNVPROC)                          (GLuint id, GLsizei len, const GLubyte* name, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLPROGRAMNAMEDPARAMETER4DNVPROC)                          (GLuint id, GLsizei len, const GLubyte* name, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLPROGRAMNAMEDPARAMETER4FVNVPROC)                         (GLuint id, GLsizei len, const GLubyte* name, const GLfloat* v);
typedef void             (APIENTRY* EXDLGLPROGRAMNAMEDPARAMETER4DVNVPROC)                         (GLuint id, GLsizei len, const GLubyte* name, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLGETPROGRAMNAMEDPARAMETERFVNVPROC)                       (GLuint id, GLsizei len, const GLubyte* name, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMNAMEDPARAMETERDVNVPROC)                       (GLuint id, GLsizei len, const GLubyte* name, GLdouble* params);
/* GL_NV_half_float */
typedef void             (APIENTRY* EXDLGLVERTEX2HNVPROC)                                         (GLhalfNV x, GLhalfNV y);
typedef void             (APIENTRY* EXDLGLVERTEX2HVNVPROC)                                        (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLVERTEX3HNVPROC)                                         (GLhalfNV x, GLhalfNV y, GLhalfNV z);
typedef void             (APIENTRY* EXDLGLVERTEX3HVNVPROC)                                        (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLVERTEX4HNVPROC)                                         (GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
typedef void             (APIENTRY* EXDLGLVERTEX4HVNVPROC)                                        (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLNORMAL3HNVPROC)                                         (GLhalfNV nx, GLhalfNV ny, GLhalfNV nz);
typedef void             (APIENTRY* EXDLGLNORMAL3HVNVPROC)                                        (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLCOLOR3HNVPROC)                                          (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
typedef void             (APIENTRY* EXDLGLCOLOR3HVNVPROC)                                         (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLCOLOR4HNVPROC)                                          (GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha);
typedef void             (APIENTRY* EXDLGLCOLOR4HVNVPROC)                                         (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD1HNVPROC)                                       (GLhalfNV s);
typedef void             (APIENTRY* EXDLGLTEXCOORD1HVNVPROC)                                      (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD2HNVPROC)                                       (GLhalfNV s, GLhalfNV t);
typedef void             (APIENTRY* EXDLGLTEXCOORD2HVNVPROC)                                      (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD3HNVPROC)                                       (GLhalfNV s, GLhalfNV t, GLhalfNV r);
typedef void             (APIENTRY* EXDLGLTEXCOORD3HVNVPROC)                                      (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLTEXCOORD4HNVPROC)                                       (GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
typedef void             (APIENTRY* EXDLGLTEXCOORD4HVNVPROC)                                      (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1HNVPROC)                                  (GLenum target, GLhalfNV s);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD1HVNVPROC)                                 (GLenum target, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2HNVPROC)                                  (GLenum target, GLhalfNV s, GLhalfNV t);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD2HVNVPROC)                                 (GLenum target, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3HNVPROC)                                  (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD3HVNVPROC)                                 (GLenum target, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4HNVPROC)                                  (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORD4HVNVPROC)                                 (GLenum target, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLFOGCOORDHNVPROC)                                        (GLhalfNV fog);
typedef void             (APIENTRY* EXDLGLFOGCOORDHVNVPROC)                                       (const GLhalfNV* fog);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3HNVPROC)                                 (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLOR3HVNVPROC)                                (const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLVERTEXWEIGHTHNVPROC)                                    (GLhalfNV weight);
typedef void             (APIENTRY* EXDLGLVERTEXWEIGHTHVNVPROC)                                   (const GLhalfNV* weight);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1HNVPROC)                                   (GLuint index, GLhalfNV x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB1HVNVPROC)                                  (GLuint index, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2HNVPROC)                                   (GLuint index, GLhalfNV x, GLhalfNV y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB2HVNVPROC)                                  (GLuint index, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3HNVPROC)                                   (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB3HVNVPROC)                                  (GLuint index, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4HNVPROC)                                   (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIB4HVNVPROC)                                  (GLuint index, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS1HVNVPROC)                                 (GLuint index, GLsizei n, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS2HVNVPROC)                                 (GLuint index, GLsizei n, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS3HVNVPROC)                                 (GLuint index, GLsizei n, const GLhalfNV* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBS4HVNVPROC)                                 (GLuint index, GLsizei n, const GLhalfNV* v);
/* GL_NV_pixel_data_range */
typedef void             (APIENTRY* EXDLGLPIXELDATARANGENVPROC)                                   (GLenum target, GLsizei length, GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLFLUSHPIXELDATARANGENVPROC)                              (GLenum target);
/* GL_NV_primitive_restart */
typedef void             (APIENTRY* EXDLGLPRIMITIVERESTARTNVPROC)                                 (void);
typedef void             (APIENTRY* EXDLGLPRIMITIVERESTARTINDEXNVPROC)                            (GLuint index);
/* GL_NV_texture_expand_normal */
/* GL_NV_vertex_program2 */
/* GL_ATI_map_object_buffer */
typedef GLvoid*          (APIENTRY* EXDLGLMAPOBJECTBUFFERATIPROC)                                 (GLuint buffer);
typedef void             (APIENTRY* EXDLGLUNMAPOBJECTBUFFERATIPROC)                               (GLuint buffer);
/* GL_ATI_separate_stencil */
typedef void             (APIENTRY* EXDLGLSTENCILOPSEPARATEATIPROC)                               (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
typedef void             (APIENTRY* EXDLGLSTENCILFUNCSEPARATEATIPROC)                             (GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask);
/* GL_ATI_vertex_attrib_array_object */
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBARRAYOBJECTATIPROC)                         (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC)                    (GLuint index, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC)                    (GLuint index, GLenum pname, GLint* params);
/* GL_OES_read_format */
/* GL_EXT_depth_bounds_test */
typedef void             (APIENTRY* EXDLGLDEPTHBOUNDSEXTPROC)                                     (GLclampd zmin, GLclampd zmax);
/* GL_EXT_texture_mirror_clamp */
/* GL_EXT_blend_equation_separate */
typedef void             (APIENTRY* EXDLGLBLENDEQUATIONSEPARATEEXTPROC)                           (GLenum modeRGB, GLenum modeAlpha);
/* GL_MESA_pack_invert */
/* GL_MESA_ycbcr_texture */
/* GL_EXT_pixel_buffer_object */
/* GL_NV_fragment_program_option */
/* GL_NV_fragment_program2 */
/* GL_NV_vertex_program2_option */
/* GL_NV_vertex_program3 */
/* GL_EXT_framebuffer_object */
typedef GLboolean        (APIENTRY* EXDLGLISRENDERBUFFEREXTPROC)                                  (GLuint renderbuffer);
typedef void             (APIENTRY* EXDLGLBINDRENDERBUFFEREXTPROC)                                (GLenum target, GLuint renderbuffer);
typedef void             (APIENTRY* EXDLGLDELETERENDERBUFFERSEXTPROC)                             (GLsizei n, const GLuint* renderbuffers);
typedef void             (APIENTRY* EXDLGLGENRENDERBUFFERSEXTPROC)                                (GLsizei n, GLuint* renderbuffers);
typedef void             (APIENTRY* EXDLGLRENDERBUFFERSTORAGEEXTPROC)                             (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLGETRENDERBUFFERPARAMETERIVEXTPROC)                      (GLenum target, GLenum pname, GLint* params);
typedef GLboolean        (APIENTRY* EXDLGLISFRAMEBUFFEREXTPROC)                                   (GLuint framebuffer);
typedef void             (APIENTRY* EXDLGLBINDFRAMEBUFFEREXTPROC)                                 (GLenum target, GLuint framebuffer);
typedef void             (APIENTRY* EXDLGLDELETEFRAMEBUFFERSEXTPROC)                              (GLsizei n, const GLuint* framebuffers);
typedef void             (APIENTRY* EXDLGLGENFRAMEBUFFERSEXTPROC)                                 (GLsizei n, GLuint* framebuffers);
typedef GLenum           (APIENTRY* EXDLGLCHECKFRAMEBUFFERSTATUSEXTPROC)                          (GLenum target);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTURE1DEXTPROC)                            (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTURE2DEXTPROC)                            (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTURE3DEXTPROC)                            (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERRENDERBUFFEREXTPROC)                         (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
typedef void             (APIENTRY* EXDLGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC)             (GLenum target, GLenum attachment, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGENERATEMIPMAPEXTPROC)                                  (GLenum target);
/* GL_GREMEDY_string_marker */
typedef void             (APIENTRY* EXDLGLSTRINGMARKERGREMEDYPROC)                                (GLsizei len, const GLvoid* string);
/* GL_EXT_packed_depth_stencil */
/* GL_EXT_stencil_clear_tag */
typedef void             (APIENTRY* EXDLGLSTENCILCLEARTAGEXTPROC)                                 (GLsizei stencilTagBits, GLuint stencilClearTag);
/* GL_EXT_texture_sRGB */
/* GL_EXT_framebuffer_blit */
typedef void             (APIENTRY* EXDLGLBLITFRAMEBUFFEREXTPROC)                                 (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
/* GL_EXT_framebuffer_multisample */
typedef void             (APIENTRY* EXDLGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC)                  (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
/* GL_MESAX_texture_stack */
/* GL_EXT_timer_query */
typedef void             (APIENTRY* EXDLGLGETQUERYOBJECTI64VEXTPROC)                              (GLuint id, GLenum pname, GLint64EXT* params);
typedef void             (APIENTRY* EXDLGLGETQUERYOBJECTUI64VEXTPROC)                             (GLuint id, GLenum pname, GLuint64EXT* params);
/* GL_EXT_gpu_program_parameters */
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETERS4FVEXTPROC)                         (GLenum target, GLuint index, GLsizei count, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETERS4FVEXTPROC)                       (GLenum target, GLuint index, GLsizei count, const GLfloat* params);
/* GL_APPLE_flush_buffer_range */
typedef void             (APIENTRY* EXDLGLBUFFERPARAMETERIAPPLEPROC)                              (GLenum target, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC)                        (GLenum target, GLintptr offset, GLsizeiptr size);
/* GL_NV_gpu_program4 */
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETERI4INVPROC)                         (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETERI4IVNVPROC)                        (GLenum target, GLuint index, const GLint* params);
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETERSI4IVNVPROC)                       (GLenum target, GLuint index, GLsizei count, const GLint* params);
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETERI4UINVPROC)                        (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETERI4UIVNVPROC)                       (GLenum target, GLuint index, const GLuint* params);
typedef void             (APIENTRY* EXDLGLPROGRAMLOCALPARAMETERSI4UIVNVPROC)                      (GLenum target, GLuint index, GLsizei count, const GLuint* params);
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETERI4INVPROC)                           (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETERI4IVNVPROC)                          (GLenum target, GLuint index, const GLint* params);
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETERSI4IVNVPROC)                         (GLenum target, GLuint index, GLsizei count, const GLint* params);
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETERI4UINVPROC)                          (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETERI4UIVNVPROC)                         (GLenum target, GLuint index, const GLuint* params);
typedef void             (APIENTRY* EXDLGLPROGRAMENVPARAMETERSI4UIVNVPROC)                        (GLenum target, GLuint index, GLsizei count, const GLuint* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMLOCALPARAMETERIIVNVPROC)                      (GLenum target, GLuint index, GLint* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMLOCALPARAMETERIUIVNVPROC)                     (GLenum target, GLuint index, GLuint* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMENVPARAMETERIIVNVPROC)                        (GLenum target, GLuint index, GLint* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMENVPARAMETERIUIVNVPROC)                       (GLenum target, GLuint index, GLuint* params);
/* GL_NV_geometry_program4 */
typedef void             (APIENTRY* EXDLGLPROGRAMVERTEXLIMITNVPROC)                               (GLenum target, GLint limit);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTUREEXTPROC)                              (GLenum target, GLenum attachment, GLuint texture, GLint level);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTURELAYEREXTPROC)                         (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERTEXTUREFACEEXTPROC)                          (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);
/* GL_EXT_geometry_shader4 */
typedef void             (APIENTRY* EXDLGLPROGRAMPARAMETERIEXTPROC)                               (GLuint program, GLenum pname, GLint value);
/* GL_NV_vertex_program4 */
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI1IEXTPROC)                                 (GLuint index, GLint x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI2IEXTPROC)                                 (GLuint index, GLint x, GLint y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI3IEXTPROC)                                 (GLuint index, GLint x, GLint y, GLint z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4IEXTPROC)                                 (GLuint index, GLint x, GLint y, GLint z, GLint w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI1UIEXTPROC)                                (GLuint index, GLuint x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI2UIEXTPROC)                                (GLuint index, GLuint x, GLuint y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI3UIEXTPROC)                                (GLuint index, GLuint x, GLuint y, GLuint z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4UIEXTPROC)                                (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI1IVEXTPROC)                                (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI2IVEXTPROC)                                (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI3IVEXTPROC)                                (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4IVEXTPROC)                                (GLuint index, const GLint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI1UIVEXTPROC)                               (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI2UIVEXTPROC)                               (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI3UIVEXTPROC)                               (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4UIVEXTPROC)                               (GLuint index, const GLuint* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4BVEXTPROC)                                (GLuint index, const GLbyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4SVEXTPROC)                                (GLuint index, const GLshort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4UBVEXTPROC)                               (GLuint index, const GLubyte* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBI4USVEXTPROC)                               (GLuint index, const GLushort* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBIPOINTEREXTPROC)                            (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBIIVEXTPROC)                              (GLuint index, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBIUIVEXTPROC)                             (GLuint index, GLenum pname, GLuint* params);
/* GL_EXT_gpu_shader4 */
typedef void             (APIENTRY* EXDLGLGETUNIFORMUIVEXTPROC)                                   (GLuint program, GLint location, GLuint* params);
typedef void             (APIENTRY* EXDLGLBINDFRAGDATALOCATIONEXTPROC)                            (GLuint program, GLuint color, const GLchar* name);
typedef GLint            (APIENTRY* EXDLGLGETFRAGDATALOCATIONEXTPROC)                             (GLuint program, const GLchar* name);
typedef void             (APIENTRY* EXDLGLUNIFORM1UIEXTPROC)                                      (GLint location, GLuint v0);
typedef void             (APIENTRY* EXDLGLUNIFORM2UIEXTPROC)                                      (GLint location, GLuint v0, GLuint v1);
typedef void             (APIENTRY* EXDLGLUNIFORM3UIEXTPROC)                                      (GLint location, GLuint v0, GLuint v1, GLuint v2);
typedef void             (APIENTRY* EXDLGLUNIFORM4UIEXTPROC)                                      (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
typedef void             (APIENTRY* EXDLGLUNIFORM1UIVEXTPROC)                                     (GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM2UIVEXTPROC)                                     (GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM3UIVEXTPROC)                                     (GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLUNIFORM4UIVEXTPROC)                                     (GLint location, GLsizei count, const GLuint* value);
/* GL_EXT_draw_instanced */
typedef void             (APIENTRY* EXDLGLDRAWARRAYSINSTANCEDEXTPROC)                             (GLenum mode, GLint start, GLsizei count, GLsizei primcount);
typedef void             (APIENTRY* EXDLGLDRAWELEMENTSINSTANCEDEXTPROC)                           (GLenum mode, GLsizei count, GLenum type, const GLvoid* indices, GLsizei primcount);
/* GL_EXT_packed_float */
/* GL_EXT_texture_array */
/* GL_EXT_texture_buffer_object */
typedef void             (APIENTRY* EXDLGLTEXBUFFEREXTPROC)                                       (GLenum target, GLenum internalformat, GLuint buffer);
/* GL_EXT_texture_compression_latc */
/* GL_EXT_texture_compression_rgtc */
/* GL_EXT_texture_shared_exponent */
/* GL_NV_depth_buffer_float */
typedef void             (APIENTRY* EXDLGLDEPTHRANGEDNVPROC)                                      (GLdouble zNear, GLdouble zFar);
typedef void             (APIENTRY* EXDLGLCLEARDEPTHDNVPROC)                                      (GLdouble depth);
typedef void             (APIENTRY* EXDLGLDEPTHBOUNDSDNVPROC)                                     (GLdouble zmin, GLdouble zmax);
/* GL_NV_fragment_program4 */
/* GL_NV_framebuffer_multisample_coverage */
typedef void             (APIENTRY* EXDLGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC)           (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
/* GL_EXT_framebuffer_sRGB */
/* GL_NV_geometry_shader4 */
/* GL_NV_parameter_buffer_object */
typedef void             (APIENTRY* EXDLGLPROGRAMBUFFERPARAMETERSFVNVPROC)                        (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLPROGRAMBUFFERPARAMETERSIIVNVPROC)                       (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLint* params);
typedef void             (APIENTRY* EXDLGLPROGRAMBUFFERPARAMETERSIUIVNVPROC)                      (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLuint* params);
/* GL_EXT_draw_buffers2 */
typedef void             (APIENTRY* EXDLGLCOLORMASKINDEXEDEXTPROC)                                (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
typedef void             (APIENTRY* EXDLGLGETBOOLEANINDEXEDVEXTPROC)                              (GLenum target, GLuint index, GLboolean* data);
typedef void             (APIENTRY* EXDLGLGETINTEGERINDEXEDVEXTPROC)                              (GLenum target, GLuint index, GLint* data);
typedef void             (APIENTRY* EXDLGLENABLEINDEXEDEXTPROC)                                   (GLenum target, GLuint index);
typedef void             (APIENTRY* EXDLGLDISABLEINDEXEDEXTPROC)                                  (GLenum target, GLuint index);
typedef GLboolean        (APIENTRY* EXDLGLISENABLEDINDEXEDEXTPROC)                                (GLenum target, GLuint index);
/* GL_NV_transform_feedback */
typedef void             (APIENTRY* EXDLGLBEGINTRANSFORMFEEDBACKNVPROC)                           (GLenum primitiveMode);
typedef void             (APIENTRY* EXDLGLENDTRANSFORMFEEDBACKNVPROC)                             (void);
typedef void             (APIENTRY* EXDLGLTRANSFORMFEEDBACKATTRIBSNVPROC)                         (GLuint count, const GLint* attribs, GLenum bufferMode);
typedef void             (APIENTRY* EXDLGLBINDBUFFERRANGENVPROC)                                  (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
typedef void             (APIENTRY* EXDLGLBINDBUFFEROFFSETNVPROC)                                 (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
typedef void             (APIENTRY* EXDLGLBINDBUFFERBASENVPROC)                                   (GLenum target, GLuint index, GLuint buffer);
typedef void             (APIENTRY* EXDLGLTRANSFORMFEEDBACKVARYINGSNVPROC)                        (GLuint program, GLsizei count, const GLint* locations, GLenum bufferMode);
typedef void             (APIENTRY* EXDLGLACTIVEVARYINGNVPROC)                                    (GLuint program, const GLchar* name);
typedef GLint            (APIENTRY* EXDLGLGETVARYINGLOCATIONNVPROC)                               (GLuint program, const GLchar* name);
typedef void             (APIENTRY* EXDLGLGETACTIVEVARYINGNVPROC)                                 (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);
typedef void             (APIENTRY* EXDLGLGETTRANSFORMFEEDBACKVARYINGNVPROC)                      (GLuint program, GLuint index, GLint* location);
typedef void             (APIENTRY* EXDLGLTRANSFORMFEEDBACKSTREAMATTRIBSNVPROC)                   (GLsizei count, const GLint* attribs, GLsizei nbuffers, const GLint* bufstreams, GLenum bufferMode);
/* GL_EXT_bindable_uniform */
typedef void             (APIENTRY* EXDLGLUNIFORMBUFFEREXTPROC)                                   (GLuint program, GLint location, GLuint buffer);
typedef GLint            (APIENTRY* EXDLGLGETUNIFORMBUFFERSIZEEXTPROC)                            (GLuint program, GLint location);
typedef GLintptr         (APIENTRY* EXDLGLGETUNIFORMOFFSETEXTPROC)                                (GLuint program, GLint location);
/* GL_EXT_texture_integer */
typedef void             (APIENTRY* EXDLGLTEXPARAMETERIIVEXTPROC)                                 (GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLTEXPARAMETERIUIVEXTPROC)                                (GLenum target, GLenum pname, const GLuint* params);
typedef void             (APIENTRY* EXDLGLGETTEXPARAMETERIIVEXTPROC)                              (GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETTEXPARAMETERIUIVEXTPROC)                             (GLenum target, GLenum pname, GLuint* params);
typedef void             (APIENTRY* EXDLGLCLEARCOLORIIEXTPROC)                                    (GLint red, GLint green, GLint blue, GLint alpha);
typedef void             (APIENTRY* EXDLGLCLEARCOLORIUIEXTPROC)                                   (GLuint red, GLuint green, GLuint blue, GLuint alpha);
/* GL_GREMEDY_frame_terminator */
typedef void             (APIENTRY* EXDLGLFRAMETERMINATORGREMEDYPROC)                             (void);
/* GL_NV_conditional_render */
typedef void             (APIENTRY* EXDLGLBEGINCONDITIONALRENDERNVPROC)                           (GLuint id, GLenum mode);
typedef void             (APIENTRY* EXDLGLENDCONDITIONALRENDERNVPROC)                             (void);
/* GL_NV_present_video */
typedef void             (APIENTRY* EXDLGLPRESENTFRAMEKEYEDNVPROC)                                (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1);
typedef void             (APIENTRY* EXDLGLPRESENTFRAMEDUALFILLNVPROC)                             (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3);
typedef void             (APIENTRY* EXDLGLGETVIDEOIVNVPROC)                                       (GLuint video_slot, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETVIDEOUIVNVPROC)                                      (GLuint video_slot, GLenum pname, GLuint* params);
typedef void             (APIENTRY* EXDLGLGETVIDEOI64VNVPROC)                                     (GLuint video_slot, GLenum pname, GLint64EXT* params);
typedef void             (APIENTRY* EXDLGLGETVIDEOUI64VNVPROC)                                    (GLuint video_slot, GLenum pname, GLuint64EXT* params);
typedef void             (APIENTRY* EXDLGLVIDEOPARAMETERIVNVPROC)                                 (GLuint video_slot, GLenum pname, const GLint* params);
/* GL_EXT_transform_feedback */
typedef void             (APIENTRY* EXDLGLBEGINTRANSFORMFEEDBACKEXTPROC)                          (GLenum primitiveMode);
typedef void             (APIENTRY* EXDLGLENDTRANSFORMFEEDBACKEXTPROC)                            (void);
typedef void             (APIENTRY* EXDLGLBINDBUFFERRANGEEXTPROC)                                 (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
typedef void             (APIENTRY* EXDLGLBINDBUFFEROFFSETEXTPROC)                                (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
typedef void             (APIENTRY* EXDLGLBINDBUFFERBASEEXTPROC)                                  (GLenum target, GLuint index, GLuint buffer);
typedef void             (APIENTRY* EXDLGLTRANSFORMFEEDBACKVARYINGSEXTPROC)                       (GLuint program, GLsizei count, const GLchar** varyings, GLenum bufferMode);
typedef void             (APIENTRY* EXDLGLGETTRANSFORMFEEDBACKVARYINGEXTPROC)                     (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);
/* GL_EXT_direct_state_access */
typedef void             (APIENTRY* EXDLGLCLIENTATTRIBDEFAULTEXTPROC)                             (GLbitfield mask);
typedef void             (APIENTRY* EXDLGLPUSHCLIENTATTRIBDEFAULTEXTPROC)                         (GLbitfield mask);
typedef void             (APIENTRY* EXDLGLMATRIXLOADFEXTPROC)                                     (GLenum mode, const GLfloat* m);
typedef void             (APIENTRY* EXDLGLMATRIXLOADDEXTPROC)                                     (GLenum mode, const GLdouble* m);
typedef void             (APIENTRY* EXDLGLMATRIXMULTFEXTPROC)                                     (GLenum mode, const GLfloat* m);
typedef void             (APIENTRY* EXDLGLMATRIXMULTDEXTPROC)                                     (GLenum mode, const GLdouble* m);
typedef void             (APIENTRY* EXDLGLMATRIXLOADIDENTITYEXTPROC)                              (GLenum mode);
typedef void             (APIENTRY* EXDLGLMATRIXROTATEFEXTPROC)                                   (GLenum mode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLMATRIXROTATEDEXTPROC)                                   (GLenum mode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLMATRIXSCALEFEXTPROC)                                    (GLenum mode, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLMATRIXSCALEDEXTPROC)                                    (GLenum mode, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLMATRIXTRANSLATEFEXTPROC)                                (GLenum mode, GLfloat x, GLfloat y, GLfloat z);
typedef void             (APIENTRY* EXDLGLMATRIXTRANSLATEDEXTPROC)                                (GLenum mode, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLMATRIXFRUSTUMEXTPROC)                                   (GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
typedef void             (APIENTRY* EXDLGLMATRIXORTHOEXTPROC)                                     (GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
typedef void             (APIENTRY* EXDLGLMATRIXPOPEXTPROC)                                       (GLenum mode);
typedef void             (APIENTRY* EXDLGLMATRIXPUSHEXTPROC)                                      (GLenum mode);
typedef void             (APIENTRY* EXDLGLMATRIXLOADTRANSPOSEFEXTPROC)                            (GLenum mode, const GLfloat* m);
typedef void             (APIENTRY* EXDLGLMATRIXLOADTRANSPOSEDEXTPROC)                            (GLenum mode, const GLdouble* m);
typedef void             (APIENTRY* EXDLGLMATRIXMULTTRANSPOSEFEXTPROC)                            (GLenum mode, const GLfloat* m);
typedef void             (APIENTRY* EXDLGLMATRIXMULTTRANSPOSEDEXTPROC)                            (GLenum mode, const GLdouble* m);
typedef void             (APIENTRY* EXDLGLTEXTUREPARAMETERFEXTPROC)                               (GLuint texture, GLenum target, GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLTEXTUREPARAMETERFVEXTPROC)                              (GLuint texture, GLenum target, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLTEXTUREPARAMETERIEXTPROC)                               (GLuint texture, GLenum target, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLTEXTUREPARAMETERIVEXTPROC)                              (GLuint texture, GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLTEXTUREIMAGE1DEXTPROC)                                  (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLTEXTUREIMAGE2DEXTPROC)                                  (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLTEXTURESUBIMAGE1DEXTPROC)                               (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLTEXTURESUBIMAGE2DEXTPROC)                               (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLCOPYTEXTUREIMAGE1DEXTPROC)                              (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
typedef void             (APIENTRY* EXDLGLCOPYTEXTUREIMAGE2DEXTPROC)                              (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
typedef void             (APIENTRY* EXDLGLCOPYTEXTURESUBIMAGE1DEXTPROC)                           (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
typedef void             (APIENTRY* EXDLGLCOPYTEXTURESUBIMAGE2DEXTPROC)                           (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLGETTEXTUREIMAGEEXTPROC)                                 (GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLGETTEXTUREPARAMETERFVEXTPROC)                           (GLuint texture, GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETTEXTUREPARAMETERIVEXTPROC)                           (GLuint texture, GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETTEXTURELEVELPARAMETERFVEXTPROC)                      (GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETTEXTURELEVELPARAMETERIVEXTPROC)                      (GLuint texture, GLenum target, GLint level, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLTEXTUREIMAGE3DEXTPROC)                                  (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLTEXTURESUBIMAGE3DEXTPROC)                               (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLCOPYTEXTURESUBIMAGE3DEXTPROC)                           (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLMULTITEXPARAMETERFEXTPROC)                              (GLenum texunit, GLenum target, GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLMULTITEXPARAMETERFVEXTPROC)                             (GLenum texunit, GLenum target, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLMULTITEXPARAMETERIEXTPROC)                              (GLenum texunit, GLenum target, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLMULTITEXPARAMETERIVEXTPROC)                             (GLenum texunit, GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLMULTITEXIMAGE1DEXTPROC)                                 (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLMULTITEXIMAGE2DEXTPROC)                                 (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLMULTITEXSUBIMAGE1DEXTPROC)                              (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLMULTITEXSUBIMAGE2DEXTPROC)                              (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLCOPYMULTITEXIMAGE1DEXTPROC)                             (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
typedef void             (APIENTRY* EXDLGLCOPYMULTITEXIMAGE2DEXTPROC)                             (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
typedef void             (APIENTRY* EXDLGLCOPYMULTITEXSUBIMAGE1DEXTPROC)                          (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
typedef void             (APIENTRY* EXDLGLCOPYMULTITEXSUBIMAGE2DEXTPROC)                          (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLGETMULTITEXIMAGEEXTPROC)                                (GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLGETMULTITEXPARAMETERFVEXTPROC)                          (GLenum texunit, GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETMULTITEXPARAMETERIVEXTPROC)                          (GLenum texunit, GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETMULTITEXLEVELPARAMETERFVEXTPROC)                     (GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETMULTITEXLEVELPARAMETERIVEXTPROC)                     (GLenum texunit, GLenum target, GLint level, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLMULTITEXIMAGE3DEXTPROC)                                 (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLMULTITEXSUBIMAGE3DEXTPROC)                              (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid* pixels);
typedef void             (APIENTRY* EXDLGLCOPYMULTITEXSUBIMAGE3DEXTPROC)                          (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLBINDMULTITEXTUREEXTPROC)                                (GLenum texunit, GLenum target, GLuint texture);
typedef void             (APIENTRY* EXDLGLENABLECLIENTSTATEINDEXEDEXTPROC)                        (GLenum array, GLuint index);
typedef void             (APIENTRY* EXDLGLDISABLECLIENTSTATEINDEXEDEXTPROC)                       (GLenum array, GLuint index);
typedef void             (APIENTRY* EXDLGLMULTITEXCOORDPOINTEREXTPROC)                            (GLenum texunit, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLMULTITEXENVFEXTPROC)                                    (GLenum texunit, GLenum target, GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLMULTITEXENVFVEXTPROC)                                   (GLenum texunit, GLenum target, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLMULTITEXENVIEXTPROC)                                    (GLenum texunit, GLenum target, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLMULTITEXENVIVEXTPROC)                                   (GLenum texunit, GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLMULTITEXGENDEXTPROC)                                    (GLenum texunit, GLenum coord, GLenum pname, GLdouble param);
typedef void             (APIENTRY* EXDLGLMULTITEXGENDVEXTPROC)                                   (GLenum texunit, GLenum coord, GLenum pname, const GLdouble* params);
typedef void             (APIENTRY* EXDLGLMULTITEXGENFEXTPROC)                                    (GLenum texunit, GLenum coord, GLenum pname, GLfloat param);
typedef void             (APIENTRY* EXDLGLMULTITEXGENFVEXTPROC)                                   (GLenum texunit, GLenum coord, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLMULTITEXGENIEXTPROC)                                    (GLenum texunit, GLenum coord, GLenum pname, GLint param);
typedef void             (APIENTRY* EXDLGLMULTITEXGENIVEXTPROC)                                   (GLenum texunit, GLenum coord, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLGETMULTITEXENVFVEXTPROC)                                (GLenum texunit, GLenum target, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETMULTITEXENVIVEXTPROC)                                (GLenum texunit, GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETMULTITEXGENDVEXTPROC)                                (GLenum texunit, GLenum coord, GLenum pname, GLdouble* params);
typedef void             (APIENTRY* EXDLGLGETMULTITEXGENFVEXTPROC)                                (GLenum texunit, GLenum coord, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETMULTITEXGENIVEXTPROC)                                (GLenum texunit, GLenum coord, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETFLOATINDEXEDVEXTPROC)                                (GLenum target, GLuint index, GLfloat* data);
typedef void             (APIENTRY* EXDLGLGETDOUBLEINDEXEDVEXTPROC)                               (GLenum target, GLuint index, GLdouble* data);
typedef void             (APIENTRY* EXDLGLGETPOINTERINDEXEDVEXTPROC)                              (GLenum target, GLuint index, GLvoid** data);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXTUREIMAGE3DEXTPROC)                        (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXTUREIMAGE2DEXTPROC)                        (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXTUREIMAGE1DEXTPROC)                        (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXTURESUBIMAGE3DEXTPROC)                     (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXTURESUBIMAGE2DEXTPROC)                     (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDTEXTURESUBIMAGE1DEXTPROC)                     (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLGETCOMPRESSEDTEXTUREIMAGEEXTPROC)                       (GLuint texture, GLenum target, GLint lod, GLvoid* img);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDMULTITEXIMAGE3DEXTPROC)                       (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDMULTITEXIMAGE2DEXTPROC)                       (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDMULTITEXIMAGE1DEXTPROC)                       (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDMULTITEXSUBIMAGE3DEXTPROC)                    (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDMULTITEXSUBIMAGE2DEXTPROC)                    (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLCOMPRESSEDMULTITEXSUBIMAGE1DEXTPROC)                    (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid* bits);
typedef void             (APIENTRY* EXDLGLGETCOMPRESSEDMULTITEXIMAGEEXTPROC)                      (GLenum texunit, GLenum target, GLint lod, GLvoid* img);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMSTRINGEXTPROC)                              (GLuint program, GLenum target, GLenum format, GLsizei len, const GLvoid* string);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETER4DEXTPROC)                    (GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETER4DVEXTPROC)                   (GLuint program, GLenum target, GLuint index, const GLdouble* params);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETER4FEXTPROC)                    (GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETER4FVEXTPROC)                   (GLuint program, GLenum target, GLuint index, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETNAMEDPROGRAMLOCALPARAMETERDVEXTPROC)                 (GLuint program, GLenum target, GLuint index, GLdouble* params);
typedef void             (APIENTRY* EXDLGLGETNAMEDPROGRAMLOCALPARAMETERFVEXTPROC)                 (GLuint program, GLenum target, GLuint index, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETNAMEDPROGRAMIVEXTPROC)                               (GLuint program, GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETNAMEDPROGRAMSTRINGEXTPROC)                           (GLuint program, GLenum target, GLenum pname, GLvoid* string);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETERS4FVEXTPROC)                  (GLuint program, GLenum target, GLuint index, GLsizei count, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETERI4IEXTPROC)                   (GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETERI4IVEXTPROC)                  (GLuint program, GLenum target, GLuint index, const GLint* params);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETERSI4IVEXTPROC)                 (GLuint program, GLenum target, GLuint index, GLsizei count, const GLint* params);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETERI4UIEXTPROC)                  (GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETERI4UIVEXTPROC)                 (GLuint program, GLenum target, GLuint index, const GLuint* params);
typedef void             (APIENTRY* EXDLGLNAMEDPROGRAMLOCALPARAMETERSI4UIVEXTPROC)                (GLuint program, GLenum target, GLuint index, GLsizei count, const GLuint* params);
typedef void             (APIENTRY* EXDLGLGETNAMEDPROGRAMLOCALPARAMETERIIVEXTPROC)                (GLuint program, GLenum target, GLuint index, GLint* params);
typedef void             (APIENTRY* EXDLGLGETNAMEDPROGRAMLOCALPARAMETERIUIVEXTPROC)               (GLuint program, GLenum target, GLuint index, GLuint* params);
typedef void             (APIENTRY* EXDLGLTEXTUREPARAMETERIIVEXTPROC)                             (GLuint texture, GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLTEXTUREPARAMETERIUIVEXTPROC)                            (GLuint texture, GLenum target, GLenum pname, const GLuint* params);
typedef void             (APIENTRY* EXDLGLGETTEXTUREPARAMETERIIVEXTPROC)                          (GLuint texture, GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETTEXTUREPARAMETERIUIVEXTPROC)                         (GLuint texture, GLenum target, GLenum pname, GLuint* params);
typedef void             (APIENTRY* EXDLGLMULTITEXPARAMETERIIVEXTPROC)                            (GLenum texunit, GLenum target, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLMULTITEXPARAMETERIUIVEXTPROC)                           (GLenum texunit, GLenum target, GLenum pname, const GLuint* params);
typedef void             (APIENTRY* EXDLGLGETMULTITEXPARAMETERIIVEXTPROC)                         (GLenum texunit, GLenum target, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETMULTITEXPARAMETERIUIVEXTPROC)                        (GLenum texunit, GLenum target, GLenum pname, GLuint* params);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1FEXTPROC)                                (GLuint program, GLint location, GLfloat v0);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2FEXTPROC)                                (GLuint program, GLint location, GLfloat v0, GLfloat v1);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3FEXTPROC)                                (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4FEXTPROC)                                (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1IEXTPROC)                                (GLuint program, GLint location, GLint v0);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2IEXTPROC)                                (GLuint program, GLint location, GLint v0, GLint v1);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3IEXTPROC)                                (GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4IEXTPROC)                                (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1FVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2FVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3FVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4FVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1IVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2IVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3IVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4IVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2FVEXTPROC)                         (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3FVEXTPROC)                         (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4FVEXTPROC)                         (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2X3FVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3X2FVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2X4FVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4X2FVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3X4FVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4X3FVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1UIEXTPROC)                               (GLuint program, GLint location, GLuint v0);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2UIEXTPROC)                               (GLuint program, GLint location, GLuint v0, GLuint v1);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3UIEXTPROC)                               (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4UIEXTPROC)                               (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1UIVEXTPROC)                              (GLuint program, GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2UIVEXTPROC)                              (GLuint program, GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3UIVEXTPROC)                              (GLuint program, GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4UIVEXTPROC)                              (GLuint program, GLint location, GLsizei count, const GLuint* value);
typedef void             (APIENTRY* EXDLGLNAMEDBUFFERDATAEXTPROC)                                 (GLuint buffer, GLsizeiptr size, const GLvoid* data, GLenum usage);
typedef void             (APIENTRY* EXDLGLNAMEDBUFFERSUBDATAEXTPROC)                              (GLuint buffer, GLintptr offset, GLsizeiptr size, const GLvoid* data);
typedef GLvoid*          (APIENTRY* EXDLGLMAPNAMEDBUFFEREXTPROC)                                  (GLuint buffer, GLenum access);
typedef GLboolean        (APIENTRY* EXDLGLUNMAPNAMEDBUFFEREXTPROC)                                (GLuint buffer);
typedef GLvoid*          (APIENTRY* EXDLGLMAPNAMEDBUFFERRANGEEXTPROC)                             (GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access);
typedef void             (APIENTRY* EXDLGLFLUSHMAPPEDNAMEDBUFFERRANGEEXTPROC)                     (GLuint buffer, GLintptr offset, GLsizeiptr length);
typedef void             (APIENTRY* EXDLGLNAMEDCOPYBUFFERSUBDATAEXTPROC)                          (GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
typedef void             (APIENTRY* EXDLGLGETNAMEDBUFFERPARAMETERIVEXTPROC)                       (GLuint buffer, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETNAMEDBUFFERPOINTERVEXTPROC)                          (GLuint buffer, GLenum pname, GLvoid** params);
typedef void             (APIENTRY* EXDLGLGETNAMEDBUFFERSUBDATAEXTPROC)                           (GLuint buffer, GLintptr offset, GLsizeiptr size, GLvoid* data);
typedef void             (APIENTRY* EXDLGLTEXTUREBUFFEREXTPROC)                                   (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer);
typedef void             (APIENTRY* EXDLGLMULTITEXBUFFEREXTPROC)                                  (GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer);
typedef void             (APIENTRY* EXDLGLNAMEDRENDERBUFFERSTORAGEEXTPROC)                        (GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLGETNAMEDRENDERBUFFERPARAMETERIVEXTPROC)                 (GLuint renderbuffer, GLenum pname, GLint* params);
typedef GLenum           (APIENTRY* EXDLGLCHECKNAMEDFRAMEBUFFERSTATUSEXTPROC)                     (GLuint framebuffer, GLenum target);
typedef void             (APIENTRY* EXDLGLNAMEDFRAMEBUFFERTEXTURE1DEXTPROC)                       (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
typedef void             (APIENTRY* EXDLGLNAMEDFRAMEBUFFERTEXTURE2DEXTPROC)                       (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
typedef void             (APIENTRY* EXDLGLNAMEDFRAMEBUFFERTEXTURE3DEXTPROC)                       (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
typedef void             (APIENTRY* EXDLGLNAMEDFRAMEBUFFERRENDERBUFFEREXTPROC)                    (GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
typedef void             (APIENTRY* EXDLGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC)        (GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGENERATETEXTUREMIPMAPEXTPROC)                           (GLuint texture, GLenum target);
typedef void             (APIENTRY* EXDLGLGENERATEMULTITEXMIPMAPEXTPROC)                          (GLenum texunit, GLenum target);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERDRAWBUFFEREXTPROC)                           (GLuint framebuffer, GLenum mode);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERDRAWBUFFERSEXTPROC)                          (GLuint framebuffer, GLsizei n, const GLenum* bufs);
typedef void             (APIENTRY* EXDLGLFRAMEBUFFERREADBUFFEREXTPROC)                           (GLuint framebuffer, GLenum mode);
typedef void             (APIENTRY* EXDLGLGETFRAMEBUFFERPARAMETERIVEXTPROC)                       (GLuint framebuffer, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC)             (GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLECOVERAGEEXTPROC)     (GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
typedef void             (APIENTRY* EXDLGLNAMEDFRAMEBUFFERTEXTUREEXTPROC)                         (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level);
typedef void             (APIENTRY* EXDLGLNAMEDFRAMEBUFFERTEXTURELAYEREXTPROC)                    (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer);
typedef void             (APIENTRY* EXDLGLNAMEDFRAMEBUFFERTEXTUREFACEEXTPROC)                     (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face);
typedef void             (APIENTRY* EXDLGLTEXTURERENDERBUFFEREXTPROC)                             (GLuint texture, GLenum target, GLuint renderbuffer);
typedef void             (APIENTRY* EXDLGLMULTITEXRENDERBUFFEREXTPROC)                            (GLenum texunit, GLenum target, GLuint renderbuffer);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1DEXTPROC)                                (GLuint program, GLint location, GLdouble x);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2DEXTPROC)                                (GLuint program, GLint location, GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3DEXTPROC)                                (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4DEXTPROC)                                (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1DVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2DVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3DVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4DVEXTPROC)                               (GLuint program, GLint location, GLsizei count, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2DVEXTPROC)                         (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3DVEXTPROC)                         (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4DVEXTPROC)                         (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2X3DVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX2X4DVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3X2DVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX3X4DVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4X2DVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMMATRIX4X3DVEXTPROC)                       (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
/* GL_EXT_vertex_array_bgra */
/* GL_EXT_texture_swizzle */
/* GL_NV_explicit_multisample */
typedef void             (APIENTRY* EXDLGLGETMULTISAMPLEFVNVPROC)                                 (GLenum pname, GLuint index, GLfloat* val);
typedef void             (APIENTRY* EXDLGLSAMPLEMASKINDEXEDNVPROC)                                (GLuint index, GLbitfield mask);
typedef void             (APIENTRY* EXDLGLTEXRENDERBUFFERNVPROC)                                  (GLenum target, GLuint renderbuffer);
/* GL_NV_transform_feedback2 */
typedef void             (APIENTRY* EXDLGLBINDTRANSFORMFEEDBACKNVPROC)                            (GLenum target, GLuint id);
typedef void             (APIENTRY* EXDLGLDELETETRANSFORMFEEDBACKSNVPROC)                         (GLsizei n, const GLuint* ids);
typedef void             (APIENTRY* EXDLGLGENTRANSFORMFEEDBACKSNVPROC)                            (GLsizei n, GLuint* ids);
typedef GLboolean        (APIENTRY* EXDLGLISTRANSFORMFEEDBACKNVPROC)                              (GLuint id);
typedef void             (APIENTRY* EXDLGLPAUSETRANSFORMFEEDBACKNVPROC)                           (void);
typedef void             (APIENTRY* EXDLGLRESUMETRANSFORMFEEDBACKNVPROC)                          (void);
typedef void             (APIENTRY* EXDLGLDRAWTRANSFORMFEEDBACKNVPROC)                            (GLenum mode, GLuint id);
/* GL_ATI_meminfo */
/* GL_AMD_performance_monitor */
typedef void             (APIENTRY* EXDLGLGETPERFMONITORGROUPSAMDPROC)                            (GLint* numGroups, GLsizei groupsSize, GLuint* groups);
typedef void             (APIENTRY* EXDLGLGETPERFMONITORCOUNTERSAMDPROC)                          (GLuint group, GLint* numCounters, GLint* maxActiveCounters, GLsizei counterSize, GLuint* counters);
typedef void             (APIENTRY* EXDLGLGETPERFMONITORGROUPSTRINGAMDPROC)                       (GLuint group, GLsizei bufSize, GLsizei* length, GLchar* groupString);
typedef void             (APIENTRY* EXDLGLGETPERFMONITORCOUNTERSTRINGAMDPROC)                     (GLuint group, GLuint counter, GLsizei bufSize, GLsizei* length, GLchar* counterString);
typedef void             (APIENTRY* EXDLGLGETPERFMONITORCOUNTERINFOAMDPROC)                       (GLuint group, GLuint counter, GLenum pname, GLvoid* data);
typedef void             (APIENTRY* EXDLGLGENPERFMONITORSAMDPROC)                                 (GLsizei n, GLuint* monitors);
typedef void             (APIENTRY* EXDLGLDELETEPERFMONITORSAMDPROC)                              (GLsizei n, GLuint* monitors);
typedef void             (APIENTRY* EXDLGLSELECTPERFMONITORCOUNTERSAMDPROC)                       (GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint* counterList);
typedef void             (APIENTRY* EXDLGLBEGINPERFMONITORAMDPROC)                                (GLuint monitor);
typedef void             (APIENTRY* EXDLGLENDPERFMONITORAMDPROC)                                  (GLuint monitor);
typedef void             (APIENTRY* EXDLGLGETPERFMONITORCOUNTERDATAAMDPROC)                       (GLuint monitor, GLenum pname, GLsizei dataSize, GLuint* data, GLint* bytesWritten);
/* GL_AMD_texture_texture4 */
/* GL_AMD_vertex_shader_tesselator */
typedef void             (APIENTRY* EXDLGLTESSELLATIONFACTORAMDPROC)                              (GLfloat factor);
typedef void             (APIENTRY* EXDLGLTESSELLATIONMODEAMDPROC)                                (GLenum mode);
/* GL_EXT_provoking_vertex */
typedef void             (APIENTRY* EXDLGLPROVOKINGVERTEXEXTPROC)                                 (GLenum mode);
/* GL_EXT_texture_snorm */
/* GL_AMD_draw_buffers_blend */
typedef void             (APIENTRY* EXDLGLBLENDFUNCINDEXEDAMDPROC)                                (GLuint buf, GLenum src, GLenum dst);
typedef void             (APIENTRY* EXDLGLBLENDFUNCSEPARATEINDEXEDAMDPROC)                        (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
typedef void             (APIENTRY* EXDLGLBLENDEQUATIONINDEXEDAMDPROC)                            (GLuint buf, GLenum mode);
typedef void             (APIENTRY* EXDLGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC)                    (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
/* GL_APPLE_texture_range */
typedef void             (APIENTRY* EXDLGLTEXTURERANGEAPPLEPROC)                                  (GLenum target, GLsizei length, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLGETTEXPARAMETERPOINTERVAPPLEPROC)                       (GLenum target, GLenum pname, GLvoid** params);
/* GL_APPLE_float_pixels */
/* GL_APPLE_vertex_program_evaluators */
typedef void             (APIENTRY* EXDLGLENABLEVERTEXATTRIBAPPLEPROC)                            (GLuint index, GLenum pname);
typedef void             (APIENTRY* EXDLGLDISABLEVERTEXATTRIBAPPLEPROC)                           (GLuint index, GLenum pname);
typedef GLboolean        (APIENTRY* EXDLGLISVERTEXATTRIBENABLEDAPPLEPROC)                         (GLuint index, GLenum pname);
typedef void             (APIENTRY* EXDLGLMAPVERTEXATTRIB1DAPPLEPROC)                             (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble* points);
typedef void             (APIENTRY* EXDLGLMAPVERTEXATTRIB1FAPPLEPROC)                             (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat* points);
typedef void             (APIENTRY* EXDLGLMAPVERTEXATTRIB2DAPPLEPROC)                             (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble* points);
typedef void             (APIENTRY* EXDLGLMAPVERTEXATTRIB2FAPPLEPROC)                             (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat* points);
/* GL_APPLE_aux_depth_stencil */
/* GL_APPLE_object_purgeable */
typedef GLenum           (APIENTRY* EXDLGLOBJECTPURGEABLEAPPLEPROC)                               (GLenum objectType, GLuint name, GLenum option);
typedef GLenum           (APIENTRY* EXDLGLOBJECTUNPURGEABLEAPPLEPROC)                             (GLenum objectType, GLuint name, GLenum option);
typedef void             (APIENTRY* EXDLGLGETOBJECTPARAMETERIVAPPLEPROC)                          (GLenum objectType, GLuint name, GLenum pname, GLint* params);
/* GL_APPLE_row_bytes */
/* GL_APPLE_rgb_422 */
/* GL_NV_video_capture */
typedef void             (APIENTRY* EXDLGLBEGINVIDEOCAPTURENVPROC)                                (GLuint video_capture_slot);
typedef void             (APIENTRY* EXDLGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC)                     (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset);
typedef void             (APIENTRY* EXDLGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC)                    (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture);
typedef void             (APIENTRY* EXDLGLENDVIDEOCAPTURENVPROC)                                  (GLuint video_capture_slot);
typedef void             (APIENTRY* EXDLGLGETVIDEOCAPTUREIVNVPROC)                                (GLuint video_capture_slot, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETVIDEOCAPTURESTREAMIVNVPROC)                          (GLuint video_capture_slot, GLuint stream, GLenum pname, GLint* params);
typedef void             (APIENTRY* EXDLGLGETVIDEOCAPTURESTREAMFVNVPROC)                          (GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat* params);
typedef void             (APIENTRY* EXDLGLGETVIDEOCAPTURESTREAMDVNVPROC)                          (GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble* params);
typedef GLenum           (APIENTRY* EXDLGLVIDEOCAPTURENVPROC)                                     (GLuint video_capture_slot, GLuint* sequence_num, GLuint64EXT* capture_time);
typedef void             (APIENTRY* EXDLGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC)                    (GLuint video_capture_slot, GLuint stream, GLenum pname, const GLint* params);
typedef void             (APIENTRY* EXDLGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC)                    (GLuint video_capture_slot, GLuint stream, GLenum pname, const GLfloat* params);
typedef void             (APIENTRY* EXDLGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC)                    (GLuint video_capture_slot, GLuint stream, GLenum pname, const GLdouble* params);
/* GL_NV_copy_image */
typedef void             (APIENTRY* EXDLGLCOPYIMAGESUBDATANVPROC)                                 (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth);
/* GL_EXT_separate_shader_objects */
typedef void             (APIENTRY* EXDLGLUSESHADERPROGRAMEXTPROC)                                (GLenum type, GLuint program);
typedef void             (APIENTRY* EXDLGLACTIVEPROGRAMEXTPROC)                                   (GLuint program);
typedef GLuint           (APIENTRY* EXDLGLCREATESHADERPROGRAMEXTPROC)                             (GLenum type, const GLchar* string);
/* GL_NV_parameter_buffer_object2 */
/* GL_NV_shader_buffer_load */
typedef void             (APIENTRY* EXDLGLMAKEBUFFERRESIDENTNVPROC)                               (GLenum target, GLenum access);
typedef void             (APIENTRY* EXDLGLMAKEBUFFERNONRESIDENTNVPROC)                            (GLenum target);
typedef GLboolean        (APIENTRY* EXDLGLISBUFFERRESIDENTNVPROC)                                 (GLenum target);
typedef void             (APIENTRY* EXDLGLNAMEDMAKEBUFFERRESIDENTNVPROC)                          (GLuint buffer, GLenum access);
typedef void             (APIENTRY* EXDLGLNAMEDMAKEBUFFERNONRESIDENTNVPROC)                       (GLuint buffer);
typedef GLboolean        (APIENTRY* EXDLGLISNAMEDBUFFERRESIDENTNVPROC)                            (GLuint buffer);
typedef void             (APIENTRY* EXDLGLGETBUFFERPARAMETERUI64VNVPROC)                          (GLenum target, GLenum pname, GLuint64EXT* params);
typedef void             (APIENTRY* EXDLGLGETNAMEDBUFFERPARAMETERUI64VNVPROC)                     (GLuint buffer, GLenum pname, GLuint64EXT* params);
typedef void             (APIENTRY* EXDLGLGETINTEGERUI64VNVPROC)                                  (GLenum value, GLuint64EXT* result);
typedef void             (APIENTRY* EXDLGLUNIFORMUI64NVPROC)                                      (GLint location, GLuint64EXT value);
typedef void             (APIENTRY* EXDLGLUNIFORMUI64VNVPROC)                                     (GLint location, GLsizei count, const GLuint64EXT* value);
typedef void             (APIENTRY* EXDLGLGETUNIFORMUI64VNVPROC)                                  (GLuint program, GLint location, GLuint64EXT* params);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMUI64NVPROC)                               (GLuint program, GLint location, GLuint64EXT value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMUI64VNVPROC)                              (GLuint program, GLint location, GLsizei count, const GLuint64EXT* value);
/* GL_NV_vertex_buffer_unified_memory */
typedef void             (APIENTRY* EXDLGLBUFFERADDRESSRANGENVPROC)                               (GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length);
typedef void             (APIENTRY* EXDLGLVERTEXFORMATNVPROC)                                     (GLint size, GLenum type, GLsizei stride);
typedef void             (APIENTRY* EXDLGLNORMALFORMATNVPROC)                                     (GLenum type, GLsizei stride);
typedef void             (APIENTRY* EXDLGLCOLORFORMATNVPROC)                                      (GLint size, GLenum type, GLsizei stride);
typedef void             (APIENTRY* EXDLGLINDEXFORMATNVPROC)                                      (GLenum type, GLsizei stride);
typedef void             (APIENTRY* EXDLGLTEXCOORDFORMATNVPROC)                                   (GLint size, GLenum type, GLsizei stride);
typedef void             (APIENTRY* EXDLGLEDGEFLAGFORMATNVPROC)                                   (GLsizei stride);
typedef void             (APIENTRY* EXDLGLSECONDARYCOLORFORMATNVPROC)                             (GLint size, GLenum type, GLsizei stride);
typedef void             (APIENTRY* EXDLGLFOGCOORDFORMATNVPROC)                                   (GLenum type, GLsizei stride);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBFORMATNVPROC)                               (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBIFORMATNVPROC)                              (GLuint index, GLint size, GLenum type, GLsizei stride);
typedef void             (APIENTRY* EXDLGLGETINTEGERUI64I_VNVPROC)                                (GLenum value, GLuint index, GLuint64EXT* result);
/* GL_NV_texture_barrier */
typedef void             (APIENTRY* EXDLGLTEXTUREBARRIERNVPROC)                                   (void);
/* GL_AMD_shader_stencil_export */
/* GL_AMD_seamless_cubemap_per_texture */
/* GL_AMD_conservative_depth */
/* GL_EXT_shader_image_load_store */
typedef void             (APIENTRY* EXDLGLBINDIMAGETEXTUREEXTPROC)                                (GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format);
typedef void             (APIENTRY* EXDLGLMEMORYBARRIEREXTPROC)                                   (GLbitfield barriers);
/* GL_EXT_vertex_attrib_64bit */
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL1DEXTPROC)                                 (GLuint index, GLdouble x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL2DEXTPROC)                                 (GLuint index, GLdouble x, GLdouble y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL3DEXTPROC)                                 (GLuint index, GLdouble x, GLdouble y, GLdouble z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL4DEXTPROC)                                 (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL1DVEXTPROC)                                (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL2DVEXTPROC)                                (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL3DVEXTPROC)                                (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL4DVEXTPROC)                                (GLuint index, const GLdouble* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBLPOINTEREXTPROC)                            (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid* pointer);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBLDVEXTPROC)                              (GLuint index, GLenum pname, GLdouble* params);
typedef void             (APIENTRY* EXDLGLVERTEXARRAYVERTEXATTRIBLOFFSETEXTPROC)                  (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset);
/* GL_NV_gpu_program5 */
typedef void             (APIENTRY* EXDLGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC)                   (GLenum target, GLsizei count, const GLuint* params);
typedef void             (APIENTRY* EXDLGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC)                 (GLenum target, GLuint index, GLuint* param);
/* GL_NV_gpu_shader5 */
typedef void             (APIENTRY* EXDLGLUNIFORM1I64NVPROC)                                      (GLint location, GLint64EXT x);
typedef void             (APIENTRY* EXDLGLUNIFORM2I64NVPROC)                                      (GLint location, GLint64EXT x, GLint64EXT y);
typedef void             (APIENTRY* EXDLGLUNIFORM3I64NVPROC)                                      (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z);
typedef void             (APIENTRY* EXDLGLUNIFORM4I64NVPROC)                                      (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
typedef void             (APIENTRY* EXDLGLUNIFORM1I64VNVPROC)                                     (GLint location, GLsizei count, const GLint64EXT* value);
typedef void             (APIENTRY* EXDLGLUNIFORM2I64VNVPROC)                                     (GLint location, GLsizei count, const GLint64EXT* value);
typedef void             (APIENTRY* EXDLGLUNIFORM3I64VNVPROC)                                     (GLint location, GLsizei count, const GLint64EXT* value);
typedef void             (APIENTRY* EXDLGLUNIFORM4I64VNVPROC)                                     (GLint location, GLsizei count, const GLint64EXT* value);
typedef void             (APIENTRY* EXDLGLUNIFORM1UI64NVPROC)                                     (GLint location, GLuint64EXT x);
typedef void             (APIENTRY* EXDLGLUNIFORM2UI64NVPROC)                                     (GLint location, GLuint64EXT x, GLuint64EXT y);
typedef void             (APIENTRY* EXDLGLUNIFORM3UI64NVPROC)                                     (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
typedef void             (APIENTRY* EXDLGLUNIFORM4UI64NVPROC)                                     (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
typedef void             (APIENTRY* EXDLGLUNIFORM1UI64VNVPROC)                                    (GLint location, GLsizei count, const GLuint64EXT* value);
typedef void             (APIENTRY* EXDLGLUNIFORM2UI64VNVPROC)                                    (GLint location, GLsizei count, const GLuint64EXT* value);
typedef void             (APIENTRY* EXDLGLUNIFORM3UI64VNVPROC)                                    (GLint location, GLsizei count, const GLuint64EXT* value);
typedef void             (APIENTRY* EXDLGLUNIFORM4UI64VNVPROC)                                    (GLint location, GLsizei count, const GLuint64EXT* value);
typedef void             (APIENTRY* EXDLGLGETUNIFORMI64VNVPROC)                                   (GLuint program, GLint location, GLint64EXT* params);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1I64NVPROC)                               (GLuint program, GLint location, GLint64EXT x);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2I64NVPROC)                               (GLuint program, GLint location, GLint64EXT x, GLint64EXT y);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3I64NVPROC)                               (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4I64NVPROC)                               (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1I64VNVPROC)                              (GLuint program, GLint location, GLsizei count, const GLint64EXT* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2I64VNVPROC)                              (GLuint program, GLint location, GLsizei count, const GLint64EXT* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3I64VNVPROC)                              (GLuint program, GLint location, GLsizei count, const GLint64EXT* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4I64VNVPROC)                              (GLuint program, GLint location, GLsizei count, const GLint64EXT* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1UI64NVPROC)                              (GLuint program, GLint location, GLuint64EXT x);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2UI64NVPROC)                              (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3UI64NVPROC)                              (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4UI64NVPROC)                              (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM1UI64VNVPROC)                             (GLuint program, GLint location, GLsizei count, const GLuint64EXT* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM2UI64VNVPROC)                             (GLuint program, GLint location, GLsizei count, const GLuint64EXT* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM3UI64VNVPROC)                             (GLuint program, GLint location, GLsizei count, const GLuint64EXT* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORM4UI64VNVPROC)                             (GLuint program, GLint location, GLsizei count, const GLuint64EXT* value);
/* GL_NV_shader_buffer_store */
/* GL_NV_tessellation_program5 */
/* GL_NV_vertex_attrib_integer_64bit */
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL1I64NVPROC)                                (GLuint index, GLint64EXT x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL2I64NVPROC)                                (GLuint index, GLint64EXT x, GLint64EXT y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL3I64NVPROC)                                (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL4I64NVPROC)                                (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL1I64VNVPROC)                               (GLuint index, const GLint64EXT* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL2I64VNVPROC)                               (GLuint index, const GLint64EXT* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL3I64VNVPROC)                               (GLuint index, const GLint64EXT* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL4I64VNVPROC)                               (GLuint index, const GLint64EXT* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL1UI64NVPROC)                               (GLuint index, GLuint64EXT x);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL2UI64NVPROC)                               (GLuint index, GLuint64EXT x, GLuint64EXT y);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL3UI64NVPROC)                               (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL4UI64NVPROC)                               (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL1UI64VNVPROC)                              (GLuint index, const GLuint64EXT* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL2UI64VNVPROC)                              (GLuint index, const GLuint64EXT* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL3UI64VNVPROC)                              (GLuint index, const GLuint64EXT* v);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBL4UI64VNVPROC)                              (GLuint index, const GLuint64EXT* v);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBLI64VNVPROC)                             (GLuint index, GLenum pname, GLint64EXT* params);
typedef void             (APIENTRY* EXDLGLGETVERTEXATTRIBLUI64VNVPROC)                            (GLuint index, GLenum pname, GLuint64EXT* params);
typedef void             (APIENTRY* EXDLGLVERTEXATTRIBLFORMATNVPROC)                              (GLuint index, GLint size, GLenum type, GLsizei stride);
/* GL_NV_multisample_coverage */
/* GL_AMD_name_gen_delete */
typedef void             (APIENTRY* EXDLGLGENNAMESAMDPROC)                                        (GLenum identifier, GLuint num, GLuint* names);
typedef void             (APIENTRY* EXDLGLDELETENAMESAMDPROC)                                     (GLenum identifier, GLuint num, const GLuint* names);
typedef GLboolean        (APIENTRY* EXDLGLISNAMEAMDPROC)                                          (GLenum identifier, GLuint name);
/* GL_AMD_debug_output */
typedef void             (APIENTRY* EXDLGLDEBUGMESSAGEENABLEAMDPROC)                              (GLenum category, GLenum severity, GLsizei count, const GLuint* ids, GLboolean enabled);
typedef void             (APIENTRY* EXDLGLDEBUGMESSAGEINSERTAMDPROC)                              (GLenum category, GLenum severity, GLuint id, GLsizei length, const GLchar* buf);
typedef void             (APIENTRY* EXDLGLDEBUGMESSAGECALLBACKAMDPROC)                            (GLDEBUGPROCAMD callback, GLvoid* userParam);
typedef GLuint           (APIENTRY* EXDLGLGETDEBUGMESSAGELOGAMDPROC)                              (GLuint count, GLsizei bufsize, GLenum* categories, GLuint* severities, GLuint* ids, GLsizei* lengths, GLchar* message);
/* GL_NV_vdpau_interop */
typedef void             (APIENTRY* EXDLGLVDPAUINITNVPROC)                                        (const GLvoid* vdpDevice, const GLvoid* getProcAddress);
typedef void             (APIENTRY* EXDLGLVDPAUFININVPROC)                                        (void);
typedef GLvdpauSurfaceNV (APIENTRY* EXDLGLVDPAUREGISTERVIDEOSURFACENVPROC)                        (GLvoid* vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint* textureNames);
typedef GLvdpauSurfaceNV (APIENTRY* EXDLGLVDPAUREGISTEROUTPUTSURFACENVPROC)                       (GLvoid* vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint* textureNames);
typedef void             (APIENTRY* EXDLGLVDPAUISSURFACENVPROC)                                   (GLvdpauSurfaceNV surface);
typedef void             (APIENTRY* EXDLGLVDPAUUNREGISTERSURFACENVPROC)                           (GLvdpauSurfaceNV surface);
typedef void             (APIENTRY* EXDLGLVDPAUGETSURFACEIVNVPROC)                                (GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values);
typedef void             (APIENTRY* EXDLGLVDPAUSURFACEACCESSNVPROC)                               (GLvdpauSurfaceNV surface, GLenum access);
typedef void             (APIENTRY* EXDLGLVDPAUMAPSURFACESNVPROC)                                 (GLsizei numSurfaces, const GLvdpauSurfaceNV* surfaces);
typedef void             (APIENTRY* EXDLGLVDPAUUNMAPSURFACESNVPROC)                               (GLsizei numSurface, const GLvdpauSurfaceNV* surfaces);
/* GL_AMD_transform_feedback3_lines_triangles */
/* GL_AMD_depth_clamp_separate */
/* GL_EXT_texture_sRGB_decode */
/* GL_NV_texture_multisample */
typedef void             (APIENTRY* EXDLGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC)                    (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
typedef void             (APIENTRY* EXDLGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC)                    (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
typedef void             (APIENTRY* EXDLGLTEXTUREIMAGE2DMULTISAMPLENVPROC)                        (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
typedef void             (APIENTRY* EXDLGLTEXTUREIMAGE3DMULTISAMPLENVPROC)                        (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
typedef void             (APIENTRY* EXDLGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC)                (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
typedef void             (APIENTRY* EXDLGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC)                (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
/* GL_AMD_blend_minmax_factor */
/* GL_AMD_sample_positions */
typedef void             (APIENTRY* EXDLGLSETMULTISAMPLEFVAMDPROC)                                (GLenum pname, GLuint index, const GLfloat* val);
/* GL_EXT_x11_sync_object */
typedef GLsync           (APIENTRY* EXDLGLIMPORTSYNCEXTPROC)                                      (GLenum external_sync_type, GLintptr external_sync, GLbitfield flags);
/* GL_AMD_multi_draw_indirect */
typedef void             (APIENTRY* EXDLGLMULTIDRAWARRAYSINDIRECTAMDPROC)                         (GLenum mode, const GLvoid* indirect, GLsizei primcount, GLsizei stride);
typedef void             (APIENTRY* EXDLGLMULTIDRAWELEMENTSINDIRECTAMDPROC)                       (GLenum mode, GLenum type, const GLvoid* indirect, GLsizei primcount, GLsizei stride);
/* GL_EXT_framebuffer_multisample_blit_scaled */
/* GL_NV_path_rendering */
typedef GLuint           (APIENTRY* EXDLGLGENPATHSNVPROC)                                         (GLsizei range);
typedef void             (APIENTRY* EXDLGLDELETEPATHSNVPROC)                                      (GLuint path, GLsizei range);
typedef GLboolean        (APIENTRY* EXDLGLISPATHNVPROC)                                           (GLuint path);
typedef void             (APIENTRY* EXDLGLPATHCOMMANDSNVPROC)                                     (GLuint path, GLsizei numCommands, const GLubyte* commands, GLsizei numCoords, GLenum coordType, const GLvoid* coords);
typedef void             (APIENTRY* EXDLGLPATHCOORDSNVPROC)                                       (GLuint path, GLsizei numCoords, GLenum coordType, const GLvoid* coords);
typedef void             (APIENTRY* EXDLGLPATHSUBCOMMANDSNVPROC)                                  (GLuint path, GLsizei commandStart, GLsizei commandsToDelete, GLsizei numCommands, const GLubyte* commands, GLsizei numCoords, GLenum coordType, const GLvoid* coords);
typedef void             (APIENTRY* EXDLGLPATHSUBCOORDSNVPROC)                                    (GLuint path, GLsizei coordStart, GLsizei numCoords, GLenum coordType, const GLvoid* coords);
typedef void             (APIENTRY* EXDLGLPATHSTRINGNVPROC)                                       (GLuint path, GLenum format, GLsizei length, const GLvoid* pathString);
typedef void             (APIENTRY* EXDLGLPATHGLYPHSNVPROC)                                       (GLuint firstPathName, GLenum fontTarget, const GLvoid* fontName, GLbitfield fontStyle, GLsizei numGlyphs, GLenum type, const GLvoid* charcodes, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
typedef void             (APIENTRY* EXDLGLPATHGLYPHRANGENVPROC)                                   (GLuint firstPathName, GLenum fontTarget, const GLvoid* fontName, GLbitfield fontStyle, GLuint firstGlyph, GLsizei numGlyphs, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
typedef void             (APIENTRY* EXDLGLWEIGHTPATHSNVPROC)                                      (GLuint resultPath, GLsizei numPaths, const GLuint* paths, const GLfloat* weights);
typedef void             (APIENTRY* EXDLGLCOPYPATHNVPROC)                                         (GLuint resultPath, GLuint srcPath);
typedef void             (APIENTRY* EXDLGLINTERPOLATEPATHSNVPROC)                                 (GLuint resultPath, GLuint pathA, GLuint pathB, GLfloat weight);
typedef void             (APIENTRY* EXDLGLTRANSFORMPATHNVPROC)                                    (GLuint resultPath, GLuint srcPath, GLenum transformType, const GLfloat* transformValues);
typedef void             (APIENTRY* EXDLGLPATHPARAMETERIVNVPROC)                                  (GLuint path, GLenum pname, const GLint* value);
typedef void             (APIENTRY* EXDLGLPATHPARAMETERINVPROC)                                   (GLuint path, GLenum pname, GLint value);
typedef void             (APIENTRY* EXDLGLPATHPARAMETERFVNVPROC)                                  (GLuint path, GLenum pname, const GLfloat* value);
typedef void             (APIENTRY* EXDLGLPATHPARAMETERFNVPROC)                                   (GLuint path, GLenum pname, GLfloat value);
typedef void             (APIENTRY* EXDLGLPATHDASHARRAYNVPROC)                                    (GLuint path, GLsizei dashCount, const GLfloat* dashArray);
typedef void             (APIENTRY* EXDLGLPATHSTENCILFUNCNVPROC)                                  (GLenum func, GLint ref, GLuint mask);
typedef void             (APIENTRY* EXDLGLPATHSTENCILDEPTHOFFSETNVPROC)                           (GLfloat factor, GLfloat units);
typedef void             (APIENTRY* EXDLGLSTENCILFILLPATHNVPROC)                                  (GLuint path, GLenum fillMode, GLuint mask);
typedef void             (APIENTRY* EXDLGLSTENCILSTROKEPATHNVPROC)                                (GLuint path, GLint reference, GLuint mask);
typedef void             (APIENTRY* EXDLGLSTENCILFILLPATHINSTANCEDNVPROC)                         (GLsizei numPaths, GLenum pathNameType, const GLvoid* paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum transformType, const GLfloat* transformValues);
typedef void             (APIENTRY* EXDLGLSTENCILSTROKEPATHINSTANCEDNVPROC)                       (GLsizei numPaths, GLenum pathNameType, const GLvoid* paths, GLuint pathBase, GLint reference, GLuint mask, GLenum transformType, const GLfloat* transformValues);
typedef void             (APIENTRY* EXDLGLPATHCOVERDEPTHFUNCNVPROC)                               (GLenum func);
typedef void             (APIENTRY* EXDLGLPATHCOLORGENNVPROC)                                     (GLenum color, GLenum genMode, GLenum colorFormat, const GLfloat* coeffs);
typedef void             (APIENTRY* EXDLGLPATHTEXGENNVPROC)                                       (GLenum texCoordSet, GLenum genMode, GLint components, const GLfloat* coeffs);
typedef void             (APIENTRY* EXDLGLPATHFOGGENNVPROC)                                       (GLenum genMode);
typedef void             (APIENTRY* EXDLGLCOVERFILLPATHNVPROC)                                    (GLuint path, GLenum coverMode);
typedef void             (APIENTRY* EXDLGLCOVERSTROKEPATHNVPROC)                                  (GLuint path, GLenum coverMode);
typedef void             (APIENTRY* EXDLGLCOVERFILLPATHINSTANCEDNVPROC)                           (GLsizei numPaths, GLenum pathNameType, const GLvoid* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const GLfloat* transformValues);
typedef void             (APIENTRY* EXDLGLCOVERSTROKEPATHINSTANCEDNVPROC)                         (GLsizei numPaths, GLenum pathNameType, const GLvoid* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const GLfloat* transformValues);
typedef void             (APIENTRY* EXDLGLGETPATHPARAMETERIVNVPROC)                               (GLuint path, GLenum pname, GLint* value);
typedef void             (APIENTRY* EXDLGLGETPATHPARAMETERFVNVPROC)                               (GLuint path, GLenum pname, GLfloat* value);
typedef void             (APIENTRY* EXDLGLGETPATHCOMMANDSNVPROC)                                  (GLuint path, GLubyte* commands);
typedef void             (APIENTRY* EXDLGLGETPATHCOORDSNVPROC)                                    (GLuint path, GLfloat* coords);
typedef void             (APIENTRY* EXDLGLGETPATHDASHARRAYNVPROC)                                 (GLuint path, GLfloat* dashArray);
typedef void             (APIENTRY* EXDLGLGETPATHMETRICSNVPROC)                                   (GLbitfield metricQueryMask, GLsizei numPaths, GLenum pathNameType, const GLvoid* paths, GLuint pathBase, GLsizei stride, GLfloat* metrics);
typedef void             (APIENTRY* EXDLGLGETPATHMETRICRANGENVPROC)                               (GLbitfield metricQueryMask, GLuint firstPathName, GLsizei numPaths, GLsizei stride, GLfloat* metrics);
typedef void             (APIENTRY* EXDLGLGETPATHSPACINGNVPROC)                                   (GLenum pathListMode, GLsizei numPaths, GLenum pathNameType, const GLvoid* paths, GLuint pathBase, GLfloat advanceScale, GLfloat kerningScale, GLenum transformType, GLfloat* returnedSpacing);
typedef void             (APIENTRY* EXDLGLGETPATHCOLORGENIVNVPROC)                                (GLenum color, GLenum pname, GLint* value);
typedef void             (APIENTRY* EXDLGLGETPATHCOLORGENFVNVPROC)                                (GLenum color, GLenum pname, GLfloat* value);
typedef void             (APIENTRY* EXDLGLGETPATHTEXGENIVNVPROC)                                  (GLenum texCoordSet, GLenum pname, GLint* value);
typedef void             (APIENTRY* EXDLGLGETPATHTEXGENFVNVPROC)                                  (GLenum texCoordSet, GLenum pname, GLfloat* value);
typedef GLboolean        (APIENTRY* EXDLGLISPOINTINFILLPATHNVPROC)                                (GLuint path, GLuint mask, GLfloat x, GLfloat y);
typedef GLboolean        (APIENTRY* EXDLGLISPOINTINSTROKEPATHNVPROC)                              (GLuint path, GLfloat x, GLfloat y);
typedef GLfloat          (APIENTRY* EXDLGLGETPATHLENGTHNVPROC)                                    (GLuint path, GLsizei startSegment, GLsizei numSegments);
typedef GLboolean        (APIENTRY* EXDLGLPOINTALONGPATHNVPROC)                                   (GLuint path, GLsizei startSegment, GLsizei numSegments, GLfloat distance, GLfloat* x, GLfloat* y, GLfloat* tangentX, GLfloat* tangentY);
/* GL_AMD_pinned_memory */
/* GL_AMD_stencil_operation_extended */
typedef void             (APIENTRY* EXDLGLSTENCILOPVALUEAMDPROC)                                  (GLenum face, GLuint value);
/* GL_AMD_vertex_shader_viewport_index */
/* GL_AMD_vertex_shader_layer */
/* GL_NV_bindless_texture */
typedef GLuint64         (APIENTRY* EXDLGLGETTEXTUREHANDLENVPROC)                                 (GLuint texture);
typedef GLuint64         (APIENTRY* EXDLGLGETTEXTURESAMPLERHANDLENVPROC)                          (GLuint texture, GLuint sampler);
typedef void             (APIENTRY* EXDLGLMAKETEXTUREHANDLERESIDENTNVPROC)                        (GLuint64 handle);
typedef void             (APIENTRY* EXDLGLMAKETEXTUREHANDLENONRESIDENTNVPROC)                     (GLuint64 handle);
typedef GLuint64         (APIENTRY* EXDLGLGETIMAGEHANDLENVPROC)                                   (GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format);
typedef void             (APIENTRY* EXDLGLMAKEIMAGEHANDLERESIDENTNVPROC)                          (GLuint64 handle, GLenum access);
typedef void             (APIENTRY* EXDLGLMAKEIMAGEHANDLENONRESIDENTNVPROC)                       (GLuint64 handle);
typedef void             (APIENTRY* EXDLGLUNIFORMHANDLEUI64NVPROC)                                (GLint location, GLuint64 value);
typedef void             (APIENTRY* EXDLGLUNIFORMHANDLEUI64VNVPROC)                               (GLint location, GLsizei count, const GLuint64* value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMHANDLEUI64NVPROC)                         (GLuint program, GLint location, GLuint64 value);
typedef void             (APIENTRY* EXDLGLPROGRAMUNIFORMHANDLEUI64VNVPROC)                        (GLuint program, GLint location, GLsizei count, const GLuint64* values);
typedef GLboolean        (APIENTRY* EXDLGLISTEXTUREHANDLERESIDENTNVPROC)                          (GLuint64 handle);
typedef GLboolean        (APIENTRY* EXDLGLISIMAGEHANDLERESIDENTNVPROC)                            (GLuint64 handle);
/* GL_NV_shader_atomic_float */


/* GL_VERSION_1_2 */
EXDL_EXTERN EXDLGLBLENDCOLORPROC                                         exdl_glBlendColor;
EXDL_EXTERN EXDLGLBLENDEQUATIONPROC                                      exdl_glBlendEquation;
EXDL_EXTERN EXDLGLDRAWRANGEELEMENTSPROC                                  exdl_glDrawRangeElements;
EXDL_EXTERN EXDLGLTEXIMAGE3DPROC                                         exdl_glTexImage3D;
EXDL_EXTERN EXDLGLTEXSUBIMAGE3DPROC                                      exdl_glTexSubImage3D;
EXDL_EXTERN EXDLGLCOPYTEXSUBIMAGE3DPROC                                  exdl_glCopyTexSubImage3D;
/* GL_VERSION_1_2_DEPRECATED */
EXDL_EXTERN EXDLGLCOLORTABLEPROC                                         exdl_glColorTable;
EXDL_EXTERN EXDLGLCOLORTABLEPARAMETERFVPROC                              exdl_glColorTableParameterfv;
EXDL_EXTERN EXDLGLCOLORTABLEPARAMETERIVPROC                              exdl_glColorTableParameteriv;
EXDL_EXTERN EXDLGLCOPYCOLORTABLEPROC                                     exdl_glCopyColorTable;
EXDL_EXTERN EXDLGLGETCOLORTABLEPROC                                      exdl_glGetColorTable;
EXDL_EXTERN EXDLGLGETCOLORTABLEPARAMETERFVPROC                           exdl_glGetColorTableParameterfv;
EXDL_EXTERN EXDLGLGETCOLORTABLEPARAMETERIVPROC                           exdl_glGetColorTableParameteriv;
EXDL_EXTERN EXDLGLCOLORSUBTABLEPROC                                      exdl_glColorSubTable;
EXDL_EXTERN EXDLGLCOPYCOLORSUBTABLEPROC                                  exdl_glCopyColorSubTable;
EXDL_EXTERN EXDLGLCONVOLUTIONFILTER1DPROC                                exdl_glConvolutionFilter1D;
EXDL_EXTERN EXDLGLCONVOLUTIONFILTER2DPROC                                exdl_glConvolutionFilter2D;
EXDL_EXTERN EXDLGLCONVOLUTIONPARAMETERFPROC                              exdl_glConvolutionParameterf;
EXDL_EXTERN EXDLGLCONVOLUTIONPARAMETERFVPROC                             exdl_glConvolutionParameterfv;
EXDL_EXTERN EXDLGLCONVOLUTIONPARAMETERIPROC                              exdl_glConvolutionParameteri;
EXDL_EXTERN EXDLGLCONVOLUTIONPARAMETERIVPROC                             exdl_glConvolutionParameteriv;
EXDL_EXTERN EXDLGLCOPYCONVOLUTIONFILTER1DPROC                            exdl_glCopyConvolutionFilter1D;
EXDL_EXTERN EXDLGLCOPYCONVOLUTIONFILTER2DPROC                            exdl_glCopyConvolutionFilter2D;
EXDL_EXTERN EXDLGLGETCONVOLUTIONFILTERPROC                               exdl_glGetConvolutionFilter;
EXDL_EXTERN EXDLGLGETCONVOLUTIONPARAMETERFVPROC                          exdl_glGetConvolutionParameterfv;
EXDL_EXTERN EXDLGLGETCONVOLUTIONPARAMETERIVPROC                          exdl_glGetConvolutionParameteriv;
EXDL_EXTERN EXDLGLGETSEPARABLEFILTERPROC                                 exdl_glGetSeparableFilter;
EXDL_EXTERN EXDLGLSEPARABLEFILTER2DPROC                                  exdl_glSeparableFilter2D;
EXDL_EXTERN EXDLGLGETHISTOGRAMPROC                                       exdl_glGetHistogram;
EXDL_EXTERN EXDLGLGETHISTOGRAMPARAMETERFVPROC                            exdl_glGetHistogramParameterfv;
EXDL_EXTERN EXDLGLGETHISTOGRAMPARAMETERIVPROC                            exdl_glGetHistogramParameteriv;
EXDL_EXTERN EXDLGLGETMINMAXPROC                                          exdl_glGetMinmax;
EXDL_EXTERN EXDLGLGETMINMAXPARAMETERFVPROC                               exdl_glGetMinmaxParameterfv;
EXDL_EXTERN EXDLGLGETMINMAXPARAMETERIVPROC                               exdl_glGetMinmaxParameteriv;
EXDL_EXTERN EXDLGLHISTOGRAMPROC                                          exdl_glHistogram;
EXDL_EXTERN EXDLGLMINMAXPROC                                             exdl_glMinmax;
EXDL_EXTERN EXDLGLRESETHISTOGRAMPROC                                     exdl_glResetHistogram;
EXDL_EXTERN EXDLGLRESETMINMAXPROC                                        exdl_glResetMinmax;
/* GL_VERSION_1_3 */
EXDL_EXTERN EXDLGLACTIVETEXTUREPROC                                      exdl_glActiveTexture;
EXDL_EXTERN EXDLGLSAMPLECOVERAGEPROC                                     exdl_glSampleCoverage;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXIMAGE3DPROC                               exdl_glCompressedTexImage3D;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXIMAGE2DPROC                               exdl_glCompressedTexImage2D;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXIMAGE1DPROC                               exdl_glCompressedTexImage1D;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXSUBIMAGE3DPROC                            exdl_glCompressedTexSubImage3D;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXSUBIMAGE2DPROC                            exdl_glCompressedTexSubImage2D;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXSUBIMAGE1DPROC                            exdl_glCompressedTexSubImage1D;
EXDL_EXTERN EXDLGLGETCOMPRESSEDTEXIMAGEPROC                              exdl_glGetCompressedTexImage;
/* GL_VERSION_1_3_DEPRECATED */
EXDL_EXTERN EXDLGLCLIENTACTIVETEXTUREPROC                                exdl_glClientActiveTexture;
EXDL_EXTERN EXDLGLMULTITEXCOORD1DPROC                                    exdl_glMultiTexCoord1d;
EXDL_EXTERN EXDLGLMULTITEXCOORD1DVPROC                                   exdl_glMultiTexCoord1dv;
EXDL_EXTERN EXDLGLMULTITEXCOORD1FPROC                                    exdl_glMultiTexCoord1f;
EXDL_EXTERN EXDLGLMULTITEXCOORD1FVPROC                                   exdl_glMultiTexCoord1fv;
EXDL_EXTERN EXDLGLMULTITEXCOORD1IPROC                                    exdl_glMultiTexCoord1i;
EXDL_EXTERN EXDLGLMULTITEXCOORD1IVPROC                                   exdl_glMultiTexCoord1iv;
EXDL_EXTERN EXDLGLMULTITEXCOORD1SPROC                                    exdl_glMultiTexCoord1s;
EXDL_EXTERN EXDLGLMULTITEXCOORD1SVPROC                                   exdl_glMultiTexCoord1sv;
EXDL_EXTERN EXDLGLMULTITEXCOORD2DPROC                                    exdl_glMultiTexCoord2d;
EXDL_EXTERN EXDLGLMULTITEXCOORD2DVPROC                                   exdl_glMultiTexCoord2dv;
EXDL_EXTERN EXDLGLMULTITEXCOORD2FPROC                                    exdl_glMultiTexCoord2f;
EXDL_EXTERN EXDLGLMULTITEXCOORD2FVPROC                                   exdl_glMultiTexCoord2fv;
EXDL_EXTERN EXDLGLMULTITEXCOORD2IPROC                                    exdl_glMultiTexCoord2i;
EXDL_EXTERN EXDLGLMULTITEXCOORD2IVPROC                                   exdl_glMultiTexCoord2iv;
EXDL_EXTERN EXDLGLMULTITEXCOORD2SPROC                                    exdl_glMultiTexCoord2s;
EXDL_EXTERN EXDLGLMULTITEXCOORD2SVPROC                                   exdl_glMultiTexCoord2sv;
EXDL_EXTERN EXDLGLMULTITEXCOORD3DPROC                                    exdl_glMultiTexCoord3d;
EXDL_EXTERN EXDLGLMULTITEXCOORD3DVPROC                                   exdl_glMultiTexCoord3dv;
EXDL_EXTERN EXDLGLMULTITEXCOORD3FPROC                                    exdl_glMultiTexCoord3f;
EXDL_EXTERN EXDLGLMULTITEXCOORD3FVPROC                                   exdl_glMultiTexCoord3fv;
EXDL_EXTERN EXDLGLMULTITEXCOORD3IPROC                                    exdl_glMultiTexCoord3i;
EXDL_EXTERN EXDLGLMULTITEXCOORD3IVPROC                                   exdl_glMultiTexCoord3iv;
EXDL_EXTERN EXDLGLMULTITEXCOORD3SPROC                                    exdl_glMultiTexCoord3s;
EXDL_EXTERN EXDLGLMULTITEXCOORD3SVPROC                                   exdl_glMultiTexCoord3sv;
EXDL_EXTERN EXDLGLMULTITEXCOORD4DPROC                                    exdl_glMultiTexCoord4d;
EXDL_EXTERN EXDLGLMULTITEXCOORD4DVPROC                                   exdl_glMultiTexCoord4dv;
EXDL_EXTERN EXDLGLMULTITEXCOORD4FPROC                                    exdl_glMultiTexCoord4f;
EXDL_EXTERN EXDLGLMULTITEXCOORD4FVPROC                                   exdl_glMultiTexCoord4fv;
EXDL_EXTERN EXDLGLMULTITEXCOORD4IPROC                                    exdl_glMultiTexCoord4i;
EXDL_EXTERN EXDLGLMULTITEXCOORD4IVPROC                                   exdl_glMultiTexCoord4iv;
EXDL_EXTERN EXDLGLMULTITEXCOORD4SPROC                                    exdl_glMultiTexCoord4s;
EXDL_EXTERN EXDLGLMULTITEXCOORD4SVPROC                                   exdl_glMultiTexCoord4sv;
EXDL_EXTERN EXDLGLLOADTRANSPOSEMATRIXFPROC                               exdl_glLoadTransposeMatrixf;
EXDL_EXTERN EXDLGLLOADTRANSPOSEMATRIXDPROC                               exdl_glLoadTransposeMatrixd;
EXDL_EXTERN EXDLGLMULTTRANSPOSEMATRIXFPROC                               exdl_glMultTransposeMatrixf;
EXDL_EXTERN EXDLGLMULTTRANSPOSEMATRIXDPROC                               exdl_glMultTransposeMatrixd;
/* GL_VERSION_1_4 */
EXDL_EXTERN EXDLGLBLENDFUNCSEPARATEPROC                                  exdl_glBlendFuncSeparate;
EXDL_EXTERN EXDLGLMULTIDRAWARRAYSPROC                                    exdl_glMultiDrawArrays;
EXDL_EXTERN EXDLGLMULTIDRAWELEMENTSPROC                                  exdl_glMultiDrawElements;
EXDL_EXTERN EXDLGLPOINTPARAMETERFPROC                                    exdl_glPointParameterf;
EXDL_EXTERN EXDLGLPOINTPARAMETERFVPROC                                   exdl_glPointParameterfv;
EXDL_EXTERN EXDLGLPOINTPARAMETERIPROC                                    exdl_glPointParameteri;
EXDL_EXTERN EXDLGLPOINTPARAMETERIVPROC                                   exdl_glPointParameteriv;
/* GL_VERSION_1_4_DEPRECATED */
EXDL_EXTERN EXDLGLFOGCOORDFPROC                                          exdl_glFogCoordf;
EXDL_EXTERN EXDLGLFOGCOORDFVPROC                                         exdl_glFogCoordfv;
EXDL_EXTERN EXDLGLFOGCOORDDPROC                                          exdl_glFogCoordd;
EXDL_EXTERN EXDLGLFOGCOORDDVPROC                                         exdl_glFogCoorddv;
EXDL_EXTERN EXDLGLFOGCOORDPOINTERPROC                                    exdl_glFogCoordPointer;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3BPROC                                   exdl_glSecondaryColor3b;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3BVPROC                                  exdl_glSecondaryColor3bv;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3DPROC                                   exdl_glSecondaryColor3d;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3DVPROC                                  exdl_glSecondaryColor3dv;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3FPROC                                   exdl_glSecondaryColor3f;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3FVPROC                                  exdl_glSecondaryColor3fv;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3IPROC                                   exdl_glSecondaryColor3i;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3IVPROC                                  exdl_glSecondaryColor3iv;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3SPROC                                   exdl_glSecondaryColor3s;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3SVPROC                                  exdl_glSecondaryColor3sv;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3UBPROC                                  exdl_glSecondaryColor3ub;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3UBVPROC                                 exdl_glSecondaryColor3ubv;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3UIPROC                                  exdl_glSecondaryColor3ui;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3UIVPROC                                 exdl_glSecondaryColor3uiv;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3USPROC                                  exdl_glSecondaryColor3us;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3USVPROC                                 exdl_glSecondaryColor3usv;
EXDL_EXTERN EXDLGLSECONDARYCOLORPOINTERPROC                              exdl_glSecondaryColorPointer;
EXDL_EXTERN EXDLGLWINDOWPOS2DPROC                                        exdl_glWindowPos2d;
EXDL_EXTERN EXDLGLWINDOWPOS2DVPROC                                       exdl_glWindowPos2dv;
EXDL_EXTERN EXDLGLWINDOWPOS2FPROC                                        exdl_glWindowPos2f;
EXDL_EXTERN EXDLGLWINDOWPOS2FVPROC                                       exdl_glWindowPos2fv;
EXDL_EXTERN EXDLGLWINDOWPOS2IPROC                                        exdl_glWindowPos2i;
EXDL_EXTERN EXDLGLWINDOWPOS2IVPROC                                       exdl_glWindowPos2iv;
EXDL_EXTERN EXDLGLWINDOWPOS2SPROC                                        exdl_glWindowPos2s;
EXDL_EXTERN EXDLGLWINDOWPOS2SVPROC                                       exdl_glWindowPos2sv;
EXDL_EXTERN EXDLGLWINDOWPOS3DPROC                                        exdl_glWindowPos3d;
EXDL_EXTERN EXDLGLWINDOWPOS3DVPROC                                       exdl_glWindowPos3dv;
EXDL_EXTERN EXDLGLWINDOWPOS3FPROC                                        exdl_glWindowPos3f;
EXDL_EXTERN EXDLGLWINDOWPOS3FVPROC                                       exdl_glWindowPos3fv;
EXDL_EXTERN EXDLGLWINDOWPOS3IPROC                                        exdl_glWindowPos3i;
EXDL_EXTERN EXDLGLWINDOWPOS3IVPROC                                       exdl_glWindowPos3iv;
EXDL_EXTERN EXDLGLWINDOWPOS3SPROC                                        exdl_glWindowPos3s;
EXDL_EXTERN EXDLGLWINDOWPOS3SVPROC                                       exdl_glWindowPos3sv;
/* GL_VERSION_1_5 */
EXDL_EXTERN EXDLGLGENQUERIESPROC                                         exdl_glGenQueries;
EXDL_EXTERN EXDLGLDELETEQUERIESPROC                                      exdl_glDeleteQueries;
EXDL_EXTERN EXDLGLISQUERYPROC                                            exdl_glIsQuery;
EXDL_EXTERN EXDLGLBEGINQUERYPROC                                         exdl_glBeginQuery;
EXDL_EXTERN EXDLGLENDQUERYPROC                                           exdl_glEndQuery;
EXDL_EXTERN EXDLGLGETQUERYIVPROC                                         exdl_glGetQueryiv;
EXDL_EXTERN EXDLGLGETQUERYOBJECTIVPROC                                   exdl_glGetQueryObjectiv;
EXDL_EXTERN EXDLGLGETQUERYOBJECTUIVPROC                                  exdl_glGetQueryObjectuiv;
EXDL_EXTERN EXDLGLBINDBUFFERPROC                                         exdl_glBindBuffer;
EXDL_EXTERN EXDLGLDELETEBUFFERSPROC                                      exdl_glDeleteBuffers;
EXDL_EXTERN EXDLGLGENBUFFERSPROC                                         exdl_glGenBuffers;
EXDL_EXTERN EXDLGLISBUFFERPROC                                           exdl_glIsBuffer;
EXDL_EXTERN EXDLGLBUFFERDATAPROC                                         exdl_glBufferData;
EXDL_EXTERN EXDLGLBUFFERSUBDATAPROC                                      exdl_glBufferSubData;
EXDL_EXTERN EXDLGLGETBUFFERSUBDATAPROC                                   exdl_glGetBufferSubData;
EXDL_EXTERN EXDLGLMAPBUFFERPROC                                          exdl_glMapBuffer;
EXDL_EXTERN EXDLGLUNMAPBUFFERPROC                                        exdl_glUnmapBuffer;
EXDL_EXTERN EXDLGLGETBUFFERPARAMETERIVPROC                               exdl_glGetBufferParameteriv;
EXDL_EXTERN EXDLGLGETBUFFERPOINTERVPROC                                  exdl_glGetBufferPointerv;
/* GL_VERSION_2_0 */
EXDL_EXTERN EXDLGLBLENDEQUATIONSEPARATEPROC                              exdl_glBlendEquationSeparate;
EXDL_EXTERN EXDLGLDRAWBUFFERSPROC                                        exdl_glDrawBuffers;
EXDL_EXTERN EXDLGLSTENCILOPSEPARATEPROC                                  exdl_glStencilOpSeparate;
EXDL_EXTERN EXDLGLSTENCILFUNCSEPARATEPROC                                exdl_glStencilFuncSeparate;
EXDL_EXTERN EXDLGLSTENCILMASKSEPARATEPROC                                exdl_glStencilMaskSeparate;
EXDL_EXTERN EXDLGLATTACHSHADERPROC                                       exdl_glAttachShader;
EXDL_EXTERN EXDLGLBINDATTRIBLOCATIONPROC                                 exdl_glBindAttribLocation;
EXDL_EXTERN EXDLGLCOMPILESHADERPROC                                      exdl_glCompileShader;
EXDL_EXTERN EXDLGLCREATEPROGRAMPROC                                      exdl_glCreateProgram;
EXDL_EXTERN EXDLGLCREATESHADERPROC                                       exdl_glCreateShader;
EXDL_EXTERN EXDLGLDELETEPROGRAMPROC                                      exdl_glDeleteProgram;
EXDL_EXTERN EXDLGLDELETESHADERPROC                                       exdl_glDeleteShader;
EXDL_EXTERN EXDLGLDETACHSHADERPROC                                       exdl_glDetachShader;
EXDL_EXTERN EXDLGLDISABLEVERTEXATTRIBARRAYPROC                           exdl_glDisableVertexAttribArray;
EXDL_EXTERN EXDLGLENABLEVERTEXATTRIBARRAYPROC                            exdl_glEnableVertexAttribArray;
EXDL_EXTERN EXDLGLGETACTIVEATTRIBPROC                                    exdl_glGetActiveAttrib;
EXDL_EXTERN EXDLGLGETACTIVEUNIFORMPROC                                   exdl_glGetActiveUniform;
EXDL_EXTERN EXDLGLGETATTACHEDSHADERSPROC                                 exdl_glGetAttachedShaders;
EXDL_EXTERN EXDLGLGETATTRIBLOCATIONPROC                                  exdl_glGetAttribLocation;
EXDL_EXTERN EXDLGLGETPROGRAMIVPROC                                       exdl_glGetProgramiv;
EXDL_EXTERN EXDLGLGETPROGRAMINFOLOGPROC                                  exdl_glGetProgramInfoLog;
EXDL_EXTERN EXDLGLGETSHADERIVPROC                                        exdl_glGetShaderiv;
EXDL_EXTERN EXDLGLGETSHADERINFOLOGPROC                                   exdl_glGetShaderInfoLog;
EXDL_EXTERN EXDLGLGETSHADERSOURCEPROC                                    exdl_glGetShaderSource;
EXDL_EXTERN EXDLGLGETUNIFORMLOCATIONPROC                                 exdl_glGetUniformLocation;
EXDL_EXTERN EXDLGLGETUNIFORMFVPROC                                       exdl_glGetUniformfv;
EXDL_EXTERN EXDLGLGETUNIFORMIVPROC                                       exdl_glGetUniformiv;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBDVPROC                                  exdl_glGetVertexAttribdv;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBFVPROC                                  exdl_glGetVertexAttribfv;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBIVPROC                                  exdl_glGetVertexAttribiv;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBPOINTERVPROC                            exdl_glGetVertexAttribPointerv;
EXDL_EXTERN EXDLGLISPROGRAMPROC                                          exdl_glIsProgram;
EXDL_EXTERN EXDLGLISSHADERPROC                                           exdl_glIsShader;
EXDL_EXTERN EXDLGLLINKPROGRAMPROC                                        exdl_glLinkProgram;
EXDL_EXTERN EXDLGLSHADERSOURCEPROC                                       exdl_glShaderSource;
EXDL_EXTERN EXDLGLUSEPROGRAMPROC                                         exdl_glUseProgram;
EXDL_EXTERN EXDLGLUNIFORM1FPROC                                          exdl_glUniform1f;
EXDL_EXTERN EXDLGLUNIFORM2FPROC                                          exdl_glUniform2f;
EXDL_EXTERN EXDLGLUNIFORM3FPROC                                          exdl_glUniform3f;
EXDL_EXTERN EXDLGLUNIFORM4FPROC                                          exdl_glUniform4f;
EXDL_EXTERN EXDLGLUNIFORM1IPROC                                          exdl_glUniform1i;
EXDL_EXTERN EXDLGLUNIFORM2IPROC                                          exdl_glUniform2i;
EXDL_EXTERN EXDLGLUNIFORM3IPROC                                          exdl_glUniform3i;
EXDL_EXTERN EXDLGLUNIFORM4IPROC                                          exdl_glUniform4i;
EXDL_EXTERN EXDLGLUNIFORM1FVPROC                                         exdl_glUniform1fv;
EXDL_EXTERN EXDLGLUNIFORM2FVPROC                                         exdl_glUniform2fv;
EXDL_EXTERN EXDLGLUNIFORM3FVPROC                                         exdl_glUniform3fv;
EXDL_EXTERN EXDLGLUNIFORM4FVPROC                                         exdl_glUniform4fv;
EXDL_EXTERN EXDLGLUNIFORM1IVPROC                                         exdl_glUniform1iv;
EXDL_EXTERN EXDLGLUNIFORM2IVPROC                                         exdl_glUniform2iv;
EXDL_EXTERN EXDLGLUNIFORM3IVPROC                                         exdl_glUniform3iv;
EXDL_EXTERN EXDLGLUNIFORM4IVPROC                                         exdl_glUniform4iv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX2FVPROC                                   exdl_glUniformMatrix2fv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX3FVPROC                                   exdl_glUniformMatrix3fv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX4FVPROC                                   exdl_glUniformMatrix4fv;
EXDL_EXTERN EXDLGLVALIDATEPROGRAMPROC                                    exdl_glValidateProgram;
EXDL_EXTERN EXDLGLVERTEXATTRIB1DPROC                                     exdl_glVertexAttrib1d;
EXDL_EXTERN EXDLGLVERTEXATTRIB1DVPROC                                    exdl_glVertexAttrib1dv;
EXDL_EXTERN EXDLGLVERTEXATTRIB1FPROC                                     exdl_glVertexAttrib1f;
EXDL_EXTERN EXDLGLVERTEXATTRIB1FVPROC                                    exdl_glVertexAttrib1fv;
EXDL_EXTERN EXDLGLVERTEXATTRIB1SPROC                                     exdl_glVertexAttrib1s;
EXDL_EXTERN EXDLGLVERTEXATTRIB1SVPROC                                    exdl_glVertexAttrib1sv;
EXDL_EXTERN EXDLGLVERTEXATTRIB2DPROC                                     exdl_glVertexAttrib2d;
EXDL_EXTERN EXDLGLVERTEXATTRIB2DVPROC                                    exdl_glVertexAttrib2dv;
EXDL_EXTERN EXDLGLVERTEXATTRIB2FPROC                                     exdl_glVertexAttrib2f;
EXDL_EXTERN EXDLGLVERTEXATTRIB2FVPROC                                    exdl_glVertexAttrib2fv;
EXDL_EXTERN EXDLGLVERTEXATTRIB2SPROC                                     exdl_glVertexAttrib2s;
EXDL_EXTERN EXDLGLVERTEXATTRIB2SVPROC                                    exdl_glVertexAttrib2sv;
EXDL_EXTERN EXDLGLVERTEXATTRIB3DPROC                                     exdl_glVertexAttrib3d;
EXDL_EXTERN EXDLGLVERTEXATTRIB3DVPROC                                    exdl_glVertexAttrib3dv;
EXDL_EXTERN EXDLGLVERTEXATTRIB3FPROC                                     exdl_glVertexAttrib3f;
EXDL_EXTERN EXDLGLVERTEXATTRIB3FVPROC                                    exdl_glVertexAttrib3fv;
EXDL_EXTERN EXDLGLVERTEXATTRIB3SPROC                                     exdl_glVertexAttrib3s;
EXDL_EXTERN EXDLGLVERTEXATTRIB3SVPROC                                    exdl_glVertexAttrib3sv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NBVPROC                                   exdl_glVertexAttrib4Nbv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NIVPROC                                   exdl_glVertexAttrib4Niv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NSVPROC                                   exdl_glVertexAttrib4Nsv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NUBPROC                                   exdl_glVertexAttrib4Nub;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NUBVPROC                                  exdl_glVertexAttrib4Nubv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NUIVPROC                                  exdl_glVertexAttrib4Nuiv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NUSVPROC                                  exdl_glVertexAttrib4Nusv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4BVPROC                                    exdl_glVertexAttrib4bv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4DPROC                                     exdl_glVertexAttrib4d;
EXDL_EXTERN EXDLGLVERTEXATTRIB4DVPROC                                    exdl_glVertexAttrib4dv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4FPROC                                     exdl_glVertexAttrib4f;
EXDL_EXTERN EXDLGLVERTEXATTRIB4FVPROC                                    exdl_glVertexAttrib4fv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4IVPROC                                    exdl_glVertexAttrib4iv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4SPROC                                     exdl_glVertexAttrib4s;
EXDL_EXTERN EXDLGLVERTEXATTRIB4SVPROC                                    exdl_glVertexAttrib4sv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4UBVPROC                                   exdl_glVertexAttrib4ubv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4UIVPROC                                   exdl_glVertexAttrib4uiv;
EXDL_EXTERN EXDLGLVERTEXATTRIB4USVPROC                                   exdl_glVertexAttrib4usv;
EXDL_EXTERN EXDLGLVERTEXATTRIBPOINTERPROC                                exdl_glVertexAttribPointer;
/* GL_VERSION_2_1 */
EXDL_EXTERN EXDLGLUNIFORMMATRIX2X3FVPROC                                 exdl_glUniformMatrix2x3fv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX3X2FVPROC                                 exdl_glUniformMatrix3x2fv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX2X4FVPROC                                 exdl_glUniformMatrix2x4fv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX4X2FVPROC                                 exdl_glUniformMatrix4x2fv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX3X4FVPROC                                 exdl_glUniformMatrix3x4fv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX4X3FVPROC                                 exdl_glUniformMatrix4x3fv;
/* GL_VERSION_3_0 */
EXDL_EXTERN EXDLGLCOLORMASKIPROC                                         exdl_glColorMaski;
EXDL_EXTERN EXDLGLGETBOOLEANI_VPROC                                      exdl_glGetBooleani_v;
EXDL_EXTERN EXDLGLGETINTEGERI_VPROC                                      exdl_glGetIntegeri_v;
EXDL_EXTERN EXDLGLENABLEIPROC                                            exdl_glEnablei;
EXDL_EXTERN EXDLGLDISABLEIPROC                                           exdl_glDisablei;
EXDL_EXTERN EXDLGLISENABLEDIPROC                                         exdl_glIsEnabledi;
EXDL_EXTERN EXDLGLBEGINTRANSFORMFEEDBACKPROC                             exdl_glBeginTransformFeedback;
EXDL_EXTERN EXDLGLENDTRANSFORMFEEDBACKPROC                               exdl_glEndTransformFeedback;
EXDL_EXTERN EXDLGLBINDBUFFERRANGEPROC                                    exdl_glBindBufferRange;
EXDL_EXTERN EXDLGLBINDBUFFERBASEPROC                                     exdl_glBindBufferBase;
EXDL_EXTERN EXDLGLTRANSFORMFEEDBACKVARYINGSPROC                          exdl_glTransformFeedbackVaryings;
EXDL_EXTERN EXDLGLGETTRANSFORMFEEDBACKVARYINGPROC                        exdl_glGetTransformFeedbackVarying;
EXDL_EXTERN EXDLGLCLAMPCOLORPROC                                         exdl_glClampColor;
EXDL_EXTERN EXDLGLBEGINCONDITIONALRENDERPROC                             exdl_glBeginConditionalRender;
EXDL_EXTERN EXDLGLENDCONDITIONALRENDERPROC                               exdl_glEndConditionalRender;
EXDL_EXTERN EXDLGLVERTEXATTRIBIPOINTERPROC                               exdl_glVertexAttribIPointer;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBIIVPROC                                 exdl_glGetVertexAttribIiv;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBIUIVPROC                                exdl_glGetVertexAttribIuiv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI1IPROC                                    exdl_glVertexAttribI1i;
EXDL_EXTERN EXDLGLVERTEXATTRIBI2IPROC                                    exdl_glVertexAttribI2i;
EXDL_EXTERN EXDLGLVERTEXATTRIBI3IPROC                                    exdl_glVertexAttribI3i;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4IPROC                                    exdl_glVertexAttribI4i;
EXDL_EXTERN EXDLGLVERTEXATTRIBI1UIPROC                                   exdl_glVertexAttribI1ui;
EXDL_EXTERN EXDLGLVERTEXATTRIBI2UIPROC                                   exdl_glVertexAttribI2ui;
EXDL_EXTERN EXDLGLVERTEXATTRIBI3UIPROC                                   exdl_glVertexAttribI3ui;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4UIPROC                                   exdl_glVertexAttribI4ui;
EXDL_EXTERN EXDLGLVERTEXATTRIBI1IVPROC                                   exdl_glVertexAttribI1iv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI2IVPROC                                   exdl_glVertexAttribI2iv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI3IVPROC                                   exdl_glVertexAttribI3iv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4IVPROC                                   exdl_glVertexAttribI4iv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI1UIVPROC                                  exdl_glVertexAttribI1uiv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI2UIVPROC                                  exdl_glVertexAttribI2uiv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI3UIVPROC                                  exdl_glVertexAttribI3uiv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4UIVPROC                                  exdl_glVertexAttribI4uiv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4BVPROC                                   exdl_glVertexAttribI4bv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4SVPROC                                   exdl_glVertexAttribI4sv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4UBVPROC                                  exdl_glVertexAttribI4ubv;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4USVPROC                                  exdl_glVertexAttribI4usv;
EXDL_EXTERN EXDLGLGETUNIFORMUIVPROC                                      exdl_glGetUniformuiv;
EXDL_EXTERN EXDLGLBINDFRAGDATALOCATIONPROC                               exdl_glBindFragDataLocation;
EXDL_EXTERN EXDLGLGETFRAGDATALOCATIONPROC                                exdl_glGetFragDataLocation;
EXDL_EXTERN EXDLGLUNIFORM1UIPROC                                         exdl_glUniform1ui;
EXDL_EXTERN EXDLGLUNIFORM2UIPROC                                         exdl_glUniform2ui;
EXDL_EXTERN EXDLGLUNIFORM3UIPROC                                         exdl_glUniform3ui;
EXDL_EXTERN EXDLGLUNIFORM4UIPROC                                         exdl_glUniform4ui;
EXDL_EXTERN EXDLGLUNIFORM1UIVPROC                                        exdl_glUniform1uiv;
EXDL_EXTERN EXDLGLUNIFORM2UIVPROC                                        exdl_glUniform2uiv;
EXDL_EXTERN EXDLGLUNIFORM3UIVPROC                                        exdl_glUniform3uiv;
EXDL_EXTERN EXDLGLUNIFORM4UIVPROC                                        exdl_glUniform4uiv;
EXDL_EXTERN EXDLGLTEXPARAMETERIIVPROC                                    exdl_glTexParameterIiv;
EXDL_EXTERN EXDLGLTEXPARAMETERIUIVPROC                                   exdl_glTexParameterIuiv;
EXDL_EXTERN EXDLGLGETTEXPARAMETERIIVPROC                                 exdl_glGetTexParameterIiv;
EXDL_EXTERN EXDLGLGETTEXPARAMETERIUIVPROC                                exdl_glGetTexParameterIuiv;
EXDL_EXTERN EXDLGLCLEARBUFFERIVPROC                                      exdl_glClearBufferiv;
EXDL_EXTERN EXDLGLCLEARBUFFERUIVPROC                                     exdl_glClearBufferuiv;
EXDL_EXTERN EXDLGLCLEARBUFFERFVPROC                                      exdl_glClearBufferfv;
EXDL_EXTERN EXDLGLCLEARBUFFERFIPROC                                      exdl_glClearBufferfi;
EXDL_EXTERN EXDLGLGETSTRINGIPROC                                         exdl_glGetStringi;
/* GL_VERSION_3_1 */
EXDL_EXTERN EXDLGLDRAWARRAYSINSTANCEDPROC                                exdl_glDrawArraysInstanced;
EXDL_EXTERN EXDLGLDRAWELEMENTSINSTANCEDPROC                              exdl_glDrawElementsInstanced;
EXDL_EXTERN EXDLGLTEXBUFFERPROC                                          exdl_glTexBuffer;
EXDL_EXTERN EXDLGLPRIMITIVERESTARTINDEXPROC                              exdl_glPrimitiveRestartIndex;
/* GL_VERSION_3_2 */
EXDL_EXTERN EXDLGLGETINTEGER64I_VPROC                                    exdl_glGetInteger64i_v;
EXDL_EXTERN EXDLGLGETBUFFERPARAMETERI64VPROC                             exdl_glGetBufferParameteri64v;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTUREPROC                                 exdl_glFramebufferTexture;
/* GL_VERSION_3_3 */
EXDL_EXTERN EXDLGLVERTEXATTRIBDIVISORPROC                                exdl_glVertexAttribDivisor;
/* GL_VERSION_4_0 */
EXDL_EXTERN EXDLGLMINSAMPLESHADINGPROC                                   exdl_glMinSampleShading;
EXDL_EXTERN EXDLGLBLENDEQUATIONIPROC                                     exdl_glBlendEquationi;
EXDL_EXTERN EXDLGLBLENDEQUATIONSEPARATEIPROC                             exdl_glBlendEquationSeparatei;
EXDL_EXTERN EXDLGLBLENDFUNCIPROC                                         exdl_glBlendFunci;
EXDL_EXTERN EXDLGLBLENDFUNCSEPARATEIPROC                                 exdl_glBlendFuncSeparatei;
/* GL_VERSION_4_1 */
/* GL_VERSION_4_2 */
/* GL_ARB_multitexture */
EXDL_EXTERN EXDLGLACTIVETEXTUREARBPROC                                   exdl_glActiveTextureARB;
EXDL_EXTERN EXDLGLCLIENTACTIVETEXTUREARBPROC                             exdl_glClientActiveTextureARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD1DARBPROC                                 exdl_glMultiTexCoord1dARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD1DVARBPROC                                exdl_glMultiTexCoord1dvARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD1FARBPROC                                 exdl_glMultiTexCoord1fARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD1FVARBPROC                                exdl_glMultiTexCoord1fvARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD1IARBPROC                                 exdl_glMultiTexCoord1iARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD1IVARBPROC                                exdl_glMultiTexCoord1ivARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD1SARBPROC                                 exdl_glMultiTexCoord1sARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD1SVARBPROC                                exdl_glMultiTexCoord1svARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD2DARBPROC                                 exdl_glMultiTexCoord2dARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD2DVARBPROC                                exdl_glMultiTexCoord2dvARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD2FARBPROC                                 exdl_glMultiTexCoord2fARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD2FVARBPROC                                exdl_glMultiTexCoord2fvARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD2IARBPROC                                 exdl_glMultiTexCoord2iARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD2IVARBPROC                                exdl_glMultiTexCoord2ivARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD2SARBPROC                                 exdl_glMultiTexCoord2sARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD2SVARBPROC                                exdl_glMultiTexCoord2svARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD3DARBPROC                                 exdl_glMultiTexCoord3dARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD3DVARBPROC                                exdl_glMultiTexCoord3dvARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD3FARBPROC                                 exdl_glMultiTexCoord3fARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD3FVARBPROC                                exdl_glMultiTexCoord3fvARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD3IARBPROC                                 exdl_glMultiTexCoord3iARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD3IVARBPROC                                exdl_glMultiTexCoord3ivARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD3SARBPROC                                 exdl_glMultiTexCoord3sARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD3SVARBPROC                                exdl_glMultiTexCoord3svARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD4DARBPROC                                 exdl_glMultiTexCoord4dARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD4DVARBPROC                                exdl_glMultiTexCoord4dvARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD4FARBPROC                                 exdl_glMultiTexCoord4fARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD4FVARBPROC                                exdl_glMultiTexCoord4fvARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD4IARBPROC                                 exdl_glMultiTexCoord4iARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD4IVARBPROC                                exdl_glMultiTexCoord4ivARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD4SARBPROC                                 exdl_glMultiTexCoord4sARB;
EXDL_EXTERN EXDLGLMULTITEXCOORD4SVARBPROC                                exdl_glMultiTexCoord4svARB;
/* GL_ARB_transpose_matrix */
EXDL_EXTERN EXDLGLLOADTRANSPOSEMATRIXFARBPROC                            exdl_glLoadTransposeMatrixfARB;
EXDL_EXTERN EXDLGLLOADTRANSPOSEMATRIXDARBPROC                            exdl_glLoadTransposeMatrixdARB;
EXDL_EXTERN EXDLGLMULTTRANSPOSEMATRIXFARBPROC                            exdl_glMultTransposeMatrixfARB;
EXDL_EXTERN EXDLGLMULTTRANSPOSEMATRIXDARBPROC                            exdl_glMultTransposeMatrixdARB;
/* GL_ARB_multisample */
EXDL_EXTERN EXDLGLSAMPLECOVERAGEARBPROC                                  exdl_glSampleCoverageARB;
/* GL_ARB_texture_env_add */
/* GL_ARB_texture_cube_map */
/* GL_ARB_texture_compression */
EXDL_EXTERN EXDLGLCOMPRESSEDTEXIMAGE3DARBPROC                            exdl_glCompressedTexImage3DARB;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXIMAGE2DARBPROC                            exdl_glCompressedTexImage2DARB;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXIMAGE1DARBPROC                            exdl_glCompressedTexImage1DARB;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXSUBIMAGE3DARBPROC                         exdl_glCompressedTexSubImage3DARB;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXSUBIMAGE2DARBPROC                         exdl_glCompressedTexSubImage2DARB;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXSUBIMAGE1DARBPROC                         exdl_glCompressedTexSubImage1DARB;
EXDL_EXTERN EXDLGLGETCOMPRESSEDTEXIMAGEARBPROC                           exdl_glGetCompressedTexImageARB;
/* GL_ARB_texture_border_clamp */
/* GL_ARB_point_parameters */
EXDL_EXTERN EXDLGLPOINTPARAMETERFARBPROC                                 exdl_glPointParameterfARB;
EXDL_EXTERN EXDLGLPOINTPARAMETERFVARBPROC                                exdl_glPointParameterfvARB;
/* GL_ARB_vertex_blend */
EXDL_EXTERN EXDLGLWEIGHTBVARBPROC                                        exdl_glWeightbvARB;
EXDL_EXTERN EXDLGLWEIGHTSVARBPROC                                        exdl_glWeightsvARB;
EXDL_EXTERN EXDLGLWEIGHTIVARBPROC                                        exdl_glWeightivARB;
EXDL_EXTERN EXDLGLWEIGHTFVARBPROC                                        exdl_glWeightfvARB;
EXDL_EXTERN EXDLGLWEIGHTDVARBPROC                                        exdl_glWeightdvARB;
EXDL_EXTERN EXDLGLWEIGHTUBVARBPROC                                       exdl_glWeightubvARB;
EXDL_EXTERN EXDLGLWEIGHTUSVARBPROC                                       exdl_glWeightusvARB;
EXDL_EXTERN EXDLGLWEIGHTUIVARBPROC                                       exdl_glWeightuivARB;
EXDL_EXTERN EXDLGLWEIGHTPOINTERARBPROC                                   exdl_glWeightPointerARB;
EXDL_EXTERN EXDLGLVERTEXBLENDARBPROC                                     exdl_glVertexBlendARB;
/* GL_ARB_matrix_palette */
EXDL_EXTERN EXDLGLCURRENTPALETTEMATRIXARBPROC                            exdl_glCurrentPaletteMatrixARB;
EXDL_EXTERN EXDLGLMATRIXINDEXUBVARBPROC                                  exdl_glMatrixIndexubvARB;
EXDL_EXTERN EXDLGLMATRIXINDEXUSVARBPROC                                  exdl_glMatrixIndexusvARB;
EXDL_EXTERN EXDLGLMATRIXINDEXUIVARBPROC                                  exdl_glMatrixIndexuivARB;
EXDL_EXTERN EXDLGLMATRIXINDEXPOINTERARBPROC                              exdl_glMatrixIndexPointerARB;
/* GL_ARB_texture_env_combine */
/* GL_ARB_texture_env_crossbar */
/* GL_ARB_texture_env_dot3 */
/* GL_ARB_texture_mirrored_repeat */
/* GL_ARB_depth_texture */
/* GL_ARB_shadow */
/* GL_ARB_shadow_ambient */
/* GL_ARB_window_pos */
EXDL_EXTERN EXDLGLWINDOWPOS2DARBPROC                                     exdl_glWindowPos2dARB;
EXDL_EXTERN EXDLGLWINDOWPOS2DVARBPROC                                    exdl_glWindowPos2dvARB;
EXDL_EXTERN EXDLGLWINDOWPOS2FARBPROC                                     exdl_glWindowPos2fARB;
EXDL_EXTERN EXDLGLWINDOWPOS2FVARBPROC                                    exdl_glWindowPos2fvARB;
EXDL_EXTERN EXDLGLWINDOWPOS2IARBPROC                                     exdl_glWindowPos2iARB;
EXDL_EXTERN EXDLGLWINDOWPOS2IVARBPROC                                    exdl_glWindowPos2ivARB;
EXDL_EXTERN EXDLGLWINDOWPOS2SARBPROC                                     exdl_glWindowPos2sARB;
EXDL_EXTERN EXDLGLWINDOWPOS2SVARBPROC                                    exdl_glWindowPos2svARB;
EXDL_EXTERN EXDLGLWINDOWPOS3DARBPROC                                     exdl_glWindowPos3dARB;
EXDL_EXTERN EXDLGLWINDOWPOS3DVARBPROC                                    exdl_glWindowPos3dvARB;
EXDL_EXTERN EXDLGLWINDOWPOS3FARBPROC                                     exdl_glWindowPos3fARB;
EXDL_EXTERN EXDLGLWINDOWPOS3FVARBPROC                                    exdl_glWindowPos3fvARB;
EXDL_EXTERN EXDLGLWINDOWPOS3IARBPROC                                     exdl_glWindowPos3iARB;
EXDL_EXTERN EXDLGLWINDOWPOS3IVARBPROC                                    exdl_glWindowPos3ivARB;
EXDL_EXTERN EXDLGLWINDOWPOS3SARBPROC                                     exdl_glWindowPos3sARB;
EXDL_EXTERN EXDLGLWINDOWPOS3SVARBPROC                                    exdl_glWindowPos3svARB;
/* GL_ARB_vertex_program */
EXDL_EXTERN EXDLGLVERTEXATTRIB1DARBPROC                                  exdl_glVertexAttrib1dARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB1DVARBPROC                                 exdl_glVertexAttrib1dvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB1FARBPROC                                  exdl_glVertexAttrib1fARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB1FVARBPROC                                 exdl_glVertexAttrib1fvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB1SARBPROC                                  exdl_glVertexAttrib1sARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB1SVARBPROC                                 exdl_glVertexAttrib1svARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB2DARBPROC                                  exdl_glVertexAttrib2dARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB2DVARBPROC                                 exdl_glVertexAttrib2dvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB2FARBPROC                                  exdl_glVertexAttrib2fARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB2FVARBPROC                                 exdl_glVertexAttrib2fvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB2SARBPROC                                  exdl_glVertexAttrib2sARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB2SVARBPROC                                 exdl_glVertexAttrib2svARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB3DARBPROC                                  exdl_glVertexAttrib3dARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB3DVARBPROC                                 exdl_glVertexAttrib3dvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB3FARBPROC                                  exdl_glVertexAttrib3fARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB3FVARBPROC                                 exdl_glVertexAttrib3fvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB3SARBPROC                                  exdl_glVertexAttrib3sARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB3SVARBPROC                                 exdl_glVertexAttrib3svARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NBVARBPROC                                exdl_glVertexAttrib4NbvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NIVARBPROC                                exdl_glVertexAttrib4NivARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NSVARBPROC                                exdl_glVertexAttrib4NsvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NUBARBPROC                                exdl_glVertexAttrib4NubARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NUBVARBPROC                               exdl_glVertexAttrib4NubvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NUIVARBPROC                               exdl_glVertexAttrib4NuivARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4NUSVARBPROC                               exdl_glVertexAttrib4NusvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4BVARBPROC                                 exdl_glVertexAttrib4bvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4DARBPROC                                  exdl_glVertexAttrib4dARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4DVARBPROC                                 exdl_glVertexAttrib4dvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4FARBPROC                                  exdl_glVertexAttrib4fARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4FVARBPROC                                 exdl_glVertexAttrib4fvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4IVARBPROC                                 exdl_glVertexAttrib4ivARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4SARBPROC                                  exdl_glVertexAttrib4sARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4SVARBPROC                                 exdl_glVertexAttrib4svARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4UBVARBPROC                                exdl_glVertexAttrib4ubvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4UIVARBPROC                                exdl_glVertexAttrib4uivARB;
EXDL_EXTERN EXDLGLVERTEXATTRIB4USVARBPROC                                exdl_glVertexAttrib4usvARB;
EXDL_EXTERN EXDLGLVERTEXATTRIBPOINTERARBPROC                             exdl_glVertexAttribPointerARB;
EXDL_EXTERN EXDLGLENABLEVERTEXATTRIBARRAYARBPROC                         exdl_glEnableVertexAttribArrayARB;
EXDL_EXTERN EXDLGLDISABLEVERTEXATTRIBARRAYARBPROC                        exdl_glDisableVertexAttribArrayARB;
EXDL_EXTERN EXDLGLPROGRAMSTRINGARBPROC                                   exdl_glProgramStringARB;
EXDL_EXTERN EXDLGLBINDPROGRAMARBPROC                                     exdl_glBindProgramARB;
EXDL_EXTERN EXDLGLDELETEPROGRAMSARBPROC                                  exdl_glDeleteProgramsARB;
EXDL_EXTERN EXDLGLGENPROGRAMSARBPROC                                     exdl_glGenProgramsARB;
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETER4DARBPROC                           exdl_glProgramEnvParameter4dARB;
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETER4DVARBPROC                          exdl_glProgramEnvParameter4dvARB;
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETER4FARBPROC                           exdl_glProgramEnvParameter4fARB;
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETER4FVARBPROC                          exdl_glProgramEnvParameter4fvARB;
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETER4DARBPROC                         exdl_glProgramLocalParameter4dARB;
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETER4DVARBPROC                        exdl_glProgramLocalParameter4dvARB;
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETER4FARBPROC                         exdl_glProgramLocalParameter4fARB;
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETER4FVARBPROC                        exdl_glProgramLocalParameter4fvARB;
EXDL_EXTERN EXDLGLGETPROGRAMENVPARAMETERDVARBPROC                        exdl_glGetProgramEnvParameterdvARB;
EXDL_EXTERN EXDLGLGETPROGRAMENVPARAMETERFVARBPROC                        exdl_glGetProgramEnvParameterfvARB;
EXDL_EXTERN EXDLGLGETPROGRAMLOCALPARAMETERDVARBPROC                      exdl_glGetProgramLocalParameterdvARB;
EXDL_EXTERN EXDLGLGETPROGRAMLOCALPARAMETERFVARBPROC                      exdl_glGetProgramLocalParameterfvARB;
EXDL_EXTERN EXDLGLGETPROGRAMIVARBPROC                                    exdl_glGetProgramivARB;
EXDL_EXTERN EXDLGLGETPROGRAMSTRINGARBPROC                                exdl_glGetProgramStringARB;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBDVARBPROC                               exdl_glGetVertexAttribdvARB;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBFVARBPROC                               exdl_glGetVertexAttribfvARB;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBIVARBPROC                               exdl_glGetVertexAttribivARB;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBPOINTERVARBPROC                         exdl_glGetVertexAttribPointervARB;
EXDL_EXTERN EXDLGLISPROGRAMARBPROC                                       exdl_glIsProgramARB;
/* GL_ARB_fragment_program */
/* GL_ARB_vertex_buffer_object */
EXDL_EXTERN EXDLGLBINDBUFFERARBPROC                                      exdl_glBindBufferARB;
EXDL_EXTERN EXDLGLDELETEBUFFERSARBPROC                                   exdl_glDeleteBuffersARB;
EXDL_EXTERN EXDLGLGENBUFFERSARBPROC                                      exdl_glGenBuffersARB;
EXDL_EXTERN EXDLGLISBUFFERARBPROC                                        exdl_glIsBufferARB;
EXDL_EXTERN EXDLGLBUFFERDATAARBPROC                                      exdl_glBufferDataARB;
EXDL_EXTERN EXDLGLBUFFERSUBDATAARBPROC                                   exdl_glBufferSubDataARB;
EXDL_EXTERN EXDLGLGETBUFFERSUBDATAARBPROC                                exdl_glGetBufferSubDataARB;
EXDL_EXTERN EXDLGLMAPBUFFERARBPROC                                       exdl_glMapBufferARB;
EXDL_EXTERN EXDLGLUNMAPBUFFERARBPROC                                     exdl_glUnmapBufferARB;
EXDL_EXTERN EXDLGLGETBUFFERPARAMETERIVARBPROC                            exdl_glGetBufferParameterivARB;
EXDL_EXTERN EXDLGLGETBUFFERPOINTERVARBPROC                               exdl_glGetBufferPointervARB;
/* GL_ARB_occlusion_query */
EXDL_EXTERN EXDLGLGENQUERIESARBPROC                                      exdl_glGenQueriesARB;
EXDL_EXTERN EXDLGLDELETEQUERIESARBPROC                                   exdl_glDeleteQueriesARB;
EXDL_EXTERN EXDLGLISQUERYARBPROC                                         exdl_glIsQueryARB;
EXDL_EXTERN EXDLGLBEGINQUERYARBPROC                                      exdl_glBeginQueryARB;
EXDL_EXTERN EXDLGLENDQUERYARBPROC                                        exdl_glEndQueryARB;
EXDL_EXTERN EXDLGLGETQUERYIVARBPROC                                      exdl_glGetQueryivARB;
EXDL_EXTERN EXDLGLGETQUERYOBJECTIVARBPROC                                exdl_glGetQueryObjectivARB;
EXDL_EXTERN EXDLGLGETQUERYOBJECTUIVARBPROC                               exdl_glGetQueryObjectuivARB;
/* GL_ARB_shader_objects */
EXDL_EXTERN EXDLGLDELETEOBJECTARBPROC                                    exdl_glDeleteObjectARB;
EXDL_EXTERN EXDLGLGETHANDLEARBPROC                                       exdl_glGetHandleARB;
EXDL_EXTERN EXDLGLDETACHOBJECTARBPROC                                    exdl_glDetachObjectARB;
EXDL_EXTERN EXDLGLCREATESHADEROBJECTARBPROC                              exdl_glCreateShaderObjectARB;
EXDL_EXTERN EXDLGLSHADERSOURCEARBPROC                                    exdl_glShaderSourceARB;
EXDL_EXTERN EXDLGLCOMPILESHADERARBPROC                                   exdl_glCompileShaderARB;
EXDL_EXTERN EXDLGLCREATEPROGRAMOBJECTARBPROC                             exdl_glCreateProgramObjectARB;
EXDL_EXTERN EXDLGLATTACHOBJECTARBPROC                                    exdl_glAttachObjectARB;
EXDL_EXTERN EXDLGLLINKPROGRAMARBPROC                                     exdl_glLinkProgramARB;
EXDL_EXTERN EXDLGLUSEPROGRAMOBJECTARBPROC                                exdl_glUseProgramObjectARB;
EXDL_EXTERN EXDLGLVALIDATEPROGRAMARBPROC                                 exdl_glValidateProgramARB;
EXDL_EXTERN EXDLGLUNIFORM1FARBPROC                                       exdl_glUniform1fARB;
EXDL_EXTERN EXDLGLUNIFORM2FARBPROC                                       exdl_glUniform2fARB;
EXDL_EXTERN EXDLGLUNIFORM3FARBPROC                                       exdl_glUniform3fARB;
EXDL_EXTERN EXDLGLUNIFORM4FARBPROC                                       exdl_glUniform4fARB;
EXDL_EXTERN EXDLGLUNIFORM1IARBPROC                                       exdl_glUniform1iARB;
EXDL_EXTERN EXDLGLUNIFORM2IARBPROC                                       exdl_glUniform2iARB;
EXDL_EXTERN EXDLGLUNIFORM3IARBPROC                                       exdl_glUniform3iARB;
EXDL_EXTERN EXDLGLUNIFORM4IARBPROC                                       exdl_glUniform4iARB;
EXDL_EXTERN EXDLGLUNIFORM1FVARBPROC                                      exdl_glUniform1fvARB;
EXDL_EXTERN EXDLGLUNIFORM2FVARBPROC                                      exdl_glUniform2fvARB;
EXDL_EXTERN EXDLGLUNIFORM3FVARBPROC                                      exdl_glUniform3fvARB;
EXDL_EXTERN EXDLGLUNIFORM4FVARBPROC                                      exdl_glUniform4fvARB;
EXDL_EXTERN EXDLGLUNIFORM1IVARBPROC                                      exdl_glUniform1ivARB;
EXDL_EXTERN EXDLGLUNIFORM2IVARBPROC                                      exdl_glUniform2ivARB;
EXDL_EXTERN EXDLGLUNIFORM3IVARBPROC                                      exdl_glUniform3ivARB;
EXDL_EXTERN EXDLGLUNIFORM4IVARBPROC                                      exdl_glUniform4ivARB;
EXDL_EXTERN EXDLGLUNIFORMMATRIX2FVARBPROC                                exdl_glUniformMatrix2fvARB;
EXDL_EXTERN EXDLGLUNIFORMMATRIX3FVARBPROC                                exdl_glUniformMatrix3fvARB;
EXDL_EXTERN EXDLGLUNIFORMMATRIX4FVARBPROC                                exdl_glUniformMatrix4fvARB;
EXDL_EXTERN EXDLGLGETOBJECTPARAMETERFVARBPROC                            exdl_glGetObjectParameterfvARB;
EXDL_EXTERN EXDLGLGETOBJECTPARAMETERIVARBPROC                            exdl_glGetObjectParameterivARB;
EXDL_EXTERN EXDLGLGETINFOLOGARBPROC                                      exdl_glGetInfoLogARB;
EXDL_EXTERN EXDLGLGETATTACHEDOBJECTSARBPROC                              exdl_glGetAttachedObjectsARB;
EXDL_EXTERN EXDLGLGETUNIFORMLOCATIONARBPROC                              exdl_glGetUniformLocationARB;
EXDL_EXTERN EXDLGLGETACTIVEUNIFORMARBPROC                                exdl_glGetActiveUniformARB;
EXDL_EXTERN EXDLGLGETUNIFORMFVARBPROC                                    exdl_glGetUniformfvARB;
EXDL_EXTERN EXDLGLGETUNIFORMIVARBPROC                                    exdl_glGetUniformivARB;
EXDL_EXTERN EXDLGLGETSHADERSOURCEARBPROC                                 exdl_glGetShaderSourceARB;
/* GL_ARB_vertex_shader */
EXDL_EXTERN EXDLGLBINDATTRIBLOCATIONARBPROC                              exdl_glBindAttribLocationARB;
EXDL_EXTERN EXDLGLGETACTIVEATTRIBARBPROC                                 exdl_glGetActiveAttribARB;
EXDL_EXTERN EXDLGLGETATTRIBLOCATIONARBPROC                               exdl_glGetAttribLocationARB;
/* GL_ARB_fragment_shader */
/* GL_ARB_shading_language_100 */
/* GL_ARB_texture_non_power_of_two */
/* GL_ARB_point_sprite */
/* GL_ARB_fragment_program_shadow */
/* GL_ARB_draw_buffers */
EXDL_EXTERN EXDLGLDRAWBUFFERSARBPROC                                     exdl_glDrawBuffersARB;
/* GL_ARB_texture_rectangle */
/* GL_ARB_color_buffer_float */
EXDL_EXTERN EXDLGLCLAMPCOLORARBPROC                                      exdl_glClampColorARB;
/* GL_ARB_half_float_pixel */
/* GL_ARB_texture_float */
/* GL_ARB_pixel_buffer_object */
/* GL_ARB_depth_buffer_float */
/* GL_ARB_draw_instanced */
EXDL_EXTERN EXDLGLDRAWARRAYSINSTANCEDARBPROC                             exdl_glDrawArraysInstancedARB;
EXDL_EXTERN EXDLGLDRAWELEMENTSINSTANCEDARBPROC                           exdl_glDrawElementsInstancedARB;
/* GL_ARB_framebuffer_object */
EXDL_EXTERN EXDLGLISRENDERBUFFERPROC                                     exdl_glIsRenderbuffer;
EXDL_EXTERN EXDLGLBINDRENDERBUFFERPROC                                   exdl_glBindRenderbuffer;
EXDL_EXTERN EXDLGLDELETERENDERBUFFERSPROC                                exdl_glDeleteRenderbuffers;
EXDL_EXTERN EXDLGLGENRENDERBUFFERSPROC                                   exdl_glGenRenderbuffers;
EXDL_EXTERN EXDLGLRENDERBUFFERSTORAGEPROC                                exdl_glRenderbufferStorage;
EXDL_EXTERN EXDLGLGETRENDERBUFFERPARAMETERIVPROC                         exdl_glGetRenderbufferParameteriv;
EXDL_EXTERN EXDLGLISFRAMEBUFFERPROC                                      exdl_glIsFramebuffer;
EXDL_EXTERN EXDLGLBINDFRAMEBUFFERPROC                                    exdl_glBindFramebuffer;
EXDL_EXTERN EXDLGLDELETEFRAMEBUFFERSPROC                                 exdl_glDeleteFramebuffers;
EXDL_EXTERN EXDLGLGENFRAMEBUFFERSPROC                                    exdl_glGenFramebuffers;
EXDL_EXTERN EXDLGLCHECKFRAMEBUFFERSTATUSPROC                             exdl_glCheckFramebufferStatus;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTURE1DPROC                               exdl_glFramebufferTexture1D;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTURE2DPROC                               exdl_glFramebufferTexture2D;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTURE3DPROC                               exdl_glFramebufferTexture3D;
EXDL_EXTERN EXDLGLFRAMEBUFFERRENDERBUFFERPROC                            exdl_glFramebufferRenderbuffer;
EXDL_EXTERN EXDLGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC                exdl_glGetFramebufferAttachmentParameteriv;
EXDL_EXTERN EXDLGLGENERATEMIPMAPPROC                                     exdl_glGenerateMipmap;
EXDL_EXTERN EXDLGLBLITFRAMEBUFFERPROC                                    exdl_glBlitFramebuffer;
EXDL_EXTERN EXDLGLRENDERBUFFERSTORAGEMULTISAMPLEPROC                     exdl_glRenderbufferStorageMultisample;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTURELAYERPROC                            exdl_glFramebufferTextureLayer;
/* GL_ARB_framebuffer_sRGB */
/* GL_ARB_geometry_shader4 */
EXDL_EXTERN EXDLGLPROGRAMPARAMETERIARBPROC                               exdl_glProgramParameteriARB;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTUREARBPROC                              exdl_glFramebufferTextureARB;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTURELAYERARBPROC                         exdl_glFramebufferTextureLayerARB;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTUREFACEARBPROC                          exdl_glFramebufferTextureFaceARB;
/* GL_ARB_half_float_vertex */
/* GL_ARB_instanced_arrays */
EXDL_EXTERN EXDLGLVERTEXATTRIBDIVISORARBPROC                             exdl_glVertexAttribDivisorARB;
/* GL_ARB_map_buffer_range */
EXDL_EXTERN EXDLGLMAPBUFFERRANGEPROC                                     exdl_glMapBufferRange;
EXDL_EXTERN EXDLGLFLUSHMAPPEDBUFFERRANGEPROC                             exdl_glFlushMappedBufferRange;
/* GL_ARB_texture_buffer_object */
EXDL_EXTERN EXDLGLTEXBUFFERARBPROC                                       exdl_glTexBufferARB;
/* GL_ARB_texture_compression_rgtc */
/* GL_ARB_texture_rg */
/* GL_ARB_vertex_array_object */
EXDL_EXTERN EXDLGLBINDVERTEXARRAYPROC                                    exdl_glBindVertexArray;
EXDL_EXTERN EXDLGLDELETEVERTEXARRAYSPROC                                 exdl_glDeleteVertexArrays;
EXDL_EXTERN EXDLGLGENVERTEXARRAYSPROC                                    exdl_glGenVertexArrays;
EXDL_EXTERN EXDLGLISVERTEXARRAYPROC                                      exdl_glIsVertexArray;
/* GL_ARB_uniform_buffer_object */
EXDL_EXTERN EXDLGLGETUNIFORMINDICESPROC                                  exdl_glGetUniformIndices;
EXDL_EXTERN EXDLGLGETACTIVEUNIFORMSIVPROC                                exdl_glGetActiveUniformsiv;
EXDL_EXTERN EXDLGLGETACTIVEUNIFORMNAMEPROC                               exdl_glGetActiveUniformName;
EXDL_EXTERN EXDLGLGETUNIFORMBLOCKINDEXPROC                               exdl_glGetUniformBlockIndex;
EXDL_EXTERN EXDLGLGETACTIVEUNIFORMBLOCKIVPROC                            exdl_glGetActiveUniformBlockiv;
EXDL_EXTERN EXDLGLGETACTIVEUNIFORMBLOCKNAMEPROC                          exdl_glGetActiveUniformBlockName;
EXDL_EXTERN EXDLGLUNIFORMBLOCKBINDINGPROC                                exdl_glUniformBlockBinding;
/* GL_ARB_compatibility */
/* GL_ARB_copy_buffer */
EXDL_EXTERN EXDLGLCOPYBUFFERSUBDATAPROC                                  exdl_glCopyBufferSubData;
/* GL_ARB_shader_texture_lod */
/* GL_ARB_depth_clamp */
/* GL_ARB_draw_elements_base_vertex */
EXDL_EXTERN EXDLGLDRAWELEMENTSBASEVERTEXPROC                             exdl_glDrawElementsBaseVertex;
EXDL_EXTERN EXDLGLDRAWRANGEELEMENTSBASEVERTEXPROC                        exdl_glDrawRangeElementsBaseVertex;
EXDL_EXTERN EXDLGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC                    exdl_glDrawElementsInstancedBaseVertex;
EXDL_EXTERN EXDLGLMULTIDRAWELEMENTSBASEVERTEXPROC                        exdl_glMultiDrawElementsBaseVertex;
/* GL_ARB_fragment_coord_conventions */
/* GL_ARB_provoking_vertex */
EXDL_EXTERN EXDLGLPROVOKINGVERTEXPROC                                    exdl_glProvokingVertex;
/* GL_ARB_seamless_cube_map */
/* GL_ARB_sync */
EXDL_EXTERN EXDLGLFENCESYNCPROC                                          exdl_glFenceSync;
EXDL_EXTERN EXDLGLISSYNCPROC                                             exdl_glIsSync;
EXDL_EXTERN EXDLGLDELETESYNCPROC                                         exdl_glDeleteSync;
EXDL_EXTERN EXDLGLCLIENTWAITSYNCPROC                                     exdl_glClientWaitSync;
EXDL_EXTERN EXDLGLWAITSYNCPROC                                           exdl_glWaitSync;
EXDL_EXTERN EXDLGLGETINTEGER64VPROC                                      exdl_glGetInteger64v;
EXDL_EXTERN EXDLGLGETSYNCIVPROC                                          exdl_glGetSynciv;
/* GL_ARB_texture_multisample */
EXDL_EXTERN EXDLGLTEXIMAGE2DMULTISAMPLEPROC                              exdl_glTexImage2DMultisample;
EXDL_EXTERN EXDLGLTEXIMAGE3DMULTISAMPLEPROC                              exdl_glTexImage3DMultisample;
EXDL_EXTERN EXDLGLGETMULTISAMPLEFVPROC                                   exdl_glGetMultisamplefv;
EXDL_EXTERN EXDLGLSAMPLEMASKIPROC                                        exdl_glSampleMaski;
/* GL_ARB_vertex_array_bgra */
/* GL_ARB_draw_buffers_blend */
EXDL_EXTERN EXDLGLBLENDEQUATIONIARBPROC                                  exdl_glBlendEquationiARB;
EXDL_EXTERN EXDLGLBLENDEQUATIONSEPARATEIARBPROC                          exdl_glBlendEquationSeparateiARB;
EXDL_EXTERN EXDLGLBLENDFUNCIARBPROC                                      exdl_glBlendFunciARB;
EXDL_EXTERN EXDLGLBLENDFUNCSEPARATEIARBPROC                              exdl_glBlendFuncSeparateiARB;
/* GL_ARB_sample_shading */
EXDL_EXTERN EXDLGLMINSAMPLESHADINGARBPROC                                exdl_glMinSampleShadingARB;
/* GL_ARB_texture_cube_map_array */
/* GL_ARB_texture_gather */
/* GL_ARB_texture_query_lod */
/* GL_ARB_shading_language_include */
EXDL_EXTERN EXDLGLNAMEDSTRINGARBPROC                                     exdl_glNamedStringARB;
EXDL_EXTERN EXDLGLDELETENAMEDSTRINGARBPROC                               exdl_glDeleteNamedStringARB;
EXDL_EXTERN EXDLGLCOMPILESHADERINCLUDEARBPROC                            exdl_glCompileShaderIncludeARB;
EXDL_EXTERN EXDLGLISNAMEDSTRINGARBPROC                                   exdl_glIsNamedStringARB;
EXDL_EXTERN EXDLGLGETNAMEDSTRINGARBPROC                                  exdl_glGetNamedStringARB;
EXDL_EXTERN EXDLGLGETNAMEDSTRINGIVARBPROC                                exdl_glGetNamedStringivARB;
/* GL_ARB_texture_compression_bptc */
/* GL_ARB_blend_func_extended */
EXDL_EXTERN EXDLGLBINDFRAGDATALOCATIONINDEXEDPROC                        exdl_glBindFragDataLocationIndexed;
EXDL_EXTERN EXDLGLGETFRAGDATAINDEXPROC                                   exdl_glGetFragDataIndex;
/* GL_ARB_explicit_attrib_location */
/* GL_ARB_occlusion_query2 */
/* GL_ARB_sampler_objects */
EXDL_EXTERN EXDLGLGENSAMPLERSPROC                                        exdl_glGenSamplers;
EXDL_EXTERN EXDLGLDELETESAMPLERSPROC                                     exdl_glDeleteSamplers;
EXDL_EXTERN EXDLGLISSAMPLERPROC                                          exdl_glIsSampler;
EXDL_EXTERN EXDLGLBINDSAMPLERPROC                                        exdl_glBindSampler;
EXDL_EXTERN EXDLGLSAMPLERPARAMETERIPROC                                  exdl_glSamplerParameteri;
EXDL_EXTERN EXDLGLSAMPLERPARAMETERIVPROC                                 exdl_glSamplerParameteriv;
EXDL_EXTERN EXDLGLSAMPLERPARAMETERFPROC                                  exdl_glSamplerParameterf;
EXDL_EXTERN EXDLGLSAMPLERPARAMETERFVPROC                                 exdl_glSamplerParameterfv;
EXDL_EXTERN EXDLGLSAMPLERPARAMETERIIVPROC                                exdl_glSamplerParameterIiv;
EXDL_EXTERN EXDLGLSAMPLERPARAMETERIUIVPROC                               exdl_glSamplerParameterIuiv;
EXDL_EXTERN EXDLGLGETSAMPLERPARAMETERIVPROC                              exdl_glGetSamplerParameteriv;
EXDL_EXTERN EXDLGLGETSAMPLERPARAMETERIIVPROC                             exdl_glGetSamplerParameterIiv;
EXDL_EXTERN EXDLGLGETSAMPLERPARAMETERFVPROC                              exdl_glGetSamplerParameterfv;
EXDL_EXTERN EXDLGLGETSAMPLERPARAMETERIUIVPROC                            exdl_glGetSamplerParameterIuiv;
/* GL_ARB_shader_bit_encoding */
/* GL_ARB_texture_rgb10_a2ui */
/* GL_ARB_texture_swizzle */
/* GL_ARB_timer_query */
EXDL_EXTERN EXDLGLQUERYCOUNTERPROC                                       exdl_glQueryCounter;
EXDL_EXTERN EXDLGLGETQUERYOBJECTI64VPROC                                 exdl_glGetQueryObjecti64v;
EXDL_EXTERN EXDLGLGETQUERYOBJECTUI64VPROC                                exdl_glGetQueryObjectui64v;
/* GL_ARB_vertex_type_2_10_10_10_rev */
EXDL_EXTERN EXDLGLVERTEXP2UIPROC                                         exdl_glVertexP2ui;
EXDL_EXTERN EXDLGLVERTEXP2UIVPROC                                        exdl_glVertexP2uiv;
EXDL_EXTERN EXDLGLVERTEXP3UIPROC                                         exdl_glVertexP3ui;
EXDL_EXTERN EXDLGLVERTEXP3UIVPROC                                        exdl_glVertexP3uiv;
EXDL_EXTERN EXDLGLVERTEXP4UIPROC                                         exdl_glVertexP4ui;
EXDL_EXTERN EXDLGLVERTEXP4UIVPROC                                        exdl_glVertexP4uiv;
EXDL_EXTERN EXDLGLTEXCOORDP1UIPROC                                       exdl_glTexCoordP1ui;
EXDL_EXTERN EXDLGLTEXCOORDP1UIVPROC                                      exdl_glTexCoordP1uiv;
EXDL_EXTERN EXDLGLTEXCOORDP2UIPROC                                       exdl_glTexCoordP2ui;
EXDL_EXTERN EXDLGLTEXCOORDP2UIVPROC                                      exdl_glTexCoordP2uiv;
EXDL_EXTERN EXDLGLTEXCOORDP3UIPROC                                       exdl_glTexCoordP3ui;
EXDL_EXTERN EXDLGLTEXCOORDP3UIVPROC                                      exdl_glTexCoordP3uiv;
EXDL_EXTERN EXDLGLTEXCOORDP4UIPROC                                       exdl_glTexCoordP4ui;
EXDL_EXTERN EXDLGLTEXCOORDP4UIVPROC                                      exdl_glTexCoordP4uiv;
EXDL_EXTERN EXDLGLMULTITEXCOORDP1UIPROC                                  exdl_glMultiTexCoordP1ui;
EXDL_EXTERN EXDLGLMULTITEXCOORDP1UIVPROC                                 exdl_glMultiTexCoordP1uiv;
EXDL_EXTERN EXDLGLMULTITEXCOORDP2UIPROC                                  exdl_glMultiTexCoordP2ui;
EXDL_EXTERN EXDLGLMULTITEXCOORDP2UIVPROC                                 exdl_glMultiTexCoordP2uiv;
EXDL_EXTERN EXDLGLMULTITEXCOORDP3UIPROC                                  exdl_glMultiTexCoordP3ui;
EXDL_EXTERN EXDLGLMULTITEXCOORDP3UIVPROC                                 exdl_glMultiTexCoordP3uiv;
EXDL_EXTERN EXDLGLMULTITEXCOORDP4UIPROC                                  exdl_glMultiTexCoordP4ui;
EXDL_EXTERN EXDLGLMULTITEXCOORDP4UIVPROC                                 exdl_glMultiTexCoordP4uiv;
EXDL_EXTERN EXDLGLNORMALP3UIPROC                                         exdl_glNormalP3ui;
EXDL_EXTERN EXDLGLNORMALP3UIVPROC                                        exdl_glNormalP3uiv;
EXDL_EXTERN EXDLGLCOLORP3UIPROC                                          exdl_glColorP3ui;
EXDL_EXTERN EXDLGLCOLORP3UIVPROC                                         exdl_glColorP3uiv;
EXDL_EXTERN EXDLGLCOLORP4UIPROC                                          exdl_glColorP4ui;
EXDL_EXTERN EXDLGLCOLORP4UIVPROC                                         exdl_glColorP4uiv;
EXDL_EXTERN EXDLGLSECONDARYCOLORP3UIPROC                                 exdl_glSecondaryColorP3ui;
EXDL_EXTERN EXDLGLSECONDARYCOLORP3UIVPROC                                exdl_glSecondaryColorP3uiv;
EXDL_EXTERN EXDLGLVERTEXATTRIBP1UIPROC                                   exdl_glVertexAttribP1ui;
EXDL_EXTERN EXDLGLVERTEXATTRIBP1UIVPROC                                  exdl_glVertexAttribP1uiv;
EXDL_EXTERN EXDLGLVERTEXATTRIBP2UIPROC                                   exdl_glVertexAttribP2ui;
EXDL_EXTERN EXDLGLVERTEXATTRIBP2UIVPROC                                  exdl_glVertexAttribP2uiv;
EXDL_EXTERN EXDLGLVERTEXATTRIBP3UIPROC                                   exdl_glVertexAttribP3ui;
EXDL_EXTERN EXDLGLVERTEXATTRIBP3UIVPROC                                  exdl_glVertexAttribP3uiv;
EXDL_EXTERN EXDLGLVERTEXATTRIBP4UIPROC                                   exdl_glVertexAttribP4ui;
EXDL_EXTERN EXDLGLVERTEXATTRIBP4UIVPROC                                  exdl_glVertexAttribP4uiv;
/* GL_ARB_draw_indirect */
EXDL_EXTERN EXDLGLDRAWARRAYSINDIRECTPROC                                 exdl_glDrawArraysIndirect;
EXDL_EXTERN EXDLGLDRAWELEMENTSINDIRECTPROC                               exdl_glDrawElementsIndirect;
/* GL_ARB_gpu_shader5 */
/* GL_ARB_gpu_shader_fp64 */
EXDL_EXTERN EXDLGLUNIFORM1DPROC                                          exdl_glUniform1d;
EXDL_EXTERN EXDLGLUNIFORM2DPROC                                          exdl_glUniform2d;
EXDL_EXTERN EXDLGLUNIFORM3DPROC                                          exdl_glUniform3d;
EXDL_EXTERN EXDLGLUNIFORM4DPROC                                          exdl_glUniform4d;
EXDL_EXTERN EXDLGLUNIFORM1DVPROC                                         exdl_glUniform1dv;
EXDL_EXTERN EXDLGLUNIFORM2DVPROC                                         exdl_glUniform2dv;
EXDL_EXTERN EXDLGLUNIFORM3DVPROC                                         exdl_glUniform3dv;
EXDL_EXTERN EXDLGLUNIFORM4DVPROC                                         exdl_glUniform4dv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX2DVPROC                                   exdl_glUniformMatrix2dv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX3DVPROC                                   exdl_glUniformMatrix3dv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX4DVPROC                                   exdl_glUniformMatrix4dv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX2X3DVPROC                                 exdl_glUniformMatrix2x3dv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX2X4DVPROC                                 exdl_glUniformMatrix2x4dv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX3X2DVPROC                                 exdl_glUniformMatrix3x2dv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX3X4DVPROC                                 exdl_glUniformMatrix3x4dv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX4X2DVPROC                                 exdl_glUniformMatrix4x2dv;
EXDL_EXTERN EXDLGLUNIFORMMATRIX4X3DVPROC                                 exdl_glUniformMatrix4x3dv;
EXDL_EXTERN EXDLGLGETUNIFORMDVPROC                                       exdl_glGetUniformdv;
/* GL_ARB_shader_subroutine */
EXDL_EXTERN EXDLGLGETSUBROUTINEUNIFORMLOCATIONPROC                       exdl_glGetSubroutineUniformLocation;
EXDL_EXTERN EXDLGLGETSUBROUTINEINDEXPROC                                 exdl_glGetSubroutineIndex;
EXDL_EXTERN EXDLGLGETACTIVESUBROUTINEUNIFORMIVPROC                       exdl_glGetActiveSubroutineUniformiv;
EXDL_EXTERN EXDLGLGETACTIVESUBROUTINEUNIFORMNAMEPROC                     exdl_glGetActiveSubroutineUniformName;
EXDL_EXTERN EXDLGLGETACTIVESUBROUTINENAMEPROC                            exdl_glGetActiveSubroutineName;
EXDL_EXTERN EXDLGLUNIFORMSUBROUTINESUIVPROC                              exdl_glUniformSubroutinesuiv;
EXDL_EXTERN EXDLGLGETUNIFORMSUBROUTINEUIVPROC                            exdl_glGetUniformSubroutineuiv;
EXDL_EXTERN EXDLGLGETPROGRAMSTAGEIVPROC                                  exdl_glGetProgramStageiv;
/* GL_ARB_tessellation_shader */
EXDL_EXTERN EXDLGLPATCHPARAMETERIPROC                                    exdl_glPatchParameteri;
EXDL_EXTERN EXDLGLPATCHPARAMETERFVPROC                                   exdl_glPatchParameterfv;
/* GL_ARB_texture_buffer_object_rgb32 */
/* GL_ARB_transform_feedback2 */
EXDL_EXTERN EXDLGLBINDTRANSFORMFEEDBACKPROC                              exdl_glBindTransformFeedback;
EXDL_EXTERN EXDLGLDELETETRANSFORMFEEDBACKSPROC                           exdl_glDeleteTransformFeedbacks;
EXDL_EXTERN EXDLGLGENTRANSFORMFEEDBACKSPROC                              exdl_glGenTransformFeedbacks;
EXDL_EXTERN EXDLGLISTRANSFORMFEEDBACKPROC                                exdl_glIsTransformFeedback;
EXDL_EXTERN EXDLGLPAUSETRANSFORMFEEDBACKPROC                             exdl_glPauseTransformFeedback;
EXDL_EXTERN EXDLGLRESUMETRANSFORMFEEDBACKPROC                            exdl_glResumeTransformFeedback;
EXDL_EXTERN EXDLGLDRAWTRANSFORMFEEDBACKPROC                              exdl_glDrawTransformFeedback;
/* GL_ARB_transform_feedback3 */
EXDL_EXTERN EXDLGLDRAWTRANSFORMFEEDBACKSTREAMPROC                        exdl_glDrawTransformFeedbackStream;
EXDL_EXTERN EXDLGLBEGINQUERYINDEXEDPROC                                  exdl_glBeginQueryIndexed;
EXDL_EXTERN EXDLGLENDQUERYINDEXEDPROC                                    exdl_glEndQueryIndexed;
EXDL_EXTERN EXDLGLGETQUERYINDEXEDIVPROC                                  exdl_glGetQueryIndexediv;
/* GL_ARB_ES2_compatibility */
EXDL_EXTERN EXDLGLRELEASESHADERCOMPILERPROC                              exdl_glReleaseShaderCompiler;
EXDL_EXTERN EXDLGLSHADERBINARYPROC                                       exdl_glShaderBinary;
EXDL_EXTERN EXDLGLGETSHADERPRECISIONFORMATPROC                           exdl_glGetShaderPrecisionFormat;
EXDL_EXTERN EXDLGLDEPTHRANGEFPROC                                        exdl_glDepthRangef;
EXDL_EXTERN EXDLGLCLEARDEPTHFPROC                                        exdl_glClearDepthf;
/* GL_ARB_get_program_binary */
EXDL_EXTERN EXDLGLGETPROGRAMBINARYPROC                                   exdl_glGetProgramBinary;
EXDL_EXTERN EXDLGLPROGRAMBINARYPROC                                      exdl_glProgramBinary;
EXDL_EXTERN EXDLGLPROGRAMPARAMETERIPROC                                  exdl_glProgramParameteri;
/* GL_ARB_separate_shader_objects */
EXDL_EXTERN EXDLGLUSEPROGRAMSTAGESPROC                                   exdl_glUseProgramStages;
EXDL_EXTERN EXDLGLACTIVESHADERPROGRAMPROC                                exdl_glActiveShaderProgram;
EXDL_EXTERN EXDLGLCREATESHADERPROGRAMVPROC                               exdl_glCreateShaderProgramv;
EXDL_EXTERN EXDLGLBINDPROGRAMPIPELINEPROC                                exdl_glBindProgramPipeline;
EXDL_EXTERN EXDLGLDELETEPROGRAMPIPELINESPROC                             exdl_glDeleteProgramPipelines;
EXDL_EXTERN EXDLGLGENPROGRAMPIPELINESPROC                                exdl_glGenProgramPipelines;
EXDL_EXTERN EXDLGLISPROGRAMPIPELINEPROC                                  exdl_glIsProgramPipeline;
EXDL_EXTERN EXDLGLGETPROGRAMPIPELINEIVPROC                               exdl_glGetProgramPipelineiv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1IPROC                                   exdl_glProgramUniform1i;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1IVPROC                                  exdl_glProgramUniform1iv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1FPROC                                   exdl_glProgramUniform1f;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1FVPROC                                  exdl_glProgramUniform1fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1DPROC                                   exdl_glProgramUniform1d;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1DVPROC                                  exdl_glProgramUniform1dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1UIPROC                                  exdl_glProgramUniform1ui;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1UIVPROC                                 exdl_glProgramUniform1uiv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2IPROC                                   exdl_glProgramUniform2i;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2IVPROC                                  exdl_glProgramUniform2iv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2FPROC                                   exdl_glProgramUniform2f;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2FVPROC                                  exdl_glProgramUniform2fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2DPROC                                   exdl_glProgramUniform2d;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2DVPROC                                  exdl_glProgramUniform2dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2UIPROC                                  exdl_glProgramUniform2ui;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2UIVPROC                                 exdl_glProgramUniform2uiv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3IPROC                                   exdl_glProgramUniform3i;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3IVPROC                                  exdl_glProgramUniform3iv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3FPROC                                   exdl_glProgramUniform3f;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3FVPROC                                  exdl_glProgramUniform3fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3DPROC                                   exdl_glProgramUniform3d;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3DVPROC                                  exdl_glProgramUniform3dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3UIPROC                                  exdl_glProgramUniform3ui;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3UIVPROC                                 exdl_glProgramUniform3uiv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4IPROC                                   exdl_glProgramUniform4i;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4IVPROC                                  exdl_glProgramUniform4iv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4FPROC                                   exdl_glProgramUniform4f;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4FVPROC                                  exdl_glProgramUniform4fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4DPROC                                   exdl_glProgramUniform4d;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4DVPROC                                  exdl_glProgramUniform4dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4UIPROC                                  exdl_glProgramUniform4ui;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4UIVPROC                                 exdl_glProgramUniform4uiv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2FVPROC                            exdl_glProgramUniformMatrix2fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3FVPROC                            exdl_glProgramUniformMatrix3fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4FVPROC                            exdl_glProgramUniformMatrix4fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2DVPROC                            exdl_glProgramUniformMatrix2dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3DVPROC                            exdl_glProgramUniformMatrix3dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4DVPROC                            exdl_glProgramUniformMatrix4dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2X3FVPROC                          exdl_glProgramUniformMatrix2x3fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3X2FVPROC                          exdl_glProgramUniformMatrix3x2fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2X4FVPROC                          exdl_glProgramUniformMatrix2x4fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4X2FVPROC                          exdl_glProgramUniformMatrix4x2fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3X4FVPROC                          exdl_glProgramUniformMatrix3x4fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4X3FVPROC                          exdl_glProgramUniformMatrix4x3fv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2X3DVPROC                          exdl_glProgramUniformMatrix2x3dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3X2DVPROC                          exdl_glProgramUniformMatrix3x2dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2X4DVPROC                          exdl_glProgramUniformMatrix2x4dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4X2DVPROC                          exdl_glProgramUniformMatrix4x2dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3X4DVPROC                          exdl_glProgramUniformMatrix3x4dv;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4X3DVPROC                          exdl_glProgramUniformMatrix4x3dv;
EXDL_EXTERN EXDLGLVALIDATEPROGRAMPIPELINEPROC                            exdl_glValidateProgramPipeline;
EXDL_EXTERN EXDLGLGETPROGRAMPIPELINEINFOLOGPROC                          exdl_glGetProgramPipelineInfoLog;
/* GL_ARB_vertex_attrib_64bit */
EXDL_EXTERN EXDLGLVERTEXATTRIBL1DPROC                                    exdl_glVertexAttribL1d;
EXDL_EXTERN EXDLGLVERTEXATTRIBL2DPROC                                    exdl_glVertexAttribL2d;
EXDL_EXTERN EXDLGLVERTEXATTRIBL3DPROC                                    exdl_glVertexAttribL3d;
EXDL_EXTERN EXDLGLVERTEXATTRIBL4DPROC                                    exdl_glVertexAttribL4d;
EXDL_EXTERN EXDLGLVERTEXATTRIBL1DVPROC                                   exdl_glVertexAttribL1dv;
EXDL_EXTERN EXDLGLVERTEXATTRIBL2DVPROC                                   exdl_glVertexAttribL2dv;
EXDL_EXTERN EXDLGLVERTEXATTRIBL3DVPROC                                   exdl_glVertexAttribL3dv;
EXDL_EXTERN EXDLGLVERTEXATTRIBL4DVPROC                                   exdl_glVertexAttribL4dv;
EXDL_EXTERN EXDLGLVERTEXATTRIBLPOINTERPROC                               exdl_glVertexAttribLPointer;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBLDVPROC                                 exdl_glGetVertexAttribLdv;
/* GL_ARB_viewport_array */
EXDL_EXTERN EXDLGLVIEWPORTARRAYVPROC                                     exdl_glViewportArrayv;
EXDL_EXTERN EXDLGLVIEWPORTINDEXEDFPROC                                   exdl_glViewportIndexedf;
EXDL_EXTERN EXDLGLVIEWPORTINDEXEDFVPROC                                  exdl_glViewportIndexedfv;
EXDL_EXTERN EXDLGLSCISSORARRAYVPROC                                      exdl_glScissorArrayv;
EXDL_EXTERN EXDLGLSCISSORINDEXEDPROC                                     exdl_glScissorIndexed;
EXDL_EXTERN EXDLGLSCISSORINDEXEDVPROC                                    exdl_glScissorIndexedv;
EXDL_EXTERN EXDLGLDEPTHRANGEARRAYVPROC                                   exdl_glDepthRangeArrayv;
EXDL_EXTERN EXDLGLDEPTHRANGEINDEXEDPROC                                  exdl_glDepthRangeIndexed;
EXDL_EXTERN EXDLGLGETFLOATI_VPROC                                        exdl_glGetFloati_v;
EXDL_EXTERN EXDLGLGETDOUBLEI_VPROC                                       exdl_glGetDoublei_v;
/* GL_ARB_cl_event */
EXDL_EXTERN EXDLGLCREATESYNCFROMCLEVENTARBPROC                           exdl_glCreateSyncFromCLeventARB;
/* GL_ARB_debug_output */
EXDL_EXTERN EXDLGLDEBUGMESSAGECONTROLARBPROC                             exdl_glDebugMessageControlARB;
EXDL_EXTERN EXDLGLDEBUGMESSAGEINSERTARBPROC                              exdl_glDebugMessageInsertARB;
EXDL_EXTERN EXDLGLDEBUGMESSAGECALLBACKARBPROC                            exdl_glDebugMessageCallbackARB;
EXDL_EXTERN EXDLGLGETDEBUGMESSAGELOGARBPROC                              exdl_glGetDebugMessageLogARB;
/* GL_ARB_robustness */
EXDL_EXTERN EXDLGLGETGRAPHICSRESETSTATUSARBPROC                          exdl_glGetGraphicsResetStatusARB;
EXDL_EXTERN EXDLGLGETNMAPDVARBPROC                                       exdl_glGetnMapdvARB;
EXDL_EXTERN EXDLGLGETNMAPFVARBPROC                                       exdl_glGetnMapfvARB;
EXDL_EXTERN EXDLGLGETNMAPIVARBPROC                                       exdl_glGetnMapivARB;
EXDL_EXTERN EXDLGLGETNPIXELMAPFVARBPROC                                  exdl_glGetnPixelMapfvARB;
EXDL_EXTERN EXDLGLGETNPIXELMAPUIVARBPROC                                 exdl_glGetnPixelMapuivARB;
EXDL_EXTERN EXDLGLGETNPIXELMAPUSVARBPROC                                 exdl_glGetnPixelMapusvARB;
EXDL_EXTERN EXDLGLGETNPOLYGONSTIPPLEARBPROC                              exdl_glGetnPolygonStippleARB;
EXDL_EXTERN EXDLGLGETNCOLORTABLEARBPROC                                  exdl_glGetnColorTableARB;
EXDL_EXTERN EXDLGLGETNCONVOLUTIONFILTERARBPROC                           exdl_glGetnConvolutionFilterARB;
EXDL_EXTERN EXDLGLGETNSEPARABLEFILTERARBPROC                             exdl_glGetnSeparableFilterARB;
EXDL_EXTERN EXDLGLGETNHISTOGRAMARBPROC                                   exdl_glGetnHistogramARB;
EXDL_EXTERN EXDLGLGETNMINMAXARBPROC                                      exdl_glGetnMinmaxARB;
EXDL_EXTERN EXDLGLGETNTEXIMAGEARBPROC                                    exdl_glGetnTexImageARB;
EXDL_EXTERN EXDLGLREADNPIXELSARBPROC                                     exdl_glReadnPixelsARB;
EXDL_EXTERN EXDLGLGETNCOMPRESSEDTEXIMAGEARBPROC                          exdl_glGetnCompressedTexImageARB;
EXDL_EXTERN EXDLGLGETNUNIFORMFVARBPROC                                   exdl_glGetnUniformfvARB;
EXDL_EXTERN EXDLGLGETNUNIFORMIVARBPROC                                   exdl_glGetnUniformivARB;
EXDL_EXTERN EXDLGLGETNUNIFORMUIVARBPROC                                  exdl_glGetnUniformuivARB;
EXDL_EXTERN EXDLGLGETNUNIFORMDVARBPROC                                   exdl_glGetnUniformdvARB;
/* GL_ARB_shader_stencil_export */
/* GL_ARB_base_instance */
EXDL_EXTERN EXDLGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC                    exdl_glDrawArraysInstancedBaseInstance;
EXDL_EXTERN EXDLGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC                  exdl_glDrawElementsInstancedBaseInstance;
EXDL_EXTERN EXDLGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC        exdl_glDrawElementsInstancedBaseVertexBaseInstance;
/* GL_ARB_shading_language_420pack */
/* GL_ARB_transform_feedback_instanced */
EXDL_EXTERN EXDLGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC                     exdl_glDrawTransformFeedbackInstanced;
EXDL_EXTERN EXDLGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC               exdl_glDrawTransformFeedbackStreamInstanced;
/* GL_ARB_compressed_texture_pixel_storage */
/* GL_ARB_conservative_depth */
/* GL_ARB_internalformat_query */
EXDL_EXTERN EXDLGLGETINTERNALFORMATIVPROC                                exdl_glGetInternalformativ;
/* GL_ARB_map_buffer_alignment */
/* GL_ARB_shader_atomic_counters */
EXDL_EXTERN EXDLGLGETACTIVEATOMICCOUNTERBUFFERIVPROC                     exdl_glGetActiveAtomicCounterBufferiv;
/* GL_ARB_shader_image_load_store */
EXDL_EXTERN EXDLGLBINDIMAGETEXTUREPROC                                   exdl_glBindImageTexture;
EXDL_EXTERN EXDLGLMEMORYBARRIERPROC                                      exdl_glMemoryBarrier;
/* GL_ARB_shading_language_packing */
/* GL_ARB_texture_storage */
EXDL_EXTERN EXDLGLTEXSTORAGE1DPROC                                       exdl_glTexStorage1D;
EXDL_EXTERN EXDLGLTEXSTORAGE2DPROC                                       exdl_glTexStorage2D;
EXDL_EXTERN EXDLGLTEXSTORAGE3DPROC                                       exdl_glTexStorage3D;
EXDL_EXTERN EXDLGLTEXTURESTORAGE1DEXTPROC                                exdl_glTextureStorage1DEXT;
EXDL_EXTERN EXDLGLTEXTURESTORAGE2DEXTPROC                                exdl_glTextureStorage2DEXT;
EXDL_EXTERN EXDLGLTEXTURESTORAGE3DEXTPROC                                exdl_glTextureStorage3DEXT;
/* GL_EXT_abgr */
/* GL_EXT_blend_color */
EXDL_EXTERN EXDLGLBLENDCOLOREXTPROC                                      exdl_glBlendColorEXT;
/* GL_EXT_polygon_offset */
EXDL_EXTERN EXDLGLPOLYGONOFFSETEXTPROC                                   exdl_glPolygonOffsetEXT;
/* GL_EXT_texture */
/* GL_EXT_texture3D */
EXDL_EXTERN EXDLGLTEXIMAGE3DEXTPROC                                      exdl_glTexImage3DEXT;
EXDL_EXTERN EXDLGLTEXSUBIMAGE3DEXTPROC                                   exdl_glTexSubImage3DEXT;
/* GL_SGIS_texture_filter4 */
EXDL_EXTERN EXDLGLGETTEXFILTERFUNCSGISPROC                               exdl_glGetTexFilterFuncSGIS;
EXDL_EXTERN EXDLGLTEXFILTERFUNCSGISPROC                                  exdl_glTexFilterFuncSGIS;
/* GL_EXT_subtexture */
EXDL_EXTERN EXDLGLTEXSUBIMAGE1DEXTPROC                                   exdl_glTexSubImage1DEXT;
EXDL_EXTERN EXDLGLTEXSUBIMAGE2DEXTPROC                                   exdl_glTexSubImage2DEXT;
/* GL_EXT_copy_texture */
EXDL_EXTERN EXDLGLCOPYTEXIMAGE1DEXTPROC                                  exdl_glCopyTexImage1DEXT;
EXDL_EXTERN EXDLGLCOPYTEXIMAGE2DEXTPROC                                  exdl_glCopyTexImage2DEXT;
EXDL_EXTERN EXDLGLCOPYTEXSUBIMAGE1DEXTPROC                               exdl_glCopyTexSubImage1DEXT;
EXDL_EXTERN EXDLGLCOPYTEXSUBIMAGE2DEXTPROC                               exdl_glCopyTexSubImage2DEXT;
EXDL_EXTERN EXDLGLCOPYTEXSUBIMAGE3DEXTPROC                               exdl_glCopyTexSubImage3DEXT;
/* GL_EXT_histogram */
EXDL_EXTERN EXDLGLGETHISTOGRAMEXTPROC                                    exdl_glGetHistogramEXT;
EXDL_EXTERN EXDLGLGETHISTOGRAMPARAMETERFVEXTPROC                         exdl_glGetHistogramParameterfvEXT;
EXDL_EXTERN EXDLGLGETHISTOGRAMPARAMETERIVEXTPROC                         exdl_glGetHistogramParameterivEXT;
EXDL_EXTERN EXDLGLGETMINMAXEXTPROC                                       exdl_glGetMinmaxEXT;
EXDL_EXTERN EXDLGLGETMINMAXPARAMETERFVEXTPROC                            exdl_glGetMinmaxParameterfvEXT;
EXDL_EXTERN EXDLGLGETMINMAXPARAMETERIVEXTPROC                            exdl_glGetMinmaxParameterivEXT;
EXDL_EXTERN EXDLGLHISTOGRAMEXTPROC                                       exdl_glHistogramEXT;
EXDL_EXTERN EXDLGLMINMAXEXTPROC                                          exdl_glMinmaxEXT;
EXDL_EXTERN EXDLGLRESETHISTOGRAMEXTPROC                                  exdl_glResetHistogramEXT;
EXDL_EXTERN EXDLGLRESETMINMAXEXTPROC                                     exdl_glResetMinmaxEXT;
/* GL_EXT_convolution */
EXDL_EXTERN EXDLGLCONVOLUTIONFILTER1DEXTPROC                             exdl_glConvolutionFilter1DEXT;
EXDL_EXTERN EXDLGLCONVOLUTIONFILTER2DEXTPROC                             exdl_glConvolutionFilter2DEXT;
EXDL_EXTERN EXDLGLCONVOLUTIONPARAMETERFEXTPROC                           exdl_glConvolutionParameterfEXT;
EXDL_EXTERN EXDLGLCONVOLUTIONPARAMETERFVEXTPROC                          exdl_glConvolutionParameterfvEXT;
EXDL_EXTERN EXDLGLCONVOLUTIONPARAMETERIEXTPROC                           exdl_glConvolutionParameteriEXT;
EXDL_EXTERN EXDLGLCONVOLUTIONPARAMETERIVEXTPROC                          exdl_glConvolutionParameterivEXT;
EXDL_EXTERN EXDLGLCOPYCONVOLUTIONFILTER1DEXTPROC                         exdl_glCopyConvolutionFilter1DEXT;
EXDL_EXTERN EXDLGLCOPYCONVOLUTIONFILTER2DEXTPROC                         exdl_glCopyConvolutionFilter2DEXT;
EXDL_EXTERN EXDLGLGETCONVOLUTIONFILTEREXTPROC                            exdl_glGetConvolutionFilterEXT;
EXDL_EXTERN EXDLGLGETCONVOLUTIONPARAMETERFVEXTPROC                       exdl_glGetConvolutionParameterfvEXT;
EXDL_EXTERN EXDLGLGETCONVOLUTIONPARAMETERIVEXTPROC                       exdl_glGetConvolutionParameterivEXT;
EXDL_EXTERN EXDLGLGETSEPARABLEFILTEREXTPROC                              exdl_glGetSeparableFilterEXT;
EXDL_EXTERN EXDLGLSEPARABLEFILTER2DEXTPROC                               exdl_glSeparableFilter2DEXT;
/* GL_EXT_color_matrix */
/* GL_SGI_color_matrix */
/* GL_SGI_color_table */
EXDL_EXTERN EXDLGLCOLORTABLESGIPROC                                      exdl_glColorTableSGI;
EXDL_EXTERN EXDLGLCOLORTABLEPARAMETERFVSGIPROC                           exdl_glColorTableParameterfvSGI;
EXDL_EXTERN EXDLGLCOLORTABLEPARAMETERIVSGIPROC                           exdl_glColorTableParameterivSGI;
EXDL_EXTERN EXDLGLCOPYCOLORTABLESGIPROC                                  exdl_glCopyColorTableSGI;
EXDL_EXTERN EXDLGLGETCOLORTABLESGIPROC                                   exdl_glGetColorTableSGI;
EXDL_EXTERN EXDLGLGETCOLORTABLEPARAMETERFVSGIPROC                        exdl_glGetColorTableParameterfvSGI;
EXDL_EXTERN EXDLGLGETCOLORTABLEPARAMETERIVSGIPROC                        exdl_glGetColorTableParameterivSGI;
/* GL_SGIX_pixel_texture */
EXDL_EXTERN EXDLGLPIXELTEXGENSGIXPROC                                    exdl_glPixelTexGenSGIX;
/* GL_SGIS_pixel_texture */
EXDL_EXTERN EXDLGLPIXELTEXGENPARAMETERISGISPROC                          exdl_glPixelTexGenParameteriSGIS;
EXDL_EXTERN EXDLGLPIXELTEXGENPARAMETERIVSGISPROC                         exdl_glPixelTexGenParameterivSGIS;
EXDL_EXTERN EXDLGLPIXELTEXGENPARAMETERFSGISPROC                          exdl_glPixelTexGenParameterfSGIS;
EXDL_EXTERN EXDLGLPIXELTEXGENPARAMETERFVSGISPROC                         exdl_glPixelTexGenParameterfvSGIS;
EXDL_EXTERN EXDLGLGETPIXELTEXGENPARAMETERIVSGISPROC                      exdl_glGetPixelTexGenParameterivSGIS;
EXDL_EXTERN EXDLGLGETPIXELTEXGENPARAMETERFVSGISPROC                      exdl_glGetPixelTexGenParameterfvSGIS;
/* GL_SGIS_texture4D */
EXDL_EXTERN EXDLGLTEXIMAGE4DSGISPROC                                     exdl_glTexImage4DSGIS;
EXDL_EXTERN EXDLGLTEXSUBIMAGE4DSGISPROC                                  exdl_glTexSubImage4DSGIS;
/* GL_SGI_texture_color_table */
/* GL_EXT_cmyka */
/* GL_EXT_texture_object */
EXDL_EXTERN EXDLGLARETEXTURESRESIDENTEXTPROC                             exdl_glAreTexturesResidentEXT;
EXDL_EXTERN EXDLGLBINDTEXTUREEXTPROC                                     exdl_glBindTextureEXT;
EXDL_EXTERN EXDLGLDELETETEXTURESEXTPROC                                  exdl_glDeleteTexturesEXT;
EXDL_EXTERN EXDLGLGENTEXTURESEXTPROC                                     exdl_glGenTexturesEXT;
EXDL_EXTERN EXDLGLISTEXTUREEXTPROC                                       exdl_glIsTextureEXT;
EXDL_EXTERN EXDLGLPRIORITIZETEXTURESEXTPROC                              exdl_glPrioritizeTexturesEXT;
/* GL_SGIS_detail_texture */
EXDL_EXTERN EXDLGLDETAILTEXFUNCSGISPROC                                  exdl_glDetailTexFuncSGIS;
EXDL_EXTERN EXDLGLGETDETAILTEXFUNCSGISPROC                               exdl_glGetDetailTexFuncSGIS;
/* GL_SGIS_sharpen_texture */
EXDL_EXTERN EXDLGLSHARPENTEXFUNCSGISPROC                                 exdl_glSharpenTexFuncSGIS;
EXDL_EXTERN EXDLGLGETSHARPENTEXFUNCSGISPROC                              exdl_glGetSharpenTexFuncSGIS;
/* GL_EXT_packed_pixels */
/* GL_SGIS_texture_lod */
/* GL_SGIS_multisample */
EXDL_EXTERN EXDLGLSAMPLEMASKSGISPROC                                     exdl_glSampleMaskSGIS;
EXDL_EXTERN EXDLGLSAMPLEPATTERNSGISPROC                                  exdl_glSamplePatternSGIS;
/* GL_EXT_rescale_normal */
/* GL_EXT_vertex_array */
EXDL_EXTERN EXDLGLARRAYELEMENTEXTPROC                                    exdl_glArrayElementEXT;
EXDL_EXTERN EXDLGLCOLORPOINTEREXTPROC                                    exdl_glColorPointerEXT;
EXDL_EXTERN EXDLGLDRAWARRAYSEXTPROC                                      exdl_glDrawArraysEXT;
EXDL_EXTERN EXDLGLEDGEFLAGPOINTEREXTPROC                                 exdl_glEdgeFlagPointerEXT;
EXDL_EXTERN EXDLGLGETPOINTERVEXTPROC                                     exdl_glGetPointervEXT;
EXDL_EXTERN EXDLGLINDEXPOINTEREXTPROC                                    exdl_glIndexPointerEXT;
EXDL_EXTERN EXDLGLNORMALPOINTEREXTPROC                                   exdl_glNormalPointerEXT;
EXDL_EXTERN EXDLGLTEXCOORDPOINTEREXTPROC                                 exdl_glTexCoordPointerEXT;
EXDL_EXTERN EXDLGLVERTEXPOINTEREXTPROC                                   exdl_glVertexPointerEXT;
/* GL_EXT_misc_attribute */
/* GL_SGIS_generate_mipmap */
/* GL_SGIX_clipmap */
/* GL_SGIX_shadow */
/* GL_SGIS_texture_edge_clamp */
/* GL_SGIS_texture_border_clamp */
/* GL_EXT_blend_minmax */
EXDL_EXTERN EXDLGLBLENDEQUATIONEXTPROC                                   exdl_glBlendEquationEXT;
/* GL_EXT_blend_subtract */
/* GL_EXT_blend_logic_op */
/* GL_SGIX_interlace */
/* GL_SGIX_pixel_tiles */
/* GL_SGIX_texture_select */
/* GL_SGIX_sprite */
EXDL_EXTERN EXDLGLSPRITEPARAMETERFSGIXPROC                               exdl_glSpriteParameterfSGIX;
EXDL_EXTERN EXDLGLSPRITEPARAMETERFVSGIXPROC                              exdl_glSpriteParameterfvSGIX;
EXDL_EXTERN EXDLGLSPRITEPARAMETERISGIXPROC                               exdl_glSpriteParameteriSGIX;
EXDL_EXTERN EXDLGLSPRITEPARAMETERIVSGIXPROC                              exdl_glSpriteParameterivSGIX;
/* GL_SGIX_texture_multi_buffer */
/* GL_EXT_point_parameters */
EXDL_EXTERN EXDLGLPOINTPARAMETERFEXTPROC                                 exdl_glPointParameterfEXT;
EXDL_EXTERN EXDLGLPOINTPARAMETERFVEXTPROC                                exdl_glPointParameterfvEXT;
/* GL_SGIS_point_parameters */
EXDL_EXTERN EXDLGLPOINTPARAMETERFSGISPROC                                exdl_glPointParameterfSGIS;
EXDL_EXTERN EXDLGLPOINTPARAMETERFVSGISPROC                               exdl_glPointParameterfvSGIS;
/* GL_SGIX_instruments */
EXDL_EXTERN EXDLGLGETINSTRUMENTSSGIXPROC                                 exdl_glGetInstrumentsSGIX;
EXDL_EXTERN EXDLGLINSTRUMENTSBUFFERSGIXPROC                              exdl_glInstrumentsBufferSGIX;
EXDL_EXTERN EXDLGLPOLLINSTRUMENTSSGIXPROC                                exdl_glPollInstrumentsSGIX;
EXDL_EXTERN EXDLGLREADINSTRUMENTSSGIXPROC                                exdl_glReadInstrumentsSGIX;
EXDL_EXTERN EXDLGLSTARTINSTRUMENTSSGIXPROC                               exdl_glStartInstrumentsSGIX;
EXDL_EXTERN EXDLGLSTOPINSTRUMENTSSGIXPROC                                exdl_glStopInstrumentsSGIX;
/* GL_SGIX_texture_scale_bias */
/* GL_SGIX_framezoom */
EXDL_EXTERN EXDLGLFRAMEZOOMSGIXPROC                                      exdl_glFrameZoomSGIX;
/* GL_SGIX_tag_sample_buffer */
EXDL_EXTERN EXDLGLTAGSAMPLEBUFFERSGIXPROC                                exdl_glTagSampleBufferSGIX;
/* GL_SGIX_polynomial_ffd */
EXDL_EXTERN EXDLGLDEFORMATIONMAP3DSGIXPROC                               exdl_glDeformationMap3dSGIX;
EXDL_EXTERN EXDLGLDEFORMATIONMAP3FSGIXPROC                               exdl_glDeformationMap3fSGIX;
EXDL_EXTERN EXDLGLDEFORMSGIXPROC                                         exdl_glDeformSGIX;
EXDL_EXTERN EXDLGLLOADIDENTITYDEFORMATIONMAPSGIXPROC                     exdl_glLoadIdentityDeformationMapSGIX;
/* GL_SGIX_reference_plane */
EXDL_EXTERN EXDLGLREFERENCEPLANESGIXPROC                                 exdl_glReferencePlaneSGIX;
/* GL_SGIX_flush_raster */
EXDL_EXTERN EXDLGLFLUSHRASTERSGIXPROC                                    exdl_glFlushRasterSGIX;
/* GL_SGIX_depth_texture */
/* GL_SGIS_fog_function */
EXDL_EXTERN EXDLGLFOGFUNCSGISPROC                                        exdl_glFogFuncSGIS;
EXDL_EXTERN EXDLGLGETFOGFUNCSGISPROC                                     exdl_glGetFogFuncSGIS;
/* GL_SGIX_fog_offset */
/* GL_HP_image_transform */
EXDL_EXTERN EXDLGLIMAGETRANSFORMPARAMETERIHPPROC                         exdl_glImageTransformParameteriHP;
EXDL_EXTERN EXDLGLIMAGETRANSFORMPARAMETERFHPPROC                         exdl_glImageTransformParameterfHP;
EXDL_EXTERN EXDLGLIMAGETRANSFORMPARAMETERIVHPPROC                        exdl_glImageTransformParameterivHP;
EXDL_EXTERN EXDLGLIMAGETRANSFORMPARAMETERFVHPPROC                        exdl_glImageTransformParameterfvHP;
EXDL_EXTERN EXDLGLGETIMAGETRANSFORMPARAMETERIVHPPROC                     exdl_glGetImageTransformParameterivHP;
EXDL_EXTERN EXDLGLGETIMAGETRANSFORMPARAMETERFVHPPROC                     exdl_glGetImageTransformParameterfvHP;
/* GL_HP_convolution_border_modes */
/* GL_SGIX_texture_add_env */
/* GL_EXT_color_subtable */
EXDL_EXTERN EXDLGLCOLORSUBTABLEEXTPROC                                   exdl_glColorSubTableEXT;
EXDL_EXTERN EXDLGLCOPYCOLORSUBTABLEEXTPROC                               exdl_glCopyColorSubTableEXT;
/* GL_PGI_vertex_hints */
/* GL_PGI_misc_hints */
EXDL_EXTERN EXDLGLHINTPGIPROC                                            exdl_glHintPGI;
/* GL_EXT_paletted_texture */
EXDL_EXTERN EXDLGLCOLORTABLEEXTPROC                                      exdl_glColorTableEXT;
EXDL_EXTERN EXDLGLGETCOLORTABLEEXTPROC                                   exdl_glGetColorTableEXT;
EXDL_EXTERN EXDLGLGETCOLORTABLEPARAMETERIVEXTPROC                        exdl_glGetColorTableParameterivEXT;
EXDL_EXTERN EXDLGLGETCOLORTABLEPARAMETERFVEXTPROC                        exdl_glGetColorTableParameterfvEXT;
/* GL_EXT_clip_volume_hint */
/* GL_SGIX_list_priority */
EXDL_EXTERN EXDLGLGETLISTPARAMETERFVSGIXPROC                             exdl_glGetListParameterfvSGIX;
EXDL_EXTERN EXDLGLGETLISTPARAMETERIVSGIXPROC                             exdl_glGetListParameterivSGIX;
EXDL_EXTERN EXDLGLLISTPARAMETERFSGIXPROC                                 exdl_glListParameterfSGIX;
EXDL_EXTERN EXDLGLLISTPARAMETERFVSGIXPROC                                exdl_glListParameterfvSGIX;
EXDL_EXTERN EXDLGLLISTPARAMETERISGIXPROC                                 exdl_glListParameteriSGIX;
EXDL_EXTERN EXDLGLLISTPARAMETERIVSGIXPROC                                exdl_glListParameterivSGIX;
/* GL_SGIX_ir_instrument1 */
/* GL_SGIX_calligraphic_fragment */
/* GL_SGIX_texture_lod_bias */
/* GL_SGIX_shadow_ambient */
/* GL_EXT_index_texture */
/* GL_EXT_index_material */
EXDL_EXTERN EXDLGLINDEXMATERIALEXTPROC                                   exdl_glIndexMaterialEXT;
/* GL_EXT_index_func */
EXDL_EXTERN EXDLGLINDEXFUNCEXTPROC                                       exdl_glIndexFuncEXT;
/* GL_EXT_index_array_formats */
/* GL_EXT_compiled_vertex_array */
EXDL_EXTERN EXDLGLLOCKARRAYSEXTPROC                                      exdl_glLockArraysEXT;
EXDL_EXTERN EXDLGLUNLOCKARRAYSEXTPROC                                    exdl_glUnlockArraysEXT;
/* GL_EXT_cull_vertex */
EXDL_EXTERN EXDLGLCULLPARAMETERDVEXTPROC                                 exdl_glCullParameterdvEXT;
EXDL_EXTERN EXDLGLCULLPARAMETERFVEXTPROC                                 exdl_glCullParameterfvEXT;
/* GL_SGIX_ycrcb */
/* GL_SGIX_fragment_lighting */
EXDL_EXTERN EXDLGLFRAGMENTCOLORMATERIALSGIXPROC                          exdl_glFragmentColorMaterialSGIX;
EXDL_EXTERN EXDLGLFRAGMENTLIGHTFSGIXPROC                                 exdl_glFragmentLightfSGIX;
EXDL_EXTERN EXDLGLFRAGMENTLIGHTFVSGIXPROC                                exdl_glFragmentLightfvSGIX;
EXDL_EXTERN EXDLGLFRAGMENTLIGHTISGIXPROC                                 exdl_glFragmentLightiSGIX;
EXDL_EXTERN EXDLGLFRAGMENTLIGHTIVSGIXPROC                                exdl_glFragmentLightivSGIX;
EXDL_EXTERN EXDLGLFRAGMENTLIGHTMODELFSGIXPROC                            exdl_glFragmentLightModelfSGIX;
EXDL_EXTERN EXDLGLFRAGMENTLIGHTMODELFVSGIXPROC                           exdl_glFragmentLightModelfvSGIX;
EXDL_EXTERN EXDLGLFRAGMENTLIGHTMODELISGIXPROC                            exdl_glFragmentLightModeliSGIX;
EXDL_EXTERN EXDLGLFRAGMENTLIGHTMODELIVSGIXPROC                           exdl_glFragmentLightModelivSGIX;
EXDL_EXTERN EXDLGLFRAGMENTMATERIALFSGIXPROC                              exdl_glFragmentMaterialfSGIX;
EXDL_EXTERN EXDLGLFRAGMENTMATERIALFVSGIXPROC                             exdl_glFragmentMaterialfvSGIX;
EXDL_EXTERN EXDLGLFRAGMENTMATERIALISGIXPROC                              exdl_glFragmentMaterialiSGIX;
EXDL_EXTERN EXDLGLFRAGMENTMATERIALIVSGIXPROC                             exdl_glFragmentMaterialivSGIX;
EXDL_EXTERN EXDLGLGETFRAGMENTLIGHTFVSGIXPROC                             exdl_glGetFragmentLightfvSGIX;
EXDL_EXTERN EXDLGLGETFRAGMENTLIGHTIVSGIXPROC                             exdl_glGetFragmentLightivSGIX;
EXDL_EXTERN EXDLGLGETFRAGMENTMATERIALFVSGIXPROC                          exdl_glGetFragmentMaterialfvSGIX;
EXDL_EXTERN EXDLGLGETFRAGMENTMATERIALIVSGIXPROC                          exdl_glGetFragmentMaterialivSGIX;
EXDL_EXTERN EXDLGLLIGHTENVISGIXPROC                                      exdl_glLightEnviSGIX;
/* GL_IBM_rasterpos_clip */
/* GL_HP_texture_lighting */
/* GL_EXT_draw_range_elements */
EXDL_EXTERN EXDLGLDRAWRANGEELEMENTSEXTPROC                               exdl_glDrawRangeElementsEXT;
/* GL_WIN_phong_shading */
/* GL_WIN_specular_fog */
/* GL_EXT_light_texture */
EXDL_EXTERN EXDLGLAPPLYTEXTUREEXTPROC                                    exdl_glApplyTextureEXT;
EXDL_EXTERN EXDLGLTEXTURELIGHTEXTPROC                                    exdl_glTextureLightEXT;
EXDL_EXTERN EXDLGLTEXTUREMATERIALEXTPROC                                 exdl_glTextureMaterialEXT;
/* GL_SGIX_blend_alpha_minmax */
/* GL_EXT_bgra */
/* GL_SGIX_async */
EXDL_EXTERN EXDLGLASYNCMARKERSGIXPROC                                    exdl_glAsyncMarkerSGIX;
EXDL_EXTERN EXDLGLFINISHASYNCSGIXPROC                                    exdl_glFinishAsyncSGIX;
EXDL_EXTERN EXDLGLPOLLASYNCSGIXPROC                                      exdl_glPollAsyncSGIX;
EXDL_EXTERN EXDLGLGENASYNCMARKERSSGIXPROC                                exdl_glGenAsyncMarkersSGIX;
EXDL_EXTERN EXDLGLDELETEASYNCMARKERSSGIXPROC                             exdl_glDeleteAsyncMarkersSGIX;
EXDL_EXTERN EXDLGLISASYNCMARKERSGIXPROC                                  exdl_glIsAsyncMarkerSGIX;
/* GL_SGIX_async_pixel */
/* GL_SGIX_async_histogram */
/* GL_INTEL_parallel_arrays */
EXDL_EXTERN EXDLGLVERTEXPOINTERVINTELPROC                                exdl_glVertexPointervINTEL;
EXDL_EXTERN EXDLGLNORMALPOINTERVINTELPROC                                exdl_glNormalPointervINTEL;
EXDL_EXTERN EXDLGLCOLORPOINTERVINTELPROC                                 exdl_glColorPointervINTEL;
EXDL_EXTERN EXDLGLTEXCOORDPOINTERVINTELPROC                              exdl_glTexCoordPointervINTEL;
/* GL_HP_occlusion_test */
/* GL_EXT_pixel_transform */
EXDL_EXTERN EXDLGLPIXELTRANSFORMPARAMETERIEXTPROC                        exdl_glPixelTransformParameteriEXT;
EXDL_EXTERN EXDLGLPIXELTRANSFORMPARAMETERFEXTPROC                        exdl_glPixelTransformParameterfEXT;
EXDL_EXTERN EXDLGLPIXELTRANSFORMPARAMETERIVEXTPROC                       exdl_glPixelTransformParameterivEXT;
EXDL_EXTERN EXDLGLPIXELTRANSFORMPARAMETERFVEXTPROC                       exdl_glPixelTransformParameterfvEXT;
/* GL_EXT_pixel_transform_color_table */
/* GL_EXT_shared_texture_palette */
/* GL_EXT_separate_specular_color */
/* GL_EXT_secondary_color */
EXDL_EXTERN EXDLGLSECONDARYCOLOR3BEXTPROC                                exdl_glSecondaryColor3bEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3BVEXTPROC                               exdl_glSecondaryColor3bvEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3DEXTPROC                                exdl_glSecondaryColor3dEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3DVEXTPROC                               exdl_glSecondaryColor3dvEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3FEXTPROC                                exdl_glSecondaryColor3fEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3FVEXTPROC                               exdl_glSecondaryColor3fvEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3IEXTPROC                                exdl_glSecondaryColor3iEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3IVEXTPROC                               exdl_glSecondaryColor3ivEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3SEXTPROC                                exdl_glSecondaryColor3sEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3SVEXTPROC                               exdl_glSecondaryColor3svEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3UBEXTPROC                               exdl_glSecondaryColor3ubEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3UBVEXTPROC                              exdl_glSecondaryColor3ubvEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3UIEXTPROC                               exdl_glSecondaryColor3uiEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3UIVEXTPROC                              exdl_glSecondaryColor3uivEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3USEXTPROC                               exdl_glSecondaryColor3usEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3USVEXTPROC                              exdl_glSecondaryColor3usvEXT;
EXDL_EXTERN EXDLGLSECONDARYCOLORPOINTEREXTPROC                           exdl_glSecondaryColorPointerEXT;
/* GL_EXT_texture_perturb_normal */
EXDL_EXTERN EXDLGLTEXTURENORMALEXTPROC                                   exdl_glTextureNormalEXT;
/* GL_EXT_multi_draw_arrays */
EXDL_EXTERN EXDLGLMULTIDRAWARRAYSEXTPROC                                 exdl_glMultiDrawArraysEXT;
EXDL_EXTERN EXDLGLMULTIDRAWELEMENTSEXTPROC                               exdl_glMultiDrawElementsEXT;
/* GL_EXT_fog_coord */
EXDL_EXTERN EXDLGLFOGCOORDFEXTPROC                                       exdl_glFogCoordfEXT;
EXDL_EXTERN EXDLGLFOGCOORDFVEXTPROC                                      exdl_glFogCoordfvEXT;
EXDL_EXTERN EXDLGLFOGCOORDDEXTPROC                                       exdl_glFogCoorddEXT;
EXDL_EXTERN EXDLGLFOGCOORDDVEXTPROC                                      exdl_glFogCoorddvEXT;
EXDL_EXTERN EXDLGLFOGCOORDPOINTEREXTPROC                                 exdl_glFogCoordPointerEXT;
/* GL_REND_screen_coordinates */
/* GL_EXT_coordinate_frame */
EXDL_EXTERN EXDLGLTANGENT3BEXTPROC                                       exdl_glTangent3bEXT;
EXDL_EXTERN EXDLGLTANGENT3BVEXTPROC                                      exdl_glTangent3bvEXT;
EXDL_EXTERN EXDLGLTANGENT3DEXTPROC                                       exdl_glTangent3dEXT;
EXDL_EXTERN EXDLGLTANGENT3DVEXTPROC                                      exdl_glTangent3dvEXT;
EXDL_EXTERN EXDLGLTANGENT3FEXTPROC                                       exdl_glTangent3fEXT;
EXDL_EXTERN EXDLGLTANGENT3FVEXTPROC                                      exdl_glTangent3fvEXT;
EXDL_EXTERN EXDLGLTANGENT3IEXTPROC                                       exdl_glTangent3iEXT;
EXDL_EXTERN EXDLGLTANGENT3IVEXTPROC                                      exdl_glTangent3ivEXT;
EXDL_EXTERN EXDLGLTANGENT3SEXTPROC                                       exdl_glTangent3sEXT;
EXDL_EXTERN EXDLGLTANGENT3SVEXTPROC                                      exdl_glTangent3svEXT;
EXDL_EXTERN EXDLGLBINORMAL3BEXTPROC                                      exdl_glBinormal3bEXT;
EXDL_EXTERN EXDLGLBINORMAL3BVEXTPROC                                     exdl_glBinormal3bvEXT;
EXDL_EXTERN EXDLGLBINORMAL3DEXTPROC                                      exdl_glBinormal3dEXT;
EXDL_EXTERN EXDLGLBINORMAL3DVEXTPROC                                     exdl_glBinormal3dvEXT;
EXDL_EXTERN EXDLGLBINORMAL3FEXTPROC                                      exdl_glBinormal3fEXT;
EXDL_EXTERN EXDLGLBINORMAL3FVEXTPROC                                     exdl_glBinormal3fvEXT;
EXDL_EXTERN EXDLGLBINORMAL3IEXTPROC                                      exdl_glBinormal3iEXT;
EXDL_EXTERN EXDLGLBINORMAL3IVEXTPROC                                     exdl_glBinormal3ivEXT;
EXDL_EXTERN EXDLGLBINORMAL3SEXTPROC                                      exdl_glBinormal3sEXT;
EXDL_EXTERN EXDLGLBINORMAL3SVEXTPROC                                     exdl_glBinormal3svEXT;
EXDL_EXTERN EXDLGLTANGENTPOINTEREXTPROC                                  exdl_glTangentPointerEXT;
EXDL_EXTERN EXDLGLBINORMALPOINTEREXTPROC                                 exdl_glBinormalPointerEXT;
/* GL_EXT_texture_env_combine */
/* GL_APPLE_specular_vector */
/* GL_APPLE_transform_hint */
/* GL_SGIX_fog_scale */
/* GL_SUNX_constant_data */
EXDL_EXTERN EXDLGLFINISHTEXTURESUNXPROC                                  exdl_glFinishTextureSUNX;
/* GL_SUN_global_alpha */
EXDL_EXTERN EXDLGLGLOBALALPHAFACTORBSUNPROC                              exdl_glGlobalAlphaFactorbSUN;
EXDL_EXTERN EXDLGLGLOBALALPHAFACTORSSUNPROC                              exdl_glGlobalAlphaFactorsSUN;
EXDL_EXTERN EXDLGLGLOBALALPHAFACTORISUNPROC                              exdl_glGlobalAlphaFactoriSUN;
EXDL_EXTERN EXDLGLGLOBALALPHAFACTORFSUNPROC                              exdl_glGlobalAlphaFactorfSUN;
EXDL_EXTERN EXDLGLGLOBALALPHAFACTORDSUNPROC                              exdl_glGlobalAlphaFactordSUN;
EXDL_EXTERN EXDLGLGLOBALALPHAFACTORUBSUNPROC                             exdl_glGlobalAlphaFactorubSUN;
EXDL_EXTERN EXDLGLGLOBALALPHAFACTORUSSUNPROC                             exdl_glGlobalAlphaFactorusSUN;
EXDL_EXTERN EXDLGLGLOBALALPHAFACTORUISUNPROC                             exdl_glGlobalAlphaFactoruiSUN;
/* GL_SUN_triangle_list */
EXDL_EXTERN EXDLGLREPLACEMENTCODEUISUNPROC                               exdl_glReplacementCodeuiSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUSSUNPROC                               exdl_glReplacementCodeusSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUBSUNPROC                               exdl_glReplacementCodeubSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUIVSUNPROC                              exdl_glReplacementCodeuivSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUSVSUNPROC                              exdl_glReplacementCodeusvSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUBVSUNPROC                              exdl_glReplacementCodeubvSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEPOINTERSUNPROC                          exdl_glReplacementCodePointerSUN;
/* GL_SUN_vertex */
EXDL_EXTERN EXDLGLCOLOR4UBVERTEX2FSUNPROC                                exdl_glColor4ubVertex2fSUN;
EXDL_EXTERN EXDLGLCOLOR4UBVERTEX2FVSUNPROC                               exdl_glColor4ubVertex2fvSUN;
EXDL_EXTERN EXDLGLCOLOR4UBVERTEX3FSUNPROC                                exdl_glColor4ubVertex3fSUN;
EXDL_EXTERN EXDLGLCOLOR4UBVERTEX3FVSUNPROC                               exdl_glColor4ubVertex3fvSUN;
EXDL_EXTERN EXDLGLCOLOR3FVERTEX3FSUNPROC                                 exdl_glColor3fVertex3fSUN;
EXDL_EXTERN EXDLGLCOLOR3FVERTEX3FVSUNPROC                                exdl_glColor3fVertex3fvSUN;
EXDL_EXTERN EXDLGLNORMAL3FVERTEX3FSUNPROC                                exdl_glNormal3fVertex3fSUN;
EXDL_EXTERN EXDLGLNORMAL3FVERTEX3FVSUNPROC                               exdl_glNormal3fVertex3fvSUN;
EXDL_EXTERN EXDLGLCOLOR4FNORMAL3FVERTEX3FSUNPROC                         exdl_glColor4fNormal3fVertex3fSUN;
EXDL_EXTERN EXDLGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC                        exdl_glColor4fNormal3fVertex3fvSUN;
EXDL_EXTERN EXDLGLTEXCOORD2FVERTEX3FSUNPROC                              exdl_glTexCoord2fVertex3fSUN;
EXDL_EXTERN EXDLGLTEXCOORD2FVERTEX3FVSUNPROC                             exdl_glTexCoord2fVertex3fvSUN;
EXDL_EXTERN EXDLGLTEXCOORD4FVERTEX4FSUNPROC                              exdl_glTexCoord4fVertex4fSUN;
EXDL_EXTERN EXDLGLTEXCOORD4FVERTEX4FVSUNPROC                             exdl_glTexCoord4fVertex4fvSUN;
EXDL_EXTERN EXDLGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC                      exdl_glTexCoord2fColor4ubVertex3fSUN;
EXDL_EXTERN EXDLGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC                     exdl_glTexCoord2fColor4ubVertex3fvSUN;
EXDL_EXTERN EXDLGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC                       exdl_glTexCoord2fColor3fVertex3fSUN;
EXDL_EXTERN EXDLGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC                      exdl_glTexCoord2fColor3fVertex3fvSUN;
EXDL_EXTERN EXDLGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC                      exdl_glTexCoord2fNormal3fVertex3fSUN;
EXDL_EXTERN EXDLGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC                     exdl_glTexCoord2fNormal3fVertex3fvSUN;
EXDL_EXTERN EXDLGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC               exdl_glTexCoord2fColor4fNormal3fVertex3fSUN;
EXDL_EXTERN EXDLGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC              exdl_glTexCoord2fColor4fNormal3fVertex3fvSUN;
EXDL_EXTERN EXDLGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC               exdl_glTexCoord4fColor4fNormal3fVertex4fSUN;
EXDL_EXTERN EXDLGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC              exdl_glTexCoord4fColor4fNormal3fVertex4fvSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUIVERTEX3FSUNPROC                       exdl_glReplacementCodeuiVertex3fSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUIVERTEX3FVSUNPROC                      exdl_glReplacementCodeuiVertex3fvSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC               exdl_glReplacementCodeuiColor4ubVertex3fSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC              exdl_glReplacementCodeuiColor4ubVertex3fvSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC                exdl_glReplacementCodeuiColor3fVertex3fSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC               exdl_glReplacementCodeuiColor3fVertex3fvSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC               exdl_glReplacementCodeuiNormal3fVertex3fSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC              exdl_glReplacementCodeuiNormal3fVertex3fvSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC        exdl_glReplacementCodeuiColor4fNormal3fVertex3fSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC       exdl_glReplacementCodeuiColor4fNormal3fVertex3fvSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC             exdl_glReplacementCodeuiTexCoord2fVertex3fSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC            exdl_glReplacementCodeuiTexCoord2fVertex3fvSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC     exdl_glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC    exdl_glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC  exdl_glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN;
EXDL_EXTERN EXDLGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC  exdl_glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN;
/* GL_EXT_blend_func_separate */
EXDL_EXTERN EXDLGLBLENDFUNCSEPARATEEXTPROC                               exdl_glBlendFuncSeparateEXT;
/* GL_INGR_blend_func_separate */
EXDL_EXTERN EXDLGLBLENDFUNCSEPARATEINGRPROC                              exdl_glBlendFuncSeparateINGR;
/* GL_INGR_color_clamp */
/* GL_INGR_interlace_read */
/* GL_EXT_stencil_wrap */
/* GL_EXT_422_pixels */
/* GL_NV_texgen_reflection */
/* GL_SUN_convolution_border_modes */
/* GL_EXT_texture_env_add */
/* GL_EXT_texture_lod_bias */
/* GL_EXT_texture_filter_anisotropic */
/* GL_EXT_vertex_weighting */
EXDL_EXTERN EXDLGLVERTEXWEIGHTFEXTPROC                                   exdl_glVertexWeightfEXT;
EXDL_EXTERN EXDLGLVERTEXWEIGHTFVEXTPROC                                  exdl_glVertexWeightfvEXT;
EXDL_EXTERN EXDLGLVERTEXWEIGHTPOINTEREXTPROC                             exdl_glVertexWeightPointerEXT;
/* GL_NV_light_max_exponent */
/* GL_NV_vertex_array_range */
EXDL_EXTERN EXDLGLFLUSHVERTEXARRAYRANGENVPROC                            exdl_glFlushVertexArrayRangeNV;
EXDL_EXTERN EXDLGLVERTEXARRAYRANGENVPROC                                 exdl_glVertexArrayRangeNV;
/* GL_NV_register_combiners */
EXDL_EXTERN EXDLGLCOMBINERPARAMETERFVNVPROC                              exdl_glCombinerParameterfvNV;
EXDL_EXTERN EXDLGLCOMBINERPARAMETERFNVPROC                               exdl_glCombinerParameterfNV;
EXDL_EXTERN EXDLGLCOMBINERPARAMETERIVNVPROC                              exdl_glCombinerParameterivNV;
EXDL_EXTERN EXDLGLCOMBINERPARAMETERINVPROC                               exdl_glCombinerParameteriNV;
EXDL_EXTERN EXDLGLCOMBINERINPUTNVPROC                                    exdl_glCombinerInputNV;
EXDL_EXTERN EXDLGLCOMBINEROUTPUTNVPROC                                   exdl_glCombinerOutputNV;
EXDL_EXTERN EXDLGLFINALCOMBINERINPUTNVPROC                               exdl_glFinalCombinerInputNV;
EXDL_EXTERN EXDLGLGETCOMBINERINPUTPARAMETERFVNVPROC                      exdl_glGetCombinerInputParameterfvNV;
EXDL_EXTERN EXDLGLGETCOMBINERINPUTPARAMETERIVNVPROC                      exdl_glGetCombinerInputParameterivNV;
EXDL_EXTERN EXDLGLGETCOMBINEROUTPUTPARAMETERFVNVPROC                     exdl_glGetCombinerOutputParameterfvNV;
EXDL_EXTERN EXDLGLGETCOMBINEROUTPUTPARAMETERIVNVPROC                     exdl_glGetCombinerOutputParameterivNV;
EXDL_EXTERN EXDLGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC                 exdl_glGetFinalCombinerInputParameterfvNV;
EXDL_EXTERN EXDLGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC                 exdl_glGetFinalCombinerInputParameterivNV;
/* GL_NV_fog_distance */
/* GL_NV_texgen_emboss */
/* GL_NV_blend_square */
/* GL_NV_texture_env_combine4 */
/* GL_MESA_resize_buffers */
EXDL_EXTERN EXDLGLRESIZEBUFFERSMESAPROC                                  exdl_glResizeBuffersMESA;
/* GL_MESA_window_pos */
EXDL_EXTERN EXDLGLWINDOWPOS2DMESAPROC                                    exdl_glWindowPos2dMESA;
EXDL_EXTERN EXDLGLWINDOWPOS2DVMESAPROC                                   exdl_glWindowPos2dvMESA;
EXDL_EXTERN EXDLGLWINDOWPOS2FMESAPROC                                    exdl_glWindowPos2fMESA;
EXDL_EXTERN EXDLGLWINDOWPOS2FVMESAPROC                                   exdl_glWindowPos2fvMESA;
EXDL_EXTERN EXDLGLWINDOWPOS2IMESAPROC                                    exdl_glWindowPos2iMESA;
EXDL_EXTERN EXDLGLWINDOWPOS2IVMESAPROC                                   exdl_glWindowPos2ivMESA;
EXDL_EXTERN EXDLGLWINDOWPOS2SMESAPROC                                    exdl_glWindowPos2sMESA;
EXDL_EXTERN EXDLGLWINDOWPOS2SVMESAPROC                                   exdl_glWindowPos2svMESA;
EXDL_EXTERN EXDLGLWINDOWPOS3DMESAPROC                                    exdl_glWindowPos3dMESA;
EXDL_EXTERN EXDLGLWINDOWPOS3DVMESAPROC                                   exdl_glWindowPos3dvMESA;
EXDL_EXTERN EXDLGLWINDOWPOS3FMESAPROC                                    exdl_glWindowPos3fMESA;
EXDL_EXTERN EXDLGLWINDOWPOS3FVMESAPROC                                   exdl_glWindowPos3fvMESA;
EXDL_EXTERN EXDLGLWINDOWPOS3IMESAPROC                                    exdl_glWindowPos3iMESA;
EXDL_EXTERN EXDLGLWINDOWPOS3IVMESAPROC                                   exdl_glWindowPos3ivMESA;
EXDL_EXTERN EXDLGLWINDOWPOS3SMESAPROC                                    exdl_glWindowPos3sMESA;
EXDL_EXTERN EXDLGLWINDOWPOS3SVMESAPROC                                   exdl_glWindowPos3svMESA;
EXDL_EXTERN EXDLGLWINDOWPOS4DMESAPROC                                    exdl_glWindowPos4dMESA;
EXDL_EXTERN EXDLGLWINDOWPOS4DVMESAPROC                                   exdl_glWindowPos4dvMESA;
EXDL_EXTERN EXDLGLWINDOWPOS4FMESAPROC                                    exdl_glWindowPos4fMESA;
EXDL_EXTERN EXDLGLWINDOWPOS4FVMESAPROC                                   exdl_glWindowPos4fvMESA;
EXDL_EXTERN EXDLGLWINDOWPOS4IMESAPROC                                    exdl_glWindowPos4iMESA;
EXDL_EXTERN EXDLGLWINDOWPOS4IVMESAPROC                                   exdl_glWindowPos4ivMESA;
EXDL_EXTERN EXDLGLWINDOWPOS4SMESAPROC                                    exdl_glWindowPos4sMESA;
EXDL_EXTERN EXDLGLWINDOWPOS4SVMESAPROC                                   exdl_glWindowPos4svMESA;
/* GL_IBM_cull_vertex */
/* GL_IBM_multimode_draw_arrays */
EXDL_EXTERN EXDLGLMULTIMODEDRAWARRAYSIBMPROC                             exdl_glMultiModeDrawArraysIBM;
EXDL_EXTERN EXDLGLMULTIMODEDRAWELEMENTSIBMPROC                           exdl_glMultiModeDrawElementsIBM;
/* GL_IBM_vertex_array_lists */
EXDL_EXTERN EXDLGLCOLORPOINTERLISTIBMPROC                                exdl_glColorPointerListIBM;
EXDL_EXTERN EXDLGLSECONDARYCOLORPOINTERLISTIBMPROC                       exdl_glSecondaryColorPointerListIBM;
EXDL_EXTERN EXDLGLEDGEFLAGPOINTERLISTIBMPROC                             exdl_glEdgeFlagPointerListIBM;
EXDL_EXTERN EXDLGLFOGCOORDPOINTERLISTIBMPROC                             exdl_glFogCoordPointerListIBM;
EXDL_EXTERN EXDLGLINDEXPOINTERLISTIBMPROC                                exdl_glIndexPointerListIBM;
EXDL_EXTERN EXDLGLNORMALPOINTERLISTIBMPROC                               exdl_glNormalPointerListIBM;
EXDL_EXTERN EXDLGLTEXCOORDPOINTERLISTIBMPROC                             exdl_glTexCoordPointerListIBM;
EXDL_EXTERN EXDLGLVERTEXPOINTERLISTIBMPROC                               exdl_glVertexPointerListIBM;
/* GL_SGIX_subsample */
/* GL_SGIX_ycrcba */
/* GL_SGIX_ycrcb_subsample */
/* GL_SGIX_depth_pass_instrument */
/* GL_3DFX_texture_compression_FXT1 */
/* GL_3DFX_multisample */
/* GL_3DFX_tbuffer */
EXDL_EXTERN EXDLGLTBUFFERMASK3DFXPROC                                    exdl_glTbufferMask3DFX;
/* GL_EXT_multisample */
EXDL_EXTERN EXDLGLSAMPLEMASKEXTPROC                                      exdl_glSampleMaskEXT;
EXDL_EXTERN EXDLGLSAMPLEPATTERNEXTPROC                                   exdl_glSamplePatternEXT;
/* GL_SGIX_vertex_preclip */
/* GL_SGIX_convolution_accuracy */
/* GL_SGIX_resample */
/* GL_SGIS_point_line_texgen */
/* GL_SGIS_texture_color_mask */
EXDL_EXTERN EXDLGLTEXTURECOLORMASKSGISPROC                               exdl_glTextureColorMaskSGIS;
/* GL_SGIX_igloo_interface */
EXDL_EXTERN EXDLGLIGLOOINTERFACESGIXPROC                                 exdl_glIglooInterfaceSGIX;
/* GL_EXT_texture_env_dot3 */
/* GL_ATI_texture_mirror_once */
/* GL_NV_fence */
EXDL_EXTERN EXDLGLDELETEFENCESNVPROC                                     exdl_glDeleteFencesNV;
EXDL_EXTERN EXDLGLGENFENCESNVPROC                                        exdl_glGenFencesNV;
EXDL_EXTERN EXDLGLISFENCENVPROC                                          exdl_glIsFenceNV;
EXDL_EXTERN EXDLGLTESTFENCENVPROC                                        exdl_glTestFenceNV;
EXDL_EXTERN EXDLGLGETFENCEIVNVPROC                                       exdl_glGetFenceivNV;
EXDL_EXTERN EXDLGLFINISHFENCENVPROC                                      exdl_glFinishFenceNV;
EXDL_EXTERN EXDLGLSETFENCENVPROC                                         exdl_glSetFenceNV;
/* GL_NV_evaluators */
EXDL_EXTERN EXDLGLMAPCONTROLPOINTSNVPROC                                 exdl_glMapControlPointsNV;
EXDL_EXTERN EXDLGLMAPPARAMETERIVNVPROC                                   exdl_glMapParameterivNV;
EXDL_EXTERN EXDLGLMAPPARAMETERFVNVPROC                                   exdl_glMapParameterfvNV;
EXDL_EXTERN EXDLGLGETMAPCONTROLPOINTSNVPROC                              exdl_glGetMapControlPointsNV;
EXDL_EXTERN EXDLGLGETMAPPARAMETERIVNVPROC                                exdl_glGetMapParameterivNV;
EXDL_EXTERN EXDLGLGETMAPPARAMETERFVNVPROC                                exdl_glGetMapParameterfvNV;
EXDL_EXTERN EXDLGLGETMAPATTRIBPARAMETERIVNVPROC                          exdl_glGetMapAttribParameterivNV;
EXDL_EXTERN EXDLGLGETMAPATTRIBPARAMETERFVNVPROC                          exdl_glGetMapAttribParameterfvNV;
EXDL_EXTERN EXDLGLEVALMAPSNVPROC                                         exdl_glEvalMapsNV;
/* GL_NV_packed_depth_stencil */
/* GL_NV_register_combiners2 */
EXDL_EXTERN EXDLGLCOMBINERSTAGEPARAMETERFVNVPROC                         exdl_glCombinerStageParameterfvNV;
EXDL_EXTERN EXDLGLGETCOMBINERSTAGEPARAMETERFVNVPROC                      exdl_glGetCombinerStageParameterfvNV;
/* GL_NV_texture_compression_vtc */
/* GL_NV_texture_rectangle */
/* GL_NV_texture_shader */
/* GL_NV_texture_shader2 */
/* GL_NV_vertex_array_range2 */
/* GL_NV_vertex_program */
EXDL_EXTERN EXDLGLAREPROGRAMSRESIDENTNVPROC                              exdl_glAreProgramsResidentNV;
EXDL_EXTERN EXDLGLBINDPROGRAMNVPROC                                      exdl_glBindProgramNV;
EXDL_EXTERN EXDLGLDELETEPROGRAMSNVPROC                                   exdl_glDeleteProgramsNV;
EXDL_EXTERN EXDLGLEXECUTEPROGRAMNVPROC                                   exdl_glExecuteProgramNV;
EXDL_EXTERN EXDLGLGENPROGRAMSNVPROC                                      exdl_glGenProgramsNV;
EXDL_EXTERN EXDLGLGETPROGRAMPARAMETERDVNVPROC                            exdl_glGetProgramParameterdvNV;
EXDL_EXTERN EXDLGLGETPROGRAMPARAMETERFVNVPROC                            exdl_glGetProgramParameterfvNV;
EXDL_EXTERN EXDLGLGETPROGRAMIVNVPROC                                     exdl_glGetProgramivNV;
EXDL_EXTERN EXDLGLGETPROGRAMSTRINGNVPROC                                 exdl_glGetProgramStringNV;
EXDL_EXTERN EXDLGLGETTRACKMATRIXIVNVPROC                                 exdl_glGetTrackMatrixivNV;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBDVNVPROC                                exdl_glGetVertexAttribdvNV;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBFVNVPROC                                exdl_glGetVertexAttribfvNV;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBIVNVPROC                                exdl_glGetVertexAttribivNV;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBPOINTERVNVPROC                          exdl_glGetVertexAttribPointervNV;
EXDL_EXTERN EXDLGLISPROGRAMNVPROC                                        exdl_glIsProgramNV;
EXDL_EXTERN EXDLGLLOADPROGRAMNVPROC                                      exdl_glLoadProgramNV;
EXDL_EXTERN EXDLGLPROGRAMPARAMETER4DNVPROC                               exdl_glProgramParameter4dNV;
EXDL_EXTERN EXDLGLPROGRAMPARAMETER4DVNVPROC                              exdl_glProgramParameter4dvNV;
EXDL_EXTERN EXDLGLPROGRAMPARAMETER4FNVPROC                               exdl_glProgramParameter4fNV;
EXDL_EXTERN EXDLGLPROGRAMPARAMETER4FVNVPROC                              exdl_glProgramParameter4fvNV;
EXDL_EXTERN EXDLGLPROGRAMPARAMETERS4DVNVPROC                             exdl_glProgramParameters4dvNV;
EXDL_EXTERN EXDLGLPROGRAMPARAMETERS4FVNVPROC                             exdl_glProgramParameters4fvNV;
EXDL_EXTERN EXDLGLREQUESTRESIDENTPROGRAMSNVPROC                          exdl_glRequestResidentProgramsNV;
EXDL_EXTERN EXDLGLTRACKMATRIXNVPROC                                      exdl_glTrackMatrixNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBPOINTERNVPROC                              exdl_glVertexAttribPointerNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB1DNVPROC                                   exdl_glVertexAttrib1dNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB1DVNVPROC                                  exdl_glVertexAttrib1dvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB1FNVPROC                                   exdl_glVertexAttrib1fNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB1FVNVPROC                                  exdl_glVertexAttrib1fvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB1SNVPROC                                   exdl_glVertexAttrib1sNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB1SVNVPROC                                  exdl_glVertexAttrib1svNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB2DNVPROC                                   exdl_glVertexAttrib2dNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB2DVNVPROC                                  exdl_glVertexAttrib2dvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB2FNVPROC                                   exdl_glVertexAttrib2fNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB2FVNVPROC                                  exdl_glVertexAttrib2fvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB2SNVPROC                                   exdl_glVertexAttrib2sNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB2SVNVPROC                                  exdl_glVertexAttrib2svNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB3DNVPROC                                   exdl_glVertexAttrib3dNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB3DVNVPROC                                  exdl_glVertexAttrib3dvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB3FNVPROC                                   exdl_glVertexAttrib3fNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB3FVNVPROC                                  exdl_glVertexAttrib3fvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB3SNVPROC                                   exdl_glVertexAttrib3sNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB3SVNVPROC                                  exdl_glVertexAttrib3svNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB4DNVPROC                                   exdl_glVertexAttrib4dNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB4DVNVPROC                                  exdl_glVertexAttrib4dvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB4FNVPROC                                   exdl_glVertexAttrib4fNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB4FVNVPROC                                  exdl_glVertexAttrib4fvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB4SNVPROC                                   exdl_glVertexAttrib4sNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB4SVNVPROC                                  exdl_glVertexAttrib4svNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB4UBNVPROC                                  exdl_glVertexAttrib4ubNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB4UBVNVPROC                                 exdl_glVertexAttrib4ubvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS1DVNVPROC                                 exdl_glVertexAttribs1dvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS1FVNVPROC                                 exdl_glVertexAttribs1fvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS1SVNVPROC                                 exdl_glVertexAttribs1svNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS2DVNVPROC                                 exdl_glVertexAttribs2dvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS2FVNVPROC                                 exdl_glVertexAttribs2fvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS2SVNVPROC                                 exdl_glVertexAttribs2svNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS3DVNVPROC                                 exdl_glVertexAttribs3dvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS3FVNVPROC                                 exdl_glVertexAttribs3fvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS3SVNVPROC                                 exdl_glVertexAttribs3svNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS4DVNVPROC                                 exdl_glVertexAttribs4dvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS4FVNVPROC                                 exdl_glVertexAttribs4fvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS4SVNVPROC                                 exdl_glVertexAttribs4svNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS4UBVNVPROC                                exdl_glVertexAttribs4ubvNV;
/* GL_SGIX_texture_coordinate_clamp */
/* GL_SGIX_scalebias_hint */
/* GL_OML_interlace */
/* GL_OML_subsample */
/* GL_OML_resample */
/* GL_NV_copy_depth_to_color */
/* GL_ATI_envmap_bumpmap */
EXDL_EXTERN EXDLGLTEXBUMPPARAMETERIVATIPROC                              exdl_glTexBumpParameterivATI;
EXDL_EXTERN EXDLGLTEXBUMPPARAMETERFVATIPROC                              exdl_glTexBumpParameterfvATI;
EXDL_EXTERN EXDLGLGETTEXBUMPPARAMETERIVATIPROC                           exdl_glGetTexBumpParameterivATI;
EXDL_EXTERN EXDLGLGETTEXBUMPPARAMETERFVATIPROC                           exdl_glGetTexBumpParameterfvATI;
/* GL_ATI_fragment_shader */
EXDL_EXTERN EXDLGLGENFRAGMENTSHADERSATIPROC                              exdl_glGenFragmentShadersATI;
EXDL_EXTERN EXDLGLBINDFRAGMENTSHADERATIPROC                              exdl_glBindFragmentShaderATI;
EXDL_EXTERN EXDLGLDELETEFRAGMENTSHADERATIPROC                            exdl_glDeleteFragmentShaderATI;
EXDL_EXTERN EXDLGLBEGINFRAGMENTSHADERATIPROC                             exdl_glBeginFragmentShaderATI;
EXDL_EXTERN EXDLGLENDFRAGMENTSHADERATIPROC                               exdl_glEndFragmentShaderATI;
EXDL_EXTERN EXDLGLPASSTEXCOORDATIPROC                                    exdl_glPassTexCoordATI;
EXDL_EXTERN EXDLGLSAMPLEMAPATIPROC                                       exdl_glSampleMapATI;
EXDL_EXTERN EXDLGLCOLORFRAGMENTOP1ATIPROC                                exdl_glColorFragmentOp1ATI;
EXDL_EXTERN EXDLGLCOLORFRAGMENTOP2ATIPROC                                exdl_glColorFragmentOp2ATI;
EXDL_EXTERN EXDLGLCOLORFRAGMENTOP3ATIPROC                                exdl_glColorFragmentOp3ATI;
EXDL_EXTERN EXDLGLALPHAFRAGMENTOP1ATIPROC                                exdl_glAlphaFragmentOp1ATI;
EXDL_EXTERN EXDLGLALPHAFRAGMENTOP2ATIPROC                                exdl_glAlphaFragmentOp2ATI;
EXDL_EXTERN EXDLGLALPHAFRAGMENTOP3ATIPROC                                exdl_glAlphaFragmentOp3ATI;
EXDL_EXTERN EXDLGLSETFRAGMENTSHADERCONSTANTATIPROC                       exdl_glSetFragmentShaderConstantATI;
/* GL_ATI_pn_triangles */
EXDL_EXTERN EXDLGLPNTRIANGLESIATIPROC                                    exdl_glPNTrianglesiATI;
EXDL_EXTERN EXDLGLPNTRIANGLESFATIPROC                                    exdl_glPNTrianglesfATI;
/* GL_ATI_vertex_array_object */
EXDL_EXTERN EXDLGLNEWOBJECTBUFFERATIPROC                                 exdl_glNewObjectBufferATI;
EXDL_EXTERN EXDLGLISOBJECTBUFFERATIPROC                                  exdl_glIsObjectBufferATI;
EXDL_EXTERN EXDLGLUPDATEOBJECTBUFFERATIPROC                              exdl_glUpdateObjectBufferATI;
EXDL_EXTERN EXDLGLGETOBJECTBUFFERFVATIPROC                               exdl_glGetObjectBufferfvATI;
EXDL_EXTERN EXDLGLGETOBJECTBUFFERIVATIPROC                               exdl_glGetObjectBufferivATI;
EXDL_EXTERN EXDLGLFREEOBJECTBUFFERATIPROC                                exdl_glFreeObjectBufferATI;
EXDL_EXTERN EXDLGLARRAYOBJECTATIPROC                                     exdl_glArrayObjectATI;
EXDL_EXTERN EXDLGLGETARRAYOBJECTFVATIPROC                                exdl_glGetArrayObjectfvATI;
EXDL_EXTERN EXDLGLGETARRAYOBJECTIVATIPROC                                exdl_glGetArrayObjectivATI;
EXDL_EXTERN EXDLGLVARIANTARRAYOBJECTATIPROC                              exdl_glVariantArrayObjectATI;
EXDL_EXTERN EXDLGLGETVARIANTARRAYOBJECTFVATIPROC                         exdl_glGetVariantArrayObjectfvATI;
EXDL_EXTERN EXDLGLGETVARIANTARRAYOBJECTIVATIPROC                         exdl_glGetVariantArrayObjectivATI;
/* GL_EXT_vertex_shader */
EXDL_EXTERN EXDLGLBEGINVERTEXSHADEREXTPROC                               exdl_glBeginVertexShaderEXT;
EXDL_EXTERN EXDLGLENDVERTEXSHADEREXTPROC                                 exdl_glEndVertexShaderEXT;
EXDL_EXTERN EXDLGLBINDVERTEXSHADEREXTPROC                                exdl_glBindVertexShaderEXT;
EXDL_EXTERN EXDLGLGENVERTEXSHADERSEXTPROC                                exdl_glGenVertexShadersEXT;
EXDL_EXTERN EXDLGLDELETEVERTEXSHADEREXTPROC                              exdl_glDeleteVertexShaderEXT;
EXDL_EXTERN EXDLGLSHADEROP1EXTPROC                                       exdl_glShaderOp1EXT;
EXDL_EXTERN EXDLGLSHADEROP2EXTPROC                                       exdl_glShaderOp2EXT;
EXDL_EXTERN EXDLGLSHADEROP3EXTPROC                                       exdl_glShaderOp3EXT;
EXDL_EXTERN EXDLGLSWIZZLEEXTPROC                                         exdl_glSwizzleEXT;
EXDL_EXTERN EXDLGLWRITEMASKEXTPROC                                       exdl_glWriteMaskEXT;
EXDL_EXTERN EXDLGLINSERTCOMPONENTEXTPROC                                 exdl_glInsertComponentEXT;
EXDL_EXTERN EXDLGLEXTRACTCOMPONENTEXTPROC                                exdl_glExtractComponentEXT;
EXDL_EXTERN EXDLGLGENSYMBOLSEXTPROC                                      exdl_glGenSymbolsEXT;
EXDL_EXTERN EXDLGLSETINVARIANTEXTPROC                                    exdl_glSetInvariantEXT;
EXDL_EXTERN EXDLGLSETLOCALCONSTANTEXTPROC                                exdl_glSetLocalConstantEXT;
EXDL_EXTERN EXDLGLVARIANTBVEXTPROC                                       exdl_glVariantbvEXT;
EXDL_EXTERN EXDLGLVARIANTSVEXTPROC                                       exdl_glVariantsvEXT;
EXDL_EXTERN EXDLGLVARIANTIVEXTPROC                                       exdl_glVariantivEXT;
EXDL_EXTERN EXDLGLVARIANTFVEXTPROC                                       exdl_glVariantfvEXT;
EXDL_EXTERN EXDLGLVARIANTDVEXTPROC                                       exdl_glVariantdvEXT;
EXDL_EXTERN EXDLGLVARIANTUBVEXTPROC                                      exdl_glVariantubvEXT;
EXDL_EXTERN EXDLGLVARIANTUSVEXTPROC                                      exdl_glVariantusvEXT;
EXDL_EXTERN EXDLGLVARIANTUIVEXTPROC                                      exdl_glVariantuivEXT;
EXDL_EXTERN EXDLGLVARIANTPOINTEREXTPROC                                  exdl_glVariantPointerEXT;
EXDL_EXTERN EXDLGLENABLEVARIANTCLIENTSTATEEXTPROC                        exdl_glEnableVariantClientStateEXT;
EXDL_EXTERN EXDLGLDISABLEVARIANTCLIENTSTATEEXTPROC                       exdl_glDisableVariantClientStateEXT;
EXDL_EXTERN EXDLGLBINDLIGHTPARAMETEREXTPROC                              exdl_glBindLightParameterEXT;
EXDL_EXTERN EXDLGLBINDMATERIALPARAMETEREXTPROC                           exdl_glBindMaterialParameterEXT;
EXDL_EXTERN EXDLGLBINDTEXGENPARAMETEREXTPROC                             exdl_glBindTexGenParameterEXT;
EXDL_EXTERN EXDLGLBINDTEXTUREUNITPARAMETEREXTPROC                        exdl_glBindTextureUnitParameterEXT;
EXDL_EXTERN EXDLGLBINDPARAMETEREXTPROC                                   exdl_glBindParameterEXT;
EXDL_EXTERN EXDLGLISVARIANTENABLEDEXTPROC                                exdl_glIsVariantEnabledEXT;
EXDL_EXTERN EXDLGLGETVARIANTBOOLEANVEXTPROC                              exdl_glGetVariantBooleanvEXT;
EXDL_EXTERN EXDLGLGETVARIANTINTEGERVEXTPROC                              exdl_glGetVariantIntegervEXT;
EXDL_EXTERN EXDLGLGETVARIANTFLOATVEXTPROC                                exdl_glGetVariantFloatvEXT;
EXDL_EXTERN EXDLGLGETVARIANTPOINTERVEXTPROC                              exdl_glGetVariantPointervEXT;
EXDL_EXTERN EXDLGLGETINVARIANTBOOLEANVEXTPROC                            exdl_glGetInvariantBooleanvEXT;
EXDL_EXTERN EXDLGLGETINVARIANTINTEGERVEXTPROC                            exdl_glGetInvariantIntegervEXT;
EXDL_EXTERN EXDLGLGETINVARIANTFLOATVEXTPROC                              exdl_glGetInvariantFloatvEXT;
EXDL_EXTERN EXDLGLGETLOCALCONSTANTBOOLEANVEXTPROC                        exdl_glGetLocalConstantBooleanvEXT;
EXDL_EXTERN EXDLGLGETLOCALCONSTANTINTEGERVEXTPROC                        exdl_glGetLocalConstantIntegervEXT;
EXDL_EXTERN EXDLGLGETLOCALCONSTANTFLOATVEXTPROC                          exdl_glGetLocalConstantFloatvEXT;
/* GL_ATI_vertex_streams */
EXDL_EXTERN EXDLGLVERTEXSTREAM1SATIPROC                                  exdl_glVertexStream1sATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM1SVATIPROC                                 exdl_glVertexStream1svATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM1IATIPROC                                  exdl_glVertexStream1iATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM1IVATIPROC                                 exdl_glVertexStream1ivATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM1FATIPROC                                  exdl_glVertexStream1fATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM1FVATIPROC                                 exdl_glVertexStream1fvATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM1DATIPROC                                  exdl_glVertexStream1dATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM1DVATIPROC                                 exdl_glVertexStream1dvATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM2SATIPROC                                  exdl_glVertexStream2sATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM2SVATIPROC                                 exdl_glVertexStream2svATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM2IATIPROC                                  exdl_glVertexStream2iATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM2IVATIPROC                                 exdl_glVertexStream2ivATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM2FATIPROC                                  exdl_glVertexStream2fATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM2FVATIPROC                                 exdl_glVertexStream2fvATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM2DATIPROC                                  exdl_glVertexStream2dATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM2DVATIPROC                                 exdl_glVertexStream2dvATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM3SATIPROC                                  exdl_glVertexStream3sATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM3SVATIPROC                                 exdl_glVertexStream3svATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM3IATIPROC                                  exdl_glVertexStream3iATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM3IVATIPROC                                 exdl_glVertexStream3ivATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM3FATIPROC                                  exdl_glVertexStream3fATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM3FVATIPROC                                 exdl_glVertexStream3fvATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM3DATIPROC                                  exdl_glVertexStream3dATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM3DVATIPROC                                 exdl_glVertexStream3dvATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM4SATIPROC                                  exdl_glVertexStream4sATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM4SVATIPROC                                 exdl_glVertexStream4svATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM4IATIPROC                                  exdl_glVertexStream4iATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM4IVATIPROC                                 exdl_glVertexStream4ivATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM4FATIPROC                                  exdl_glVertexStream4fATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM4FVATIPROC                                 exdl_glVertexStream4fvATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM4DATIPROC                                  exdl_glVertexStream4dATI;
EXDL_EXTERN EXDLGLVERTEXSTREAM4DVATIPROC                                 exdl_glVertexStream4dvATI;
EXDL_EXTERN EXDLGLNORMALSTREAM3BATIPROC                                  exdl_glNormalStream3bATI;
EXDL_EXTERN EXDLGLNORMALSTREAM3BVATIPROC                                 exdl_glNormalStream3bvATI;
EXDL_EXTERN EXDLGLNORMALSTREAM3SATIPROC                                  exdl_glNormalStream3sATI;
EXDL_EXTERN EXDLGLNORMALSTREAM3SVATIPROC                                 exdl_glNormalStream3svATI;
EXDL_EXTERN EXDLGLNORMALSTREAM3IATIPROC                                  exdl_glNormalStream3iATI;
EXDL_EXTERN EXDLGLNORMALSTREAM3IVATIPROC                                 exdl_glNormalStream3ivATI;
EXDL_EXTERN EXDLGLNORMALSTREAM3FATIPROC                                  exdl_glNormalStream3fATI;
EXDL_EXTERN EXDLGLNORMALSTREAM3FVATIPROC                                 exdl_glNormalStream3fvATI;
EXDL_EXTERN EXDLGLNORMALSTREAM3DATIPROC                                  exdl_glNormalStream3dATI;
EXDL_EXTERN EXDLGLNORMALSTREAM3DVATIPROC                                 exdl_glNormalStream3dvATI;
EXDL_EXTERN EXDLGLCLIENTACTIVEVERTEXSTREAMATIPROC                        exdl_glClientActiveVertexStreamATI;
EXDL_EXTERN EXDLGLVERTEXBLENDENVIATIPROC                                 exdl_glVertexBlendEnviATI;
EXDL_EXTERN EXDLGLVERTEXBLENDENVFATIPROC                                 exdl_glVertexBlendEnvfATI;
/* GL_ATI_element_array */
EXDL_EXTERN EXDLGLELEMENTPOINTERATIPROC                                  exdl_glElementPointerATI;
EXDL_EXTERN EXDLGLDRAWELEMENTARRAYATIPROC                                exdl_glDrawElementArrayATI;
EXDL_EXTERN EXDLGLDRAWRANGEELEMENTARRAYATIPROC                           exdl_glDrawRangeElementArrayATI;
/* GL_SUN_mesh_array */
EXDL_EXTERN EXDLGLDRAWMESHARRAYSSUNPROC                                  exdl_glDrawMeshArraysSUN;
/* GL_SUN_slice_accum */
/* GL_NV_multisample_filter_hint */
/* GL_NV_depth_clamp */
/* GL_NV_occlusion_query */
EXDL_EXTERN EXDLGLGENOCCLUSIONQUERIESNVPROC                              exdl_glGenOcclusionQueriesNV;
EXDL_EXTERN EXDLGLDELETEOCCLUSIONQUERIESNVPROC                           exdl_glDeleteOcclusionQueriesNV;
EXDL_EXTERN EXDLGLISOCCLUSIONQUERYNVPROC                                 exdl_glIsOcclusionQueryNV;
EXDL_EXTERN EXDLGLBEGINOCCLUSIONQUERYNVPROC                              exdl_glBeginOcclusionQueryNV;
EXDL_EXTERN EXDLGLENDOCCLUSIONQUERYNVPROC                                exdl_glEndOcclusionQueryNV;
EXDL_EXTERN EXDLGLGETOCCLUSIONQUERYIVNVPROC                              exdl_glGetOcclusionQueryivNV;
EXDL_EXTERN EXDLGLGETOCCLUSIONQUERYUIVNVPROC                             exdl_glGetOcclusionQueryuivNV;
/* GL_NV_point_sprite */
EXDL_EXTERN EXDLGLPOINTPARAMETERINVPROC                                  exdl_glPointParameteriNV;
EXDL_EXTERN EXDLGLPOINTPARAMETERIVNVPROC                                 exdl_glPointParameterivNV;
/* GL_NV_texture_shader3 */
/* GL_NV_vertex_program1_1 */
/* GL_EXT_shadow_funcs */
/* GL_EXT_stencil_two_side */
EXDL_EXTERN EXDLGLACTIVESTENCILFACEEXTPROC                               exdl_glActiveStencilFaceEXT;
/* GL_ATI_text_fragment_shader */
/* GL_APPLE_client_storage */
/* GL_APPLE_element_array */
EXDL_EXTERN EXDLGLELEMENTPOINTERAPPLEPROC                                exdl_glElementPointerAPPLE;
EXDL_EXTERN EXDLGLDRAWELEMENTARRAYAPPLEPROC                              exdl_glDrawElementArrayAPPLE;
EXDL_EXTERN EXDLGLDRAWRANGEELEMENTARRAYAPPLEPROC                         exdl_glDrawRangeElementArrayAPPLE;
EXDL_EXTERN EXDLGLMULTIDRAWELEMENTARRAYAPPLEPROC                         exdl_glMultiDrawElementArrayAPPLE;
EXDL_EXTERN EXDLGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC                    exdl_glMultiDrawRangeElementArrayAPPLE;
/* GL_APPLE_fence */
EXDL_EXTERN EXDLGLGENFENCESAPPLEPROC                                     exdl_glGenFencesAPPLE;
EXDL_EXTERN EXDLGLDELETEFENCESAPPLEPROC                                  exdl_glDeleteFencesAPPLE;
EXDL_EXTERN EXDLGLSETFENCEAPPLEPROC                                      exdl_glSetFenceAPPLE;
EXDL_EXTERN EXDLGLISFENCEAPPLEPROC                                       exdl_glIsFenceAPPLE;
EXDL_EXTERN EXDLGLTESTFENCEAPPLEPROC                                     exdl_glTestFenceAPPLE;
EXDL_EXTERN EXDLGLFINISHFENCEAPPLEPROC                                   exdl_glFinishFenceAPPLE;
EXDL_EXTERN EXDLGLTESTOBJECTAPPLEPROC                                    exdl_glTestObjectAPPLE;
EXDL_EXTERN EXDLGLFINISHOBJECTAPPLEPROC                                  exdl_glFinishObjectAPPLE;
/* GL_APPLE_vertex_array_object */
EXDL_EXTERN EXDLGLBINDVERTEXARRAYAPPLEPROC                               exdl_glBindVertexArrayAPPLE;
EXDL_EXTERN EXDLGLDELETEVERTEXARRAYSAPPLEPROC                            exdl_glDeleteVertexArraysAPPLE;
EXDL_EXTERN EXDLGLGENVERTEXARRAYSAPPLEPROC                               exdl_glGenVertexArraysAPPLE;
EXDL_EXTERN EXDLGLISVERTEXARRAYAPPLEPROC                                 exdl_glIsVertexArrayAPPLE;
/* GL_APPLE_vertex_array_range */
EXDL_EXTERN EXDLGLVERTEXARRAYRANGEAPPLEPROC                              exdl_glVertexArrayRangeAPPLE;
EXDL_EXTERN EXDLGLFLUSHVERTEXARRAYRANGEAPPLEPROC                         exdl_glFlushVertexArrayRangeAPPLE;
EXDL_EXTERN EXDLGLVERTEXARRAYPARAMETERIAPPLEPROC                         exdl_glVertexArrayParameteriAPPLE;
/* GL_APPLE_ycbcr_422 */
/* GL_S3_s3tc */
/* GL_ATI_draw_buffers */
EXDL_EXTERN EXDLGLDRAWBUFFERSATIPROC                                     exdl_glDrawBuffersATI;
/* GL_ATI_pixel_format_float */
/* GL_ATI_texture_env_combine3 */
/* GL_ATI_texture_float */
/* GL_NV_float_buffer */
/* GL_NV_fragment_program */
EXDL_EXTERN EXDLGLPROGRAMNAMEDPARAMETER4FNVPROC                          exdl_glProgramNamedParameter4fNV;
EXDL_EXTERN EXDLGLPROGRAMNAMEDPARAMETER4DNVPROC                          exdl_glProgramNamedParameter4dNV;
EXDL_EXTERN EXDLGLPROGRAMNAMEDPARAMETER4FVNVPROC                         exdl_glProgramNamedParameter4fvNV;
EXDL_EXTERN EXDLGLPROGRAMNAMEDPARAMETER4DVNVPROC                         exdl_glProgramNamedParameter4dvNV;
EXDL_EXTERN EXDLGLGETPROGRAMNAMEDPARAMETERFVNVPROC                       exdl_glGetProgramNamedParameterfvNV;
EXDL_EXTERN EXDLGLGETPROGRAMNAMEDPARAMETERDVNVPROC                       exdl_glGetProgramNamedParameterdvNV;
/* GL_NV_half_float */
EXDL_EXTERN EXDLGLVERTEX2HNVPROC                                         exdl_glVertex2hNV;
EXDL_EXTERN EXDLGLVERTEX2HVNVPROC                                        exdl_glVertex2hvNV;
EXDL_EXTERN EXDLGLVERTEX3HNVPROC                                         exdl_glVertex3hNV;
EXDL_EXTERN EXDLGLVERTEX3HVNVPROC                                        exdl_glVertex3hvNV;
EXDL_EXTERN EXDLGLVERTEX4HNVPROC                                         exdl_glVertex4hNV;
EXDL_EXTERN EXDLGLVERTEX4HVNVPROC                                        exdl_glVertex4hvNV;
EXDL_EXTERN EXDLGLNORMAL3HNVPROC                                         exdl_glNormal3hNV;
EXDL_EXTERN EXDLGLNORMAL3HVNVPROC                                        exdl_glNormal3hvNV;
EXDL_EXTERN EXDLGLCOLOR3HNVPROC                                          exdl_glColor3hNV;
EXDL_EXTERN EXDLGLCOLOR3HVNVPROC                                         exdl_glColor3hvNV;
EXDL_EXTERN EXDLGLCOLOR4HNVPROC                                          exdl_glColor4hNV;
EXDL_EXTERN EXDLGLCOLOR4HVNVPROC                                         exdl_glColor4hvNV;
EXDL_EXTERN EXDLGLTEXCOORD1HNVPROC                                       exdl_glTexCoord1hNV;
EXDL_EXTERN EXDLGLTEXCOORD1HVNVPROC                                      exdl_glTexCoord1hvNV;
EXDL_EXTERN EXDLGLTEXCOORD2HNVPROC                                       exdl_glTexCoord2hNV;
EXDL_EXTERN EXDLGLTEXCOORD2HVNVPROC                                      exdl_glTexCoord2hvNV;
EXDL_EXTERN EXDLGLTEXCOORD3HNVPROC                                       exdl_glTexCoord3hNV;
EXDL_EXTERN EXDLGLTEXCOORD3HVNVPROC                                      exdl_glTexCoord3hvNV;
EXDL_EXTERN EXDLGLTEXCOORD4HNVPROC                                       exdl_glTexCoord4hNV;
EXDL_EXTERN EXDLGLTEXCOORD4HVNVPROC                                      exdl_glTexCoord4hvNV;
EXDL_EXTERN EXDLGLMULTITEXCOORD1HNVPROC                                  exdl_glMultiTexCoord1hNV;
EXDL_EXTERN EXDLGLMULTITEXCOORD1HVNVPROC                                 exdl_glMultiTexCoord1hvNV;
EXDL_EXTERN EXDLGLMULTITEXCOORD2HNVPROC                                  exdl_glMultiTexCoord2hNV;
EXDL_EXTERN EXDLGLMULTITEXCOORD2HVNVPROC                                 exdl_glMultiTexCoord2hvNV;
EXDL_EXTERN EXDLGLMULTITEXCOORD3HNVPROC                                  exdl_glMultiTexCoord3hNV;
EXDL_EXTERN EXDLGLMULTITEXCOORD3HVNVPROC                                 exdl_glMultiTexCoord3hvNV;
EXDL_EXTERN EXDLGLMULTITEXCOORD4HNVPROC                                  exdl_glMultiTexCoord4hNV;
EXDL_EXTERN EXDLGLMULTITEXCOORD4HVNVPROC                                 exdl_glMultiTexCoord4hvNV;
EXDL_EXTERN EXDLGLFOGCOORDHNVPROC                                        exdl_glFogCoordhNV;
EXDL_EXTERN EXDLGLFOGCOORDHVNVPROC                                       exdl_glFogCoordhvNV;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3HNVPROC                                 exdl_glSecondaryColor3hNV;
EXDL_EXTERN EXDLGLSECONDARYCOLOR3HVNVPROC                                exdl_glSecondaryColor3hvNV;
EXDL_EXTERN EXDLGLVERTEXWEIGHTHNVPROC                                    exdl_glVertexWeighthNV;
EXDL_EXTERN EXDLGLVERTEXWEIGHTHVNVPROC                                   exdl_glVertexWeighthvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB1HNVPROC                                   exdl_glVertexAttrib1hNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB1HVNVPROC                                  exdl_glVertexAttrib1hvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB2HNVPROC                                   exdl_glVertexAttrib2hNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB2HVNVPROC                                  exdl_glVertexAttrib2hvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB3HNVPROC                                   exdl_glVertexAttrib3hNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB3HVNVPROC                                  exdl_glVertexAttrib3hvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB4HNVPROC                                   exdl_glVertexAttrib4hNV;
EXDL_EXTERN EXDLGLVERTEXATTRIB4HVNVPROC                                  exdl_glVertexAttrib4hvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS1HVNVPROC                                 exdl_glVertexAttribs1hvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS2HVNVPROC                                 exdl_glVertexAttribs2hvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS3HVNVPROC                                 exdl_glVertexAttribs3hvNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBS4HVNVPROC                                 exdl_glVertexAttribs4hvNV;
/* GL_NV_pixel_data_range */
EXDL_EXTERN EXDLGLPIXELDATARANGENVPROC                                   exdl_glPixelDataRangeNV;
EXDL_EXTERN EXDLGLFLUSHPIXELDATARANGENVPROC                              exdl_glFlushPixelDataRangeNV;
/* GL_NV_primitive_restart */
EXDL_EXTERN EXDLGLPRIMITIVERESTARTNVPROC                                 exdl_glPrimitiveRestartNV;
EXDL_EXTERN EXDLGLPRIMITIVERESTARTINDEXNVPROC                            exdl_glPrimitiveRestartIndexNV;
/* GL_NV_texture_expand_normal */
/* GL_NV_vertex_program2 */
/* GL_ATI_map_object_buffer */
EXDL_EXTERN EXDLGLMAPOBJECTBUFFERATIPROC                                 exdl_glMapObjectBufferATI;
EXDL_EXTERN EXDLGLUNMAPOBJECTBUFFERATIPROC                               exdl_glUnmapObjectBufferATI;
/* GL_ATI_separate_stencil */
EXDL_EXTERN EXDLGLSTENCILOPSEPARATEATIPROC                               exdl_glStencilOpSeparateATI;
EXDL_EXTERN EXDLGLSTENCILFUNCSEPARATEATIPROC                             exdl_glStencilFuncSeparateATI;
/* GL_ATI_vertex_attrib_array_object */
EXDL_EXTERN EXDLGLVERTEXATTRIBARRAYOBJECTATIPROC                         exdl_glVertexAttribArrayObjectATI;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC                    exdl_glGetVertexAttribArrayObjectfvATI;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC                    exdl_glGetVertexAttribArrayObjectivATI;
/* GL_OES_read_format */
/* GL_EXT_depth_bounds_test */
EXDL_EXTERN EXDLGLDEPTHBOUNDSEXTPROC                                     exdl_glDepthBoundsEXT;
/* GL_EXT_texture_mirror_clamp */
/* GL_EXT_blend_equation_separate */
EXDL_EXTERN EXDLGLBLENDEQUATIONSEPARATEEXTPROC                           exdl_glBlendEquationSeparateEXT;
/* GL_MESA_pack_invert */
/* GL_MESA_ycbcr_texture */
/* GL_EXT_pixel_buffer_object */
/* GL_NV_fragment_program_option */
/* GL_NV_fragment_program2 */
/* GL_NV_vertex_program2_option */
/* GL_NV_vertex_program3 */
/* GL_EXT_framebuffer_object */
EXDL_EXTERN EXDLGLISRENDERBUFFEREXTPROC                                  exdl_glIsRenderbufferEXT;
EXDL_EXTERN EXDLGLBINDRENDERBUFFEREXTPROC                                exdl_glBindRenderbufferEXT;
EXDL_EXTERN EXDLGLDELETERENDERBUFFERSEXTPROC                             exdl_glDeleteRenderbuffersEXT;
EXDL_EXTERN EXDLGLGENRENDERBUFFERSEXTPROC                                exdl_glGenRenderbuffersEXT;
EXDL_EXTERN EXDLGLRENDERBUFFERSTORAGEEXTPROC                             exdl_glRenderbufferStorageEXT;
EXDL_EXTERN EXDLGLGETRENDERBUFFERPARAMETERIVEXTPROC                      exdl_glGetRenderbufferParameterivEXT;
EXDL_EXTERN EXDLGLISFRAMEBUFFEREXTPROC                                   exdl_glIsFramebufferEXT;
EXDL_EXTERN EXDLGLBINDFRAMEBUFFEREXTPROC                                 exdl_glBindFramebufferEXT;
EXDL_EXTERN EXDLGLDELETEFRAMEBUFFERSEXTPROC                              exdl_glDeleteFramebuffersEXT;
EXDL_EXTERN EXDLGLGENFRAMEBUFFERSEXTPROC                                 exdl_glGenFramebuffersEXT;
EXDL_EXTERN EXDLGLCHECKFRAMEBUFFERSTATUSEXTPROC                          exdl_glCheckFramebufferStatusEXT;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTURE1DEXTPROC                            exdl_glFramebufferTexture1DEXT;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTURE2DEXTPROC                            exdl_glFramebufferTexture2DEXT;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTURE3DEXTPROC                            exdl_glFramebufferTexture3DEXT;
EXDL_EXTERN EXDLGLFRAMEBUFFERRENDERBUFFEREXTPROC                         exdl_glFramebufferRenderbufferEXT;
EXDL_EXTERN EXDLGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC             exdl_glGetFramebufferAttachmentParameterivEXT;
EXDL_EXTERN EXDLGLGENERATEMIPMAPEXTPROC                                  exdl_glGenerateMipmapEXT;
/* GL_GREMEDY_string_marker */
EXDL_EXTERN EXDLGLSTRINGMARKERGREMEDYPROC                                exdl_glStringMarkerGREMEDY;
/* GL_EXT_packed_depth_stencil */
/* GL_EXT_stencil_clear_tag */
EXDL_EXTERN EXDLGLSTENCILCLEARTAGEXTPROC                                 exdl_glStencilClearTagEXT;
/* GL_EXT_texture_sRGB */
/* GL_EXT_framebuffer_blit */
EXDL_EXTERN EXDLGLBLITFRAMEBUFFEREXTPROC                                 exdl_glBlitFramebufferEXT;
/* GL_EXT_framebuffer_multisample */
EXDL_EXTERN EXDLGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC                  exdl_glRenderbufferStorageMultisampleEXT;
/* GL_MESAX_texture_stack */
/* GL_EXT_timer_query */
EXDL_EXTERN EXDLGLGETQUERYOBJECTI64VEXTPROC                              exdl_glGetQueryObjecti64vEXT;
EXDL_EXTERN EXDLGLGETQUERYOBJECTUI64VEXTPROC                             exdl_glGetQueryObjectui64vEXT;
/* GL_EXT_gpu_program_parameters */
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETERS4FVEXTPROC                         exdl_glProgramEnvParameters4fvEXT;
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETERS4FVEXTPROC                       exdl_glProgramLocalParameters4fvEXT;
/* GL_APPLE_flush_buffer_range */
EXDL_EXTERN EXDLGLBUFFERPARAMETERIAPPLEPROC                              exdl_glBufferParameteriAPPLE;
EXDL_EXTERN EXDLGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC                        exdl_glFlushMappedBufferRangeAPPLE;
/* GL_NV_gpu_program4 */
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETERI4INVPROC                         exdl_glProgramLocalParameterI4iNV;
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETERI4IVNVPROC                        exdl_glProgramLocalParameterI4ivNV;
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETERSI4IVNVPROC                       exdl_glProgramLocalParametersI4ivNV;
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETERI4UINVPROC                        exdl_glProgramLocalParameterI4uiNV;
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETERI4UIVNVPROC                       exdl_glProgramLocalParameterI4uivNV;
EXDL_EXTERN EXDLGLPROGRAMLOCALPARAMETERSI4UIVNVPROC                      exdl_glProgramLocalParametersI4uivNV;
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETERI4INVPROC                           exdl_glProgramEnvParameterI4iNV;
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETERI4IVNVPROC                          exdl_glProgramEnvParameterI4ivNV;
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETERSI4IVNVPROC                         exdl_glProgramEnvParametersI4ivNV;
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETERI4UINVPROC                          exdl_glProgramEnvParameterI4uiNV;
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETERI4UIVNVPROC                         exdl_glProgramEnvParameterI4uivNV;
EXDL_EXTERN EXDLGLPROGRAMENVPARAMETERSI4UIVNVPROC                        exdl_glProgramEnvParametersI4uivNV;
EXDL_EXTERN EXDLGLGETPROGRAMLOCALPARAMETERIIVNVPROC                      exdl_glGetProgramLocalParameterIivNV;
EXDL_EXTERN EXDLGLGETPROGRAMLOCALPARAMETERIUIVNVPROC                     exdl_glGetProgramLocalParameterIuivNV;
EXDL_EXTERN EXDLGLGETPROGRAMENVPARAMETERIIVNVPROC                        exdl_glGetProgramEnvParameterIivNV;
EXDL_EXTERN EXDLGLGETPROGRAMENVPARAMETERIUIVNVPROC                       exdl_glGetProgramEnvParameterIuivNV;
/* GL_NV_geometry_program4 */
EXDL_EXTERN EXDLGLPROGRAMVERTEXLIMITNVPROC                               exdl_glProgramVertexLimitNV;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTUREEXTPROC                              exdl_glFramebufferTextureEXT;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTURELAYEREXTPROC                         exdl_glFramebufferTextureLayerEXT;
EXDL_EXTERN EXDLGLFRAMEBUFFERTEXTUREFACEEXTPROC                          exdl_glFramebufferTextureFaceEXT;
/* GL_EXT_geometry_shader4 */
EXDL_EXTERN EXDLGLPROGRAMPARAMETERIEXTPROC                               exdl_glProgramParameteriEXT;
/* GL_NV_vertex_program4 */
EXDL_EXTERN EXDLGLVERTEXATTRIBI1IEXTPROC                                 exdl_glVertexAttribI1iEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI2IEXTPROC                                 exdl_glVertexAttribI2iEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI3IEXTPROC                                 exdl_glVertexAttribI3iEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4IEXTPROC                                 exdl_glVertexAttribI4iEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI1UIEXTPROC                                exdl_glVertexAttribI1uiEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI2UIEXTPROC                                exdl_glVertexAttribI2uiEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI3UIEXTPROC                                exdl_glVertexAttribI3uiEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4UIEXTPROC                                exdl_glVertexAttribI4uiEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI1IVEXTPROC                                exdl_glVertexAttribI1ivEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI2IVEXTPROC                                exdl_glVertexAttribI2ivEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI3IVEXTPROC                                exdl_glVertexAttribI3ivEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4IVEXTPROC                                exdl_glVertexAttribI4ivEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI1UIVEXTPROC                               exdl_glVertexAttribI1uivEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI2UIVEXTPROC                               exdl_glVertexAttribI2uivEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI3UIVEXTPROC                               exdl_glVertexAttribI3uivEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4UIVEXTPROC                               exdl_glVertexAttribI4uivEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4BVEXTPROC                                exdl_glVertexAttribI4bvEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4SVEXTPROC                                exdl_glVertexAttribI4svEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4UBVEXTPROC                               exdl_glVertexAttribI4ubvEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBI4USVEXTPROC                               exdl_glVertexAttribI4usvEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBIPOINTEREXTPROC                            exdl_glVertexAttribIPointerEXT;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBIIVEXTPROC                              exdl_glGetVertexAttribIivEXT;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBIUIVEXTPROC                             exdl_glGetVertexAttribIuivEXT;
/* GL_EXT_gpu_shader4 */
EXDL_EXTERN EXDLGLGETUNIFORMUIVEXTPROC                                   exdl_glGetUniformuivEXT;
EXDL_EXTERN EXDLGLBINDFRAGDATALOCATIONEXTPROC                            exdl_glBindFragDataLocationEXT;
EXDL_EXTERN EXDLGLGETFRAGDATALOCATIONEXTPROC                             exdl_glGetFragDataLocationEXT;
EXDL_EXTERN EXDLGLUNIFORM1UIEXTPROC                                      exdl_glUniform1uiEXT;
EXDL_EXTERN EXDLGLUNIFORM2UIEXTPROC                                      exdl_glUniform2uiEXT;
EXDL_EXTERN EXDLGLUNIFORM3UIEXTPROC                                      exdl_glUniform3uiEXT;
EXDL_EXTERN EXDLGLUNIFORM4UIEXTPROC                                      exdl_glUniform4uiEXT;
EXDL_EXTERN EXDLGLUNIFORM1UIVEXTPROC                                     exdl_glUniform1uivEXT;
EXDL_EXTERN EXDLGLUNIFORM2UIVEXTPROC                                     exdl_glUniform2uivEXT;
EXDL_EXTERN EXDLGLUNIFORM3UIVEXTPROC                                     exdl_glUniform3uivEXT;
EXDL_EXTERN EXDLGLUNIFORM4UIVEXTPROC                                     exdl_glUniform4uivEXT;
/* GL_EXT_draw_instanced */
EXDL_EXTERN EXDLGLDRAWARRAYSINSTANCEDEXTPROC                             exdl_glDrawArraysInstancedEXT;
EXDL_EXTERN EXDLGLDRAWELEMENTSINSTANCEDEXTPROC                           exdl_glDrawElementsInstancedEXT;
/* GL_EXT_packed_float */
/* GL_EXT_texture_array */
/* GL_EXT_texture_buffer_object */
EXDL_EXTERN EXDLGLTEXBUFFEREXTPROC                                       exdl_glTexBufferEXT;
/* GL_EXT_texture_compression_latc */
/* GL_EXT_texture_compression_rgtc */
/* GL_EXT_texture_shared_exponent */
/* GL_NV_depth_buffer_float */
EXDL_EXTERN EXDLGLDEPTHRANGEDNVPROC                                      exdl_glDepthRangedNV;
EXDL_EXTERN EXDLGLCLEARDEPTHDNVPROC                                      exdl_glClearDepthdNV;
EXDL_EXTERN EXDLGLDEPTHBOUNDSDNVPROC                                     exdl_glDepthBoundsdNV;
/* GL_NV_fragment_program4 */
/* GL_NV_framebuffer_multisample_coverage */
EXDL_EXTERN EXDLGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC           exdl_glRenderbufferStorageMultisampleCoverageNV;
/* GL_EXT_framebuffer_sRGB */
/* GL_NV_geometry_shader4 */
/* GL_NV_parameter_buffer_object */
EXDL_EXTERN EXDLGLPROGRAMBUFFERPARAMETERSFVNVPROC                        exdl_glProgramBufferParametersfvNV;
EXDL_EXTERN EXDLGLPROGRAMBUFFERPARAMETERSIIVNVPROC                       exdl_glProgramBufferParametersIivNV;
EXDL_EXTERN EXDLGLPROGRAMBUFFERPARAMETERSIUIVNVPROC                      exdl_glProgramBufferParametersIuivNV;
/* GL_EXT_draw_buffers2 */
EXDL_EXTERN EXDLGLCOLORMASKINDEXEDEXTPROC                                exdl_glColorMaskIndexedEXT;
EXDL_EXTERN EXDLGLGETBOOLEANINDEXEDVEXTPROC                              exdl_glGetBooleanIndexedvEXT;
EXDL_EXTERN EXDLGLGETINTEGERINDEXEDVEXTPROC                              exdl_glGetIntegerIndexedvEXT;
EXDL_EXTERN EXDLGLENABLEINDEXEDEXTPROC                                   exdl_glEnableIndexedEXT;
EXDL_EXTERN EXDLGLDISABLEINDEXEDEXTPROC                                  exdl_glDisableIndexedEXT;
EXDL_EXTERN EXDLGLISENABLEDINDEXEDEXTPROC                                exdl_glIsEnabledIndexedEXT;
/* GL_NV_transform_feedback */
EXDL_EXTERN EXDLGLBEGINTRANSFORMFEEDBACKNVPROC                           exdl_glBeginTransformFeedbackNV;
EXDL_EXTERN EXDLGLENDTRANSFORMFEEDBACKNVPROC                             exdl_glEndTransformFeedbackNV;
EXDL_EXTERN EXDLGLTRANSFORMFEEDBACKATTRIBSNVPROC                         exdl_glTransformFeedbackAttribsNV;
EXDL_EXTERN EXDLGLBINDBUFFERRANGENVPROC                                  exdl_glBindBufferRangeNV;
EXDL_EXTERN EXDLGLBINDBUFFEROFFSETNVPROC                                 exdl_glBindBufferOffsetNV;
EXDL_EXTERN EXDLGLBINDBUFFERBASENVPROC                                   exdl_glBindBufferBaseNV;
EXDL_EXTERN EXDLGLTRANSFORMFEEDBACKVARYINGSNVPROC                        exdl_glTransformFeedbackVaryingsNV;
EXDL_EXTERN EXDLGLACTIVEVARYINGNVPROC                                    exdl_glActiveVaryingNV;
EXDL_EXTERN EXDLGLGETVARYINGLOCATIONNVPROC                               exdl_glGetVaryingLocationNV;
EXDL_EXTERN EXDLGLGETACTIVEVARYINGNVPROC                                 exdl_glGetActiveVaryingNV;
EXDL_EXTERN EXDLGLGETTRANSFORMFEEDBACKVARYINGNVPROC                      exdl_glGetTransformFeedbackVaryingNV;
EXDL_EXTERN EXDLGLTRANSFORMFEEDBACKSTREAMATTRIBSNVPROC                   exdl_glTransformFeedbackStreamAttribsNV;
/* GL_EXT_bindable_uniform */
EXDL_EXTERN EXDLGLUNIFORMBUFFEREXTPROC                                   exdl_glUniformBufferEXT;
EXDL_EXTERN EXDLGLGETUNIFORMBUFFERSIZEEXTPROC                            exdl_glGetUniformBufferSizeEXT;
EXDL_EXTERN EXDLGLGETUNIFORMOFFSETEXTPROC                                exdl_glGetUniformOffsetEXT;
/* GL_EXT_texture_integer */
EXDL_EXTERN EXDLGLTEXPARAMETERIIVEXTPROC                                 exdl_glTexParameterIivEXT;
EXDL_EXTERN EXDLGLTEXPARAMETERIUIVEXTPROC                                exdl_glTexParameterIuivEXT;
EXDL_EXTERN EXDLGLGETTEXPARAMETERIIVEXTPROC                              exdl_glGetTexParameterIivEXT;
EXDL_EXTERN EXDLGLGETTEXPARAMETERIUIVEXTPROC                             exdl_glGetTexParameterIuivEXT;
EXDL_EXTERN EXDLGLCLEARCOLORIIEXTPROC                                    exdl_glClearColorIiEXT;
EXDL_EXTERN EXDLGLCLEARCOLORIUIEXTPROC                                   exdl_glClearColorIuiEXT;
/* GL_GREMEDY_frame_terminator */
EXDL_EXTERN EXDLGLFRAMETERMINATORGREMEDYPROC                             exdl_glFrameTerminatorGREMEDY;
/* GL_NV_conditional_render */
EXDL_EXTERN EXDLGLBEGINCONDITIONALRENDERNVPROC                           exdl_glBeginConditionalRenderNV;
EXDL_EXTERN EXDLGLENDCONDITIONALRENDERNVPROC                             exdl_glEndConditionalRenderNV;
/* GL_NV_present_video */
EXDL_EXTERN EXDLGLPRESENTFRAMEKEYEDNVPROC                                exdl_glPresentFrameKeyedNV;
EXDL_EXTERN EXDLGLPRESENTFRAMEDUALFILLNVPROC                             exdl_glPresentFrameDualFillNV;
EXDL_EXTERN EXDLGLGETVIDEOIVNVPROC                                       exdl_glGetVideoivNV;
EXDL_EXTERN EXDLGLGETVIDEOUIVNVPROC                                      exdl_glGetVideouivNV;
EXDL_EXTERN EXDLGLGETVIDEOI64VNVPROC                                     exdl_glGetVideoi64vNV;
EXDL_EXTERN EXDLGLGETVIDEOUI64VNVPROC                                    exdl_glGetVideoui64vNV;
EXDL_EXTERN EXDLGLVIDEOPARAMETERIVNVPROC                                 exdl_glVideoParameterivNV;
/* GL_EXT_transform_feedback */
EXDL_EXTERN EXDLGLBEGINTRANSFORMFEEDBACKEXTPROC                          exdl_glBeginTransformFeedbackEXT;
EXDL_EXTERN EXDLGLENDTRANSFORMFEEDBACKEXTPROC                            exdl_glEndTransformFeedbackEXT;
EXDL_EXTERN EXDLGLBINDBUFFERRANGEEXTPROC                                 exdl_glBindBufferRangeEXT;
EXDL_EXTERN EXDLGLBINDBUFFEROFFSETEXTPROC                                exdl_glBindBufferOffsetEXT;
EXDL_EXTERN EXDLGLBINDBUFFERBASEEXTPROC                                  exdl_glBindBufferBaseEXT;
EXDL_EXTERN EXDLGLTRANSFORMFEEDBACKVARYINGSEXTPROC                       exdl_glTransformFeedbackVaryingsEXT;
EXDL_EXTERN EXDLGLGETTRANSFORMFEEDBACKVARYINGEXTPROC                     exdl_glGetTransformFeedbackVaryingEXT;
/* GL_EXT_direct_state_access */
EXDL_EXTERN EXDLGLCLIENTATTRIBDEFAULTEXTPROC                             exdl_glClientAttribDefaultEXT;
EXDL_EXTERN EXDLGLPUSHCLIENTATTRIBDEFAULTEXTPROC                         exdl_glPushClientAttribDefaultEXT;
EXDL_EXTERN EXDLGLMATRIXLOADFEXTPROC                                     exdl_glMatrixLoadfEXT;
EXDL_EXTERN EXDLGLMATRIXLOADDEXTPROC                                     exdl_glMatrixLoaddEXT;
EXDL_EXTERN EXDLGLMATRIXMULTFEXTPROC                                     exdl_glMatrixMultfEXT;
EXDL_EXTERN EXDLGLMATRIXMULTDEXTPROC                                     exdl_glMatrixMultdEXT;
EXDL_EXTERN EXDLGLMATRIXLOADIDENTITYEXTPROC                              exdl_glMatrixLoadIdentityEXT;
EXDL_EXTERN EXDLGLMATRIXROTATEFEXTPROC                                   exdl_glMatrixRotatefEXT;
EXDL_EXTERN EXDLGLMATRIXROTATEDEXTPROC                                   exdl_glMatrixRotatedEXT;
EXDL_EXTERN EXDLGLMATRIXSCALEFEXTPROC                                    exdl_glMatrixScalefEXT;
EXDL_EXTERN EXDLGLMATRIXSCALEDEXTPROC                                    exdl_glMatrixScaledEXT;
EXDL_EXTERN EXDLGLMATRIXTRANSLATEFEXTPROC                                exdl_glMatrixTranslatefEXT;
EXDL_EXTERN EXDLGLMATRIXTRANSLATEDEXTPROC                                exdl_glMatrixTranslatedEXT;
EXDL_EXTERN EXDLGLMATRIXFRUSTUMEXTPROC                                   exdl_glMatrixFrustumEXT;
EXDL_EXTERN EXDLGLMATRIXORTHOEXTPROC                                     exdl_glMatrixOrthoEXT;
EXDL_EXTERN EXDLGLMATRIXPOPEXTPROC                                       exdl_glMatrixPopEXT;
EXDL_EXTERN EXDLGLMATRIXPUSHEXTPROC                                      exdl_glMatrixPushEXT;
EXDL_EXTERN EXDLGLMATRIXLOADTRANSPOSEFEXTPROC                            exdl_glMatrixLoadTransposefEXT;
EXDL_EXTERN EXDLGLMATRIXLOADTRANSPOSEDEXTPROC                            exdl_glMatrixLoadTransposedEXT;
EXDL_EXTERN EXDLGLMATRIXMULTTRANSPOSEFEXTPROC                            exdl_glMatrixMultTransposefEXT;
EXDL_EXTERN EXDLGLMATRIXMULTTRANSPOSEDEXTPROC                            exdl_glMatrixMultTransposedEXT;
EXDL_EXTERN EXDLGLTEXTUREPARAMETERFEXTPROC                               exdl_glTextureParameterfEXT;
EXDL_EXTERN EXDLGLTEXTUREPARAMETERFVEXTPROC                              exdl_glTextureParameterfvEXT;
EXDL_EXTERN EXDLGLTEXTUREPARAMETERIEXTPROC                               exdl_glTextureParameteriEXT;
EXDL_EXTERN EXDLGLTEXTUREPARAMETERIVEXTPROC                              exdl_glTextureParameterivEXT;
EXDL_EXTERN EXDLGLTEXTUREIMAGE1DEXTPROC                                  exdl_glTextureImage1DEXT;
EXDL_EXTERN EXDLGLTEXTUREIMAGE2DEXTPROC                                  exdl_glTextureImage2DEXT;
EXDL_EXTERN EXDLGLTEXTURESUBIMAGE1DEXTPROC                               exdl_glTextureSubImage1DEXT;
EXDL_EXTERN EXDLGLTEXTURESUBIMAGE2DEXTPROC                               exdl_glTextureSubImage2DEXT;
EXDL_EXTERN EXDLGLCOPYTEXTUREIMAGE1DEXTPROC                              exdl_glCopyTextureImage1DEXT;
EXDL_EXTERN EXDLGLCOPYTEXTUREIMAGE2DEXTPROC                              exdl_glCopyTextureImage2DEXT;
EXDL_EXTERN EXDLGLCOPYTEXTURESUBIMAGE1DEXTPROC                           exdl_glCopyTextureSubImage1DEXT;
EXDL_EXTERN EXDLGLCOPYTEXTURESUBIMAGE2DEXTPROC                           exdl_glCopyTextureSubImage2DEXT;
EXDL_EXTERN EXDLGLGETTEXTUREIMAGEEXTPROC                                 exdl_glGetTextureImageEXT;
EXDL_EXTERN EXDLGLGETTEXTUREPARAMETERFVEXTPROC                           exdl_glGetTextureParameterfvEXT;
EXDL_EXTERN EXDLGLGETTEXTUREPARAMETERIVEXTPROC                           exdl_glGetTextureParameterivEXT;
EXDL_EXTERN EXDLGLGETTEXTURELEVELPARAMETERFVEXTPROC                      exdl_glGetTextureLevelParameterfvEXT;
EXDL_EXTERN EXDLGLGETTEXTURELEVELPARAMETERIVEXTPROC                      exdl_glGetTextureLevelParameterivEXT;
EXDL_EXTERN EXDLGLTEXTUREIMAGE3DEXTPROC                                  exdl_glTextureImage3DEXT;
EXDL_EXTERN EXDLGLTEXTURESUBIMAGE3DEXTPROC                               exdl_glTextureSubImage3DEXT;
EXDL_EXTERN EXDLGLCOPYTEXTURESUBIMAGE3DEXTPROC                           exdl_glCopyTextureSubImage3DEXT;
EXDL_EXTERN EXDLGLMULTITEXPARAMETERFEXTPROC                              exdl_glMultiTexParameterfEXT;
EXDL_EXTERN EXDLGLMULTITEXPARAMETERFVEXTPROC                             exdl_glMultiTexParameterfvEXT;
EXDL_EXTERN EXDLGLMULTITEXPARAMETERIEXTPROC                              exdl_glMultiTexParameteriEXT;
EXDL_EXTERN EXDLGLMULTITEXPARAMETERIVEXTPROC                             exdl_glMultiTexParameterivEXT;
EXDL_EXTERN EXDLGLMULTITEXIMAGE1DEXTPROC                                 exdl_glMultiTexImage1DEXT;
EXDL_EXTERN EXDLGLMULTITEXIMAGE2DEXTPROC                                 exdl_glMultiTexImage2DEXT;
EXDL_EXTERN EXDLGLMULTITEXSUBIMAGE1DEXTPROC                              exdl_glMultiTexSubImage1DEXT;
EXDL_EXTERN EXDLGLMULTITEXSUBIMAGE2DEXTPROC                              exdl_glMultiTexSubImage2DEXT;
EXDL_EXTERN EXDLGLCOPYMULTITEXIMAGE1DEXTPROC                             exdl_glCopyMultiTexImage1DEXT;
EXDL_EXTERN EXDLGLCOPYMULTITEXIMAGE2DEXTPROC                             exdl_glCopyMultiTexImage2DEXT;
EXDL_EXTERN EXDLGLCOPYMULTITEXSUBIMAGE1DEXTPROC                          exdl_glCopyMultiTexSubImage1DEXT;
EXDL_EXTERN EXDLGLCOPYMULTITEXSUBIMAGE2DEXTPROC                          exdl_glCopyMultiTexSubImage2DEXT;
EXDL_EXTERN EXDLGLGETMULTITEXIMAGEEXTPROC                                exdl_glGetMultiTexImageEXT;
EXDL_EXTERN EXDLGLGETMULTITEXPARAMETERFVEXTPROC                          exdl_glGetMultiTexParameterfvEXT;
EXDL_EXTERN EXDLGLGETMULTITEXPARAMETERIVEXTPROC                          exdl_glGetMultiTexParameterivEXT;
EXDL_EXTERN EXDLGLGETMULTITEXLEVELPARAMETERFVEXTPROC                     exdl_glGetMultiTexLevelParameterfvEXT;
EXDL_EXTERN EXDLGLGETMULTITEXLEVELPARAMETERIVEXTPROC                     exdl_glGetMultiTexLevelParameterivEXT;
EXDL_EXTERN EXDLGLMULTITEXIMAGE3DEXTPROC                                 exdl_glMultiTexImage3DEXT;
EXDL_EXTERN EXDLGLMULTITEXSUBIMAGE3DEXTPROC                              exdl_glMultiTexSubImage3DEXT;
EXDL_EXTERN EXDLGLCOPYMULTITEXSUBIMAGE3DEXTPROC                          exdl_glCopyMultiTexSubImage3DEXT;
EXDL_EXTERN EXDLGLBINDMULTITEXTUREEXTPROC                                exdl_glBindMultiTextureEXT;
EXDL_EXTERN EXDLGLENABLECLIENTSTATEINDEXEDEXTPROC                        exdl_glEnableClientStateIndexedEXT;
EXDL_EXTERN EXDLGLDISABLECLIENTSTATEINDEXEDEXTPROC                       exdl_glDisableClientStateIndexedEXT;
EXDL_EXTERN EXDLGLMULTITEXCOORDPOINTEREXTPROC                            exdl_glMultiTexCoordPointerEXT;
EXDL_EXTERN EXDLGLMULTITEXENVFEXTPROC                                    exdl_glMultiTexEnvfEXT;
EXDL_EXTERN EXDLGLMULTITEXENVFVEXTPROC                                   exdl_glMultiTexEnvfvEXT;
EXDL_EXTERN EXDLGLMULTITEXENVIEXTPROC                                    exdl_glMultiTexEnviEXT;
EXDL_EXTERN EXDLGLMULTITEXENVIVEXTPROC                                   exdl_glMultiTexEnvivEXT;
EXDL_EXTERN EXDLGLMULTITEXGENDEXTPROC                                    exdl_glMultiTexGendEXT;
EXDL_EXTERN EXDLGLMULTITEXGENDVEXTPROC                                   exdl_glMultiTexGendvEXT;
EXDL_EXTERN EXDLGLMULTITEXGENFEXTPROC                                    exdl_glMultiTexGenfEXT;
EXDL_EXTERN EXDLGLMULTITEXGENFVEXTPROC                                   exdl_glMultiTexGenfvEXT;
EXDL_EXTERN EXDLGLMULTITEXGENIEXTPROC                                    exdl_glMultiTexGeniEXT;
EXDL_EXTERN EXDLGLMULTITEXGENIVEXTPROC                                   exdl_glMultiTexGenivEXT;
EXDL_EXTERN EXDLGLGETMULTITEXENVFVEXTPROC                                exdl_glGetMultiTexEnvfvEXT;
EXDL_EXTERN EXDLGLGETMULTITEXENVIVEXTPROC                                exdl_glGetMultiTexEnvivEXT;
EXDL_EXTERN EXDLGLGETMULTITEXGENDVEXTPROC                                exdl_glGetMultiTexGendvEXT;
EXDL_EXTERN EXDLGLGETMULTITEXGENFVEXTPROC                                exdl_glGetMultiTexGenfvEXT;
EXDL_EXTERN EXDLGLGETMULTITEXGENIVEXTPROC                                exdl_glGetMultiTexGenivEXT;
EXDL_EXTERN EXDLGLGETFLOATINDEXEDVEXTPROC                                exdl_glGetFloatIndexedvEXT;
EXDL_EXTERN EXDLGLGETDOUBLEINDEXEDVEXTPROC                               exdl_glGetDoubleIndexedvEXT;
EXDL_EXTERN EXDLGLGETPOINTERINDEXEDVEXTPROC                              exdl_glGetPointerIndexedvEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXTUREIMAGE3DEXTPROC                        exdl_glCompressedTextureImage3DEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXTUREIMAGE2DEXTPROC                        exdl_glCompressedTextureImage2DEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXTUREIMAGE1DEXTPROC                        exdl_glCompressedTextureImage1DEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXTURESUBIMAGE3DEXTPROC                     exdl_glCompressedTextureSubImage3DEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXTURESUBIMAGE2DEXTPROC                     exdl_glCompressedTextureSubImage2DEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDTEXTURESUBIMAGE1DEXTPROC                     exdl_glCompressedTextureSubImage1DEXT;
EXDL_EXTERN EXDLGLGETCOMPRESSEDTEXTUREIMAGEEXTPROC                       exdl_glGetCompressedTextureImageEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDMULTITEXIMAGE3DEXTPROC                       exdl_glCompressedMultiTexImage3DEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDMULTITEXIMAGE2DEXTPROC                       exdl_glCompressedMultiTexImage2DEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDMULTITEXIMAGE1DEXTPROC                       exdl_glCompressedMultiTexImage1DEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDMULTITEXSUBIMAGE3DEXTPROC                    exdl_glCompressedMultiTexSubImage3DEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDMULTITEXSUBIMAGE2DEXTPROC                    exdl_glCompressedMultiTexSubImage2DEXT;
EXDL_EXTERN EXDLGLCOMPRESSEDMULTITEXSUBIMAGE1DEXTPROC                    exdl_glCompressedMultiTexSubImage1DEXT;
EXDL_EXTERN EXDLGLGETCOMPRESSEDMULTITEXIMAGEEXTPROC                      exdl_glGetCompressedMultiTexImageEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMSTRINGEXTPROC                              exdl_glNamedProgramStringEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETER4DEXTPROC                    exdl_glNamedProgramLocalParameter4dEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETER4DVEXTPROC                   exdl_glNamedProgramLocalParameter4dvEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETER4FEXTPROC                    exdl_glNamedProgramLocalParameter4fEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETER4FVEXTPROC                   exdl_glNamedProgramLocalParameter4fvEXT;
EXDL_EXTERN EXDLGLGETNAMEDPROGRAMLOCALPARAMETERDVEXTPROC                 exdl_glGetNamedProgramLocalParameterdvEXT;
EXDL_EXTERN EXDLGLGETNAMEDPROGRAMLOCALPARAMETERFVEXTPROC                 exdl_glGetNamedProgramLocalParameterfvEXT;
EXDL_EXTERN EXDLGLGETNAMEDPROGRAMIVEXTPROC                               exdl_glGetNamedProgramivEXT;
EXDL_EXTERN EXDLGLGETNAMEDPROGRAMSTRINGEXTPROC                           exdl_glGetNamedProgramStringEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETERS4FVEXTPROC                  exdl_glNamedProgramLocalParameters4fvEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETERI4IEXTPROC                   exdl_glNamedProgramLocalParameterI4iEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETERI4IVEXTPROC                  exdl_glNamedProgramLocalParameterI4ivEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETERSI4IVEXTPROC                 exdl_glNamedProgramLocalParametersI4ivEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETERI4UIEXTPROC                  exdl_glNamedProgramLocalParameterI4uiEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETERI4UIVEXTPROC                 exdl_glNamedProgramLocalParameterI4uivEXT;
EXDL_EXTERN EXDLGLNAMEDPROGRAMLOCALPARAMETERSI4UIVEXTPROC                exdl_glNamedProgramLocalParametersI4uivEXT;
EXDL_EXTERN EXDLGLGETNAMEDPROGRAMLOCALPARAMETERIIVEXTPROC                exdl_glGetNamedProgramLocalParameterIivEXT;
EXDL_EXTERN EXDLGLGETNAMEDPROGRAMLOCALPARAMETERIUIVEXTPROC               exdl_glGetNamedProgramLocalParameterIuivEXT;
EXDL_EXTERN EXDLGLTEXTUREPARAMETERIIVEXTPROC                             exdl_glTextureParameterIivEXT;
EXDL_EXTERN EXDLGLTEXTUREPARAMETERIUIVEXTPROC                            exdl_glTextureParameterIuivEXT;
EXDL_EXTERN EXDLGLGETTEXTUREPARAMETERIIVEXTPROC                          exdl_glGetTextureParameterIivEXT;
EXDL_EXTERN EXDLGLGETTEXTUREPARAMETERIUIVEXTPROC                         exdl_glGetTextureParameterIuivEXT;
EXDL_EXTERN EXDLGLMULTITEXPARAMETERIIVEXTPROC                            exdl_glMultiTexParameterIivEXT;
EXDL_EXTERN EXDLGLMULTITEXPARAMETERIUIVEXTPROC                           exdl_glMultiTexParameterIuivEXT;
EXDL_EXTERN EXDLGLGETMULTITEXPARAMETERIIVEXTPROC                         exdl_glGetMultiTexParameterIivEXT;
EXDL_EXTERN EXDLGLGETMULTITEXPARAMETERIUIVEXTPROC                        exdl_glGetMultiTexParameterIuivEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1FEXTPROC                                exdl_glProgramUniform1fEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2FEXTPROC                                exdl_glProgramUniform2fEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3FEXTPROC                                exdl_glProgramUniform3fEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4FEXTPROC                                exdl_glProgramUniform4fEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1IEXTPROC                                exdl_glProgramUniform1iEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2IEXTPROC                                exdl_glProgramUniform2iEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3IEXTPROC                                exdl_glProgramUniform3iEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4IEXTPROC                                exdl_glProgramUniform4iEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1FVEXTPROC                               exdl_glProgramUniform1fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2FVEXTPROC                               exdl_glProgramUniform2fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3FVEXTPROC                               exdl_glProgramUniform3fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4FVEXTPROC                               exdl_glProgramUniform4fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1IVEXTPROC                               exdl_glProgramUniform1ivEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2IVEXTPROC                               exdl_glProgramUniform2ivEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3IVEXTPROC                               exdl_glProgramUniform3ivEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4IVEXTPROC                               exdl_glProgramUniform4ivEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2FVEXTPROC                         exdl_glProgramUniformMatrix2fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3FVEXTPROC                         exdl_glProgramUniformMatrix3fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4FVEXTPROC                         exdl_glProgramUniformMatrix4fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2X3FVEXTPROC                       exdl_glProgramUniformMatrix2x3fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3X2FVEXTPROC                       exdl_glProgramUniformMatrix3x2fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2X4FVEXTPROC                       exdl_glProgramUniformMatrix2x4fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4X2FVEXTPROC                       exdl_glProgramUniformMatrix4x2fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3X4FVEXTPROC                       exdl_glProgramUniformMatrix3x4fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4X3FVEXTPROC                       exdl_glProgramUniformMatrix4x3fvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1UIEXTPROC                               exdl_glProgramUniform1uiEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2UIEXTPROC                               exdl_glProgramUniform2uiEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3UIEXTPROC                               exdl_glProgramUniform3uiEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4UIEXTPROC                               exdl_glProgramUniform4uiEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1UIVEXTPROC                              exdl_glProgramUniform1uivEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2UIVEXTPROC                              exdl_glProgramUniform2uivEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3UIVEXTPROC                              exdl_glProgramUniform3uivEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4UIVEXTPROC                              exdl_glProgramUniform4uivEXT;
EXDL_EXTERN EXDLGLNAMEDBUFFERDATAEXTPROC                                 exdl_glNamedBufferDataEXT;
EXDL_EXTERN EXDLGLNAMEDBUFFERSUBDATAEXTPROC                              exdl_glNamedBufferSubDataEXT;
EXDL_EXTERN EXDLGLMAPNAMEDBUFFEREXTPROC                                  exdl_glMapNamedBufferEXT;
EXDL_EXTERN EXDLGLUNMAPNAMEDBUFFEREXTPROC                                exdl_glUnmapNamedBufferEXT;
EXDL_EXTERN EXDLGLMAPNAMEDBUFFERRANGEEXTPROC                             exdl_glMapNamedBufferRangeEXT;
EXDL_EXTERN EXDLGLFLUSHMAPPEDNAMEDBUFFERRANGEEXTPROC                     exdl_glFlushMappedNamedBufferRangeEXT;
EXDL_EXTERN EXDLGLNAMEDCOPYBUFFERSUBDATAEXTPROC                          exdl_glNamedCopyBufferSubDataEXT;
EXDL_EXTERN EXDLGLGETNAMEDBUFFERPARAMETERIVEXTPROC                       exdl_glGetNamedBufferParameterivEXT;
EXDL_EXTERN EXDLGLGETNAMEDBUFFERPOINTERVEXTPROC                          exdl_glGetNamedBufferPointervEXT;
EXDL_EXTERN EXDLGLGETNAMEDBUFFERSUBDATAEXTPROC                           exdl_glGetNamedBufferSubDataEXT;
EXDL_EXTERN EXDLGLTEXTUREBUFFEREXTPROC                                   exdl_glTextureBufferEXT;
EXDL_EXTERN EXDLGLMULTITEXBUFFEREXTPROC                                  exdl_glMultiTexBufferEXT;
EXDL_EXTERN EXDLGLNAMEDRENDERBUFFERSTORAGEEXTPROC                        exdl_glNamedRenderbufferStorageEXT;
EXDL_EXTERN EXDLGLGETNAMEDRENDERBUFFERPARAMETERIVEXTPROC                 exdl_glGetNamedRenderbufferParameterivEXT;
EXDL_EXTERN EXDLGLCHECKNAMEDFRAMEBUFFERSTATUSEXTPROC                     exdl_glCheckNamedFramebufferStatusEXT;
EXDL_EXTERN EXDLGLNAMEDFRAMEBUFFERTEXTURE1DEXTPROC                       exdl_glNamedFramebufferTexture1DEXT;
EXDL_EXTERN EXDLGLNAMEDFRAMEBUFFERTEXTURE2DEXTPROC                       exdl_glNamedFramebufferTexture2DEXT;
EXDL_EXTERN EXDLGLNAMEDFRAMEBUFFERTEXTURE3DEXTPROC                       exdl_glNamedFramebufferTexture3DEXT;
EXDL_EXTERN EXDLGLNAMEDFRAMEBUFFERRENDERBUFFEREXTPROC                    exdl_glNamedFramebufferRenderbufferEXT;
EXDL_EXTERN EXDLGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC        exdl_glGetNamedFramebufferAttachmentParameterivEXT;
EXDL_EXTERN EXDLGLGENERATETEXTUREMIPMAPEXTPROC                           exdl_glGenerateTextureMipmapEXT;
EXDL_EXTERN EXDLGLGENERATEMULTITEXMIPMAPEXTPROC                          exdl_glGenerateMultiTexMipmapEXT;
EXDL_EXTERN EXDLGLFRAMEBUFFERDRAWBUFFEREXTPROC                           exdl_glFramebufferDrawBufferEXT;
EXDL_EXTERN EXDLGLFRAMEBUFFERDRAWBUFFERSEXTPROC                          exdl_glFramebufferDrawBuffersEXT;
EXDL_EXTERN EXDLGLFRAMEBUFFERREADBUFFEREXTPROC                           exdl_glFramebufferReadBufferEXT;
EXDL_EXTERN EXDLGLGETFRAMEBUFFERPARAMETERIVEXTPROC                       exdl_glGetFramebufferParameterivEXT;
EXDL_EXTERN EXDLGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC             exdl_glNamedRenderbufferStorageMultisampleEXT;
EXDL_EXTERN EXDLGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLECOVERAGEEXTPROC     exdl_glNamedRenderbufferStorageMultisampleCoverageEXT;
EXDL_EXTERN EXDLGLNAMEDFRAMEBUFFERTEXTUREEXTPROC                         exdl_glNamedFramebufferTextureEXT;
EXDL_EXTERN EXDLGLNAMEDFRAMEBUFFERTEXTURELAYEREXTPROC                    exdl_glNamedFramebufferTextureLayerEXT;
EXDL_EXTERN EXDLGLNAMEDFRAMEBUFFERTEXTUREFACEEXTPROC                     exdl_glNamedFramebufferTextureFaceEXT;
EXDL_EXTERN EXDLGLTEXTURERENDERBUFFEREXTPROC                             exdl_glTextureRenderbufferEXT;
EXDL_EXTERN EXDLGLMULTITEXRENDERBUFFEREXTPROC                            exdl_glMultiTexRenderbufferEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1DEXTPROC                                exdl_glProgramUniform1dEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2DEXTPROC                                exdl_glProgramUniform2dEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3DEXTPROC                                exdl_glProgramUniform3dEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4DEXTPROC                                exdl_glProgramUniform4dEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1DVEXTPROC                               exdl_glProgramUniform1dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2DVEXTPROC                               exdl_glProgramUniform2dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3DVEXTPROC                               exdl_glProgramUniform3dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4DVEXTPROC                               exdl_glProgramUniform4dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2DVEXTPROC                         exdl_glProgramUniformMatrix2dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3DVEXTPROC                         exdl_glProgramUniformMatrix3dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4DVEXTPROC                         exdl_glProgramUniformMatrix4dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2X3DVEXTPROC                       exdl_glProgramUniformMatrix2x3dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX2X4DVEXTPROC                       exdl_glProgramUniformMatrix2x4dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3X2DVEXTPROC                       exdl_glProgramUniformMatrix3x2dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX3X4DVEXTPROC                       exdl_glProgramUniformMatrix3x4dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4X2DVEXTPROC                       exdl_glProgramUniformMatrix4x2dvEXT;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMMATRIX4X3DVEXTPROC                       exdl_glProgramUniformMatrix4x3dvEXT;
/* GL_EXT_vertex_array_bgra */
/* GL_EXT_texture_swizzle */
/* GL_NV_explicit_multisample */
EXDL_EXTERN EXDLGLGETMULTISAMPLEFVNVPROC                                 exdl_glGetMultisamplefvNV;
EXDL_EXTERN EXDLGLSAMPLEMASKINDEXEDNVPROC                                exdl_glSampleMaskIndexedNV;
EXDL_EXTERN EXDLGLTEXRENDERBUFFERNVPROC                                  exdl_glTexRenderbufferNV;
/* GL_NV_transform_feedback2 */
EXDL_EXTERN EXDLGLBINDTRANSFORMFEEDBACKNVPROC                            exdl_glBindTransformFeedbackNV;
EXDL_EXTERN EXDLGLDELETETRANSFORMFEEDBACKSNVPROC                         exdl_glDeleteTransformFeedbacksNV;
EXDL_EXTERN EXDLGLGENTRANSFORMFEEDBACKSNVPROC                            exdl_glGenTransformFeedbacksNV;
EXDL_EXTERN EXDLGLISTRANSFORMFEEDBACKNVPROC                              exdl_glIsTransformFeedbackNV;
EXDL_EXTERN EXDLGLPAUSETRANSFORMFEEDBACKNVPROC                           exdl_glPauseTransformFeedbackNV;
EXDL_EXTERN EXDLGLRESUMETRANSFORMFEEDBACKNVPROC                          exdl_glResumeTransformFeedbackNV;
EXDL_EXTERN EXDLGLDRAWTRANSFORMFEEDBACKNVPROC                            exdl_glDrawTransformFeedbackNV;
/* GL_ATI_meminfo */
/* GL_AMD_performance_monitor */
EXDL_EXTERN EXDLGLGETPERFMONITORGROUPSAMDPROC                            exdl_glGetPerfMonitorGroupsAMD;
EXDL_EXTERN EXDLGLGETPERFMONITORCOUNTERSAMDPROC                          exdl_glGetPerfMonitorCountersAMD;
EXDL_EXTERN EXDLGLGETPERFMONITORGROUPSTRINGAMDPROC                       exdl_glGetPerfMonitorGroupStringAMD;
EXDL_EXTERN EXDLGLGETPERFMONITORCOUNTERSTRINGAMDPROC                     exdl_glGetPerfMonitorCounterStringAMD;
EXDL_EXTERN EXDLGLGETPERFMONITORCOUNTERINFOAMDPROC                       exdl_glGetPerfMonitorCounterInfoAMD;
EXDL_EXTERN EXDLGLGENPERFMONITORSAMDPROC                                 exdl_glGenPerfMonitorsAMD;
EXDL_EXTERN EXDLGLDELETEPERFMONITORSAMDPROC                              exdl_glDeletePerfMonitorsAMD;
EXDL_EXTERN EXDLGLSELECTPERFMONITORCOUNTERSAMDPROC                       exdl_glSelectPerfMonitorCountersAMD;
EXDL_EXTERN EXDLGLBEGINPERFMONITORAMDPROC                                exdl_glBeginPerfMonitorAMD;
EXDL_EXTERN EXDLGLENDPERFMONITORAMDPROC                                  exdl_glEndPerfMonitorAMD;
EXDL_EXTERN EXDLGLGETPERFMONITORCOUNTERDATAAMDPROC                       exdl_glGetPerfMonitorCounterDataAMD;
/* GL_AMD_texture_texture4 */
/* GL_AMD_vertex_shader_tesselator */
EXDL_EXTERN EXDLGLTESSELLATIONFACTORAMDPROC                              exdl_glTessellationFactorAMD;
EXDL_EXTERN EXDLGLTESSELLATIONMODEAMDPROC                                exdl_glTessellationModeAMD;
/* GL_EXT_provoking_vertex */
EXDL_EXTERN EXDLGLPROVOKINGVERTEXEXTPROC                                 exdl_glProvokingVertexEXT;
/* GL_EXT_texture_snorm */
/* GL_AMD_draw_buffers_blend */
EXDL_EXTERN EXDLGLBLENDFUNCINDEXEDAMDPROC                                exdl_glBlendFuncIndexedAMD;
EXDL_EXTERN EXDLGLBLENDFUNCSEPARATEINDEXEDAMDPROC                        exdl_glBlendFuncSeparateIndexedAMD;
EXDL_EXTERN EXDLGLBLENDEQUATIONINDEXEDAMDPROC                            exdl_glBlendEquationIndexedAMD;
EXDL_EXTERN EXDLGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC                    exdl_glBlendEquationSeparateIndexedAMD;
/* GL_APPLE_texture_range */
EXDL_EXTERN EXDLGLTEXTURERANGEAPPLEPROC                                  exdl_glTextureRangeAPPLE;
EXDL_EXTERN EXDLGLGETTEXPARAMETERPOINTERVAPPLEPROC                       exdl_glGetTexParameterPointervAPPLE;
/* GL_APPLE_float_pixels */
/* GL_APPLE_vertex_program_evaluators */
EXDL_EXTERN EXDLGLENABLEVERTEXATTRIBAPPLEPROC                            exdl_glEnableVertexAttribAPPLE;
EXDL_EXTERN EXDLGLDISABLEVERTEXATTRIBAPPLEPROC                           exdl_glDisableVertexAttribAPPLE;
EXDL_EXTERN EXDLGLISVERTEXATTRIBENABLEDAPPLEPROC                         exdl_glIsVertexAttribEnabledAPPLE;
EXDL_EXTERN EXDLGLMAPVERTEXATTRIB1DAPPLEPROC                             exdl_glMapVertexAttrib1dAPPLE;
EXDL_EXTERN EXDLGLMAPVERTEXATTRIB1FAPPLEPROC                             exdl_glMapVertexAttrib1fAPPLE;
EXDL_EXTERN EXDLGLMAPVERTEXATTRIB2DAPPLEPROC                             exdl_glMapVertexAttrib2dAPPLE;
EXDL_EXTERN EXDLGLMAPVERTEXATTRIB2FAPPLEPROC                             exdl_glMapVertexAttrib2fAPPLE;
/* GL_APPLE_aux_depth_stencil */
/* GL_APPLE_object_purgeable */
EXDL_EXTERN EXDLGLOBJECTPURGEABLEAPPLEPROC                               exdl_glObjectPurgeableAPPLE;
EXDL_EXTERN EXDLGLOBJECTUNPURGEABLEAPPLEPROC                             exdl_glObjectUnpurgeableAPPLE;
EXDL_EXTERN EXDLGLGETOBJECTPARAMETERIVAPPLEPROC                          exdl_glGetObjectParameterivAPPLE;
/* GL_APPLE_row_bytes */
/* GL_APPLE_rgb_422 */
/* GL_NV_video_capture */
EXDL_EXTERN EXDLGLBEGINVIDEOCAPTURENVPROC                                exdl_glBeginVideoCaptureNV;
EXDL_EXTERN EXDLGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC                     exdl_glBindVideoCaptureStreamBufferNV;
EXDL_EXTERN EXDLGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC                    exdl_glBindVideoCaptureStreamTextureNV;
EXDL_EXTERN EXDLGLENDVIDEOCAPTURENVPROC                                  exdl_glEndVideoCaptureNV;
EXDL_EXTERN EXDLGLGETVIDEOCAPTUREIVNVPROC                                exdl_glGetVideoCaptureivNV;
EXDL_EXTERN EXDLGLGETVIDEOCAPTURESTREAMIVNVPROC                          exdl_glGetVideoCaptureStreamivNV;
EXDL_EXTERN EXDLGLGETVIDEOCAPTURESTREAMFVNVPROC                          exdl_glGetVideoCaptureStreamfvNV;
EXDL_EXTERN EXDLGLGETVIDEOCAPTURESTREAMDVNVPROC                          exdl_glGetVideoCaptureStreamdvNV;
EXDL_EXTERN EXDLGLVIDEOCAPTURENVPROC                                     exdl_glVideoCaptureNV;
EXDL_EXTERN EXDLGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC                    exdl_glVideoCaptureStreamParameterivNV;
EXDL_EXTERN EXDLGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC                    exdl_glVideoCaptureStreamParameterfvNV;
EXDL_EXTERN EXDLGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC                    exdl_glVideoCaptureStreamParameterdvNV;
/* GL_NV_copy_image */
EXDL_EXTERN EXDLGLCOPYIMAGESUBDATANVPROC                                 exdl_glCopyImageSubDataNV;
/* GL_EXT_separate_shader_objects */
EXDL_EXTERN EXDLGLUSESHADERPROGRAMEXTPROC                                exdl_glUseShaderProgramEXT;
EXDL_EXTERN EXDLGLACTIVEPROGRAMEXTPROC                                   exdl_glActiveProgramEXT;
EXDL_EXTERN EXDLGLCREATESHADERPROGRAMEXTPROC                             exdl_glCreateShaderProgramEXT;
/* GL_NV_parameter_buffer_object2 */
/* GL_NV_shader_buffer_load */
EXDL_EXTERN EXDLGLMAKEBUFFERRESIDENTNVPROC                               exdl_glMakeBufferResidentNV;
EXDL_EXTERN EXDLGLMAKEBUFFERNONRESIDENTNVPROC                            exdl_glMakeBufferNonResidentNV;
EXDL_EXTERN EXDLGLISBUFFERRESIDENTNVPROC                                 exdl_glIsBufferResidentNV;
EXDL_EXTERN EXDLGLNAMEDMAKEBUFFERRESIDENTNVPROC                          exdl_glNamedMakeBufferResidentNV;
EXDL_EXTERN EXDLGLNAMEDMAKEBUFFERNONRESIDENTNVPROC                       exdl_glNamedMakeBufferNonResidentNV;
EXDL_EXTERN EXDLGLISNAMEDBUFFERRESIDENTNVPROC                            exdl_glIsNamedBufferResidentNV;
EXDL_EXTERN EXDLGLGETBUFFERPARAMETERUI64VNVPROC                          exdl_glGetBufferParameterui64vNV;
EXDL_EXTERN EXDLGLGETNAMEDBUFFERPARAMETERUI64VNVPROC                     exdl_glGetNamedBufferParameterui64vNV;
EXDL_EXTERN EXDLGLGETINTEGERUI64VNVPROC                                  exdl_glGetIntegerui64vNV;
EXDL_EXTERN EXDLGLUNIFORMUI64NVPROC                                      exdl_glUniformui64NV;
EXDL_EXTERN EXDLGLUNIFORMUI64VNVPROC                                     exdl_glUniformui64vNV;
EXDL_EXTERN EXDLGLGETUNIFORMUI64VNVPROC                                  exdl_glGetUniformui64vNV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMUI64NVPROC                               exdl_glProgramUniformui64NV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMUI64VNVPROC                              exdl_glProgramUniformui64vNV;
/* GL_NV_vertex_buffer_unified_memory */
EXDL_EXTERN EXDLGLBUFFERADDRESSRANGENVPROC                               exdl_glBufferAddressRangeNV;
EXDL_EXTERN EXDLGLVERTEXFORMATNVPROC                                     exdl_glVertexFormatNV;
EXDL_EXTERN EXDLGLNORMALFORMATNVPROC                                     exdl_glNormalFormatNV;
EXDL_EXTERN EXDLGLCOLORFORMATNVPROC                                      exdl_glColorFormatNV;
EXDL_EXTERN EXDLGLINDEXFORMATNVPROC                                      exdl_glIndexFormatNV;
EXDL_EXTERN EXDLGLTEXCOORDFORMATNVPROC                                   exdl_glTexCoordFormatNV;
EXDL_EXTERN EXDLGLEDGEFLAGFORMATNVPROC                                   exdl_glEdgeFlagFormatNV;
EXDL_EXTERN EXDLGLSECONDARYCOLORFORMATNVPROC                             exdl_glSecondaryColorFormatNV;
EXDL_EXTERN EXDLGLFOGCOORDFORMATNVPROC                                   exdl_glFogCoordFormatNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBFORMATNVPROC                               exdl_glVertexAttribFormatNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBIFORMATNVPROC                              exdl_glVertexAttribIFormatNV;
EXDL_EXTERN EXDLGLGETINTEGERUI64I_VNVPROC                                exdl_glGetIntegerui64i_vNV;
/* GL_NV_texture_barrier */
EXDL_EXTERN EXDLGLTEXTUREBARRIERNVPROC                                   exdl_glTextureBarrierNV;
/* GL_AMD_shader_stencil_export */
/* GL_AMD_seamless_cubemap_per_texture */
/* GL_AMD_conservative_depth */
/* GL_EXT_shader_image_load_store */
EXDL_EXTERN EXDLGLBINDIMAGETEXTUREEXTPROC                                exdl_glBindImageTextureEXT;
EXDL_EXTERN EXDLGLMEMORYBARRIEREXTPROC                                   exdl_glMemoryBarrierEXT;
/* GL_EXT_vertex_attrib_64bit */
EXDL_EXTERN EXDLGLVERTEXATTRIBL1DEXTPROC                                 exdl_glVertexAttribL1dEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBL2DEXTPROC                                 exdl_glVertexAttribL2dEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBL3DEXTPROC                                 exdl_glVertexAttribL3dEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBL4DEXTPROC                                 exdl_glVertexAttribL4dEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBL1DVEXTPROC                                exdl_glVertexAttribL1dvEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBL2DVEXTPROC                                exdl_glVertexAttribL2dvEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBL3DVEXTPROC                                exdl_glVertexAttribL3dvEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBL4DVEXTPROC                                exdl_glVertexAttribL4dvEXT;
EXDL_EXTERN EXDLGLVERTEXATTRIBLPOINTEREXTPROC                            exdl_glVertexAttribLPointerEXT;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBLDVEXTPROC                              exdl_glGetVertexAttribLdvEXT;
EXDL_EXTERN EXDLGLVERTEXARRAYVERTEXATTRIBLOFFSETEXTPROC                  exdl_glVertexArrayVertexAttribLOffsetEXT;
/* GL_NV_gpu_program5 */
EXDL_EXTERN EXDLGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC                   exdl_glProgramSubroutineParametersuivNV;
EXDL_EXTERN EXDLGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC                 exdl_glGetProgramSubroutineParameteruivNV;
/* GL_NV_gpu_shader5 */
EXDL_EXTERN EXDLGLUNIFORM1I64NVPROC                                      exdl_glUniform1i64NV;
EXDL_EXTERN EXDLGLUNIFORM2I64NVPROC                                      exdl_glUniform2i64NV;
EXDL_EXTERN EXDLGLUNIFORM3I64NVPROC                                      exdl_glUniform3i64NV;
EXDL_EXTERN EXDLGLUNIFORM4I64NVPROC                                      exdl_glUniform4i64NV;
EXDL_EXTERN EXDLGLUNIFORM1I64VNVPROC                                     exdl_glUniform1i64vNV;
EXDL_EXTERN EXDLGLUNIFORM2I64VNVPROC                                     exdl_glUniform2i64vNV;
EXDL_EXTERN EXDLGLUNIFORM3I64VNVPROC                                     exdl_glUniform3i64vNV;
EXDL_EXTERN EXDLGLUNIFORM4I64VNVPROC                                     exdl_glUniform4i64vNV;
EXDL_EXTERN EXDLGLUNIFORM1UI64NVPROC                                     exdl_glUniform1ui64NV;
EXDL_EXTERN EXDLGLUNIFORM2UI64NVPROC                                     exdl_glUniform2ui64NV;
EXDL_EXTERN EXDLGLUNIFORM3UI64NVPROC                                     exdl_glUniform3ui64NV;
EXDL_EXTERN EXDLGLUNIFORM4UI64NVPROC                                     exdl_glUniform4ui64NV;
EXDL_EXTERN EXDLGLUNIFORM1UI64VNVPROC                                    exdl_glUniform1ui64vNV;
EXDL_EXTERN EXDLGLUNIFORM2UI64VNVPROC                                    exdl_glUniform2ui64vNV;
EXDL_EXTERN EXDLGLUNIFORM3UI64VNVPROC                                    exdl_glUniform3ui64vNV;
EXDL_EXTERN EXDLGLUNIFORM4UI64VNVPROC                                    exdl_glUniform4ui64vNV;
EXDL_EXTERN EXDLGLGETUNIFORMI64VNVPROC                                   exdl_glGetUniformi64vNV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1I64NVPROC                               exdl_glProgramUniform1i64NV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2I64NVPROC                               exdl_glProgramUniform2i64NV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3I64NVPROC                               exdl_glProgramUniform3i64NV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4I64NVPROC                               exdl_glProgramUniform4i64NV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1I64VNVPROC                              exdl_glProgramUniform1i64vNV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2I64VNVPROC                              exdl_glProgramUniform2i64vNV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3I64VNVPROC                              exdl_glProgramUniform3i64vNV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4I64VNVPROC                              exdl_glProgramUniform4i64vNV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1UI64NVPROC                              exdl_glProgramUniform1ui64NV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2UI64NVPROC                              exdl_glProgramUniform2ui64NV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3UI64NVPROC                              exdl_glProgramUniform3ui64NV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4UI64NVPROC                              exdl_glProgramUniform4ui64NV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM1UI64VNVPROC                             exdl_glProgramUniform1ui64vNV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM2UI64VNVPROC                             exdl_glProgramUniform2ui64vNV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM3UI64VNVPROC                             exdl_glProgramUniform3ui64vNV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORM4UI64VNVPROC                             exdl_glProgramUniform4ui64vNV;
/* GL_NV_shader_buffer_store */
/* GL_NV_tessellation_program5 */
/* GL_NV_vertex_attrib_integer_64bit */
EXDL_EXTERN EXDLGLVERTEXATTRIBL1I64NVPROC                                exdl_glVertexAttribL1i64NV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL2I64NVPROC                                exdl_glVertexAttribL2i64NV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL3I64NVPROC                                exdl_glVertexAttribL3i64NV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL4I64NVPROC                                exdl_glVertexAttribL4i64NV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL1I64VNVPROC                               exdl_glVertexAttribL1i64vNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL2I64VNVPROC                               exdl_glVertexAttribL2i64vNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL3I64VNVPROC                               exdl_glVertexAttribL3i64vNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL4I64VNVPROC                               exdl_glVertexAttribL4i64vNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL1UI64NVPROC                               exdl_glVertexAttribL1ui64NV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL2UI64NVPROC                               exdl_glVertexAttribL2ui64NV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL3UI64NVPROC                               exdl_glVertexAttribL3ui64NV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL4UI64NVPROC                               exdl_glVertexAttribL4ui64NV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL1UI64VNVPROC                              exdl_glVertexAttribL1ui64vNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL2UI64VNVPROC                              exdl_glVertexAttribL2ui64vNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL3UI64VNVPROC                              exdl_glVertexAttribL3ui64vNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBL4UI64VNVPROC                              exdl_glVertexAttribL4ui64vNV;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBLI64VNVPROC                             exdl_glGetVertexAttribLi64vNV;
EXDL_EXTERN EXDLGLGETVERTEXATTRIBLUI64VNVPROC                            exdl_glGetVertexAttribLui64vNV;
EXDL_EXTERN EXDLGLVERTEXATTRIBLFORMATNVPROC                              exdl_glVertexAttribLFormatNV;
/* GL_NV_multisample_coverage */
/* GL_AMD_name_gen_delete */
EXDL_EXTERN EXDLGLGENNAMESAMDPROC                                        exdl_glGenNamesAMD;
EXDL_EXTERN EXDLGLDELETENAMESAMDPROC                                     exdl_glDeleteNamesAMD;
EXDL_EXTERN EXDLGLISNAMEAMDPROC                                          exdl_glIsNameAMD;
/* GL_AMD_debug_output */
EXDL_EXTERN EXDLGLDEBUGMESSAGEENABLEAMDPROC                              exdl_glDebugMessageEnableAMD;
EXDL_EXTERN EXDLGLDEBUGMESSAGEINSERTAMDPROC                              exdl_glDebugMessageInsertAMD;
EXDL_EXTERN EXDLGLDEBUGMESSAGECALLBACKAMDPROC                            exdl_glDebugMessageCallbackAMD;
EXDL_EXTERN EXDLGLGETDEBUGMESSAGELOGAMDPROC                              exdl_glGetDebugMessageLogAMD;
/* GL_NV_vdpau_interop */
EXDL_EXTERN EXDLGLVDPAUINITNVPROC                                        exdl_glVDPAUInitNV;
EXDL_EXTERN EXDLGLVDPAUFININVPROC                                        exdl_glVDPAUFiniNV;
EXDL_EXTERN EXDLGLVDPAUREGISTERVIDEOSURFACENVPROC                        exdl_glVDPAURegisterVideoSurfaceNV;
EXDL_EXTERN EXDLGLVDPAUREGISTEROUTPUTSURFACENVPROC                       exdl_glVDPAURegisterOutputSurfaceNV;
EXDL_EXTERN EXDLGLVDPAUISSURFACENVPROC                                   exdl_glVDPAUIsSurfaceNV;
EXDL_EXTERN EXDLGLVDPAUUNREGISTERSURFACENVPROC                           exdl_glVDPAUUnregisterSurfaceNV;
EXDL_EXTERN EXDLGLVDPAUGETSURFACEIVNVPROC                                exdl_glVDPAUGetSurfaceivNV;
EXDL_EXTERN EXDLGLVDPAUSURFACEACCESSNVPROC                               exdl_glVDPAUSurfaceAccessNV;
EXDL_EXTERN EXDLGLVDPAUMAPSURFACESNVPROC                                 exdl_glVDPAUMapSurfacesNV;
EXDL_EXTERN EXDLGLVDPAUUNMAPSURFACESNVPROC                               exdl_glVDPAUUnmapSurfacesNV;
/* GL_AMD_transform_feedback3_lines_triangles */
/* GL_AMD_depth_clamp_separate */
/* GL_EXT_texture_sRGB_decode */
/* GL_NV_texture_multisample */
EXDL_EXTERN EXDLGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC                    exdl_glTexImage2DMultisampleCoverageNV;
EXDL_EXTERN EXDLGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC                    exdl_glTexImage3DMultisampleCoverageNV;
EXDL_EXTERN EXDLGLTEXTUREIMAGE2DMULTISAMPLENVPROC                        exdl_glTextureImage2DMultisampleNV;
EXDL_EXTERN EXDLGLTEXTUREIMAGE3DMULTISAMPLENVPROC                        exdl_glTextureImage3DMultisampleNV;
EXDL_EXTERN EXDLGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC                exdl_glTextureImage2DMultisampleCoverageNV;
EXDL_EXTERN EXDLGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC                exdl_glTextureImage3DMultisampleCoverageNV;
/* GL_AMD_blend_minmax_factor */
/* GL_AMD_sample_positions */
EXDL_EXTERN EXDLGLSETMULTISAMPLEFVAMDPROC                                exdl_glSetMultisamplefvAMD;
/* GL_EXT_x11_sync_object */
EXDL_EXTERN EXDLGLIMPORTSYNCEXTPROC                                      exdl_glImportSyncEXT;
/* GL_AMD_multi_draw_indirect */
EXDL_EXTERN EXDLGLMULTIDRAWARRAYSINDIRECTAMDPROC                         exdl_glMultiDrawArraysIndirectAMD;
EXDL_EXTERN EXDLGLMULTIDRAWELEMENTSINDIRECTAMDPROC                       exdl_glMultiDrawElementsIndirectAMD;
/* GL_EXT_framebuffer_multisample_blit_scaled */
/* GL_NV_path_rendering */
EXDL_EXTERN EXDLGLGENPATHSNVPROC                                         exdl_glGenPathsNV;
EXDL_EXTERN EXDLGLDELETEPATHSNVPROC                                      exdl_glDeletePathsNV;
EXDL_EXTERN EXDLGLISPATHNVPROC                                           exdl_glIsPathNV;
EXDL_EXTERN EXDLGLPATHCOMMANDSNVPROC                                     exdl_glPathCommandsNV;
EXDL_EXTERN EXDLGLPATHCOORDSNVPROC                                       exdl_glPathCoordsNV;
EXDL_EXTERN EXDLGLPATHSUBCOMMANDSNVPROC                                  exdl_glPathSubCommandsNV;
EXDL_EXTERN EXDLGLPATHSUBCOORDSNVPROC                                    exdl_glPathSubCoordsNV;
EXDL_EXTERN EXDLGLPATHSTRINGNVPROC                                       exdl_glPathStringNV;
EXDL_EXTERN EXDLGLPATHGLYPHSNVPROC                                       exdl_glPathGlyphsNV;
EXDL_EXTERN EXDLGLPATHGLYPHRANGENVPROC                                   exdl_glPathGlyphRangeNV;
EXDL_EXTERN EXDLGLWEIGHTPATHSNVPROC                                      exdl_glWeightPathsNV;
EXDL_EXTERN EXDLGLCOPYPATHNVPROC                                         exdl_glCopyPathNV;
EXDL_EXTERN EXDLGLINTERPOLATEPATHSNVPROC                                 exdl_glInterpolatePathsNV;
EXDL_EXTERN EXDLGLTRANSFORMPATHNVPROC                                    exdl_glTransformPathNV;
EXDL_EXTERN EXDLGLPATHPARAMETERIVNVPROC                                  exdl_glPathParameterivNV;
EXDL_EXTERN EXDLGLPATHPARAMETERINVPROC                                   exdl_glPathParameteriNV;
EXDL_EXTERN EXDLGLPATHPARAMETERFVNVPROC                                  exdl_glPathParameterfvNV;
EXDL_EXTERN EXDLGLPATHPARAMETERFNVPROC                                   exdl_glPathParameterfNV;
EXDL_EXTERN EXDLGLPATHDASHARRAYNVPROC                                    exdl_glPathDashArrayNV;
EXDL_EXTERN EXDLGLPATHSTENCILFUNCNVPROC                                  exdl_glPathStencilFuncNV;
EXDL_EXTERN EXDLGLPATHSTENCILDEPTHOFFSETNVPROC                           exdl_glPathStencilDepthOffsetNV;
EXDL_EXTERN EXDLGLSTENCILFILLPATHNVPROC                                  exdl_glStencilFillPathNV;
EXDL_EXTERN EXDLGLSTENCILSTROKEPATHNVPROC                                exdl_glStencilStrokePathNV;
EXDL_EXTERN EXDLGLSTENCILFILLPATHINSTANCEDNVPROC                         exdl_glStencilFillPathInstancedNV;
EXDL_EXTERN EXDLGLSTENCILSTROKEPATHINSTANCEDNVPROC                       exdl_glStencilStrokePathInstancedNV;
EXDL_EXTERN EXDLGLPATHCOVERDEPTHFUNCNVPROC                               exdl_glPathCoverDepthFuncNV;
EXDL_EXTERN EXDLGLPATHCOLORGENNVPROC                                     exdl_glPathColorGenNV;
EXDL_EXTERN EXDLGLPATHTEXGENNVPROC                                       exdl_glPathTexGenNV;
EXDL_EXTERN EXDLGLPATHFOGGENNVPROC                                       exdl_glPathFogGenNV;
EXDL_EXTERN EXDLGLCOVERFILLPATHNVPROC                                    exdl_glCoverFillPathNV;
EXDL_EXTERN EXDLGLCOVERSTROKEPATHNVPROC                                  exdl_glCoverStrokePathNV;
EXDL_EXTERN EXDLGLCOVERFILLPATHINSTANCEDNVPROC                           exdl_glCoverFillPathInstancedNV;
EXDL_EXTERN EXDLGLCOVERSTROKEPATHINSTANCEDNVPROC                         exdl_glCoverStrokePathInstancedNV;
EXDL_EXTERN EXDLGLGETPATHPARAMETERIVNVPROC                               exdl_glGetPathParameterivNV;
EXDL_EXTERN EXDLGLGETPATHPARAMETERFVNVPROC                               exdl_glGetPathParameterfvNV;
EXDL_EXTERN EXDLGLGETPATHCOMMANDSNVPROC                                  exdl_glGetPathCommandsNV;
EXDL_EXTERN EXDLGLGETPATHCOORDSNVPROC                                    exdl_glGetPathCoordsNV;
EXDL_EXTERN EXDLGLGETPATHDASHARRAYNVPROC                                 exdl_glGetPathDashArrayNV;
EXDL_EXTERN EXDLGLGETPATHMETRICSNVPROC                                   exdl_glGetPathMetricsNV;
EXDL_EXTERN EXDLGLGETPATHMETRICRANGENVPROC                               exdl_glGetPathMetricRangeNV;
EXDL_EXTERN EXDLGLGETPATHSPACINGNVPROC                                   exdl_glGetPathSpacingNV;
EXDL_EXTERN EXDLGLGETPATHCOLORGENIVNVPROC                                exdl_glGetPathColorGenivNV;
EXDL_EXTERN EXDLGLGETPATHCOLORGENFVNVPROC                                exdl_glGetPathColorGenfvNV;
EXDL_EXTERN EXDLGLGETPATHTEXGENIVNVPROC                                  exdl_glGetPathTexGenivNV;
EXDL_EXTERN EXDLGLGETPATHTEXGENFVNVPROC                                  exdl_glGetPathTexGenfvNV;
EXDL_EXTERN EXDLGLISPOINTINFILLPATHNVPROC                                exdl_glIsPointInFillPathNV;
EXDL_EXTERN EXDLGLISPOINTINSTROKEPATHNVPROC                              exdl_glIsPointInStrokePathNV;
EXDL_EXTERN EXDLGLGETPATHLENGTHNVPROC                                    exdl_glGetPathLengthNV;
EXDL_EXTERN EXDLGLPOINTALONGPATHNVPROC                                   exdl_glPointAlongPathNV;
/* GL_AMD_pinned_memory */
/* GL_AMD_stencil_operation_extended */
EXDL_EXTERN EXDLGLSTENCILOPVALUEAMDPROC                                  exdl_glStencilOpValueAMD;
/* GL_AMD_vertex_shader_viewport_index */
/* GL_AMD_vertex_shader_layer */
/* GL_NV_bindless_texture */
EXDL_EXTERN EXDLGLGETTEXTUREHANDLENVPROC                                 exdl_glGetTextureHandleNV;
EXDL_EXTERN EXDLGLGETTEXTURESAMPLERHANDLENVPROC                          exdl_glGetTextureSamplerHandleNV;
EXDL_EXTERN EXDLGLMAKETEXTUREHANDLERESIDENTNVPROC                        exdl_glMakeTextureHandleResidentNV;
EXDL_EXTERN EXDLGLMAKETEXTUREHANDLENONRESIDENTNVPROC                     exdl_glMakeTextureHandleNonResidentNV;
EXDL_EXTERN EXDLGLGETIMAGEHANDLENVPROC                                   exdl_glGetImageHandleNV;
EXDL_EXTERN EXDLGLMAKEIMAGEHANDLERESIDENTNVPROC                          exdl_glMakeImageHandleResidentNV;
EXDL_EXTERN EXDLGLMAKEIMAGEHANDLENONRESIDENTNVPROC                       exdl_glMakeImageHandleNonResidentNV;
EXDL_EXTERN EXDLGLUNIFORMHANDLEUI64NVPROC                                exdl_glUniformHandleui64NV;
EXDL_EXTERN EXDLGLUNIFORMHANDLEUI64VNVPROC                               exdl_glUniformHandleui64vNV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMHANDLEUI64NVPROC                         exdl_glProgramUniformHandleui64NV;
EXDL_EXTERN EXDLGLPROGRAMUNIFORMHANDLEUI64VNVPROC                        exdl_glProgramUniformHandleui64vNV;
EXDL_EXTERN EXDLGLISTEXTUREHANDLERESIDENTNVPROC                          exdl_glIsTextureHandleResidentNV;
EXDL_EXTERN EXDLGLISIMAGEHANDLERESIDENTNVPROC                            exdl_glIsImageHandleResidentNV;
/* GL_NV_shader_atomic_float */


/* GL_VERSION_1_2 */
EXDL_API(egl_blendColor);
EXDL_API(egl_blendEquation);
EXDL_API(egl_drawRangeElements);
EXDL_API(egl_texImage3D);
EXDL_API(egl_texSubImage3D);
EXDL_API(egl_copyTexSubImage3D);
/* GL_VERSION_1_2_DEPRECATED */
EXDL_API(egl_colorTable);
EXDL_API(egl_colorTableParameterfv);
EXDL_API(egl_colorTableParameteriv);
EXDL_API(egl_copyColorTable);
EXDL_API(egl_getColorTable);
EXDL_API(egl_getColorTableParameterfv);
EXDL_API(egl_getColorTableParameteriv);
EXDL_API(egl_colorSubTable);
EXDL_API(egl_copyColorSubTable);
EXDL_API(egl_convolutionFilter1D);
EXDL_API(egl_convolutionFilter2D);
EXDL_API(egl_convolutionParameterf);
EXDL_API(egl_convolutionParameterfv);
EXDL_API(egl_convolutionParameteri);
EXDL_API(egl_convolutionParameteriv);
EXDL_API(egl_copyConvolutionFilter1D);
EXDL_API(egl_copyConvolutionFilter2D);
EXDL_API(egl_getConvolutionFilter);
EXDL_API(egl_getConvolutionParameterfv);
EXDL_API(egl_getConvolutionParameteriv);
EXDL_API(egl_getSeparableFilter);
EXDL_API(egl_separableFilter2D);
EXDL_API(egl_getHistogram);
EXDL_API(egl_getHistogramParameterfv);
EXDL_API(egl_getHistogramParameteriv);
EXDL_API(egl_getMinmax);
EXDL_API(egl_getMinmaxParameterfv);
EXDL_API(egl_getMinmaxParameteriv);
EXDL_API(egl_histogram);
EXDL_API(egl_minmax);
EXDL_API(egl_resetHistogram);
EXDL_API(egl_resetMinmax);
/* GL_VERSION_1_3 */
EXDL_API(egl_activeTexture);
EXDL_API(egl_sampleCoverage);
EXDL_API(egl_compressedTexImage3D);
EXDL_API(egl_compressedTexImage2D);
EXDL_API(egl_compressedTexImage1D);
EXDL_API(egl_compressedTexSubImage3D);
EXDL_API(egl_compressedTexSubImage2D);
EXDL_API(egl_compressedTexSubImage1D);
EXDL_API(egl_getCompressedTexImage);
/* GL_VERSION_1_3_DEPRECATED */
EXDL_API(egl_clientActiveTexture);
EXDL_API(egl_multiTexCoord1d);
EXDL_API(egl_multiTexCoord1dv);
EXDL_API(egl_multiTexCoord1f);
EXDL_API(egl_multiTexCoord1fv);
EXDL_API(egl_multiTexCoord1i);
EXDL_API(egl_multiTexCoord1iv);
EXDL_API(egl_multiTexCoord1s);
EXDL_API(egl_multiTexCoord1sv);
EXDL_API(egl_multiTexCoord2d);
EXDL_API(egl_multiTexCoord2dv);
EXDL_API(egl_multiTexCoord2f);
EXDL_API(egl_multiTexCoord2fv);
EXDL_API(egl_multiTexCoord2i);
EXDL_API(egl_multiTexCoord2iv);
EXDL_API(egl_multiTexCoord2s);
EXDL_API(egl_multiTexCoord2sv);
EXDL_API(egl_multiTexCoord3d);
EXDL_API(egl_multiTexCoord3dv);
EXDL_API(egl_multiTexCoord3f);
EXDL_API(egl_multiTexCoord3fv);
EXDL_API(egl_multiTexCoord3i);
EXDL_API(egl_multiTexCoord3iv);
EXDL_API(egl_multiTexCoord3s);
EXDL_API(egl_multiTexCoord3sv);
EXDL_API(egl_multiTexCoord4d);
EXDL_API(egl_multiTexCoord4dv);
EXDL_API(egl_multiTexCoord4f);
EXDL_API(egl_multiTexCoord4fv);
EXDL_API(egl_multiTexCoord4i);
EXDL_API(egl_multiTexCoord4iv);
EXDL_API(egl_multiTexCoord4s);
EXDL_API(egl_multiTexCoord4sv);
EXDL_API(egl_loadTransposeMatrixf);
EXDL_API(egl_loadTransposeMatrixd);
EXDL_API(egl_multTransposeMatrixf);
EXDL_API(egl_multTransposeMatrixd);
/* GL_VERSION_1_4 */
EXDL_API(egl_blendFuncSeparate);
EXDL_API(egl_multiDrawArrays);
EXDL_API(egl_multiDrawElements);
EXDL_API(egl_pointParameterf);
EXDL_API(egl_pointParameterfv);
EXDL_API(egl_pointParameteri);
EXDL_API(egl_pointParameteriv);
/* GL_VERSION_1_4_DEPRECATED */
EXDL_API(egl_fogCoordf);
EXDL_API(egl_fogCoordfv);
EXDL_API(egl_fogCoordd);
EXDL_API(egl_fogCoorddv);
EXDL_API(egl_fogCoordPointer);
EXDL_API(egl_secondaryColor3b);
EXDL_API(egl_secondaryColor3bv);
EXDL_API(egl_secondaryColor3d);
EXDL_API(egl_secondaryColor3dv);
EXDL_API(egl_secondaryColor3f);
EXDL_API(egl_secondaryColor3fv);
EXDL_API(egl_secondaryColor3i);
EXDL_API(egl_secondaryColor3iv);
EXDL_API(egl_secondaryColor3s);
EXDL_API(egl_secondaryColor3sv);
EXDL_API(egl_secondaryColor3ub);
EXDL_API(egl_secondaryColor3ubv);
EXDL_API(egl_secondaryColor3ui);
EXDL_API(egl_secondaryColor3uiv);
EXDL_API(egl_secondaryColor3us);
EXDL_API(egl_secondaryColor3usv);
EXDL_API(egl_secondaryColorPointer);
EXDL_API(egl_windowPos2d);
EXDL_API(egl_windowPos2dv);
EXDL_API(egl_windowPos2f);
EXDL_API(egl_windowPos2fv);
EXDL_API(egl_windowPos2i);
EXDL_API(egl_windowPos2iv);
EXDL_API(egl_windowPos2s);
EXDL_API(egl_windowPos2sv);
EXDL_API(egl_windowPos3d);
EXDL_API(egl_windowPos3dv);
EXDL_API(egl_windowPos3f);
EXDL_API(egl_windowPos3fv);
EXDL_API(egl_windowPos3i);
EXDL_API(egl_windowPos3iv);
EXDL_API(egl_windowPos3s);
EXDL_API(egl_windowPos3sv);
/* GL_VERSION_1_5 */
EXDL_API(egl_genQueries);
EXDL_API(egl_deleteQueries);
EXDL_API(egl_isQuery);
EXDL_API(egl_beginQuery);
EXDL_API(egl_endQuery);
EXDL_API(egl_getQueryiv);
EXDL_API(egl_getQueryObjectiv);
EXDL_API(egl_getQueryObjectuiv);
EXDL_API(egl_bindBuffer);
EXDL_API(egl_deleteBuffers);
EXDL_API(egl_genBuffers);
EXDL_API(egl_isBuffer);
EXDL_API(egl_bufferData);
EXDL_API(egl_bufferSubData);
EXDL_API(egl_getBufferSubData);
EXDL_API(egl_mapBuffer);
EXDL_API(egl_unmapBuffer);
EXDL_API(egl_getBufferParameteriv);
EXDL_API(egl_getBufferPointerv);
/* GL_VERSION_2_0 */
EXDL_API(egl_blendEquationSeparate);
EXDL_API(egl_drawBuffers);
EXDL_API(egl_stencilOpSeparate);
EXDL_API(egl_stencilFuncSeparate);
EXDL_API(egl_stencilMaskSeparate);
EXDL_API(egl_attachShader);
EXDL_API(egl_bindAttribLocation);
EXDL_API(egl_compileShader);
EXDL_API(egl_createProgram);
EXDL_API(egl_createShader);
EXDL_API(egl_deleteProgram);
EXDL_API(egl_deleteShader);
EXDL_API(egl_detachShader);
EXDL_API(egl_disableVertexAttribArray);
EXDL_API(egl_enableVertexAttribArray);
EXDL_API(egl_getActiveAttrib);
EXDL_API(egl_getActiveUniform);
EXDL_API(egl_getAttachedShaders);
EXDL_API(egl_getAttribLocation);
EXDL_API(egl_getProgramiv);
EXDL_API(egl_getProgramInfoLog);
EXDL_API(egl_getShaderiv);
EXDL_API(egl_getShaderInfoLog);
EXDL_API(egl_getShaderSource);
EXDL_API(egl_getUniformLocation);
EXDL_API(egl_getUniformfv);
EXDL_API(egl_getUniformiv);
EXDL_API(egl_getVertexAttribdv);
EXDL_API(egl_getVertexAttribfv);
EXDL_API(egl_getVertexAttribiv);
EXDL_API(egl_getVertexAttribPointerv);
EXDL_API(egl_isProgram);
EXDL_API(egl_isShader);
EXDL_API(egl_linkProgram);
EXDL_API(egl_shaderSource);
EXDL_API(egl_useProgram);
EXDL_API(egl_uniform1f);
EXDL_API(egl_uniform2f);
EXDL_API(egl_uniform3f);
EXDL_API(egl_uniform4f);
EXDL_API(egl_uniform1i);
EXDL_API(egl_uniform2i);
EXDL_API(egl_uniform3i);
EXDL_API(egl_uniform4i);
EXDL_API(egl_uniform1fv);
EXDL_API(egl_uniform2fv);
EXDL_API(egl_uniform3fv);
EXDL_API(egl_uniform4fv);
EXDL_API(egl_uniform1iv);
EXDL_API(egl_uniform2iv);
EXDL_API(egl_uniform3iv);
EXDL_API(egl_uniform4iv);
EXDL_API(egl_uniformMatrix2fv);
EXDL_API(egl_uniformMatrix3fv);
EXDL_API(egl_uniformMatrix4fv);
EXDL_API(egl_validateProgram);
EXDL_API(egl_vertexAttrib1d);
EXDL_API(egl_vertexAttrib1dv);
EXDL_API(egl_vertexAttrib1f);
EXDL_API(egl_vertexAttrib1fv);
EXDL_API(egl_vertexAttrib1s);
EXDL_API(egl_vertexAttrib1sv);
EXDL_API(egl_vertexAttrib2d);
EXDL_API(egl_vertexAttrib2dv);
EXDL_API(egl_vertexAttrib2f);
EXDL_API(egl_vertexAttrib2fv);
EXDL_API(egl_vertexAttrib2s);
EXDL_API(egl_vertexAttrib2sv);
EXDL_API(egl_vertexAttrib3d);
EXDL_API(egl_vertexAttrib3dv);
EXDL_API(egl_vertexAttrib3f);
EXDL_API(egl_vertexAttrib3fv);
EXDL_API(egl_vertexAttrib3s);
EXDL_API(egl_vertexAttrib3sv);
EXDL_API(egl_vertexAttrib4Nbv);
EXDL_API(egl_vertexAttrib4Niv);
EXDL_API(egl_vertexAttrib4Nsv);
EXDL_API(egl_vertexAttrib4Nub);
EXDL_API(egl_vertexAttrib4Nubv);
EXDL_API(egl_vertexAttrib4Nuiv);
EXDL_API(egl_vertexAttrib4Nusv);
EXDL_API(egl_vertexAttrib4bv);
EXDL_API(egl_vertexAttrib4d);
EXDL_API(egl_vertexAttrib4dv);
EXDL_API(egl_vertexAttrib4f);
EXDL_API(egl_vertexAttrib4fv);
EXDL_API(egl_vertexAttrib4iv);
EXDL_API(egl_vertexAttrib4s);
EXDL_API(egl_vertexAttrib4sv);
EXDL_API(egl_vertexAttrib4ubv);
EXDL_API(egl_vertexAttrib4uiv);
EXDL_API(egl_vertexAttrib4usv);
EXDL_API(egl_vertexAttribPointer);
/* GL_VERSION_2_1 */
EXDL_API(egl_uniformMatrix2x3fv);
EXDL_API(egl_uniformMatrix3x2fv);
EXDL_API(egl_uniformMatrix2x4fv);
EXDL_API(egl_uniformMatrix4x2fv);
EXDL_API(egl_uniformMatrix3x4fv);
EXDL_API(egl_uniformMatrix4x3fv);
/* GL_VERSION_3_0 */
EXDL_API(egl_colorMaski);
EXDL_API(egl_getBooleani_v);
EXDL_API(egl_getIntegeri_v);
EXDL_API(egl_enablei);
EXDL_API(egl_disablei);
EXDL_API(egl_isEnabledi);
EXDL_API(egl_beginTransformFeedback);
EXDL_API(egl_endTransformFeedback);
EXDL_API(egl_bindBufferRange);
EXDL_API(egl_bindBufferBase);
EXDL_API(egl_transformFeedbackVaryings);
EXDL_API(egl_getTransformFeedbackVarying);
EXDL_API(egl_clampColor);
EXDL_API(egl_beginConditionalRender);
EXDL_API(egl_endConditionalRender);
EXDL_API(egl_vertexAttribIPointer);
EXDL_API(egl_getVertexAttribIiv);
EXDL_API(egl_getVertexAttribIuiv);
EXDL_API(egl_vertexAttribI1i);
EXDL_API(egl_vertexAttribI2i);
EXDL_API(egl_vertexAttribI3i);
EXDL_API(egl_vertexAttribI4i);
EXDL_API(egl_vertexAttribI1ui);
EXDL_API(egl_vertexAttribI2ui);
EXDL_API(egl_vertexAttribI3ui);
EXDL_API(egl_vertexAttribI4ui);
EXDL_API(egl_vertexAttribI1iv);
EXDL_API(egl_vertexAttribI2iv);
EXDL_API(egl_vertexAttribI3iv);
EXDL_API(egl_vertexAttribI4iv);
EXDL_API(egl_vertexAttribI1uiv);
EXDL_API(egl_vertexAttribI2uiv);
EXDL_API(egl_vertexAttribI3uiv);
EXDL_API(egl_vertexAttribI4uiv);
EXDL_API(egl_vertexAttribI4bv);
EXDL_API(egl_vertexAttribI4sv);
EXDL_API(egl_vertexAttribI4ubv);
EXDL_API(egl_vertexAttribI4usv);
EXDL_API(egl_getUniformuiv);
EXDL_API(egl_bindFragDataLocation);
EXDL_API(egl_getFragDataLocation);
EXDL_API(egl_uniform1ui);
EXDL_API(egl_uniform2ui);
EXDL_API(egl_uniform3ui);
EXDL_API(egl_uniform4ui);
EXDL_API(egl_uniform1uiv);
EXDL_API(egl_uniform2uiv);
EXDL_API(egl_uniform3uiv);
EXDL_API(egl_uniform4uiv);
EXDL_API(egl_texParameterIiv);
EXDL_API(egl_texParameterIuiv);
EXDL_API(egl_getTexParameterIiv);
EXDL_API(egl_getTexParameterIuiv);
EXDL_API(egl_clearBufferiv);
EXDL_API(egl_clearBufferuiv);
EXDL_API(egl_clearBufferfv);
EXDL_API(egl_clearBufferfi);
EXDL_API(egl_getStringi);
/* GL_VERSION_3_1 */
EXDL_API(egl_drawArraysInstanced);
EXDL_API(egl_drawElementsInstanced);
EXDL_API(egl_texBuffer);
EXDL_API(egl_primitiveRestartIndex);
/* GL_VERSION_3_2 */
EXDL_API(egl_getInteger64i_v);
EXDL_API(egl_getBufferParameteri64v);
EXDL_API(egl_framebufferTexture);
/* GL_VERSION_3_3 */
EXDL_API(egl_vertexAttribDivisor);
/* GL_VERSION_4_0 */
EXDL_API(egl_minSampleShading);
EXDL_API(egl_blendEquationi);
EXDL_API(egl_blendEquationSeparatei);
EXDL_API(egl_blendFunci);
EXDL_API(egl_blendFuncSeparatei);
/* GL_VERSION_4_1 */
/* GL_VERSION_4_2 */
/* GL_ARB_multitexture */
EXDL_API(egl_activeTextureARB);
EXDL_API(egl_clientActiveTextureARB);
EXDL_API(egl_multiTexCoord1dARB);
EXDL_API(egl_multiTexCoord1dvARB);
EXDL_API(egl_multiTexCoord1fARB);
EXDL_API(egl_multiTexCoord1fvARB);
EXDL_API(egl_multiTexCoord1iARB);
EXDL_API(egl_multiTexCoord1ivARB);
EXDL_API(egl_multiTexCoord1sARB);
EXDL_API(egl_multiTexCoord1svARB);
EXDL_API(egl_multiTexCoord2dARB);
EXDL_API(egl_multiTexCoord2dvARB);
EXDL_API(egl_multiTexCoord2fARB);
EXDL_API(egl_multiTexCoord2fvARB);
EXDL_API(egl_multiTexCoord2iARB);
EXDL_API(egl_multiTexCoord2ivARB);
EXDL_API(egl_multiTexCoord2sARB);
EXDL_API(egl_multiTexCoord2svARB);
EXDL_API(egl_multiTexCoord3dARB);
EXDL_API(egl_multiTexCoord3dvARB);
EXDL_API(egl_multiTexCoord3fARB);
EXDL_API(egl_multiTexCoord3fvARB);
EXDL_API(egl_multiTexCoord3iARB);
EXDL_API(egl_multiTexCoord3ivARB);
EXDL_API(egl_multiTexCoord3sARB);
EXDL_API(egl_multiTexCoord3svARB);
EXDL_API(egl_multiTexCoord4dARB);
EXDL_API(egl_multiTexCoord4dvARB);
EXDL_API(egl_multiTexCoord4fARB);
EXDL_API(egl_multiTexCoord4fvARB);
EXDL_API(egl_multiTexCoord4iARB);
EXDL_API(egl_multiTexCoord4ivARB);
EXDL_API(egl_multiTexCoord4sARB);
EXDL_API(egl_multiTexCoord4svARB);
/* GL_ARB_transpose_matrix */
EXDL_API(egl_loadTransposeMatrixfARB);
EXDL_API(egl_loadTransposeMatrixdARB);
EXDL_API(egl_multTransposeMatrixfARB);
EXDL_API(egl_multTransposeMatrixdARB);
/* GL_ARB_multisample */
EXDL_API(egl_sampleCoverageARB);
/* GL_ARB_texture_env_add */
/* GL_ARB_texture_cube_map */
/* GL_ARB_texture_compression */
EXDL_API(egl_compressedTexImage3DARB);
EXDL_API(egl_compressedTexImage2DARB);
EXDL_API(egl_compressedTexImage1DARB);
EXDL_API(egl_compressedTexSubImage3DARB);
EXDL_API(egl_compressedTexSubImage2DARB);
EXDL_API(egl_compressedTexSubImage1DARB);
EXDL_API(egl_getCompressedTexImageARB);
/* GL_ARB_texture_border_clamp */
/* GL_ARB_point_parameters */
EXDL_API(egl_pointParameterfARB);
EXDL_API(egl_pointParameterfvARB);
/* GL_ARB_vertex_blend */
EXDL_API(egl_weightbvARB);
EXDL_API(egl_weightsvARB);
EXDL_API(egl_weightivARB);
EXDL_API(egl_weightfvARB);
EXDL_API(egl_weightdvARB);
EXDL_API(egl_weightubvARB);
EXDL_API(egl_weightusvARB);
EXDL_API(egl_weightuivARB);
EXDL_API(egl_weightPointerARB);
EXDL_API(egl_vertexBlendARB);
/* GL_ARB_matrix_palette */
EXDL_API(egl_currentPaletteMatrixARB);
EXDL_API(egl_matrixIndexubvARB);
EXDL_API(egl_matrixIndexusvARB);
EXDL_API(egl_matrixIndexuivARB);
EXDL_API(egl_matrixIndexPointerARB);
/* GL_ARB_texture_env_combine */
/* GL_ARB_texture_env_crossbar */
/* GL_ARB_texture_env_dot3 */
/* GL_ARB_texture_mirrored_repeat */
/* GL_ARB_depth_texture */
/* GL_ARB_shadow */
/* GL_ARB_shadow_ambient */
/* GL_ARB_window_pos */
EXDL_API(egl_windowPos2dARB);
EXDL_API(egl_windowPos2dvARB);
EXDL_API(egl_windowPos2fARB);
EXDL_API(egl_windowPos2fvARB);
EXDL_API(egl_windowPos2iARB);
EXDL_API(egl_windowPos2ivARB);
EXDL_API(egl_windowPos2sARB);
EXDL_API(egl_windowPos2svARB);
EXDL_API(egl_windowPos3dARB);
EXDL_API(egl_windowPos3dvARB);
EXDL_API(egl_windowPos3fARB);
EXDL_API(egl_windowPos3fvARB);
EXDL_API(egl_windowPos3iARB);
EXDL_API(egl_windowPos3ivARB);
EXDL_API(egl_windowPos3sARB);
EXDL_API(egl_windowPos3svARB);
/* GL_ARB_vertex_program */
EXDL_API(egl_vertexAttrib1dARB);
EXDL_API(egl_vertexAttrib1dvARB);
EXDL_API(egl_vertexAttrib1fARB);
EXDL_API(egl_vertexAttrib1fvARB);
EXDL_API(egl_vertexAttrib1sARB);
EXDL_API(egl_vertexAttrib1svARB);
EXDL_API(egl_vertexAttrib2dARB);
EXDL_API(egl_vertexAttrib2dvARB);
EXDL_API(egl_vertexAttrib2fARB);
EXDL_API(egl_vertexAttrib2fvARB);
EXDL_API(egl_vertexAttrib2sARB);
EXDL_API(egl_vertexAttrib2svARB);
EXDL_API(egl_vertexAttrib3dARB);
EXDL_API(egl_vertexAttrib3dvARB);
EXDL_API(egl_vertexAttrib3fARB);
EXDL_API(egl_vertexAttrib3fvARB);
EXDL_API(egl_vertexAttrib3sARB);
EXDL_API(egl_vertexAttrib3svARB);
EXDL_API(egl_vertexAttrib4NbvARB);
EXDL_API(egl_vertexAttrib4NivARB);
EXDL_API(egl_vertexAttrib4NsvARB);
EXDL_API(egl_vertexAttrib4NubARB);
EXDL_API(egl_vertexAttrib4NubvARB);
EXDL_API(egl_vertexAttrib4NuivARB);
EXDL_API(egl_vertexAttrib4NusvARB);
EXDL_API(egl_vertexAttrib4bvARB);
EXDL_API(egl_vertexAttrib4dARB);
EXDL_API(egl_vertexAttrib4dvARB);
EXDL_API(egl_vertexAttrib4fARB);
EXDL_API(egl_vertexAttrib4fvARB);
EXDL_API(egl_vertexAttrib4ivARB);
EXDL_API(egl_vertexAttrib4sARB);
EXDL_API(egl_vertexAttrib4svARB);
EXDL_API(egl_vertexAttrib4ubvARB);
EXDL_API(egl_vertexAttrib4uivARB);
EXDL_API(egl_vertexAttrib4usvARB);
EXDL_API(egl_vertexAttribPointerARB);
EXDL_API(egl_enableVertexAttribArrayARB);
EXDL_API(egl_disableVertexAttribArrayARB);
EXDL_API(egl_programStringARB);
EXDL_API(egl_bindProgramARB);
EXDL_API(egl_deleteProgramsARB);
EXDL_API(egl_genProgramsARB);
EXDL_API(egl_programEnvParameter4dARB);
EXDL_API(egl_programEnvParameter4dvARB);
EXDL_API(egl_programEnvParameter4fARB);
EXDL_API(egl_programEnvParameter4fvARB);
EXDL_API(egl_programLocalParameter4dARB);
EXDL_API(egl_programLocalParameter4dvARB);
EXDL_API(egl_programLocalParameter4fARB);
EXDL_API(egl_programLocalParameter4fvARB);
EXDL_API(egl_getProgramEnvParameterdvARB);
EXDL_API(egl_getProgramEnvParameterfvARB);
EXDL_API(egl_getProgramLocalParameterdvARB);
EXDL_API(egl_getProgramLocalParameterfvARB);
EXDL_API(egl_getProgramivARB);
EXDL_API(egl_getProgramStringARB);
EXDL_API(egl_getVertexAttribdvARB);
EXDL_API(egl_getVertexAttribfvARB);
EXDL_API(egl_getVertexAttribivARB);
EXDL_API(egl_getVertexAttribPointervARB);
EXDL_API(egl_isProgramARB);
/* GL_ARB_fragment_program */
/* GL_ARB_vertex_buffer_object */
EXDL_API(egl_bindBufferARB);
EXDL_API(egl_deleteBuffersARB);
EXDL_API(egl_genBuffersARB);
EXDL_API(egl_isBufferARB);
EXDL_API(egl_bufferDataARB);
EXDL_API(egl_bufferSubDataARB);
EXDL_API(egl_getBufferSubDataARB);
EXDL_API(egl_mapBufferARB);
EXDL_API(egl_unmapBufferARB);
EXDL_API(egl_getBufferParameterivARB);
EXDL_API(egl_getBufferPointervARB);
/* GL_ARB_occlusion_query */
EXDL_API(egl_genQueriesARB);
EXDL_API(egl_deleteQueriesARB);
EXDL_API(egl_isQueryARB);
EXDL_API(egl_beginQueryARB);
EXDL_API(egl_endQueryARB);
EXDL_API(egl_getQueryivARB);
EXDL_API(egl_getQueryObjectivARB);
EXDL_API(egl_getQueryObjectuivARB);
/* GL_ARB_shader_objects */
EXDL_API(egl_deleteObjectARB);
EXDL_API(egl_getHandleARB);
EXDL_API(egl_detachObjectARB);
EXDL_API(egl_createShaderObjectARB);
EXDL_API(egl_shaderSourceARB);
EXDL_API(egl_compileShaderARB);
EXDL_API(egl_createProgramObjectARB);
EXDL_API(egl_attachObjectARB);
EXDL_API(egl_linkProgramARB);
EXDL_API(egl_useProgramObjectARB);
EXDL_API(egl_validateProgramARB);
EXDL_API(egl_uniform1fARB);
EXDL_API(egl_uniform2fARB);
EXDL_API(egl_uniform3fARB);
EXDL_API(egl_uniform4fARB);
EXDL_API(egl_uniform1iARB);
EXDL_API(egl_uniform2iARB);
EXDL_API(egl_uniform3iARB);
EXDL_API(egl_uniform4iARB);
EXDL_API(egl_uniform1fvARB);
EXDL_API(egl_uniform2fvARB);
EXDL_API(egl_uniform3fvARB);
EXDL_API(egl_uniform4fvARB);
EXDL_API(egl_uniform1ivARB);
EXDL_API(egl_uniform2ivARB);
EXDL_API(egl_uniform3ivARB);
EXDL_API(egl_uniform4ivARB);
EXDL_API(egl_uniformMatrix2fvARB);
EXDL_API(egl_uniformMatrix3fvARB);
EXDL_API(egl_uniformMatrix4fvARB);
EXDL_API(egl_getObjectParameterfvARB);
EXDL_API(egl_getObjectParameterivARB);
EXDL_API(egl_getInfoLogARB);
EXDL_API(egl_getAttachedObjectsARB);
EXDL_API(egl_getUniformLocationARB);
EXDL_API(egl_getActiveUniformARB);
EXDL_API(egl_getUniformfvARB);
EXDL_API(egl_getUniformivARB);
EXDL_API(egl_getShaderSourceARB);
/* GL_ARB_vertex_shader */
EXDL_API(egl_bindAttribLocationARB);
EXDL_API(egl_getActiveAttribARB);
EXDL_API(egl_getAttribLocationARB);
/* GL_ARB_fragment_shader */
/* GL_ARB_shading_language_100 */
/* GL_ARB_texture_non_power_of_two */
/* GL_ARB_point_sprite */
/* GL_ARB_fragment_program_shadow */
/* GL_ARB_draw_buffers */
EXDL_API(egl_drawBuffersARB);
/* GL_ARB_texture_rectangle */
/* GL_ARB_color_buffer_float */
EXDL_API(egl_clampColorARB);
/* GL_ARB_half_float_pixel */
/* GL_ARB_texture_float */
/* GL_ARB_pixel_buffer_object */
/* GL_ARB_depth_buffer_float */
/* GL_ARB_draw_instanced */
EXDL_API(egl_drawArraysInstancedARB);
EXDL_API(egl_drawElementsInstancedARB);
/* GL_ARB_framebuffer_object */
EXDL_API(egl_isRenderbuffer);
EXDL_API(egl_bindRenderbuffer);
EXDL_API(egl_deleteRenderbuffers);
EXDL_API(egl_genRenderbuffers);
EXDL_API(egl_renderbufferStorage);
EXDL_API(egl_getRenderbufferParameteriv);
EXDL_API(egl_isFramebuffer);
EXDL_API(egl_bindFramebuffer);
EXDL_API(egl_deleteFramebuffers);
EXDL_API(egl_genFramebuffers);
EXDL_API(egl_checkFramebufferStatus);
EXDL_API(egl_framebufferTexture1D);
EXDL_API(egl_framebufferTexture2D);
EXDL_API(egl_framebufferTexture3D);
EXDL_API(egl_framebufferRenderbuffer);
EXDL_API(egl_getFramebufferAttachmentParameteriv);
EXDL_API(egl_generateMipmap);
EXDL_API(egl_blitFramebuffer);
EXDL_API(egl_renderbufferStorageMultisample);
EXDL_API(egl_framebufferTextureLayer);
/* GL_ARB_framebuffer_sRGB */
/* GL_ARB_geometry_shader4 */
EXDL_API(egl_programParameteriARB);
EXDL_API(egl_framebufferTextureARB);
EXDL_API(egl_framebufferTextureLayerARB);
EXDL_API(egl_framebufferTextureFaceARB);
/* GL_ARB_half_float_vertex */
/* GL_ARB_instanced_arrays */
EXDL_API(egl_vertexAttribDivisorARB);
/* GL_ARB_map_buffer_range */
EXDL_API(egl_mapBufferRange);
EXDL_API(egl_flushMappedBufferRange);
/* GL_ARB_texture_buffer_object */
EXDL_API(egl_texBufferARB);
/* GL_ARB_texture_compression_rgtc */
/* GL_ARB_texture_rg */
/* GL_ARB_vertex_array_object */
EXDL_API(egl_bindVertexArray);
EXDL_API(egl_deleteVertexArrays);
EXDL_API(egl_genVertexArrays);
EXDL_API(egl_isVertexArray);
/* GL_ARB_uniform_buffer_object */
EXDL_API(egl_getUniformIndices);
EXDL_API(egl_getActiveUniformsiv);
EXDL_API(egl_getActiveUniformName);
EXDL_API(egl_getUniformBlockIndex);
EXDL_API(egl_getActiveUniformBlockiv);
EXDL_API(egl_getActiveUniformBlockName);
EXDL_API(egl_uniformBlockBinding);
/* GL_ARB_compatibility */
/* GL_ARB_copy_buffer */
EXDL_API(egl_copyBufferSubData);
/* GL_ARB_shader_texture_lod */
/* GL_ARB_depth_clamp */
/* GL_ARB_draw_elements_base_vertex */
EXDL_API(egl_drawElementsBaseVertex);
EXDL_API(egl_drawRangeElementsBaseVertex);
EXDL_API(egl_drawElementsInstancedBaseVertex);
EXDL_API(egl_multiDrawElementsBaseVertex);
/* GL_ARB_fragment_coord_conventions */
/* GL_ARB_provoking_vertex */
EXDL_API(egl_provokingVertex);
/* GL_ARB_seamless_cube_map */
/* GL_ARB_sync */
EXDL_API(egl_fenceSync);
EXDL_API(egl_isSync);
EXDL_API(egl_deleteSync);
EXDL_API(egl_clientWaitSync);
EXDL_API(egl_waitSync);
EXDL_API(egl_getInteger64v);
EXDL_API(egl_getSynciv);
/* GL_ARB_texture_multisample */
EXDL_API(egl_texImage2DMultisample);
EXDL_API(egl_texImage3DMultisample);
EXDL_API(egl_getMultisamplefv);
EXDL_API(egl_sampleMaski);
/* GL_ARB_vertex_array_bgra */
/* GL_ARB_draw_buffers_blend */
EXDL_API(egl_blendEquationiARB);
EXDL_API(egl_blendEquationSeparateiARB);
EXDL_API(egl_blendFunciARB);
EXDL_API(egl_blendFuncSeparateiARB);
/* GL_ARB_sample_shading */
EXDL_API(egl_minSampleShadingARB);
/* GL_ARB_texture_cube_map_array */
/* GL_ARB_texture_gather */
/* GL_ARB_texture_query_lod */
/* GL_ARB_shading_language_include */
EXDL_API(egl_namedStringARB);
EXDL_API(egl_deleteNamedStringARB);
EXDL_API(egl_compileShaderIncludeARB);
EXDL_API(egl_isNamedStringARB);
EXDL_API(egl_getNamedStringARB);
EXDL_API(egl_getNamedStringivARB);
/* GL_ARB_texture_compression_bptc */
/* GL_ARB_blend_func_extended */
EXDL_API(egl_bindFragDataLocationIndexed);
EXDL_API(egl_getFragDataIndex);
/* GL_ARB_explicit_attrib_location */
/* GL_ARB_occlusion_query2 */
/* GL_ARB_sampler_objects */
EXDL_API(egl_genSamplers);
EXDL_API(egl_deleteSamplers);
EXDL_API(egl_isSampler);
EXDL_API(egl_bindSampler);
EXDL_API(egl_samplerParameteri);
EXDL_API(egl_samplerParameteriv);
EXDL_API(egl_samplerParameterf);
EXDL_API(egl_samplerParameterfv);
EXDL_API(egl_samplerParameterIiv);
EXDL_API(egl_samplerParameterIuiv);
EXDL_API(egl_getSamplerParameteriv);
EXDL_API(egl_getSamplerParameterIiv);
EXDL_API(egl_getSamplerParameterfv);
EXDL_API(egl_getSamplerParameterIuiv);
/* GL_ARB_shader_bit_encoding */
/* GL_ARB_texture_rgb10_a2ui */
/* GL_ARB_texture_swizzle */
/* GL_ARB_timer_query */
EXDL_API(egl_queryCounter);
EXDL_API(egl_getQueryObjecti64v);
EXDL_API(egl_getQueryObjectui64v);
/* GL_ARB_vertex_type_2_10_10_10_rev */
EXDL_API(egl_vertexP2ui);
EXDL_API(egl_vertexP2uiv);
EXDL_API(egl_vertexP3ui);
EXDL_API(egl_vertexP3uiv);
EXDL_API(egl_vertexP4ui);
EXDL_API(egl_vertexP4uiv);
EXDL_API(egl_texCoordP1ui);
EXDL_API(egl_texCoordP1uiv);
EXDL_API(egl_texCoordP2ui);
EXDL_API(egl_texCoordP2uiv);
EXDL_API(egl_texCoordP3ui);
EXDL_API(egl_texCoordP3uiv);
EXDL_API(egl_texCoordP4ui);
EXDL_API(egl_texCoordP4uiv);
EXDL_API(egl_multiTexCoordP1ui);
EXDL_API(egl_multiTexCoordP1uiv);
EXDL_API(egl_multiTexCoordP2ui);
EXDL_API(egl_multiTexCoordP2uiv);
EXDL_API(egl_multiTexCoordP3ui);
EXDL_API(egl_multiTexCoordP3uiv);
EXDL_API(egl_multiTexCoordP4ui);
EXDL_API(egl_multiTexCoordP4uiv);
EXDL_API(egl_normalP3ui);
EXDL_API(egl_normalP3uiv);
EXDL_API(egl_colorP3ui);
EXDL_API(egl_colorP3uiv);
EXDL_API(egl_colorP4ui);
EXDL_API(egl_colorP4uiv);
EXDL_API(egl_secondaryColorP3ui);
EXDL_API(egl_secondaryColorP3uiv);
EXDL_API(egl_vertexAttribP1ui);
EXDL_API(egl_vertexAttribP1uiv);
EXDL_API(egl_vertexAttribP2ui);
EXDL_API(egl_vertexAttribP2uiv);
EXDL_API(egl_vertexAttribP3ui);
EXDL_API(egl_vertexAttribP3uiv);
EXDL_API(egl_vertexAttribP4ui);
EXDL_API(egl_vertexAttribP4uiv);
/* GL_ARB_draw_indirect */
EXDL_API(egl_drawArraysIndirect);
EXDL_API(egl_drawElementsIndirect);
/* GL_ARB_gpu_shader5 */
/* GL_ARB_gpu_shader_fp64 */
EXDL_API(egl_uniform1d);
EXDL_API(egl_uniform2d);
EXDL_API(egl_uniform3d);
EXDL_API(egl_uniform4d);
EXDL_API(egl_uniform1dv);
EXDL_API(egl_uniform2dv);
EXDL_API(egl_uniform3dv);
EXDL_API(egl_uniform4dv);
EXDL_API(egl_uniformMatrix2dv);
EXDL_API(egl_uniformMatrix3dv);
EXDL_API(egl_uniformMatrix4dv);
EXDL_API(egl_uniformMatrix2x3dv);
EXDL_API(egl_uniformMatrix2x4dv);
EXDL_API(egl_uniformMatrix3x2dv);
EXDL_API(egl_uniformMatrix3x4dv);
EXDL_API(egl_uniformMatrix4x2dv);
EXDL_API(egl_uniformMatrix4x3dv);
EXDL_API(egl_getUniformdv);
/* GL_ARB_shader_subroutine */
EXDL_API(egl_getSubroutineUniformLocation);
EXDL_API(egl_getSubroutineIndex);
EXDL_API(egl_getActiveSubroutineUniformiv);
EXDL_API(egl_getActiveSubroutineUniformName);
EXDL_API(egl_getActiveSubroutineName);
EXDL_API(egl_uniformSubroutinesuiv);
EXDL_API(egl_getUniformSubroutineuiv);
EXDL_API(egl_getProgramStageiv);
/* GL_ARB_tessellation_shader */
EXDL_API(egl_patchParameteri);
EXDL_API(egl_patchParameterfv);
/* GL_ARB_texture_buffer_object_rgb32 */
/* GL_ARB_transform_feedback2 */
EXDL_API(egl_bindTransformFeedback);
EXDL_API(egl_deleteTransformFeedbacks);
EXDL_API(egl_genTransformFeedbacks);
EXDL_API(egl_isTransformFeedback);
EXDL_API(egl_pauseTransformFeedback);
EXDL_API(egl_resumeTransformFeedback);
EXDL_API(egl_drawTransformFeedback);
/* GL_ARB_transform_feedback3 */
EXDL_API(egl_drawTransformFeedbackStream);
EXDL_API(egl_beginQueryIndexed);
EXDL_API(egl_endQueryIndexed);
EXDL_API(egl_getQueryIndexediv);
/* GL_ARB_ES2_compatibility */
EXDL_API(egl_releaseShaderCompiler);
EXDL_API(egl_shaderBinary);
EXDL_API(egl_getShaderPrecisionFormat);
EXDL_API(egl_depthRangef);
EXDL_API(egl_clearDepthf);
/* GL_ARB_get_program_binary */
EXDL_API(egl_getProgramBinary);
EXDL_API(egl_programBinary);
EXDL_API(egl_programParameteri);
/* GL_ARB_separate_shader_objects */
EXDL_API(egl_useProgramStages);
EXDL_API(egl_activeShaderProgram);
EXDL_API(egl_createShaderProgramv);
EXDL_API(egl_bindProgramPipeline);
EXDL_API(egl_deleteProgramPipelines);
EXDL_API(egl_genProgramPipelines);
EXDL_API(egl_isProgramPipeline);
EXDL_API(egl_getProgramPipelineiv);
EXDL_API(egl_programUniform1i);
EXDL_API(egl_programUniform1iv);
EXDL_API(egl_programUniform1f);
EXDL_API(egl_programUniform1fv);
EXDL_API(egl_programUniform1d);
EXDL_API(egl_programUniform1dv);
EXDL_API(egl_programUniform1ui);
EXDL_API(egl_programUniform1uiv);
EXDL_API(egl_programUniform2i);
EXDL_API(egl_programUniform2iv);
EXDL_API(egl_programUniform2f);
EXDL_API(egl_programUniform2fv);
EXDL_API(egl_programUniform2d);
EXDL_API(egl_programUniform2dv);
EXDL_API(egl_programUniform2ui);
EXDL_API(egl_programUniform2uiv);
EXDL_API(egl_programUniform3i);
EXDL_API(egl_programUniform3iv);
EXDL_API(egl_programUniform3f);
EXDL_API(egl_programUniform3fv);
EXDL_API(egl_programUniform3d);
EXDL_API(egl_programUniform3dv);
EXDL_API(egl_programUniform3ui);
EXDL_API(egl_programUniform3uiv);
EXDL_API(egl_programUniform4i);
EXDL_API(egl_programUniform4iv);
EXDL_API(egl_programUniform4f);
EXDL_API(egl_programUniform4fv);
EXDL_API(egl_programUniform4d);
EXDL_API(egl_programUniform4dv);
EXDL_API(egl_programUniform4ui);
EXDL_API(egl_programUniform4uiv);
EXDL_API(egl_programUniformMatrix2fv);
EXDL_API(egl_programUniformMatrix3fv);
EXDL_API(egl_programUniformMatrix4fv);
EXDL_API(egl_programUniformMatrix2dv);
EXDL_API(egl_programUniformMatrix3dv);
EXDL_API(egl_programUniformMatrix4dv);
EXDL_API(egl_programUniformMatrix2x3fv);
EXDL_API(egl_programUniformMatrix3x2fv);
EXDL_API(egl_programUniformMatrix2x4fv);
EXDL_API(egl_programUniformMatrix4x2fv);
EXDL_API(egl_programUniformMatrix3x4fv);
EXDL_API(egl_programUniformMatrix4x3fv);
EXDL_API(egl_programUniformMatrix2x3dv);
EXDL_API(egl_programUniformMatrix3x2dv);
EXDL_API(egl_programUniformMatrix2x4dv);
EXDL_API(egl_programUniformMatrix4x2dv);
EXDL_API(egl_programUniformMatrix3x4dv);
EXDL_API(egl_programUniformMatrix4x3dv);
EXDL_API(egl_validateProgramPipeline);
EXDL_API(egl_getProgramPipelineInfoLog);
/* GL_ARB_vertex_attrib_64bit */
EXDL_API(egl_vertexAttribL1d);
EXDL_API(egl_vertexAttribL2d);
EXDL_API(egl_vertexAttribL3d);
EXDL_API(egl_vertexAttribL4d);
EXDL_API(egl_vertexAttribL1dv);
EXDL_API(egl_vertexAttribL2dv);
EXDL_API(egl_vertexAttribL3dv);
EXDL_API(egl_vertexAttribL4dv);
EXDL_API(egl_vertexAttribLPointer);
EXDL_API(egl_getVertexAttribLdv);
/* GL_ARB_viewport_array */
EXDL_API(egl_viewportArrayv);
EXDL_API(egl_viewportIndexedf);
EXDL_API(egl_viewportIndexedfv);
EXDL_API(egl_scissorArrayv);
EXDL_API(egl_scissorIndexed);
EXDL_API(egl_scissorIndexedv);
EXDL_API(egl_depthRangeArrayv);
EXDL_API(egl_depthRangeIndexed);
EXDL_API(egl_getFloati_v);
EXDL_API(egl_getDoublei_v);
/* GL_ARB_cl_event */
EXDL_API(egl_createSyncFromCLeventARB);
/* GL_ARB_debug_output */
EXDL_API(egl_debugMessageControlARB);
EXDL_API(egl_debugMessageInsertARB);
EXDL_API(egl_debugMessageCallbackARB);
EXDL_API(egl_getDebugMessageLogARB);
/* GL_ARB_robustness */
EXDL_API(egl_getGraphicsResetStatusARB);
EXDL_API(egl_getnMapdvARB);
EXDL_API(egl_getnMapfvARB);
EXDL_API(egl_getnMapivARB);
EXDL_API(egl_getnPixelMapfvARB);
EXDL_API(egl_getnPixelMapuivARB);
EXDL_API(egl_getnPixelMapusvARB);
EXDL_API(egl_getnPolygonStippleARB);
EXDL_API(egl_getnColorTableARB);
EXDL_API(egl_getnConvolutionFilterARB);
EXDL_API(egl_getnSeparableFilterARB);
EXDL_API(egl_getnHistogramARB);
EXDL_API(egl_getnMinmaxARB);
EXDL_API(egl_getnTexImageARB);
EXDL_API(egl_readnPixelsARB);
EXDL_API(egl_getnCompressedTexImageARB);
EXDL_API(egl_getnUniformfvARB);
EXDL_API(egl_getnUniformivARB);
EXDL_API(egl_getnUniformuivARB);
EXDL_API(egl_getnUniformdvARB);
/* GL_ARB_shader_stencil_export */
/* GL_ARB_base_instance */
EXDL_API(egl_drawArraysInstancedBaseInstance);
EXDL_API(egl_drawElementsInstancedBaseInstance);
EXDL_API(egl_drawElementsInstancedBaseVertexBaseInstance);
/* GL_ARB_shading_language_420pack */
/* GL_ARB_transform_feedback_instanced */
EXDL_API(egl_drawTransformFeedbackInstanced);
EXDL_API(egl_drawTransformFeedbackStreamInstanced);
/* GL_ARB_compressed_texture_pixel_storage */
/* GL_ARB_conservative_depth */
/* GL_ARB_internalformat_query */
EXDL_API(egl_getInternalformativ);
/* GL_ARB_map_buffer_alignment */
/* GL_ARB_shader_atomic_counters */
EXDL_API(egl_getActiveAtomicCounterBufferiv);
/* GL_ARB_shader_image_load_store */
EXDL_API(egl_bindImageTexture);
EXDL_API(egl_memoryBarrier);
/* GL_ARB_shading_language_packing */
/* GL_ARB_texture_storage */
EXDL_API(egl_texStorage1D);
EXDL_API(egl_texStorage2D);
EXDL_API(egl_texStorage3D);
EXDL_API(egl_textureStorage1DEXT);
EXDL_API(egl_textureStorage2DEXT);
EXDL_API(egl_textureStorage3DEXT);
/* GL_EXT_abgr */
/* GL_EXT_blend_color */
EXDL_API(egl_blendColorEXT);
/* GL_EXT_polygon_offset */
EXDL_API(egl_polygonOffsetEXT);
/* GL_EXT_texture */
/* GL_EXT_texture3D */
EXDL_API(egl_texImage3DEXT);
EXDL_API(egl_texSubImage3DEXT);
/* GL_SGIS_texture_filter4 */
EXDL_API(egl_getTexFilterFuncSGIS);
EXDL_API(egl_texFilterFuncSGIS);
/* GL_EXT_subtexture */
EXDL_API(egl_texSubImage1DEXT);
EXDL_API(egl_texSubImage2DEXT);
/* GL_EXT_copy_texture */
EXDL_API(egl_copyTexImage1DEXT);
EXDL_API(egl_copyTexImage2DEXT);
EXDL_API(egl_copyTexSubImage1DEXT);
EXDL_API(egl_copyTexSubImage2DEXT);
EXDL_API(egl_copyTexSubImage3DEXT);
/* GL_EXT_histogram */
EXDL_API(egl_getHistogramEXT);
EXDL_API(egl_getHistogramParameterfvEXT);
EXDL_API(egl_getHistogramParameterivEXT);
EXDL_API(egl_getMinmaxEXT);
EXDL_API(egl_getMinmaxParameterfvEXT);
EXDL_API(egl_getMinmaxParameterivEXT);
EXDL_API(egl_histogramEXT);
EXDL_API(egl_minmaxEXT);
EXDL_API(egl_resetHistogramEXT);
EXDL_API(egl_resetMinmaxEXT);
/* GL_EXT_convolution */
EXDL_API(egl_convolutionFilter1DEXT);
EXDL_API(egl_convolutionFilter2DEXT);
EXDL_API(egl_convolutionParameterfEXT);
EXDL_API(egl_convolutionParameterfvEXT);
EXDL_API(egl_convolutionParameteriEXT);
EXDL_API(egl_convolutionParameterivEXT);
EXDL_API(egl_copyConvolutionFilter1DEXT);
EXDL_API(egl_copyConvolutionFilter2DEXT);
EXDL_API(egl_getConvolutionFilterEXT);
EXDL_API(egl_getConvolutionParameterfvEXT);
EXDL_API(egl_getConvolutionParameterivEXT);
EXDL_API(egl_getSeparableFilterEXT);
EXDL_API(egl_separableFilter2DEXT);
/* GL_EXT_color_matrix */
/* GL_SGI_color_matrix */
/* GL_SGI_color_table */
EXDL_API(egl_colorTableSGI);
EXDL_API(egl_colorTableParameterfvSGI);
EXDL_API(egl_colorTableParameterivSGI);
EXDL_API(egl_copyColorTableSGI);
EXDL_API(egl_getColorTableSGI);
EXDL_API(egl_getColorTableParameterfvSGI);
EXDL_API(egl_getColorTableParameterivSGI);
/* GL_SGIX_pixel_texture */
EXDL_API(egl_pixelTexGenSGIX);
/* GL_SGIS_pixel_texture */
EXDL_API(egl_pixelTexGenParameteriSGIS);
EXDL_API(egl_pixelTexGenParameterivSGIS);
EXDL_API(egl_pixelTexGenParameterfSGIS);
EXDL_API(egl_pixelTexGenParameterfvSGIS);
EXDL_API(egl_getPixelTexGenParameterivSGIS);
EXDL_API(egl_getPixelTexGenParameterfvSGIS);
/* GL_SGIS_texture4D */
EXDL_API(egl_texImage4DSGIS);
EXDL_API(egl_texSubImage4DSGIS);
/* GL_SGI_texture_color_table */
/* GL_EXT_cmyka */
/* GL_EXT_texture_object */
EXDL_API(egl_areTexturesResidentEXT);
EXDL_API(egl_bindTextureEXT);
EXDL_API(egl_deleteTexturesEXT);
EXDL_API(egl_genTexturesEXT);
EXDL_API(egl_isTextureEXT);
EXDL_API(egl_prioritizeTexturesEXT);
/* GL_SGIS_detail_texture */
EXDL_API(egl_detailTexFuncSGIS);
EXDL_API(egl_getDetailTexFuncSGIS);
/* GL_SGIS_sharpen_texture */
EXDL_API(egl_sharpenTexFuncSGIS);
EXDL_API(egl_getSharpenTexFuncSGIS);
/* GL_EXT_packed_pixels */
/* GL_SGIS_texture_lod */
/* GL_SGIS_multisample */
EXDL_API(egl_sampleMaskSGIS);
EXDL_API(egl_samplePatternSGIS);
/* GL_EXT_rescale_normal */
/* GL_EXT_vertex_array */
EXDL_API(egl_arrayElementEXT);
EXDL_API(egl_colorPointerEXT);
EXDL_API(egl_drawArraysEXT);
EXDL_API(egl_edgeFlagPointerEXT);
EXDL_API(egl_getPointervEXT);
EXDL_API(egl_indexPointerEXT);
EXDL_API(egl_normalPointerEXT);
EXDL_API(egl_texCoordPointerEXT);
EXDL_API(egl_vertexPointerEXT);
/* GL_EXT_misc_attribute */
/* GL_SGIS_generate_mipmap */
/* GL_SGIX_clipmap */
/* GL_SGIX_shadow */
/* GL_SGIS_texture_edge_clamp */
/* GL_SGIS_texture_border_clamp */
/* GL_EXT_blend_minmax */
EXDL_API(egl_blendEquationEXT);
/* GL_EXT_blend_subtract */
/* GL_EXT_blend_logic_op */
/* GL_SGIX_interlace */
/* GL_SGIX_pixel_tiles */
/* GL_SGIX_texture_select */
/* GL_SGIX_sprite */
EXDL_API(egl_spriteParameterfSGIX);
EXDL_API(egl_spriteParameterfvSGIX);
EXDL_API(egl_spriteParameteriSGIX);
EXDL_API(egl_spriteParameterivSGIX);
/* GL_SGIX_texture_multi_buffer */
/* GL_EXT_point_parameters */
EXDL_API(egl_pointParameterfEXT);
EXDL_API(egl_pointParameterfvEXT);
/* GL_SGIS_point_parameters */
EXDL_API(egl_pointParameterfSGIS);
EXDL_API(egl_pointParameterfvSGIS);
/* GL_SGIX_instruments */
EXDL_API(egl_getInstrumentsSGIX);
EXDL_API(egl_instrumentsBufferSGIX);
EXDL_API(egl_pollInstrumentsSGIX);
EXDL_API(egl_readInstrumentsSGIX);
EXDL_API(egl_startInstrumentsSGIX);
EXDL_API(egl_stopInstrumentsSGIX);
/* GL_SGIX_texture_scale_bias */
/* GL_SGIX_framezoom */
EXDL_API(egl_frameZoomSGIX);
/* GL_SGIX_tag_sample_buffer */
EXDL_API(egl_tagSampleBufferSGIX);
/* GL_SGIX_polynomial_ffd */
EXDL_API(egl_deformationMap3dSGIX);
EXDL_API(egl_deformationMap3fSGIX);
EXDL_API(egl_deformSGIX);
EXDL_API(egl_loadIdentityDeformationMapSGIX);
/* GL_SGIX_reference_plane */
EXDL_API(egl_referencePlaneSGIX);
/* GL_SGIX_flush_raster */
EXDL_API(egl_flushRasterSGIX);
/* GL_SGIX_depth_texture */
/* GL_SGIS_fog_function */
EXDL_API(egl_fogFuncSGIS);
EXDL_API(egl_getFogFuncSGIS);
/* GL_SGIX_fog_offset */
/* GL_HP_image_transform */
EXDL_API(egl_imageTransformParameteriHP);
EXDL_API(egl_imageTransformParameterfHP);
EXDL_API(egl_imageTransformParameterivHP);
EXDL_API(egl_imageTransformParameterfvHP);
EXDL_API(egl_getImageTransformParameterivHP);
EXDL_API(egl_getImageTransformParameterfvHP);
/* GL_HP_convolution_border_modes */
/* GL_SGIX_texture_add_env */
/* GL_EXT_color_subtable */
EXDL_API(egl_colorSubTableEXT);
EXDL_API(egl_copyColorSubTableEXT);
/* GL_PGI_vertex_hints */
/* GL_PGI_misc_hints */
EXDL_API(egl_hintPGI);
/* GL_EXT_paletted_texture */
EXDL_API(egl_colorTableEXT);
EXDL_API(egl_getColorTableEXT);
EXDL_API(egl_getColorTableParameterivEXT);
EXDL_API(egl_getColorTableParameterfvEXT);
/* GL_EXT_clip_volume_hint */
/* GL_SGIX_list_priority */
EXDL_API(egl_getListParameterfvSGIX);
EXDL_API(egl_getListParameterivSGIX);
EXDL_API(egl_listParameterfSGIX);
EXDL_API(egl_listParameterfvSGIX);
EXDL_API(egl_listParameteriSGIX);
EXDL_API(egl_listParameterivSGIX);
/* GL_SGIX_ir_instrument1 */
/* GL_SGIX_calligraphic_fragment */
/* GL_SGIX_texture_lod_bias */
/* GL_SGIX_shadow_ambient */
/* GL_EXT_index_texture */
/* GL_EXT_index_material */
EXDL_API(egl_indexMaterialEXT);
/* GL_EXT_index_func */
EXDL_API(egl_indexFuncEXT);
/* GL_EXT_index_array_formats */
/* GL_EXT_compiled_vertex_array */
EXDL_API(egl_lockArraysEXT);
EXDL_API(egl_unlockArraysEXT);
/* GL_EXT_cull_vertex */
EXDL_API(egl_cullParameterdvEXT);
EXDL_API(egl_cullParameterfvEXT);
/* GL_SGIX_ycrcb */
/* GL_SGIX_fragment_lighting */
EXDL_API(egl_fragmentColorMaterialSGIX);
EXDL_API(egl_fragmentLightfSGIX);
EXDL_API(egl_fragmentLightfvSGIX);
EXDL_API(egl_fragmentLightiSGIX);
EXDL_API(egl_fragmentLightivSGIX);
EXDL_API(egl_fragmentLightModelfSGIX);
EXDL_API(egl_fragmentLightModelfvSGIX);
EXDL_API(egl_fragmentLightModeliSGIX);
EXDL_API(egl_fragmentLightModelivSGIX);
EXDL_API(egl_fragmentMaterialfSGIX);
EXDL_API(egl_fragmentMaterialfvSGIX);
EXDL_API(egl_fragmentMaterialiSGIX);
EXDL_API(egl_fragmentMaterialivSGIX);
EXDL_API(egl_getFragmentLightfvSGIX);
EXDL_API(egl_getFragmentLightivSGIX);
EXDL_API(egl_getFragmentMaterialfvSGIX);
EXDL_API(egl_getFragmentMaterialivSGIX);
EXDL_API(egl_lightEnviSGIX);
/* GL_IBM_rasterpos_clip */
/* GL_HP_texture_lighting */
/* GL_EXT_draw_range_elements */
EXDL_API(egl_drawRangeElementsEXT);
/* GL_WIN_phong_shading */
/* GL_WIN_specular_fog */
/* GL_EXT_light_texture */
EXDL_API(egl_applyTextureEXT);
EXDL_API(egl_textureLightEXT);
EXDL_API(egl_textureMaterialEXT);
/* GL_SGIX_blend_alpha_minmax */
/* GL_EXT_bgra */
/* GL_SGIX_async */
EXDL_API(egl_asyncMarkerSGIX);
EXDL_API(egl_finishAsyncSGIX);
EXDL_API(egl_pollAsyncSGIX);
EXDL_API(egl_genAsyncMarkersSGIX);
EXDL_API(egl_deleteAsyncMarkersSGIX);
EXDL_API(egl_isAsyncMarkerSGIX);
/* GL_SGIX_async_pixel */
/* GL_SGIX_async_histogram */
/* GL_INTEL_parallel_arrays */
EXDL_API(egl_vertexPointervINTEL);
EXDL_API(egl_normalPointervINTEL);
EXDL_API(egl_colorPointervINTEL);
EXDL_API(egl_texCoordPointervINTEL);
/* GL_HP_occlusion_test */
/* GL_EXT_pixel_transform */
EXDL_API(egl_pixelTransformParameteriEXT);
EXDL_API(egl_pixelTransformParameterfEXT);
EXDL_API(egl_pixelTransformParameterivEXT);
EXDL_API(egl_pixelTransformParameterfvEXT);
/* GL_EXT_pixel_transform_color_table */
/* GL_EXT_shared_texture_palette */
/* GL_EXT_separate_specular_color */
/* GL_EXT_secondary_color */
EXDL_API(egl_secondaryColor3bEXT);
EXDL_API(egl_secondaryColor3bvEXT);
EXDL_API(egl_secondaryColor3dEXT);
EXDL_API(egl_secondaryColor3dvEXT);
EXDL_API(egl_secondaryColor3fEXT);
EXDL_API(egl_secondaryColor3fvEXT);
EXDL_API(egl_secondaryColor3iEXT);
EXDL_API(egl_secondaryColor3ivEXT);
EXDL_API(egl_secondaryColor3sEXT);
EXDL_API(egl_secondaryColor3svEXT);
EXDL_API(egl_secondaryColor3ubEXT);
EXDL_API(egl_secondaryColor3ubvEXT);
EXDL_API(egl_secondaryColor3uiEXT);
EXDL_API(egl_secondaryColor3uivEXT);
EXDL_API(egl_secondaryColor3usEXT);
EXDL_API(egl_secondaryColor3usvEXT);
EXDL_API(egl_secondaryColorPointerEXT);
/* GL_EXT_texture_perturb_normal */
EXDL_API(egl_textureNormalEXT);
/* GL_EXT_multi_draw_arrays */
EXDL_API(egl_multiDrawArraysEXT);
EXDL_API(egl_multiDrawElementsEXT);
/* GL_EXT_fog_coord */
EXDL_API(egl_fogCoordfEXT);
EXDL_API(egl_fogCoordfvEXT);
EXDL_API(egl_fogCoorddEXT);
EXDL_API(egl_fogCoorddvEXT);
EXDL_API(egl_fogCoordPointerEXT);
/* GL_REND_screen_coordinates */
/* GL_EXT_coordinate_frame */
EXDL_API(egl_tangent3bEXT);
EXDL_API(egl_tangent3bvEXT);
EXDL_API(egl_tangent3dEXT);
EXDL_API(egl_tangent3dvEXT);
EXDL_API(egl_tangent3fEXT);
EXDL_API(egl_tangent3fvEXT);
EXDL_API(egl_tangent3iEXT);
EXDL_API(egl_tangent3ivEXT);
EXDL_API(egl_tangent3sEXT);
EXDL_API(egl_tangent3svEXT);
EXDL_API(egl_binormal3bEXT);
EXDL_API(egl_binormal3bvEXT);
EXDL_API(egl_binormal3dEXT);
EXDL_API(egl_binormal3dvEXT);
EXDL_API(egl_binormal3fEXT);
EXDL_API(egl_binormal3fvEXT);
EXDL_API(egl_binormal3iEXT);
EXDL_API(egl_binormal3ivEXT);
EXDL_API(egl_binormal3sEXT);
EXDL_API(egl_binormal3svEXT);
EXDL_API(egl_tangentPointerEXT);
EXDL_API(egl_binormalPointerEXT);
/* GL_EXT_texture_env_combine */
/* GL_APPLE_specular_vector */
/* GL_APPLE_transform_hint */
/* GL_SGIX_fog_scale */
/* GL_SUNX_constant_data */
EXDL_API(egl_finishTextureSUNX);
/* GL_SUN_global_alpha */
EXDL_API(egl_globalAlphaFactorbSUN);
EXDL_API(egl_globalAlphaFactorsSUN);
EXDL_API(egl_globalAlphaFactoriSUN);
EXDL_API(egl_globalAlphaFactorfSUN);
EXDL_API(egl_globalAlphaFactordSUN);
EXDL_API(egl_globalAlphaFactorubSUN);
EXDL_API(egl_globalAlphaFactorusSUN);
EXDL_API(egl_globalAlphaFactoruiSUN);
/* GL_SUN_triangle_list */
EXDL_API(egl_replacementCodeuiSUN);
EXDL_API(egl_replacementCodeusSUN);
EXDL_API(egl_replacementCodeubSUN);
EXDL_API(egl_replacementCodeuivSUN);
EXDL_API(egl_replacementCodeusvSUN);
EXDL_API(egl_replacementCodeubvSUN);
EXDL_API(egl_replacementCodePointerSUN);
/* GL_SUN_vertex */
EXDL_API(egl_color4ubVertex2fSUN);
EXDL_API(egl_color4ubVertex2fvSUN);
EXDL_API(egl_color4ubVertex3fSUN);
EXDL_API(egl_color4ubVertex3fvSUN);
EXDL_API(egl_color3fVertex3fSUN);
EXDL_API(egl_color3fVertex3fvSUN);
EXDL_API(egl_normal3fVertex3fSUN);
EXDL_API(egl_normal3fVertex3fvSUN);
EXDL_API(egl_color4fNormal3fVertex3fSUN);
EXDL_API(egl_color4fNormal3fVertex3fvSUN);
EXDL_API(egl_texCoord2fVertex3fSUN);
EXDL_API(egl_texCoord2fVertex3fvSUN);
EXDL_API(egl_texCoord4fVertex4fSUN);
EXDL_API(egl_texCoord4fVertex4fvSUN);
EXDL_API(egl_texCoord2fColor4ubVertex3fSUN);
EXDL_API(egl_texCoord2fColor4ubVertex3fvSUN);
EXDL_API(egl_texCoord2fColor3fVertex3fSUN);
EXDL_API(egl_texCoord2fColor3fVertex3fvSUN);
EXDL_API(egl_texCoord2fNormal3fVertex3fSUN);
EXDL_API(egl_texCoord2fNormal3fVertex3fvSUN);
EXDL_API(egl_texCoord2fColor4fNormal3fVertex3fSUN);
EXDL_API(egl_texCoord2fColor4fNormal3fVertex3fvSUN);
EXDL_API(egl_texCoord4fColor4fNormal3fVertex4fSUN);
EXDL_API(egl_texCoord4fColor4fNormal3fVertex4fvSUN);
EXDL_API(egl_replacementCodeuiVertex3fSUN);
EXDL_API(egl_replacementCodeuiVertex3fvSUN);
EXDL_API(egl_replacementCodeuiColor4ubVertex3fSUN);
EXDL_API(egl_replacementCodeuiColor4ubVertex3fvSUN);
EXDL_API(egl_replacementCodeuiColor3fVertex3fSUN);
EXDL_API(egl_replacementCodeuiColor3fVertex3fvSUN);
EXDL_API(egl_replacementCodeuiNormal3fVertex3fSUN);
EXDL_API(egl_replacementCodeuiNormal3fVertex3fvSUN);
EXDL_API(egl_replacementCodeuiColor4fNormal3fVertex3fSUN);
EXDL_API(egl_replacementCodeuiColor4fNormal3fVertex3fvSUN);
EXDL_API(egl_replacementCodeuiTexCoord2fVertex3fSUN);
EXDL_API(egl_replacementCodeuiTexCoord2fVertex3fvSUN);
EXDL_API(egl_replacementCodeuiTexCoord2fNormal3fVertex3fSUN);
EXDL_API(egl_replacementCodeuiTexCoord2fNormal3fVertex3fvSUN);
EXDL_API(egl_replacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN);
EXDL_API(egl_replacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN);
/* GL_EXT_blend_func_separate */
EXDL_API(egl_blendFuncSeparateEXT);
/* GL_INGR_blend_func_separate */
EXDL_API(egl_blendFuncSeparateINGR);
/* GL_INGR_color_clamp */
/* GL_INGR_interlace_read */
/* GL_EXT_stencil_wrap */
/* GL_EXT_422_pixels */
/* GL_NV_texgen_reflection */
/* GL_SUN_convolution_border_modes */
/* GL_EXT_texture_env_add */
/* GL_EXT_texture_lod_bias */
/* GL_EXT_texture_filter_anisotropic */
/* GL_EXT_vertex_weighting */
EXDL_API(egl_vertexWeightfEXT);
EXDL_API(egl_vertexWeightfvEXT);
EXDL_API(egl_vertexWeightPointerEXT);
/* GL_NV_light_max_exponent */
/* GL_NV_vertex_array_range */
EXDL_API(egl_flushVertexArrayRangeNV);
EXDL_API(egl_vertexArrayRangeNV);
/* GL_NV_register_combiners */
EXDL_API(egl_combinerParameterfvNV);
EXDL_API(egl_combinerParameterfNV);
EXDL_API(egl_combinerParameterivNV);
EXDL_API(egl_combinerParameteriNV);
EXDL_API(egl_combinerInputNV);
EXDL_API(egl_combinerOutputNV);
EXDL_API(egl_finalCombinerInputNV);
EXDL_API(egl_getCombinerInputParameterfvNV);
EXDL_API(egl_getCombinerInputParameterivNV);
EXDL_API(egl_getCombinerOutputParameterfvNV);
EXDL_API(egl_getCombinerOutputParameterivNV);
EXDL_API(egl_getFinalCombinerInputParameterfvNV);
EXDL_API(egl_getFinalCombinerInputParameterivNV);
/* GL_NV_fog_distance */
/* GL_NV_texgen_emboss */
/* GL_NV_blend_square */
/* GL_NV_texture_env_combine4 */
/* GL_MESA_resize_buffers */
EXDL_API(egl_resizeBuffersMESA);
/* GL_MESA_window_pos */
EXDL_API(egl_windowPos2dMESA);
EXDL_API(egl_windowPos2dvMESA);
EXDL_API(egl_windowPos2fMESA);
EXDL_API(egl_windowPos2fvMESA);
EXDL_API(egl_windowPos2iMESA);
EXDL_API(egl_windowPos2ivMESA);
EXDL_API(egl_windowPos2sMESA);
EXDL_API(egl_windowPos2svMESA);
EXDL_API(egl_windowPos3dMESA);
EXDL_API(egl_windowPos3dvMESA);
EXDL_API(egl_windowPos3fMESA);
EXDL_API(egl_windowPos3fvMESA);
EXDL_API(egl_windowPos3iMESA);
EXDL_API(egl_windowPos3ivMESA);
EXDL_API(egl_windowPos3sMESA);
EXDL_API(egl_windowPos3svMESA);
EXDL_API(egl_windowPos4dMESA);
EXDL_API(egl_windowPos4dvMESA);
EXDL_API(egl_windowPos4fMESA);
EXDL_API(egl_windowPos4fvMESA);
EXDL_API(egl_windowPos4iMESA);
EXDL_API(egl_windowPos4ivMESA);
EXDL_API(egl_windowPos4sMESA);
EXDL_API(egl_windowPos4svMESA);
/* GL_IBM_cull_vertex */
/* GL_IBM_multimode_draw_arrays */
EXDL_API(egl_multiModeDrawArraysIBM);
EXDL_API(egl_multiModeDrawElementsIBM);
/* GL_IBM_vertex_array_lists */
EXDL_API(egl_colorPointerListIBM);
EXDL_API(egl_secondaryColorPointerListIBM);
EXDL_API(egl_edgeFlagPointerListIBM);
EXDL_API(egl_fogCoordPointerListIBM);
EXDL_API(egl_indexPointerListIBM);
EXDL_API(egl_normalPointerListIBM);
EXDL_API(egl_texCoordPointerListIBM);
EXDL_API(egl_vertexPointerListIBM);
/* GL_SGIX_subsample */
/* GL_SGIX_ycrcba */
/* GL_SGIX_ycrcb_subsample */
/* GL_SGIX_depth_pass_instrument */
/* GL_3DFX_texture_compression_FXT1 */
/* GL_3DFX_multisample */
/* GL_3DFX_tbuffer */
EXDL_API(egl_tbufferMask3DFX);
/* GL_EXT_multisample */
EXDL_API(egl_sampleMaskEXT);
EXDL_API(egl_samplePatternEXT);
/* GL_SGIX_vertex_preclip */
/* GL_SGIX_convolution_accuracy */
/* GL_SGIX_resample */
/* GL_SGIS_point_line_texgen */
/* GL_SGIS_texture_color_mask */
EXDL_API(egl_textureColorMaskSGIS);
/* GL_SGIX_igloo_interface */
EXDL_API(egl_iglooInterfaceSGIX);
/* GL_EXT_texture_env_dot3 */
/* GL_ATI_texture_mirror_once */
/* GL_NV_fence */
EXDL_API(egl_deleteFencesNV);
EXDL_API(egl_genFencesNV);
EXDL_API(egl_isFenceNV);
EXDL_API(egl_testFenceNV);
EXDL_API(egl_getFenceivNV);
EXDL_API(egl_finishFenceNV);
EXDL_API(egl_setFenceNV);
/* GL_NV_evaluators */
EXDL_API(egl_mapControlPointsNV);
EXDL_API(egl_mapParameterivNV);
EXDL_API(egl_mapParameterfvNV);
EXDL_API(egl_getMapControlPointsNV);
EXDL_API(egl_getMapParameterivNV);
EXDL_API(egl_getMapParameterfvNV);
EXDL_API(egl_getMapAttribParameterivNV);
EXDL_API(egl_getMapAttribParameterfvNV);
EXDL_API(egl_evalMapsNV);
/* GL_NV_packed_depth_stencil */
/* GL_NV_register_combiners2 */
EXDL_API(egl_combinerStageParameterfvNV);
EXDL_API(egl_getCombinerStageParameterfvNV);
/* GL_NV_texture_compression_vtc */
/* GL_NV_texture_rectangle */
/* GL_NV_texture_shader */
/* GL_NV_texture_shader2 */
/* GL_NV_vertex_array_range2 */
/* GL_NV_vertex_program */
EXDL_API(egl_areProgramsResidentNV);
EXDL_API(egl_bindProgramNV);
EXDL_API(egl_deleteProgramsNV);
EXDL_API(egl_executeProgramNV);
EXDL_API(egl_genProgramsNV);
EXDL_API(egl_getProgramParameterdvNV);
EXDL_API(egl_getProgramParameterfvNV);
EXDL_API(egl_getProgramivNV);
EXDL_API(egl_getProgramStringNV);
EXDL_API(egl_getTrackMatrixivNV);
EXDL_API(egl_getVertexAttribdvNV);
EXDL_API(egl_getVertexAttribfvNV);
EXDL_API(egl_getVertexAttribivNV);
EXDL_API(egl_getVertexAttribPointervNV);
EXDL_API(egl_isProgramNV);
EXDL_API(egl_loadProgramNV);
EXDL_API(egl_programParameter4dNV);
EXDL_API(egl_programParameter4dvNV);
EXDL_API(egl_programParameter4fNV);
EXDL_API(egl_programParameter4fvNV);
EXDL_API(egl_programParameters4dvNV);
EXDL_API(egl_programParameters4fvNV);
EXDL_API(egl_requestResidentProgramsNV);
EXDL_API(egl_trackMatrixNV);
EXDL_API(egl_vertexAttribPointerNV);
EXDL_API(egl_vertexAttrib1dNV);
EXDL_API(egl_vertexAttrib1dvNV);
EXDL_API(egl_vertexAttrib1fNV);
EXDL_API(egl_vertexAttrib1fvNV);
EXDL_API(egl_vertexAttrib1sNV);
EXDL_API(egl_vertexAttrib1svNV);
EXDL_API(egl_vertexAttrib2dNV);
EXDL_API(egl_vertexAttrib2dvNV);
EXDL_API(egl_vertexAttrib2fNV);
EXDL_API(egl_vertexAttrib2fvNV);
EXDL_API(egl_vertexAttrib2sNV);
EXDL_API(egl_vertexAttrib2svNV);
EXDL_API(egl_vertexAttrib3dNV);
EXDL_API(egl_vertexAttrib3dvNV);
EXDL_API(egl_vertexAttrib3fNV);
EXDL_API(egl_vertexAttrib3fvNV);
EXDL_API(egl_vertexAttrib3sNV);
EXDL_API(egl_vertexAttrib3svNV);
EXDL_API(egl_vertexAttrib4dNV);
EXDL_API(egl_vertexAttrib4dvNV);
EXDL_API(egl_vertexAttrib4fNV);
EXDL_API(egl_vertexAttrib4fvNV);
EXDL_API(egl_vertexAttrib4sNV);
EXDL_API(egl_vertexAttrib4svNV);
EXDL_API(egl_vertexAttrib4ubNV);
EXDL_API(egl_vertexAttrib4ubvNV);
EXDL_API(egl_vertexAttribs1dvNV);
EXDL_API(egl_vertexAttribs1fvNV);
EXDL_API(egl_vertexAttribs1svNV);
EXDL_API(egl_vertexAttribs2dvNV);
EXDL_API(egl_vertexAttribs2fvNV);
EXDL_API(egl_vertexAttribs2svNV);
EXDL_API(egl_vertexAttribs3dvNV);
EXDL_API(egl_vertexAttribs3fvNV);
EXDL_API(egl_vertexAttribs3svNV);
EXDL_API(egl_vertexAttribs4dvNV);
EXDL_API(egl_vertexAttribs4fvNV);
EXDL_API(egl_vertexAttribs4svNV);
EXDL_API(egl_vertexAttribs4ubvNV);
/* GL_SGIX_texture_coordinate_clamp */
/* GL_SGIX_scalebias_hint */
/* GL_OML_interlace */
/* GL_OML_subsample */
/* GL_OML_resample */
/* GL_NV_copy_depth_to_color */
/* GL_ATI_envmap_bumpmap */
EXDL_API(egl_texBumpParameterivATI);
EXDL_API(egl_texBumpParameterfvATI);
EXDL_API(egl_getTexBumpParameterivATI);
EXDL_API(egl_getTexBumpParameterfvATI);
/* GL_ATI_fragment_shader */
EXDL_API(egl_genFragmentShadersATI);
EXDL_API(egl_bindFragmentShaderATI);
EXDL_API(egl_deleteFragmentShaderATI);
EXDL_API(egl_beginFragmentShaderATI);
EXDL_API(egl_endFragmentShaderATI);
EXDL_API(egl_passTexCoordATI);
EXDL_API(egl_sampleMapATI);
EXDL_API(egl_colorFragmentOp1ATI);
EXDL_API(egl_colorFragmentOp2ATI);
EXDL_API(egl_colorFragmentOp3ATI);
EXDL_API(egl_alphaFragmentOp1ATI);
EXDL_API(egl_alphaFragmentOp2ATI);
EXDL_API(egl_alphaFragmentOp3ATI);
EXDL_API(egl_setFragmentShaderConstantATI);
/* GL_ATI_pn_triangles */
EXDL_API(egl_pNTrianglesiATI);
EXDL_API(egl_pNTrianglesfATI);
/* GL_ATI_vertex_array_object */
EXDL_API(egl_newObjectBufferATI);
EXDL_API(egl_isObjectBufferATI);
EXDL_API(egl_updateObjectBufferATI);
EXDL_API(egl_getObjectBufferfvATI);
EXDL_API(egl_getObjectBufferivATI);
EXDL_API(egl_freeObjectBufferATI);
EXDL_API(egl_arrayObjectATI);
EXDL_API(egl_getArrayObjectfvATI);
EXDL_API(egl_getArrayObjectivATI);
EXDL_API(egl_variantArrayObjectATI);
EXDL_API(egl_getVariantArrayObjectfvATI);
EXDL_API(egl_getVariantArrayObjectivATI);
/* GL_EXT_vertex_shader */
EXDL_API(egl_beginVertexShaderEXT);
EXDL_API(egl_endVertexShaderEXT);
EXDL_API(egl_bindVertexShaderEXT);
EXDL_API(egl_genVertexShadersEXT);
EXDL_API(egl_deleteVertexShaderEXT);
EXDL_API(egl_shaderOp1EXT);
EXDL_API(egl_shaderOp2EXT);
EXDL_API(egl_shaderOp3EXT);
EXDL_API(egl_swizzleEXT);
EXDL_API(egl_writeMaskEXT);
EXDL_API(egl_insertComponentEXT);
EXDL_API(egl_extractComponentEXT);
EXDL_API(egl_genSymbolsEXT);
EXDL_API(egl_setInvariantEXT);
EXDL_API(egl_setLocalConstantEXT);
EXDL_API(egl_variantbvEXT);
EXDL_API(egl_variantsvEXT);
EXDL_API(egl_variantivEXT);
EXDL_API(egl_variantfvEXT);
EXDL_API(egl_variantdvEXT);
EXDL_API(egl_variantubvEXT);
EXDL_API(egl_variantusvEXT);
EXDL_API(egl_variantuivEXT);
EXDL_API(egl_variantPointerEXT);
EXDL_API(egl_enableVariantClientStateEXT);
EXDL_API(egl_disableVariantClientStateEXT);
EXDL_API(egl_bindLightParameterEXT);
EXDL_API(egl_bindMaterialParameterEXT);
EXDL_API(egl_bindTexGenParameterEXT);
EXDL_API(egl_bindTextureUnitParameterEXT);
EXDL_API(egl_bindParameterEXT);
EXDL_API(egl_isVariantEnabledEXT);
EXDL_API(egl_getVariantBooleanvEXT);
EXDL_API(egl_getVariantIntegervEXT);
EXDL_API(egl_getVariantFloatvEXT);
EXDL_API(egl_getVariantPointervEXT);
EXDL_API(egl_getInvariantBooleanvEXT);
EXDL_API(egl_getInvariantIntegervEXT);
EXDL_API(egl_getInvariantFloatvEXT);
EXDL_API(egl_getLocalConstantBooleanvEXT);
EXDL_API(egl_getLocalConstantIntegervEXT);
EXDL_API(egl_getLocalConstantFloatvEXT);
/* GL_ATI_vertex_streams */
EXDL_API(egl_vertexStream1sATI);
EXDL_API(egl_vertexStream1svATI);
EXDL_API(egl_vertexStream1iATI);
EXDL_API(egl_vertexStream1ivATI);
EXDL_API(egl_vertexStream1fATI);
EXDL_API(egl_vertexStream1fvATI);
EXDL_API(egl_vertexStream1dATI);
EXDL_API(egl_vertexStream1dvATI);
EXDL_API(egl_vertexStream2sATI);
EXDL_API(egl_vertexStream2svATI);
EXDL_API(egl_vertexStream2iATI);
EXDL_API(egl_vertexStream2ivATI);
EXDL_API(egl_vertexStream2fATI);
EXDL_API(egl_vertexStream2fvATI);
EXDL_API(egl_vertexStream2dATI);
EXDL_API(egl_vertexStream2dvATI);
EXDL_API(egl_vertexStream3sATI);
EXDL_API(egl_vertexStream3svATI);
EXDL_API(egl_vertexStream3iATI);
EXDL_API(egl_vertexStream3ivATI);
EXDL_API(egl_vertexStream3fATI);
EXDL_API(egl_vertexStream3fvATI);
EXDL_API(egl_vertexStream3dATI);
EXDL_API(egl_vertexStream3dvATI);
EXDL_API(egl_vertexStream4sATI);
EXDL_API(egl_vertexStream4svATI);
EXDL_API(egl_vertexStream4iATI);
EXDL_API(egl_vertexStream4ivATI);
EXDL_API(egl_vertexStream4fATI);
EXDL_API(egl_vertexStream4fvATI);
EXDL_API(egl_vertexStream4dATI);
EXDL_API(egl_vertexStream4dvATI);
EXDL_API(egl_normalStream3bATI);
EXDL_API(egl_normalStream3bvATI);
EXDL_API(egl_normalStream3sATI);
EXDL_API(egl_normalStream3svATI);
EXDL_API(egl_normalStream3iATI);
EXDL_API(egl_normalStream3ivATI);
EXDL_API(egl_normalStream3fATI);
EXDL_API(egl_normalStream3fvATI);
EXDL_API(egl_normalStream3dATI);
EXDL_API(egl_normalStream3dvATI);
EXDL_API(egl_clientActiveVertexStreamATI);
EXDL_API(egl_vertexBlendEnviATI);
EXDL_API(egl_vertexBlendEnvfATI);
/* GL_ATI_element_array */
EXDL_API(egl_elementPointerATI);
EXDL_API(egl_drawElementArrayATI);
EXDL_API(egl_drawRangeElementArrayATI);
/* GL_SUN_mesh_array */
EXDL_API(egl_drawMeshArraysSUN);
/* GL_SUN_slice_accum */
/* GL_NV_multisample_filter_hint */
/* GL_NV_depth_clamp */
/* GL_NV_occlusion_query */
EXDL_API(egl_genOcclusionQueriesNV);
EXDL_API(egl_deleteOcclusionQueriesNV);
EXDL_API(egl_isOcclusionQueryNV);
EXDL_API(egl_beginOcclusionQueryNV);
EXDL_API(egl_endOcclusionQueryNV);
EXDL_API(egl_getOcclusionQueryivNV);
EXDL_API(egl_getOcclusionQueryuivNV);
/* GL_NV_point_sprite */
EXDL_API(egl_pointParameteriNV);
EXDL_API(egl_pointParameterivNV);
/* GL_NV_texture_shader3 */
/* GL_NV_vertex_program1_1 */
/* GL_EXT_shadow_funcs */
/* GL_EXT_stencil_two_side */
EXDL_API(egl_activeStencilFaceEXT);
/* GL_ATI_text_fragment_shader */
/* GL_APPLE_client_storage */
/* GL_APPLE_element_array */
EXDL_API(egl_elementPointerAPPLE);
EXDL_API(egl_drawElementArrayAPPLE);
EXDL_API(egl_drawRangeElementArrayAPPLE);
EXDL_API(egl_multiDrawElementArrayAPPLE);
EXDL_API(egl_multiDrawRangeElementArrayAPPLE);
/* GL_APPLE_fence */
EXDL_API(egl_genFencesAPPLE);
EXDL_API(egl_deleteFencesAPPLE);
EXDL_API(egl_setFenceAPPLE);
EXDL_API(egl_isFenceAPPLE);
EXDL_API(egl_testFenceAPPLE);
EXDL_API(egl_finishFenceAPPLE);
EXDL_API(egl_testObjectAPPLE);
EXDL_API(egl_finishObjectAPPLE);
/* GL_APPLE_vertex_array_object */
EXDL_API(egl_bindVertexArrayAPPLE);
EXDL_API(egl_deleteVertexArraysAPPLE);
EXDL_API(egl_genVertexArraysAPPLE);
EXDL_API(egl_isVertexArrayAPPLE);
/* GL_APPLE_vertex_array_range */
EXDL_API(egl_vertexArrayRangeAPPLE);
EXDL_API(egl_flushVertexArrayRangeAPPLE);
EXDL_API(egl_vertexArrayParameteriAPPLE);
/* GL_APPLE_ycbcr_422 */
/* GL_S3_s3tc */
/* GL_ATI_draw_buffers */
EXDL_API(egl_drawBuffersATI);
/* GL_ATI_pixel_format_float */
/* GL_ATI_texture_env_combine3 */
/* GL_ATI_texture_float */
/* GL_NV_float_buffer */
/* GL_NV_fragment_program */
EXDL_API(egl_programNamedParameter4fNV);
EXDL_API(egl_programNamedParameter4dNV);
EXDL_API(egl_programNamedParameter4fvNV);
EXDL_API(egl_programNamedParameter4dvNV);
EXDL_API(egl_getProgramNamedParameterfvNV);
EXDL_API(egl_getProgramNamedParameterdvNV);
/* GL_NV_half_float */
EXDL_API(egl_vertex2hNV);
EXDL_API(egl_vertex2hvNV);
EXDL_API(egl_vertex3hNV);
EXDL_API(egl_vertex3hvNV);
EXDL_API(egl_vertex4hNV);
EXDL_API(egl_vertex4hvNV);
EXDL_API(egl_normal3hNV);
EXDL_API(egl_normal3hvNV);
EXDL_API(egl_color3hNV);
EXDL_API(egl_color3hvNV);
EXDL_API(egl_color4hNV);
EXDL_API(egl_color4hvNV);
EXDL_API(egl_texCoord1hNV);
EXDL_API(egl_texCoord1hvNV);
EXDL_API(egl_texCoord2hNV);
EXDL_API(egl_texCoord2hvNV);
EXDL_API(egl_texCoord3hNV);
EXDL_API(egl_texCoord3hvNV);
EXDL_API(egl_texCoord4hNV);
EXDL_API(egl_texCoord4hvNV);
EXDL_API(egl_multiTexCoord1hNV);
EXDL_API(egl_multiTexCoord1hvNV);
EXDL_API(egl_multiTexCoord2hNV);
EXDL_API(egl_multiTexCoord2hvNV);
EXDL_API(egl_multiTexCoord3hNV);
EXDL_API(egl_multiTexCoord3hvNV);
EXDL_API(egl_multiTexCoord4hNV);
EXDL_API(egl_multiTexCoord4hvNV);
EXDL_API(egl_fogCoordhNV);
EXDL_API(egl_fogCoordhvNV);
EXDL_API(egl_secondaryColor3hNV);
EXDL_API(egl_secondaryColor3hvNV);
EXDL_API(egl_vertexWeighthNV);
EXDL_API(egl_vertexWeighthvNV);
EXDL_API(egl_vertexAttrib1hNV);
EXDL_API(egl_vertexAttrib1hvNV);
EXDL_API(egl_vertexAttrib2hNV);
EXDL_API(egl_vertexAttrib2hvNV);
EXDL_API(egl_vertexAttrib3hNV);
EXDL_API(egl_vertexAttrib3hvNV);
EXDL_API(egl_vertexAttrib4hNV);
EXDL_API(egl_vertexAttrib4hvNV);
EXDL_API(egl_vertexAttribs1hvNV);
EXDL_API(egl_vertexAttribs2hvNV);
EXDL_API(egl_vertexAttribs3hvNV);
EXDL_API(egl_vertexAttribs4hvNV);
/* GL_NV_pixel_data_range */
EXDL_API(egl_pixelDataRangeNV);
EXDL_API(egl_flushPixelDataRangeNV);
/* GL_NV_primitive_restart */
EXDL_API(egl_primitiveRestartNV);
EXDL_API(egl_primitiveRestartIndexNV);
/* GL_NV_texture_expand_normal */
/* GL_NV_vertex_program2 */
/* GL_ATI_map_object_buffer */
EXDL_API(egl_mapObjectBufferATI);
EXDL_API(egl_unmapObjectBufferATI);
/* GL_ATI_separate_stencil */
EXDL_API(egl_stencilOpSeparateATI);
EXDL_API(egl_stencilFuncSeparateATI);
/* GL_ATI_vertex_attrib_array_object */
EXDL_API(egl_vertexAttribArrayObjectATI);
EXDL_API(egl_getVertexAttribArrayObjectfvATI);
EXDL_API(egl_getVertexAttribArrayObjectivATI);
/* GL_OES_read_format */
/* GL_EXT_depth_bounds_test */
EXDL_API(egl_depthBoundsEXT);
/* GL_EXT_texture_mirror_clamp */
/* GL_EXT_blend_equation_separate */
EXDL_API(egl_blendEquationSeparateEXT);
/* GL_MESA_pack_invert */
/* GL_MESA_ycbcr_texture */
/* GL_EXT_pixel_buffer_object */
/* GL_NV_fragment_program_option */
/* GL_NV_fragment_program2 */
/* GL_NV_vertex_program2_option */
/* GL_NV_vertex_program3 */
/* GL_EXT_framebuffer_object */
EXDL_API(egl_isRenderbufferEXT);
EXDL_API(egl_bindRenderbufferEXT);
EXDL_API(egl_deleteRenderbuffersEXT);
EXDL_API(egl_genRenderbuffersEXT);
EXDL_API(egl_renderbufferStorageEXT);
EXDL_API(egl_getRenderbufferParameterivEXT);
EXDL_API(egl_isFramebufferEXT);
EXDL_API(egl_bindFramebufferEXT);
EXDL_API(egl_deleteFramebuffersEXT);
EXDL_API(egl_genFramebuffersEXT);
EXDL_API(egl_checkFramebufferStatusEXT);
EXDL_API(egl_framebufferTexture1DEXT);
EXDL_API(egl_framebufferTexture2DEXT);
EXDL_API(egl_framebufferTexture3DEXT);
EXDL_API(egl_framebufferRenderbufferEXT);
EXDL_API(egl_getFramebufferAttachmentParameterivEXT);
EXDL_API(egl_generateMipmapEXT);
/* GL_GREMEDY_string_marker */
EXDL_API(egl_stringMarkerGREMEDY);
/* GL_EXT_packed_depth_stencil */
/* GL_EXT_stencil_clear_tag */
EXDL_API(egl_stencilClearTagEXT);
/* GL_EXT_texture_sRGB */
/* GL_EXT_framebuffer_blit */
EXDL_API(egl_blitFramebufferEXT);
/* GL_EXT_framebuffer_multisample */
EXDL_API(egl_renderbufferStorageMultisampleEXT);
/* GL_MESAX_texture_stack */
/* GL_EXT_timer_query */
EXDL_API(egl_getQueryObjecti64vEXT);
EXDL_API(egl_getQueryObjectui64vEXT);
/* GL_EXT_gpu_program_parameters */
EXDL_API(egl_programEnvParameters4fvEXT);
EXDL_API(egl_programLocalParameters4fvEXT);
/* GL_APPLE_flush_buffer_range */
EXDL_API(egl_bufferParameteriAPPLE);
EXDL_API(egl_flushMappedBufferRangeAPPLE);
/* GL_NV_gpu_program4 */
EXDL_API(egl_programLocalParameterI4iNV);
EXDL_API(egl_programLocalParameterI4ivNV);
EXDL_API(egl_programLocalParametersI4ivNV);
EXDL_API(egl_programLocalParameterI4uiNV);
EXDL_API(egl_programLocalParameterI4uivNV);
EXDL_API(egl_programLocalParametersI4uivNV);
EXDL_API(egl_programEnvParameterI4iNV);
EXDL_API(egl_programEnvParameterI4ivNV);
EXDL_API(egl_programEnvParametersI4ivNV);
EXDL_API(egl_programEnvParameterI4uiNV);
EXDL_API(egl_programEnvParameterI4uivNV);
EXDL_API(egl_programEnvParametersI4uivNV);
EXDL_API(egl_getProgramLocalParameterIivNV);
EXDL_API(egl_getProgramLocalParameterIuivNV);
EXDL_API(egl_getProgramEnvParameterIivNV);
EXDL_API(egl_getProgramEnvParameterIuivNV);
/* GL_NV_geometry_program4 */
EXDL_API(egl_programVertexLimitNV);
EXDL_API(egl_framebufferTextureEXT);
EXDL_API(egl_framebufferTextureLayerEXT);
EXDL_API(egl_framebufferTextureFaceEXT);
/* GL_EXT_geometry_shader4 */
EXDL_API(egl_programParameteriEXT);
/* GL_NV_vertex_program4 */
EXDL_API(egl_vertexAttribI1iEXT);
EXDL_API(egl_vertexAttribI2iEXT);
EXDL_API(egl_vertexAttribI3iEXT);
EXDL_API(egl_vertexAttribI4iEXT);
EXDL_API(egl_vertexAttribI1uiEXT);
EXDL_API(egl_vertexAttribI2uiEXT);
EXDL_API(egl_vertexAttribI3uiEXT);
EXDL_API(egl_vertexAttribI4uiEXT);
EXDL_API(egl_vertexAttribI1ivEXT);
EXDL_API(egl_vertexAttribI2ivEXT);
EXDL_API(egl_vertexAttribI3ivEXT);
EXDL_API(egl_vertexAttribI4ivEXT);
EXDL_API(egl_vertexAttribI1uivEXT);
EXDL_API(egl_vertexAttribI2uivEXT);
EXDL_API(egl_vertexAttribI3uivEXT);
EXDL_API(egl_vertexAttribI4uivEXT);
EXDL_API(egl_vertexAttribI4bvEXT);
EXDL_API(egl_vertexAttribI4svEXT);
EXDL_API(egl_vertexAttribI4ubvEXT);
EXDL_API(egl_vertexAttribI4usvEXT);
EXDL_API(egl_vertexAttribIPointerEXT);
EXDL_API(egl_getVertexAttribIivEXT);
EXDL_API(egl_getVertexAttribIuivEXT);
/* GL_EXT_gpu_shader4 */
EXDL_API(egl_getUniformuivEXT);
EXDL_API(egl_bindFragDataLocationEXT);
EXDL_API(egl_getFragDataLocationEXT);
EXDL_API(egl_uniform1uiEXT);
EXDL_API(egl_uniform2uiEXT);
EXDL_API(egl_uniform3uiEXT);
EXDL_API(egl_uniform4uiEXT);
EXDL_API(egl_uniform1uivEXT);
EXDL_API(egl_uniform2uivEXT);
EXDL_API(egl_uniform3uivEXT);
EXDL_API(egl_uniform4uivEXT);
/* GL_EXT_draw_instanced */
EXDL_API(egl_drawArraysInstancedEXT);
EXDL_API(egl_drawElementsInstancedEXT);
/* GL_EXT_packed_float */
/* GL_EXT_texture_array */
/* GL_EXT_texture_buffer_object */
EXDL_API(egl_texBufferEXT);
/* GL_EXT_texture_compression_latc */
/* GL_EXT_texture_compression_rgtc */
/* GL_EXT_texture_shared_exponent */
/* GL_NV_depth_buffer_float */
EXDL_API(egl_depthRangedNV);
EXDL_API(egl_clearDepthdNV);
EXDL_API(egl_depthBoundsdNV);
/* GL_NV_fragment_program4 */
/* GL_NV_framebuffer_multisample_coverage */
EXDL_API(egl_renderbufferStorageMultisampleCoverageNV);
/* GL_EXT_framebuffer_sRGB */
/* GL_NV_geometry_shader4 */
/* GL_NV_parameter_buffer_object */
EXDL_API(egl_programBufferParametersfvNV);
EXDL_API(egl_programBufferParametersIivNV);
EXDL_API(egl_programBufferParametersIuivNV);
/* GL_EXT_draw_buffers2 */
EXDL_API(egl_colorMaskIndexedEXT);
EXDL_API(egl_getBooleanIndexedvEXT);
EXDL_API(egl_getIntegerIndexedvEXT);
EXDL_API(egl_enableIndexedEXT);
EXDL_API(egl_disableIndexedEXT);
EXDL_API(egl_isEnabledIndexedEXT);
/* GL_NV_transform_feedback */
EXDL_API(egl_beginTransformFeedbackNV);
EXDL_API(egl_endTransformFeedbackNV);
EXDL_API(egl_transformFeedbackAttribsNV);
EXDL_API(egl_bindBufferRangeNV);
EXDL_API(egl_bindBufferOffsetNV);
EXDL_API(egl_bindBufferBaseNV);
EXDL_API(egl_transformFeedbackVaryingsNV);
EXDL_API(egl_activeVaryingNV);
EXDL_API(egl_getVaryingLocationNV);
EXDL_API(egl_getActiveVaryingNV);
EXDL_API(egl_getTransformFeedbackVaryingNV);
EXDL_API(egl_transformFeedbackStreamAttribsNV);
/* GL_EXT_bindable_uniform */
EXDL_API(egl_uniformBufferEXT);
EXDL_API(egl_getUniformBufferSizeEXT);
EXDL_API(egl_getUniformOffsetEXT);
/* GL_EXT_texture_integer */
EXDL_API(egl_texParameterIivEXT);
EXDL_API(egl_texParameterIuivEXT);
EXDL_API(egl_getTexParameterIivEXT);
EXDL_API(egl_getTexParameterIuivEXT);
EXDL_API(egl_clearColorIiEXT);
EXDL_API(egl_clearColorIuiEXT);
/* GL_GREMEDY_frame_terminator */
EXDL_API(egl_frameTerminatorGREMEDY);
/* GL_NV_conditional_render */
EXDL_API(egl_beginConditionalRenderNV);
EXDL_API(egl_endConditionalRenderNV);
/* GL_NV_present_video */
EXDL_API(egl_presentFrameKeyedNV);
EXDL_API(egl_presentFrameDualFillNV);
EXDL_API(egl_getVideoivNV);
EXDL_API(egl_getVideouivNV);
EXDL_API(egl_getVideoi64vNV);
EXDL_API(egl_getVideoui64vNV);
EXDL_API(egl_videoParameterivNV);
/* GL_EXT_transform_feedback */
EXDL_API(egl_beginTransformFeedbackEXT);
EXDL_API(egl_endTransformFeedbackEXT);
EXDL_API(egl_bindBufferRangeEXT);
EXDL_API(egl_bindBufferOffsetEXT);
EXDL_API(egl_bindBufferBaseEXT);
EXDL_API(egl_transformFeedbackVaryingsEXT);
EXDL_API(egl_getTransformFeedbackVaryingEXT);
/* GL_EXT_direct_state_access */
EXDL_API(egl_clientAttribDefaultEXT);
EXDL_API(egl_pushClientAttribDefaultEXT);
EXDL_API(egl_matrixLoadfEXT);
EXDL_API(egl_matrixLoaddEXT);
EXDL_API(egl_matrixMultfEXT);
EXDL_API(egl_matrixMultdEXT);
EXDL_API(egl_matrixLoadIdentityEXT);
EXDL_API(egl_matrixRotatefEXT);
EXDL_API(egl_matrixRotatedEXT);
EXDL_API(egl_matrixScalefEXT);
EXDL_API(egl_matrixScaledEXT);
EXDL_API(egl_matrixTranslatefEXT);
EXDL_API(egl_matrixTranslatedEXT);
EXDL_API(egl_matrixFrustumEXT);
EXDL_API(egl_matrixOrthoEXT);
EXDL_API(egl_matrixPopEXT);
EXDL_API(egl_matrixPushEXT);
EXDL_API(egl_matrixLoadTransposefEXT);
EXDL_API(egl_matrixLoadTransposedEXT);
EXDL_API(egl_matrixMultTransposefEXT);
EXDL_API(egl_matrixMultTransposedEXT);
EXDL_API(egl_textureParameterfEXT);
EXDL_API(egl_textureParameterfvEXT);
EXDL_API(egl_textureParameteriEXT);
EXDL_API(egl_textureParameterivEXT);
EXDL_API(egl_textureImage1DEXT);
EXDL_API(egl_textureImage2DEXT);
EXDL_API(egl_textureSubImage1DEXT);
EXDL_API(egl_textureSubImage2DEXT);
EXDL_API(egl_copyTextureImage1DEXT);
EXDL_API(egl_copyTextureImage2DEXT);
EXDL_API(egl_copyTextureSubImage1DEXT);
EXDL_API(egl_copyTextureSubImage2DEXT);
EXDL_API(egl_getTextureImageEXT);
EXDL_API(egl_getTextureParameterfvEXT);
EXDL_API(egl_getTextureParameterivEXT);
EXDL_API(egl_getTextureLevelParameterfvEXT);
EXDL_API(egl_getTextureLevelParameterivEXT);
EXDL_API(egl_textureImage3DEXT);
EXDL_API(egl_textureSubImage3DEXT);
EXDL_API(egl_copyTextureSubImage3DEXT);
EXDL_API(egl_multiTexParameterfEXT);
EXDL_API(egl_multiTexParameterfvEXT);
EXDL_API(egl_multiTexParameteriEXT);
EXDL_API(egl_multiTexParameterivEXT);
EXDL_API(egl_multiTexImage1DEXT);
EXDL_API(egl_multiTexImage2DEXT);
EXDL_API(egl_multiTexSubImage1DEXT);
EXDL_API(egl_multiTexSubImage2DEXT);
EXDL_API(egl_copyMultiTexImage1DEXT);
EXDL_API(egl_copyMultiTexImage2DEXT);
EXDL_API(egl_copyMultiTexSubImage1DEXT);
EXDL_API(egl_copyMultiTexSubImage2DEXT);
EXDL_API(egl_getMultiTexImageEXT);
EXDL_API(egl_getMultiTexParameterfvEXT);
EXDL_API(egl_getMultiTexParameterivEXT);
EXDL_API(egl_getMultiTexLevelParameterfvEXT);
EXDL_API(egl_getMultiTexLevelParameterivEXT);
EXDL_API(egl_multiTexImage3DEXT);
EXDL_API(egl_multiTexSubImage3DEXT);
EXDL_API(egl_copyMultiTexSubImage3DEXT);
EXDL_API(egl_bindMultiTextureEXT);
EXDL_API(egl_enableClientStateIndexedEXT);
EXDL_API(egl_disableClientStateIndexedEXT);
EXDL_API(egl_multiTexCoordPointerEXT);
EXDL_API(egl_multiTexEnvfEXT);
EXDL_API(egl_multiTexEnvfvEXT);
EXDL_API(egl_multiTexEnviEXT);
EXDL_API(egl_multiTexEnvivEXT);
EXDL_API(egl_multiTexGendEXT);
EXDL_API(egl_multiTexGendvEXT);
EXDL_API(egl_multiTexGenfEXT);
EXDL_API(egl_multiTexGenfvEXT);
EXDL_API(egl_multiTexGeniEXT);
EXDL_API(egl_multiTexGenivEXT);
EXDL_API(egl_getMultiTexEnvfvEXT);
EXDL_API(egl_getMultiTexEnvivEXT);
EXDL_API(egl_getMultiTexGendvEXT);
EXDL_API(egl_getMultiTexGenfvEXT);
EXDL_API(egl_getMultiTexGenivEXT);
EXDL_API(egl_getFloatIndexedvEXT);
EXDL_API(egl_getDoubleIndexedvEXT);
EXDL_API(egl_getPointerIndexedvEXT);
EXDL_API(egl_compressedTextureImage3DEXT);
EXDL_API(egl_compressedTextureImage2DEXT);
EXDL_API(egl_compressedTextureImage1DEXT);
EXDL_API(egl_compressedTextureSubImage3DEXT);
EXDL_API(egl_compressedTextureSubImage2DEXT);
EXDL_API(egl_compressedTextureSubImage1DEXT);
EXDL_API(egl_getCompressedTextureImageEXT);
EXDL_API(egl_compressedMultiTexImage3DEXT);
EXDL_API(egl_compressedMultiTexImage2DEXT);
EXDL_API(egl_compressedMultiTexImage1DEXT);
EXDL_API(egl_compressedMultiTexSubImage3DEXT);
EXDL_API(egl_compressedMultiTexSubImage2DEXT);
EXDL_API(egl_compressedMultiTexSubImage1DEXT);
EXDL_API(egl_getCompressedMultiTexImageEXT);
EXDL_API(egl_namedProgramStringEXT);
EXDL_API(egl_namedProgramLocalParameter4dEXT);
EXDL_API(egl_namedProgramLocalParameter4dvEXT);
EXDL_API(egl_namedProgramLocalParameter4fEXT);
EXDL_API(egl_namedProgramLocalParameter4fvEXT);
EXDL_API(egl_getNamedProgramLocalParameterdvEXT);
EXDL_API(egl_getNamedProgramLocalParameterfvEXT);
EXDL_API(egl_getNamedProgramivEXT);
EXDL_API(egl_getNamedProgramStringEXT);
EXDL_API(egl_namedProgramLocalParameters4fvEXT);
EXDL_API(egl_namedProgramLocalParameterI4iEXT);
EXDL_API(egl_namedProgramLocalParameterI4ivEXT);
EXDL_API(egl_namedProgramLocalParametersI4ivEXT);
EXDL_API(egl_namedProgramLocalParameterI4uiEXT);
EXDL_API(egl_namedProgramLocalParameterI4uivEXT);
EXDL_API(egl_namedProgramLocalParametersI4uivEXT);
EXDL_API(egl_getNamedProgramLocalParameterIivEXT);
EXDL_API(egl_getNamedProgramLocalParameterIuivEXT);
EXDL_API(egl_textureParameterIivEXT);
EXDL_API(egl_textureParameterIuivEXT);
EXDL_API(egl_getTextureParameterIivEXT);
EXDL_API(egl_getTextureParameterIuivEXT);
EXDL_API(egl_multiTexParameterIivEXT);
EXDL_API(egl_multiTexParameterIuivEXT);
EXDL_API(egl_getMultiTexParameterIivEXT);
EXDL_API(egl_getMultiTexParameterIuivEXT);
EXDL_API(egl_programUniform1fEXT);
EXDL_API(egl_programUniform2fEXT);
EXDL_API(egl_programUniform3fEXT);
EXDL_API(egl_programUniform4fEXT);
EXDL_API(egl_programUniform1iEXT);
EXDL_API(egl_programUniform2iEXT);
EXDL_API(egl_programUniform3iEXT);
EXDL_API(egl_programUniform4iEXT);
EXDL_API(egl_programUniform1fvEXT);
EXDL_API(egl_programUniform2fvEXT);
EXDL_API(egl_programUniform3fvEXT);
EXDL_API(egl_programUniform4fvEXT);
EXDL_API(egl_programUniform1ivEXT);
EXDL_API(egl_programUniform2ivEXT);
EXDL_API(egl_programUniform3ivEXT);
EXDL_API(egl_programUniform4ivEXT);
EXDL_API(egl_programUniformMatrix2fvEXT);
EXDL_API(egl_programUniformMatrix3fvEXT);
EXDL_API(egl_programUniformMatrix4fvEXT);
EXDL_API(egl_programUniformMatrix2x3fvEXT);
EXDL_API(egl_programUniformMatrix3x2fvEXT);
EXDL_API(egl_programUniformMatrix2x4fvEXT);
EXDL_API(egl_programUniformMatrix4x2fvEXT);
EXDL_API(egl_programUniformMatrix3x4fvEXT);
EXDL_API(egl_programUniformMatrix4x3fvEXT);
EXDL_API(egl_programUniform1uiEXT);
EXDL_API(egl_programUniform2uiEXT);
EXDL_API(egl_programUniform3uiEXT);
EXDL_API(egl_programUniform4uiEXT);
EXDL_API(egl_programUniform1uivEXT);
EXDL_API(egl_programUniform2uivEXT);
EXDL_API(egl_programUniform3uivEXT);
EXDL_API(egl_programUniform4uivEXT);
EXDL_API(egl_namedBufferDataEXT);
EXDL_API(egl_namedBufferSubDataEXT);
EXDL_API(egl_mapNamedBufferEXT);
EXDL_API(egl_unmapNamedBufferEXT);
EXDL_API(egl_mapNamedBufferRangeEXT);
EXDL_API(egl_flushMappedNamedBufferRangeEXT);
EXDL_API(egl_namedCopyBufferSubDataEXT);
EXDL_API(egl_getNamedBufferParameterivEXT);
EXDL_API(egl_getNamedBufferPointervEXT);
EXDL_API(egl_getNamedBufferSubDataEXT);
EXDL_API(egl_textureBufferEXT);
EXDL_API(egl_multiTexBufferEXT);
EXDL_API(egl_namedRenderbufferStorageEXT);
EXDL_API(egl_getNamedRenderbufferParameterivEXT);
EXDL_API(egl_checkNamedFramebufferStatusEXT);
EXDL_API(egl_namedFramebufferTexture1DEXT);
EXDL_API(egl_namedFramebufferTexture2DEXT);
EXDL_API(egl_namedFramebufferTexture3DEXT);
EXDL_API(egl_namedFramebufferRenderbufferEXT);
EXDL_API(egl_getNamedFramebufferAttachmentParameterivEXT);
EXDL_API(egl_generateTextureMipmapEXT);
EXDL_API(egl_generateMultiTexMipmapEXT);
EXDL_API(egl_framebufferDrawBufferEXT);
EXDL_API(egl_framebufferDrawBuffersEXT);
EXDL_API(egl_framebufferReadBufferEXT);
EXDL_API(egl_getFramebufferParameterivEXT);
EXDL_API(egl_namedRenderbufferStorageMultisampleEXT);
EXDL_API(egl_namedRenderbufferStorageMultisampleCoverageEXT);
EXDL_API(egl_namedFramebufferTextureEXT);
EXDL_API(egl_namedFramebufferTextureLayerEXT);
EXDL_API(egl_namedFramebufferTextureFaceEXT);
EXDL_API(egl_textureRenderbufferEXT);
EXDL_API(egl_multiTexRenderbufferEXT);
EXDL_API(egl_programUniform1dEXT);
EXDL_API(egl_programUniform2dEXT);
EXDL_API(egl_programUniform3dEXT);
EXDL_API(egl_programUniform4dEXT);
EXDL_API(egl_programUniform1dvEXT);
EXDL_API(egl_programUniform2dvEXT);
EXDL_API(egl_programUniform3dvEXT);
EXDL_API(egl_programUniform4dvEXT);
EXDL_API(egl_programUniformMatrix2dvEXT);
EXDL_API(egl_programUniformMatrix3dvEXT);
EXDL_API(egl_programUniformMatrix4dvEXT);
EXDL_API(egl_programUniformMatrix2x3dvEXT);
EXDL_API(egl_programUniformMatrix2x4dvEXT);
EXDL_API(egl_programUniformMatrix3x2dvEXT);
EXDL_API(egl_programUniformMatrix3x4dvEXT);
EXDL_API(egl_programUniformMatrix4x2dvEXT);
EXDL_API(egl_programUniformMatrix4x3dvEXT);
/* GL_EXT_vertex_array_bgra */
/* GL_EXT_texture_swizzle */
/* GL_NV_explicit_multisample */
EXDL_API(egl_getMultisamplefvNV);
EXDL_API(egl_sampleMaskIndexedNV);
EXDL_API(egl_texRenderbufferNV);
/* GL_NV_transform_feedback2 */
EXDL_API(egl_bindTransformFeedbackNV);
EXDL_API(egl_deleteTransformFeedbacksNV);
EXDL_API(egl_genTransformFeedbacksNV);
EXDL_API(egl_isTransformFeedbackNV);
EXDL_API(egl_pauseTransformFeedbackNV);
EXDL_API(egl_resumeTransformFeedbackNV);
EXDL_API(egl_drawTransformFeedbackNV);
/* GL_ATI_meminfo */
/* GL_AMD_performance_monitor */
EXDL_API(egl_getPerfMonitorGroupsAMD);
EXDL_API(egl_getPerfMonitorCountersAMD);
EXDL_API(egl_getPerfMonitorGroupStringAMD);
EXDL_API(egl_getPerfMonitorCounterStringAMD);
EXDL_API(egl_getPerfMonitorCounterInfoAMD);
EXDL_API(egl_genPerfMonitorsAMD);
EXDL_API(egl_deletePerfMonitorsAMD);
EXDL_API(egl_selectPerfMonitorCountersAMD);
EXDL_API(egl_beginPerfMonitorAMD);
EXDL_API(egl_endPerfMonitorAMD);
EXDL_API(egl_getPerfMonitorCounterDataAMD);
/* GL_AMD_texture_texture4 */
/* GL_AMD_vertex_shader_tesselator */
EXDL_API(egl_tessellationFactorAMD);
EXDL_API(egl_tessellationModeAMD);
/* GL_EXT_provoking_vertex */
EXDL_API(egl_provokingVertexEXT);
/* GL_EXT_texture_snorm */
/* GL_AMD_draw_buffers_blend */
EXDL_API(egl_blendFuncIndexedAMD);
EXDL_API(egl_blendFuncSeparateIndexedAMD);
EXDL_API(egl_blendEquationIndexedAMD);
EXDL_API(egl_blendEquationSeparateIndexedAMD);
/* GL_APPLE_texture_range */
EXDL_API(egl_textureRangeAPPLE);
EXDL_API(egl_getTexParameterPointervAPPLE);
/* GL_APPLE_float_pixels */
/* GL_APPLE_vertex_program_evaluators */
EXDL_API(egl_enableVertexAttribAPPLE);
EXDL_API(egl_disableVertexAttribAPPLE);
EXDL_API(egl_isVertexAttribEnabledAPPLE);
EXDL_API(egl_mapVertexAttrib1dAPPLE);
EXDL_API(egl_mapVertexAttrib1fAPPLE);
EXDL_API(egl_mapVertexAttrib2dAPPLE);
EXDL_API(egl_mapVertexAttrib2fAPPLE);
/* GL_APPLE_aux_depth_stencil */
/* GL_APPLE_object_purgeable */
EXDL_API(egl_objectPurgeableAPPLE);
EXDL_API(egl_objectUnpurgeableAPPLE);
EXDL_API(egl_getObjectParameterivAPPLE);
/* GL_APPLE_row_bytes */
/* GL_APPLE_rgb_422 */
/* GL_NV_video_capture */
EXDL_API(egl_beginVideoCaptureNV);
EXDL_API(egl_bindVideoCaptureStreamBufferNV);
EXDL_API(egl_bindVideoCaptureStreamTextureNV);
EXDL_API(egl_endVideoCaptureNV);
EXDL_API(egl_getVideoCaptureivNV);
EXDL_API(egl_getVideoCaptureStreamivNV);
EXDL_API(egl_getVideoCaptureStreamfvNV);
EXDL_API(egl_getVideoCaptureStreamdvNV);
EXDL_API(egl_videoCaptureNV);
EXDL_API(egl_videoCaptureStreamParameterivNV);
EXDL_API(egl_videoCaptureStreamParameterfvNV);
EXDL_API(egl_videoCaptureStreamParameterdvNV);
/* GL_NV_copy_image */
EXDL_API(egl_copyImageSubDataNV);
/* GL_EXT_separate_shader_objects */
EXDL_API(egl_useShaderProgramEXT);
EXDL_API(egl_activeProgramEXT);
EXDL_API(egl_createShaderProgramEXT);
/* GL_NV_parameter_buffer_object2 */
/* GL_NV_shader_buffer_load */
EXDL_API(egl_makeBufferResidentNV);
EXDL_API(egl_makeBufferNonResidentNV);
EXDL_API(egl_isBufferResidentNV);
EXDL_API(egl_namedMakeBufferResidentNV);
EXDL_API(egl_namedMakeBufferNonResidentNV);
EXDL_API(egl_isNamedBufferResidentNV);
EXDL_API(egl_getBufferParameterui64vNV);
EXDL_API(egl_getNamedBufferParameterui64vNV);
EXDL_API(egl_getIntegerui64vNV);
EXDL_API(egl_uniformui64NV);
EXDL_API(egl_uniformui64vNV);
EXDL_API(egl_getUniformui64vNV);
EXDL_API(egl_programUniformui64NV);
EXDL_API(egl_programUniformui64vNV);
/* GL_NV_vertex_buffer_unified_memory */
EXDL_API(egl_bufferAddressRangeNV);
EXDL_API(egl_vertexFormatNV);
EXDL_API(egl_normalFormatNV);
EXDL_API(egl_colorFormatNV);
EXDL_API(egl_indexFormatNV);
EXDL_API(egl_texCoordFormatNV);
EXDL_API(egl_edgeFlagFormatNV);
EXDL_API(egl_secondaryColorFormatNV);
EXDL_API(egl_fogCoordFormatNV);
EXDL_API(egl_vertexAttribFormatNV);
EXDL_API(egl_vertexAttribIFormatNV);
EXDL_API(egl_getIntegerui64i_vNV);
/* GL_NV_texture_barrier */
EXDL_API(egl_textureBarrierNV);
/* GL_AMD_shader_stencil_export */
/* GL_AMD_seamless_cubemap_per_texture */
/* GL_AMD_conservative_depth */
/* GL_EXT_shader_image_load_store */
EXDL_API(egl_bindImageTextureEXT);
EXDL_API(egl_memoryBarrierEXT);
/* GL_EXT_vertex_attrib_64bit */
EXDL_API(egl_vertexAttribL1dEXT);
EXDL_API(egl_vertexAttribL2dEXT);
EXDL_API(egl_vertexAttribL3dEXT);
EXDL_API(egl_vertexAttribL4dEXT);
EXDL_API(egl_vertexAttribL1dvEXT);
EXDL_API(egl_vertexAttribL2dvEXT);
EXDL_API(egl_vertexAttribL3dvEXT);
EXDL_API(egl_vertexAttribL4dvEXT);
EXDL_API(egl_vertexAttribLPointerEXT);
EXDL_API(egl_getVertexAttribLdvEXT);
EXDL_API(egl_vertexArrayVertexAttribLOffsetEXT);
/* GL_NV_gpu_program5 */
EXDL_API(egl_programSubroutineParametersuivNV);
EXDL_API(egl_getProgramSubroutineParameteruivNV);
/* GL_NV_gpu_shader5 */
EXDL_API(egl_uniform1i64NV);
EXDL_API(egl_uniform2i64NV);
EXDL_API(egl_uniform3i64NV);
EXDL_API(egl_uniform4i64NV);
EXDL_API(egl_uniform1i64vNV);
EXDL_API(egl_uniform2i64vNV);
EXDL_API(egl_uniform3i64vNV);
EXDL_API(egl_uniform4i64vNV);
EXDL_API(egl_uniform1ui64NV);
EXDL_API(egl_uniform2ui64NV);
EXDL_API(egl_uniform3ui64NV);
EXDL_API(egl_uniform4ui64NV);
EXDL_API(egl_uniform1ui64vNV);
EXDL_API(egl_uniform2ui64vNV);
EXDL_API(egl_uniform3ui64vNV);
EXDL_API(egl_uniform4ui64vNV);
EXDL_API(egl_getUniformi64vNV);
EXDL_API(egl_programUniform1i64NV);
EXDL_API(egl_programUniform2i64NV);
EXDL_API(egl_programUniform3i64NV);
EXDL_API(egl_programUniform4i64NV);
EXDL_API(egl_programUniform1i64vNV);
EXDL_API(egl_programUniform2i64vNV);
EXDL_API(egl_programUniform3i64vNV);
EXDL_API(egl_programUniform4i64vNV);
EXDL_API(egl_programUniform1ui64NV);
EXDL_API(egl_programUniform2ui64NV);
EXDL_API(egl_programUniform3ui64NV);
EXDL_API(egl_programUniform4ui64NV);
EXDL_API(egl_programUniform1ui64vNV);
EXDL_API(egl_programUniform2ui64vNV);
EXDL_API(egl_programUniform3ui64vNV);
EXDL_API(egl_programUniform4ui64vNV);
/* GL_NV_shader_buffer_store */
/* GL_NV_tessellation_program5 */
/* GL_NV_vertex_attrib_integer_64bit */
EXDL_API(egl_vertexAttribL1i64NV);
EXDL_API(egl_vertexAttribL2i64NV);
EXDL_API(egl_vertexAttribL3i64NV);
EXDL_API(egl_vertexAttribL4i64NV);
EXDL_API(egl_vertexAttribL1i64vNV);
EXDL_API(egl_vertexAttribL2i64vNV);
EXDL_API(egl_vertexAttribL3i64vNV);
EXDL_API(egl_vertexAttribL4i64vNV);
EXDL_API(egl_vertexAttribL1ui64NV);
EXDL_API(egl_vertexAttribL2ui64NV);
EXDL_API(egl_vertexAttribL3ui64NV);
EXDL_API(egl_vertexAttribL4ui64NV);
EXDL_API(egl_vertexAttribL1ui64vNV);
EXDL_API(egl_vertexAttribL2ui64vNV);
EXDL_API(egl_vertexAttribL3ui64vNV);
EXDL_API(egl_vertexAttribL4ui64vNV);
EXDL_API(egl_getVertexAttribLi64vNV);
EXDL_API(egl_getVertexAttribLui64vNV);
EXDL_API(egl_vertexAttribLFormatNV);
/* GL_NV_multisample_coverage */
/* GL_AMD_name_gen_delete */
EXDL_API(egl_genNamesAMD);
EXDL_API(egl_deleteNamesAMD);
EXDL_API(egl_isNameAMD);
/* GL_AMD_debug_output */
EXDL_API(egl_debugMessageEnableAMD);
EXDL_API(egl_debugMessageInsertAMD);
EXDL_API(egl_debugMessageCallbackAMD);
EXDL_API(egl_getDebugMessageLogAMD);
/* GL_NV_vdpau_interop */
EXDL_API(egl_vDPAUInitNV);
EXDL_API(egl_vDPAUFiniNV);
EXDL_API(egl_vDPAURegisterVideoSurfaceNV);
EXDL_API(egl_vDPAURegisterOutputSurfaceNV);
EXDL_API(egl_vDPAUIsSurfaceNV);
EXDL_API(egl_vDPAUUnregisterSurfaceNV);
EXDL_API(egl_vDPAUGetSurfaceivNV);
EXDL_API(egl_vDPAUSurfaceAccessNV);
EXDL_API(egl_vDPAUMapSurfacesNV);
EXDL_API(egl_vDPAUUnmapSurfacesNV);
/* GL_AMD_transform_feedback3_lines_triangles */
/* GL_AMD_depth_clamp_separate */
/* GL_EXT_texture_sRGB_decode */
/* GL_NV_texture_multisample */
EXDL_API(egl_texImage2DMultisampleCoverageNV);
EXDL_API(egl_texImage3DMultisampleCoverageNV);
EXDL_API(egl_textureImage2DMultisampleNV);
EXDL_API(egl_textureImage3DMultisampleNV);
EXDL_API(egl_textureImage2DMultisampleCoverageNV);
EXDL_API(egl_textureImage3DMultisampleCoverageNV);
/* GL_AMD_blend_minmax_factor */
/* GL_AMD_sample_positions */
EXDL_API(egl_setMultisamplefvAMD);
/* GL_EXT_x11_sync_object */
EXDL_API(egl_importSyncEXT);
/* GL_AMD_multi_draw_indirect */
EXDL_API(egl_multiDrawArraysIndirectAMD);
EXDL_API(egl_multiDrawElementsIndirectAMD);
/* GL_EXT_framebuffer_multisample_blit_scaled */
/* GL_NV_path_rendering */
EXDL_API(egl_genPathsNV);
EXDL_API(egl_deletePathsNV);
EXDL_API(egl_isPathNV);
EXDL_API(egl_pathCommandsNV);
EXDL_API(egl_pathCoordsNV);
EXDL_API(egl_pathSubCommandsNV);
EXDL_API(egl_pathSubCoordsNV);
EXDL_API(egl_pathStringNV);
EXDL_API(egl_pathGlyphsNV);
EXDL_API(egl_pathGlyphRangeNV);
EXDL_API(egl_weightPathsNV);
EXDL_API(egl_copyPathNV);
EXDL_API(egl_interpolatePathsNV);
EXDL_API(egl_transformPathNV);
EXDL_API(egl_pathParameterivNV);
EXDL_API(egl_pathParameteriNV);
EXDL_API(egl_pathParameterfvNV);
EXDL_API(egl_pathParameterfNV);
EXDL_API(egl_pathDashArrayNV);
EXDL_API(egl_pathStencilFuncNV);
EXDL_API(egl_pathStencilDepthOffsetNV);
EXDL_API(egl_stencilFillPathNV);
EXDL_API(egl_stencilStrokePathNV);
EXDL_API(egl_stencilFillPathInstancedNV);
EXDL_API(egl_stencilStrokePathInstancedNV);
EXDL_API(egl_pathCoverDepthFuncNV);
EXDL_API(egl_pathColorGenNV);
EXDL_API(egl_pathTexGenNV);
EXDL_API(egl_pathFogGenNV);
EXDL_API(egl_coverFillPathNV);
EXDL_API(egl_coverStrokePathNV);
EXDL_API(egl_coverFillPathInstancedNV);
EXDL_API(egl_coverStrokePathInstancedNV);
EXDL_API(egl_getPathParameterivNV);
EXDL_API(egl_getPathParameterfvNV);
EXDL_API(egl_getPathCommandsNV);
EXDL_API(egl_getPathCoordsNV);
EXDL_API(egl_getPathDashArrayNV);
EXDL_API(egl_getPathMetricsNV);
EXDL_API(egl_getPathMetricRangeNV);
EXDL_API(egl_getPathSpacingNV);
EXDL_API(egl_getPathColorGenivNV);
EXDL_API(egl_getPathColorGenfvNV);
EXDL_API(egl_getPathTexGenivNV);
EXDL_API(egl_getPathTexGenfvNV);
EXDL_API(egl_isPointInFillPathNV);
EXDL_API(egl_isPointInStrokePathNV);
EXDL_API(egl_getPathLengthNV);
EXDL_API(egl_pointAlongPathNV);
/* GL_AMD_pinned_memory */
/* GL_AMD_stencil_operation_extended */
EXDL_API(egl_stencilOpValueAMD);
/* GL_AMD_vertex_shader_viewport_index */
/* GL_AMD_vertex_shader_layer */
/* GL_NV_bindless_texture */
EXDL_API(egl_getTextureHandleNV);
EXDL_API(egl_getTextureSamplerHandleNV);
EXDL_API(egl_makeTextureHandleResidentNV);
EXDL_API(egl_makeTextureHandleNonResidentNV);
EXDL_API(egl_getImageHandleNV);
EXDL_API(egl_makeImageHandleResidentNV);
EXDL_API(egl_makeImageHandleNonResidentNV);
EXDL_API(egl_uniformHandleui64NV);
EXDL_API(egl_uniformHandleui64vNV);
EXDL_API(egl_programUniformHandleui64NV);
EXDL_API(egl_programUniformHandleui64vNV);
EXDL_API(egl_isTextureHandleResidentNV);
EXDL_API(egl_isImageHandleResidentNV);
/* GL_NV_shader_atomic_float */

#else // COMPILE_GLEXT

  enum { _ENUM_EXDL_GLEXT = EXDL_GLEXT_H };

#endif // COMPILE_GLEXT

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
