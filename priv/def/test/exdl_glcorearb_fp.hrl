%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_glcorearb_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_GLCOREARB).

%% GL_VERSION_1_0

  -define(glCullFace,                                     ?EXDL_GLCOREARB_HRL                             + 0).
  -define(glFrontFace,                                    ?glCullFace                                     + 1).
  -define(glHint,                                         ?glFrontFace                                    + 1).
  -define(glLineWidth,                                    ?glHint                                         + 1).
  -define(glPointSize,                                    ?glLineWidth                                    + 1).
  -define(glPolygonMode,                                  ?glPointSize                                    + 1).
  -define(glScissor,                                      ?glPolygonMode                                  + 1).
  -define(glTexParameterf,                                ?glScissor                                      + 1).
  -define(glTexParameterfv,                               ?glTexParameterf                                + 1).
  -define(glTexParameteri,                                ?glTexParameterfv                               + 1).
  -define(glTexParameteriv,                               ?glTexParameteri                                + 1).
  -define(glTexImage1D,                                   ?glTexParameteriv                               + 1).
  -define(glTexImage2D,                                   ?glTexImage1D                                   + 1).
  -define(glDrawBuffer,                                   ?glTexImage2D                                   + 1).
  -define(glClear,                                        ?glDrawBuffer                                   + 1).
  -define(glClearColor,                                   ?glClear                                        + 1).
  -define(glClearStencil,                                 ?glClearColor                                   + 1).
  -define(glClearDepth,                                   ?glClearStencil                                 + 1).
  -define(glStencilMask,                                  ?glClearDepth                                   + 1).
  -define(glColorMask,                                    ?glStencilMask                                  + 1).
  -define(glDepthMask,                                    ?glColorMask                                    + 1).
  -define(glDisable,                                      ?glDepthMask                                    + 1).
  -define(glEnable,                                       ?glDisable                                      + 1).
  -define(glFinish,                                       ?glEnable                                       + 1).
  -define(glFlush,                                        ?glFinish                                       + 1).
  -define(glBlendFunc,                                    ?glFlush                                        + 1).
  -define(glLogicOp,                                      ?glBlendFunc                                    + 1).
  -define(glStencilFunc,                                  ?glLogicOp                                      + 1).
  -define(glStencilOp,                                    ?glStencilFunc                                  + 1).
  -define(glDepthFunc,                                    ?glStencilOp                                    + 1).
  -define(glPixelStoref,                                  ?glDepthFunc                                    + 1).
  -define(glPixelStorei,                                  ?glPixelStoref                                  + 1).
  -define(glReadBuffer,                                   ?glPixelStorei                                  + 1).
  -define(glReadPixels,                                   ?glReadBuffer                                   + 1).
  -define(glGetBooleanv,                                  ?glReadPixels                                   + 1).
  -define(glGetDoublev,                                   ?glGetBooleanv                                  + 1).
  -define(glGetError,                                     ?glGetDoublev                                   + 1).
  -define(glGetFloatv,                                    ?glGetError                                     + 1).
  -define(glGetIntegerv,                                  ?glGetFloatv                                    + 1).
  -define(glGetString,                                    ?glGetIntegerv                                  + 1).
  -define(glGetTexImage,                                  ?glGetString                                    + 1).
  -define(glGetTexParameterfv,                            ?glGetTexImage                                  + 1).
  -define(glGetTexParameteriv,                            ?glGetTexParameterfv                            + 1).
  -define(glGetTexLevelParameterfv,                       ?glGetTexParameteriv                            + 1).
  -define(glGetTexLevelParameteriv,                       ?glGetTexLevelParameterfv                       + 1).
  -define(glIsEnabled,                                    ?glGetTexLevelParameteriv                       + 1).
  -define(glDepthRange,                                   ?glIsEnabled                                    + 1).
  -define(glViewport,                                     ?glDepthRange                                   + 1).

%% GL_VERSION_1_1

  -define(glDrawArrays,                                   ?glViewport                                     + 1).
  -define(glDrawElements,                                 ?glDrawArrays                                   + 1).
  -define(glGetPointerv,                                  ?glDrawElements                                 + 1).
  -define(glPolygonOffset,                                ?glGetPointerv                                  + 1).
  -define(glCopyTexImage1D,                               ?glPolygonOffset                                + 1).
  -define(glCopyTexImage2D,                               ?glCopyTexImage1D                               + 1).
  -define(glCopyTexSubImage1D,                            ?glCopyTexImage2D                               + 1).
  -define(glCopyTexSubImage2D,                            ?glCopyTexSubImage1D                            + 1).
  -define(glTexSubImage1D,                                ?glCopyTexSubImage2D                            + 1).
  -define(glTexSubImage2D,                                ?glTexSubImage1D                                + 1).
  -define(glBindTexture,                                  ?glTexSubImage2D                                + 1).
  -define(glDeleteTextures,                               ?glBindTexture                                  + 1).
  -define(glGenTextures,                                  ?glDeleteTextures                               + 1).
  -define(glIsTexture,                                    ?glGenTextures                                  + 1).

%% GL_VERSION_1_2

  -define(glBlendColor,                                   ?glIsTexture                                    + 1).
  -define(glBlendEquation,                                ?glBlendColor                                   + 1).
  -define(glDrawRangeElements,                            ?glBlendEquation                                + 1).
  -define(glTexImage3D,                                   ?glDrawRangeElements                            + 1).
  -define(glTexSubImage3D,                                ?glTexImage3D                                   + 1).
  -define(glCopyTexSubImage3D,                            ?glTexSubImage3D                                + 1).

%% GL_VERSION_1_3

  -define(glActiveTexture,                                ?glCopyTexSubImage3D                            + 1).
  -define(glSampleCoverage,                               ?glActiveTexture                                + 1).
  -define(glCompressedTexImage3D,                         ?glSampleCoverage                               + 1).
  -define(glCompressedTexImage2D,                         ?glCompressedTexImage3D                         + 1).
  -define(glCompressedTexImage1D,                         ?glCompressedTexImage2D                         + 1).
  -define(glCompressedTexSubImage3D,                      ?glCompressedTexImage1D                         + 1).
  -define(glCompressedTexSubImage2D,                      ?glCompressedTexSubImage3D                      + 1).
  -define(glCompressedTexSubImage1D,                      ?glCompressedTexSubImage2D                      + 1).
  -define(glGetCompressedTexImage,                        ?glCompressedTexSubImage1D                      + 1).

%% GL_VERSION_1_4

  -define(glBlendFuncSeparate,                            ?glGetCompressedTexImage                        + 1).
  -define(glMultiDrawArrays,                              ?glBlendFuncSeparate                            + 1).
  -define(glMultiDrawElements,                            ?glMultiDrawArrays                              + 1).
  -define(glPointParameterf,                              ?glMultiDrawElements                            + 1).
  -define(glPointParameterfv,                             ?glPointParameterf                              + 1).
  -define(glPointParameteri,                              ?glPointParameterfv                             + 1).
  -define(glPointParameteriv,                             ?glPointParameteri                              + 1).

