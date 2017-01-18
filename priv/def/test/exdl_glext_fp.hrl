%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_glext_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_GLEXT).

%% GL_VERSION_1_2

  -define(glBlendColor,                                              ?EXDL_GLEXT_HRL                                            + 0).
  -define(glBlendEquation,                                           ?glBlendColor                                              + 1).
  -define(glDrawRangeElements,                                       ?glBlendEquation                                           + 1).
  -define(glTexImage3D,                                              ?glDrawRangeElements                                       + 1).
  -define(glTexSubImage3D,                                           ?glTexImage3D                                              + 1).
  -define(glCopyTexSubImage3D,                                       ?glTexSubImage3D                                           + 1).
  -define(glColorTable,                                              ?glCopyTexSubImage3D                                       + 1).
  -define(glColorTableParameterfv,                                   ?glColorTable                                              + 1).
  -define(glColorTableParameteriv,                                   ?glColorTableParameterfv                                   + 1).
  -define(glCopyColorTable,                                          ?glColorTableParameteriv                                   + 1).
  -define(glGetColorTable,                                           ?glCopyColorTable                                          + 1).
  -define(glGetColorTableParameterfv,                                ?glGetColorTable                                           + 1).
  -define(glGetColorTableParameteriv,                                ?glGetColorTableParameterfv                                + 1).
  -define(glColorSubTable,                                           ?glGetColorTableParameteriv                                + 1).
  -define(glCopyColorSubTable,                                       ?glColorSubTable                                           + 1).
  -define(glConvolutionFilter1D,                                     ?glCopyColorSubTable                                       + 1).
  -define(glConvolutionFilter2D,                                     ?glConvolutionFilter1D                                     + 1).
  -define(glConvolutionParameterf,                                   ?glConvolutionFilter2D                                     + 1).
  -define(glConvolutionParameterfv,                                  ?glConvolutionParameterf                                   + 1).
  -define(glConvolutionParameteri,                                   ?glConvolutionParameterfv                                  + 1).
  -define(glConvolutionParameteriv,                                  ?glConvolutionParameteri                                   + 1).
  -define(glCopyConvolutionFilter1D,                                 ?glConvolutionParameteriv                                  + 1).
  -define(glCopyConvolutionFilter2D,                                 ?glCopyConvolutionFilter1D                                 + 1).
  -define(glGetConvolutionFilter,                                    ?glCopyConvolutionFilter2D                                 + 1).
  -define(glGetConvolutionParameterfv,                               ?glGetConvolutionFilter                                    + 1).
  -define(glGetConvolutionParameteriv,                               ?glGetConvolutionParameterfv                               + 1).
  -define(glGetSeparableFilter,                                      ?glGetConvolutionParameteriv                               + 1).
  -define(glSeparableFilter2D,                                       ?glGetSeparableFilter                                      + 1).
  -define(glGetHistogram,                                            ?glSeparableFilter2D                                       + 1).
  -define(glGetHistogramParameterfv,                                 ?glGetHistogram                                            + 1).
  -define(glGetHistogramParameteriv,                                 ?glGetHistogramParameterfv                                 + 1).
  -define(glGetMinmax,                                               ?glGetHistogramParameteriv                                 + 1).
  -define(glGetMinmaxParameterfv,                                    ?glGetMinmax                                               + 1).
  -define(glGetMinmaxParameteriv,                                    ?glGetMinmaxParameterfv                                    + 1).
  -define(glHistogram,                                               ?glGetMinmaxParameteriv                                    + 1).
  -define(glMinmax,                                                  ?glHistogram                                               + 1).
  -define(glResetHistogram,                                          ?glMinmax                                                  + 1).
  -define(glResetMinmax,                                             ?glResetHistogram                                          + 1).

%% GL_VERSION_1_3

  -define(glActiveTexture,                                           ?glResetMinmax                                             + 1).
  -define(glSampleCoverage,                                          ?glActiveTexture                                           + 1).
  -define(glCompressedTexImage3D,                                    ?glSampleCoverage                                          + 1).
  -define(glCompressedTexImage2D,                                    ?glCompressedTexImage3D                                    + 1).
  -define(glCompressedTexImage1D,                                    ?glCompressedTexImage2D                                    + 1).
  -define(glCompressedTexSubImage3D,                                 ?glCompressedTexImage1D                                    + 1).
  -define(glCompressedTexSubImage2D,                                 ?glCompressedTexSubImage3D                                 + 1).
  -define(glCompressedTexSubImage1D,                                 ?glCompressedTexSubImage2D                                 + 1).
  -define(glGetCompressedTexImage,                                   ?glCompressedTexSubImage1D                                 + 1).
  -define(glClientActiveTexture,                                     ?glGetCompressedTexImage                                   + 1).
  -define(glMultiTexCoord1d,                                         ?glClientActiveTexture                                     + 1).
  -define(glMultiTexCoord1dv,                                        ?glMultiTexCoord1d                                         + 1).
  -define(glMultiTexCoord1f,                                         ?glMultiTexCoord1dv                                        + 1).
  -define(glMultiTexCoord1fv,                                        ?glMultiTexCoord1f                                         + 1).
  -define(glMultiTexCoord1i,                                         ?glMultiTexCoord1fv                                        + 1).
  -define(glMultiTexCoord1iv,                                        ?glMultiTexCoord1i                                         + 1).
  -define(glMultiTexCoord1s,                                         ?glMultiTexCoord1iv                                        + 1).
  -define(glMultiTexCoord1sv,                                        ?glMultiTexCoord1s                                         + 1).
  -define(glMultiTexCoord2d,                                         ?glMultiTexCoord1sv                                        + 1).
  -define(glMultiTexCoord2dv,                                        ?glMultiTexCoord2d                                         + 1).
  -define(glMultiTexCoord2f,                                         ?glMultiTexCoord2dv                                        + 1).
  -define(glMultiTexCoord2fv,                                        ?glMultiTexCoord2f                                         + 1).
  -define(glMultiTexCoord2i,                                         ?glMultiTexCoord2fv                                        + 1).
  -define(glMultiTexCoord2iv,                                        ?glMultiTexCoord2i                                         + 1).
  -define(glMultiTexCoord2s,                                         ?glMultiTexCoord2iv                                        + 1).
  -define(glMultiTexCoord2sv,                                        ?glMultiTexCoord2s                                         + 1).
  -define(glMultiTexCoord3d,                                         ?glMultiTexCoord2sv                                        + 1).
  -define(glMultiTexCoord3dv,                                        ?glMultiTexCoord3d                                         + 1).
  -define(glMultiTexCoord3f,                                         ?glMultiTexCoord3dv                                        + 1).
  -define(glMultiTexCoord3fv,                                        ?glMultiTexCoord3f                                         + 1).
  -define(glMultiTexCoord3i,                                         ?glMultiTexCoord3fv                                        + 1).
  -define(glMultiTexCoord3iv,                                        ?glMultiTexCoord3i                                         + 1).
  -define(glMultiTexCoord3s,                                         ?glMultiTexCoord3iv                                        + 1).
  -define(glMultiTexCoord3sv,                                        ?glMultiTexCoord3s                                         + 1).
  -define(glMultiTexCoord4d,                                         ?glMultiTexCoord3sv                                        + 1).
  -define(glMultiTexCoord4dv,                                        ?glMultiTexCoord4d                                         + 1).
  -define(glMultiTexCoord4f,                                         ?glMultiTexCoord4dv                                        + 1).
  -define(glMultiTexCoord4fv,                                        ?glMultiTexCoord4f                                         + 1).
  -define(glMultiTexCoord4i,                                         ?glMultiTexCoord4fv                                        + 1).
  -define(glMultiTexCoord4iv,                                        ?glMultiTexCoord4i                                         + 1).
  -define(glMultiTexCoord4s,                                         ?glMultiTexCoord4iv                                        + 1).
  -define(glMultiTexCoord4sv,                                        ?glMultiTexCoord4s                                         + 1).
  -define(glLoadTransposeMatrixf,                                    ?glMultiTexCoord4sv                                        + 1).
  -define(glLoadTransposeMatrixd,                                    ?glLoadTransposeMatrixf                                    + 1).
  -define(glMultTransposeMatrixf,                                    ?glLoadTransposeMatrixd                                    + 1).
  -define(glMultTransposeMatrixd,                                    ?glMultTransposeMatrixf                                    + 1).

%% GL_VERSION_1_4

  -define(glBlendFuncSeparate,                                       ?glMultTransposeMatrixd                                    + 1).
  -define(glMultiDrawArrays,                                         ?glBlendFuncSeparate                                       + 1).
  -define(glMultiDrawElements,                                       ?glMultiDrawArrays                                         + 1).
  -define(glPointParameterf,                                         ?glMultiDrawElements                                       + 1).
  -define(glPointParameterfv,                                        ?glPointParameterf                                         + 1).
  -define(glPointParameteri,                                         ?glPointParameterfv                                        + 1).
  -define(glPointParameteriv,                                        ?glPointParameteri                                         + 1).
  -define(glFogCoordf,                                               ?glPointParameteriv                                        + 1).
  -define(glFogCoordfv,                                              ?glFogCoordf                                               + 1).
  -define(glFogCoordd,                                               ?glFogCoordfv                                              + 1).
  -define(glFogCoorddv,                                              ?glFogCoordd                                               + 1).
  -define(glFogCoordPointer,                                         ?glFogCoorddv                                              + 1).
  -define(glSecondaryColor3b,                                        ?glFogCoordPointer                                         + 1).
  -define(glSecondaryColor3bv,                                       ?glSecondaryColor3b                                        + 1).
  -define(glSecondaryColor3d,                                        ?glSecondaryColor3bv                                       + 1).
  -define(glSecondaryColor3dv,                                       ?glSecondaryColor3d                                        + 1).
  -define(glSecondaryColor3f,                                        ?glSecondaryColor3dv                                       + 1).
  -define(glSecondaryColor3fv,                                       ?glSecondaryColor3f                                        + 1).
  -define(glSecondaryColor3i,                                        ?glSecondaryColor3fv                                       + 1).
  -define(glSecondaryColor3iv,                                       ?glSecondaryColor3i                                        + 1).
  -define(glSecondaryColor3s,                                        ?glSecondaryColor3iv                                       + 1).
  -define(glSecondaryColor3sv,                                       ?glSecondaryColor3s                                        + 1).
  -define(glSecondaryColor3ub,                                       ?glSecondaryColor3sv                                       + 1).
  -define(glSecondaryColor3ubv,                                      ?glSecondaryColor3ub                                       + 1).
  -define(glSecondaryColor3ui,                                       ?glSecondaryColor3ubv                                      + 1).
  -define(glSecondaryColor3uiv,                                      ?glSecondaryColor3ui                                       + 1).
  -define(glSecondaryColor3us,                                       ?glSecondaryColor3uiv                                      + 1).
  -define(glSecondaryColor3usv,                                      ?glSecondaryColor3us                                       + 1).
  -define(glSecondaryColorPointer,                                   ?glSecondaryColor3usv                                      + 1).
  -define(glWindowPos2d,                                             ?glSecondaryColorPointer                                   + 1).
  -define(glWindowPos2dv,                                            ?glWindowPos2d                                             + 1).
  -define(glWindowPos2f,                                             ?glWindowPos2dv                                            + 1).
  -define(glWindowPos2fv,                                            ?glWindowPos2f                                             + 1).
  -define(glWindowPos2i,                                             ?glWindowPos2fv                                            + 1).
  -define(glWindowPos2iv,                                            ?glWindowPos2i                                             + 1).
  -define(glWindowPos2s,                                             ?glWindowPos2iv                                            + 1).
  -define(glWindowPos2sv,                                            ?glWindowPos2s                                             + 1).
  -define(glWindowPos3d,                                             ?glWindowPos2sv                                            + 1).
  -define(glWindowPos3dv,                                            ?glWindowPos3d                                             + 1).
  -define(glWindowPos3f,                                             ?glWindowPos3dv                                            + 1).
  -define(glWindowPos3fv,                                            ?glWindowPos3f                                             + 1).
  -define(glWindowPos3i,                                             ?glWindowPos3fv                                            + 1).
  -define(glWindowPos3iv,                                            ?glWindowPos3i                                             + 1).
  -define(glWindowPos3s,                                             ?glWindowPos3iv                                            + 1).
  -define(glWindowPos3sv,                                            ?glWindowPos3s                                             + 1).

%% GL_VERSION_1_5

  -define(glGenQueries,                                              ?glWindowPos3sv                                            + 1).
  -define(glDeleteQueries,                                           ?glGenQueries                                              + 1).
  -define(glIsQuery,                                                 ?glDeleteQueries                                           + 1).
  -define(glBeginQuery,                                              ?glIsQuery                                                 + 1).
  -define(glEndQuery,                                                ?glBeginQuery                                              + 1).
  -define(glGetQueryiv,                                              ?glEndQuery                                                + 1).
  -define(glGetQueryObjectiv,                                        ?glGetQueryiv                                              + 1).
  -define(glGetQueryObjectuiv,                                       ?glGetQueryObjectiv                                        + 1).
  -define(glBindBuffer,                                              ?glGetQueryObjectuiv                                       + 1).
  -define(glDeleteBuffers,                                           ?glBindBuffer                                              + 1).
  -define(glGenBuffers,                                              ?glDeleteBuffers                                           + 1).
  -define(glIsBuffer,                                                ?glGenBuffers                                              + 1).
  -define(glBufferData,                                              ?glIsBuffer                                                + 1).
  -define(glBufferSubData,                                           ?glBufferData                                              + 1).
  -define(glGetBufferSubData,                                        ?glBufferSubData                                           + 1).
  -define(glMapBuffer,                                               ?glGetBufferSubData                                        + 1).
  -define(glUnmapBuffer,                                             ?glMapBuffer                                               + 1).
  -define(glGetBufferParameteriv,                                    ?glUnmapBuffer                                             + 1).
  -define(glGetBufferPointerv,                                       ?glGetBufferParameteriv                                    + 1).

%% GL_VERSION_2_0

  -define(glBlendEquationSeparate,                                   ?glGetBufferPointerv                                       + 1).
  -define(glDrawBuffers,                                             ?glBlendEquationSeparate                                   + 1).
  -define(glStencilOpSeparate,                                       ?glDrawBuffers                                             + 1).
  -define(glStencilFuncSeparate,                                     ?glStencilOpSeparate                                       + 1).
  -define(glStencilMaskSeparate,                                     ?glStencilFuncSeparate                                     + 1).
  -define(glAttachShader,                                            ?glStencilMaskSeparate                                     + 1).
  -define(glBindAttribLocation,                                      ?glAttachShader                                            + 1).
  -define(glCompileShader,                                           ?glBindAttribLocation                                      + 1).
  -define(glCreateProgram,                                           ?glCompileShader                                           + 1).
  -define(glCreateShader,                                            ?glCreateProgram                                           + 1).
  -define(glDeleteProgram,                                           ?glCreateShader                                            + 1).
  -define(glDeleteShader,                                            ?glDeleteProgram                                           + 1).
  -define(glDetachShader,                                            ?glDeleteShader                                            + 1).
  -define(glDisableVertexAttribArray,                                ?glDetachShader                                            + 1).
  -define(glEnableVertexAttribArray,                                 ?glDisableVertexAttribArray                                + 1).
  -define(glGetActiveAttrib,                                         ?glEnableVertexAttribArray                                 + 1).
  -define(glGetActiveUniform,                                        ?glGetActiveAttrib                                         + 1).
  -define(glGetAttachedShaders,                                      ?glGetActiveUniform                                        + 1).
  -define(glGetAttribLocation,                                       ?glGetAttachedShaders                                      + 1).
  -define(glGetProgramiv,                                            ?glGetAttribLocation                                       + 1).
  -define(glGetProgramInfoLog,                                       ?glGetProgramiv                                            + 1).
  -define(glGetShaderiv,                                             ?glGetProgramInfoLog                                       + 1).
  -define(glGetShaderInfoLog,                                        ?glGetShaderiv                                             + 1).
  -define(glGetShaderSource,                                         ?glGetShaderInfoLog                                        + 1).
  -define(glGetUniformLocation,                                      ?glGetShaderSource                                         + 1).
  -define(glGetUniformfv,                                            ?glGetUniformLocation                                      + 1).
  -define(glGetUniformiv,                                            ?glGetUniformfv                                            + 1).
  -define(glGetVertexAttribdv,                                       ?glGetUniformiv                                            + 1).
  -define(glGetVertexAttribfv,                                       ?glGetVertexAttribdv                                       + 1).
  -define(glGetVertexAttribiv,                                       ?glGetVertexAttribfv                                       + 1).
  -define(glGetVertexAttribPointerv,                                 ?glGetVertexAttribiv                                       + 1).
  -define(glIsProgram,                                               ?glGetVertexAttribPointerv                                 + 1).
  -define(glIsShader,                                                ?glIsProgram                                               + 1).
  -define(glLinkProgram,                                             ?glIsShader                                                + 1).
  -define(glShaderSource,                                            ?glLinkProgram                                             + 1).
  -define(glUseProgram,                                              ?glShaderSource                                            + 1).
  -define(glUniform1f,                                               ?glUseProgram                                              + 1).
  -define(glUniform2f,                                               ?glUniform1f                                               + 1).
  -define(glUniform3f,                                               ?glUniform2f                                               + 1).
  -define(glUniform4f,                                               ?glUniform3f                                               + 1).
  -define(glUniform1i,                                               ?glUniform4f                                               + 1).
  -define(glUniform2i,                                               ?glUniform1i                                               + 1).
  -define(glUniform3i,                                               ?glUniform2i                                               + 1).
  -define(glUniform4i,                                               ?glUniform3i                                               + 1).
  -define(glUniform1fv,                                              ?glUniform4i                                               + 1).
  -define(glUniform2fv,                                              ?glUniform1fv                                              + 1).
  -define(glUniform3fv,                                              ?glUniform2fv                                              + 1).
  -define(glUniform4fv,                                              ?glUniform3fv                                              + 1).
  -define(glUniform1iv,                                              ?glUniform4fv                                              + 1).
  -define(glUniform2iv,                                              ?glUniform1iv                                              + 1).
  -define(glUniform3iv,                                              ?glUniform2iv                                              + 1).
  -define(glUniform4iv,                                              ?glUniform3iv                                              + 1).
  -define(glUniformMatrix2fv,                                        ?glUniform4iv                                              + 1).
  -define(glUniformMatrix3fv,                                        ?glUniformMatrix2fv                                        + 1).
  -define(glUniformMatrix4fv,                                        ?glUniformMatrix3fv                                        + 1).
  -define(glValidateProgram,                                         ?glUniformMatrix4fv                                        + 1).
  -define(glVertexAttrib1d,                                          ?glValidateProgram                                         + 1).
  -define(glVertexAttrib1dv,                                         ?glVertexAttrib1d                                          + 1).
  -define(glVertexAttrib1f,                                          ?glVertexAttrib1dv                                         + 1).
  -define(glVertexAttrib1fv,                                         ?glVertexAttrib1f                                          + 1).
  -define(glVertexAttrib1s,                                          ?glVertexAttrib1fv                                         + 1).
  -define(glVertexAttrib1sv,                                         ?glVertexAttrib1s                                          + 1).
  -define(glVertexAttrib2d,                                          ?glVertexAttrib1sv                                         + 1).
  -define(glVertexAttrib2dv,                                         ?glVertexAttrib2d                                          + 1).
  -define(glVertexAttrib2f,                                          ?glVertexAttrib2dv                                         + 1).
  -define(glVertexAttrib2fv,                                         ?glVertexAttrib2f                                          + 1).
  -define(glVertexAttrib2s,                                          ?glVertexAttrib2fv                                         + 1).
  -define(glVertexAttrib2sv,                                         ?glVertexAttrib2s                                          + 1).
  -define(glVertexAttrib3d,                                          ?glVertexAttrib2sv                                         + 1).
  -define(glVertexAttrib3dv,                                         ?glVertexAttrib3d                                          + 1).
  -define(glVertexAttrib3f,                                          ?glVertexAttrib3dv                                         + 1).
  -define(glVertexAttrib3fv,                                         ?glVertexAttrib3f                                          + 1).
  -define(glVertexAttrib3s,                                          ?glVertexAttrib3fv                                         + 1).
  -define(glVertexAttrib3sv,                                         ?glVertexAttrib3s                                          + 1).
  -define(glVertexAttrib4Nbv,                                        ?glVertexAttrib3sv                                         + 1).
  -define(glVertexAttrib4Niv,                                        ?glVertexAttrib4Nbv                                        + 1).
  -define(glVertexAttrib4Nsv,                                        ?glVertexAttrib4Niv                                        + 1).
  -define(glVertexAttrib4Nub,                                        ?glVertexAttrib4Nsv                                        + 1).
  -define(glVertexAttrib4Nubv,                                       ?glVertexAttrib4Nub                                        + 1).
  -define(glVertexAttrib4Nuiv,                                       ?glVertexAttrib4Nubv                                       + 1).
  -define(glVertexAttrib4Nusv,                                       ?glVertexAttrib4Nuiv                                       + 1).
  -define(glVertexAttrib4bv,                                         ?glVertexAttrib4Nusv                                       + 1).
  -define(glVertexAttrib4d,                                          ?glVertexAttrib4bv                                         + 1).
  -define(glVertexAttrib4dv,                                         ?glVertexAttrib4d                                          + 1).
  -define(glVertexAttrib4f,                                          ?glVertexAttrib4dv                                         + 1).
  -define(glVertexAttrib4fv,                                         ?glVertexAttrib4f                                          + 1).
  -define(glVertexAttrib4iv,                                         ?glVertexAttrib4fv                                         + 1).
  -define(glVertexAttrib4s,                                          ?glVertexAttrib4iv                                         + 1).
  -define(glVertexAttrib4sv,                                         ?glVertexAttrib4s                                          + 1).
  -define(glVertexAttrib4ubv,                                        ?glVertexAttrib4sv                                         + 1).
  -define(glVertexAttrib4uiv,                                        ?glVertexAttrib4ubv                                        + 1).
  -define(glVertexAttrib4usv,                                        ?glVertexAttrib4uiv                                        + 1).
  -define(glVertexAttribPointer,                                     ?glVertexAttrib4usv                                        + 1).

%% GL_VERSION_2_1

  -define(glUniformMatrix2x3fv,                                      ?glVertexAttribPointer                                     + 1).
  -define(glUniformMatrix3x2fv,                                      ?glUniformMatrix2x3fv                                      + 1).
  -define(glUniformMatrix2x4fv,                                      ?glUniformMatrix3x2fv                                      + 1).
  -define(glUniformMatrix4x2fv,                                      ?glUniformMatrix2x4fv                                      + 1).
  -define(glUniformMatrix3x4fv,                                      ?glUniformMatrix4x2fv                                      + 1).
  -define(glUniformMatrix4x3fv,                                      ?glUniformMatrix3x4fv                                      + 1).

%% GL_VERSION_3_0

  -define(glColorMaski,                                              ?glUniformMatrix4x3fv                                      + 1).
  -define(glGetBooleani_v,                                           ?glColorMaski                                              + 1).
  -define(glGetIntegeri_v,                                           ?glGetBooleani_v                                           + 1).
  -define(glEnablei,                                                 ?glGetIntegeri_v                                           + 1).
  -define(glDisablei,                                                ?glEnablei                                                 + 1).
  -define(glIsEnabledi,                                              ?glDisablei                                                + 1).
  -define(glBeginTransformFeedback,                                  ?glIsEnabledi                                              + 1).
  -define(glEndTransformFeedback,                                    ?glBeginTransformFeedback                                  + 1).
  -define(glBindBufferRange,                                         ?glEndTransformFeedback                                    + 1).
  -define(glBindBufferBase,                                          ?glBindBufferRange                                         + 1).
  -define(glTransformFeedbackVaryings,                               ?glBindBufferBase                                          + 1).
  -define(glGetTransformFeedbackVarying,                             ?glTransformFeedbackVaryings                               + 1).
  -define(glClampColor,                                              ?glGetTransformFeedbackVarying                             + 1).
  -define(glBeginConditionalRender,                                  ?glClampColor                                              + 1).
  -define(glEndConditionalRender,                                    ?glBeginConditionalRender                                  + 1).
  -define(glVertexAttribIPointer,                                    ?glEndConditionalRender                                    + 1).
  -define(glGetVertexAttribIiv,                                      ?glVertexAttribIPointer                                    + 1).
  -define(glGetVertexAttribIuiv,                                     ?glGetVertexAttribIiv                                      + 1).
  -define(glVertexAttribI1i,                                         ?glGetVertexAttribIuiv                                     + 1).
  -define(glVertexAttribI2i,                                         ?glVertexAttribI1i                                         + 1).
  -define(glVertexAttribI3i,                                         ?glVertexAttribI2i                                         + 1).
  -define(glVertexAttribI4i,                                         ?glVertexAttribI3i                                         + 1).
  -define(glVertexAttribI1ui,                                        ?glVertexAttribI4i                                         + 1).
  -define(glVertexAttribI2ui,                                        ?glVertexAttribI1ui                                        + 1).
  -define(glVertexAttribI3ui,                                        ?glVertexAttribI2ui                                        + 1).
  -define(glVertexAttribI4ui,                                        ?glVertexAttribI3ui                                        + 1).
  -define(glVertexAttribI1iv,                                        ?glVertexAttribI4ui                                        + 1).
  -define(glVertexAttribI2iv,                                        ?glVertexAttribI1iv                                        + 1).
  -define(glVertexAttribI3iv,                                        ?glVertexAttribI2iv                                        + 1).
  -define(glVertexAttribI4iv,                                        ?glVertexAttribI3iv                                        + 1).
  -define(glVertexAttribI1uiv,                                       ?glVertexAttribI4iv                                        + 1).
  -define(glVertexAttribI2uiv,                                       ?glVertexAttribI1uiv                                       + 1).
  -define(glVertexAttribI3uiv,                                       ?glVertexAttribI2uiv                                       + 1).
  -define(glVertexAttribI4uiv,                                       ?glVertexAttribI3uiv                                       + 1).
  -define(glVertexAttribI4bv,                                        ?glVertexAttribI4uiv                                       + 1).
  -define(glVertexAttribI4sv,                                        ?glVertexAttribI4bv                                        + 1).
  -define(glVertexAttribI4ubv,                                       ?glVertexAttribI4sv                                        + 1).
  -define(glVertexAttribI4usv,                                       ?glVertexAttribI4ubv                                       + 1).
  -define(glGetUniformuiv,                                           ?glVertexAttribI4usv                                       + 1).
  -define(glBindFragDataLocation,                                    ?glGetUniformuiv                                           + 1).
  -define(glGetFragDataLocation,                                     ?glBindFragDataLocation                                    + 1).
  -define(glUniform1ui,                                              ?glGetFragDataLocation                                     + 1).
  -define(glUniform2ui,                                              ?glUniform1ui                                              + 1).
  -define(glUniform3ui,                                              ?glUniform2ui                                              + 1).
  -define(glUniform4ui,                                              ?glUniform3ui                                              + 1).
  -define(glUniform1uiv,                                             ?glUniform4ui                                              + 1).
  -define(glUniform2uiv,                                             ?glUniform1uiv                                             + 1).
  -define(glUniform3uiv,                                             ?glUniform2uiv                                             + 1).
  -define(glUniform4uiv,                                             ?glUniform3uiv                                             + 1).
  -define(glTexParameterIiv,                                         ?glUniform4uiv                                             + 1).
  -define(glTexParameterIuiv,                                        ?glTexParameterIiv                                         + 1).
  -define(glGetTexParameterIiv,                                      ?glTexParameterIuiv                                        + 1).
  -define(glGetTexParameterIuiv,                                     ?glGetTexParameterIiv                                      + 1).
  -define(glClearBufferiv,                                           ?glGetTexParameterIuiv                                     + 1).
  -define(glClearBufferuiv,                                          ?glClearBufferiv                                           + 1).
  -define(glClearBufferfv,                                           ?glClearBufferuiv                                          + 1).
  -define(glClearBufferfi,                                           ?glClearBufferfv                                           + 1).
  -define(glGetStringi,                                              ?glClearBufferfi                                           + 1).

%% GL_VERSION_3_1

  -define(glDrawArraysInstanced,                                     ?glGetStringi                                              + 1).
  -define(glDrawElementsInstanced,                                   ?glDrawArraysInstanced                                     + 1).
  -define(glTexBuffer,                                               ?glDrawElementsInstanced                                   + 1).
  -define(glPrimitiveRestartIndex,                                   ?glTexBuffer                                               + 1).

%% GL_VERSION_3_2

  -define(glGetInteger64i_v,                                         ?glPrimitiveRestartIndex                                   + 1).
  -define(glGetBufferParameteri64v,                                  ?glGetInteger64i_v                                         + 1).
  -define(glFramebufferTexture,                                      ?glGetBufferParameteri64v                                  + 1).

%% GL_VERSION_3_3

  -define(glVertexAttribDivisor,                                     ?glFramebufferTexture                                      + 1).

%% GL_VERSION_4_0

  -define(glMinSampleShading,                                        ?glVertexAttribDivisor                                     + 1).
  -define(glBlendEquationi,                                          ?glMinSampleShading                                        + 1).
  -define(glBlendEquationSeparatei,                                  ?glBlendEquationi                                          + 1).
  -define(glBlendFunci,                                              ?glBlendEquationSeparatei                                  + 1).
  -define(glBlendFuncSeparatei,                                      ?glBlendFunci                                              + 1).

%% GL_VERSION_4_1


%% GL_VERSION_4_2


%% GL_VERSION_4_3


