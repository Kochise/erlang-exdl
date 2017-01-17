/*  
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_rtf.h,v 1.0 2008/12/30 07:49:22 kochise Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_RTF

  enum
  { RTF_Linked_Version_ENUM = EXDL_RTF_H
  , RTF_CreateContext_ENUM
  , RTF_Load_ENUM
  , RTF_Load_RW_ENUM
  , RTF_GetTitle_ENUM
  , RTF_GetSubject_ENUM
  , RTF_GetAuthor_ENUM
  , RTF_GetHeight_ENUM
  , RTF_Render_ENUM
  , RTF_FreeContext_ENUM
  , _ENUM_EXDL_RTF
  };


EXDL_API(ertf_linked_Version);
EXDL_API(ertf_createContext);
EXDL_API(ertf_load);
EXDL_API(ertf_load_RW);
EXDL_API(ertf_getTitle);
EXDL_API(ertf_getSubject);
EXDL_API(ertf_getAuthor);
EXDL_API(ertf_getHeight);
EXDL_API(ertf_render);
EXDL_API(ertf_freeContext);

#else // COMPILE_RTF

  enum { _ENUM_EXDL_RTF = EXDL_RTF_H };

#endif // COMPILE_RTF

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