%% GL_VERSION_1_5

  -define(glGenQueries,                                   ?glPointParameteriv                             + 1).
  -define(glDeleteQueries,                                ?glGenQueries                                   + 1).
  -define(glIsQuery,                                      ?glDeleteQueries                                + 1).
  -define(glBeginQuery,                                   ?glIsQuery                                      + 1).
  -define(glEndQuery,                                     ?glBeginQuery                                   + 1).
  -define(glGetQueryiv,                                   ?glEndQuery                                     + 1).
  -define(glGetQueryObjectiv,                             ?glGetQueryiv                                   + 1).
  -define(glGetQueryObjectuiv,                            ?glGetQueryObjectiv                             + 1).
  -define(glBindBuffer,                                   ?glGetQueryObjectuiv                            + 1).
  -define(glDeleteBuffers,                                ?glBindBuffer                                   + 1).
  -define(glGenBuffers,                                   ?glDeleteBuffers                                + 1).
  -define(glIsBuffer,                                     ?glGenBuffers                                   + 1).
  -define(glBufferData,                                   ?glIsBuffer                                     + 1).
  -define(glBufferSubData,                                ?glBufferData                                   + 1).
  -define(glGetBufferSubData,                             ?glBufferSubData                                + 1).
  -define(glMapBuffer,                                    ?glGetBufferSubData                             + 1).
  -define(glUnmapBuffer,                                  ?glMapBuffer                                    + 1).
  -define(glGetBufferParameteriv,                         ?glUnmapBuffer                                  + 1).
  -define(glGetBufferPointerv,                            ?glGetBufferParameteriv                         + 1).

%% GL_VERSION_2_0

  -define(glBlendEquationSeparate,                        ?glGetBufferPointerv                            + 1).
  -define(glDrawBuffers,                                  ?glBlendEquationSeparate                        + 1).
  -define(glStencilOpSeparate,                            ?glDrawBuffers                                  + 1).
  -define(glStencilFuncSeparate,                          ?glStencilOpSeparate                            + 1).
  -define(glStencilMaskSeparate,                          ?glStencilFuncSeparate                          + 1).
  -define(glAttachShader,                                 ?glStencilMaskSeparate                          + 1).
  -define(glBindAttribLocation,                           ?glAttachShader                                 + 1).
  -define(glCompileShader,                                ?glBindAttribLocation                           + 1).
  -define(glCreateProgram,                                ?glCompileShader                                + 1).
  -define(glCreateShader,                                 ?glCreateProgram                                + 1).
  -define(glDeleteProgram,                                ?glCreateShader                                 + 1).
  -define(glDeleteShader,                                 ?glDeleteProgram                                + 1).
  -define(glDetachShader,                                 ?glDeleteShader                                 + 1).
  -define(glDisableVertexAttribArray,                     ?glDetachShader                                 + 1).
  -define(glEnableVertexAttribArray,                      ?glDisableVertexAttribArray                     + 1).
  -define(glGetActiveAttrib,                              ?glEnableVertexAttribArray                      + 1).
  -define(glGetActiveUniform,                             ?glGetActiveAttrib                              + 1).
  -define(glGetAttachedShaders,                           ?glGetActiveUniform                             + 1).
  -define(glGetAttribLocation,                            ?glGetAttachedShaders                           + 1).
  -define(glGetProgramiv,                                 ?glGetAttribLocation                            + 1).
  -define(glGetProgramInfoLog,                            ?glGetProgramiv                                 + 1).
  -define(glGetShaderiv,                                  ?glGetProgramInfoLog                            + 1).
  -define(glGetShaderInfoLog,                             ?glGetShaderiv                                  + 1).
  -define(glGetShaderSource,                              ?glGetShaderInfoLog                             + 1).
  -define(glGetUniformLocation,                           ?glGetShaderSource                              + 1).
  -define(glGetUniformfv,                                 ?glGetUniformLocation                           + 1).
  -define(glGetUniformiv,                                 ?glGetUniformfv                                 + 1).
  -define(glGetVertexAttribdv,                            ?glGetUniformiv                                 + 1).
  -define(glGetVertexAttribfv,                            ?glGetVertexAttribdv                            + 1).
  -define(glGetVertexAttribiv,                            ?glGetVertexAttribfv                            + 1).
  -define(glGetVertexAttribPointerv,                      ?glGetVertexAttribiv                            + 1).
  -define(glIsProgram,                                    ?glGetVertexAttribPointerv                      + 1).
  -define(glIsShader,                                     ?glIsProgram                                    + 1).
  -define(glLinkProgram,                                  ?glIsShader                                     + 1).
  -define(glShaderSource,                                 ?glLinkProgram                                  + 1).
  -define(glUseProgram,                                   ?glShaderSource                                 + 1).
  -define(glUniform1f,                                    ?glUseProgram                                   + 1).
  -define(glUniform2f,                                    ?glUniform1f                                    + 1).
  -define(glUniform3f,                                    ?glUniform2f                                    + 1).
  -define(glUniform4f,                                    ?glUniform3f                                    + 1).
  -define(glUniform1i,                                    ?glUniform4f                                    + 1).
  -define(glUniform2i,                                    ?glUniform1i                                    + 1).
  -define(glUniform3i,                                    ?glUniform2i                                    + 1).
  -define(glUniform4i,                                    ?glUniform3i                                    + 1).
  -define(glUniform1fv,                                   ?glUniform4i                                    + 1).
  -define(glUniform2fv,                                   ?glUniform1fv                                   + 1).
  -define(glUniform3fv,                                   ?glUniform2fv                                   + 1).
  -define(glUniform4fv,                                   ?glUniform3fv                                   + 1).
  -define(glUniform1iv,                                   ?glUniform4fv                                   + 1).
  -define(glUniform2iv,                                   ?glUniform1iv                                   + 1).
  -define(glUniform3iv,                                   ?glUniform2iv                                   + 1).
  -define(glUniform4iv,                                   ?glUniform3iv                                   + 1).
  -define(glUniformMatrix2fv,                             ?glUniform4iv                                   + 1).
  -define(glUniformMatrix3fv,                             ?glUniformMatrix2fv                             + 1).
  -define(glUniformMatrix4fv,                             ?glUniformMatrix3fv                             + 1).
  -define(glValidateProgram,                              ?glUniformMatrix4fv                             + 1).
  -define(glVertexAttrib1d,                               ?glValidateProgram                              + 1).
  -define(glVertexAttrib1dv,                              ?glVertexAttrib1d                               + 1).
  -define(glVertexAttrib1f,                               ?glVertexAttrib1dv                              + 1).
  -define(glVertexAttrib1fv,                              ?glVertexAttrib1f                               + 1).
  -define(glVertexAttrib1s,                               ?glVertexAttrib1fv                              + 1).
  -define(glVertexAttrib1sv,                              ?glVertexAttrib1s                               + 1).
  -define(glVertexAttrib2d,                               ?glVertexAttrib1sv                              + 1).
  -define(glVertexAttrib2dv,                              ?glVertexAttrib2d                               + 1).
  -define(glVertexAttrib2f,                               ?glVertexAttrib2dv                              + 1).
  -define(glVertexAttrib2fv,                              ?glVertexAttrib2f                               + 1).
  -define(glVertexAttrib2s,                               ?glVertexAttrib2fv                              + 1).
  -define(glVertexAttrib2sv,                              ?glVertexAttrib2s                               + 1).
  -define(glVertexAttrib3d,                               ?glVertexAttrib2sv                              + 1).
  -define(glVertexAttrib3dv,                              ?glVertexAttrib3d                               + 1).
  -define(glVertexAttrib3f,                               ?glVertexAttrib3dv                              + 1).
  -define(glVertexAttrib3fv,                              ?glVertexAttrib3f                               + 1).
  -define(glVertexAttrib3s,                               ?glVertexAttrib3fv                              + 1).
  -define(glVertexAttrib3sv,                              ?glVertexAttrib3s                               + 1).
  -define(glVertexAttrib4Nbv,                             ?glVertexAttrib3sv                              + 1).
  -define(glVertexAttrib4Niv,                             ?glVertexAttrib4Nbv                             + 1).
  -define(glVertexAttrib4Nsv,                             ?glVertexAttrib4Niv                             + 1).
  -define(glVertexAttrib4Nub,                             ?glVertexAttrib4Nsv                             + 1).
  -define(glVertexAttrib4Nubv,                            ?glVertexAttrib4Nub                             + 1).
  -define(glVertexAttrib4Nuiv,                            ?glVertexAttrib4Nubv                            + 1).
  -define(glVertexAttrib4Nusv,                            ?glVertexAttrib4Nuiv                            + 1).
  -define(glVertexAttrib4bv,                              ?glVertexAttrib4Nusv                            + 1).
  -define(glVertexAttrib4d,                               ?glVertexAttrib4bv                              + 1).
  -define(glVertexAttrib4dv,                              ?glVertexAttrib4d                               + 1).
  -define(glVertexAttrib4f,                               ?glVertexAttrib4dv                              + 1).
  -define(glVertexAttrib4fv,                              ?glVertexAttrib4f                               + 1).
  -define(glVertexAttrib4iv,                              ?glVertexAttrib4fv                              + 1).
  -define(glVertexAttrib4s,                               ?glVertexAttrib4iv                              + 1).
  -define(glVertexAttrib4sv,                              ?glVertexAttrib4s                               + 1).
  -define(glVertexAttrib4ubv,                             ?glVertexAttrib4sv                              + 1).
  -define(glVertexAttrib4uiv,                             ?glVertexAttrib4ubv                             + 1).
  -define(glVertexAttrib4usv,                             ?glVertexAttrib4uiv                             + 1).
  -define(glVertexAttribPointer,                          ?glVertexAttrib4usv                             + 1).