%% GL_ARB_multitexture

  -define(glActiveTextureARB,                                        ?glBlendFuncSeparatei                                      + 1).
  -define(glClientActiveTextureARB,                                  ?glActiveTextureARB                                        + 1).
  -define(glMultiTexCoord1dARB,                                      ?glClientActiveTextureARB                                  + 1).
  -define(glMultiTexCoord1dvARB,                                     ?glMultiTexCoord1dARB                                      + 1).
  -define(glMultiTexCoord1fARB,                                      ?glMultiTexCoord1dvARB                                     + 1).
  -define(glMultiTexCoord1fvARB,                                     ?glMultiTexCoord1fARB                                      + 1).
  -define(glMultiTexCoord1iARB,                                      ?glMultiTexCoord1fvARB                                     + 1).
  -define(glMultiTexCoord1ivARB,                                     ?glMultiTexCoord1iARB                                      + 1).
  -define(glMultiTexCoord1sARB,                                      ?glMultiTexCoord1ivARB                                     + 1).
  -define(glMultiTexCoord1svARB,                                     ?glMultiTexCoord1sARB                                      + 1).
  -define(glMultiTexCoord2dARB,                                      ?glMultiTexCoord1svARB                                     + 1).
  -define(glMultiTexCoord2dvARB,                                     ?glMultiTexCoord2dARB                                      + 1).
  -define(glMultiTexCoord2fARB,                                      ?glMultiTexCoord2dvARB                                     + 1).
  -define(glMultiTexCoord2fvARB,                                     ?glMultiTexCoord2fARB                                      + 1).
  -define(glMultiTexCoord2iARB,                                      ?glMultiTexCoord2fvARB                                     + 1).
  -define(glMultiTexCoord2ivARB,                                     ?glMultiTexCoord2iARB                                      + 1).
  -define(glMultiTexCoord2sARB,                                      ?glMultiTexCoord2ivARB                                     + 1).
  -define(glMultiTexCoord2svARB,                                     ?glMultiTexCoord2sARB                                      + 1).
  -define(glMultiTexCoord3dARB,                                      ?glMultiTexCoord2svARB                                     + 1).
  -define(glMultiTexCoord3dvARB,                                     ?glMultiTexCoord3dARB                                      + 1).
  -define(glMultiTexCoord3fARB,                                      ?glMultiTexCoord3dvARB                                     + 1).
  -define(glMultiTexCoord3fvARB,                                     ?glMultiTexCoord3fARB                                      + 1).
  -define(glMultiTexCoord3iARB,                                      ?glMultiTexCoord3fvARB                                     + 1).
  -define(glMultiTexCoord3ivARB,                                     ?glMultiTexCoord3iARB                                      + 1).
  -define(glMultiTexCoord3sARB,                                      ?glMultiTexCoord3ivARB                                     + 1).
  -define(glMultiTexCoord3svARB,                                     ?glMultiTexCoord3sARB                                      + 1).
  -define(glMultiTexCoord4dARB,                                      ?glMultiTexCoord3svARB                                     + 1).
  -define(glMultiTexCoord4dvARB,                                     ?glMultiTexCoord4dARB                                      + 1).
  -define(glMultiTexCoord4fARB,                                      ?glMultiTexCoord4dvARB                                     + 1).
  -define(glMultiTexCoord4fvARB,                                     ?glMultiTexCoord4fARB                                      + 1).
  -define(glMultiTexCoord4iARB,                                      ?glMultiTexCoord4fvARB                                     + 1).
  -define(glMultiTexCoord4ivARB,                                     ?glMultiTexCoord4iARB                                      + 1).
  -define(glMultiTexCoord4sARB,                                      ?glMultiTexCoord4ivARB                                     + 1).
  -define(glMultiTexCoord4svARB,                                     ?glMultiTexCoord4sARB                                      + 1).

%% GL_ARB_transpose_matrix

  -define(glLoadTransposeMatrixfARB,                                 ?glMultiTexCoord4svARB                                     + 1).
  -define(glLoadTransposeMatrixdARB,                                 ?glLoadTransposeMatrixfARB                                 + 1).
  -define(glMultTransposeMatrixfARB,                                 ?glLoadTransposeMatrixdARB                                 + 1).
  -define(glMultTransposeMatrixdARB,                                 ?glMultTransposeMatrixfARB                                 + 1).

%% GL_ARB_multisample

  -define(glSampleCoverageARB,                                       ?glMultTransposeMatrixdARB                                 + 1).

%% GL_ARB_texture_env_add


%% GL_ARB_texture_cube_map


%% GL_ARB_texture_compression

  -define(glCompressedTexImage3DARB,                                 ?glSampleCoverageARB                                       + 1).
  -define(glCompressedTexImage2DARB,                                 ?glCompressedTexImage3DARB                                 + 1).
  -define(glCompressedTexImage1DARB,                                 ?glCompressedTexImage2DARB                                 + 1).
  -define(glCompressedTexSubImage3DARB,                              ?glCompressedTexImage1DARB                                 + 1).
  -define(glCompressedTexSubImage2DARB,                              ?glCompressedTexSubImage3DARB                              + 1).
  -define(glCompressedTexSubImage1DARB,                              ?glCompressedTexSubImage2DARB                              + 1).
  -define(glGetCompressedTexImageARB,                                ?glCompressedTexSubImage1DARB                              + 1).

%% GL_ARB_texture_border_clamp


%% GL_ARB_point_parameters

  -define(glPointParameterfARB,                                      ?glGetCompressedTexImageARB                                + 1).
  -define(glPointParameterfvARB,                                     ?glPointParameterfARB                                      + 1).

%% GL_ARB_vertex_blend

  -define(glWeightbvARB,                                             ?glPointParameterfvARB                                     + 1).
  -define(glWeightsvARB,                                             ?glWeightbvARB                                             + 1).
  -define(glWeightivARB,                                             ?glWeightsvARB                                             + 1).
  -define(glWeightfvARB,                                             ?glWeightivARB                                             + 1).
  -define(glWeightdvARB,                                             ?glWeightfvARB                                             + 1).
  -define(glWeightubvARB,                                            ?glWeightdvARB                                             + 1).
  -define(glWeightusvARB,                                            ?glWeightubvARB                                            + 1).
  -define(glWeightuivARB,                                            ?glWeightusvARB                                            + 1).
  -define(glWeightPointerARB,                                        ?glWeightuivARB                                            + 1).
  -define(glVertexBlendARB,                                          ?glWeightPointerARB                                        + 1).

%% GL_ARB_matrix_palette

  -define(glCurrentPaletteMatrixARB,                                 ?glVertexBlendARB                                          + 1).
  -define(glMatrixIndexubvARB,                                       ?glCurrentPaletteMatrixARB                                 + 1).
  -define(glMatrixIndexusvARB,                                       ?glMatrixIndexubvARB                                       + 1).
  -define(glMatrixIndexuivARB,                                       ?glMatrixIndexusvARB                                       + 1).
  -define(glMatrixIndexPointerARB,                                   ?glMatrixIndexuivARB                                       + 1).

%% GL_ARB_texture_env_combine


%% GL_ARB_texture_env_crossbar


%% GL_ARB_texture_env_dot3


%% GL_ARB_texture_mirrored_repeat


%% GL_ARB_depth_texture


%% GL_ARB_shadow


%% GL_ARB_shadow_ambient


%% GL_ARB_window_pos

  -define(glWindowPos2dARB,                                          ?glMatrixIndexPointerARB                                   + 1).
  -define(glWindowPos2dvARB,                                         ?glWindowPos2dARB                                          + 1).
  -define(glWindowPos2fARB,                                          ?glWindowPos2dvARB                                         + 1).
  -define(glWindowPos2fvARB,                                         ?glWindowPos2fARB                                          + 1).
  -define(glWindowPos2iARB,                                          ?glWindowPos2fvARB                                         + 1).
  -define(glWindowPos2ivARB,                                         ?glWindowPos2iARB                                          + 1).
  -define(glWindowPos2sARB,                                          ?glWindowPos2ivARB                                         + 1).
  -define(glWindowPos2svARB,                                         ?glWindowPos2sARB                                          + 1).
  -define(glWindowPos3dARB,                                          ?glWindowPos2svARB                                         + 1).
  -define(glWindowPos3dvARB,                                         ?glWindowPos3dARB                                          + 1).
  -define(glWindowPos3fARB,                                          ?glWindowPos3dvARB                                         + 1).
  -define(glWindowPos3fvARB,                                         ?glWindowPos3fARB                                          + 1).
  -define(glWindowPos3iARB,                                          ?glWindowPos3fvARB                                         + 1).
  -define(glWindowPos3ivARB,                                         ?glWindowPos3iARB                                          + 1).
  -define(glWindowPos3sARB,                                          ?glWindowPos3ivARB                                         + 1).
  -define(glWindowPos3svARB,                                         ?glWindowPos3sARB                                          + 1).

%% GL_ARB_vertex_program

  -define(glVertexAttrib1dARB,                                       ?glWindowPos3svARB                                         + 1).
  -define(glVertexAttrib1dvARB,                                      ?glVertexAttrib1dARB                                       + 1).
  -define(glVertexAttrib1fARB,                                       ?glVertexAttrib1dvARB                                      + 1).
  -define(glVertexAttrib1fvARB,                                      ?glVertexAttrib1fARB                                       + 1).
  -define(glVertexAttrib1sARB,                                       ?glVertexAttrib1fvARB                                      + 1).
  -define(glVertexAttrib1svARB,                                      ?glVertexAttrib1sARB                                       + 1).
  -define(glVertexAttrib2dARB,                                       ?glVertexAttrib1svARB                                      + 1).
  -define(glVertexAttrib2dvARB,                                      ?glVertexAttrib2dARB                                       + 1).
  -define(glVertexAttrib2fARB,                                       ?glVertexAttrib2dvARB                                      + 1).
  -define(glVertexAttrib2fvARB,                                      ?glVertexAttrib2fARB                                       + 1).
  -define(glVertexAttrib2sARB,                                       ?glVertexAttrib2fvARB                                      + 1).
  -define(glVertexAttrib2svARB,                                      ?glVertexAttrib2sARB                                       + 1).
  -define(glVertexAttrib3dARB,                                       ?glVertexAttrib2svARB                                      + 1).
  -define(glVertexAttrib3dvARB,                                      ?glVertexAttrib3dARB                                       + 1).
  -define(glVertexAttrib3fARB,                                       ?glVertexAttrib3dvARB                                      + 1).
  -define(glVertexAttrib3fvARB,                                      ?glVertexAttrib3fARB                                       + 1).
  -define(glVertexAttrib3sARB,                                       ?glVertexAttrib3fvARB                                      + 1).
  -define(glVertexAttrib3svARB,                                      ?glVertexAttrib3sARB                                       + 1).
  -define(glVertexAttrib4NbvARB,                                     ?glVertexAttrib3svARB                                      + 1).
  -define(glVertexAttrib4NivARB,                                     ?glVertexAttrib4NbvARB                                     + 1).
  -define(glVertexAttrib4NsvARB,                                     ?glVertexAttrib4NivARB                                     + 1).
  -define(glVertexAttrib4NubARB,                                     ?glVertexAttrib4NsvARB                                     + 1).
  -define(glVertexAttrib4NubvARB,                                    ?glVertexAttrib4NubARB                                     + 1).
  -define(glVertexAttrib4NuivARB,                                    ?glVertexAttrib4NubvARB                                    + 1).
  -define(glVertexAttrib4NusvARB,                                    ?glVertexAttrib4NuivARB                                    + 1).
  -define(glVertexAttrib4bvARB,                                      ?glVertexAttrib4NusvARB                                    + 1).
  -define(glVertexAttrib4dARB,                                       ?glVertexAttrib4bvARB                                      + 1).
  -define(glVertexAttrib4dvARB,                                      ?glVertexAttrib4dARB                                       + 1).
  -define(glVertexAttrib4fARB,                                       ?glVertexAttrib4dvARB                                      + 1).
  -define(glVertexAttrib4fvARB,                                      ?glVertexAttrib4fARB                                       + 1).
  -define(glVertexAttrib4ivARB,                                      ?glVertexAttrib4fvARB                                      + 1).
  -define(glVertexAttrib4sARB,                                       ?glVertexAttrib4ivARB                                      + 1).
  -define(glVertexAttrib4svARB,                                      ?glVertexAttrib4sARB                                       + 1).
  -define(glVertexAttrib4ubvARB,                                     ?glVertexAttrib4svARB                                      + 1).
  -define(glVertexAttrib4uivARB,                                     ?glVertexAttrib4ubvARB                                     + 1).
  -define(glVertexAttrib4usvARB,                                     ?glVertexAttrib4uivARB                                     + 1).
  -define(glVertexAttribPointerARB,                                  ?glVertexAttrib4usvARB                                     + 1).
  -define(glEnableVertexAttribArrayARB,                              ?glVertexAttribPointerARB                                  + 1).
  -define(glDisableVertexAttribArrayARB,                             ?glEnableVertexAttribArrayARB                              + 1).
  -define(glProgramStringARB,                                        ?glDisableVertexAttribArrayARB                             + 1).
  -define(glBindProgramARB,                                          ?glProgramStringARB                                        + 1).
  -define(glDeleteProgramsARB,                                       ?glBindProgramARB                                          + 1).
  -define(glGenProgramsARB,                                          ?glDeleteProgramsARB                                       + 1).
  -define(glProgramEnvParameter4dARB,                                ?glGenProgramsARB                                          + 1).
  -define(glProgramEnvParameter4dvARB,                               ?glProgramEnvParameter4dARB                                + 1).
  -define(glProgramEnvParameter4fARB,                                ?glProgramEnvParameter4dvARB                               + 1).
  -define(glProgramEnvParameter4fvARB,                               ?glProgramEnvParameter4fARB                                + 1).
  -define(glProgramLocalParameter4dARB,                              ?glProgramEnvParameter4fvARB                               + 1).
  -define(glProgramLocalParameter4dvARB,                             ?glProgramLocalParameter4dARB                              + 1).
  -define(glProgramLocalParameter4fARB,                              ?glProgramLocalParameter4dvARB                             + 1).
  -define(glProgramLocalParameter4fvARB,                             ?glProgramLocalParameter4fARB                              + 1).
  -define(glGetProgramEnvParameterdvARB,                             ?glProgramLocalParameter4fvARB                             + 1).
  -define(glGetProgramEnvParameterfvARB,                             ?glGetProgramEnvParameterdvARB                             + 1).
  -define(glGetProgramLocalParameterdvARB,                           ?glGetProgramEnvParameterfvARB                             + 1).
  -define(glGetProgramLocalParameterfvARB,                           ?glGetProgramLocalParameterdvARB                           + 1).
  -define(glGetProgramivARB,                                         ?glGetProgramLocalParameterfvARB                           + 1).
  -define(glGetProgramStringARB,                                     ?glGetProgramivARB                                         + 1).
  -define(glGetVertexAttribdvARB,                                    ?glGetProgramStringARB                                     + 1).
  -define(glGetVertexAttribfvARB,                                    ?glGetVertexAttribdvARB                                    + 1).
  -define(glGetVertexAttribivARB,                                    ?glGetVertexAttribfvARB                                    + 1).
  -define(glGetVertexAttribPointervARB,                              ?glGetVertexAttribivARB                                    + 1).
  -define(glIsProgramARB,                                            ?glGetVertexAttribPointervARB                              + 1).

%% GL_ARB_fragment_program


%% GL_ARB_vertex_buffer_object

  -define(glBindBufferARB,                                           ?glIsProgramARB                                            + 1).
  -define(glDeleteBuffersARB,                                        ?glBindBufferARB                                           + 1).
  -define(glGenBuffersARB,                                           ?glDeleteBuffersARB                                        + 1).
  -define(glIsBufferARB,                                             ?glGenBuffersARB                                           + 1).
  -define(glBufferDataARB,                                           ?glIsBufferARB                                             + 1).
  -define(glBufferSubDataARB,                                        ?glBufferDataARB                                           + 1).
  -define(glGetBufferSubDataARB,                                     ?glBufferSubDataARB                                        + 1).
  -define(glMapBufferARB,                                            ?glGetBufferSubDataARB                                     + 1).
  -define(glUnmapBufferARB,                                          ?glMapBufferARB                                            + 1).
  -define(glGetBufferParameterivARB,                                 ?glUnmapBufferARB                                          + 1).
  -define(glGetBufferPointervARB,                                    ?glGetBufferParameterivARB                                 + 1).

%% GL_ARB_occlusion_query

  -define(glGenQueriesARB,                                           ?glGetBufferPointervARB                                    + 1).
  -define(glDeleteQueriesARB,                                        ?glGenQueriesARB                                           + 1).
  -define(glIsQueryARB,                                              ?glDeleteQueriesARB                                        + 1).
  -define(glBeginQueryARB,                                           ?glIsQueryARB                                              + 1).
  -define(glEndQueryARB,                                             ?glBeginQueryARB                                           + 1).
  -define(glGetQueryivARB,                                           ?glEndQueryARB                                             + 1).
  -define(glGetQueryObjectivARB,                                     ?glGetQueryivARB                                           + 1).
  -define(glGetQueryObjectuivARB,                                    ?glGetQueryObjectivARB                                     + 1).

%% GL_ARB_shader_objects

  -define(glDeleteObjectARB,                                         ?glGetQueryObjectuivARB                                    + 1).
  -define(glGetHandleARB,                                            ?glDeleteObjectARB                                         + 1).
  -define(glDetachObjectARB,                                         ?glGetHandleARB                                            + 1).
  -define(glCreateShaderObjectARB,                                   ?glDetachObjectARB                                         + 1).
  -define(glShaderSourceARB,                                         ?glCreateShaderObjectARB                                   + 1).
  -define(glCompileShaderARB,                                        ?glShaderSourceARB                                         + 1).
  -define(glCreateProgramObjectARB,                                  ?glCompileShaderARB                                        + 1).
  -define(glAttachObjectARB,                                         ?glCreateProgramObjectARB                                  + 1).
  -define(glLinkProgramARB,                                          ?glAttachObjectARB                                         + 1).
  -define(glUseProgramObjectARB,                                     ?glLinkProgramARB                                          + 1).
  -define(glValidateProgramARB,                                      ?glUseProgramObjectARB                                     + 1).
  -define(glUniform1fARB,                                            ?glValidateProgramARB                                      + 1).
  -define(glUniform2fARB,                                            ?glUniform1fARB                                            + 1).
  -define(glUniform3fARB,                                            ?glUniform2fARB                                            + 1).
  -define(glUniform4fARB,                                            ?glUniform3fARB                                            + 1).
  -define(glUniform1iARB,                                            ?glUniform4fARB                                            + 1).
  -define(glUniform2iARB,                                            ?glUniform1iARB                                            + 1).
  -define(glUniform3iARB,                                            ?glUniform2iARB                                            + 1).
  -define(glUniform4iARB,                                            ?glUniform3iARB                                            + 1).
  -define(glUniform1fvARB,                                           ?glUniform4iARB                                            + 1).
  -define(glUniform2fvARB,                                           ?glUniform1fvARB                                           + 1).
  -define(glUniform3fvARB,                                           ?glUniform2fvARB                                           + 1).
  -define(glUniform4fvARB,                                           ?glUniform3fvARB                                           + 1).
  -define(glUniform1ivARB,                                           ?glUniform4fvARB                                           + 1).
  -define(glUniform2ivARB,                                           ?glUniform1ivARB                                           + 1).
  -define(glUniform3ivARB,                                           ?glUniform2ivARB                                           + 1).
  -define(glUniform4ivARB,                                           ?glUniform3ivARB                                           + 1).
  -define(glUniformMatrix2fvARB,                                     ?glUniform4ivARB                                           + 1).
  -define(glUniformMatrix3fvARB,                                     ?glUniformMatrix2fvARB                                     + 1).
  -define(glUniformMatrix4fvARB,                                     ?glUniformMatrix3fvARB                                     + 1).
  -define(glGetObjectParameterfvARB,                                 ?glUniformMatrix4fvARB                                     + 1).
  -define(glGetObjectParameterivARB,                                 ?glGetObjectParameterfvARB                                 + 1).
  -define(glGetInfoLogARB,                                           ?glGetObjectParameterivARB                                 + 1).
  -define(glGetAttachedObjectsARB,                                   ?glGetInfoLogARB                                           + 1).
  -define(glGetUniformLocationARB,                                   ?glGetAttachedObjectsARB                                   + 1).
  -define(glGetActiveUniformARB,                                     ?glGetUniformLocationARB                                   + 1).
  -define(glGetUniformfvARB,                                         ?glGetActiveUniformARB                                     + 1).
  -define(glGetUniformivARB,                                         ?glGetUniformfvARB                                         + 1).
  -define(glGetShaderSourceARB,                                      ?glGetUniformivARB                                         + 1).

%% GL_ARB_vertex_shader

  -define(glBindAttribLocationARB,                                   ?glGetShaderSourceARB                                      + 1).
  -define(glGetActiveAttribARB,                                      ?glBindAttribLocationARB                                   + 1).
  -define(glGetAttribLocationARB,                                    ?glGetActiveAttribARB                                      + 1).

%% GL_ARB_fragment_shader


%% GL_ARB_shading_language_100


%% GL_ARB_texture_non_power_of_two


%% GL_ARB_point_sprite


%% GL_ARB_fragment_program_shadow


%% GL_ARB_draw_buffers

  -define(glDrawBuffersARB,                                          ?glGetAttribLocationARB                                    + 1).

%% GL_ARB_texture_rectangle


%% GL_ARB_color_buffer_float

  -define(glClampColorARB,                                           ?glDrawBuffersARB                                          + 1).

%% GL_ARB_half_float_pixel


%% GL_ARB_texture_float


%% GL_ARB_pixel_buffer_object


%% GL_ARB_depth_buffer_float


%% GL_ARB_draw_instanced

  -define(glDrawArraysInstancedARB,                                  ?glClampColorARB                                           + 1).
  -define(glDrawElementsInstancedARB,                                ?glDrawArraysInstancedARB                                  + 1).

%% GL_ARB_framebuffer_object

  -define(glIsRenderbuffer,                                          ?glDrawElementsInstancedARB                                + 1).
  -define(glBindRenderbuffer,                                        ?glIsRenderbuffer                                          + 1).
  -define(glDeleteRenderbuffers,                                     ?glBindRenderbuffer                                        + 1).
  -define(glGenRenderbuffers,                                        ?glDeleteRenderbuffers                                     + 1).
  -define(glRenderbufferStorage,                                     ?glGenRenderbuffers                                        + 1).
  -define(glGetRenderbufferParameteriv,                              ?glRenderbufferStorage                                     + 1).
  -define(glIsFramebuffer,                                           ?glGetRenderbufferParameteriv                              + 1).
  -define(glBindFramebuffer,                                         ?glIsFramebuffer                                           + 1).
  -define(glDeleteFramebuffers,                                      ?glBindFramebuffer                                         + 1).
  -define(glGenFramebuffers,                                         ?glDeleteFramebuffers                                      + 1).
  -define(glCheckFramebufferStatus,                                  ?glGenFramebuffers                                         + 1).
  -define(glFramebufferTexture1D,                                    ?glCheckFramebufferStatus                                  + 1).
  -define(glFramebufferTexture2D,                                    ?glFramebufferTexture1D                                    + 1).
  -define(glFramebufferTexture3D,                                    ?glFramebufferTexture2D                                    + 1).
  -define(glFramebufferRenderbuffer,                                 ?glFramebufferTexture3D                                    + 1).
  -define(glGetFramebufferAttachmentParameteriv,                     ?glFramebufferRenderbuffer                                 + 1).
  -define(glGenerateMipmap,                                          ?glGetFramebufferAttachmentParameteriv                     + 1).
  -define(glBlitFramebuffer,                                         ?glGenerateMipmap                                          + 1).
  -define(glRenderbufferStorageMultisample,                          ?glBlitFramebuffer                                         + 1).
  -define(glFramebufferTextureLayer,                                 ?glRenderbufferStorageMultisample                          + 1).

%% GL_ARB_framebuffer_sRGB


%% GL_ARB_geometry_shader4

  -define(glProgramParameteriARB,                                    ?glFramebufferTextureLayer                                 + 1).
  -define(glFramebufferTextureARB,                                   ?glProgramParameteriARB                                    + 1).
  -define(glFramebufferTextureLayerARB,                              ?glFramebufferTextureARB                                   + 1).
  -define(glFramebufferTextureFaceARB,                               ?glFramebufferTextureLayerARB                              + 1).

%% GL_ARB_half_float_vertex


%% GL_ARB_instanced_arrays

  -define(glVertexAttribDivisorARB,                                  ?glFramebufferTextureFaceARB                               + 1).

%% GL_ARB_map_buffer_range

  -define(glMapBufferRange,                                          ?glVertexAttribDivisorARB                                  + 1).
  -define(glFlushMappedBufferRange,                                  ?glMapBufferRange                                          + 1).

%% GL_ARB_texture_buffer_object

  -define(glTexBufferARB,                                            ?glFlushMappedBufferRange                                  + 1).

%% GL_ARB_texture_compression_rgtc


%% GL_ARB_texture_rg


%% GL_ARB_vertex_array_object

  -define(glBindVertexArray,                                         ?glTexBufferARB                                            + 1).
  -define(glDeleteVertexArrays,                                      ?glBindVertexArray                                         + 1).
  -define(glGenVertexArrays,                                         ?glDeleteVertexArrays                                      + 1).
  -define(glIsVertexArray,                                           ?glGenVertexArrays                                         + 1).

%% GL_ARB_uniform_buffer_object

  -define(glGetUniformIndices,                                       ?glIsVertexArray                                           + 1).
  -define(glGetActiveUniformsiv,                                     ?glGetUniformIndices                                       + 1).
  -define(glGetActiveUniformName,                                    ?glGetActiveUniformsiv                                     + 1).
  -define(glGetUniformBlockIndex,                                    ?glGetActiveUniformName                                    + 1).
  -define(glGetActiveUniformBlockiv,                                 ?glGetUniformBlockIndex                                    + 1).
  -define(glGetActiveUniformBlockName,                               ?glGetActiveUniformBlockiv                                 + 1).
  -define(glUniformBlockBinding,                                     ?glGetActiveUniformBlockName                               + 1).

%% GL_ARB_compatibility


%% GL_ARB_copy_buffer

  -define(glCopyBufferSubData,                                       ?glUniformBlockBinding                                     + 1).

%% GL_ARB_shader_texture_lod


%% GL_ARB_depth_clamp


%% GL_ARB_draw_elements_base_vertex

  -define(glDrawElementsBaseVertex,                                  ?glCopyBufferSubData                                       + 1).
  -define(glDrawRangeElementsBaseVertex,                             ?glDrawElementsBaseVertex                                  + 1).
  -define(glDrawElementsInstancedBaseVertex,                         ?glDrawRangeElementsBaseVertex                             + 1).
  -define(glMultiDrawElementsBaseVertex,                             ?glDrawElementsInstancedBaseVertex                         + 1).

%% GL_ARB_fragment_coord_conventions


%% GL_ARB_provoking_vertex

  -define(glProvokingVertex,                                         ?glMultiDrawElementsBaseVertex                             + 1).

%% GL_ARB_seamless_cube_map


%% GL_ARB_sync

  -define(glFenceSync,                                               ?glProvokingVertex                                         + 1).
  -define(glIsSync,                                                  ?glFenceSync                                               + 1).
  -define(glDeleteSync,                                              ?glIsSync                                                  + 1).
  -define(glClientWaitSync,                                          ?glDeleteSync                                              + 1).
  -define(glWaitSync,                                                ?glClientWaitSync                                          + 1).
  -define(glGetInteger64v,                                           ?glWaitSync                                                + 1).
  -define(glGetSynciv,                                               ?glGetInteger64v                                           + 1).

%% GL_ARB_texture_multisample

  -define(glTexImage2DMultisample,                                   ?glGetSynciv                                               + 1).
  -define(glTexImage3DMultisample,                                   ?glTexImage2DMultisample                                   + 1).
  -define(glGetMultisamplefv,                                        ?glTexImage3DMultisample                                   + 1).
  -define(glSampleMaski,                                             ?glGetMultisamplefv                                        + 1).

%% GL_ARB_vertex_array_bgra


%% GL_ARB_draw_buffers_blend

  -define(glBlendEquationiARB,                                       ?glSampleMaski                                             + 1).
  -define(glBlendEquationSeparateiARB,                               ?glBlendEquationiARB                                       + 1).
  -define(glBlendFunciARB,                                           ?glBlendEquationSeparateiARB                               + 1).
  -define(glBlendFuncSeparateiARB,                                   ?glBlendFunciARB                                           + 1).

%% GL_ARB_sample_shading

  -define(glMinSampleShadingARB,                                     ?glBlendFuncSeparateiARB                                   + 1).

%% GL_ARB_texture_cube_map_array


%% GL_ARB_texture_gather


%% GL_ARB_texture_query_lod


%% GL_ARB_shading_language_include

  -define(glNamedStringARB,                                          ?glMinSampleShadingARB                                     + 1).
  -define(glDeleteNamedStringARB,                                    ?glNamedStringARB                                          + 1).
  -define(glCompileShaderIncludeARB,                                 ?glDeleteNamedStringARB                                    + 1).
  -define(glIsNamedStringARB,                                        ?glCompileShaderIncludeARB                                 + 1).
  -define(glGetNamedStringARB,                                       ?glIsNamedStringARB                                        + 1).
  -define(glGetNamedStringivARB,                                     ?glGetNamedStringARB                                       + 1).

%% GL_ARB_texture_compression_bptc


%% GL_ARB_blend_func_extended

  -define(glBindFragDataLocationIndexed,                             ?glGetNamedStringivARB                                     + 1).
  -define(glGetFragDataIndex,                                        ?glBindFragDataLocationIndexed                             + 1).

%% GL_ARB_explicit_attrib_location


%% GL_ARB_occlusion_query2


%% GL_ARB_sampler_objects

  -define(glGenSamplers,                                             ?glGetFragDataIndex                                        + 1).
  -define(glDeleteSamplers,                                          ?glGenSamplers                                             + 1).
  -define(glIsSampler,                                               ?glDeleteSamplers                                          + 1).
  -define(glBindSampler,                                             ?glIsSampler                                               + 1).
  -define(glSamplerParameteri,                                       ?glBindSampler                                             + 1).
  -define(glSamplerParameteriv,                                      ?glSamplerParameteri                                       + 1).
  -define(glSamplerParameterf,                                       ?glSamplerParameteriv                                      + 1).
  -define(glSamplerParameterfv,                                      ?glSamplerParameterf                                       + 1).
  -define(glSamplerParameterIiv,                                     ?glSamplerParameterfv                                      + 1).
  -define(glSamplerParameterIuiv,                                    ?glSamplerParameterIiv                                     + 1).
  -define(glGetSamplerParameteriv,                                   ?glSamplerParameterIuiv                                    + 1).
  -define(glGetSamplerParameterIiv,                                  ?glGetSamplerParameteriv                                   + 1).
  -define(glGetSamplerParameterfv,                                   ?glGetSamplerParameterIiv                                  + 1).
  -define(glGetSamplerParameterIuiv,                                 ?glGetSamplerParameterfv                                   + 1).

%% GL_ARB_shader_bit_encoding


%% GL_ARB_texture_rgb10_a2ui


%% GL_ARB_texture_swizzle


