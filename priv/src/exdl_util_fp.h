/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_util_fp.h,v 1.2 2004/10/25 09:17:43 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_GL

{ SDL_UTIL_copySdlImage2GLArray_ENUM,  "SDL_UTIL_copySdlImage2GLArray",  copySdlImage2GLArray },
{ SDL_UTIL_Debug_ENUM,                 "SDL_UTIL_Debug",                 exdl_util_debug},
/*  MY GL memory handling funcs */
{ mygl_alloc_ENUM,                     "mygl_alloc",                     mygl_alloc },
{ mygl_write_ENUM,                     "mygl_write",                     mygl_write },

#endif // COMPILE_GL