%% GL_VERSION_2_1

  -define(glUniformMatrix2x3fv,                           ?glVertexAttribPointer                          + 1).
  -define(glUniformMatrix3x2fv,                           ?glUniformMatrix2x3fv                           + 1).
  -define(glUniformMatrix2x4fv,                           ?glUniformMatrix3x2fv                           + 1).
  -define(glUniformMatrix4x2fv,                           ?glUniformMatrix2x4fv                           + 1).
  -define(glUniformMatrix3x4fv,                           ?glUniformMatrix4x2fv                           + 1).
  -define(glUniformMatrix4x3fv,                           ?glUniformMatrix3x4fv                           + 1).

%% GL_VERSION_3_0

  -define(glColorMaski,                                   ?glUniformMatrix4x3fv                           + 1).
  -define(glGetBooleani_v,                                ?glColorMaski                                   + 1).
  -define(glGetIntegeri_v,                                ?glGetBooleani_v                                + 1).
  -define(glEnablei,                                      ?glGetIntegeri_v                                + 1).
  -define(glDisablei,                                     ?glEnablei                                      + 1).
  -define(glIsEnabledi,                                   ?glDisablei                                     + 1).
  -define(glBeginTransformFeedback,                       ?glIsEnabledi                                   + 1).
  -define(glEndTransformFeedback,                         ?glBeginTransformFeedback                       + 1).
  -define(glBindBufferRange,                              ?glEndTransformFeedback                         + 1).
  -define(glBindBufferBase,                               ?glBindBufferRange                              + 1).
  -define(glTransformFeedbackVaryings,                    ?glBindBufferBase                               + 1).
  -define(glGetTransformFeedbackVarying,                  ?glTransformFeedbackVaryings                    + 1).
  -define(glClampColor,                                   ?glGetTransformFeedbackVarying                  + 1).
  -define(glBeginConditionalRender,                       ?glClampColor                                   + 1).
  -define(glEndConditionalRender,                         ?glBeginConditionalRender                       + 1).
  -define(glVertexAttribIPointer,                         ?glEndConditionalRender                         + 1).
  -define(glGetVertexAttribIiv,                           ?glVertexAttribIPointer                         + 1).
  -define(glGetVertexAttribIuiv,                          ?glGetVertexAttribIiv                           + 1).
  -define(glVertexAttribI1i,                              ?glGetVertexAttribIuiv                          + 1).
  -define(glVertexAttribI2i,                              ?glVertexAttribI1i                              + 1).
  -define(glVertexAttribI3i,                              ?glVertexAttribI2i                              + 1).
  -define(glVertexAttribI4i,                              ?glVertexAttribI3i                              + 1).
  -define(glVertexAttribI1ui,                             ?glVertexAttribI4i                              + 1).
  -define(glVertexAttribI2ui,                             ?glVertexAttribI1ui                             + 1).
  -define(glVertexAttribI3ui,                             ?glVertexAttribI2ui                             + 1).
  -define(glVertexAttribI4ui,                             ?glVertexAttribI3ui                             + 1).
  -define(glVertexAttribI1iv,                             ?glVertexAttribI4ui                             + 1).
  -define(glVertexAttribI2iv,                             ?glVertexAttribI1iv                             + 1).
  -define(glVertexAttribI3iv,                             ?glVertexAttribI2iv                             + 1).
  -define(glVertexAttribI4iv,                             ?glVertexAttribI3iv                             + 1).
  -define(glVertexAttribI1uiv,                            ?glVertexAttribI4iv                             + 1).
  -define(glVertexAttribI2uiv,                            ?glVertexAttribI1uiv                            + 1).
  -define(glVertexAttribI3uiv,                            ?glVertexAttribI2uiv                            + 1).
  -define(glVertexAttribI4uiv,                            ?glVertexAttribI3uiv                            + 1).
  -define(glVertexAttribI4bv,                             ?glVertexAttribI4uiv                            + 1).
  -define(glVertexAttribI4sv,                             ?glVertexAttribI4bv                             + 1).
  -define(glVertexAttribI4ubv,                            ?glVertexAttribI4sv                             + 1).
  -define(glVertexAttribI4usv,                            ?glVertexAttribI4ubv                            + 1).
  -define(glGetUniformuiv,                                ?glVertexAttribI4usv                            + 1).
  -define(glBindFragDataLocation,                         ?glGetUniformuiv                                + 1).
  -define(glGetFragDataLocation,                          ?glBindFragDataLocation                         + 1).
  -define(glUniform1ui,                                   ?glGetFragDataLocation                          + 1).
  -define(glUniform2ui,                                   ?glUniform1ui                                   + 1).
  -define(glUniform3ui,                                   ?glUniform2ui                                   + 1).
  -define(glUniform4ui,                                   ?glUniform3ui                                   + 1).
  -define(glUniform1uiv,                                  ?glUniform4ui                                   + 1).
  -define(glUniform2uiv,                                  ?glUniform1uiv                                  + 1).
  -define(glUniform3uiv,                                  ?glUniform2uiv                                  + 1).
  -define(glUniform4uiv,                                  ?glUniform3uiv                                  + 1).
  -define(glTexParameterIiv,                              ?glUniform4uiv                                  + 1).
  -define(glTexParameterIuiv,                             ?glTexParameterIiv                              + 1).
  -define(glGetTexParameterIiv,                           ?glTexParameterIuiv                             + 1).
  -define(glGetTexParameterIuiv,                          ?glGetTexParameterIiv                           + 1).
  -define(glClearBufferiv,                                ?glGetTexParameterIuiv                          + 1).
  -define(glClearBufferuiv,                               ?glClearBufferiv                                + 1).
  -define(glClearBufferfv,                                ?glClearBufferuiv                               + 1).
  -define(glClearBufferfi,                                ?glClearBufferfv                                + 1).
  -define(glGetStringi,                                   ?glClearBufferfi                                + 1).