%% GL_ARB_timer_query

  -define(glQueryCounter,                                            ?glGetSamplerParameterIuiv                                 + 1).
  -define(glGetQueryObjecti64v,                                      ?glQueryCounter                                            + 1).
  -define(glGetQueryObjectui64v,                                     ?glGetQueryObjecti64v                                      + 1).

%% GL_ARB_vertex_type_2_10_10_10_rev

  -define(glVertexP2ui,                                              ?glGetQueryObjectui64v                                     + 1).
  -define(glVertexP2uiv,                                             ?glVertexP2ui                                              + 1).
  -define(glVertexP3ui,                                              ?glVertexP2uiv                                             + 1).
  -define(glVertexP3uiv,                                             ?glVertexP3ui                                              + 1).
  -define(glVertexP4ui,                                              ?glVertexP3uiv                                             + 1).
  -define(glVertexP4uiv,                                             ?glVertexP4ui                                              + 1).
  -define(glTexCoordP1ui,                                            ?glVertexP4uiv                                             + 1).
  -define(glTexCoordP1uiv,                                           ?glTexCoordP1ui                                            + 1).
  -define(glTexCoordP2ui,                                            ?glTexCoordP1uiv                                           + 1).
  -define(glTexCoordP2uiv,                                           ?glTexCoordP2ui                                            + 1).
  -define(glTexCoordP3ui,                                            ?glTexCoordP2uiv                                           + 1).
  -define(glTexCoordP3uiv,                                           ?glTexCoordP3ui                                            + 1).
  -define(glTexCoordP4ui,                                            ?glTexCoordP3uiv                                           + 1).
  -define(glTexCoordP4uiv,                                           ?glTexCoordP4ui                                            + 1).
  -define(glMultiTexCoordP1ui,                                       ?glTexCoordP4uiv                                           + 1).
  -define(glMultiTexCoordP1uiv,                                      ?glMultiTexCoordP1ui                                       + 1).
  -define(glMultiTexCoordP2ui,                                       ?glMultiTexCoordP1uiv                                      + 1).
  -define(glMultiTexCoordP2uiv,                                      ?glMultiTexCoordP2ui                                       + 1).
  -define(glMultiTexCoordP3ui,                                       ?glMultiTexCoordP2uiv                                      + 1).
  -define(glMultiTexCoordP3uiv,                                      ?glMultiTexCoordP3ui                                       + 1).
  -define(glMultiTexCoordP4ui,                                       ?glMultiTexCoordP3uiv                                      + 1).
  -define(glMultiTexCoordP4uiv,                                      ?glMultiTexCoordP4ui                                       + 1).
  -define(glNormalP3ui,                                              ?glMultiTexCoordP4uiv                                      + 1).
  -define(glNormalP3uiv,                                             ?glNormalP3ui                                              + 1).
  -define(glColorP3ui,                                               ?glNormalP3uiv                                             + 1).
  -define(glColorP3uiv,                                              ?glColorP3ui                                               + 1).
  -define(glColorP4ui,                                               ?glColorP3uiv                                              + 1).
  -define(glColorP4uiv,                                              ?glColorP4ui                                               + 1).
  -define(glSecondaryColorP3ui,                                      ?glColorP4uiv                                              + 1).
  -define(glSecondaryColorP3uiv,                                     ?glSecondaryColorP3ui                                      + 1).
  -define(glVertexAttribP1ui,                                        ?glSecondaryColorP3uiv                                     + 1).
  -define(glVertexAttribP1uiv,                                       ?glVertexAttribP1ui                                        + 1).
  -define(glVertexAttribP2ui,                                        ?glVertexAttribP1uiv                                       + 1).
  -define(glVertexAttribP2uiv,                                       ?glVertexAttribP2ui                                        + 1).
  -define(glVertexAttribP3ui,                                        ?glVertexAttribP2uiv                                       + 1).
  -define(glVertexAttribP3uiv,                                       ?glVertexAttribP3ui                                        + 1).
  -define(glVertexAttribP4ui,                                        ?glVertexAttribP3uiv                                       + 1).
  -define(glVertexAttribP4uiv,                                       ?glVertexAttribP4ui                                        + 1).

%% GL_ARB_draw_indirect

  -define(glDrawArraysIndirect,                                      ?glVertexAttribP4uiv                                       + 1).
  -define(glDrawElementsIndirect,                                    ?glDrawArraysIndirect                                      + 1).

%% GL_ARB_gpu_shader5


%% GL_ARB_gpu_shader_fp64

  -define(glUniform1d,                                               ?glDrawElementsIndirect                                    + 1).
  -define(glUniform2d,                                               ?glUniform1d                                               + 1).
  -define(glUniform3d,                                               ?glUniform2d                                               + 1).
  -define(glUniform4d,                                               ?glUniform3d                                               + 1).
  -define(glUniform1dv,                                              ?glUniform4d                                               + 1).
  -define(glUniform2dv,                                              ?glUniform1dv                                              + 1).
  -define(glUniform3dv,                                              ?glUniform2dv                                              + 1).
  -define(glUniform4dv,                                              ?glUniform3dv                                              + 1).
  -define(glUniformMatrix2dv,                                        ?glUniform4dv                                              + 1).
  -define(glUniformMatrix3dv,                                        ?glUniformMatrix2dv                                        + 1).
  -define(glUniformMatrix4dv,                                        ?glUniformMatrix3dv                                        + 1).
  -define(glUniformMatrix2x3dv,                                      ?glUniformMatrix4dv                                        + 1).
  -define(glUniformMatrix2x4dv,                                      ?glUniformMatrix2x3dv                                      + 1).
  -define(glUniformMatrix3x2dv,                                      ?glUniformMatrix2x4dv                                      + 1).
  -define(glUniformMatrix3x4dv,                                      ?glUniformMatrix3x2dv                                      + 1).
  -define(glUniformMatrix4x2dv,                                      ?glUniformMatrix3x4dv                                      + 1).
  -define(glUniformMatrix4x3dv,                                      ?glUniformMatrix4x2dv                                      + 1).
  -define(glGetUniformdv,                                            ?glUniformMatrix4x3dv                                      + 1).

%% GL_ARB_shader_subroutine

  -define(glGetSubroutineUniformLocation,                            ?glGetUniformdv                                            + 1).
  -define(glGetSubroutineIndex,                                      ?glGetSubroutineUniformLocation                            + 1).
  -define(glGetActiveSubroutineUniformiv,                            ?glGetSubroutineIndex                                      + 1).
  -define(glGetActiveSubroutineUniformName,                          ?glGetActiveSubroutineUniformiv                            + 1).
  -define(glGetActiveSubroutineName,                                 ?glGetActiveSubroutineUniformName                          + 1).
  -define(glUniformSubroutinesuiv,                                   ?glGetActiveSubroutineName                                 + 1).
  -define(glGetUniformSubroutineuiv,                                 ?glUniformSubroutinesuiv                                   + 1).
  -define(glGetProgramStageiv,                                       ?glGetUniformSubroutineuiv                                 + 1).

%% GL_ARB_tessellation_shader

  -define(glPatchParameteri,                                         ?glGetProgramStageiv                                       + 1).
  -define(glPatchParameterfv,                                        ?glPatchParameteri                                         + 1).

%% GL_ARB_texture_buffer_object_rgb32


%% GL_ARB_transform_feedback2

  -define(glBindTransformFeedback,                                   ?glPatchParameterfv                                        + 1).
  -define(glDeleteTransformFeedbacks,                                ?glBindTransformFeedback                                   + 1).
  -define(glGenTransformFeedbacks,                                   ?glDeleteTransformFeedbacks                                + 1).
  -define(glIsTransformFeedback,                                     ?glGenTransformFeedbacks                                   + 1).
  -define(glPauseTransformFeedback,                                  ?glIsTransformFeedback                                     + 1).
  -define(glResumeTransformFeedback,                                 ?glPauseTransformFeedback                                  + 1).
  -define(glDrawTransformFeedback,                                   ?glResumeTransformFeedback                                 + 1).

%% GL_ARB_transform_feedback3

  -define(glDrawTransformFeedbackStream,                             ?glDrawTransformFeedback                                   + 1).
  -define(glBeginQueryIndexed,                                       ?glDrawTransformFeedbackStream                             + 1).
  -define(glEndQueryIndexed,                                         ?glBeginQueryIndexed                                       + 1).
  -define(glGetQueryIndexediv,                                       ?glEndQueryIndexed                                         + 1).

%% GL_ARB_ES2_compatibility

  -define(glReleaseShaderCompiler,                                   ?glGetQueryIndexediv                                       + 1).
  -define(glShaderBinary,                                            ?glReleaseShaderCompiler                                   + 1).
  -define(glGetShaderPrecisionFormat,                                ?glShaderBinary                                            + 1).
  -define(glDepthRangef,                                             ?glGetShaderPrecisionFormat                                + 1).
  -define(glClearDepthf,                                             ?glDepthRangef                                             + 1).

%% GL_ARB_get_program_binary

  -define(glGetProgramBinary,                                        ?glClearDepthf                                             + 1).
  -define(glProgramBinary,                                           ?glGetProgramBinary                                        + 1).
  -define(glProgramParameteri,                                       ?glProgramBinary                                           + 1).

%% GL_ARB_separate_shader_objects

  -define(glUseProgramStages,                                        ?glProgramParameteri                                       + 1).
  -define(glActiveShaderProgram,                                     ?glUseProgramStages                                        + 1).
  -define(glCreateShaderProgramv,                                    ?glActiveShaderProgram                                     + 1).
  -define(glBindProgramPipeline,                                     ?glCreateShaderProgramv                                    + 1).
  -define(glDeleteProgramPipelines,                                  ?glBindProgramPipeline                                     + 1).
  -define(glGenProgramPipelines,                                     ?glDeleteProgramPipelines                                  + 1).
  -define(glIsProgramPipeline,                                       ?glGenProgramPipelines                                     + 1).
  -define(glGetProgramPipelineiv,                                    ?glIsProgramPipeline                                       + 1).
  -define(glProgramUniform1i,                                        ?glGetProgramPipelineiv                                    + 1).
  -define(glProgramUniform1iv,                                       ?glProgramUniform1i                                        + 1).
  -define(glProgramUniform1f,                                        ?glProgramUniform1iv                                       + 1).
  -define(glProgramUniform1fv,                                       ?glProgramUniform1f                                        + 1).
  -define(glProgramUniform1d,                                        ?glProgramUniform1fv                                       + 1).
  -define(glProgramUniform1dv,                                       ?glProgramUniform1d                                        + 1).
  -define(glProgramUniform1ui,                                       ?glProgramUniform1dv                                       + 1).
  -define(glProgramUniform1uiv,                                      ?glProgramUniform1ui                                       + 1).
  -define(glProgramUniform2i,                                        ?glProgramUniform1uiv                                      + 1).
  -define(glProgramUniform2iv,                                       ?glProgramUniform2i                                        + 1).
  -define(glProgramUniform2f,                                        ?glProgramUniform2iv                                       + 1).
  -define(glProgramUniform2fv,                                       ?glProgramUniform2f                                        + 1).
  -define(glProgramUniform2d,                                        ?glProgramUniform2fv                                       + 1).
  -define(glProgramUniform2dv,                                       ?glProgramUniform2d                                        + 1).
  -define(glProgramUniform2ui,                                       ?glProgramUniform2dv                                       + 1).
  -define(glProgramUniform2uiv,                                      ?glProgramUniform2ui                                       + 1).
  -define(glProgramUniform3i,                                        ?glProgramUniform2uiv                                      + 1).
  -define(glProgramUniform3iv,                                       ?glProgramUniform3i                                        + 1).
  -define(glProgramUniform3f,                                        ?glProgramUniform3iv                                       + 1).
  -define(glProgramUniform3fv,                                       ?glProgramUniform3f                                        + 1).
  -define(glProgramUniform3d,                                        ?glProgramUniform3fv                                       + 1).
  -define(glProgramUniform3dv,                                       ?glProgramUniform3d                                        + 1).
  -define(glProgramUniform3ui,                                       ?glProgramUniform3dv                                       + 1).
  -define(glProgramUniform3uiv,                                      ?glProgramUniform3ui                                       + 1).
  -define(glProgramUniform4i,                                        ?glProgramUniform3uiv                                      + 1).
  -define(glProgramUniform4iv,                                       ?glProgramUniform4i                                        + 1).
  -define(glProgramUniform4f,                                        ?glProgramUniform4iv                                       + 1).
  -define(glProgramUniform4fv,                                       ?glProgramUniform4f                                        + 1).
  -define(glProgramUniform4d,                                        ?glProgramUniform4fv                                       + 1).
  -define(glProgramUniform4dv,                                       ?glProgramUniform4d                                        + 1).
  -define(glProgramUniform4ui,                                       ?glProgramUniform4dv                                       + 1).
  -define(glProgramUniform4uiv,                                      ?glProgramUniform4ui                                       + 1).
  -define(glProgramUniformMatrix2fv,                                 ?glProgramUniform4uiv                                      + 1).
  -define(glProgramUniformMatrix3fv,                                 ?glProgramUniformMatrix2fv                                 + 1).
  -define(glProgramUniformMatrix4fv,                                 ?glProgramUniformMatrix3fv                                 + 1).
  -define(glProgramUniformMatrix2dv,                                 ?glProgramUniformMatrix4fv                                 + 1).
  -define(glProgramUniformMatrix3dv,                                 ?glProgramUniformMatrix2dv                                 + 1).
  -define(glProgramUniformMatrix4dv,                                 ?glProgramUniformMatrix3dv                                 + 1).
  -define(glProgramUniformMatrix2x3fv,                               ?glProgramUniformMatrix4dv                                 + 1).
  -define(glProgramUniformMatrix3x2fv,                               ?glProgramUniformMatrix2x3fv                               + 1).
  -define(glProgramUniformMatrix2x4fv,                               ?glProgramUniformMatrix3x2fv                               + 1).
  -define(glProgramUniformMatrix4x2fv,                               ?glProgramUniformMatrix2x4fv                               + 1).
  -define(glProgramUniformMatrix3x4fv,                               ?glProgramUniformMatrix4x2fv                               + 1).
  -define(glProgramUniformMatrix4x3fv,                               ?glProgramUniformMatrix3x4fv                               + 1).
  -define(glProgramUniformMatrix2x3dv,                               ?glProgramUniformMatrix4x3fv                               + 1).
  -define(glProgramUniformMatrix3x2dv,                               ?glProgramUniformMatrix2x3dv                               + 1).
  -define(glProgramUniformMatrix2x4dv,                               ?glProgramUniformMatrix3x2dv                               + 1).
  -define(glProgramUniformMatrix4x2dv,                               ?glProgramUniformMatrix2x4dv                               + 1).
  -define(glProgramUniformMatrix3x4dv,                               ?glProgramUniformMatrix4x2dv                               + 1).
  -define(glProgramUniformMatrix4x3dv,                               ?glProgramUniformMatrix3x4dv                               + 1).
  -define(glValidateProgramPipeline,                                 ?glProgramUniformMatrix4x3dv                               + 1).
  -define(glGetProgramPipelineInfoLog,                               ?glValidateProgramPipeline                                 + 1).

%% GL_ARB_vertex_attrib_64bit

  -define(glVertexAttribL1d,                                         ?glGetProgramPipelineInfoLog                               + 1).
  -define(glVertexAttribL2d,                                         ?glVertexAttribL1d                                         + 1).
  -define(glVertexAttribL3d,                                         ?glVertexAttribL2d                                         + 1).
  -define(glVertexAttribL4d,                                         ?glVertexAttribL3d                                         + 1).
  -define(glVertexAttribL1dv,                                        ?glVertexAttribL4d                                         + 1).
  -define(glVertexAttribL2dv,                                        ?glVertexAttribL1dv                                        + 1).
  -define(glVertexAttribL3dv,                                        ?glVertexAttribL2dv                                        + 1).
  -define(glVertexAttribL4dv,                                        ?glVertexAttribL3dv                                        + 1).
  -define(glVertexAttribLPointer,                                    ?glVertexAttribL4dv                                        + 1).
  -define(glGetVertexAttribLdv,                                      ?glVertexAttribLPointer                                    + 1).

%% GL_ARB_viewport_array

  -define(glViewportArrayv,                                          ?glGetVertexAttribLdv                                      + 1).
  -define(glViewportIndexedf,                                        ?glViewportArrayv                                          + 1).
  -define(glViewportIndexedfv,                                       ?glViewportIndexedf                                        + 1).
  -define(glScissorArrayv,                                           ?glViewportIndexedfv                                       + 1).
  -define(glScissorIndexed,                                          ?glScissorArrayv                                           + 1).
  -define(glScissorIndexedv,                                         ?glScissorIndexed                                          + 1).
  -define(glDepthRangeArrayv,                                        ?glScissorIndexedv                                         + 1).
  -define(glDepthRangeIndexed,                                       ?glDepthRangeArrayv                                        + 1).
  -define(glGetFloati_v,                                             ?glDepthRangeIndexed                                       + 1).
  -define(glGetDoublei_v,                                            ?glGetFloati_v                                             + 1).

%% GL_ARB_cl_event

  -define(glCreateSyncFromCLeventARB,                                ?glGetDoublei_v                                            + 1).

%% GL_ARB_debug_output

  -define(glDebugMessageControlARB,                                  ?glCreateSyncFromCLeventARB                                + 1).
  -define(glDebugMessageInsertARB,                                   ?glDebugMessageControlARB                                  + 1).
  -define(glDebugMessageCallbackARB,                                 ?glDebugMessageInsertARB                                   + 1).
  -define(glGetDebugMessageLogARB,                                   ?glDebugMessageCallbackARB                                 + 1).

%% GL_ARB_robustness

  -define(glGetGraphicsResetStatusARB,                               ?glGetDebugMessageLogARB                                   + 1).
  -define(glGetnMapdvARB,                                            ?glGetGraphicsResetStatusARB                               + 1).
  -define(glGetnMapfvARB,                                            ?glGetnMapdvARB                                            + 1).
  -define(glGetnMapivARB,                                            ?glGetnMapfvARB                                            + 1).
  -define(glGetnPixelMapfvARB,                                       ?glGetnMapivARB                                            + 1).
  -define(glGetnPixelMapuivARB,                                      ?glGetnPixelMapfvARB                                       + 1).
  -define(glGetnPixelMapusvARB,                                      ?glGetnPixelMapuivARB                                      + 1).
  -define(glGetnPolygonStippleARB,                                   ?glGetnPixelMapusvARB                                      + 1).
  -define(glGetnColorTableARB,                                       ?glGetnPolygonStippleARB                                   + 1).
  -define(glGetnConvolutionFilterARB,                                ?glGetnColorTableARB                                       + 1).
  -define(glGetnSeparableFilterARB,                                  ?glGetnConvolutionFilterARB                                + 1).
  -define(glGetnHistogramARB,                                        ?glGetnSeparableFilterARB                                  + 1).
  -define(glGetnMinmaxARB,                                           ?glGetnHistogramARB                                        + 1).
  -define(glGetnTexImageARB,                                         ?glGetnMinmaxARB                                           + 1).
  -define(glReadnPixelsARB,                                          ?glGetnTexImageARB                                         + 1).
  -define(glGetnCompressedTexImageARB,                               ?glReadnPixelsARB                                          + 1).
  -define(glGetnUniformfvARB,                                        ?glGetnCompressedTexImageARB                               + 1).
  -define(glGetnUniformivARB,                                        ?glGetnUniformfvARB                                        + 1).
  -define(glGetnUniformuivARB,                                       ?glGetnUniformivARB                                        + 1).
  -define(glGetnUniformdvARB,                                        ?glGetnUniformuivARB                                       + 1).

%% GL_ARB_shader_stencil_export


%% GL_ARB_base_instance

  -define(glDrawArraysInstancedBaseInstance,                         ?glGetnUniformdvARB                                        + 1).
  -define(glDrawElementsInstancedBaseInstance,                       ?glDrawArraysInstancedBaseInstance                         + 1).
  -define(glDrawElementsInstancedBaseVertexBaseInstance,             ?glDrawElementsInstancedBaseInstance                       + 1).

%% GL_ARB_shading_language_420pack


%% GL_ARB_transform_feedback_instanced

  -define(glDrawTransformFeedbackInstanced,                          ?glDrawElementsInstancedBaseVertexBaseInstance             + 1).
  -define(glDrawTransformFeedbackStreamInstanced,                    ?glDrawTransformFeedbackInstanced                          + 1).

%% GL_ARB_compressed_texture_pixel_storage


%% GL_ARB_conservative_depth


%% GL_ARB_internalformat_query

  -define(glGetInternalformativ,                                     ?glDrawTransformFeedbackStreamInstanced                    + 1).

%% GL_ARB_map_buffer_alignment


%% GL_ARB_shader_atomic_counters

  -define(glGetActiveAtomicCounterBufferiv,                          ?glGetInternalformativ                                     + 1).

%% GL_ARB_shader_image_load_store

  -define(glBindImageTexture,                                        ?glGetActiveAtomicCounterBufferiv                          + 1).
  -define(glMemoryBarrier,                                           ?glBindImageTexture                                        + 1).

%% GL_ARB_shading_language_packing


%% GL_ARB_texture_storage

  -define(glTexStorage1D,                                            ?glMemoryBarrier                                           + 1).
  -define(glTexStorage2D,                                            ?glTexStorage1D                                            + 1).
  -define(glTexStorage3D,                                            ?glTexStorage2D                                            + 1).
  -define(glTextureStorage1DEXT,                                     ?glTexStorage3D                                            + 1).
  -define(glTextureStorage2DEXT,                                     ?glTextureStorage1DEXT                                     + 1).
  -define(glTextureStorage3DEXT,                                     ?glTextureStorage2DEXT                                     + 1).

%% GL_KHR_texture_compression_astc_ldr


%% GL_KHR_debug

  -define(glDebugMessageControl,                                     ?glTextureStorage3DEXT                                     + 1).
  -define(glDebugMessageInsert,                                      ?glDebugMessageControl                                     + 1).
  -define(glDebugMessageCallback,                                    ?glDebugMessageInsert                                      + 1).
  -define(glGetDebugMessageLog,                                      ?glDebugMessageCallback                                    + 1).
  -define(glPushDebugGroup,                                          ?glGetDebugMessageLog                                      + 1).
  -define(glPopDebugGroup,                                           ?glPushDebugGroup                                          + 1).
  -define(glObjectLabel,                                             ?glPopDebugGroup                                           + 1).
  -define(glGetObjectLabel,                                          ?glObjectLabel                                             + 1).
  -define(glObjectPtrLabel,                                          ?glGetObjectLabel                                          + 1).
  -define(glGetObjectPtrLabel,                                       ?glObjectPtrLabel                                          + 1).

%% GL_ARB_arrays_of_arrays


%% GL_ARB_clear_buffer_object

  -define(glClearBufferData,                                         ?glGetObjectPtrLabel                                       + 1).
  -define(glClearBufferSubData,                                      ?glClearBufferData                                         + 1).
  -define(glClearNamedBufferDataEXT,                                 ?glClearBufferSubData                                      + 1).
  -define(glClearNamedBufferSubDataEXT,                              ?glClearNamedBufferDataEXT                                 + 1).

%% GL_ARB_compute_shader

  -define(glDispatchCompute,                                         ?glClearNamedBufferSubDataEXT                              + 1).
  -define(glDispatchComputeIndirect,                                 ?glDispatchCompute                                         + 1).

%% GL_ARB_copy_image

  -define(glCopyImageSubData,                                        ?glDispatchComputeIndirect                                 + 1).

%% GL_ARB_texture_view

  -define(glTextureView,                                             ?glCopyImageSubData                                        + 1).

%% GL_ARB_vertex_attrib_binding

  -define(glBindVertexBuffer,                                        ?glTextureView                                             + 1).
  -define(glVertexAttribFormat,                                      ?glBindVertexBuffer                                        + 1).
  -define(glVertexAttribIFormat,                                     ?glVertexAttribFormat                                      + 1).
  -define(glVertexAttribLFormat,                                     ?glVertexAttribIFormat                                     + 1).
  -define(glVertexAttribBinding,                                     ?glVertexAttribLFormat                                     + 1).
  -define(glVertexBindingDivisor,                                    ?glVertexAttribBinding                                     + 1).
  -define(glVertexArrayBindVertexBufferEXT,                          ?glVertexBindingDivisor                                    + 1).
  -define(glVertexArrayVertexAttribFormatEXT,                        ?glVertexArrayBindVertexBufferEXT                          + 1).
  -define(glVertexArrayVertexAttribIFormatEXT,                       ?glVertexArrayVertexAttribFormatEXT                        + 1).
  -define(glVertexArrayVertexAttribLFormatEXT,                       ?glVertexArrayVertexAttribIFormatEXT                       + 1).
  -define(glVertexArrayVertexAttribBindingEXT,                       ?glVertexArrayVertexAttribLFormatEXT                       + 1).
  -define(glVertexArrayVertexBindingDivisorEXT,                      ?glVertexArrayVertexAttribBindingEXT                       + 1).

%% GL_ARB_robustness_isolation


%% GL_ARB_ES3_compatibility


%% GL_ARB_explicit_uniform_location


%% GL_ARB_fragment_layer_viewport


%% GL_ARB_framebuffer_no_attachments

  -define(glFramebufferParameteri,                                   ?glVertexArrayVertexBindingDivisorEXT                      + 1).
  -define(glGetFramebufferParameteriv,                               ?glFramebufferParameteri                                   + 1).
  -define(glNamedFramebufferParameteriEXT,                           ?glGetFramebufferParameteriv                               + 1).
  -define(glGetNamedFramebufferParameterivEXT,                       ?glNamedFramebufferParameteriEXT                           + 1).

%% GL_ARB_internalformat_query2

  -define(glGetInternalformati64v,                                   ?glGetNamedFramebufferParameterivEXT                       + 1).

%% GL_ARB_invalidate_subdata

  -define(glInvalidateTexSubImage,                                   ?glGetInternalformati64v                                   + 1).
  -define(glInvalidateTexImage,                                      ?glInvalidateTexSubImage                                   + 1).
  -define(glInvalidateBufferSubData,                                 ?glInvalidateTexImage                                      + 1).
  -define(glInvalidateBufferData,                                    ?glInvalidateBufferSubData                                 + 1).
  -define(glInvalidateFramebuffer,                                   ?glInvalidateBufferData                                    + 1).
  -define(glInvalidateSubFramebuffer,                                ?glInvalidateFramebuffer                                   + 1).

%% GL_ARB_multi_draw_indirect

  -define(glMultiDrawArraysIndirect,                                 ?glInvalidateSubFramebuffer                                + 1).
  -define(glMultiDrawElementsIndirect,                               ?glMultiDrawArraysIndirect                                 + 1).

%% GL_ARB_program_interface_query

  -define(glGetProgramInterfaceiv,                                   ?glMultiDrawElementsIndirect                               + 1).
  -define(glGetProgramResourceIndex,                                 ?glGetProgramInterfaceiv                                   + 1).
  -define(glGetProgramResourceName,                                  ?glGetProgramResourceIndex                                 + 1).
  -define(glGetProgramResourceiv,                                    ?glGetProgramResourceName                                  + 1).
  -define(glGetProgramResourceLocation,                              ?glGetProgramResourceiv                                    + 1).
  -define(glGetProgramResourceLocationIndex,                         ?glGetProgramResourceLocation                              + 1).

%% GL_ARB_robust_buffer_access_behavior


%% GL_ARB_shader_image_size


%% GL_ARB_shader_storage_buffer_object

  -define(glShaderStorageBlockBinding,                               ?glGetProgramResourceLocationIndex                         + 1).

%% GL_ARB_stencil_texturing


%% GL_ARB_texture_buffer_range

  -define(glTexBufferRange,                                          ?glShaderStorageBlockBinding                               + 1).
  -define(glTextureBufferRangeEXT,                                   ?glTexBufferRange                                          + 1).

%% GL_ARB_texture_query_levels


%% GL_ARB_texture_storage_multisample

  -define(glTexStorage2DMultisample,                                 ?glTextureBufferRangeEXT                                   + 1).
  -define(glTexStorage3DMultisample,                                 ?glTexStorage2DMultisample                                 + 1).
  -define(glTextureStorage2DMultisampleEXT,                          ?glTexStorage3DMultisample                                 + 1).
  -define(glTextureStorage3DMultisampleEXT,                          ?glTextureStorage2DMultisampleEXT                          + 1).

%% GL_EXT_abgr


%% GL_EXT_blend_color

  -define(glBlendColorEXT,                                           ?glTextureStorage3DMultisampleEXT                          + 1).

%% GL_EXT_polygon_offset

  -define(glPolygonOffsetEXT,                                        ?glBlendColorEXT                                           + 1).

%% GL_EXT_texture


%% GL_EXT_texture3D

  -define(glTexImage3DEXT,                                           ?glPolygonOffsetEXT                                        + 1).
  -define(glTexSubImage3DEXT,                                        ?glTexImage3DEXT                                           + 1).

%% GL_SGIS_texture_filter4

  -define(glGetTexFilterFuncSGIS,                                    ?glTexSubImage3DEXT                                        + 1).
  -define(glTexFilterFuncSGIS,                                       ?glGetTexFilterFuncSGIS                                    + 1).

%% GL_EXT_subtexture

  -define(glTexSubImage1DEXT,                                        ?glTexFilterFuncSGIS                                       + 1).
  -define(glTexSubImage2DEXT,                                        ?glTexSubImage1DEXT                                        + 1).

%% GL_EXT_copy_texture

  -define(glCopyTexImage1DEXT,                                       ?glTexSubImage2DEXT                                        + 1).
  -define(glCopyTexImage2DEXT,                                       ?glCopyTexImage1DEXT                                       + 1).
  -define(glCopyTexSubImage1DEXT,                                    ?glCopyTexImage2DEXT                                       + 1).
  -define(glCopyTexSubImage2DEXT,                                    ?glCopyTexSubImage1DEXT                                    + 1).
  -define(glCopyTexSubImage3DEXT,                                    ?glCopyTexSubImage2DEXT                                    + 1).

