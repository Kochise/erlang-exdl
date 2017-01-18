/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_gl.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_GL

  enum
  { glAccum_ENUM = EXDL_GL_H
  , glAlphaFunc_ENUM
  , glAreTexturesResident_ENUM
  , glArrayElement_ENUM
  , glBegin_ENUM
  , glBindTexture_ENUM
  , glBitmap_ENUM
  , glBlendFunc_ENUM
  , glCallList_ENUM
  , glCallLists_ENUM
  , glClear_ENUM
  , glClearAccum_ENUM
  , glClearColor_ENUM
  , glClearDepth_ENUM
  , glClearIndex_ENUM
  , glClearStencil_ENUM
  , glClipPlane_ENUM
  , glColor3b_ENUM
  , glColor3bv_ENUM
  , glColor3d_ENUM
  , glColor3dv_ENUM
  , glColor3f_ENUM
  , glColor3fv_ENUM
  , glColor3i_ENUM
  , glColor3iv_ENUM
  , glColor3s_ENUM
  , glColor3sv_ENUM
  , glColor3ub_ENUM
  , glColor3ubv_ENUM
  , glColor3ui_ENUM
  , glColor3uiv_ENUM
  , glColor3us_ENUM
  , glColor3usv_ENUM
  , glColor4b_ENUM
  , glColor4bv_ENUM
  , glColor4d_ENUM
  , glColor4dv_ENUM
  , glColor4f_ENUM
  , glColor4fv_ENUM
  , glColor4i_ENUM
  , glColor4iv_ENUM
  , glColor4s_ENUM
  , glColor4sv_ENUM
  , glColor4ub_ENUM
  , glColor4ubv_ENUM
  , glColor4ui_ENUM
  , glColor4uiv_ENUM
  , glColor4us_ENUM
  , glColor4usv_ENUM
  , glColorMask_ENUM
  , glColorMaterial_ENUM
  , glColorPointer_ENUM
  , glCopyPixels_ENUM
  , glCopyTexImage1D_ENUM
  , glCopyTexImage2D_ENUM
  , glCopyTexSubImage1D_ENUM
  , glCopyTexSubImage2D_ENUM
  , glCullFace_ENUM
  , glDeleteLists_ENUM
  , glDeleteTextures_ENUM
  , glDepthFunc_ENUM
  , glDepthMask_ENUM
  , glDepthRange_ENUM
  , glDisable_ENUM
  , glDisableClientState_ENUM
  , glDrawArrays_ENUM
  , glDrawBuffer_ENUM
  , glDrawElements_ENUM
  , glDrawPixels_ENUM
  , glEdgeFlag_ENUM
  , glEdgeFlagPointer_ENUM
  , glEdgeFlagv_ENUM
  , glEnable_ENUM
  , glEnableClientState_ENUM
  , glEnd_ENUM
  , glEndList_ENUM
  , glEvalCoord1d_ENUM
  , glEvalCoord1dv_ENUM
  , glEvalCoord1f_ENUM
  , glEvalCoord1fv_ENUM
  , glEvalCoord2d_ENUM
  , glEvalCoord2dv_ENUM
  , glEvalCoord2f_ENUM
  , glEvalCoord2fv_ENUM
  , glEvalMesh1_ENUM
  , glEvalMesh2_ENUM
  , glEvalPoint1_ENUM
  , glEvalPoint2_ENUM
  , glFeedbackBuffer_ENUM
  , glFinish_ENUM
  , glFlush_ENUM
  , glFogf_ENUM
  , glFogfv_ENUM
  , glFogi_ENUM
  , glFogiv_ENUM
  , glFrontFace_ENUM
  , glFrustum_ENUM
  , glGenLists_ENUM
  , glGenTextures_ENUM
  , glGetBooleanv_ENUM
  , glGetClipPlane_ENUM
  , glGetDoublev_ENUM
  , glGetError_ENUM
  , glGetFloatv_ENUM
  , glGetIntegerv_ENUM
  , glGetLightfv_ENUM
  , glGetLightiv_ENUM
  , glGetMapdv_ENUM
  , glGetMapfv_ENUM
  , glGetMapiv_ENUM
  , glGetMaterialfv_ENUM
  , glGetMaterialiv_ENUM
  , glGetPixelMapfv_ENUM
  , glGetPixelMapuiv_ENUM
  , glGetPixelMapusv_ENUM
  , glGetPointerv_ENUM
  , glGetPolygonStipple_ENUM
  , glGetString_ENUM
  , glGetTexEnvfv_ENUM
  , glGetTexEnviv_ENUM
  , glGetTexGendv_ENUM
  , glGetTexGenfv_ENUM
  , glGetTexGeniv_ENUM
  , glGetTexImage_ENUM
  , glGetTexLevelParameterfv_ENUM
  , glGetTexLevelParameteriv_ENUM
  , glGetTexParameterfv_ENUM
  , glGetTexParameteriv_ENUM
  , glHint_ENUM
  , glIndexMask_ENUM
  , glIndexPointer_ENUM
  , glIndexd_ENUM
  , glIndexdv_ENUM
  , glIndexf_ENUM
  , glIndexfv_ENUM
  , glIndexi_ENUM
  , glIndexiv_ENUM
  , glIndexs_ENUM
  , glIndexsv_ENUM
  , glIndexub_ENUM
  , glIndexubv_ENUM
  , glInitNames_ENUM
  , glInterleavedArrays_ENUM
  , glIsEnabled_ENUM
  , glIsList_ENUM
  , glIsTexture_ENUM
  , glLightModelf_ENUM
  , glLightModelfv_ENUM
  , glLightModeli_ENUM
  , glLightModeliv_ENUM
  , glLightf_ENUM
  , glLightfv_ENUM
  , glLighti_ENUM
  , glLightiv_ENUM
  , glLineStipple_ENUM
  , glLineWidth_ENUM
  , glListBase_ENUM
  , glLoadIdentity_ENUM
  , glLoadMatrixd_ENUM
  , glLoadMatrixf_ENUM
  , glLoadName_ENUM
  , glLogicOp_ENUM
  , glMap1d_ENUM
  , glMap1f_ENUM
  , glMap2d_ENUM
  , glMap2f_ENUM
  , glMapGrid1d_ENUM
  , glMapGrid1f_ENUM
  , glMapGrid2d_ENUM
  , glMapGrid2f_ENUM
  , glMaterialf_ENUM
  , glMaterialfv_ENUM
  , glMateriali_ENUM
  , glMaterialiv_ENUM
  , glMatrixMode_ENUM
  , glMultMatrixd_ENUM
  , glMultMatrixf_ENUM
  , glNewList_ENUM
  , glNormal3b_ENUM
  , glNormal3bv_ENUM
  , glNormal3d_ENUM
  , glNormal3dv_ENUM
  , glNormal3f_ENUM
  , glNormal3fv_ENUM
  , glNormal3i_ENUM
  , glNormal3iv_ENUM
  , glNormal3s_ENUM
  , glNormal3sv_ENUM
  , glNormalPointer_ENUM
  , glOrtho_ENUM
  , glPassThrough_ENUM
  , glPixelMapfv_ENUM
  , glPixelMapuiv_ENUM
  , glPixelMapusv_ENUM
  , glPixelStoref_ENUM
  , glPixelStorei_ENUM
  , glPixelTransferf_ENUM
  , glPixelTransferi_ENUM
  , glPixelZoom_ENUM
  , glPointSize_ENUM
  , glPolygonMode_ENUM
  , glPolygonOffset_ENUM
  , glPolygonStipple_ENUM
  , glPopAttrib_ENUM
  , glPopClientAttrib_ENUM
  , glPopMatrix_ENUM
  , glPopName_ENUM
  , glPrioritizeTextures_ENUM
  , glPushAttrib_ENUM
  , glPushClientAttrib_ENUM
  , glPushMatrix_ENUM
  , glPushName_ENUM
  , glRasterPos2d_ENUM
  , glRasterPos2dv_ENUM
  , glRasterPos2f_ENUM
  , glRasterPos2fv_ENUM
  , glRasterPos2i_ENUM
  , glRasterPos2iv_ENUM
  , glRasterPos2s_ENUM
  , glRasterPos2sv_ENUM
  , glRasterPos3d_ENUM
  , glRasterPos3dv_ENUM
  , glRasterPos3f_ENUM
  , glRasterPos3fv_ENUM
  , glRasterPos3i_ENUM
  , glRasterPos3iv_ENUM
  , glRasterPos3s_ENUM
  , glRasterPos3sv_ENUM
  , glRasterPos4d_ENUM
  , glRasterPos4dv_ENUM
  , glRasterPos4f_ENUM
  , glRasterPos4fv_ENUM
  , glRasterPos4i_ENUM
  , glRasterPos4iv_ENUM
  , glRasterPos4s_ENUM
  , glRasterPos4sv_ENUM
  , glReadBuffer_ENUM
  , glReadPixels_ENUM
  , glRectd_ENUM
  , glRectdv_ENUM
  , glRectf_ENUM
  , glRectfv_ENUM
  , glRecti_ENUM
  , glRectiv_ENUM
  , glRects_ENUM
  , glRectsv_ENUM
  , glRenderMode_ENUM
  , glRotated_ENUM
  , glRotatef_ENUM
  , glScaled_ENUM
  , glScalef_ENUM
  , glScissor_ENUM
  , glSelectBuffer_ENUM
  , glShadeModel_ENUM
  , glStencilFunc_ENUM
  , glStencilMask_ENUM
  , glStencilOp_ENUM
  , glTexCoord1d_ENUM
  , glTexCoord1dv_ENUM
  , glTexCoord1f_ENUM
  , glTexCoord1fv_ENUM
  , glTexCoord1i_ENUM
  , glTexCoord1iv_ENUM
  , glTexCoord1s_ENUM
  , glTexCoord1sv_ENUM
  , glTexCoord2d_ENUM
  , glTexCoord2dv_ENUM
  , glTexCoord2f_ENUM
  , glTexCoord2fv_ENUM
  , glTexCoord2i_ENUM
  , glTexCoord2iv_ENUM
  , glTexCoord2s_ENUM
  , glTexCoord2sv_ENUM
  , glTexCoord3d_ENUM
  , glTexCoord3dv_ENUM
  , glTexCoord3f_ENUM
  , glTexCoord3fv_ENUM
  , glTexCoord3i_ENUM
  , glTexCoord3iv_ENUM
  , glTexCoord3s_ENUM
  , glTexCoord3sv_ENUM
  , glTexCoord4d_ENUM
  , glTexCoord4dv_ENUM
  , glTexCoord4f_ENUM
  , glTexCoord4fv_ENUM
  , glTexCoord4i_ENUM
  , glTexCoord4iv_ENUM
  , glTexCoord4s_ENUM
  , glTexCoord4sv_ENUM
  , glTexCoordPointer_ENUM
  , glTexEnvf_ENUM
  , glTexEnvfv_ENUM
  , glTexEnvi_ENUM
  , glTexEnviv_ENUM
  , glTexGend_ENUM
  , glTexGendv_ENUM
  , glTexGenf_ENUM
  , glTexGenfv_ENUM
  , glTexGeni_ENUM
  , glTexGeniv_ENUM
  , glTexImage1D_ENUM
  , glTexImage2D_ENUM
  , glTexParameterf_ENUM
  , glTexParameterfv_ENUM
  , glTexParameteri_ENUM
  , glTexParameteriv_ENUM
  , glTexSubImage1D_ENUM
  , glTexSubImage2D_ENUM
  , glTranslated_ENUM
  , glTranslatef_ENUM
  , glVertex2d_ENUM
  , glVertex2dv_ENUM
  , glVertex2f_ENUM
  , glVertex2fv_ENUM
  , glVertex2i_ENUM
  , glVertex2iv_ENUM
  , glVertex2s_ENUM
  , glVertex2sv_ENUM
  , glVertex3d_ENUM
  , glVertex3dv_ENUM
  , glVertex3f_ENUM
  , glVertex3fv_ENUM
  , glVertex3i_ENUM
  , glVertex3iv_ENUM
  , glVertex3s_ENUM
  , glVertex3sv_ENUM
  , glVertex4d_ENUM
  , glVertex4dv_ENUM
  , glVertex4f_ENUM
  , glVertex4fv_ENUM
  , glVertex4i_ENUM
  , glVertex4iv_ENUM
  , glVertex4s_ENUM
  , glVertex4sv_ENUM
  , glVertexPointer_ENUM
  , glViewport_ENUM
  , _ENUM_EXDL_GL
  };