%% GL_VERSION_3_1

  -define(glDrawArraysInstanced,                          ?glGetStringi                                   + 1).
  -define(glDrawElementsInstanced,                        ?glDrawArraysInstanced                          + 1).
  -define(glTexBuffer,                                    ?glDrawElementsInstanced                        + 1).
  -define(glPrimitiveRestartIndex,                        ?glTexBuffer                                    + 1).

%% GL_VERSION_3_2

  -define(glGetInteger64i_v,                              ?glPrimitiveRestartIndex                        + 1).
  -define(glGetBufferParameteri64v,                       ?glGetInteger64i_v                              + 1).
  -define(glFramebufferTexture,                           ?glGetBufferParameteri64v                       + 1).

%% GL_VERSION_3_3

  -define(glVertexAttribDivisor,                          ?glFramebufferTexture                           + 1).

%% GL_VERSION_4_0

  -define(glMinSampleShading,                             ?glVertexAttribDivisor                          + 1).
  -define(glBlendEquationi,                               ?glMinSampleShading                             + 1).
  -define(glBlendEquationSeparatei,                       ?glBlendEquationi                               + 1).
  -define(glBlendFunci,                                   ?glBlendEquationSeparatei                       + 1).
  -define(glBlendFuncSeparatei,                           ?glBlendFunci                                   + 1).

%% GL_VERSION_4_1


%% GL_VERSION_4_2


%% GL_VERSION_4_3


%% GL_ARB_depth_buffer_float


%% GL_ARB_framebuffer_object

  -define(glIsRenderbuffer,                               ?glBlendFuncSeparatei                           + 1).
  -define(glBindRenderbuffer,                             ?glIsRenderbuffer                               + 1).
  -define(glDeleteRenderbuffers,                          ?glBindRenderbuffer                             + 1).
  -define(glGenRenderbuffers,                             ?glDeleteRenderbuffers                          + 1).
  -define(glRenderbufferStorage,                          ?glGenRenderbuffers                             + 1).
  -define(glGetRenderbufferParameteriv,                   ?glRenderbufferStorage                          + 1).
  -define(glIsFramebuffer,                                ?glGetRenderbufferParameteriv                   + 1).
  -define(glBindFramebuffer,                              ?glIsFramebuffer                                + 1).
  -define(glDeleteFramebuffers,                           ?glBindFramebuffer                              + 1).
  -define(glGenFramebuffers,                              ?glDeleteFramebuffers                           + 1).
  -define(glCheckFramebufferStatus,                       ?glGenFramebuffers                              + 1).
  -define(glFramebufferTexture1D,                         ?glCheckFramebufferStatus                       + 1).
  -define(glFramebufferTexture2D,                         ?glFramebufferTexture1D                         + 1).
  -define(glFramebufferTexture3D,                         ?glFramebufferTexture2D                         + 1).
  -define(glFramebufferRenderbuffer,                      ?glFramebufferTexture3D                         + 1).
  -define(glGetFramebufferAttachmentParameteriv,          ?glFramebufferRenderbuffer                      + 1).
  -define(glGenerateMipmap,                               ?glGetFramebufferAttachmentParameteriv          + 1).
  -define(glBlitFramebuffer,                              ?glGenerateMipmap                               + 1).
  -define(glRenderbufferStorageMultisample,               ?glBlitFramebuffer                              + 1).
  -define(glFramebufferTextureLayer,                      ?glRenderbufferStorageMultisample               + 1).

%% GL_ARB_map_buffer_range

  -define(glMapBufferRange,                               ?glFramebufferTextureLayer                      + 1).
  -define(glFlushMappedBufferRange,                       ?glMapBufferRange                               + 1).

%% GL_ARB_vertex_array_object

  -define(glBindVertexArray,                              ?glFlushMappedBufferRange                       + 1).
  -define(glDeleteVertexArrays,                           ?glBindVertexArray                              + 1).
  -define(glGenVertexArrays,                              ?glDeleteVertexArrays                           + 1).
  -define(glIsVertexArray,                                ?glGenVertexArrays                              + 1).

%% GL_ARB_uniform_buffer_object

  -define(glGetUniformIndices,                            ?glIsVertexArray                                + 1).
  -define(glGetActiveUniformsiv,                          ?glGetUniformIndices                            + 1).
  -define(glGetActiveUniformName,                         ?glGetActiveUniformsiv                          + 1).
  -define(glGetUniformBlockIndex,                         ?glGetActiveUniformName                         + 1).
  -define(glGetActiveUniformBlockiv,                      ?glGetUniformBlockIndex                         + 1).
  -define(glGetActiveUniformBlockName,                    ?glGetActiveUniformBlockiv                      + 1).
  -define(glUniformBlockBinding,                          ?glGetActiveUniformBlockName                    + 1).

%% GL_ARB_copy_buffer

  -define(glCopyBufferSubData,                            ?glUniformBlockBinding                          + 1).

%% GL_ARB_draw_elements_base_vertex

  -define(glDrawElementsBaseVertex,                       ?glCopyBufferSubData                            + 1).
  -define(glDrawRangeElementsBaseVertex,                  ?glDrawElementsBaseVertex                       + 1).
  -define(glDrawElementsInstancedBaseVertex,              ?glDrawRangeElementsBaseVertex                  + 1).
  -define(glMultiDrawElementsBaseVertex,                  ?glDrawElementsInstancedBaseVertex              + 1).

%% GL_ARB_provoking_vertex

  -define(glProvokingVertex,                              ?glMultiDrawElementsBaseVertex                  + 1).

%% GL_ARB_sync

  -define(glFenceSync,                                    ?glProvokingVertex                              + 1).
  -define(glIsSync,                                       ?glFenceSync                                    + 1).
  -define(glDeleteSync,                                   ?glIsSync                                       + 1).
  -define(glClientWaitSync,                               ?glDeleteSync                                   + 1).
  -define(glWaitSync,                                     ?glClientWaitSync                               + 1).
  -define(glGetInteger64v,                                ?glWaitSync                                     + 1).
  -define(glGetSynciv,                                    ?glGetInteger64v                                + 1).

%% GL_ARB_texture_multisample

  -define(glTexImage2DMultisample,                        ?glGetSynciv                                    + 1).
  -define(glTexImage3DMultisample,                        ?glTexImage2DMultisample                        + 1).
  -define(glGetMultisamplefv,                             ?glTexImage3DMultisample                        + 1).
  -define(glSampleMaski,                                  ?glGetMultisamplefv                             + 1).

%% GL_ARB_draw_buffers_blend

  -define(glBlendEquationiARB,                            ?glSampleMaski                                  + 1).
  -define(glBlendEquationSeparateiARB,                    ?glBlendEquationiARB                            + 1).
  -define(glBlendFunciARB,                                ?glBlendEquationSeparateiARB                    + 1).
  -define(glBlendFuncSeparateiARB,                        ?glBlendFunciARB                                + 1).

%% GL_ARB_sample_shading

  -define(glMinSampleShadingARB,                          ?glBlendFuncSeparateiARB                        + 1).

%% GL_ARB_texture_cube_map_array