%% GL_EXT_histogram

  -define(glGetHistogramEXT,                                         ?glCopyTexSubImage3DEXT                                    + 1).
  -define(glGetHistogramParameterfvEXT,                              ?glGetHistogramEXT                                         + 1).
  -define(glGetHistogramParameterivEXT,                              ?glGetHistogramParameterfvEXT                              + 1).
  -define(glGetMinmaxEXT,                                            ?glGetHistogramParameterivEXT                              + 1).
  -define(glGetMinmaxParameterfvEXT,                                 ?glGetMinmaxEXT                                            + 1).
  -define(glGetMinmaxParameterivEXT,                                 ?glGetMinmaxParameterfvEXT                                 + 1).
  -define(glHistogramEXT,                                            ?glGetMinmaxParameterivEXT                                 + 1).
  -define(glMinmaxEXT,                                               ?glHistogramEXT                                            + 1).
  -define(glResetHistogramEXT,                                       ?glMinmaxEXT                                               + 1).
  -define(glResetMinmaxEXT,                                          ?glResetHistogramEXT                                       + 1).

%% GL_EXT_convolution

  -define(glConvolutionFilter1DEXT,                                  ?glResetMinmaxEXT                                          + 1).
  -define(glConvolutionFilter2DEXT,                                  ?glConvolutionFilter1DEXT                                  + 1).
  -define(glConvolutionParameterfEXT,                                ?glConvolutionFilter2DEXT                                  + 1).
  -define(glConvolutionParameterfvEXT,                               ?glConvolutionParameterfEXT                                + 1).
  -define(glConvolutionParameteriEXT,                                ?glConvolutionParameterfvEXT                               + 1).
  -define(glConvolutionParameterivEXT,                               ?glConvolutionParameteriEXT                                + 1).
  -define(glCopyConvolutionFilter1DEXT,                              ?glConvolutionParameterivEXT                               + 1).
  -define(glCopyConvolutionFilter2DEXT,                              ?glCopyConvolutionFilter1DEXT                              + 1).
  -define(glGetConvolutionFilterEXT,                                 ?glCopyConvolutionFilter2DEXT                              + 1).
  -define(glGetConvolutionParameterfvEXT,                            ?glGetConvolutionFilterEXT                                 + 1).
  -define(glGetConvolutionParameterivEXT,                            ?glGetConvolutionParameterfvEXT                            + 1).
  -define(glGetSeparableFilterEXT,                                   ?glGetConvolutionParameterivEXT                            + 1).
  -define(glSeparableFilter2DEXT,                                    ?glGetSeparableFilterEXT                                   + 1).

%% GL_EXT_color_matrix


%% GL_SGI_color_matrix


%% GL_SGI_color_table

  -define(glColorTableSGI,                                           ?glSeparableFilter2DEXT                                    + 1).
  -define(glColorTableParameterfvSGI,                                ?glColorTableSGI                                           + 1).
  -define(glColorTableParameterivSGI,                                ?glColorTableParameterfvSGI                                + 1).
  -define(glCopyColorTableSGI,                                       ?glColorTableParameterivSGI                                + 1).
  -define(glGetColorTableSGI,                                        ?glCopyColorTableSGI                                       + 1).
  -define(glGetColorTableParameterfvSGI,                             ?glGetColorTableSGI                                        + 1).
  -define(glGetColorTableParameterivSGI,                             ?glGetColorTableParameterfvSGI                             + 1).

%% GL_SGIX_pixel_texture

  -define(glPixelTexGenSGIX,                                         ?glGetColorTableParameterivSGI                             + 1).

%% GL_SGIS_pixel_texture

  -define(glPixelTexGenParameteriSGIS,                               ?glPixelTexGenSGIX                                         + 1).
  -define(glPixelTexGenParameterivSGIS,                              ?glPixelTexGenParameteriSGIS                               + 1).
  -define(glPixelTexGenParameterfSGIS,                               ?glPixelTexGenParameterivSGIS                              + 1).
  -define(glPixelTexGenParameterfvSGIS,                              ?glPixelTexGenParameterfSGIS                               + 1).
  -define(glGetPixelTexGenParameterivSGIS,                           ?glPixelTexGenParameterfvSGIS                              + 1).
  -define(glGetPixelTexGenParameterfvSGIS,                           ?glGetPixelTexGenParameterivSGIS                           + 1).

%% GL_SGIS_texture4D

  -define(glTexImage4DSGIS,                                          ?glGetPixelTexGenParameterfvSGIS                           + 1).
  -define(glTexSubImage4DSGIS,                                       ?glTexImage4DSGIS                                          + 1).

%% GL_SGI_texture_color_table


%% GL_EXT_cmyka


%% GL_EXT_texture_object

  -define(glAreTexturesResidentEXT,                                  ?glTexSubImage4DSGIS                                       + 1).
  -define(glBindTextureEXT,                                          ?glAreTexturesResidentEXT                                  + 1).
  -define(glDeleteTexturesEXT,                                       ?glBindTextureEXT                                          + 1).
  -define(glGenTexturesEXT,                                          ?glDeleteTexturesEXT                                       + 1).
  -define(glIsTextureEXT,                                            ?glGenTexturesEXT                                          + 1).
  -define(glPrioritizeTexturesEXT,                                   ?glIsTextureEXT                                            + 1).

%% GL_SGIS_detail_texture

  -define(glDetailTexFuncSGIS,                                       ?glPrioritizeTexturesEXT                                   + 1).
  -define(glGetDetailTexFuncSGIS,                                    ?glDetailTexFuncSGIS                                       + 1).

%% GL_SGIS_sharpen_texture

  -define(glSharpenTexFuncSGIS,                                      ?glGetDetailTexFuncSGIS                                    + 1).
  -define(glGetSharpenTexFuncSGIS,                                   ?glSharpenTexFuncSGIS                                      + 1).

%% GL_EXT_packed_pixels


%% GL_SGIS_texture_lod


%% GL_SGIS_multisample

  -define(glSampleMaskSGIS,                                          ?glGetSharpenTexFuncSGIS                                   + 1).
  -define(glSamplePatternSGIS,                                       ?glSampleMaskSGIS                                          + 1).

%% GL_EXT_rescale_normal


%% GL_EXT_vertex_array

  -define(glArrayElementEXT,                                         ?glSamplePatternSGIS                                       + 1).
  -define(glColorPointerEXT,                                         ?glArrayElementEXT                                         + 1).
  -define(glDrawArraysEXT,                                           ?glColorPointerEXT                                         + 1).
  -define(glEdgeFlagPointerEXT,                                      ?glDrawArraysEXT                                           + 1).
  -define(glGetPointervEXT,                                          ?glEdgeFlagPointerEXT                                      + 1).
  -define(glIndexPointerEXT,                                         ?glGetPointervEXT                                          + 1).
  -define(glNormalPointerEXT,                                        ?glIndexPointerEXT                                         + 1).
  -define(glTexCoordPointerEXT,                                      ?glNormalPointerEXT                                        + 1).
  -define(glVertexPointerEXT,                                        ?glTexCoordPointerEXT                                      + 1).

%% GL_EXT_misc_attribute


%% GL_SGIS_generate_mipmap


%% GL_SGIX_clipmap


%% GL_SGIX_shadow


%% GL_SGIS_texture_edge_clamp


%% GL_SGIS_texture_border_clamp


%% GL_EXT_blend_minmax

  -define(glBlendEquationEXT,                                        ?glVertexPointerEXT                                        + 1).

%% GL_EXT_blend_subtract


%% GL_EXT_blend_logic_op


%% GL_SGIX_interlace


%% GL_SGIX_pixel_tiles


%% GL_SGIX_texture_select


%% GL_SGIX_sprite

  -define(glSpriteParameterfSGIX,                                    ?glBlendEquationEXT                                        + 1).
  -define(glSpriteParameterfvSGIX,                                   ?glSpriteParameterfSGIX                                    + 1).
  -define(glSpriteParameteriSGIX,                                    ?glSpriteParameterfvSGIX                                   + 1).
  -define(glSpriteParameterivSGIX,                                   ?glSpriteParameteriSGIX                                    + 1).

%% GL_SGIX_texture_multi_buffer


%% GL_EXT_point_parameters

  -define(glPointParameterfEXT,                                      ?glSpriteParameterivSGIX                                   + 1).
  -define(glPointParameterfvEXT,                                     ?glPointParameterfEXT                                      + 1).

%% GL_SGIS_point_parameters

  -define(glPointParameterfSGIS,                                     ?glPointParameterfvEXT                                     + 1).
  -define(glPointParameterfvSGIS,                                    ?glPointParameterfSGIS                                     + 1).

%% GL_SGIX_instruments

  -define(glGetInstrumentsSGIX,                                      ?glPointParameterfvSGIS                                    + 1).
  -define(glInstrumentsBufferSGIX,                                   ?glGetInstrumentsSGIX                                      + 1).
  -define(glPollInstrumentsSGIX,                                     ?glInstrumentsBufferSGIX                                   + 1).
  -define(glReadInstrumentsSGIX,                                     ?glPollInstrumentsSGIX                                     + 1).
  -define(glStartInstrumentsSGIX,                                    ?glReadInstrumentsSGIX                                     + 1).
  -define(glStopInstrumentsSGIX,                                     ?glStartInstrumentsSGIX                                    + 1).

%% GL_SGIX_texture_scale_bias


%% GL_SGIX_framezoom

  -define(glFrameZoomSGIX,                                           ?glStopInstrumentsSGIX                                     + 1).

%% GL_SGIX_tag_sample_buffer

  -define(glTagSampleBufferSGIX,                                     ?glFrameZoomSGIX                                           + 1).

%% GL_SGIX_polynomial_ffd

  -define(glDeformationMap3dSGIX,                                    ?glTagSampleBufferSGIX                                     + 1).
  -define(glDeformationMap3fSGIX,                                    ?glDeformationMap3dSGIX                                    + 1).
  -define(glDeformSGIX,                                              ?glDeformationMap3fSGIX                                    + 1).
  -define(glLoadIdentityDeformationMapSGIX,                          ?glDeformSGIX                                              + 1).

%% GL_SGIX_reference_plane

  -define(glReferencePlaneSGIX,                                      ?glLoadIdentityDeformationMapSGIX                          + 1).

%% GL_SGIX_flush_raster

  -define(glFlushRasterSGIX,                                         ?glReferencePlaneSGIX                                      + 1).

%% GL_SGIX_depth_texture


%% GL_SGIS_fog_function

  -define(glFogFuncSGIS,                                             ?glFlushRasterSGIX                                         + 1).
  -define(glGetFogFuncSGIS,                                          ?glFogFuncSGIS                                             + 1).

%% GL_SGIX_fog_offset


%% GL_HP_image_transform

  -define(glImageTransformParameteriHP,                              ?glGetFogFuncSGIS                                          + 1).
  -define(glImageTransformParameterfHP,                              ?glImageTransformParameteriHP                              + 1).
  -define(glImageTransformParameterivHP,                             ?glImageTransformParameterfHP                              + 1).
  -define(glImageTransformParameterfvHP,                             ?glImageTransformParameterivHP                             + 1).
  -define(glGetImageTransformParameterivHP,                          ?glImageTransformParameterfvHP                             + 1).
  -define(glGetImageTransformParameterfvHP,                          ?glGetImageTransformParameterivHP                          + 1).

%% GL_HP_convolution_border_modes


%% GL_SGIX_texture_add_env


%% GL_EXT_color_subtable

  -define(glColorSubTableEXT,                                        ?glGetImageTransformParameterfvHP                          + 1).
  -define(glCopyColorSubTableEXT,                                    ?glColorSubTableEXT                                        + 1).

%% GL_PGI_vertex_hints


%% GL_PGI_misc_hints

  -define(glHintPGI,                                                 ?glCopyColorSubTableEXT                                    + 1).

%% GL_EXT_paletted_texture

  -define(glColorTableEXT,                                           ?glHintPGI                                                 + 1).
  -define(glGetColorTableEXT,                                        ?glColorTableEXT                                           + 1).
  -define(glGetColorTableParameterivEXT,                             ?glGetColorTableEXT                                        + 1).
  -define(glGetColorTableParameterfvEXT,                             ?glGetColorTableParameterivEXT                             + 1).

%% GL_EXT_clip_volume_hint


%% GL_SGIX_list_priority

  -define(glGetListParameterfvSGIX,                                  ?glGetColorTableParameterfvEXT                             + 1).
  -define(glGetListParameterivSGIX,                                  ?glGetListParameterfvSGIX                                  + 1).
  -define(glListParameterfSGIX,                                      ?glGetListParameterivSGIX                                  + 1).
  -define(glListParameterfvSGIX,                                     ?glListParameterfSGIX                                      + 1).
  -define(glListParameteriSGIX,                                      ?glListParameterfvSGIX                                     + 1).
  -define(glListParameterivSGIX,                                     ?glListParameteriSGIX                                      + 1).

%% GL_SGIX_ir_instrument1


%% GL_SGIX_calligraphic_fragment


%% GL_SGIX_texture_lod_bias


%% GL_SGIX_shadow_ambient


%% GL_EXT_index_texture


%% GL_EXT_index_material

  -define(glIndexMaterialEXT,                                        ?glListParameterivSGIX                                     + 1).

%% GL_EXT_index_func

  -define(glIndexFuncEXT,                                            ?glIndexMaterialEXT                                        + 1).

%% GL_EXT_index_array_formats


%% GL_EXT_compiled_vertex_array

  -define(glLockArraysEXT,                                           ?glIndexFuncEXT                                            + 1).
  -define(glUnlockArraysEXT,                                         ?glLockArraysEXT                                           + 1).

%% GL_EXT_cull_vertex

  -define(glCullParameterdvEXT,                                      ?glUnlockArraysEXT                                         + 1).
  -define(glCullParameterfvEXT,                                      ?glCullParameterdvEXT                                      + 1).

%% GL_SGIX_ycrcb


%% GL_SGIX_fragment_lighting

  -define(glFragmentColorMaterialSGIX,                               ?glCullParameterfvEXT                                      + 1).
  -define(glFragmentLightfSGIX,                                      ?glFragmentColorMaterialSGIX                               + 1).
  -define(glFragmentLightfvSGIX,                                     ?glFragmentLightfSGIX                                      + 1).
  -define(glFragmentLightiSGIX,                                      ?glFragmentLightfvSGIX                                     + 1).
  -define(glFragmentLightivSGIX,                                     ?glFragmentLightiSGIX                                      + 1).
  -define(glFragmentLightModelfSGIX,                                 ?glFragmentLightivSGIX                                     + 1).
  -define(glFragmentLightModelfvSGIX,                                ?glFragmentLightModelfSGIX                                 + 1).
  -define(glFragmentLightModeliSGIX,                                 ?glFragmentLightModelfvSGIX                                + 1).
  -define(glFragmentLightModelivSGIX,                                ?glFragmentLightModeliSGIX                                 + 1).
  -define(glFragmentMaterialfSGIX,                                   ?glFragmentLightModelivSGIX                                + 1).
  -define(glFragmentMaterialfvSGIX,                                  ?glFragmentMaterialfSGIX                                   + 1).
  -define(glFragmentMaterialiSGIX,                                   ?glFragmentMaterialfvSGIX                                  + 1).
  -define(glFragmentMaterialivSGIX,                                  ?glFragmentMaterialiSGIX                                   + 1).
  -define(glGetFragmentLightfvSGIX,                                  ?glFragmentMaterialivSGIX                                  + 1).
  -define(glGetFragmentLightivSGIX,                                  ?glGetFragmentLightfvSGIX                                  + 1).
  -define(glGetFragmentMaterialfvSGIX,                               ?glGetFragmentLightivSGIX                                  + 1).
  -define(glGetFragmentMaterialivSGIX,                               ?glGetFragmentMaterialfvSGIX                               + 1).
  -define(glLightEnviSGIX,                                           ?glGetFragmentMaterialivSGIX                               + 1).

%% GL_IBM_rasterpos_clip


%% GL_HP_texture_lighting


%% GL_EXT_draw_range_elements

  -define(glDrawRangeElementsEXT,                                    ?glLightEnviSGIX                                           + 1).

%% GL_WIN_phong_shading


%% GL_WIN_specular_fog


%% GL_EXT_light_texture

  -define(glApplyTextureEXT,                                         ?glDrawRangeElementsEXT                                    + 1).
  -define(glTextureLightEXT,                                         ?glApplyTextureEXT                                         + 1).
  -define(glTextureMaterialEXT,                                      ?glTextureLightEXT                                         + 1).

%% GL_SGIX_blend_alpha_minmax


%% GL_EXT_bgra


%% GL_SGIX_async

  -define(glAsyncMarkerSGIX,                                         ?glTextureMaterialEXT                                      + 1).
  -define(glFinishAsyncSGIX,                                         ?glAsyncMarkerSGIX                                         + 1).
  -define(glPollAsyncSGIX,                                           ?glFinishAsyncSGIX                                         + 1).
  -define(glGenAsyncMarkersSGIX,                                     ?glPollAsyncSGIX                                           + 1).
  -define(glDeleteAsyncMarkersSGIX,                                  ?glGenAsyncMarkersSGIX                                     + 1).
  -define(glIsAsyncMarkerSGIX,                                       ?glDeleteAsyncMarkersSGIX                                  + 1).

%% GL_SGIX_async_pixel


%% GL_SGIX_async_histogram


%% GL_INTEL_parallel_arrays

  -define(glVertexPointervINTEL,                                     ?glIsAsyncMarkerSGIX                                       + 1).
  -define(glNormalPointervINTEL,                                     ?glVertexPointervINTEL                                     + 1).
  -define(glColorPointervINTEL,                                      ?glNormalPointervINTEL                                     + 1).
  -define(glTexCoordPointervINTEL,                                   ?glColorPointervINTEL                                      + 1).

%% GL_HP_occlusion_test


%% GL_EXT_pixel_transform

  -define(glPixelTransformParameteriEXT,                             ?glTexCoordPointervINTEL                                   + 1).
  -define(glPixelTransformParameterfEXT,                             ?glPixelTransformParameteriEXT                             + 1).
  -define(glPixelTransformParameterivEXT,                            ?glPixelTransformParameterfEXT                             + 1).
  -define(glPixelTransformParameterfvEXT,                            ?glPixelTransformParameterivEXT                            + 1).
  -define(glGetPixelTransformParameterivEXT,                         ?glPixelTransformParameterfvEXT                            + 1).
  -define(glGetPixelTransformParameterfvEXT,                         ?glGetPixelTransformParameterivEXT                         + 1).

%% GL_EXT_pixel_transform_color_table


%% GL_EXT_shared_texture_palette


%% GL_EXT_separate_specular_color


%% GL_EXT_secondary_color

  -define(glSecondaryColor3bEXT,                                     ?glGetPixelTransformParameterfvEXT                         + 1).
  -define(glSecondaryColor3bvEXT,                                    ?glSecondaryColor3bEXT                                     + 1).
  -define(glSecondaryColor3dEXT,                                     ?glSecondaryColor3bvEXT                                    + 1).
  -define(glSecondaryColor3dvEXT,                                    ?glSecondaryColor3dEXT                                     + 1).
  -define(glSecondaryColor3fEXT,                                     ?glSecondaryColor3dvEXT                                    + 1).
  -define(glSecondaryColor3fvEXT,                                    ?glSecondaryColor3fEXT                                     + 1).
  -define(glSecondaryColor3iEXT,                                     ?glSecondaryColor3fvEXT                                    + 1).
  -define(glSecondaryColor3ivEXT,                                    ?glSecondaryColor3iEXT                                     + 1).
  -define(glSecondaryColor3sEXT,                                     ?glSecondaryColor3ivEXT                                    + 1).
  -define(glSecondaryColor3svEXT,                                    ?glSecondaryColor3sEXT                                     + 1).
  -define(glSecondaryColor3ubEXT,                                    ?glSecondaryColor3svEXT                                    + 1).
  -define(glSecondaryColor3ubvEXT,                                   ?glSecondaryColor3ubEXT                                    + 1).
  -define(glSecondaryColor3uiEXT,                                    ?glSecondaryColor3ubvEXT                                   + 1).
  -define(glSecondaryColor3uivEXT,                                   ?glSecondaryColor3uiEXT                                    + 1).
  -define(glSecondaryColor3usEXT,                                    ?glSecondaryColor3uivEXT                                   + 1).
  -define(glSecondaryColor3usvEXT,                                   ?glSecondaryColor3usEXT                                    + 1).
  -define(glSecondaryColorPointerEXT,                                ?glSecondaryColor3usvEXT                                   + 1).

%% GL_EXT_texture_perturb_normal

  -define(glTextureNormalEXT,                                        ?glSecondaryColorPointerEXT                                + 1).

%% GL_EXT_multi_draw_arrays

  -define(glMultiDrawArraysEXT,                                      ?glTextureNormalEXT                                        + 1).
  -define(glMultiDrawElementsEXT,                                    ?glMultiDrawArraysEXT                                      + 1).

%% GL_EXT_fog_coord

  -define(glFogCoordfEXT,                                            ?glMultiDrawElementsEXT                                    + 1).
  -define(glFogCoordfvEXT,                                           ?glFogCoordfEXT                                            + 1).
  -define(glFogCoorddEXT,                                            ?glFogCoordfvEXT                                           + 1).
  -define(glFogCoorddvEXT,                                           ?glFogCoorddEXT                                            + 1).
  -define(glFogCoordPointerEXT,                                      ?glFogCoorddvEXT                                           + 1).

%% GL_REND_screen_coordinates


%% GL_EXT_coordinate_frame

  -define(glTangent3bEXT,                                            ?glFogCoordPointerEXT                                      + 1).
  -define(glTangent3bvEXT,                                           ?glTangent3bEXT                                            + 1).
  -define(glTangent3dEXT,                                            ?glTangent3bvEXT                                           + 1).
  -define(glTangent3dvEXT,                                           ?glTangent3dEXT                                            + 1).
  -define(glTangent3fEXT,                                            ?glTangent3dvEXT                                           + 1).
  -define(glTangent3fvEXT,                                           ?glTangent3fEXT                                            + 1).
  -define(glTangent3iEXT,                                            ?glTangent3fvEXT                                           + 1).
  -define(glTangent3ivEXT,                                           ?glTangent3iEXT                                            + 1).
  -define(glTangent3sEXT,                                            ?glTangent3ivEXT                                           + 1).
  -define(glTangent3svEXT,                                           ?glTangent3sEXT                                            + 1).
  -define(glBinormal3bEXT,                                           ?glTangent3svEXT                                           + 1).
  -define(glBinormal3bvEXT,                                          ?glBinormal3bEXT                                           + 1).
  -define(glBinormal3dEXT,                                           ?glBinormal3bvEXT                                          + 1).
  -define(glBinormal3dvEXT,                                          ?glBinormal3dEXT                                           + 1).
  -define(glBinormal3fEXT,                                           ?glBinormal3dvEXT                                          + 1).
  -define(glBinormal3fvEXT,                                          ?glBinormal3fEXT                                           + 1).
  -define(glBinormal3iEXT,                                           ?glBinormal3fvEXT                                          + 1).
  -define(glBinormal3ivEXT,                                          ?glBinormal3iEXT                                           + 1).
  -define(glBinormal3sEXT,                                           ?glBinormal3ivEXT                                          + 1).
  -define(glBinormal3svEXT,                                          ?glBinormal3sEXT                                           + 1).
  -define(glTangentPointerEXT,                                       ?glBinormal3svEXT                                          + 1).
  -define(glBinormalPointerEXT,                                      ?glTangentPointerEXT                                       + 1).

%% GL_EXT_texture_env_combine


%% GL_APPLE_specular_vector


%% GL_APPLE_transform_hint


%% GL_SGIX_fog_scale


%% GL_SUNX_constant_data

  -define(glFinishTextureSUNX,                                       ?glBinormalPointerEXT                                      + 1).

%% GL_SUN_global_alpha

  -define(glGlobalAlphaFactorbSUN,                                   ?glFinishTextureSUNX                                       + 1).
  -define(glGlobalAlphaFactorsSUN,                                   ?glGlobalAlphaFactorbSUN                                   + 1).
  -define(glGlobalAlphaFactoriSUN,                                   ?glGlobalAlphaFactorsSUN                                   + 1).
  -define(glGlobalAlphaFactorfSUN,                                   ?glGlobalAlphaFactoriSUN                                   + 1).
  -define(glGlobalAlphaFactordSUN,                                   ?glGlobalAlphaFactorfSUN                                   + 1).
  -define(glGlobalAlphaFactorubSUN,                                  ?glGlobalAlphaFactordSUN                                   + 1).
  -define(glGlobalAlphaFactorusSUN,                                  ?glGlobalAlphaFactorubSUN                                  + 1).
  -define(glGlobalAlphaFactoruiSUN,                                  ?glGlobalAlphaFactorusSUN                                  + 1).

%% GL_SUN_triangle_list

  -define(glReplacementCodeuiSUN,                                    ?glGlobalAlphaFactoruiSUN                                  + 1).
  -define(glReplacementCodeusSUN,                                    ?glReplacementCodeuiSUN                                    + 1).
  -define(glReplacementCodeubSUN,                                    ?glReplacementCodeusSUN                                    + 1).
  -define(glReplacementCodeuivSUN,                                   ?glReplacementCodeubSUN                                    + 1).
  -define(glReplacementCodeusvSUN,                                   ?glReplacementCodeuivSUN                                   + 1).
  -define(glReplacementCodeubvSUN,                                   ?glReplacementCodeusvSUN                                   + 1).
  -define(glReplacementCodePointerSUN,                               ?glReplacementCodeubvSUN                                   + 1).

%% GL_SUN_vertex

  -define(glColor4ubVertex2fSUN,                                     ?glReplacementCodePointerSUN                               + 1).
  -define(glColor4ubVertex2fvSUN,                                    ?glColor4ubVertex2fSUN                                     + 1).
  -define(glColor4ubVertex3fSUN,                                     ?glColor4ubVertex2fvSUN                                    + 1).
  -define(glColor4ubVertex3fvSUN,                                    ?glColor4ubVertex3fSUN                                     + 1).
  -define(glColor3fVertex3fSUN,                                      ?glColor4ubVertex3fvSUN                                    + 1).
  -define(glColor3fVertex3fvSUN,                                     ?glColor3fVertex3fSUN                                      + 1).
  -define(glNormal3fVertex3fSUN,                                     ?glColor3fVertex3fvSUN                                     + 1).
  -define(glNormal3fVertex3fvSUN,                                    ?glNormal3fVertex3fSUN                                     + 1).
  -define(glColor4fNormal3fVertex3fSUN,                              ?glNormal3fVertex3fvSUN                                    + 1).
  -define(glColor4fNormal3fVertex3fvSUN,                             ?glColor4fNormal3fVertex3fSUN                              + 1).
  -define(glTexCoord2fVertex3fSUN,                                   ?glColor4fNormal3fVertex3fvSUN                             + 1).
  -define(glTexCoord2fVertex3fvSUN,                                  ?glTexCoord2fVertex3fSUN                                   + 1).
  -define(glTexCoord4fVertex4fSUN,                                   ?glTexCoord2fVertex3fvSUN                                  + 1).
  -define(glTexCoord4fVertex4fvSUN,                                  ?glTexCoord4fVertex4fSUN                                   + 1).
  -define(glTexCoord2fColor4ubVertex3fSUN,                           ?glTexCoord4fVertex4fvSUN                                  + 1).
  -define(glTexCoord2fColor4ubVertex3fvSUN,                          ?glTexCoord2fColor4ubVertex3fSUN                           + 1).
  -define(glTexCoord2fColor3fVertex3fSUN,                            ?glTexCoord2fColor4ubVertex3fvSUN                          + 1).
  -define(glTexCoord2fColor3fVertex3fvSUN,                           ?glTexCoord2fColor3fVertex3fSUN                            + 1).
  -define(glTexCoord2fNormal3fVertex3fSUN,                           ?glTexCoord2fColor3fVertex3fvSUN                           + 1).
  -define(glTexCoord2fNormal3fVertex3fvSUN,                          ?glTexCoord2fNormal3fVertex3fSUN                           + 1).
  -define(glTexCoord2fColor4fNormal3fVertex3fSUN,                    ?glTexCoord2fNormal3fVertex3fvSUN                          + 1).
  -define(glTexCoord2fColor4fNormal3fVertex3fvSUN,                   ?glTexCoord2fColor4fNormal3fVertex3fSUN                    + 1).
  -define(glTexCoord4fColor4fNormal3fVertex4fSUN,                    ?glTexCoord2fColor4fNormal3fVertex3fvSUN                   + 1).
  -define(glTexCoord4fColor4fNormal3fVertex4fvSUN,                   ?glTexCoord4fColor4fNormal3fVertex4fSUN                    + 1).
  -define(glReplacementCodeuiVertex3fSUN,                            ?glTexCoord4fColor4fNormal3fVertex4fvSUN                   + 1).
  -define(glReplacementCodeuiVertex3fvSUN,                           ?glReplacementCodeuiVertex3fSUN                            + 1).
  -define(glReplacementCodeuiColor4ubVertex3fSUN,                    ?glReplacementCodeuiVertex3fvSUN                           + 1).
  -define(glReplacementCodeuiColor4ubVertex3fvSUN,                   ?glReplacementCodeuiColor4ubVertex3fSUN                    + 1).
  -define(glReplacementCodeuiColor3fVertex3fSUN,                     ?glReplacementCodeuiColor4ubVertex3fvSUN                   + 1).
  -define(glReplacementCodeuiColor3fVertex3fvSUN,                    ?glReplacementCodeuiColor3fVertex3fSUN                     + 1).
  -define(glReplacementCodeuiNormal3fVertex3fSUN,                    ?glReplacementCodeuiColor3fVertex3fvSUN                    + 1).
  -define(glReplacementCodeuiNormal3fVertex3fvSUN,                   ?glReplacementCodeuiNormal3fVertex3fSUN                    + 1).
  -define(glReplacementCodeuiColor4fNormal3fVertex3fSUN,             ?glReplacementCodeuiNormal3fVertex3fvSUN                   + 1).
  -define(glReplacementCodeuiColor4fNormal3fVertex3fvSUN,            ?glReplacementCodeuiColor4fNormal3fVertex3fSUN             + 1).
  -define(glReplacementCodeuiTexCoord2fVertex3fSUN,                  ?glReplacementCodeuiColor4fNormal3fVertex3fvSUN            + 1).
  -define(glReplacementCodeuiTexCoord2fVertex3fvSUN,                 ?glReplacementCodeuiTexCoord2fVertex3fSUN                  + 1).
  -define(glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN,          ?glReplacementCodeuiTexCoord2fVertex3fvSUN                 + 1).
  -define(glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN,         ?glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN          + 1).
  -define(glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN,   ?glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN         + 1).
  -define(glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN,  ?glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN   + 1).

