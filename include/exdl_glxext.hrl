%% Header file version number, required by OpenGL ABI for Linux
%% glxext.h last updated 2010/02/10
%% Current version at http://www.opengl.org/registry/.

-define(GLX_GLXEXT_VERSION,                                    34).

-ifndef(GLX_VERSION_1_3).
  -define(GLX_VERSION_1_3,                                     1).

  -define(GLX_WINDOW_BIT,                                      16#00000001).
  -define(GLX_PIXMAP_BIT,                                      16#00000002).
  -define(GLX_PBUFFER_BIT,                                     16#00000004).
  -define(GLX_RGBA_BIT,                                        16#00000001).
  -define(GLX_COLOR_INDEX_BIT,                                 16#00000002).
  -define(GLX_PBUFFER_CLOBBER_MASK,                            16#08000000).
  -define(GLX_FRONT_LEFT_BUFFER_BIT,                           16#00000001).
  -define(GLX_FRONT_RIGHT_BUFFER_BIT,                          16#00000002).
  -define(GLX_BACK_LEFT_BUFFER_BIT,                            16#00000004).
  -define(GLX_BACK_RIGHT_BUFFER_BIT,                           16#00000008).
  -define(GLX_AUX_BUFFERS_BIT,                                 16#00000010).
  -define(GLX_DEPTH_BUFFER_BIT,                                16#00000020).
  -define(GLX_STENCIL_BUFFER_BIT,                              16#00000040).
  -define(GLX_ACCUM_BUFFER_BIT,                                16#00000080).
  -define(GLX_CONFIG_CAVEAT,                                   16#20).
  -define(GLX_X_VISUAL_TYPE,                                   16#22).
  -define(GLX_TRANSPARENT_TYPE,                                16#23).
  -define(GLX_TRANSPARENT_INDEX_VALUE,                         16#24).
  -define(GLX_TRANSPARENT_RED_VALUE,                           16#25).
  -define(GLX_TRANSPARENT_GREEN_VALUE,                         16#26).
  -define(GLX_TRANSPARENT_BLUE_VALUE,                          16#27).
  -define(GLX_TRANSPARENT_ALPHA_VALUE,                         16#28).
  -define(GLX_DONT_CARE,                                       16#FFFFFFFF).
  -define(GLX_NONE,                                            16#8000).
  -define(GLX_SLOW_CONFIG,                                     16#8001).
  -define(GLX_TRUE_COLOR,                                      16#8002).
  -define(GLX_DIRECT_COLOR,                                    16#8003).
  -define(GLX_PSEUDO_COLOR,                                    16#8004).
  -define(GLX_STATIC_COLOR,                                    16#8005).
  -define(GLX_GRAY_SCALE,                                      16#8006).
  -define(GLX_STATIC_GRAY,                                     16#8007).
  -define(GLX_TRANSPARENT_RGB,                                 16#8008).
  -define(GLX_TRANSPARENT_INDEX,                               16#8009).
  -define(GLX_VISUAL_ID,                                       16#800B).
  -define(GLX_SCREEN,                                          16#800C).
  -define(GLX_NON_CONFORMANT_CONFIG,                           16#800D).
  -define(GLX_DRAWABLE_TYPE,                                   16#8010).
  -define(GLX_RENDER_TYPE,                                     16#8011).
  -define(GLX_X_RENDERABLE,                                    16#8012).
  -define(GLX_FBCONFIG_ID,                                     16#8013).
  -define(GLX_RGBA_TYPE,                                       16#8014).
  -define(GLX_COLOR_INDEX_TYPE,                                16#8015).
  -define(GLX_MAX_PBUFFER_WIDTH,                               16#8016).
  -define(GLX_MAX_PBUFFER_HEIGHT,                              16#8017).
  -define(GLX_MAX_PBUFFER_PIXELS,                              16#8018).
  -define(GLX_PRESERVED_CONTENTS,                              16#801B).
  -define(GLX_LARGEST_PBUFFER,                                 16#801C).
  -define(GLX_WIDTH,                                           16#801D).
  -define(GLX_HEIGHT,                                          16#801E).
  -define(GLX_EVENT_MASK,                                      16#801F).
  -define(GLX_DAMAGED,                                         16#8020).
  -define(GLX_SAVED,                                           16#8021).
  -define(GLX_WINDOW,                                          16#8022).
  -define(GLX_PBUFFER,                                         16#8023).
  -define(GLX_PBUFFER_HEIGHT,                                  16#8040).
  -define(GLX_PBUFFER_WIDTH,                                   16#8041).
-endif.

-ifndef(GLX_VERSION_1_4).
  -define(GLX_VERSION_1_4,                                     1).

  -define(GLX_SAMPLE_BUFFERS,                                  100000).
  -define(GLX_SAMPLES,                                         100001).
-endif.

-ifndef(GLX_ARB_get_proc_address).
  -define(GLX_ARB_get_proc_address,                            1).

-endif.

-ifndef(GLX_ARB_multisample).
  -define(GLX_ARB_multisample,                                 1).

  -define(GLX_SAMPLE_BUFFERS_ARB,                              100000).
  -define(GLX_SAMPLES_ARB,                                     100001).
-endif.

-ifndef(GLX_ARB_vertex_buffer_object).
  -define(GLX_ARB_vertex_buffer_object,                        1).

  -define(GLX_CONTEXT_ALLOW_BUFFER_BYTE_ORDER_MISMATCH_ARB,    16#2095).
-endif.

-ifndef(GLX_ARB_fbconfig_float).
  -define(GLX_ARB_fbconfig_float,                              1).

  -define(GLX_RGBA_FLOAT_TYPE_ARB,                             16#20B9).
  -define(GLX_RGBA_FLOAT_BIT_ARB,                              16#00000004).
-endif.

-ifndef(GLX_ARB_framebuffer_sRGB).
  -define(GLX_ARB_framebuffer_sRGB,                            1).

  -define(GLX_FRAMEBUFFER_SRGB_CAPABLE_ARB,                    16#20B2).
-endif.

-ifndef(GLX_ARB_create_context).
  -define(GLX_ARB_create_context,                              1).

  -define(GLX_CONTEXT_DEBUG_BIT_ARB,                           16#00000001).
  -define(GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB,              16#00000002).
  -define(GLX_CONTEXT_MAJOR_VERSION_ARB,                       16#2091).
  -define(GLX_CONTEXT_MINOR_VERSION_ARB,                       16#2092).
  -define(GLX_CONTEXT_FLAGS_ARB,                               16#2094).
-endif.

-ifndef(GLX_ARB_create_context_profile).
  -define(GLX_ARB_create_context_profile,                      1).

  -define(GLX_CONTEXT_CORE_PROFILE_BIT_ARB,                    16#00000001).
  -define(GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB,           16#00000002).
  -define(GLX_CONTEXT_PROFILE_MASK_ARB,                        16#9126).
-endif.

-ifndef(GLX_ARB_create_context_robustness).
  -define(GLX_ARB_create_context_robustness,                   1).

  -define(GLX_CONTEXT_ROBUST_ACCESS_BIT_ARB,                   16#00000004).
  -define(GLX_LOSE_CONTEXT_ON_RESET_ARB,                       16#8252).
  -define(GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB,         16#8256).
  -define(GLX_NO_RESET_NOTIFICATION_ARB,                       16#8261).
-endif.

-ifndef(GLX_SGIS_multisample).
  -define(GLX_SGIS_multisample,                                1).

  -define(GLX_SAMPLE_BUFFERS_SGIS,                             100000).
  -define(GLX_SAMPLES_SGIS,                                    100001).
-endif.

-ifndef(GLX_EXT_visual_info).
  -define(GLX_EXT_visual_info,                                 1).

  -define(GLX_X_VISUAL_TYPE_EXT,                               16#22).
  -define(GLX_TRANSPARENT_TYPE_EXT,                            16#23).
  -define(GLX_TRANSPARENT_INDEX_VALUE_EXT,                     16#24).
  -define(GLX_TRANSPARENT_RED_VALUE_EXT,                       16#25).
  -define(GLX_TRANSPARENT_GREEN_VALUE_EXT,                     16#26).
  -define(GLX_TRANSPARENT_BLUE_VALUE_EXT,                      16#27).
  -define(GLX_TRANSPARENT_ALPHA_VALUE_EXT,                     16#28).
  -define(GLX_NONE_EXT,                                        16#8000).
  -define(GLX_TRUE_COLOR_EXT,                                  16#8002).
  -define(GLX_DIRECT_COLOR_EXT,                                16#8003).
  -define(GLX_PSEUDO_COLOR_EXT,                                16#8004).
  -define(GLX_STATIC_COLOR_EXT,                                16#8005).
  -define(GLX_GRAY_SCALE_EXT,                                  16#8006).
  -define(GLX_STATIC_GRAY_EXT,                                 16#8007).
  -define(GLX_TRANSPARENT_RGB_EXT,                             16#8008).
  -define(GLX_TRANSPARENT_INDEX_EXT,                           16#8009).
-endif.

-ifndef(GLX_SGI_swap_control).
  -define(GLX_SGI_swap_control,                                1).

-endif.

-ifndef(GLX_SGI_video_sync).
  -define(GLX_SGI_video_sync,                                  1).

-endif.

-ifndef(GLX_SGI_make_current_read).
  -define(GLX_SGI_make_current_read,                           1).

-endif.

-ifndef(GLX_SGIX_video_source).
  -define(GLX_SGIX_video_source,                               1).

-endif.

-ifndef(GLX_EXT_visual_rating).
  -define(GLX_EXT_visual_rating,                               1).

  -define(GLX_VISUAL_CAVEAT_EXT,                               16#20).
  -define(GLX_SLOW_VISUAL_EXT,                                 16#8001).
  -define(GLX_NON_CONFORMANT_VISUAL_EXT,                       16#800D).
%% reuse GLX_NONE_EXT
-endif.

-ifndef(GLX_EXT_import_context).
  -define(GLX_EXT_import_context,                              1).

  -define(GLX_SHARE_CONTEXT_EXT,                               16#800A).
  -define(GLX_VISUAL_ID_EXT,                                   16#800B).
  -define(GLX_SCREEN_EXT,                                      16#800C).
-endif.

-ifndef(GLX_SGIX_fbconfig).
  -define(GLX_SGIX_fbconfig,                                   1).

  -define(GLX_WINDOW_BIT_SGIX,                                 16#00000001).
  -define(GLX_PIXMAP_BIT_SGIX,                                 16#00000002).
  -define(GLX_RGBA_BIT_SGIX,                                   16#00000001).
  -define(GLX_COLOR_INDEX_BIT_SGIX,                            16#00000002).
  -define(GLX_DRAWABLE_TYPE_SGIX,                              16#8010).
  -define(GLX_RENDER_TYPE_SGIX,                                16#8011).
  -define(GLX_X_RENDERABLE_SGIX,                               16#8012).
  -define(GLX_FBCONFIG_ID_SGIX,                                16#8013).
  -define(GLX_RGBA_TYPE_SGIX,                                  16#8014).
  -define(GLX_COLOR_INDEX_TYPE_SGIX,                           16#8015).
%% reuse GLX_SCREEN_EXT
-endif.

-ifndef(GLX_SGIX_pbuffer).
  -define(GLX_SGIX_pbuffer,                                    1).

  -define(GLX_PBUFFER_BIT_SGIX,                                16#00000004).
  -define(GLX_BUFFER_CLOBBER_MASK_SGIX,                        16#08000000).
  -define(GLX_FRONT_LEFT_BUFFER_BIT_SGIX,                      16#00000001).
  -define(GLX_FRONT_RIGHT_BUFFER_BIT_SGIX,                     16#00000002).
  -define(GLX_BACK_LEFT_BUFFER_BIT_SGIX,                       16#00000004).
  -define(GLX_BACK_RIGHT_BUFFER_BIT_SGIX,                      16#00000008).
  -define(GLX_AUX_BUFFERS_BIT_SGIX,                            16#00000010).
  -define(GLX_DEPTH_BUFFER_BIT_SGIX,                           16#00000020).
  -define(GLX_STENCIL_BUFFER_BIT_SGIX,                         16#00000040).
  -define(GLX_ACCUM_BUFFER_BIT_SGIX,                           16#00000080).
  -define(GLX_SAMPLE_BUFFERS_BIT_SGIX,                         16#00000100).
  -define(GLX_MAX_PBUFFER_WIDTH_SGIX,                          16#8016).
  -define(GLX_MAX_PBUFFER_HEIGHT_SGIX,                         16#8017).
  -define(GLX_MAX_PBUFFER_PIXELS_SGIX,                         16#8018).
  -define(GLX_OPTIMAL_PBUFFER_WIDTH_SGIX,                      16#8019).
  -define(GLX_OPTIMAL_PBUFFER_HEIGHT_SGIX,                     16#801A).
  -define(GLX_PRESERVED_CONTENTS_SGIX,                         16#801B).
  -define(GLX_LARGEST_PBUFFER_SGIX,                            16#801C).
  -define(GLX_WIDTH_SGIX,                                      16#801D).
  -define(GLX_HEIGHT_SGIX,                                     16#801E).
  -define(GLX_EVENT_MASK_SGIX,                                 16#801F).
  -define(GLX_DAMAGED_SGIX,                                    16#8020).
  -define(GLX_SAVED_SGIX,                                      16#8021).
  -define(GLX_WINDOW_SGIX,                                     16#8022).
  -define(GLX_PBUFFER_SGIX,                                    16#8023).
-endif.

-ifndef(GLX_SGI_cushion).
  -define(GLX_SGI_cushion,                                     1).

-endif.

-ifndef(GLX_SGIX_video_resize).
  -define(GLX_SGIX_video_resize,                               1).

  -define(GLX_SYNC_FRAME_SGIX,                                 16#00000000).
  -define(GLX_SYNC_SWAP_SGIX,                                  16#00000001).
-endif.

-ifndef(GLX_SGIX_dmbuffer).
  -define(GLX_SGIX_dmbuffer,                                   1).

  -define(GLX_DIGITAL_MEDIA_PBUFFER_SGIX,                      16#8024).
-endif.

-ifndef(GLX_SGIX_swap_group).
  -define(GLX_SGIX_swap_group,                                 1).

-endif.

-ifndef(GLX_SGIX_swap_barrier).
  -define(GLX_SGIX_swap_barrier,                               1).

-endif.

-ifndef(GLX_SGIS_blended_overlay).
  -define(GLX_SGIS_blended_overlay,                            1).

  -define(GLX_BLENDED_RGBA_SGIS,                               16#8025).
-endif.

-ifndef(GLX_SGIS_shared_multisample).
  -define(GLX_SGIS_shared_multisample,                         1).

  -define(GLX_MULTISAMPLE_SUB_RECT_WIDTH_SGIS,                 16#8026).
  -define(GLX_MULTISAMPLE_SUB_RECT_HEIGHT_SGIS,                16#8027).
-endif.

-ifndef(GLX_SUN_get_transparent_index).
  -define(GLX_SUN_get_transparent_index,                       1).

-endif.

-ifndef(GLX_3DFX_multisample).
  -define(GLX_3DFX_multisample,                                1).

  -define(GLX_SAMPLE_BUFFERS_3DFX,                             16#8050).
  -define(GLX_SAMPLES_3DFX,                                    16#8051).
-endif.

-ifndef(GLX_MESA_copy_sub_buffer).
  -define(GLX_MESA_copy_sub_buffer,                            1).

-endif.

-ifndef(GLX_MESA_pixmap_colormap).
  -define(GLX_MESA_pixmap_colormap,                            1).

-endif.

-ifndef(GLX_MESA_release_buffers).
  -define(GLX_MESA_release_buffers,                            1).

-endif.

-ifndef(GLX_MESA_set_3dfx_mode).
  -define(GLX_MESA_set_3dfx_mode,                              1).

  -define(GLX_3DFX_WINDOW_MODE_MESA,                           16#1).
  -define(GLX_3DFX_FULLSCREEN_MODE_MESA,                       16#2).
-endif.

-ifndef(GLX_SGIX_visual_select_group).
  -define(GLX_SGIX_visual_select_group,                        1).

  -define(GLX_VISUAL_SELECT_GROUP_SGIX,                        16#8028).
-endif.

-ifndef(GLX_OML_swap_method).
  -define(GLX_OML_swap_method,                                 1).

  -define(GLX_SWAP_METHOD_OML,                                 16#8060).
  -define(GLX_SWAP_EXCHANGE_OML,                               16#8061).
  -define(GLX_SWAP_COPY_OML,                                   16#8062).
  -define(GLX_SWAP_UNDEFINED_OML,                              16#8063).
-endif.

-ifndef(GLX_OML_sync_control).
  -define(GLX_OML_sync_control,                                1).

-endif.

-ifndef(GLX_NV_float_buffer).
  -define(GLX_NV_float_buffer,                                 1).

  -define(GLX_FLOAT_COMPONENTS_NV,                             16#20B0).
-endif.

-ifndef(GLX_SGIX_hyperpipe).
  -define(GLX_SGIX_hyperpipe,                                  1).

  -define(GLX_HYPERPIPE_PIPE_NAME_LENGTH_SGIX,                 80).
  -define(GLX_BAD_HYPERPIPE_CONFIG_SGIX,                       91).
  -define(GLX_BAD_HYPERPIPE_SGIX,                              92).
  -define(GLX_HYPERPIPE_DISPLAY_PIPE_SGIX,                     16#00000001).
  -define(GLX_HYPERPIPE_RENDER_PIPE_SGIX,                      16#00000002).
  -define(GLX_PIPE_RECT_SGIX,                                  16#00000001).
  -define(GLX_PIPE_RECT_LIMITS_SGIX,                           16#00000002).
  -define(GLX_HYPERPIPE_STEREO_SGIX,                           16#00000003).
  -define(GLX_HYPERPIPE_PIXEL_AVERAGE_SGIX,                    16#00000004).
  -define(GLX_HYPERPIPE_ID_SGIX,                               16#8030).
-endif.

-ifndef(GLX_MESA_agp_offset).
  -define(GLX_MESA_agp_offset,                                 1).

-endif.

-ifndef(GLX_EXT_fbconfig_packed_float).
  -define(GLX_EXT_fbconfig_packed_float,                       1).

  -define(GLX_RGBA_UNSIGNED_FLOAT_TYPE_EXT,                    16#20B1).
  -define(GLX_RGBA_UNSIGNED_FLOAT_BIT_EXT,                     16#00000008).
-endif.

-ifndef(GLX_EXT_framebuffer_sRGB).
  -define(GLX_EXT_framebuffer_sRGB,                            1).

  -define(GLX_FRAMEBUFFER_SRGB_CAPABLE_EXT,                    16#20B2).
-endif.

-ifndef(GLX_EXT_texture_from_pixmap).
  -define(GLX_EXT_texture_from_pixmap,                         1).

  -define(GLX_TEXTURE_1D_BIT_EXT,                              16#00000001).
  -define(GLX_TEXTURE_2D_BIT_EXT,                              16#00000002).
  -define(GLX_TEXTURE_RECTANGLE_BIT_EXT,                       16#00000004).
  -define(GLX_BIND_TO_TEXTURE_RGB_EXT,                         16#20D0).
  -define(GLX_BIND_TO_TEXTURE_RGBA_EXT,                        16#20D1).
  -define(GLX_BIND_TO_MIPMAP_TEXTURE_EXT,                      16#20D2).
  -define(GLX_BIND_TO_TEXTURE_TARGETS_EXT,                     16#20D3).
  -define(GLX_Y_INVERTED_EXT,                                  16#20D4).
  -define(GLX_TEXTURE_FORMAT_EXT,                              16#20D5).
  -define(GLX_TEXTURE_TARGET_EXT,                              16#20D6).
  -define(GLX_MIPMAP_TEXTURE_EXT,                              16#20D7).
  -define(GLX_TEXTURE_FORMAT_NONE_EXT,                         16#20D8).
  -define(GLX_TEXTURE_FORMAT_RGB_EXT,                          16#20D9).
  -define(GLX_TEXTURE_FORMAT_RGBA_EXT,                         16#20DA).
  -define(GLX_TEXTURE_1D_EXT,                                  16#20DB).
  -define(GLX_TEXTURE_2D_EXT,                                  16#20DC).
  -define(GLX_TEXTURE_RECTANGLE_EXT,                           16#20DD).
  -define(GLX_FRONT_LEFT_EXT,                                  16#20DE).
  -define(GLX_FRONT_RIGHT_EXT,                                 16#20DF).
  -define(GLX_BACK_LEFT_EXT,                                   16#20E0).
  -define(GLX_BACK_RIGHT_EXT,                                  16#20E1).
  -define(GLX_FRONT_EXT,                                       GLX_FRONT_LEFT_EXT).
  -define(GLX_BACK_EXT,                                        GLX_BACK_LEFT_EXT).
  -define(GLX_AUX0_EXT,                                        16#20E2).
  -define(GLX_AUX1_EXT,                                        16#20E3).
  -define(GLX_AUX2_EXT,                                        16#20E4).
  -define(GLX_AUX3_EXT,                                        16#20E5).
  -define(GLX_AUX4_EXT,                                        16#20E6).
  -define(GLX_AUX5_EXT,                                        16#20E7).
  -define(GLX_AUX6_EXT,                                        16#20E8).
  -define(GLX_AUX7_EXT,                                        16#20E9).
  -define(GLX_AUX8_EXT,                                        16#20EA).
  -define(GLX_AUX9_EXT,                                        16#20EB).
-endif.

-ifndef(GLX_NV_present_video).
  -define(GLX_NV_present_video,                                1).

  -define(GLX_NUM_VIDEO_SLOTS_NV,                              16#20F0).
-endif.

-ifndef(GLX_NV_video_out).
  -define(GLX_NV_video_out,                                    1).

  -define(GLX_VIDEO_OUT_COLOR_NV,                              16#20C3).
  -define(GLX_VIDEO_OUT_ALPHA_NV,                              16#20C4).
  -define(GLX_VIDEO_OUT_DEPTH_NV,                              16#20C5).
  -define(GLX_VIDEO_OUT_COLOR_AND_ALPHA_NV,                    16#20C6).
  -define(GLX_VIDEO_OUT_COLOR_AND_DEPTH_NV,                    16#20C7).
  -define(GLX_VIDEO_OUT_FRAME_NV,                              16#20C8).
  -define(GLX_VIDEO_OUT_FIELD_1_NV,                            16#20C9).
  -define(GLX_VIDEO_OUT_FIELD_2_NV,                            16#20CA).
  -define(GLX_VIDEO_OUT_STACKED_FIELDS_1_2_NV,                 16#20CB).
  -define(GLX_VIDEO_OUT_STACKED_FIELDS_2_1_NV,                 16#20CC).
-endif.

-ifndef(GLX_NV_swap_group).
  -define(GLX_NV_swap_group,                                   1).

-endif.

-ifndef(GLX_NV_video_capture).
  -define(GLX_NV_video_capture,                                1).

  -define(GLX_DEVICE_ID_NV,                                    16#20CD).
  -define(GLX_UNIQUE_ID_NV,                                    16#20CE).
  -define(GLX_NUM_VIDEO_CAPTURE_SLOTS_NV,                      16#20CF).
-endif.

-ifndef(GLX_EXT_swap_control).
  -define(GLX_EXT_swap_control,                                1).

  -define(GLX_SWAP_INTERVAL_EXT,                               16#20F1).
  -define(GLX_MAX_SWAP_INTERVAL_EXT,                           16#20F2).
-endif.

-ifndef(GLX_NV_copy_image).
  -define(GLX_NV_copy_image,                                   1).

-endif.

-ifndef(GLX_INTEL_swap_event).
  -define(GLX_INTEL_swap_event,                                1).

  -define(GLX_BUFFER_SWAP_COMPLETE_INTEL_MASK,                 16#04000000).
  -define(GLX_EXCHANGE_COMPLETE_INTEL,                         16#8180).
  -define(GLX_COPY_COMPLETE_INTEL,                             16#8181).
  -define(GLX_FLIP_COMPLETE_INTEL,                             16#8182).
-endif.

-ifndef(GLX_NV_multisample_coverage).
  -define(GLX_NV_multisample_coverage,                         1).

  -define(GLX_COVERAGE_SAMPLES_NV,                             100001).
  -define(GLX_COLOR_SAMPLES_NV,                                16#20B3).
-endif.

-ifndef(GLX_AMD_gpu_association).
  -define(GLX_AMD_gpu_association,                             1).

  -define(GLX_GPU_VENDOR_AMD,                                  16#1F00).
  -define(GLX_GPU_RENDERER_STRING_AMD,                         16#1F01).
  -define(GLX_GPU_OPENGL_VERSION_STRING_AMD,                   16#1F02).
  -define(GLX_GPU_FASTEST_TARGET_GPUS_AMD,                     16#21A2).
  -define(GLX_GPU_RAM_AMD,                                     16#21A3).
  -define(GLX_GPU_CLOCK_AMD,                                   16#21A4).
  -define(GLX_GPU_NUM_PIPES_AMD,                               16#21A5).
  -define(GLX_GPU_NUM_SIMD_AMD,                                16#21A6).
  -define(GLX_GPU_NUM_RB_AMD,                                  16#21A7).
  -define(GLX_GPU_NUM_SPI_AMD,                                 16#21A8).
-endif.

-ifndef(GLX_EXT_create_context_es2_profile).
  -define(GLX_EXT_create_context_es2_profile,                  1).

  -define(GLX_CONTEXT_ES2_PROFILE_BIT_EXT,                     16#00000004).
-endif.

-ifndef(GLX_EXT_create_context_es_profile).
  -define(GLX_EXT_create_context_es_profile,                   1).

  -define(GLX_CONTEXT_ES_PROFILE_BIT_EXT,                      16#00000004).
-endif.

-ifndef(GLX_EXT_swap_control_tear).
  -define(GLX_EXT_swap_control_tear,                           1).

  -define(GLX_LATE_SWAPS_TEAR_EXT,                             16#20F3).
-endif.

-ifndef(GLX_EXT_buffer_age).
  -define(GLX_EXT_buffer_age,                                  1).

  -define(GLX_BACK_BUFFER_AGE_EXT,                             16#20F4).
-endif.