%% GL_ARB_texture_gather


%% GL_ARB_texture_query_lod


%% GL_ARB_shading_language_include

  -define(glNamedStringARB,                               ?glMinSampleShadingARB                          + 1).
  -define(glDeleteNamedStringARB,                         ?glNamedStringARB                               + 1).
  -define(glCompileShaderIncludeARB,                      ?glDeleteNamedStringARB                         + 1).
  -define(glIsNamedStringARB,                             ?glCompileShaderIncludeARB                      + 1).
  -define(glGetNamedStringARB,                            ?glIsNamedStringARB                             + 1).
  -define(glGetNamedStringivARB,                          ?glGetNamedStringARB                            + 1).

%% GL_ARB_texture_compression_bptc


%% GL_ARB_blend_func_extended

  -define(glBindFragDataLocationIndexed,                  ?glGetNamedStringivARB                          + 1).
  -define(glGetFragDataIndex,                             ?glBindFragDataLocationIndexed                  + 1).

%% GL_ARB_explicit_attrib_location


%% GL_ARB_occlusion_query2


%% GL_ARB_sampler_objects

  -define(glGenSamplers,                                  ?glGetFragDataIndex                             + 1).
  -define(glDeleteSamplers,                               ?glGenSamplers                                  + 1).
  -define(glIsSampler,                                    ?glDeleteSamplers                               + 1).
  -define(glBindSampler,                                  ?glIsSampler                                    + 1).
  -define(glSamplerParameteri,                            ?glBindSampler                                  + 1).
  -define(glSamplerParameteriv,                           ?glSamplerParameteri                            + 1).
  -define(glSamplerParameterf,                            ?glSamplerParameteriv                           + 1).
  -define(glSamplerParameterfv,                           ?glSamplerParameterf                            + 1).
  -define(glSamplerParameterIiv,                          ?glSamplerParameterfv                           + 1).
  -define(glSamplerParameterIuiv,                         ?glSamplerParameterIiv                          + 1).
  -define(glGetSamplerParameteriv,                        ?glSamplerParameterIuiv                         + 1).
  -define(glGetSamplerParameterIiv,                       ?glGetSamplerParameteriv                        + 1).
  -define(glGetSamplerParameterfv,                        ?glGetSamplerParameterIiv                       + 1).
  -define(glGetSamplerParameterIuiv,                      ?glGetSamplerParameterfv                        + 1).

%% GL_ARB_texture_rgb10_a2ui


%% GL_ARB_texture_swizzle


%% GL_ARB_timer_query

  -define(glQueryCounter,                                 ?glGetSamplerParameterIuiv                      + 1).
  -define(glGetQueryObjecti64v,                           ?glQueryCounter                                 + 1).
  -define(glGetQueryObjectui64v,                          ?glGetQueryObjecti64v                           + 1).

%% GL_ARB_vertex_type_2_10_10_10_rev

  -define(glVertexP2ui,                                   ?glGetQueryObjectui64v                          + 1).
  -define(glVertexP2uiv,                                  ?glVertexP2ui                                   + 1).
  -define(glVertexP3ui,                                   ?glVertexP2uiv                                  + 1).
  -define(glVertexP3uiv,                                  ?glVertexP3ui                                   + 1).
  -define(glVertexP4ui,                                   ?glVertexP3uiv                                  + 1).
  -define(glVertexP4uiv,                                  ?glVertexP4ui                                   + 1).
  -define(glTexCoordP1ui,                                 ?glVertexP4uiv                                  + 1).
  -define(glTexCoordP1uiv,                                ?glTexCoordP1ui                                 + 1).
  -define(glTexCoordP2ui,                                 ?glTexCoordP1uiv                                + 1).
  -define(glTexCoordP2uiv,                                ?glTexCoordP2ui                                 + 1).
  -define(glTexCoordP3ui,                                 ?glTexCoordP2uiv                                + 1).
  -define(glTexCoordP3uiv,                                ?glTexCoordP3ui                                 + 1).
  -define(glTexCoordP4ui,                                 ?glTexCoordP3uiv                                + 1).
  -define(glTexCoordP4uiv,                                ?glTexCoordP4ui                                 + 1).
  -define(glMultiTexCoordP1ui,                            ?glTexCoordP4uiv                                + 1).
  -define(glMultiTexCoordP1uiv,                           ?glMultiTexCoordP1ui                            + 1).
  -define(glMultiTexCoordP2ui,                            ?glMultiTexCoordP1uiv                           + 1).
  -define(glMultiTexCoordP2uiv,                           ?glMultiTexCoordP2ui                            + 1).
  -define(glMultiTexCoordP3ui,                            ?glMultiTexCoordP2uiv                           + 1).
  -define(glMultiTexCoordP3uiv,                           ?glMultiTexCoordP3ui                            + 1).
  -define(glMultiTexCoordP4ui,                            ?glMultiTexCoordP3uiv                           + 1).
  -define(glMultiTexCoordP4uiv,                           ?glMultiTexCoordP4ui                            + 1).
  -define(glNormalP3ui,                                   ?glMultiTexCoordP4uiv                           + 1).
  -define(glNormalP3uiv,                                  ?glNormalP3ui                                   + 1).
  -define(glColorP3ui,                                    ?glNormalP3uiv                                  + 1).
  -define(glColorP3uiv,                                   ?glColorP3ui                                    + 1).
  -define(glColorP4ui,                                    ?glColorP3uiv                                   + 1).
  -define(glColorP4uiv,                                   ?glColorP4ui                                    + 1).
  -define(glSecondaryColorP3ui,                           ?glColorP4uiv                                   + 1).
  -define(glSecondaryColorP3uiv,                          ?glSecondaryColorP3ui                           + 1).
  -define(glVertexAttribP1ui,                             ?glSecondaryColorP3uiv                          + 1).
  -define(glVertexAttribP1uiv,                            ?glVertexAttribP1ui                             + 1).
  -define(glVertexAttribP2ui,                             ?glVertexAttribP1uiv                            + 1).
  -define(glVertexAttribP2uiv,                            ?glVertexAttribP2ui                             + 1).
  -define(glVertexAttribP3ui,                             ?glVertexAttribP2uiv                            + 1).
  -define(glVertexAttribP3uiv,                            ?glVertexAttribP3ui                             + 1).
  -define(glVertexAttribP4ui,                             ?glVertexAttribP3uiv                            + 1).
  -define(glVertexAttribP4uiv,                            ?glVertexAttribP4ui                             + 1).

%% GL_ARB_draw_indirect

  -define(glDrawArraysIndirect,                           ?glVertexAttribP4uiv                            + 1).
  -define(glDrawElementsIndirect,                         ?glDrawArraysIndirect                           + 1).

%% GL_ARB_gpu_shader5