%% GL_EXT_blend_func_separate

  -define(glBlendFuncSeparateEXT,                                    ?glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN  + 1).

%% GL_INGR_blend_func_separate

  -define(glBlendFuncSeparateINGR,                                   ?glBlendFuncSeparateEXT                                    + 1).

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

  -define(glVertexWeightfEXT,                                        ?glBlendFuncSeparateINGR                                   + 1).
  -define(glVertexWeightfvEXT,                                       ?glVertexWeightfEXT                                        + 1).
  -define(glVertexWeightPointerEXT,                                  ?glVertexWeightfvEXT                                       + 1).

%% GL_NV_light_max_exponent


%% GL_NV_vertex_array_range

  -define(glFlushVertexArrayRangeNV,                                 ?glVertexWeightPointerEXT                                  + 1).
  -define(glVertexArrayRangeNV,                                      ?glFlushVertexArrayRangeNV                                 + 1).

%% GL_NV_register_combiners

  -define(glCombinerParameterfvNV,                                   ?glVertexArrayRangeNV                                      + 1).
  -define(glCombinerParameterfNV,                                    ?glCombinerParameterfvNV                                   + 1).
  -define(glCombinerParameterivNV,                                   ?glCombinerParameterfNV                                    + 1).
  -define(glCombinerParameteriNV,                                    ?glCombinerParameterivNV                                   + 1).
  -define(glCombinerInputNV,                                         ?glCombinerParameteriNV                                    + 1).
  -define(glCombinerOutputNV,                                        ?glCombinerInputNV                                         + 1).
  -define(glFinalCombinerInputNV,                                    ?glCombinerOutputNV                                        + 1).
  -define(glGetCombinerInputParameterfvNV,                           ?glFinalCombinerInputNV                                    + 1).
  -define(glGetCombinerInputParameterivNV,                           ?glGetCombinerInputParameterfvNV                           + 1).
  -define(glGetCombinerOutputParameterfvNV,                          ?glGetCombinerInputParameterivNV                           + 1).
  -define(glGetCombinerOutputParameterivNV,                          ?glGetCombinerOutputParameterfvNV                          + 1).
  -define(glGetFinalCombinerInputParameterfvNV,                      ?glGetCombinerOutputParameterivNV                          + 1).
  -define(glGetFinalCombinerInputParameterivNV,                      ?glGetFinalCombinerInputParameterfvNV                      + 1).

%% GL_NV_fog_distance


%% GL_NV_texgen_emboss


%% GL_NV_blend_square


%% GL_NV_texture_env_combine4


%% GL_MESA_resize_buffers

  -define(glResizeBuffersMESA,                                       ?glGetFinalCombinerInputParameterivNV                      + 1).

%% GL_MESA_window_pos

  -define(glWindowPos2dMESA,                                         ?glResizeBuffersMESA                                       + 1).
  -define(glWindowPos2dvMESA,                                        ?glWindowPos2dMESA                                         + 1).
  -define(glWindowPos2fMESA,                                         ?glWindowPos2dvMESA                                        + 1).
  -define(glWindowPos2fvMESA,                                        ?glWindowPos2fMESA                                         + 1).
  -define(glWindowPos2iMESA,                                         ?glWindowPos2fvMESA                                        + 1).
  -define(glWindowPos2ivMESA,                                        ?glWindowPos2iMESA                                         + 1).
  -define(glWindowPos2sMESA,                                         ?glWindowPos2ivMESA                                        + 1).
  -define(glWindowPos2svMESA,                                        ?glWindowPos2sMESA                                         + 1).
  -define(glWindowPos3dMESA,                                         ?glWindowPos2svMESA                                        + 1).
  -define(glWindowPos3dvMESA,                                        ?glWindowPos3dMESA                                         + 1).
  -define(glWindowPos3fMESA,                                         ?glWindowPos3dvMESA                                        + 1).
  -define(glWindowPos3fvMESA,                                        ?glWindowPos3fMESA                                         + 1).
  -define(glWindowPos3iMESA,                                         ?glWindowPos3fvMESA                                        + 1).
  -define(glWindowPos3ivMESA,                                        ?glWindowPos3iMESA                                         + 1).
  -define(glWindowPos3sMESA,                                         ?glWindowPos3ivMESA                                        + 1).
  -define(glWindowPos3svMESA,                                        ?glWindowPos3sMESA                                         + 1).
  -define(glWindowPos4dMESA,                                         ?glWindowPos3svMESA                                        + 1).
  -define(glWindowPos4dvMESA,                                        ?glWindowPos4dMESA                                         + 1).
  -define(glWindowPos4fMESA,                                         ?glWindowPos4dvMESA                                        + 1).
  -define(glWindowPos4fvMESA,                                        ?glWindowPos4fMESA                                         + 1).
  -define(glWindowPos4iMESA,                                         ?glWindowPos4fvMESA                                        + 1).
  -define(glWindowPos4ivMESA,                                        ?glWindowPos4iMESA                                         + 1).
  -define(glWindowPos4sMESA,                                         ?glWindowPos4ivMESA                                        + 1).
  -define(glWindowPos4svMESA,                                        ?glWindowPos4sMESA                                         + 1).

%% GL_IBM_cull_vertex


%% GL_IBM_multimode_draw_arrays

  -define(glMultiModeDrawArraysIBM,                                  ?glWindowPos4svMESA                                        + 1).
  -define(glMultiModeDrawElementsIBM,                                ?glMultiModeDrawArraysIBM                                  + 1).

%% GL_IBM_vertex_array_lists

  -define(glColorPointerListIBM,                                     ?glMultiModeDrawElementsIBM                                + 1).
  -define(glSecondaryColorPointerListIBM,                            ?glColorPointerListIBM                                     + 1).
  -define(glEdgeFlagPointerListIBM,                                  ?glSecondaryColorPointerListIBM                            + 1).
  -define(glFogCoordPointerListIBM,                                  ?glEdgeFlagPointerListIBM                                  + 1).
  -define(glIndexPointerListIBM,                                     ?glFogCoordPointerListIBM                                  + 1).
  -define(glNormalPointerListIBM,                                    ?glIndexPointerListIBM                                     + 1).
  -define(glTexCoordPointerListIBM,                                  ?glNormalPointerListIBM                                    + 1).
  -define(glVertexPointerListIBM,                                    ?glTexCoordPointerListIBM                                  + 1).

%% GL_SGIX_subsample


%% GL_SGIX_ycrcba


%% GL_SGIX_ycrcb_subsample


%% GL_SGIX_depth_pass_instrument


%% GL_3DFX_texture_compression_FXT1


%% GL_3DFX_multisample


%% GL_3DFX_tbuffer

  -define(glTbufferMask3DFX,                                         ?glVertexPointerListIBM                                    + 1).

%% GL_EXT_multisample

  -define(glSampleMaskEXT,                                           ?glTbufferMask3DFX                                         + 1).
  -define(glSamplePatternEXT,                                        ?glSampleMaskEXT                                           + 1).

%% GL_SGIX_vertex_preclip


%% GL_SGIX_convolution_accuracy


%% GL_SGIX_resample


%% GL_SGIS_point_line_texgen


%% GL_SGIS_texture_color_mask

  -define(glTextureColorMaskSGIS,                                    ?glSamplePatternEXT                                        + 1).

%% GL_SGIX_igloo_interface

  -define(glIglooInterfaceSGIX,                                      ?glTextureColorMaskSGIS                                    + 1).

%% GL_EXT_texture_env_dot3


%% GL_ATI_texture_mirror_once


%% GL_NV_fence

  -define(glDeleteFencesNV,                                          ?glIglooInterfaceSGIX                                      + 1).
  -define(glGenFencesNV,                                             ?glDeleteFencesNV                                          + 1).
  -define(glIsFenceNV,                                               ?glGenFencesNV                                             + 1).
  -define(glTestFenceNV,                                             ?glIsFenceNV                                               + 1).
  -define(glGetFenceivNV,                                            ?glTestFenceNV                                             + 1).
  -define(glFinishFenceNV,                                           ?glGetFenceivNV                                            + 1).
  -define(glSetFenceNV,                                              ?glFinishFenceNV                                           + 1).

%% GL_NV_evaluators

  -define(glMapControlPointsNV,                                      ?glSetFenceNV                                              + 1).
  -define(glMapParameterivNV,                                        ?glMapControlPointsNV                                      + 1).
  -define(glMapParameterfvNV,                                        ?glMapParameterivNV                                        + 1).
  -define(glGetMapControlPointsNV,                                   ?glMapParameterfvNV                                        + 1).
  -define(glGetMapParameterivNV,                                     ?glGetMapControlPointsNV                                   + 1).
  -define(glGetMapParameterfvNV,                                     ?glGetMapParameterivNV                                     + 1).
  -define(glGetMapAttribParameterivNV,                               ?glGetMapParameterfvNV                                     + 1).
  -define(glGetMapAttribParameterfvNV,                               ?glGetMapAttribParameterivNV                               + 1).
  -define(glEvalMapsNV,                                              ?glGetMapAttribParameterfvNV                               + 1).

%% GL_NV_packed_depth_stencil


%% GL_NV_register_combiners2

  -define(glCombinerStageParameterfvNV,                              ?glEvalMapsNV                                              + 1).
  -define(glGetCombinerStageParameterfvNV,                           ?glCombinerStageParameterfvNV                              + 1).

%% GL_NV_texture_compression_vtc


%% GL_NV_texture_rectangle


%% GL_NV_texture_shader


%% GL_NV_texture_shader2


%% GL_NV_vertex_array_range2


%% GL_NV_vertex_program

  -define(glAreProgramsResidentNV,                                   ?glGetCombinerStageParameterfvNV                           + 1).
  -define(glBindProgramNV,                                           ?glAreProgramsResidentNV                                   + 1).
  -define(glDeleteProgramsNV,                                        ?glBindProgramNV                                           + 1).
  -define(glExecuteProgramNV,                                        ?glDeleteProgramsNV                                        + 1).
  -define(glGenProgramsNV,                                           ?glExecuteProgramNV                                        + 1).
  -define(glGetProgramParameterdvNV,                                 ?glGenProgramsNV                                           + 1).
  -define(glGetProgramParameterfvNV,                                 ?glGetProgramParameterdvNV                                 + 1).
  -define(glGetProgramivNV,                                          ?glGetProgramParameterfvNV                                 + 1).
  -define(glGetProgramStringNV,                                      ?glGetProgramivNV                                          + 1).
  -define(glGetTrackMatrixivNV,                                      ?glGetProgramStringNV                                      + 1).
  -define(glGetVertexAttribdvNV,                                     ?glGetTrackMatrixivNV                                      + 1).
  -define(glGetVertexAttribfvNV,                                     ?glGetVertexAttribdvNV                                     + 1).
  -define(glGetVertexAttribivNV,                                     ?glGetVertexAttribfvNV                                     + 1).
  -define(glGetVertexAttribPointervNV,                               ?glGetVertexAttribivNV                                     + 1).
  -define(glIsProgramNV,                                             ?glGetVertexAttribPointervNV                               + 1).
  -define(glLoadProgramNV,                                           ?glIsProgramNV                                             + 1).
  -define(glProgramParameter4dNV,                                    ?glLoadProgramNV                                           + 1).
  -define(glProgramParameter4dvNV,                                   ?glProgramParameter4dNV                                    + 1).
  -define(glProgramParameter4fNV,                                    ?glProgramParameter4dvNV                                   + 1).
  -define(glProgramParameter4fvNV,                                   ?glProgramParameter4fNV                                    + 1).
  -define(glProgramParameters4dvNV,                                  ?glProgramParameter4fvNV                                   + 1).
  -define(glProgramParameters4fvNV,                                  ?glProgramParameters4dvNV                                  + 1).
  -define(glRequestResidentProgramsNV,                               ?glProgramParameters4fvNV                                  + 1).
  -define(glTrackMatrixNV,                                           ?glRequestResidentProgramsNV                               + 1).
  -define(glVertexAttribPointerNV,                                   ?glTrackMatrixNV                                           + 1).
  -define(glVertexAttrib1dNV,                                        ?glVertexAttribPointerNV                                   + 1).
  -define(glVertexAttrib1dvNV,                                       ?glVertexAttrib1dNV                                        + 1).
  -define(glVertexAttrib1fNV,                                        ?glVertexAttrib1dvNV                                       + 1).
  -define(glVertexAttrib1fvNV,                                       ?glVertexAttrib1fNV                                        + 1).
  -define(glVertexAttrib1sNV,                                        ?glVertexAttrib1fvNV                                       + 1).
  -define(glVertexAttrib1svNV,                                       ?glVertexAttrib1sNV                                        + 1).
  -define(glVertexAttrib2dNV,                                        ?glVertexAttrib1svNV                                       + 1).
  -define(glVertexAttrib2dvNV,                                       ?glVertexAttrib2dNV                                        + 1).
  -define(glVertexAttrib2fNV,                                        ?glVertexAttrib2dvNV                                       + 1).
  -define(glVertexAttrib2fvNV,                                       ?glVertexAttrib2fNV                                        + 1).
  -define(glVertexAttrib2sNV,                                        ?glVertexAttrib2fvNV                                       + 1).
  -define(glVertexAttrib2svNV,                                       ?glVertexAttrib2sNV                                        + 1).
  -define(glVertexAttrib3dNV,                                        ?glVertexAttrib2svNV                                       + 1).
  -define(glVertexAttrib3dvNV,                                       ?glVertexAttrib3dNV                                        + 1).
  -define(glVertexAttrib3fNV,                                        ?glVertexAttrib3dvNV                                       + 1).
  -define(glVertexAttrib3fvNV,                                       ?glVertexAttrib3fNV                                        + 1).
  -define(glVertexAttrib3sNV,                                        ?glVertexAttrib3fvNV                                       + 1).
  -define(glVertexAttrib3svNV,                                       ?glVertexAttrib3sNV                                        + 1).
  -define(glVertexAttrib4dNV,                                        ?glVertexAttrib3svNV                                       + 1).
  -define(glVertexAttrib4dvNV,                                       ?glVertexAttrib4dNV                                        + 1).
  -define(glVertexAttrib4fNV,                                        ?glVertexAttrib4dvNV                                       + 1).
  -define(glVertexAttrib4fvNV,                                       ?glVertexAttrib4fNV                                        + 1).
  -define(glVertexAttrib4sNV,                                        ?glVertexAttrib4fvNV                                       + 1).
  -define(glVertexAttrib4svNV,                                       ?glVertexAttrib4sNV                                        + 1).
  -define(glVertexAttrib4ubNV,                                       ?glVertexAttrib4svNV                                       + 1).
  -define(glVertexAttrib4ubvNV,                                      ?glVertexAttrib4ubNV                                       + 1).
  -define(glVertexAttribs1dvNV,                                      ?glVertexAttrib4ubvNV                                      + 1).
  -define(glVertexAttribs1fvNV,                                      ?glVertexAttribs1dvNV                                      + 1).
  -define(glVertexAttribs1svNV,                                      ?glVertexAttribs1fvNV                                      + 1).
  -define(glVertexAttribs2dvNV,                                      ?glVertexAttribs1svNV                                      + 1).
  -define(glVertexAttribs2fvNV,                                      ?glVertexAttribs2dvNV                                      + 1).
  -define(glVertexAttribs2svNV,                                      ?glVertexAttribs2fvNV                                      + 1).
  -define(glVertexAttribs3dvNV,                                      ?glVertexAttribs2svNV                                      + 1).
  -define(glVertexAttribs3fvNV,                                      ?glVertexAttribs3dvNV                                      + 1).
  -define(glVertexAttribs3svNV,                                      ?glVertexAttribs3fvNV                                      + 1).
  -define(glVertexAttribs4dvNV,                                      ?glVertexAttribs3svNV                                      + 1).
  -define(glVertexAttribs4fvNV,                                      ?glVertexAttribs4dvNV                                      + 1).
  -define(glVertexAttribs4svNV,                                      ?glVertexAttribs4fvNV                                      + 1).
  -define(glVertexAttribs4ubvNV,                                     ?glVertexAttribs4svNV                                      + 1).

%% GL_SGIX_texture_coordinate_clamp


%% GL_SGIX_scalebias_hint


%% GL_OML_interlace


%% GL_OML_subsample


%% GL_OML_resample


%% GL_NV_copy_depth_to_color


%% GL_ATI_envmap_bumpmap

  -define(glTexBumpParameterivATI,                                   ?glVertexAttribs4ubvNV                                     + 1).
  -define(glTexBumpParameterfvATI,                                   ?glTexBumpParameterivATI                                   + 1).
  -define(glGetTexBumpParameterivATI,                                ?glTexBumpParameterfvATI                                   + 1).
  -define(glGetTexBumpParameterfvATI,                                ?glGetTexBumpParameterivATI                                + 1).

%% GL_ATI_fragment_shader

  -define(glGenFragmentShadersATI,                                   ?glGetTexBumpParameterfvATI                                + 1).
  -define(glBindFragmentShaderATI,                                   ?glGenFragmentShadersATI                                   + 1).
  -define(glDeleteFragmentShaderATI,                                 ?glBindFragmentShaderATI                                   + 1).
  -define(glBeginFragmentShaderATI,                                  ?glDeleteFragmentShaderATI                                 + 1).
  -define(glEndFragmentShaderATI,                                    ?glBeginFragmentShaderATI                                  + 1).
  -define(glPassTexCoordATI,                                         ?glEndFragmentShaderATI                                    + 1).
  -define(glSampleMapATI,                                            ?glPassTexCoordATI                                         + 1).
  -define(glColorFragmentOp1ATI,                                     ?glSampleMapATI                                            + 1).
  -define(glColorFragmentOp2ATI,                                     ?glColorFragmentOp1ATI                                     + 1).
  -define(glColorFragmentOp3ATI,                                     ?glColorFragmentOp2ATI                                     + 1).
  -define(glAlphaFragmentOp1ATI,                                     ?glColorFragmentOp3ATI                                     + 1).
  -define(glAlphaFragmentOp2ATI,                                     ?glAlphaFragmentOp1ATI                                     + 1).
  -define(glAlphaFragmentOp3ATI,                                     ?glAlphaFragmentOp2ATI                                     + 1).
  -define(glSetFragmentShaderConstantATI,                            ?glAlphaFragmentOp3ATI                                     + 1).

%% GL_ATI_pn_triangles

  -define(glPNTrianglesiATI,                                         ?glSetFragmentShaderConstantATI                            + 1).
  -define(glPNTrianglesfATI,                                         ?glPNTrianglesiATI                                         + 1).

%% GL_ATI_vertex_array_object

  -define(glNewObjectBufferATI,                                      ?glPNTrianglesfATI                                         + 1).
  -define(glIsObjectBufferATI,                                       ?glNewObjectBufferATI                                      + 1).
  -define(glUpdateObjectBufferATI,                                   ?glIsObjectBufferATI                                       + 1).
  -define(glGetObjectBufferfvATI,                                    ?glUpdateObjectBufferATI                                   + 1).
  -define(glGetObjectBufferivATI,                                    ?glGetObjectBufferfvATI                                    + 1).
  -define(glFreeObjectBufferATI,                                     ?glGetObjectBufferivATI                                    + 1).
  -define(glArrayObjectATI,                                          ?glFreeObjectBufferATI                                     + 1).
  -define(glGetArrayObjectfvATI,                                     ?glArrayObjectATI                                          + 1).
  -define(glGetArrayObjectivATI,                                     ?glGetArrayObjectfvATI                                     + 1).
  -define(glVariantArrayObjectATI,                                   ?glGetArrayObjectivATI                                     + 1).
  -define(glGetVariantArrayObjectfvATI,                              ?glVariantArrayObjectATI                                   + 1).
  -define(glGetVariantArrayObjectivATI,                              ?glGetVariantArrayObjectfvATI                              + 1).

%% GL_EXT_vertex_shader

  -define(glBeginVertexShaderEXT,                                    ?glGetVariantArrayObjectivATI                              + 1).
  -define(glEndVertexShaderEXT,                                      ?glBeginVertexShaderEXT                                    + 1).
  -define(glBindVertexShaderEXT,                                     ?glEndVertexShaderEXT                                      + 1).
  -define(glGenVertexShadersEXT,                                     ?glBindVertexShaderEXT                                     + 1).
  -define(glDeleteVertexShaderEXT,                                   ?glGenVertexShadersEXT                                     + 1).
  -define(glShaderOp1EXT,                                            ?glDeleteVertexShaderEXT                                   + 1).
  -define(glShaderOp2EXT,                                            ?glShaderOp1EXT                                            + 1).
  -define(glShaderOp3EXT,                                            ?glShaderOp2EXT                                            + 1).
  -define(glSwizzleEXT,                                              ?glShaderOp3EXT                                            + 1).
  -define(glWriteMaskEXT,                                            ?glSwizzleEXT                                              + 1).
  -define(glInsertComponentEXT,                                      ?glWriteMaskEXT                                            + 1).
  -define(glExtractComponentEXT,                                     ?glInsertComponentEXT                                      + 1).
  -define(glGenSymbolsEXT,                                           ?glExtractComponentEXT                                     + 1).
  -define(glSetInvariantEXT,                                         ?glGenSymbolsEXT                                           + 1).
  -define(glSetLocalConstantEXT,                                     ?glSetInvariantEXT                                         + 1).
  -define(glVariantbvEXT,                                            ?glSetLocalConstantEXT                                     + 1).
  -define(glVariantsvEXT,                                            ?glVariantbvEXT                                            + 1).
  -define(glVariantivEXT,                                            ?glVariantsvEXT                                            + 1).
  -define(glVariantfvEXT,                                            ?glVariantivEXT                                            + 1).
  -define(glVariantdvEXT,                                            ?glVariantfvEXT                                            + 1).
  -define(glVariantubvEXT,                                           ?glVariantdvEXT                                            + 1).
  -define(glVariantusvEXT,                                           ?glVariantubvEXT                                           + 1).
  -define(glVariantuivEXT,                                           ?glVariantusvEXT                                           + 1).
  -define(glVariantPointerEXT,                                       ?glVariantuivEXT                                           + 1).
  -define(glEnableVariantClientStateEXT,                             ?glVariantPointerEXT                                       + 1).
  -define(glDisableVariantClientStateEXT,                            ?glEnableVariantClientStateEXT                             + 1).
  -define(glBindLightParameterEXT,                                   ?glDisableVariantClientStateEXT                            + 1).
  -define(glBindMaterialParameterEXT,                                ?glBindLightParameterEXT                                   + 1).
  -define(glBindTexGenParameterEXT,                                  ?glBindMaterialParameterEXT                                + 1).
  -define(glBindTextureUnitParameterEXT,                             ?glBindTexGenParameterEXT                                  + 1).
  -define(glBindParameterEXT,                                        ?glBindTextureUnitParameterEXT                             + 1).
  -define(glIsVariantEnabledEXT,                                     ?glBindParameterEXT                                        + 1).
  -define(glGetVariantBooleanvEXT,                                   ?glIsVariantEnabledEXT                                     + 1).
  -define(glGetVariantIntegervEXT,                                   ?glGetVariantBooleanvEXT                                   + 1).
  -define(glGetVariantFloatvEXT,                                     ?glGetVariantIntegervEXT                                   + 1).
  -define(glGetVariantPointervEXT,                                   ?glGetVariantFloatvEXT                                     + 1).
  -define(glGetInvariantBooleanvEXT,                                 ?glGetVariantPointervEXT                                   + 1).
  -define(glGetInvariantIntegervEXT,                                 ?glGetInvariantBooleanvEXT                                 + 1).
  -define(glGetInvariantFloatvEXT,                                   ?glGetInvariantIntegervEXT                                 + 1).
  -define(glGetLocalConstantBooleanvEXT,                             ?glGetInvariantFloatvEXT                                   + 1).
  -define(glGetLocalConstantIntegervEXT,                             ?glGetLocalConstantBooleanvEXT                             + 1).
  -define(glGetLocalConstantFloatvEXT,                               ?glGetLocalConstantIntegervEXT                             + 1).

%% GL_ATI_vertex_streams

  -define(glVertexStream1sATI,                                       ?glGetLocalConstantFloatvEXT                               + 1).
  -define(glVertexStream1svATI,                                      ?glVertexStream1sATI                                       + 1).
  -define(glVertexStream1iATI,                                       ?glVertexStream1svATI                                      + 1).
  -define(glVertexStream1ivATI,                                      ?glVertexStream1iATI                                       + 1).
  -define(glVertexStream1fATI,                                       ?glVertexStream1ivATI                                      + 1).
  -define(glVertexStream1fvATI,                                      ?glVertexStream1fATI                                       + 1).
  -define(glVertexStream1dATI,                                       ?glVertexStream1fvATI                                      + 1).
  -define(glVertexStream1dvATI,                                      ?glVertexStream1dATI                                       + 1).
  -define(glVertexStream2sATI,                                       ?glVertexStream1dvATI                                      + 1).
  -define(glVertexStream2svATI,                                      ?glVertexStream2sATI                                       + 1).
  -define(glVertexStream2iATI,                                       ?glVertexStream2svATI                                      + 1).
  -define(glVertexStream2ivATI,                                      ?glVertexStream2iATI                                       + 1).
  -define(glVertexStream2fATI,                                       ?glVertexStream2ivATI                                      + 1).
  -define(glVertexStream2fvATI,                                      ?glVertexStream2fATI                                       + 1).
  -define(glVertexStream2dATI,                                       ?glVertexStream2fvATI                                      + 1).
  -define(glVertexStream2dvATI,                                      ?glVertexStream2dATI                                       + 1).
  -define(glVertexStream3sATI,                                       ?glVertexStream2dvATI                                      + 1).
  -define(glVertexStream3svATI,                                      ?glVertexStream3sATI                                       + 1).
  -define(glVertexStream3iATI,                                       ?glVertexStream3svATI                                      + 1).
  -define(glVertexStream3ivATI,                                      ?glVertexStream3iATI                                       + 1).
  -define(glVertexStream3fATI,                                       ?glVertexStream3ivATI                                      + 1).
  -define(glVertexStream3fvATI,                                      ?glVertexStream3fATI                                       + 1).
  -define(glVertexStream3dATI,                                       ?glVertexStream3fvATI                                      + 1).
  -define(glVertexStream3dvATI,                                      ?glVertexStream3dATI                                       + 1).
  -define(glVertexStream4sATI,                                       ?glVertexStream3dvATI                                      + 1).
  -define(glVertexStream4svATI,                                      ?glVertexStream4sATI                                       + 1).
  -define(glVertexStream4iATI,                                       ?glVertexStream4svATI                                      + 1).
  -define(glVertexStream4ivATI,                                      ?glVertexStream4iATI                                       + 1).
  -define(glVertexStream4fATI,                                       ?glVertexStream4ivATI                                      + 1).
  -define(glVertexStream4fvATI,                                      ?glVertexStream4fATI                                       + 1).
  -define(glVertexStream4dATI,                                       ?glVertexStream4fvATI                                      + 1).
  -define(glVertexStream4dvATI,                                      ?glVertexStream4dATI                                       + 1).
  -define(glNormalStream3bATI,                                       ?glVertexStream4dvATI                                      + 1).
  -define(glNormalStream3bvATI,                                      ?glNormalStream3bATI                                       + 1).
  -define(glNormalStream3sATI,                                       ?glNormalStream3bvATI                                      + 1).
  -define(glNormalStream3svATI,                                      ?glNormalStream3sATI                                       + 1).
  -define(glNormalStream3iATI,                                       ?glNormalStream3svATI                                      + 1).
  -define(glNormalStream3ivATI,                                      ?glNormalStream3iATI                                       + 1).
  -define(glNormalStream3fATI,                                       ?glNormalStream3ivATI                                      + 1).
  -define(glNormalStream3fvATI,                                      ?glNormalStream3fATI                                       + 1).
  -define(glNormalStream3dATI,                                       ?glNormalStream3fvATI                                      + 1).
  -define(glNormalStream3dvATI,                                      ?glNormalStream3dATI                                       + 1).
  -define(glClientActiveVertexStreamATI,                             ?glNormalStream3dvATI                                      + 1).
  -define(glVertexBlendEnviATI,                                      ?glClientActiveVertexStreamATI                             + 1).
  -define(glVertexBlendEnvfATI,                                      ?glVertexBlendEnviATI                                      + 1).

%% GL_ATI_element_array

  -define(glElementPointerATI,                                       ?glVertexBlendEnvfATI                                      + 1).
  -define(glDrawElementArrayATI,                                     ?glElementPointerATI                                       + 1).
  -define(glDrawRangeElementArrayATI,                                ?glDrawElementArrayATI                                     + 1).

%% GL_SUN_mesh_array

  -define(glDrawMeshArraysSUN,                                       ?glDrawRangeElementArrayATI                                + 1).

%% GL_SUN_slice_accum


%% GL_NV_multisample_filter_hint


%% GL_NV_depth_clamp


%% GL_NV_occlusion_query

  -define(glGenOcclusionQueriesNV,                                   ?glDrawMeshArraysSUN                                       + 1).
  -define(glDeleteOcclusionQueriesNV,                                ?glGenOcclusionQueriesNV                                   + 1).
  -define(glIsOcclusionQueryNV,                                      ?glDeleteOcclusionQueriesNV                                + 1).
  -define(glBeginOcclusionQueryNV,                                   ?glIsOcclusionQueryNV                                      + 1).
  -define(glEndOcclusionQueryNV,                                     ?glBeginOcclusionQueryNV                                   + 1).
  -define(glGetOcclusionQueryivNV,                                   ?glEndOcclusionQueryNV                                     + 1).
  -define(glGetOcclusionQueryuivNV,                                  ?glGetOcclusionQueryivNV                                   + 1).

%% GL_NV_point_sprite

  -define(glPointParameteriNV,                                       ?glGetOcclusionQueryuivNV                                  + 1).
  -define(glPointParameterivNV,                                      ?glPointParameteriNV                                       + 1).

%% GL_NV_texture_shader3


%% GL_NV_vertex_program1_1


%% GL_EXT_shadow_funcs


%% GL_EXT_stencil_two_side

  -define(glActiveStencilFaceEXT,                                    ?glPointParameterivNV                                      + 1).

%% GL_ATI_text_fragment_shader


%% GL_APPLE_client_storage