EXDL_API(egl_accum);
EXDL_API(egl_alphaFunc);
EXDL_API(egl_areTexturesResident);
EXDL_API(egl_arrayElement);
EXDL_API(egl_begin);
EXDL_API(egl_bindTexture);
EXDL_API(egl_bitmap);
EXDL_API(egl_blendFunc);
EXDL_API(egl_callList);
EXDL_API(egl_callLists);
EXDL_API(egl_clear);
EXDL_API(egl_clearAccum);
EXDL_API(egl_clearColor);
EXDL_API(egl_clearDepth);
EXDL_API(egl_clearIndex);
EXDL_API(egl_clearStencil);
EXDL_API(egl_clipPlane);
EXDL_API(egl_color3b);
EXDL_API(egl_color3bv);
EXDL_API(egl_color3d);
EXDL_API(egl_color3dv);
EXDL_API(egl_color3f);
EXDL_API(egl_color3fv);
EXDL_API(egl_color3i);
EXDL_API(egl_color3iv);
EXDL_API(egl_color3s);
EXDL_API(egl_color3sv);
EXDL_API(egl_color3ub);
EXDL_API(egl_color3ubv);
EXDL_API(egl_color3ui);
EXDL_API(egl_color3uiv);
EXDL_API(egl_color3us);
EXDL_API(egl_color3usv);
EXDL_API(egl_color4b);
EXDL_API(egl_color4bv);
EXDL_API(egl_color4d);
EXDL_API(egl_color4dv);
EXDL_API(egl_color4f);
EXDL_API(egl_color4fv);
EXDL_API(egl_color4i);
EXDL_API(egl_color4iv);
EXDL_API(egl_color4s);
EXDL_API(egl_color4sv);
EXDL_API(egl_color4ub);
EXDL_API(egl_color4ubv);
EXDL_API(egl_color4ui);
EXDL_API(egl_color4uiv);
EXDL_API(egl_color4us);
EXDL_API(egl_color4usv);
EXDL_API(egl_colorMask);
EXDL_API(egl_colorMaterial);
EXDL_API(egl_colorPointer);
EXDL_API(egl_copyPixels);
EXDL_API(egl_copyTexImage1D);
EXDL_API(egl_copyTexImage2D);
EXDL_API(egl_copyTexSubImage1D);
EXDL_API(egl_copyTexSubImage2D);
EXDL_API(egl_cullFace);
EXDL_API(egl_deleteLists);
EXDL_API(egl_deleteTextures);
EXDL_API(egl_depthFunc);
EXDL_API(egl_depthMask);
EXDL_API(egl_depthRange);
EXDL_API(egl_disable);
EXDL_API(egl_disableClientState);
EXDL_API(egl_drawArrays);
EXDL_API(egl_drawBuffer);
EXDL_API(egl_drawElements);
EXDL_API(egl_drawPixels);
EXDL_API(egl_edgeFlag);
EXDL_API(egl_edgeFlagPointer);
EXDL_API(egl_edgeFlagv);
EXDL_API(egl_enable);
EXDL_API(egl_enableClientState);
EXDL_API(egl_end);
EXDL_API(egl_endList);
EXDL_API(egl_evalCoord1d);
EXDL_API(egl_evalCoord1dv);
EXDL_API(egl_evalCoord1f);
EXDL_API(egl_evalCoord1fv);
EXDL_API(egl_evalCoord2d);
EXDL_API(egl_evalCoord2dv);
EXDL_API(egl_evalCoord2f);
EXDL_API(egl_evalCoord2fv);
EXDL_API(egl_evalMesh1);
EXDL_API(egl_evalMesh2);
EXDL_API(egl_evalPoint1);
EXDL_API(egl_evalPoint2);
EXDL_API(egl_feedbackBuffer);
EXDL_API(egl_finish);
EXDL_API(egl_flush);
EXDL_API(egl_fogf);
EXDL_API(egl_fogfv);
EXDL_API(egl_fogi);
EXDL_API(egl_fogiv);
EXDL_API(egl_frontFace);
EXDL_API(egl_frustum);
EXDL_API(egl_genLists);
EXDL_API(egl_genTextures);
EXDL_API(egl_getBooleanv);
EXDL_API(egl_getClipPlane);
EXDL_API(egl_getDoublev);
EXDL_API(egl_getError);
EXDL_API(egl_getFloatv);
EXDL_API(egl_getIntegerv);
EXDL_API(egl_getLightfv);
EXDL_API(egl_getLightiv);
EXDL_API(egl_getMapdv);
EXDL_API(egl_getMapfv);
EXDL_API(egl_getMapiv);
EXDL_API(egl_getMaterialfv);
EXDL_API(egl_getMaterialiv);
EXDL_API(egl_getPixelMapfv);
EXDL_API(egl_getPixelMapuiv);
EXDL_API(egl_getPixelMapusv);
EXDL_API(egl_getPointerv);
EXDL_API(egl_getPolygonStipple);
EXDL_API(egl_getString);
EXDL_API(egl_getTexEnvfv);
EXDL_API(egl_getTexEnviv);
EXDL_API(egl_getTexGendv);
EXDL_API(egl_getTexGenfv);
EXDL_API(egl_getTexGeniv);
EXDL_API(egl_getTexImage);
EXDL_API(egl_getTexLevelParameterfv);
EXDL_API(egl_getTexLevelParameteriv);
EXDL_API(egl_getTexParameterfv);
EXDL_API(egl_getTexParameteriv);
EXDL_API(egl_hint);
EXDL_API(egl_indexMask);
EXDL_API(egl_indexPointer);
EXDL_API(egl_indexd);
EXDL_API(egl_indexdv);
EXDL_API(egl_indexf);
EXDL_API(egl_indexfv);
EXDL_API(egl_indexi);
EXDL_API(egl_indexiv);
EXDL_API(egl_indexs);
EXDL_API(egl_indexsv);
EXDL_API(egl_indexub);
EXDL_API(egl_indexubv);
EXDL_API(egl_initNames);
EXDL_API(egl_interleavedArrays);
EXDL_API(egl_isEnabled);
EXDL_API(egl_isList);
EXDL_API(egl_isTexture);
EXDL_API(egl_lightModelf);
EXDL_API(egl_lightModelfv);
EXDL_API(egl_lightModeli);
EXDL_API(egl_lightModeliv);
EXDL_API(egl_lightf);
EXDL_API(egl_lightfv);
EXDL_API(egl_lighti);
EXDL_API(egl_lightiv);
EXDL_API(egl_lineStipple);
EXDL_API(egl_lineWidth);
EXDL_API(egl_listBase);
EXDL_API(egl_loadIdentity);
EXDL_API(egl_loadMatrixd);
EXDL_API(egl_loadMatrixf);
EXDL_API(egl_loadName);
EXDL_API(egl_logicOp);
EXDL_API(egl_map1d);
EXDL_API(egl_map1f);
EXDL_API(egl_map2d);
EXDL_API(egl_map2f);
EXDL_API(egl_mapGrid1d);
EXDL_API(egl_mapGrid1f);
EXDL_API(egl_mapGrid2d);
EXDL_API(egl_mapGrid2f);
EXDL_API(egl_materialf);
EXDL_API(egl_materialfv);
EXDL_API(egl_materiali);
EXDL_API(egl_materialiv);
EXDL_API(egl_matrixMode);
EXDL_API(egl_multMatrixd);
EXDL_API(egl_multMatrixf);
EXDL_API(egl_newList);
EXDL_API(egl_normal3b);
EXDL_API(egl_normal3bv);
EXDL_API(egl_normal3d);
EXDL_API(egl_normal3dv);
EXDL_API(egl_normal3f);
EXDL_API(egl_normal3fv);
EXDL_API(egl_normal3i);
EXDL_API(egl_normal3iv);
EXDL_API(egl_normal3s);
EXDL_API(egl_normal3sv);
EXDL_API(egl_normalPointer);
EXDL_API(egl_ortho);
EXDL_API(egl_passThrough);
EXDL_API(egl_pixelMapfv);
EXDL_API(egl_pixelMapuiv);
EXDL_API(egl_pixelMapusv);
EXDL_API(egl_pixelStoref);
EXDL_API(egl_pixelStorei);
EXDL_API(egl_pixelTransferf);
EXDL_API(egl_pixelTransferi);
EXDL_API(egl_pixelZoom);
EXDL_API(egl_pointSize);
EXDL_API(egl_polygonMode);
EXDL_API(egl_polygonOffset);
EXDL_API(egl_polygonStipple);
EXDL_API(egl_popAttrib);
EXDL_API(egl_popClientAttrib);
EXDL_API(egl_popMatrix);
EXDL_API(egl_popName);
EXDL_API(egl_prioritizeTextures);
EXDL_API(egl_pushAttrib);
EXDL_API(egl_pushClientAttrib);
EXDL_API(egl_pushMatrix);
EXDL_API(egl_pushName);
EXDL_API(egl_rasterPos2d);
EXDL_API(egl_rasterPos2dv);
EXDL_API(egl_rasterPos2f);
EXDL_API(egl_rasterPos2fv);
EXDL_API(egl_rasterPos2i);
EXDL_API(egl_rasterPos2iv);
EXDL_API(egl_rasterPos2s);
EXDL_API(egl_rasterPos2sv);
EXDL_API(egl_rasterPos3d);
EXDL_API(egl_rasterPos3dv);
EXDL_API(egl_rasterPos3f);
EXDL_API(egl_rasterPos3fv);
EXDL_API(egl_rasterPos3i);
EXDL_API(egl_rasterPos3iv);
EXDL_API(egl_rasterPos3s);
EXDL_API(egl_rasterPos3sv);
EXDL_API(egl_rasterPos4d);
EXDL_API(egl_rasterPos4dv);
EXDL_API(egl_rasterPos4f);
EXDL_API(egl_rasterPos4fv);
EXDL_API(egl_rasterPos4i);
EXDL_API(egl_rasterPos4iv);
EXDL_API(egl_rasterPos4s);
EXDL_API(egl_rasterPos4sv);
EXDL_API(egl_readBuffer);
EXDL_API(egl_readPixels);
EXDL_API(egl_rectd);
EXDL_API(egl_rectdv);
EXDL_API(egl_rectf);
EXDL_API(egl_rectfv);
EXDL_API(egl_recti);
EXDL_API(egl_rectiv);
EXDL_API(egl_rects);
EXDL_API(egl_rectsv);
EXDL_API(egl_renderMode);
EXDL_API(egl_rotated);
EXDL_API(egl_rotatef);
EXDL_API(egl_scaled);
EXDL_API(egl_scalef);
EXDL_API(egl_scissor);
EXDL_API(egl_selectBuffer);
EXDL_API(egl_shadeModel);
EXDL_API(egl_stencilFunc);
EXDL_API(egl_stencilMask);
EXDL_API(egl_stencilOp);
EXDL_API(egl_texCoord1d);
EXDL_API(egl_texCoord1dv);
EXDL_API(egl_texCoord1f);
EXDL_API(egl_texCoord1fv);
EXDL_API(egl_texCoord1i);
EXDL_API(egl_texCoord1iv);
EXDL_API(egl_texCoord1s);
EXDL_API(egl_texCoord1sv);
EXDL_API(egl_texCoord2d);
EXDL_API(egl_texCoord2dv);
EXDL_API(egl_texCoord2f);
EXDL_API(egl_texCoord2fv);
EXDL_API(egl_texCoord2i);
EXDL_API(egl_texCoord2iv);
EXDL_API(egl_texCoord2s);
EXDL_API(egl_texCoord2sv);
EXDL_API(egl_texCoord3d);
EXDL_API(egl_texCoord3dv);
EXDL_API(egl_texCoord3f);
EXDL_API(egl_texCoord3fv);
EXDL_API(egl_texCoord3i);
EXDL_API(egl_texCoord3iv);
EXDL_API(egl_texCoord3s);
EXDL_API(egl_texCoord3sv);
EXDL_API(egl_texCoord4d);
EXDL_API(egl_texCoord4dv);
EXDL_API(egl_texCoord4f);
EXDL_API(egl_texCoord4fv);
EXDL_API(egl_texCoord4i);
EXDL_API(egl_texCoord4iv);
EXDL_API(egl_texCoord4s);
EXDL_API(egl_texCoord4sv);
EXDL_API(egl_texCoordPointer);
EXDL_API(egl_texEnvf);
EXDL_API(egl_texEnvfv);
EXDL_API(egl_texEnvi);
EXDL_API(egl_texEnviv);
EXDL_API(egl_texGend);
EXDL_API(egl_texGendv);
EXDL_API(egl_texGenf);
EXDL_API(egl_texGenfv);
EXDL_API(egl_texGeni);
EXDL_API(egl_texGeniv);
EXDL_API(egl_texImage1D);
EXDL_API(egl_texImage2D);
EXDL_API(egl_texParameterf);
EXDL_API(egl_texParameterfv);
EXDL_API(egl_texParameteri);
EXDL_API(egl_texParameteriv);
EXDL_API(egl_texSubImage1D);
EXDL_API(egl_texSubImage2D);
EXDL_API(egl_translated);
EXDL_API(egl_translatef);
EXDL_API(egl_vertex2d);
EXDL_API(egl_vertex2dv);
EXDL_API(egl_vertex2f);
EXDL_API(egl_vertex2fv);
EXDL_API(egl_vertex2i);
EXDL_API(egl_vertex2iv);
EXDL_API(egl_vertex2s);
EXDL_API(egl_vertex2sv);
EXDL_API(egl_vertex3d);
EXDL_API(egl_vertex3dv);
EXDL_API(egl_vertex3f);
EXDL_API(egl_vertex3fv);
EXDL_API(egl_vertex3i);
EXDL_API(egl_vertex3iv);
EXDL_API(egl_vertex3s);
EXDL_API(egl_vertex3sv);
EXDL_API(egl_vertex4d);
EXDL_API(egl_vertex4dv);
EXDL_API(egl_vertex4f);
EXDL_API(egl_vertex4fv);
EXDL_API(egl_vertex4i);
EXDL_API(egl_vertex4iv);
EXDL_API(egl_vertex4s);
EXDL_API(egl_vertex4sv);
EXDL_API(egl_vertexPointer);
EXDL_API(egl_viewport);

#else // COMPILE_GL
  enum { _ENUM_EXDL_GL = EXDL_GL_H };
#endif // COMPILE_GL

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