%% GL_ARB_gpu_shader_fp64

  -define(glUniform1d,                                    ?glDrawElementsIndirect                         + 1).
  -define(glUniform2d,                                    ?glUniform1d                                    + 1).
  -define(glUniform3d,                                    ?glUniform2d                                    + 1).
  -define(glUniform4d,                                    ?glUniform3d                                    + 1).
  -define(glUniform1dv,                                   ?glUniform4d                                    + 1).
  -define(glUniform2dv,                                   ?glUniform1dv                                   + 1).
  -define(glUniform3dv,                                   ?glUniform2dv                                   + 1).
  -define(glUniform4dv,                                   ?glUniform3dv                                   + 1).
  -define(glUniformMatrix2dv,                             ?glUniform4dv                                   + 1).
  -define(glUniformMatrix3dv,                             ?glUniformMatrix2dv                             + 1).
  -define(glUniformMatrix4dv,                             ?glUniformMatrix3dv                             + 1).
  -define(glUniformMatrix2x3dv,                           ?glUniformMatrix4dv                             + 1).
  -define(glUniformMatrix2x4dv,                           ?glUniformMatrix2x3dv                           + 1).
  -define(glUniformMatrix3x2dv,                           ?glUniformMatrix2x4dv                           + 1).
  -define(glUniformMatrix3x4dv,                           ?glUniformMatrix3x2dv                           + 1).
  -define(glUniformMatrix4x2dv,                           ?glUniformMatrix3x4dv                           + 1).
  -define(glUniformMatrix4x3dv,                           ?glUniformMatrix4x2dv                           + 1).
  -define(glGetUniformdv,                                 ?glUniformMatrix4x3dv                           + 1).

%% GL_ARB_shader_subroutine

  -define(glGetSubroutineUniformLocation,                 ?glGetUniformdv                                 + 1).
  -define(glGetSubroutineIndex,                           ?glGetSubroutineUniformLocation                 + 1).
  -define(glGetActiveSubroutineUniformiv,                 ?glGetSubroutineIndex                           + 1).
  -define(glGetActiveSubroutineUniformName,               ?glGetActiveSubroutineUniformiv                 + 1).
  -define(glGetActiveSubroutineName,                      ?glGetActiveSubroutineUniformName               + 1).
  -define(glUniformSubroutinesuiv,                        ?glGetActiveSubroutineName                      + 1).
  -define(glGetUniformSubroutineuiv,                      ?glUniformSubroutinesuiv                        + 1).
  -define(glGetProgramStageiv,                            ?glGetUniformSubroutineuiv                      + 1).

%% GL_ARB_tessellation_shader

  -define(glPatchParameteri,                              ?glGetProgramStageiv                            + 1).
  -define(glPatchParameterfv,                             ?glPatchParameteri                              + 1).

%% GL_ARB_texture_buffer_object_rgb32


%% GL_ARB_transform_feedback2

  -define(glBindTransformFeedback,                        ?glPatchParameterfv                             + 1).
  -define(glDeleteTransformFeedbacks,                     ?glBindTransformFeedback                        + 1).
  -define(glGenTransformFeedbacks,                        ?glDeleteTransformFeedbacks                     + 1).
  -define(glIsTransformFeedback,                          ?glGenTransformFeedbacks                        + 1).
  -define(glPauseTransformFeedback,                       ?glIsTransformFeedback                          + 1).
  -define(glResumeTransformFeedback,                      ?glPauseTransformFeedback                       + 1).
  -define(glDrawTransformFeedback,                        ?glResumeTransformFeedback                      + 1).

%% GL_ARB_transform_feedback3

  -define(glDrawTransformFeedbackStream,                  ?glDrawTransformFeedback                        + 1).
  -define(glBeginQueryIndexed,                            ?glDrawTransformFeedbackStream                  + 1).
  -define(glEndQueryIndexed,                              ?glBeginQueryIndexed                            + 1).
  -define(glGetQueryIndexediv,                            ?glEndQueryIndexed                              + 1).

%% GL_ARB_ES2_compatibility

  -define(glReleaseShaderCompiler,                        ?glGetQueryIndexediv                            + 1).
  -define(glShaderBinary,                                 ?glReleaseShaderCompiler                        + 1).
  -define(glGetShaderPrecisionFormat,                     ?glShaderBinary                                 + 1).
  -define(glDepthRangef,                                  ?glGetShaderPrecisionFormat                     + 1).
  -define(glClearDepthf,                                  ?glDepthRangef                                  + 1).

%% GL_ARB_get_program_binary

  -define(glGetProgramBinary,                             ?glClearDepthf                                  + 1).
  -define(glProgramBinary,                                ?glGetProgramBinary                             + 1).
  -define(glProgramParameteri,                            ?glProgramBinary                                + 1).

%% GL_ARB_separate_shader_objects

  -define(glUseProgramStages,                             ?glProgramParameteri                            + 1).
  -define(glActiveShaderProgram,                          ?glUseProgramStages                             + 1).
  -define(glCreateShaderProgramv,                         ?glActiveShaderProgram                          + 1).
  -define(glBindProgramPipeline,                          ?glCreateShaderProgramv                         + 1).
  -define(glDeleteProgramPipelines,                       ?glBindProgramPipeline                          + 1).
  -define(glGenProgramPipelines,                          ?glDeleteProgramPipelines                       + 1).
  -define(glIsProgramPipeline,                            ?glGenProgramPipelines                          + 1).
  -define(glGetProgramPipelineiv,                         ?glIsProgramPipeline                            + 1).
  -define(glProgramUniform1i,                             ?glGetProgramPipelineiv                         + 1).
  -define(glProgramUniform1iv,                            ?glProgramUniform1i                             + 1).
  -define(glProgramUniform1f,                             ?glProgramUniform1iv                            + 1).
  -define(glProgramUniform1fv,                            ?glProgramUniform1f                             + 1).
  -define(glProgramUniform1d,                             ?glProgramUniform1fv                            + 1).
  -define(glProgramUniform1dv,                            ?glProgramUniform1d                             + 1).
  -define(glProgramUniform1ui,                            ?glProgramUniform1dv                            + 1).
  -define(glProgramUniform1uiv,                           ?glProgramUniform1ui                            + 1).
  -define(glProgramUniform2i,                             ?glProgramUniform1uiv                           + 1).
  -define(glProgramUniform2iv,                            ?glProgramUniform2i                             + 1).
  -define(glProgramUniform2f,                             ?glProgramUniform2iv                            + 1).
  -define(glProgramUniform2fv,                            ?glProgramUniform2f                             + 1).
  -define(glProgramUniform2d,                             ?glProgramUniform2fv                            + 1).
  -define(glProgramUniform2dv,                            ?glProgramUniform2d                             + 1).
  -define(glProgramUniform2ui,                            ?glProgramUniform2dv                            + 1).
  -define(glProgramUniform2uiv,                           ?glProgramUniform2ui                            + 1).
  -define(glProgramUniform3i,                             ?glProgramUniform2uiv                           + 1).
  -define(glProgramUniform3iv,                            ?glProgramUniform3i                             + 1).
  -define(glProgramUniform3f,                             ?glProgramUniform3iv                            + 1).
  -define(glProgramUniform3fv,                            ?glProgramUniform3f                             + 1).
  -define(glProgramUniform3d,                             ?glProgramUniform3fv                            + 1).
  -define(glProgramUniform3dv,                            ?glProgramUniform3d                             + 1).
  -define(glProgramUniform3ui,                            ?glProgramUniform3dv                            + 1).
  -define(glProgramUniform3uiv,                           ?glProgramUniform3ui                            + 1).
  -define(glProgramUniform4i,                             ?glProgramUniform3uiv                           + 1).
  -define(glProgramUniform4iv,                            ?glProgramUniform4i                             + 1).
  -define(glProgramUniform4f,                             ?glProgramUniform4iv                            + 1).
  -define(glProgramUniform4fv,                            ?glProgramUniform4f                             + 1).
  -define(glProgramUniform4d,                             ?glProgramUniform4fv                            + 1).
  -define(glProgramUniform4dv,                            ?glProgramUniform4d                             + 1).
  -define(glProgramUniform4ui,                            ?glProgramUniform4dv                            + 1).
  -define(glProgramUniform4uiv,                           ?glProgramUniform4ui                            + 1).
  -define(glProgramUniformMatrix2fv,                      ?glProgramUniform4uiv                           + 1).
  -define(glProgramUniformMatrix3fv,                      ?glProgramUniformMatrix2fv                      + 1).
  -define(glProgramUniformMatrix4fv,                      ?glProgramUniformMatrix3fv                      + 1).
  -define(glProgramUniformMatrix2dv,                      ?glProgramUniformMatrix4fv                      + 1).
  -define(glProgramUniformMatrix3dv,                      ?glProgramUniformMatrix2dv                      + 1).
  -define(glProgramUniformMatrix4dv,                      ?glProgramUniformMatrix3dv                      + 1).
  -define(glProgramUniformMatrix2x3fv,                    ?glProgramUniformMatrix4dv                      + 1).
  -define(glProgramUniformMatrix3x2fv,                    ?glProgramUniformMatrix2x3fv                    + 1).
  -define(glProgramUniformMatrix2x4fv,                    ?glProgramUniformMatrix3x2fv                    + 1).
  -define(glProgramUniformMatrix4x2fv,                    ?glProgramUniformMatrix2x4fv                    + 1).
  -define(glProgramUniformMatrix3x4fv,                    ?glProgramUniformMatrix4x2fv                    + 1).
  -define(glProgramUniformMatrix4x3fv,                    ?glProgramUniformMatrix3x4fv                    + 1).
  -define(glProgramUniformMatrix2x3dv,                    ?glProgramUniformMatrix4x3fv                    + 1).
  -define(glProgramUniformMatrix3x2dv,                    ?glProgramUniformMatrix2x3dv                    + 1).
  -define(glProgramUniformMatrix2x4dv,                    ?glProgramUniformMatrix3x2dv                    + 1).
  -define(glProgramUniformMatrix4x2dv,                    ?glProgramUniformMatrix2x4dv                    + 1).
  -define(glProgramUniformMatrix3x4dv,                    ?glProgramUniformMatrix4x2dv                    + 1).
  -define(glProgramUniformMatrix4x3dv,                    ?glProgramUniformMatrix3x4dv                    + 1).
  -define(glValidateProgramPipeline,                      ?glProgramUniformMatrix4x3dv                    + 1).
  -define(glGetProgramPipelineInfoLog,                    ?glValidateProgramPipeline                      + 1).