%% GL_APPLE_element_array

  -define(glElementPointerAPPLE,                                     ?glActiveStencilFaceEXT                                    + 1).
  -define(glDrawElementArrayAPPLE,                                   ?glElementPointerAPPLE                                     + 1).
  -define(glDrawRangeElementArrayAPPLE,                              ?glDrawElementArrayAPPLE                                   + 1).
  -define(glMultiDrawElementArrayAPPLE,                              ?glDrawRangeElementArrayAPPLE                              + 1).
  -define(glMultiDrawRangeElementArrayAPPLE,                         ?glMultiDrawElementArrayAPPLE                              + 1).

%% GL_APPLE_fence

  -define(glGenFencesAPPLE,                                          ?glMultiDrawRangeElementArrayAPPLE                         + 1).
  -define(glDeleteFencesAPPLE,                                       ?glGenFencesAPPLE                                          + 1).
  -define(glSetFenceAPPLE,                                           ?glDeleteFencesAPPLE                                       + 1).
  -define(glIsFenceAPPLE,                                            ?glSetFenceAPPLE                                           + 1).
  -define(glTestFenceAPPLE,                                          ?glIsFenceAPPLE                                            + 1).
  -define(glFinishFenceAPPLE,                                        ?glTestFenceAPPLE                                          + 1).
  -define(glTestObjectAPPLE,                                         ?glFinishFenceAPPLE                                        + 1).
  -define(glFinishObjectAPPLE,                                       ?glTestObjectAPPLE                                         + 1).

%% GL_APPLE_vertex_array_object

  -define(glBindVertexArrayAPPLE,                                    ?glFinishObjectAPPLE                                       + 1).
  -define(glDeleteVertexArraysAPPLE,                                 ?glBindVertexArrayAPPLE                                    + 1).
  -define(glGenVertexArraysAPPLE,                                    ?glDeleteVertexArraysAPPLE                                 + 1).
  -define(glIsVertexArrayAPPLE,                                      ?glGenVertexArraysAPPLE                                    + 1).

%% GL_APPLE_vertex_array_range

  -define(glVertexArrayRangeAPPLE,                                   ?glIsVertexArrayAPPLE                                      + 1).
  -define(glFlushVertexArrayRangeAPPLE,                              ?glVertexArrayRangeAPPLE                                   + 1).
  -define(glVertexArrayParameteriAPPLE,                              ?glFlushVertexArrayRangeAPPLE                              + 1).

%% GL_APPLE_ycbcr_422


%% GL_S3_s3tc


%% GL_ATI_draw_buffers

  -define(glDrawBuffersATI,                                          ?glVertexArrayParameteriAPPLE                              + 1).

%% GL_ATI_pixel_format_float


%% GL_ATI_texture_env_combine3


%% GL_ATI_texture_float


%% GL_NV_float_buffer


%% GL_NV_fragment_program

  -define(glProgramNamedParameter4fNV,                               ?glDrawBuffersATI                                          + 1).
  -define(glProgramNamedParameter4fvNV,                              ?glProgramNamedParameter4fNV                               + 1).
  -define(glProgramNamedParameter4dNV,                               ?glProgramNamedParameter4fvNV                              + 1).
  -define(glProgramNamedParameter4dvNV,                              ?glProgramNamedParameter4dNV                               + 1).
  -define(glGetProgramNamedParameterfvNV,                            ?glProgramNamedParameter4dvNV                              + 1).
  -define(glGetProgramNamedParameterdvNV,                            ?glGetProgramNamedParameterfvNV                            + 1).

%% GL_NV_half_float

  -define(glVertex2hNV,                                              ?glGetProgramNamedParameterdvNV                            + 1).
  -define(glVertex2hvNV,                                             ?glVertex2hNV                                              + 1).
  -define(glVertex3hNV,                                              ?glVertex2hvNV                                             + 1).
  -define(glVertex3hvNV,                                             ?glVertex3hNV                                              + 1).
  -define(glVertex4hNV,                                              ?glVertex3hvNV                                             + 1).
  -define(glVertex4hvNV,                                             ?glVertex4hNV                                              + 1).
  -define(glNormal3hNV,                                              ?glVertex4hvNV                                             + 1).
  -define(glNormal3hvNV,                                             ?glNormal3hNV                                              + 1).
  -define(glColor3hNV,                                               ?glNormal3hvNV                                             + 1).
  -define(glColor3hvNV,                                              ?glColor3hNV                                               + 1).
  -define(glColor4hNV,                                               ?glColor3hvNV                                              + 1).
  -define(glColor4hvNV,                                              ?glColor4hNV                                               + 1).
  -define(glTexCoord1hNV,                                            ?glColor4hvNV                                              + 1).
  -define(glTexCoord1hvNV,                                           ?glTexCoord1hNV                                            + 1).
  -define(glTexCoord2hNV,                                            ?glTexCoord1hvNV                                           + 1).
  -define(glTexCoord2hvNV,                                           ?glTexCoord2hNV                                            + 1).
  -define(glTexCoord3hNV,                                            ?glTexCoord2hvNV                                           + 1).
  -define(glTexCoord3hvNV,                                           ?glTexCoord3hNV                                            + 1).
  -define(glTexCoord4hNV,                                            ?glTexCoord3hvNV                                           + 1).
  -define(glTexCoord4hvNV,                                           ?glTexCoord4hNV                                            + 1).
  -define(glMultiTexCoord1hNV,                                       ?glTexCoord4hvNV                                           + 1).
  -define(glMultiTexCoord1hvNV,                                      ?glMultiTexCoord1hNV                                       + 1).
  -define(glMultiTexCoord2hNV,                                       ?glMultiTexCoord1hvNV                                      + 1).
  -define(glMultiTexCoord2hvNV,                                      ?glMultiTexCoord2hNV                                       + 1).
  -define(glMultiTexCoord3hNV,                                       ?glMultiTexCoord2hvNV                                      + 1).
  -define(glMultiTexCoord3hvNV,                                      ?glMultiTexCoord3hNV                                       + 1).
  -define(glMultiTexCoord4hNV,                                       ?glMultiTexCoord3hvNV                                      + 1).
  -define(glMultiTexCoord4hvNV,                                      ?glMultiTexCoord4hNV                                       + 1).
  -define(glFogCoordhNV,                                             ?glMultiTexCoord4hvNV                                      + 1).
  -define(glFogCoordhvNV,                                            ?glFogCoordhNV                                             + 1).
  -define(glSecondaryColor3hNV,                                      ?glFogCoordhvNV                                            + 1).
  -define(glSecondaryColor3hvNV,                                     ?glSecondaryColor3hNV                                      + 1).
  -define(glVertexWeighthNV,                                         ?glSecondaryColor3hvNV                                     + 1).
  -define(glVertexWeighthvNV,                                        ?glVertexWeighthNV                                         + 1).
  -define(glVertexAttrib1hNV,                                        ?glVertexWeighthvNV                                        + 1).
  -define(glVertexAttrib1hvNV,                                       ?glVertexAttrib1hNV                                        + 1).
  -define(glVertexAttrib2hNV,                                        ?glVertexAttrib1hvNV                                       + 1).
  -define(glVertexAttrib2hvNV,                                       ?glVertexAttrib2hNV                                        + 1).
  -define(glVertexAttrib3hNV,                                        ?glVertexAttrib2hvNV                                       + 1).
  -define(glVertexAttrib3hvNV,                                       ?glVertexAttrib3hNV                                        + 1).
  -define(glVertexAttrib4hNV,                                        ?glVertexAttrib3hvNV                                       + 1).
  -define(glVertexAttrib4hvNV,                                       ?glVertexAttrib4hNV                                        + 1).
  -define(glVertexAttribs1hvNV,                                      ?glVertexAttrib4hvNV                                       + 1).
  -define(glVertexAttribs2hvNV,                                      ?glVertexAttribs1hvNV                                      + 1).
  -define(glVertexAttribs3hvNV,                                      ?glVertexAttribs2hvNV                                      + 1).
  -define(glVertexAttribs4hvNV,                                      ?glVertexAttribs3hvNV                                      + 1).

%% GL_NV_pixel_data_range

  -define(glPixelDataRangeNV,                                        ?glVertexAttribs4hvNV                                      + 1).
  -define(glFlushPixelDataRangeNV,                                   ?glPixelDataRangeNV                                        + 1).

%% GL_NV_primitive_restart

  -define(glPrimitiveRestartNV,                                      ?glFlushPixelDataRangeNV                                   + 1).
  -define(glPrimitiveRestartIndexNV,                                 ?glPrimitiveRestartNV                                      + 1).

%% GL_NV_texture_expand_normal


%% GL_NV_vertex_program2


%% GL_ATI_map_object_buffer

  -define(glMapObjectBufferATI,                                      ?glPrimitiveRestartIndexNV                                 + 1).
  -define(glUnmapObjectBufferATI,                                    ?glMapObjectBufferATI                                      + 1).

%% GL_ATI_separate_stencil

  -define(glStencilOpSeparateATI,                                    ?glUnmapObjectBufferATI                                    + 1).
  -define(glStencilFuncSeparateATI,                                  ?glStencilOpSeparateATI                                    + 1).

%% GL_ATI_vertex_attrib_array_object

  -define(glVertexAttribArrayObjectATI,                              ?glStencilFuncSeparateATI                                  + 1).
  -define(glGetVertexAttribArrayObjectfvATI,                         ?glVertexAttribArrayObjectATI                              + 1).
  -define(glGetVertexAttribArrayObjectivATI,                         ?glGetVertexAttribArrayObjectfvATI                         + 1).

%% GL_OES_byte_coordinates

  -define(glMultiTexCoord1bOES,                                      ?glGetVertexAttribArrayObjectivATI                         + 1).
  -define(glMultiTexCoord1bvOES,                                     ?glMultiTexCoord1bOES                                      + 1).
  -define(glMultiTexCoord2bOES,                                      ?glMultiTexCoord1bvOES                                     + 1).
  -define(glMultiTexCoord2bvOES,                                     ?glMultiTexCoord2bOES                                      + 1).
  -define(glMultiTexCoord3bOES,                                      ?glMultiTexCoord2bvOES                                     + 1).
  -define(glMultiTexCoord3bvOES,                                     ?glMultiTexCoord3bOES                                      + 1).
  -define(glMultiTexCoord4bOES,                                      ?glMultiTexCoord3bvOES                                     + 1).
  -define(glMultiTexCoord4bvOES,                                     ?glMultiTexCoord4bOES                                      + 1).
  -define(glTexCoord1bOES,                                           ?glMultiTexCoord4bvOES                                     + 1).
  -define(glTexCoord1bvOES,                                          ?glTexCoord1bOES                                           + 1).
  -define(glTexCoord2bOES,                                           ?glTexCoord1bvOES                                          + 1).
  -define(glTexCoord2bvOES,                                          ?glTexCoord2bOES                                           + 1).
  -define(glTexCoord3bOES,                                           ?glTexCoord2bvOES                                          + 1).
  -define(glTexCoord3bvOES,                                          ?glTexCoord3bOES                                           + 1).
  -define(glTexCoord4bOES,                                           ?glTexCoord3bvOES                                          + 1).
  -define(glTexCoord4bvOES,                                          ?glTexCoord4bOES                                           + 1).
  -define(glVertex2bOES,                                             ?glTexCoord4bvOES                                          + 1).
  -define(glVertex2bvOES,                                            ?glVertex2bOES                                             + 1).
  -define(glVertex3bOES,                                             ?glVertex2bvOES                                            + 1).
  -define(glVertex3bvOES,                                            ?glVertex3bOES                                             + 1).
  -define(glVertex4bOES,                                             ?glVertex3bvOES                                            + 1).
  -define(glVertex4bvOES,                                            ?glVertex4bOES                                             + 1).

%% GL_OES_fixed_point

  -define(glAccumxOES,                                               ?glVertex4bvOES                                            + 1).
  -define(glAlphaFuncxOES,                                           ?glAccumxOES                                               + 1).
  -define(glBitmapxOES,                                              ?glAlphaFuncxOES                                           + 1).
  -define(glBlendColorxOES,                                          ?glBitmapxOES                                              + 1).
  -define(glClearAccumxOES,                                          ?glBlendColorxOES                                          + 1).
  -define(glClearColorxOES,                                          ?glClearAccumxOES                                          + 1).
  -define(glClearDepthxOES,                                          ?glClearColorxOES                                          + 1).
  -define(glClipPlanexOES,                                           ?glClearDepthxOES                                          + 1).
  -define(glColor3xOES,                                              ?glClipPlanexOES                                           + 1).
  -define(glColor4xOES,                                              ?glColor3xOES                                              + 1).
  -define(glColor3xvOES,                                             ?glColor4xOES                                              + 1).
  -define(glColor4xvOES,                                             ?glColor3xvOES                                             + 1).
  -define(glConvolutionParameterxOES,                                ?glColor4xvOES                                             + 1).
  -define(glConvolutionParameterxvOES,                               ?glConvolutionParameterxOES                                + 1).
  -define(glDepthRangexOES,                                          ?glConvolutionParameterxvOES                               + 1).
  -define(glEvalCoord1xOES,                                          ?glDepthRangexOES                                          + 1).
  -define(glEvalCoord2xOES,                                          ?glEvalCoord1xOES                                          + 1).
  -define(glEvalCoord1xvOES,                                         ?glEvalCoord2xOES                                          + 1).
  -define(glEvalCoord2xvOES,                                         ?glEvalCoord1xvOES                                         + 1).
  -define(glFeedbackBufferxOES,                                      ?glEvalCoord2xvOES                                         + 1).
  -define(glFogxOES,                                                 ?glFeedbackBufferxOES                                      + 1).
  -define(glFogxvOES,                                                ?glFogxOES                                                 + 1).
  -define(glFrustumxOES,                                             ?glFogxvOES                                                + 1).
  -define(glGetClipPlanexOES,                                        ?glFrustumxOES                                             + 1).
  -define(glGetConvolutionParameterxvOES,                            ?glGetClipPlanexOES                                        + 1).
  -define(glGetFixedvOES,                                            ?glGetConvolutionParameterxvOES                            + 1).
  -define(glGetHistogramParameterxvOES,                              ?glGetFixedvOES                                            + 1).
  -define(glGetLightxOES,                                            ?glGetHistogramParameterxvOES                              + 1).
  -define(glGetMapxvOES,                                             ?glGetLightxOES                                            + 1).
  -define(glGetMaterialxOES,                                         ?glGetMapxvOES                                             + 1).
  -define(glGetPixelMapxv,                                           ?glGetMaterialxOES                                         + 1).
  -define(glGetTexEnvxvOES,                                          ?glGetPixelMapxv                                           + 1).
  -define(glGetTexGenxvOES,                                          ?glGetTexEnvxvOES                                          + 1).
  -define(glGetTexLevelParameterxvOES,                               ?glGetTexGenxvOES                                          + 1).
  -define(glGetTexParameterxvOES,                                    ?glGetTexLevelParameterxvOES                               + 1).
  -define(glIndexxOES,                                               ?glGetTexParameterxvOES                                    + 1).
  -define(glIndexxvOES,                                              ?glIndexxOES                                               + 1).
  -define(glLightModelxOES,                                          ?glIndexxvOES                                              + 1).
  -define(glLightModelxvOES,                                         ?glLightModelxOES                                          + 1).
  -define(glLightxOES,                                               ?glLightModelxvOES                                         + 1).
  -define(glLightxvOES,                                              ?glLightxOES                                               + 1).
  -define(glLineWidthxOES,                                           ?glLightxvOES                                              + 1).
  -define(glLoadMatrixxOES,                                          ?glLineWidthxOES                                           + 1).
  -define(glLoadTransposeMatrixxOES,                                 ?glLoadMatrixxOES                                          + 1).
  -define(glMap1xOES,                                                ?glLoadTransposeMatrixxOES                                 + 1).
  -define(glMap2xOES,                                                ?glMap1xOES                                                + 1).
  -define(glMapGrid1xOES,                                            ?glMap2xOES                                                + 1).
  -define(glMapGrid2xOES,                                            ?glMapGrid1xOES                                            + 1).
  -define(glMaterialxOES,                                            ?glMapGrid2xOES                                            + 1).
  -define(glMaterialxvOES,                                           ?glMaterialxOES                                            + 1).
  -define(glMultMatrixxOES,                                          ?glMaterialxvOES                                           + 1).
  -define(glMultTransposeMatrixxOES,                                 ?glMultMatrixxOES                                          + 1).
  -define(glMultiTexCoord1xOES,                                      ?glMultTransposeMatrixxOES                                 + 1).
  -define(glMultiTexCoord2xOES,                                      ?glMultiTexCoord1xOES                                      + 1).
  -define(glMultiTexCoord3xOES,                                      ?glMultiTexCoord2xOES                                      + 1).
  -define(glMultiTexCoord4xOES,                                      ?glMultiTexCoord3xOES                                      + 1).
  -define(glMultiTexCoord1xvOES,                                     ?glMultiTexCoord4xOES                                      + 1).
  -define(glMultiTexCoord2xvOES,                                     ?glMultiTexCoord1xvOES                                     + 1).
  -define(glMultiTexCoord3xvOES,                                     ?glMultiTexCoord2xvOES                                     + 1).
  -define(glMultiTexCoord4xvOES,                                     ?glMultiTexCoord3xvOES                                     + 1).
  -define(glNormal3xOES,                                             ?glMultiTexCoord4xvOES                                     + 1).
  -define(glNormal3xvOES,                                            ?glNormal3xOES                                             + 1).
  -define(glOrthoxOES,                                               ?glNormal3xvOES                                            + 1).
  -define(glPassThroughxOES,                                         ?glOrthoxOES                                               + 1).
  -define(glPixelMapx,                                               ?glPassThroughxOES                                         + 1).
  -define(glPixelStorex,                                             ?glPixelMapx                                               + 1).
  -define(glPixelTransferxOES,                                       ?glPixelStorex                                             + 1).
  -define(glPixelZoomxOES,                                           ?glPixelTransferxOES                                       + 1).
  -define(glPointParameterxvOES,                                     ?glPixelZoomxOES                                           + 1).
  -define(glPointSizexOES,                                           ?glPointParameterxvOES                                     + 1).
  -define(glPolygonOffsetxOES,                                       ?glPointSizexOES                                           + 1).
  -define(glPrioritizeTexturesxOES,                                  ?glPolygonOffsetxOES                                       + 1).
  -define(glRasterPos2xOES,                                          ?glPrioritizeTexturesxOES                                  + 1).
  -define(glRasterPos3xOES,                                          ?glRasterPos2xOES                                          + 1).
  -define(glRasterPos4xOES,                                          ?glRasterPos3xOES                                          + 1).
  -define(glRasterPos2xvOES,                                         ?glRasterPos4xOES                                          + 1).
  -define(glRasterPos3xvOES,                                         ?glRasterPos2xvOES                                         + 1).
  -define(glRasterPos4xvOES,                                         ?glRasterPos3xvOES                                         + 1).
  -define(glRectxOES,                                                ?glRasterPos4xvOES                                         + 1).
  -define(glRectxvOES,                                               ?glRectxOES                                                + 1).
  -define(glRotatexOES,                                              ?glRectxvOES                                               + 1).
  -define(glSampleCoverageOES,                                       ?glRotatexOES                                              + 1).
  -define(glScalexOES,                                               ?glSampleCoverageOES                                       + 1).
  -define(glTexCoord1xOES,                                           ?glScalexOES                                               + 1).
  -define(glTexCoord2xOES,                                           ?glTexCoord1xOES                                           + 1).
  -define(glTexCoord3xOES,                                           ?glTexCoord2xOES                                           + 1).
  -define(glTexCoord4xOES,                                           ?glTexCoord3xOES                                           + 1).
  -define(glTexCoord1xvOES,                                          ?glTexCoord4xOES                                           + 1).
  -define(glTexCoord2xvOES,                                          ?glTexCoord1xvOES                                          + 1).
  -define(glTexCoord3xvOES,                                          ?glTexCoord2xvOES                                          + 1).
  -define(glTexCoord4xvOES,                                          ?glTexCoord3xvOES                                          + 1).
  -define(glTexEnvxOES,                                              ?glTexCoord4xvOES                                          + 1).
  -define(glTexEnvxvOES,                                             ?glTexEnvxOES                                              + 1).
  -define(glTexGenxOES,                                              ?glTexEnvxvOES                                             + 1).
  -define(glTexGenxvOES,                                             ?glTexGenxOES                                              + 1).
  -define(glTexParameterxOES,                                        ?glTexGenxvOES                                             + 1).
  -define(glTexParameterxvOES,                                       ?glTexParameterxOES                                        + 1).
  -define(glTranslatexOES,                                           ?glTexParameterxvOES                                       + 1).
  -define(glVertex2xOES,                                             ?glTranslatexOES                                           + 1).
  -define(glVertex3xOES,                                             ?glVertex2xOES                                             + 1).
  -define(glVertex4xOES,                                             ?glVertex3xOES                                             + 1).
  -define(glVertex2xvOES,                                            ?glVertex4xOES                                             + 1).
  -define(glVertex3xvOES,                                            ?glVertex2xvOES                                            + 1).
  -define(glVertex4xvOES,                                            ?glVertex3xvOES                                            + 1).

%% GL_OES_single_precision

  -define(glDepthRangefOES,                                          ?glVertex4xvOES                                            + 1).
  -define(glFrustumfOES,                                             ?glDepthRangefOES                                          + 1).
  -define(glOrthofOES,                                               ?glFrustumfOES                                             + 1).
  -define(glClipPlanefOES,                                           ?glOrthofOES                                               + 1).
  -define(glClearDepthfOES,                                          ?glClipPlanefOES                                           + 1).
  -define(glGetClipPlanefOES,                                        ?glClearDepthfOES                                          + 1).

%% GL_OES_compressed_paletted_texture


%% GL_OES_read_format


%% GL_OES_query_matrix

  -define(glQueryMatrixxOES,                                         ?glGetClipPlanefOES                                        + 1).

%% GL_EXT_depth_bounds_test

  -define(glDepthBoundsEXT,                                          ?glQueryMatrixxOES                                         + 1).

%% GL_EXT_texture_mirror_clamp


%% GL_EXT_blend_equation_separate

  -define(glBlendEquationSeparateEXT,                                ?glDepthBoundsEXT                                          + 1).

%% GL_MESA_pack_invert


%% GL_MESA_ycbcr_texture


%% GL_EXT_pixel_buffer_object


%% GL_NV_fragment_program_option


%% GL_NV_fragment_program2


%% GL_NV_vertex_program2_option


%% GL_NV_vertex_program3


%% GL_EXT_framebuffer_object

  -define(glIsRenderbufferEXT,                                       ?glBlendEquationSeparateEXT                                + 1).
  -define(glBindRenderbufferEXT,                                     ?glIsRenderbufferEXT                                       + 1).
  -define(glDeleteRenderbuffersEXT,                                  ?glBindRenderbufferEXT                                     + 1).
  -define(glGenRenderbuffersEXT,                                     ?glDeleteRenderbuffersEXT                                  + 1).
  -define(glRenderbufferStorageEXT,                                  ?glGenRenderbuffersEXT                                     + 1).
  -define(glGetRenderbufferParameterivEXT,                           ?glRenderbufferStorageEXT                                  + 1).
  -define(glIsFramebufferEXT,                                        ?glGetRenderbufferParameterivEXT                           + 1).
  -define(glBindFramebufferEXT,                                      ?glIsFramebufferEXT                                        + 1).
  -define(glDeleteFramebuffersEXT,                                   ?glBindFramebufferEXT                                      + 1).
  -define(glGenFramebuffersEXT,                                      ?glDeleteFramebuffersEXT                                   + 1).
  -define(glCheckFramebufferStatusEXT,                               ?glGenFramebuffersEXT                                      + 1).
  -define(glFramebufferTexture1DEXT,                                 ?glCheckFramebufferStatusEXT                               + 1).
  -define(glFramebufferTexture2DEXT,                                 ?glFramebufferTexture1DEXT                                 + 1).
  -define(glFramebufferTexture3DEXT,                                 ?glFramebufferTexture2DEXT                                 + 1).
  -define(glFramebufferRenderbufferEXT,                              ?glFramebufferTexture3DEXT                                 + 1).
  -define(glGetFramebufferAttachmentParameterivEXT,                  ?glFramebufferRenderbufferEXT                              + 1).
  -define(glGenerateMipmapEXT,                                       ?glGetFramebufferAttachmentParameterivEXT                  + 1).

%% GL_GREMEDY_string_marker

  -define(glStringMarkerGREMEDY,                                     ?glGenerateMipmapEXT                                       + 1).

%% GL_EXT_packed_depth_stencil


%% GL_EXT_stencil_clear_tag

  -define(glStencilClearTagEXT,                                      ?glStringMarkerGREMEDY                                     + 1).

%% GL_EXT_texture_sRGB


%% GL_EXT_framebuffer_blit

  -define(glBlitFramebufferEXT,                                      ?glStencilClearTagEXT                                      + 1).

%% GL_EXT_framebuffer_multisample

  -define(glRenderbufferStorageMultisampleEXT,                       ?glBlitFramebufferEXT                                      + 1).

%% GL_MESAX_texture_stack


%% GL_EXT_timer_query

  -define(glGetQueryObjecti64vEXT,                                   ?glRenderbufferStorageMultisampleEXT                       + 1).
  -define(glGetQueryObjectui64vEXT,                                  ?glGetQueryObjecti64vEXT                                   + 1).

%% GL_EXT_gpu_program_parameters

  -define(glProgramEnvParameters4fvEXT,                              ?glGetQueryObjectui64vEXT                                  + 1).
  -define(glProgramLocalParameters4fvEXT,                            ?glProgramEnvParameters4fvEXT                              + 1).

%% GL_APPLE_flush_buffer_range

  -define(glBufferParameteriAPPLE,                                   ?glProgramLocalParameters4fvEXT                            + 1).
  -define(glFlushMappedBufferRangeAPPLE,                             ?glBufferParameteriAPPLE                                   + 1).

%% GL_NV_gpu_program4

  -define(glProgramLocalParameterI4iNV,                              ?glFlushMappedBufferRangeAPPLE                             + 1).
  -define(glProgramLocalParameterI4ivNV,                             ?glProgramLocalParameterI4iNV                              + 1).
  -define(glProgramLocalParametersI4ivNV,                            ?glProgramLocalParameterI4ivNV                             + 1).
  -define(glProgramLocalParameterI4uiNV,                             ?glProgramLocalParametersI4ivNV                            + 1).
  -define(glProgramLocalParameterI4uivNV,                            ?glProgramLocalParameterI4uiNV                             + 1).
  -define(glProgramLocalParametersI4uivNV,                           ?glProgramLocalParameterI4uivNV                            + 1).
  -define(glProgramEnvParameterI4iNV,                                ?glProgramLocalParametersI4uivNV                           + 1).
  -define(glProgramEnvParameterI4ivNV,                               ?glProgramEnvParameterI4iNV                                + 1).
  -define(glProgramEnvParametersI4ivNV,                              ?glProgramEnvParameterI4ivNV                               + 1).
  -define(glProgramEnvParameterI4uiNV,                               ?glProgramEnvParametersI4ivNV                              + 1).
  -define(glProgramEnvParameterI4uivNV,                              ?glProgramEnvParameterI4uiNV                               + 1).
  -define(glProgramEnvParametersI4uivNV,                             ?glProgramEnvParameterI4uivNV                              + 1).
  -define(glGetProgramLocalParameterIivNV,                           ?glProgramEnvParametersI4uivNV                             + 1).
  -define(glGetProgramLocalParameterIuivNV,                          ?glGetProgramLocalParameterIivNV                           + 1).
  -define(glGetProgramEnvParameterIivNV,                             ?glGetProgramLocalParameterIuivNV                          + 1).
  -define(glGetProgramEnvParameterIuivNV,                            ?glGetProgramEnvParameterIivNV                             + 1).

%% GL_NV_geometry_program4

  -define(glProgramVertexLimitNV,                                    ?glGetProgramEnvParameterIuivNV                            + 1).
  -define(glFramebufferTextureEXT,                                   ?glProgramVertexLimitNV                                    + 1).
  -define(glFramebufferTextureLayerEXT,                              ?glFramebufferTextureEXT                                   + 1).
  -define(glFramebufferTextureFaceEXT,                               ?glFramebufferTextureLayerEXT                              + 1).

%% GL_EXT_geometry_shader4

  -define(glProgramParameteriEXT,                                    ?glFramebufferTextureFaceEXT                               + 1).

%% GL_NV_vertex_program4

  -define(glVertexAttribI1iEXT,                                      ?glProgramParameteriEXT                                    + 1).
  -define(glVertexAttribI2iEXT,                                      ?glVertexAttribI1iEXT                                      + 1).
  -define(glVertexAttribI3iEXT,                                      ?glVertexAttribI2iEXT                                      + 1).
  -define(glVertexAttribI4iEXT,                                      ?glVertexAttribI3iEXT                                      + 1).
  -define(glVertexAttribI1uiEXT,                                     ?glVertexAttribI4iEXT                                      + 1).
  -define(glVertexAttribI2uiEXT,                                     ?glVertexAttribI1uiEXT                                     + 1).
  -define(glVertexAttribI3uiEXT,                                     ?glVertexAttribI2uiEXT                                     + 1).
  -define(glVertexAttribI4uiEXT,                                     ?glVertexAttribI3uiEXT                                     + 1).
  -define(glVertexAttribI1ivEXT,                                     ?glVertexAttribI4uiEXT                                     + 1).
  -define(glVertexAttribI2ivEXT,                                     ?glVertexAttribI1ivEXT                                     + 1).
  -define(glVertexAttribI3ivEXT,                                     ?glVertexAttribI2ivEXT                                     + 1).
  -define(glVertexAttribI4ivEXT,                                     ?glVertexAttribI3ivEXT                                     + 1).
  -define(glVertexAttribI1uivEXT,                                    ?glVertexAttribI4ivEXT                                     + 1).
  -define(glVertexAttribI2uivEXT,                                    ?glVertexAttribI1uivEXT                                    + 1).
  -define(glVertexAttribI3uivEXT,                                    ?glVertexAttribI2uivEXT                                    + 1).
  -define(glVertexAttribI4uivEXT,                                    ?glVertexAttribI3uivEXT                                    + 1).
  -define(glVertexAttribI4bvEXT,                                     ?glVertexAttribI4uivEXT                                    + 1).
  -define(glVertexAttribI4svEXT,                                     ?glVertexAttribI4bvEXT                                     + 1).
  -define(glVertexAttribI4ubvEXT,                                    ?glVertexAttribI4svEXT                                     + 1).
  -define(glVertexAttribI4usvEXT,                                    ?glVertexAttribI4ubvEXT                                    + 1).
  -define(glVertexAttribIPointerEXT,                                 ?glVertexAttribI4usvEXT                                    + 1).
  -define(glGetVertexAttribIivEXT,                                   ?glVertexAttribIPointerEXT                                 + 1).
  -define(glGetVertexAttribIuivEXT,                                  ?glGetVertexAttribIivEXT                                   + 1).

