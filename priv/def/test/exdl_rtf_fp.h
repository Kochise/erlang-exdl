/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_rtf_fp.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_RTF

{ RTF_Linked_Version_ENUM,  "RTF_Linked_Version",  ertf_linked_Version },
{ RTF_CreateContext_ENUM,   "RTF_CreateContext",   ertf_createContext },
{ RTF_Load_ENUM,            "RTF_Load",            ertf_load },
{ RTF_Load_RW_ENUM,         "RTF_Load_RW",         ertf_load_RW },
{ RTF_GetTitle_ENUM,        "RTF_GetTitle",        ertf_getTitle },
{ RTF_GetSubject_ENUM,      "RTF_GetSubject",      ertf_getSubject },
{ RTF_GetAuthor_ENUM,       "RTF_GetAuthor",       ertf_getAuthor },
{ RTF_GetHeight_ENUM,       "RTF_GetHeight",       ertf_getHeight },
{ RTF_Render_ENUM,          "RTF_Render",          ertf_render },
{ RTF_FreeContext_ENUM,     "RTF_FreeContext",     ertf_freeContext },

#endif // COMPILE_RTF