%% GL_ARB_vertex_attrib_64bit

  -define(glVertexAttribL1d,                              ?glGetProgramPipelineInfoLog                    + 1).
  -define(glVertexAttribL2d,                              ?glVertexAttribL1d                              + 1).
  -define(glVertexAttribL3d,                              ?glVertexAttribL2d                              + 1).
  -define(glVertexAttribL4d,                              ?glVertexAttribL3d                              + 1).
  -define(glVertexAttribL1dv,                             ?glVertexAttribL4d                              + 1).
  -define(glVertexAttribL2dv,                             ?glVertexAttribL1dv                             + 1).
  -define(glVertexAttribL3dv,                             ?glVertexAttribL2dv                             + 1).
  -define(glVertexAttribL4dv,                             ?glVertexAttribL3dv                             + 1).
  -define(glVertexAttribLPointer,                         ?glVertexAttribL4dv                             + 1).
  -define(glGetVertexAttribLdv,                           ?glVertexAttribLPointer                         + 1).

%% GL_ARB_viewport_array

  -define(glViewportArrayv,                               ?glGetVertexAttribLdv                           + 1).
  -define(glViewportIndexedf,                             ?glViewportArrayv                               + 1).
  -define(glViewportIndexedfv,                            ?glViewportIndexedf                             + 1).
  -define(glScissorArrayv,                                ?glViewportIndexedfv                            + 1).
  -define(glScissorIndexed,                               ?glScissorArrayv                                + 1).
  -define(glScissorIndexedv,                              ?glScissorIndexed                               + 1).
  -define(glDepthRangeArrayv,                             ?glScissorIndexedv                              + 1).
  -define(glDepthRangeIndexed,                            ?glDepthRangeArrayv                             + 1).
  -define(glGetFloati_v,                                  ?glDepthRangeIndexed                            + 1).
  -define(glGetDoublei_v,                                 ?glGetFloati_v                                  + 1).

%% GL_ARB_cl_event

  -define(glCreateSyncFromCLeventARB,                     ?glGetDoublei_v                                 + 1).

%% GL_ARB_debug_output

  -define(glDebugMessageControlARB,                       ?glCreateSyncFromCLeventARB                     + 1).
  -define(glDebugMessageInsertARB,                        ?glDebugMessageControlARB                       + 1).
  -define(glDebugMessageCallbackARB,                      ?glDebugMessageInsertARB                        + 1).
  -define(glGetDebugMessageLogARB,                        ?glDebugMessageCallbackARB                      + 1).

%% GL_ARB_robustness

  -define(glGetGraphicsResetStatusARB,                    ?glGetDebugMessageLogARB                        + 1).
  -define(glGetnTexImageARB,                              ?glGetGraphicsResetStatusARB                    + 1).
  -define(glReadnPixelsARB,                               ?glGetnTexImageARB                              + 1).
  -define(glGetnCompressedTexImageARB,                    ?glReadnPixelsARB                               + 1).
  -define(glGetnUniformfvARB,                             ?glGetnCompressedTexImageARB                    + 1).
  -define(glGetnUniformivARB,                             ?glGetnUniformfvARB                             + 1).
  -define(glGetnUniformuivARB,                            ?glGetnUniformivARB                             + 1).
  -define(glGetnUniformdvARB,                             ?glGetnUniformuivARB                            + 1).

%% GL_ARB_shader_stencil_export


%% GL_ARB_base_instance

  -define(glDrawArraysInstancedBaseInstance,              ?glGetnUniformdvARB                             + 1).
  -define(glDrawElementsInstancedBaseInstance,            ?glDrawArraysInstancedBaseInstance              + 1).
  -define(glDrawElementsInstancedBaseVertexBaseInstance,  ?glDrawElementsInstancedBaseInstance            + 1).

%% GL_ARB_shading_language_420pack


%% GL_ARB_transform_feedback_instanced

  -define(glDrawTransformFeedbackInstanced,               ?glDrawElementsInstancedBaseVertexBaseInstance  + 1).
  -define(glDrawTransformFeedbackStreamInstanced,         ?glDrawTransformFeedbackInstanced               + 1).

%% GL_ARB_compressed_texture_pixel_storage


%% GL_ARB_conservative_depth


%% GL_ARB_internalformat_query

  -define(glGetInternalformativ,                          ?glDrawTransformFeedbackStreamInstanced         + 1).

%% GL_ARB_map_buffer_alignment


%% GL_ARB_shader_atomic_counters

  -define(glGetActiveAtomicCounterBufferiv,               ?glGetInternalformativ                          + 1).

%% GL_ARB_shader_image_load_store

  -define(glBindImageTexture,                             ?glGetActiveAtomicCounterBufferiv               + 1).
  -define(glMemoryBarrier,                                ?glBindImageTexture                             + 1).

%% GL_ARB_shading_language_packing