%% GL_EXT_gpu_shader4

  -define(glGetUniformuivEXT,                                        ?glGetVertexAttribIuivEXT                                  + 1).
  -define(glBindFragDataLocationEXT,                                 ?glGetUniformuivEXT                                        + 1).
  -define(glGetFragDataLocationEXT,                                  ?glBindFragDataLocationEXT                                 + 1).
  -define(glUniform1uiEXT,                                           ?glGetFragDataLocationEXT                                  + 1).
  -define(glUniform2uiEXT,                                           ?glUniform1uiEXT                                           + 1).
  -define(glUniform3uiEXT,                                           ?glUniform2uiEXT                                           + 1).
  -define(glUniform4uiEXT,                                           ?glUniform3uiEXT                                           + 1).
  -define(glUniform1uivEXT,                                          ?glUniform4uiEXT                                           + 1).
  -define(glUniform2uivEXT,                                          ?glUniform1uivEXT                                          + 1).
  -define(glUniform3uivEXT,                                          ?glUniform2uivEXT                                          + 1).
  -define(glUniform4uivEXT,                                          ?glUniform3uivEXT                                          + 1).

%% GL_EXT_draw_instanced

  -define(glDrawArraysInstancedEXT,                                  ?glUniform4uivEXT                                          + 1).
  -define(glDrawElementsInstancedEXT,                                ?glDrawArraysInstancedEXT                                  + 1).

%% GL_EXT_packed_float


%% GL_EXT_texture_array


%% GL_EXT_texture_buffer_object

  -define(glTexBufferEXT,                                            ?glDrawElementsInstancedEXT                                + 1).

%% GL_EXT_texture_compression_latc


%% GL_EXT_texture_compression_rgtc


%% GL_EXT_texture_shared_exponent


%% GL_NV_depth_buffer_float

  -define(glDepthRangedNV,                                           ?glTexBufferEXT                                            + 1).
  -define(glClearDepthdNV,                                           ?glDepthRangedNV                                           + 1).
  -define(glDepthBoundsdNV,                                          ?glClearDepthdNV                                           + 1).

%% GL_NV_fragment_program4


%% GL_NV_framebuffer_multisample_coverage

  -define(glRenderbufferStorageMultisampleCoverageNV,                ?glDepthBoundsdNV                                          + 1).

%% GL_EXT_framebuffer_sRGB


%% GL_NV_geometry_shader4


%% GL_NV_parameter_buffer_object

  -define(glProgramBufferParametersfvNV,                             ?glRenderbufferStorageMultisampleCoverageNV                + 1).
  -define(glProgramBufferParametersIivNV,                            ?glProgramBufferParametersfvNV                             + 1).
  -define(glProgramBufferParametersIuivNV,                           ?glProgramBufferParametersIivNV                            + 1).

%% GL_EXT_draw_buffers2

  -define(glColorMaskIndexedEXT,                                     ?glProgramBufferParametersIuivNV                           + 1).
  -define(glGetBooleanIndexedvEXT,                                   ?glColorMaskIndexedEXT                                     + 1).
  -define(glGetIntegerIndexedvEXT,                                   ?glGetBooleanIndexedvEXT                                   + 1).
  -define(glEnableIndexedEXT,                                        ?glGetIntegerIndexedvEXT                                   + 1).
  -define(glDisableIndexedEXT,                                       ?glEnableIndexedEXT                                        + 1).
  -define(glIsEnabledIndexedEXT,                                     ?glDisableIndexedEXT                                       + 1).

%% GL_NV_transform_feedback

  -define(glBeginTransformFeedbackNV,                                ?glIsEnabledIndexedEXT                                     + 1).
  -define(glEndTransformFeedbackNV,                                  ?glBeginTransformFeedbackNV                                + 1).
  -define(glTransformFeedbackAttribsNV,                              ?glEndTransformFeedbackNV                                  + 1).
  -define(glBindBufferRangeNV,                                       ?glTransformFeedbackAttribsNV                              + 1).
  -define(glBindBufferOffsetNV,                                      ?glBindBufferRangeNV                                       + 1).
  -define(glBindBufferBaseNV,                                        ?glBindBufferOffsetNV                                      + 1).
  -define(glTransformFeedbackVaryingsNV,                             ?glBindBufferBaseNV                                        + 1).
  -define(glActiveVaryingNV,                                         ?glTransformFeedbackVaryingsNV                             + 1).
  -define(glGetVaryingLocationNV,                                    ?glActiveVaryingNV                                         + 1).
  -define(glGetActiveVaryingNV,                                      ?glGetVaryingLocationNV                                    + 1).
  -define(glGetTransformFeedbackVaryingNV,                           ?glGetActiveVaryingNV                                      + 1).
  -define(glTransformFeedbackStreamAttribsNV,                        ?glGetTransformFeedbackVaryingNV                           + 1).

%% GL_EXT_bindable_uniform

  -define(glUniformBufferEXT,                                        ?glTransformFeedbackStreamAttribsNV                        + 1).
  -define(glGetUniformBufferSizeEXT,                                 ?glUniformBufferEXT                                        + 1).
  -define(glGetUniformOffsetEXT,                                     ?glGetUniformBufferSizeEXT                                 + 1).

%% GL_EXT_texture_integer

  -define(glTexParameterIivEXT,                                      ?glGetUniformOffsetEXT                                     + 1).
  -define(glTexParameterIuivEXT,                                     ?glTexParameterIivEXT                                      + 1).
  -define(glGetTexParameterIivEXT,                                   ?glTexParameterIuivEXT                                     + 1).
  -define(glGetTexParameterIuivEXT,                                  ?glGetTexParameterIivEXT                                   + 1).
  -define(glClearColorIiEXT,                                         ?glGetTexParameterIuivEXT                                  + 1).
  -define(glClearColorIuiEXT,                                        ?glClearColorIiEXT                                         + 1).

%% GL_GREMEDY_frame_terminator

  -define(glFrameTerminatorGREMEDY,                                  ?glClearColorIuiEXT                                        + 1).

%% GL_NV_conditional_render

  -define(glBeginConditionalRenderNV,                                ?glFrameTerminatorGREMEDY                                  + 1).
  -define(glEndConditionalRenderNV,                                  ?glBeginConditionalRenderNV                                + 1).

%% GL_NV_present_video

  -define(glPresentFrameKeyedNV,                                     ?glEndConditionalRenderNV                                  + 1).
  -define(glPresentFrameDualFillNV,                                  ?glPresentFrameKeyedNV                                     + 1).
  -define(glGetVideoivNV,                                            ?glPresentFrameDualFillNV                                  + 1).
  -define(glGetVideouivNV,                                           ?glGetVideoivNV                                            + 1).
  -define(glGetVideoi64vNV,                                          ?glGetVideouivNV                                           + 1).
  -define(glGetVideoui64vNV,                                         ?glGetVideoi64vNV                                          + 1).
  -define(glVideoParameterivNV,                                      ?glGetVideoui64vNV                                         + 1).

%% GL_EXT_transform_feedback

  -define(glBeginTransformFeedbackEXT,                               ?glVideoParameterivNV                                      + 1).
  -define(glEndTransformFeedbackEXT,                                 ?glBeginTransformFeedbackEXT                               + 1).
  -define(glBindBufferRangeEXT,                                      ?glEndTransformFeedbackEXT                                 + 1).
  -define(glBindBufferOffsetEXT,                                     ?glBindBufferRangeEXT                                      + 1).
  -define(glBindBufferBaseEXT,                                       ?glBindBufferOffsetEXT                                     + 1).
  -define(glTransformFeedbackVaryingsEXT,                            ?glBindBufferBaseEXT                                       + 1).
  -define(glGetTransformFeedbackVaryingEXT,                          ?glTransformFeedbackVaryingsEXT                            + 1).

%% GL_EXT_direct_state_access

  -define(glClientAttribDefaultEXT,                                  ?glGetTransformFeedbackVaryingEXT                          + 1).
  -define(glPushClientAttribDefaultEXT,                              ?glClientAttribDefaultEXT                                  + 1).
  -define(glMatrixLoadfEXT,                                          ?glPushClientAttribDefaultEXT                              + 1).
  -define(glMatrixLoaddEXT,                                          ?glMatrixLoadfEXT                                          + 1).
  -define(glMatrixMultfEXT,                                          ?glMatrixLoaddEXT                                          + 1).
  -define(glMatrixMultdEXT,                                          ?glMatrixMultfEXT                                          + 1).
  -define(glMatrixLoadIdentityEXT,                                   ?glMatrixMultdEXT                                          + 1).
  -define(glMatrixRotatefEXT,                                        ?glMatrixLoadIdentityEXT                                   + 1).
  -define(glMatrixRotatedEXT,                                        ?glMatrixRotatefEXT                                        + 1).
  -define(glMatrixScalefEXT,                                         ?glMatrixRotatedEXT                                        + 1).
  -define(glMatrixScaledEXT,                                         ?glMatrixScalefEXT                                         + 1).
  -define(glMatrixTranslatefEXT,                                     ?glMatrixScaledEXT                                         + 1).
  -define(glMatrixTranslatedEXT,                                     ?glMatrixTranslatefEXT                                     + 1).
  -define(glMatrixFrustumEXT,                                        ?glMatrixTranslatedEXT                                     + 1).
  -define(glMatrixOrthoEXT,                                          ?glMatrixFrustumEXT                                        + 1).
  -define(glMatrixPopEXT,                                            ?glMatrixOrthoEXT                                          + 1).
  -define(glMatrixPushEXT,                                           ?glMatrixPopEXT                                            + 1).
  -define(glMatrixLoadTransposefEXT,                                 ?glMatrixPushEXT                                           + 1).
  -define(glMatrixLoadTransposedEXT,                                 ?glMatrixLoadTransposefEXT                                 + 1).
  -define(glMatrixMultTransposefEXT,                                 ?glMatrixLoadTransposedEXT                                 + 1).
  -define(glMatrixMultTransposedEXT,                                 ?glMatrixMultTransposefEXT                                 + 1).
  -define(glTextureParameterfEXT,                                    ?glMatrixMultTransposedEXT                                 + 1).
  -define(glTextureParameterfvEXT,                                   ?glTextureParameterfEXT                                    + 1).
  -define(glTextureParameteriEXT,                                    ?glTextureParameterfvEXT                                   + 1).
  -define(glTextureParameterivEXT,                                   ?glTextureParameteriEXT                                    + 1).
  -define(glTextureImage1DEXT,                                       ?glTextureParameterivEXT                                   + 1).
  -define(glTextureImage2DEXT,                                       ?glTextureImage1DEXT                                       + 1).
  -define(glTextureSubImage1DEXT,                                    ?glTextureImage2DEXT                                       + 1).
  -define(glTextureSubImage2DEXT,                                    ?glTextureSubImage1DEXT                                    + 1).
  -define(glCopyTextureImage1DEXT,                                   ?glTextureSubImage2DEXT                                    + 1).
  -define(glCopyTextureImage2DEXT,                                   ?glCopyTextureImage1DEXT                                   + 1).
  -define(glCopyTextureSubImage1DEXT,                                ?glCopyTextureImage2DEXT                                   + 1).
  -define(glCopyTextureSubImage2DEXT,                                ?glCopyTextureSubImage1DEXT                                + 1).
  -define(glGetTextureImageEXT,                                      ?glCopyTextureSubImage2DEXT                                + 1).
  -define(glGetTextureParameterfvEXT,                                ?glGetTextureImageEXT                                      + 1).
  -define(glGetTextureParameterivEXT,                                ?glGetTextureParameterfvEXT                                + 1).
  -define(glGetTextureLevelParameterfvEXT,                           ?glGetTextureParameterivEXT                                + 1).
  -define(glGetTextureLevelParameterivEXT,                           ?glGetTextureLevelParameterfvEXT                           + 1).
  -define(glTextureImage3DEXT,                                       ?glGetTextureLevelParameterivEXT                           + 1).
  -define(glTextureSubImage3DEXT,                                    ?glTextureImage3DEXT                                       + 1).
  -define(glCopyTextureSubImage3DEXT,                                ?glTextureSubImage3DEXT                                    + 1).
  -define(glMultiTexParameterfEXT,                                   ?glCopyTextureSubImage3DEXT                                + 1).
  -define(glMultiTexParameterfvEXT,                                  ?glMultiTexParameterfEXT                                   + 1).
  -define(glMultiTexParameteriEXT,                                   ?glMultiTexParameterfvEXT                                  + 1).
  -define(glMultiTexParameterivEXT,                                  ?glMultiTexParameteriEXT                                   + 1).
  -define(glMultiTexImage1DEXT,                                      ?glMultiTexParameterivEXT                                  + 1).
  -define(glMultiTexImage2DEXT,                                      ?glMultiTexImage1DEXT                                      + 1).
  -define(glMultiTexSubImage1DEXT,                                   ?glMultiTexImage2DEXT                                      + 1).
  -define(glMultiTexSubImage2DEXT,                                   ?glMultiTexSubImage1DEXT                                   + 1).
  -define(glCopyMultiTexImage1DEXT,                                  ?glMultiTexSubImage2DEXT                                   + 1).
  -define(glCopyMultiTexImage2DEXT,                                  ?glCopyMultiTexImage1DEXT                                  + 1).
  -define(glCopyMultiTexSubImage1DEXT,                               ?glCopyMultiTexImage2DEXT                                  + 1).
  -define(glCopyMultiTexSubImage2DEXT,                               ?glCopyMultiTexSubImage1DEXT                               + 1).
  -define(glGetMultiTexImageEXT,                                     ?glCopyMultiTexSubImage2DEXT                               + 1).
  -define(glGetMultiTexParameterfvEXT,                               ?glGetMultiTexImageEXT                                     + 1).
  -define(glGetMultiTexParameterivEXT,                               ?glGetMultiTexParameterfvEXT                               + 1).
  -define(glGetMultiTexLevelParameterfvEXT,                          ?glGetMultiTexParameterivEXT                               + 1).
  -define(glGetMultiTexLevelParameterivEXT,                          ?glGetMultiTexLevelParameterfvEXT                          + 1).
  -define(glMultiTexImage3DEXT,                                      ?glGetMultiTexLevelParameterivEXT                          + 1).
  -define(glMultiTexSubImage3DEXT,                                   ?glMultiTexImage3DEXT                                      + 1).
  -define(glCopyMultiTexSubImage3DEXT,                               ?glMultiTexSubImage3DEXT                                   + 1).
  -define(glBindMultiTextureEXT,                                     ?glCopyMultiTexSubImage3DEXT                               + 1).
  -define(glEnableClientStateIndexedEXT,                             ?glBindMultiTextureEXT                                     + 1).
  -define(glDisableClientStateIndexedEXT,                            ?glEnableClientStateIndexedEXT                             + 1).
  -define(glMultiTexCoordPointerEXT,                                 ?glDisableClientStateIndexedEXT                            + 1).
  -define(glMultiTexEnvfEXT,                                         ?glMultiTexCoordPointerEXT                                 + 1).
  -define(glMultiTexEnvfvEXT,                                        ?glMultiTexEnvfEXT                                         + 1).
  -define(glMultiTexEnviEXT,                                         ?glMultiTexEnvfvEXT                                        + 1).
  -define(glMultiTexEnvivEXT,                                        ?glMultiTexEnviEXT                                         + 1).
  -define(glMultiTexGendEXT,                                         ?glMultiTexEnvivEXT                                        + 1).
  -define(glMultiTexGendvEXT,                                        ?glMultiTexGendEXT                                         + 1).
  -define(glMultiTexGenfEXT,                                         ?glMultiTexGendvEXT                                        + 1).
  -define(glMultiTexGenfvEXT,                                        ?glMultiTexGenfEXT                                         + 1).
  -define(glMultiTexGeniEXT,                                         ?glMultiTexGenfvEXT                                        + 1).
  -define(glMultiTexGenivEXT,                                        ?glMultiTexGeniEXT                                         + 1).
  -define(glGetMultiTexEnvfvEXT,                                     ?glMultiTexGenivEXT                                        + 1).
  -define(glGetMultiTexEnvivEXT,                                     ?glGetMultiTexEnvfvEXT                                     + 1).
  -define(glGetMultiTexGendvEXT,                                     ?glGetMultiTexEnvivEXT                                     + 1).
  -define(glGetMultiTexGenfvEXT,                                     ?glGetMultiTexGendvEXT                                     + 1).
  -define(glGetMultiTexGenivEXT,                                     ?glGetMultiTexGenfvEXT                                     + 1).
  -define(glGetFloatIndexedvEXT,                                     ?glGetMultiTexGenivEXT                                     + 1).
  -define(glGetDoubleIndexedvEXT,                                    ?glGetFloatIndexedvEXT                                     + 1).
  -define(glGetPointerIndexedvEXT,                                   ?glGetDoubleIndexedvEXT                                    + 1).
  -define(glCompressedTextureImage3DEXT,                             ?glGetPointerIndexedvEXT                                   + 1).
  -define(glCompressedTextureImage2DEXT,                             ?glCompressedTextureImage3DEXT                             + 1).
  -define(glCompressedTextureImage1DEXT,                             ?glCompressedTextureImage2DEXT                             + 1).
  -define(glCompressedTextureSubImage3DEXT,                          ?glCompressedTextureImage1DEXT                             + 1).
  -define(glCompressedTextureSubImage2DEXT,                          ?glCompressedTextureSubImage3DEXT                          + 1).
  -define(glCompressedTextureSubImage1DEXT,                          ?glCompressedTextureSubImage2DEXT                          + 1).
  -define(glGetCompressedTextureImageEXT,                            ?glCompressedTextureSubImage1DEXT                          + 1).
  -define(glCompressedMultiTexImage3DEXT,                            ?glGetCompressedTextureImageEXT                            + 1).
  -define(glCompressedMultiTexImage2DEXT,                            ?glCompressedMultiTexImage3DEXT                            + 1).
  -define(glCompressedMultiTexImage1DEXT,                            ?glCompressedMultiTexImage2DEXT                            + 1).
  -define(glCompressedMultiTexSubImage3DEXT,                         ?glCompressedMultiTexImage1DEXT                            + 1).
  -define(glCompressedMultiTexSubImage2DEXT,                         ?glCompressedMultiTexSubImage3DEXT                         + 1).
  -define(glCompressedMultiTexSubImage1DEXT,                         ?glCompressedMultiTexSubImage2DEXT                         + 1).
  -define(glGetCompressedMultiTexImageEXT,                           ?glCompressedMultiTexSubImage1DEXT                         + 1).
  -define(glNamedProgramStringEXT,                                   ?glGetCompressedMultiTexImageEXT                           + 1).
  -define(glNamedProgramLocalParameter4dEXT,                         ?glNamedProgramStringEXT                                   + 1).
  -define(glNamedProgramLocalParameter4dvEXT,                        ?glNamedProgramLocalParameter4dEXT                         + 1).
  -define(glNamedProgramLocalParameter4fEXT,                         ?glNamedProgramLocalParameter4dvEXT                        + 1).
  -define(glNamedProgramLocalParameter4fvEXT,                        ?glNamedProgramLocalParameter4fEXT                         + 1).
  -define(glGetNamedProgramLocalParameterdvEXT,                      ?glNamedProgramLocalParameter4fvEXT                        + 1).
  -define(glGetNamedProgramLocalParameterfvEXT,                      ?glGetNamedProgramLocalParameterdvEXT                      + 1).
  -define(glGetNamedProgramivEXT,                                    ?glGetNamedProgramLocalParameterfvEXT                      + 1).
  -define(glGetNamedProgramStringEXT,                                ?glGetNamedProgramivEXT                                    + 1).
  -define(glNamedProgramLocalParameters4fvEXT,                       ?glGetNamedProgramStringEXT                                + 1).
  -define(glNamedProgramLocalParameterI4iEXT,                        ?glNamedProgramLocalParameters4fvEXT                       + 1).
  -define(glNamedProgramLocalParameterI4ivEXT,                       ?glNamedProgramLocalParameterI4iEXT                        + 1).
  -define(glNamedProgramLocalParametersI4ivEXT,                      ?glNamedProgramLocalParameterI4ivEXT                       + 1).
  -define(glNamedProgramLocalParameterI4uiEXT,                       ?glNamedProgramLocalParametersI4ivEXT                      + 1).
  -define(glNamedProgramLocalParameterI4uivEXT,                      ?glNamedProgramLocalParameterI4uiEXT                       + 1).
  -define(glNamedProgramLocalParametersI4uivEXT,                     ?glNamedProgramLocalParameterI4uivEXT                      + 1).
  -define(glGetNamedProgramLocalParameterIivEXT,                     ?glNamedProgramLocalParametersI4uivEXT                     + 1).
  -define(glGetNamedProgramLocalParameterIuivEXT,                    ?glGetNamedProgramLocalParameterIivEXT                     + 1).
  -define(glTextureParameterIivEXT,                                  ?glGetNamedProgramLocalParameterIuivEXT                    + 1).
  -define(glTextureParameterIuivEXT,                                 ?glTextureParameterIivEXT                                  + 1).
  -define(glGetTextureParameterIivEXT,                               ?glTextureParameterIuivEXT                                 + 1).
  -define(glGetTextureParameterIuivEXT,                              ?glGetTextureParameterIivEXT                               + 1).
  -define(glMultiTexParameterIivEXT,                                 ?glGetTextureParameterIuivEXT                              + 1).
  -define(glMultiTexParameterIuivEXT,                                ?glMultiTexParameterIivEXT                                 + 1).
  -define(glGetMultiTexParameterIivEXT,                              ?glMultiTexParameterIuivEXT                                + 1).
  -define(glGetMultiTexParameterIuivEXT,                             ?glGetMultiTexParameterIivEXT                              + 1).
  -define(glProgramUniform1fEXT,                                     ?glGetMultiTexParameterIuivEXT                             + 1).
  -define(glProgramUniform2fEXT,                                     ?glProgramUniform1fEXT                                     + 1).
  -define(glProgramUniform3fEXT,                                     ?glProgramUniform2fEXT                                     + 1).
  -define(glProgramUniform4fEXT,                                     ?glProgramUniform3fEXT                                     + 1).
  -define(glProgramUniform1iEXT,                                     ?glProgramUniform4fEXT                                     + 1).
  -define(glProgramUniform2iEXT,                                     ?glProgramUniform1iEXT                                     + 1).
  -define(glProgramUniform3iEXT,                                     ?glProgramUniform2iEXT                                     + 1).
  -define(glProgramUniform4iEXT,                                     ?glProgramUniform3iEXT                                     + 1).
  -define(glProgramUniform1fvEXT,                                    ?glProgramUniform4iEXT                                     + 1).
  -define(glProgramUniform2fvEXT,                                    ?glProgramUniform1fvEXT                                    + 1).
  -define(glProgramUniform3fvEXT,                                    ?glProgramUniform2fvEXT                                    + 1).
  -define(glProgramUniform4fvEXT,                                    ?glProgramUniform3fvEXT                                    + 1).
  -define(glProgramUniform1ivEXT,                                    ?glProgramUniform4fvEXT                                    + 1).
  -define(glProgramUniform2ivEXT,                                    ?glProgramUniform1ivEXT                                    + 1).
  -define(glProgramUniform3ivEXT,                                    ?glProgramUniform2ivEXT                                    + 1).
  -define(glProgramUniform4ivEXT,                                    ?glProgramUniform3ivEXT                                    + 1).
  -define(glProgramUniformMatrix2fvEXT,                              ?glProgramUniform4ivEXT                                    + 1).
  -define(glProgramUniformMatrix3fvEXT,                              ?glProgramUniformMatrix2fvEXT                              + 1).
  -define(glProgramUniformMatrix4fvEXT,                              ?glProgramUniformMatrix3fvEXT                              + 1).
  -define(glProgramUniformMatrix2x3fvEXT,                            ?glProgramUniformMatrix4fvEXT                              + 1).
  -define(glProgramUniformMatrix3x2fvEXT,                            ?glProgramUniformMatrix2x3fvEXT                            + 1).
  -define(glProgramUniformMatrix2x4fvEXT,                            ?glProgramUniformMatrix3x2fvEXT                            + 1).
  -define(glProgramUniformMatrix4x2fvEXT,                            ?glProgramUniformMatrix2x4fvEXT                            + 1).
  -define(glProgramUniformMatrix3x4fvEXT,                            ?glProgramUniformMatrix4x2fvEXT                            + 1).
  -define(glProgramUniformMatrix4x3fvEXT,                            ?glProgramUniformMatrix3x4fvEXT                            + 1).
  -define(glProgramUniform1uiEXT,                                    ?glProgramUniformMatrix4x3fvEXT                            + 1).
  -define(glProgramUniform2uiEXT,                                    ?glProgramUniform1uiEXT                                    + 1).
  -define(glProgramUniform3uiEXT,                                    ?glProgramUniform2uiEXT                                    + 1).
  -define(glProgramUniform4uiEXT,                                    ?glProgramUniform3uiEXT                                    + 1).
  -define(glProgramUniform1uivEXT,                                   ?glProgramUniform4uiEXT                                    + 1).
  -define(glProgramUniform2uivEXT,                                   ?glProgramUniform1uivEXT                                   + 1).
  -define(glProgramUniform3uivEXT,                                   ?glProgramUniform2uivEXT                                   + 1).
  -define(glProgramUniform4uivEXT,                                   ?glProgramUniform3uivEXT                                   + 1).
  -define(glNamedBufferDataEXT,                                      ?glProgramUniform4uivEXT                                   + 1).
  -define(glNamedBufferSubDataEXT,                                   ?glNamedBufferDataEXT                                      + 1).
  -define(glMapNamedBufferEXT,                                       ?glNamedBufferSubDataEXT                                   + 1).
  -define(glUnmapNamedBufferEXT,                                     ?glMapNamedBufferEXT                                       + 1).
  -define(glMapNamedBufferRangeEXT,                                  ?glUnmapNamedBufferEXT                                     + 1).
  -define(glFlushMappedNamedBufferRangeEXT,                          ?glMapNamedBufferRangeEXT                                  + 1).
  -define(glNamedCopyBufferSubDataEXT,                               ?glFlushMappedNamedBufferRangeEXT                          + 1).
  -define(glGetNamedBufferParameterivEXT,                            ?glNamedCopyBufferSubDataEXT                               + 1).
  -define(glGetNamedBufferPointervEXT,                               ?glGetNamedBufferParameterivEXT                            + 1).
  -define(glGetNamedBufferSubDataEXT,                                ?glGetNamedBufferPointervEXT                               + 1).
  -define(glTextureBufferEXT,                                        ?glGetNamedBufferSubDataEXT                                + 1).
  -define(glMultiTexBufferEXT,                                       ?glTextureBufferEXT                                        + 1).
  -define(glNamedRenderbufferStorageEXT,                             ?glMultiTexBufferEXT                                       + 1).
  -define(glGetNamedRenderbufferParameterivEXT,                      ?glNamedRenderbufferStorageEXT                             + 1).
  -define(glCheckNamedFramebufferStatusEXT,                          ?glGetNamedRenderbufferParameterivEXT                      + 1).
  -define(glNamedFramebufferTexture1DEXT,                            ?glCheckNamedFramebufferStatusEXT                          + 1).
  -define(glNamedFramebufferTexture2DEXT,                            ?glNamedFramebufferTexture1DEXT                            + 1).
  -define(glNamedFramebufferTexture3DEXT,                            ?glNamedFramebufferTexture2DEXT                            + 1).
  -define(glNamedFramebufferRenderbufferEXT,                         ?glNamedFramebufferTexture3DEXT                            + 1).
  -define(glGetNamedFramebufferAttachmentParameterivEXT,             ?glNamedFramebufferRenderbufferEXT                         + 1).
  -define(glGenerateTextureMipmapEXT,                                ?glGetNamedFramebufferAttachmentParameterivEXT             + 1).
  -define(glGenerateMultiTexMipmapEXT,                               ?glGenerateTextureMipmapEXT                                + 1).
  -define(glFramebufferDrawBufferEXT,                                ?glGenerateMultiTexMipmapEXT                               + 1).
  -define(glFramebufferDrawBuffersEXT,                               ?glFramebufferDrawBufferEXT                                + 1).
  -define(glFramebufferReadBufferEXT,                                ?glFramebufferDrawBuffersEXT                               + 1).
  -define(glGetFramebufferParameterivEXT,                            ?glFramebufferReadBufferEXT                                + 1).
  -define(glNamedRenderbufferStorageMultisampleEXT,                  ?glGetFramebufferParameterivEXT                            + 1).
  -define(glNamedRenderbufferStorageMultisampleCoverageEXT,          ?glNamedRenderbufferStorageMultisampleEXT                  + 1).
  -define(glNamedFramebufferTextureEXT,                              ?glNamedRenderbufferStorageMultisampleCoverageEXT          + 1).
  -define(glNamedFramebufferTextureLayerEXT,                         ?glNamedFramebufferTextureEXT                              + 1).
  -define(glNamedFramebufferTextureFaceEXT,                          ?glNamedFramebufferTextureLayerEXT                         + 1).
  -define(glTextureRenderbufferEXT,                                  ?glNamedFramebufferTextureFaceEXT                          + 1).
  -define(glMultiTexRenderbufferEXT,                                 ?glTextureRenderbufferEXT                                  + 1).
  -define(glProgramUniform1dEXT,                                     ?glMultiTexRenderbufferEXT                                 + 1).
  -define(glProgramUniform2dEXT,                                     ?glProgramUniform1dEXT                                     + 1).
  -define(glProgramUniform3dEXT,                                     ?glProgramUniform2dEXT                                     + 1).
  -define(glProgramUniform4dEXT,                                     ?glProgramUniform3dEXT                                     + 1).
  -define(glProgramUniform1dvEXT,                                    ?glProgramUniform4dEXT                                     + 1).
  -define(glProgramUniform2dvEXT,                                    ?glProgramUniform1dvEXT                                    + 1).
  -define(glProgramUniform3dvEXT,                                    ?glProgramUniform2dvEXT                                    + 1).
  -define(glProgramUniform4dvEXT,                                    ?glProgramUniform3dvEXT                                    + 1).
  -define(glProgramUniformMatrix2dvEXT,                              ?glProgramUniform4dvEXT                                    + 1).
  -define(glProgramUniformMatrix3dvEXT,                              ?glProgramUniformMatrix2dvEXT                              + 1).
  -define(glProgramUniformMatrix4dvEXT,                              ?glProgramUniformMatrix3dvEXT                              + 1).
  -define(glProgramUniformMatrix2x3dvEXT,                            ?glProgramUniformMatrix4dvEXT                              + 1).
  -define(glProgramUniformMatrix2x4dvEXT,                            ?glProgramUniformMatrix2x3dvEXT                            + 1).
  -define(glProgramUniformMatrix3x2dvEXT,                            ?glProgramUniformMatrix2x4dvEXT                            + 1).
  -define(glProgramUniformMatrix3x4dvEXT,                            ?glProgramUniformMatrix3x2dvEXT                            + 1).
  -define(glProgramUniformMatrix4x2dvEXT,                            ?glProgramUniformMatrix3x4dvEXT                            + 1).
  -define(glProgramUniformMatrix4x3dvEXT,                            ?glProgramUniformMatrix4x2dvEXT                            + 1).

%% GL_EXT_vertex_array_bgra


%% GL_EXT_texture_swizzle


%% GL_NV_explicit_multisample

  -define(glGetMultisamplefvNV,                                      ?glProgramUniformMatrix4x3dvEXT                            + 1).
  -define(glSampleMaskIndexedNV,                                     ?glGetMultisamplefvNV                                      + 1).
  -define(glTexRenderbufferNV,                                       ?glSampleMaskIndexedNV                                     + 1).

%% GL_NV_transform_feedback2

  -define(glBindTransformFeedbackNV,                                 ?glTexRenderbufferNV                                       + 1).
  -define(glDeleteTransformFeedbacksNV,                              ?glBindTransformFeedbackNV                                 + 1).
  -define(glGenTransformFeedbacksNV,                                 ?glDeleteTransformFeedbacksNV                              + 1).
  -define(glIsTransformFeedbackNV,                                   ?glGenTransformFeedbacksNV                                 + 1).
  -define(glPauseTransformFeedbackNV,                                ?glIsTransformFeedbackNV                                   + 1).
  -define(glResumeTransformFeedbackNV,                               ?glPauseTransformFeedbackNV                                + 1).
  -define(glDrawTransformFeedbackNV,                                 ?glResumeTransformFeedbackNV                               + 1).

%% GL_ATI_meminfo


%% GL_AMD_performance_monitor

  -define(glGetPerfMonitorGroupsAMD,                                 ?glDrawTransformFeedbackNV                                 + 1).
  -define(glGetPerfMonitorCountersAMD,                               ?glGetPerfMonitorGroupsAMD                                 + 1).
  -define(glGetPerfMonitorGroupStringAMD,                            ?glGetPerfMonitorCountersAMD                               + 1).
  -define(glGetPerfMonitorCounterStringAMD,                          ?glGetPerfMonitorGroupStringAMD                            + 1).
  -define(glGetPerfMonitorCounterInfoAMD,                            ?glGetPerfMonitorCounterStringAMD                          + 1).
  -define(glGenPerfMonitorsAMD,                                      ?glGetPerfMonitorCounterInfoAMD                            + 1).
  -define(glDeletePerfMonitorsAMD,                                   ?glGenPerfMonitorsAMD                                      + 1).
  -define(glSelectPerfMonitorCountersAMD,                            ?glDeletePerfMonitorsAMD                                   + 1).
  -define(glBeginPerfMonitorAMD,                                     ?glSelectPerfMonitorCountersAMD                            + 1).
  -define(glEndPerfMonitorAMD,                                       ?glBeginPerfMonitorAMD                                     + 1).
  -define(glGetPerfMonitorCounterDataAMD,                            ?glEndPerfMonitorAMD                                       + 1).

%% GL_AMD_texture_texture4


%% GL_AMD_vertex_shader_tesselator

  -define(glTessellationFactorAMD,                                   ?glGetPerfMonitorCounterDataAMD                            + 1).
  -define(glTessellationModeAMD,                                     ?glTessellationFactorAMD                                   + 1).

%% GL_EXT_provoking_vertex

  -define(glProvokingVertexEXT,                                      ?glTessellationModeAMD                                     + 1).

%% GL_EXT_texture_snorm


%% GL_AMD_draw_buffers_blend

  -define(glBlendFuncIndexedAMD,                                     ?glProvokingVertexEXT                                      + 1).
  -define(glBlendFuncSeparateIndexedAMD,                             ?glBlendFuncIndexedAMD                                     + 1).
  -define(glBlendEquationIndexedAMD,                                 ?glBlendFuncSeparateIndexedAMD                             + 1).
  -define(glBlendEquationSeparateIndexedAMD,                         ?glBlendEquationIndexedAMD                                 + 1).

%% GL_APPLE_texture_range

  -define(glTextureRangeAPPLE,                                       ?glBlendEquationSeparateIndexedAMD                         + 1).
  -define(glGetTexParameterPointervAPPLE,                            ?glTextureRangeAPPLE                                       + 1).

%% GL_APPLE_float_pixels


%% GL_APPLE_vertex_program_evaluators

  -define(glEnableVertexAttribAPPLE,                                 ?glGetTexParameterPointervAPPLE                            + 1).
  -define(glDisableVertexAttribAPPLE,                                ?glEnableVertexAttribAPPLE                                 + 1).
  -define(glIsVertexAttribEnabledAPPLE,                              ?glDisableVertexAttribAPPLE                                + 1).
  -define(glMapVertexAttrib1dAPPLE,                                  ?glIsVertexAttribEnabledAPPLE                              + 1).
  -define(glMapVertexAttrib1fAPPLE,                                  ?glMapVertexAttrib1dAPPLE                                  + 1).
  -define(glMapVertexAttrib2dAPPLE,                                  ?glMapVertexAttrib1fAPPLE                                  + 1).
  -define(glMapVertexAttrib2fAPPLE,                                  ?glMapVertexAttrib2dAPPLE                                  + 1).

%% GL_APPLE_aux_depth_stencil


%% GL_APPLE_object_purgeable

  -define(glObjectPurgeableAPPLE,                                    ?glMapVertexAttrib2fAPPLE                                  + 1).
  -define(glObjectUnpurgeableAPPLE,                                  ?glObjectPurgeableAPPLE                                    + 1).
  -define(glGetObjectParameterivAPPLE,                               ?glObjectUnpurgeableAPPLE                                  + 1).

%% GL_APPLE_row_bytes


%% GL_APPLE_rgb_422


%% GL_NV_video_capture

  -define(glBeginVideoCaptureNV,                                     ?glGetObjectParameterivAPPLE                               + 1).
  -define(glBindVideoCaptureStreamBufferNV,                          ?glBeginVideoCaptureNV                                     + 1).
  -define(glBindVideoCaptureStreamTextureNV,                         ?glBindVideoCaptureStreamBufferNV                          + 1).
  -define(glEndVideoCaptureNV,                                       ?glBindVideoCaptureStreamTextureNV                         + 1).
  -define(glGetVideoCaptureivNV,                                     ?glEndVideoCaptureNV                                       + 1).
  -define(glGetVideoCaptureStreamivNV,                               ?glGetVideoCaptureivNV                                     + 1).
  -define(glGetVideoCaptureStreamfvNV,                               ?glGetVideoCaptureStreamivNV                               + 1).
  -define(glGetVideoCaptureStreamdvNV,                               ?glGetVideoCaptureStreamfvNV                               + 1).
  -define(glVideoCaptureNV,                                          ?glGetVideoCaptureStreamdvNV                               + 1).
  -define(glVideoCaptureStreamParameterivNV,                         ?glVideoCaptureNV                                          + 1).
  -define(glVideoCaptureStreamParameterfvNV,                         ?glVideoCaptureStreamParameterivNV                         + 1).
  -define(glVideoCaptureStreamParameterdvNV,                         ?glVideoCaptureStreamParameterfvNV                         + 1).

%% GL_NV_copy_image

  -define(glCopyImageSubDataNV,                                      ?glVideoCaptureStreamParameterdvNV                         + 1).

%% GL_EXT_separate_shader_objects

  -define(glUseShaderProgramEXT,                                     ?glCopyImageSubDataNV                                      + 1).
  -define(glActiveProgramEXT,                                        ?glUseShaderProgramEXT                                     + 1).
  -define(glCreateShaderProgramEXT,                                  ?glActiveProgramEXT                                        + 1).

%% GL_NV_parameter_buffer_object2


%% GL_NV_shader_buffer_load

  -define(glMakeBufferResidentNV,                                    ?glCreateShaderProgramEXT                                  + 1).
  -define(glMakeBufferNonResidentNV,                                 ?glMakeBufferResidentNV                                    + 1).
  -define(glIsBufferResidentNV,                                      ?glMakeBufferNonResidentNV                                 + 1).
  -define(glNamedMakeBufferResidentNV,                               ?glIsBufferResidentNV                                      + 1).
  -define(glNamedMakeBufferNonResidentNV,                            ?glNamedMakeBufferResidentNV                               + 1).
  -define(glIsNamedBufferResidentNV,                                 ?glNamedMakeBufferNonResidentNV                            + 1).
  -define(glGetBufferParameterui64vNV,                               ?glIsNamedBufferResidentNV                                 + 1).
  -define(glGetNamedBufferParameterui64vNV,                          ?glGetBufferParameterui64vNV                               + 1).
  -define(glGetIntegerui64vNV,                                       ?glGetNamedBufferParameterui64vNV                          + 1).
  -define(glUniformui64NV,                                           ?glGetIntegerui64vNV                                       + 1).
  -define(glUniformui64vNV,                                          ?glUniformui64NV                                           + 1).
  -define(glGetUniformui64vNV,                                       ?glUniformui64vNV                                          + 1).
  -define(glProgramUniformui64NV,                                    ?glGetUniformui64vNV                                       + 1).
  -define(glProgramUniformui64vNV,                                   ?glProgramUniformui64NV                                    + 1).

%% GL_NV_vertex_buffer_unified_memory

  -define(glBufferAddressRangeNV,                                    ?glProgramUniformui64vNV                                   + 1).
  -define(glVertexFormatNV,                                          ?glBufferAddressRangeNV                                    + 1).
  -define(glNormalFormatNV,                                          ?glVertexFormatNV                                          + 1).
  -define(glColorFormatNV,                                           ?glNormalFormatNV                                          + 1).
  -define(glIndexFormatNV,                                           ?glColorFormatNV                                           + 1).
  -define(glTexCoordFormatNV,                                        ?glIndexFormatNV                                           + 1).
  -define(glEdgeFlagFormatNV,                                        ?glTexCoordFormatNV                                        + 1).
  -define(glSecondaryColorFormatNV,                                  ?glEdgeFlagFormatNV                                        + 1).
  -define(glFogCoordFormatNV,                                        ?glSecondaryColorFormatNV                                  + 1).
  -define(glVertexAttribFormatNV,                                    ?glFogCoordFormatNV                                        + 1).
  -define(glVertexAttribIFormatNV,                                   ?glVertexAttribFormatNV                                    + 1).
  -define(glGetIntegerui64i_vNV,                                     ?glVertexAttribIFormatNV                                   + 1).

%% GL_NV_texture_barrier

  -define(glTextureBarrierNV,                                        ?glGetIntegerui64i_vNV                                     + 1).

%% GL_AMD_shader_stencil_export


%% GL_AMD_seamless_cubemap_per_texture


%% GL_AMD_conservative_depth


%% GL_EXT_shader_image_load_store

  -define(glBindImageTextureEXT,                                     ?glTextureBarrierNV                                        + 1).
  -define(glMemoryBarrierEXT,                                        ?glBindImageTextureEXT                                     + 1).

%% GL_EXT_vertex_attrib_64bit

  -define(glVertexAttribL1dEXT,                                      ?glMemoryBarrierEXT                                        + 1).
  -define(glVertexAttribL2dEXT,                                      ?glVertexAttribL1dEXT                                      + 1).
  -define(glVertexAttribL3dEXT,                                      ?glVertexAttribL2dEXT                                      + 1).
  -define(glVertexAttribL4dEXT,                                      ?glVertexAttribL3dEXT                                      + 1).
  -define(glVertexAttribL1dvEXT,                                     ?glVertexAttribL4dEXT                                      + 1).
  -define(glVertexAttribL2dvEXT,                                     ?glVertexAttribL1dvEXT                                     + 1).
  -define(glVertexAttribL3dvEXT,                                     ?glVertexAttribL2dvEXT                                     + 1).
  -define(glVertexAttribL4dvEXT,                                     ?glVertexAttribL3dvEXT                                     + 1).
  -define(glVertexAttribLPointerEXT,                                 ?glVertexAttribL4dvEXT                                     + 1).
  -define(glGetVertexAttribLdvEXT,                                   ?glVertexAttribLPointerEXT                                 + 1).
  -define(glVertexArrayVertexAttribLOffsetEXT,                       ?glGetVertexAttribLdvEXT                                   + 1).

%% GL_NV_gpu_program5

  -define(glProgramSubroutineParametersuivNV,                        ?glVertexArrayVertexAttribLOffsetEXT                       + 1).
  -define(glGetProgramSubroutineParameteruivNV,                      ?glProgramSubroutineParametersuivNV                        + 1).

%% GL_NV_gpu_shader5

  -define(glUniform1i64NV,                                           ?glGetProgramSubroutineParameteruivNV                      + 1).
  -define(glUniform2i64NV,                                           ?glUniform1i64NV                                           + 1).
  -define(glUniform3i64NV,                                           ?glUniform2i64NV                                           + 1).
  -define(glUniform4i64NV,                                           ?glUniform3i64NV                                           + 1).
  -define(glUniform1i64vNV,                                          ?glUniform4i64NV                                           + 1).
  -define(glUniform2i64vNV,                                          ?glUniform1i64vNV                                          + 1).
  -define(glUniform3i64vNV,                                          ?glUniform2i64vNV                                          + 1).
  -define(glUniform4i64vNV,                                          ?glUniform3i64vNV                                          + 1).
  -define(glUniform1ui64NV,                                          ?glUniform4i64vNV                                          + 1).
  -define(glUniform2ui64NV,                                          ?glUniform1ui64NV                                          + 1).
  -define(glUniform3ui64NV,                                          ?glUniform2ui64NV                                          + 1).
  -define(glUniform4ui64NV,                                          ?glUniform3ui64NV                                          + 1).
  -define(glUniform1ui64vNV,                                         ?glUniform4ui64NV                                          + 1).
  -define(glUniform2ui64vNV,                                         ?glUniform1ui64vNV                                         + 1).
  -define(glUniform3ui64vNV,                                         ?glUniform2ui64vNV                                         + 1).
  -define(glUniform4ui64vNV,                                         ?glUniform3ui64vNV                                         + 1).
  -define(glGetUniformi64vNV,                                        ?glUniform4ui64vNV                                         + 1).
  -define(glProgramUniform1i64NV,                                    ?glGetUniformi64vNV                                        + 1).
  -define(glProgramUniform2i64NV,                                    ?glProgramUniform1i64NV                                    + 1).
  -define(glProgramUniform3i64NV,                                    ?glProgramUniform2i64NV                                    + 1).
  -define(glProgramUniform4i64NV,                                    ?glProgramUniform3i64NV                                    + 1).
  -define(glProgramUniform1i64vNV,                                   ?glProgramUniform4i64NV                                    + 1).
  -define(glProgramUniform2i64vNV,                                   ?glProgramUniform1i64vNV                                   + 1).
  -define(glProgramUniform3i64vNV,                                   ?glProgramUniform2i64vNV                                   + 1).
  -define(glProgramUniform4i64vNV,                                   ?glProgramUniform3i64vNV                                   + 1).
  -define(glProgramUniform1ui64NV,                                   ?glProgramUniform4i64vNV                                   + 1).
  -define(glProgramUniform2ui64NV,                                   ?glProgramUniform1ui64NV                                   + 1).
  -define(glProgramUniform3ui64NV,                                   ?glProgramUniform2ui64NV                                   + 1).
  -define(glProgramUniform4ui64NV,                                   ?glProgramUniform3ui64NV                                   + 1).
  -define(glProgramUniform1ui64vNV,                                  ?glProgramUniform4ui64NV                                   + 1).
  -define(glProgramUniform2ui64vNV,                                  ?glProgramUniform1ui64vNV                                  + 1).
  -define(glProgramUniform3ui64vNV,                                  ?glProgramUniform2ui64vNV                                  + 1).
  -define(glProgramUniform4ui64vNV,                                  ?glProgramUniform3ui64vNV                                  + 1).

%% GL_NV_shader_buffer_store


%% GL_NV_tessellation_program5


%% GL_NV_vertex_attrib_integer_64bit

  -define(glVertexAttribL1i64NV,                                     ?glProgramUniform4ui64vNV                                  + 1).
  -define(glVertexAttribL2i64NV,                                     ?glVertexAttribL1i64NV                                     + 1).
  -define(glVertexAttribL3i64NV,                                     ?glVertexAttribL2i64NV                                     + 1).
  -define(glVertexAttribL4i64NV,                                     ?glVertexAttribL3i64NV                                     + 1).
  -define(glVertexAttribL1i64vNV,                                    ?glVertexAttribL4i64NV                                     + 1).
  -define(glVertexAttribL2i64vNV,                                    ?glVertexAttribL1i64vNV                                    + 1).
  -define(glVertexAttribL3i64vNV,                                    ?glVertexAttribL2i64vNV                                    + 1).
  -define(glVertexAttribL4i64vNV,                                    ?glVertexAttribL3i64vNV                                    + 1).
  -define(glVertexAttribL1ui64NV,                                    ?glVertexAttribL4i64vNV                                    + 1).
  -define(glVertexAttribL2ui64NV,                                    ?glVertexAttribL1ui64NV                                    + 1).
  -define(glVertexAttribL3ui64NV,                                    ?glVertexAttribL2ui64NV                                    + 1).
  -define(glVertexAttribL4ui64NV,                                    ?glVertexAttribL3ui64NV                                    + 1).
  -define(glVertexAttribL1ui64vNV,                                   ?glVertexAttribL4ui64NV                                    + 1).
  -define(glVertexAttribL2ui64vNV,                                   ?glVertexAttribL1ui64vNV                                   + 1).
  -define(glVertexAttribL3ui64vNV,                                   ?glVertexAttribL2ui64vNV                                   + 1).
  -define(glVertexAttribL4ui64vNV,                                   ?glVertexAttribL3ui64vNV                                   + 1).
  -define(glGetVertexAttribLi64vNV,                                  ?glVertexAttribL4ui64vNV                                   + 1).
  -define(glGetVertexAttribLui64vNV,                                 ?glGetVertexAttribLi64vNV                                  + 1).
  -define(glVertexAttribLFormatNV,                                   ?glGetVertexAttribLui64vNV                                 + 1).

%% GL_NV_multisample_coverage


%% GL_AMD_name_gen_delete

  -define(glGenNamesAMD,                                             ?glVertexAttribLFormatNV                                   + 1).
  -define(glDeleteNamesAMD,                                          ?glGenNamesAMD                                             + 1).
  -define(glIsNameAMD,                                               ?glDeleteNamesAMD                                          + 1).

%% GL_AMD_debug_output

  -define(glDebugMessageEnableAMD,                                   ?glIsNameAMD                                               + 1).
  -define(glDebugMessageInsertAMD,                                   ?glDebugMessageEnableAMD                                   + 1).
  -define(glDebugMessageCallbackAMD,                                 ?glDebugMessageInsertAMD                                   + 1).
  -define(glGetDebugMessageLogAMD,                                   ?glDebugMessageCallbackAMD                                 + 1).

%% GL_NV_vdpau_interop

  -define(glVDPAUInitNV,                                             ?glGetDebugMessageLogAMD                                   + 1).
  -define(glVDPAUFiniNV,                                             ?glVDPAUInitNV                                             + 1).
  -define(glVDPAURegisterVideoSurfaceNV,                             ?glVDPAUFiniNV                                             + 1).
  -define(glVDPAURegisterOutputSurfaceNV,                            ?glVDPAURegisterVideoSurfaceNV                             + 1).
  -define(glVDPAUIsSurfaceNV,                                        ?glVDPAURegisterOutputSurfaceNV                            + 1).
  -define(glVDPAUUnregisterSurfaceNV,                                ?glVDPAUIsSurfaceNV                                        + 1).
  -define(glVDPAUGetSurfaceivNV,                                     ?glVDPAUUnregisterSurfaceNV                                + 1).
  -define(glVDPAUSurfaceAccessNV,                                    ?glVDPAUGetSurfaceivNV                                     + 1).
  -define(glVDPAUMapSurfacesNV,                                      ?glVDPAUSurfaceAccessNV                                    + 1).
  -define(glVDPAUUnmapSurfacesNV,                                    ?glVDPAUMapSurfacesNV                                      + 1).

%% GL_AMD_transform_feedback3_lines_triangles


%% GL_AMD_depth_clamp_separate


%% GL_EXT_texture_sRGB_decode


%% GL_NV_texture_multisample

  -define(glTexImage2DMultisampleCoverageNV,                         ?glVDPAUUnmapSurfacesNV                                    + 1).
  -define(glTexImage3DMultisampleCoverageNV,                         ?glTexImage2DMultisampleCoverageNV                         + 1).
  -define(glTextureImage2DMultisampleNV,                             ?glTexImage3DMultisampleCoverageNV                         + 1).
  -define(glTextureImage3DMultisampleNV,                             ?glTextureImage2DMultisampleNV                             + 1).
  -define(glTextureImage2DMultisampleCoverageNV,                     ?glTextureImage3DMultisampleNV                             + 1).
  -define(glTextureImage3DMultisampleCoverageNV,                     ?glTextureImage2DMultisampleCoverageNV                     + 1).

%% GL_AMD_blend_minmax_factor


%% GL_AMD_sample_positions

  -define(glSetMultisamplefvAMD,                                     ?glTextureImage3DMultisampleCoverageNV                     + 1).

%% GL_EXT_x11_sync_object

  -define(glImportSyncEXT,                                           ?glSetMultisamplefvAMD                                     + 1).

%% GL_AMD_multi_draw_indirect

  -define(glMultiDrawArraysIndirectAMD,                              ?glImportSyncEXT                                           + 1).
  -define(glMultiDrawElementsIndirectAMD,                            ?glMultiDrawArraysIndirectAMD                              + 1).

%% GL_EXT_framebuffer_multisample_blit_scaled


%% GL_NV_path_rendering

  -define(glGenPathsNV,                                              ?glMultiDrawElementsIndirectAMD                            + 1).
  -define(glDeletePathsNV,                                           ?glGenPathsNV                                              + 1).
  -define(glIsPathNV,                                                ?glDeletePathsNV                                           + 1).
  -define(glPathCommandsNV,                                          ?glIsPathNV                                                + 1).
  -define(glPathCoordsNV,                                            ?glPathCommandsNV                                          + 1).
  -define(glPathSubCommandsNV,                                       ?glPathCoordsNV                                            + 1).
  -define(glPathSubCoordsNV,                                         ?glPathSubCommandsNV                                       + 1).
  -define(glPathStringNV,                                            ?glPathSubCoordsNV                                         + 1).
  -define(glPathGlyphsNV,                                            ?glPathStringNV                                            + 1).
  -define(glPathGlyphRangeNV,                                        ?glPathGlyphsNV                                            + 1).
  -define(glWeightPathsNV,                                           ?glPathGlyphRangeNV                                        + 1).
  -define(glCopyPathNV,                                              ?glWeightPathsNV                                           + 1).
  -define(glInterpolatePathsNV,                                      ?glCopyPathNV                                              + 1).
  -define(glTransformPathNV,                                         ?glInterpolatePathsNV                                      + 1).
  -define(glPathParameterivNV,                                       ?glTransformPathNV                                         + 1).
  -define(glPathParameteriNV,                                        ?glPathParameterivNV                                       + 1).
  -define(glPathParameterfvNV,                                       ?glPathParameteriNV                                        + 1).
  -define(glPathParameterfNV,                                        ?glPathParameterfvNV                                       + 1).
  -define(glPathDashArrayNV,                                         ?glPathParameterfNV                                        + 1).
  -define(glPathStencilFuncNV,                                       ?glPathDashArrayNV                                         + 1).
  -define(glPathStencilDepthOffsetNV,                                ?glPathStencilFuncNV                                       + 1).
  -define(glStencilFillPathNV,                                       ?glPathStencilDepthOffsetNV                                + 1).
  -define(glStencilStrokePathNV,                                     ?glStencilFillPathNV                                       + 1).
  -define(glStencilFillPathInstancedNV,                              ?glStencilStrokePathNV                                     + 1).
  -define(glStencilStrokePathInstancedNV,                            ?glStencilFillPathInstancedNV                              + 1).
  -define(glPathCoverDepthFuncNV,                                    ?glStencilStrokePathInstancedNV                            + 1).
  -define(glPathColorGenNV,                                          ?glPathCoverDepthFuncNV                                    + 1).
  -define(glPathTexGenNV,                                            ?glPathColorGenNV                                          + 1).
  -define(glPathFogGenNV,                                            ?glPathTexGenNV                                            + 1).
  -define(glCoverFillPathNV,                                         ?glPathFogGenNV                                            + 1).
  -define(glCoverStrokePathNV,                                       ?glCoverFillPathNV                                         + 1).
  -define(glCoverFillPathInstancedNV,                                ?glCoverStrokePathNV                                       + 1).
  -define(glCoverStrokePathInstancedNV,                              ?glCoverFillPathInstancedNV                                + 1).
  -define(glGetPathParameterivNV,                                    ?glCoverStrokePathInstancedNV                              + 1).
  -define(glGetPathParameterfvNV,                                    ?glGetPathParameterivNV                                    + 1).
  -define(glGetPathCommandsNV,                                       ?glGetPathParameterfvNV                                    + 1).
  -define(glGetPathCoordsNV,                                         ?glGetPathCommandsNV                                       + 1).
  -define(glGetPathDashArrayNV,                                      ?glGetPathCoordsNV                                         + 1).
  -define(glGetPathMetricsNV,                                        ?glGetPathDashArrayNV                                      + 1).
  -define(glGetPathMetricRangeNV,                                    ?glGetPathMetricsNV                                        + 1).
  -define(glGetPathSpacingNV,                                        ?glGetPathMetricRangeNV                                    + 1).
  -define(glGetPathColorGenivNV,                                     ?glGetPathSpacingNV                                        + 1).
  -define(glGetPathColorGenfvNV,                                     ?glGetPathColorGenivNV                                     + 1).
  -define(glGetPathTexGenivNV,                                       ?glGetPathColorGenfvNV                                     + 1).
  -define(glGetPathTexGenfvNV,                                       ?glGetPathTexGenivNV                                       + 1).
  -define(glIsPointInFillPathNV,                                     ?glGetPathTexGenfvNV                                       + 1).
  -define(glIsPointInStrokePathNV,                                   ?glIsPointInFillPathNV                                     + 1).
  -define(glGetPathLengthNV,                                         ?glIsPointInStrokePathNV                                   + 1).
  -define(glPointAlongPathNV,                                        ?glGetPathLengthNV                                         + 1).

%% GL_AMD_pinned_memory


%% GL_AMD_stencil_operation_extended

  -define(glStencilOpValueAMD,                                       ?glPointAlongPathNV                                        + 1).

%% GL_AMD_vertex_shader_viewport_index


%% GL_AMD_vertex_shader_layer


%% GL_NV_bindless_texture

  -define(glGetTextureHandleNV,                                      ?glStencilOpValueAMD                                       + 1).
  -define(glGetTextureSamplerHandleNV,                               ?glGetTextureHandleNV                                      + 1).
  -define(glMakeTextureHandleResidentNV,                             ?glGetTextureSamplerHandleNV                               + 1).
  -define(glMakeTextureHandleNonResidentNV,                          ?glMakeTextureHandleResidentNV                             + 1).
  -define(glGetImageHandleNV,                                        ?glMakeTextureHandleNonResidentNV                          + 1).
  -define(glMakeImageHandleResidentNV,                               ?glGetImageHandleNV                                        + 1).
  -define(glMakeImageHandleNonResidentNV,                            ?glMakeImageHandleResidentNV                               + 1).
  -define(glUniformHandleui64NV,                                     ?glMakeImageHandleNonResidentNV                            + 1).
  -define(glUniformHandleui64vNV,                                    ?glUniformHandleui64NV                                     + 1).
  -define(glProgramUniformHandleui64NV,                              ?glUniformHandleui64vNV                                    + 1).
  -define(glProgramUniformHandleui64vNV,                             ?glProgramUniformHandleui64NV                              + 1).
  -define(glIsTextureHandleResidentNV,                               ?glProgramUniformHandleui64vNV                             + 1).
  -define(glIsImageHandleResidentNV,                                 ?glIsTextureHandleResidentNV                               + 1).

%% GL_NV_shader_atomic_float


%% GL_AMD_query_buffer_object


%% GL_NV_compute_program5


%% GL_NV_shader_storage_buffer_object


%% GL_NV_shader_atomic_counters


%% GL_NV_deep_texture3D


%% GL_NVX_conditional_render

  -define(glBeginConditionalRenderNVX,                               ?glIsImageHandleResidentNV                                 + 1).
  -define(glEndConditionalRenderNVX,                                 ?glBeginConditionalRenderNVX                               + 1).

%% GL_AMD_sparse_texture

  -define(glTexStorageSparseAMD,                                     ?glEndConditionalRenderNVX                                 + 1).
  -define(glTextureStorageSparseAMD,                                 ?glTexStorageSparseAMD                                     + 1).

%% GL_AMD_shader_trinary_minmax


%% GL_INTEL_map_texture

  -define(glSyncTextureINTEL,                                        ?glTextureStorageSparseAMD                                 + 1).
  -define(glUnmapTexture2DINTEL,                                     ?glSyncTextureINTEL                                        + 1).
  -define(glMapTexture2DINTEL,                                       ?glUnmapTexture2DINTEL                                     + 1).

%% GL_NV_draw_texture

  -define(glDrawTextureNV,                                           ?glMapTexture2DINTEL                                       + 1).

  %% EXDL_GLEXT C SRC ENUM CHECK
  -define(_ENUM_EXDL_GLEXT,                                          ?glDrawTextureNV                                           + 1).

-else. % COMPILE_GLEXT

  -define(_ENUM_EXDL_GLEXT,                                          ?EXDL_GLEXT_HRL).

-endif. % COMPILE_GLEXT