%% GL_ARB_texture_storage

  -define(glTexStorage1D,                                 ?glMemoryBarrier                                + 1).
  -define(glTexStorage2D,                                 ?glTexStorage1D                                 + 1).
  -define(glTexStorage3D,                                 ?glTexStorage2D                                 + 1).
  -define(glTextureStorage1DEXT,                          ?glTexStorage3D                                 + 1).
  -define(glTextureStorage2DEXT,                          ?glTextureStorage1DEXT                          + 1).
  -define(glTextureStorage3DEXT,                          ?glTextureStorage2DEXT                          + 1).

%% GL_KHR_texture_compression_astc_ldr


%% GL_KHR_debug

  -define(glDebugMessageControl,                          ?glTextureStorage3DEXT                          + 1).
  -define(glDebugMessageInsert,                           ?glDebugMessageControl                          + 1).
  -define(glDebugMessageCallback,                         ?glDebugMessageInsert                           + 1).
  -define(glGetDebugMessageLog,                           ?glDebugMessageCallback                         + 1).
  -define(glPushDebugGroup,                               ?glGetDebugMessageLog                           + 1).
  -define(glPopDebugGroup,                                ?glPushDebugGroup                               + 1).
  -define(glObjectLabel,                                  ?glPopDebugGroup                                + 1).
  -define(glGetObjectLabel,                               ?glObjectLabel                                  + 1).
  -define(glObjectPtrLabel,                               ?glGetObjectLabel                               + 1).
  -define(glGetObjectPtrLabel,                            ?glObjectPtrLabel                               + 1).

%% GL_ARB_arrays_of_arrays


%% GL_ARB_clear_buffer_object

  -define(glClearBufferData,                              ?glGetObjectPtrLabel                            + 1).
  -define(glClearBufferSubData,                           ?glClearBufferData                              + 1).
  -define(glClearNamedBufferDataEXT,                      ?glClearBufferSubData                           + 1).
  -define(glClearNamedBufferSubDataEXT,                   ?glClearNamedBufferDataEXT                      + 1).

%% GL_ARB_compute_shader

  -define(glDispatchCompute,                              ?glClearNamedBufferSubDataEXT                   + 1).
  -define(glDispatchComputeIndirect,                      ?glDispatchCompute                              + 1).

%% GL_ARB_copy_image

  -define(glCopyImageSubData,                             ?glDispatchComputeIndirect                      + 1).

%% GL_ARB_texture_view

  -define(glTextureView,                                  ?glCopyImageSubData                             + 1).

%% GL_ARB_vertex_attrib_binding

  -define(glBindVertexBuffer,                             ?glTextureView                                  + 1).
  -define(glVertexAttribFormat,                           ?glBindVertexBuffer                             + 1).
  -define(glVertexAttribIFormat,                          ?glVertexAttribFormat                           + 1).
  -define(glVertexAttribLFormat,                          ?glVertexAttribIFormat                          + 1).
  -define(glVertexAttribBinding,                          ?glVertexAttribLFormat                          + 1).
  -define(glVertexBindingDivisor,                         ?glVertexAttribBinding                          + 1).
  -define(glVertexArrayBindVertexBufferEXT,               ?glVertexBindingDivisor                         + 1).
  -define(glVertexArrayVertexAttribFormatEXT,             ?glVertexArrayBindVertexBufferEXT               + 1).
  -define(glVertexArrayVertexAttribIFormatEXT,            ?glVertexArrayVertexAttribFormatEXT             + 1).
  -define(glVertexArrayVertexAttribLFormatEXT,            ?glVertexArrayVertexAttribIFormatEXT            + 1).
  -define(glVertexArrayVertexAttribBindingEXT,            ?glVertexArrayVertexAttribLFormatEXT            + 1).
  -define(glVertexArrayVertexBindingDivisorEXT,           ?glVertexArrayVertexAttribBindingEXT            + 1).

%% GL_ARB_robustness_isolation


%% GL_ARB_ES3_compatibility


%% GL_ARB_explicit_uniform_location


%% GL_ARB_fragment_layer_viewport


%% GL_ARB_framebuffer_no_attachments

  -define(glFramebufferParameteri,                        ?glVertexArrayVertexBindingDivisorEXT           + 1).
  -define(glGetFramebufferParameteriv,                    ?glFramebufferParameteri                        + 1).
  -define(glNamedFramebufferParameteriEXT,                ?glGetFramebufferParameteriv                    + 1).
  -define(glGetNamedFramebufferParameterivEXT,            ?glNamedFramebufferParameteriEXT                + 1).

%% GL_ARB_internalformat_query2

  -define(glGetInternalformati64v,                        ?glGetNamedFramebufferParameterivEXT            + 1).

%% GL_ARB_invalidate_subdata

  -define(glInvalidateTexSubImage,                        ?glGetInternalformati64v                        + 1).
  -define(glInvalidateTexImage,                           ?glInvalidateTexSubImage                        + 1).
  -define(glInvalidateBufferSubData,                      ?glInvalidateTexImage                           + 1).
  -define(glInvalidateBufferData,                         ?glInvalidateBufferSubData                      + 1).
  -define(glInvalidateFramebuffer,                        ?glInvalidateBufferData                         + 1).
  -define(glInvalidateSubFramebuffer,                     ?glInvalidateFramebuffer                        + 1).

%% GL_ARB_multi_draw_indirect

  -define(glMultiDrawArraysIndirect,                      ?glInvalidateSubFramebuffer                     + 1).
  -define(glMultiDrawElementsIndirect,                    ?glMultiDrawArraysIndirect                      + 1).

%% GL_ARB_program_interface_query

  -define(glGetProgramInterfaceiv,                        ?glMultiDrawElementsIndirect                    + 1).
  -define(glGetProgramResourceIndex,                      ?glGetProgramInterfaceiv                        + 1).
  -define(glGetProgramResourceName,                       ?glGetProgramResourceIndex                      + 1).
  -define(glGetProgramResourceiv,                         ?glGetProgramResourceName                       + 1).
  -define(glGetProgramResourceLocation,                   ?glGetProgramResourceiv                         + 1).
  -define(glGetProgramResourceLocationIndex,              ?glGetProgramResourceLocation                   + 1).

%% GL_ARB_robust_buffer_access_behavior


%% GL_ARB_shader_image_size


%% GL_ARB_shader_storage_buffer_object

  -define(glShaderStorageBlockBinding,                    ?glGetProgramResourceLocationIndex              + 1).

%% GL_ARB_stencil_texturing


%% GL_ARB_texture_buffer_range

  -define(glTexBufferRange,                               ?glShaderStorageBlockBinding                    + 1).
  -define(glTextureBufferRangeEXT,                        ?glTexBufferRange                               + 1).

%% GL_ARB_texture_query_levels


%% GL_ARB_texture_storage_multisample

  -define(glTexStorage2DMultisample,                      ?glTextureBufferRangeEXT                        + 1).
  -define(glTexStorage3DMultisample,                      ?glTexStorage2DMultisample                      + 1).
  -define(glTextureStorage2DMultisampleEXT,               ?glTexStorage3DMultisample                      + 1).
  -define(glTextureStorage3DMultisampleEXT,               ?glTextureStorage2DMultisampleEXT               + 1).

  %% EXDL_GLCOREARB C SRC ENUM CHECK
  -define(_ENUM_EXDL_GLCOREARB,                           ?glTextureStorage3DMultisampleEXT               + 1).

-else. % COMPILE_GLCOREARB

  -define(_ENUM_EXDL_GLCOREARB,                           ?EXDL_GLCOREARB_HRL).

-endif. % COMPILE_GLCOREARB
