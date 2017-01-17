/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_mouse_fp.h,v 1.2 2004/10/25 09:17:43 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

{ SDL_GetMouseState_ENUM,          "SDL_GetMouseState",          emou_getMouseState },
{ SDL_GetRelativeMouseState_ENUM,  "SDL_GetRelativeMouseState",  emou_getRelativeMouseState },
{ SDL_WarpMouse_ENUM,              "SDL_WarpMouse",              emou_warpMouse },
{ SDL_CreateCursor_ENUM,           "SDL_CreateCursor",           emou_createCursor },
{ SDL_SetCursor_ENUM,              "SDL_SetCursor",              emou_setCursor },
{ SDL_GetCursor_ENUM,              "SDL_GetCursor",              emou_getCursor },
{ SDL_FreeCursor_ENUM,             "SDL_FreeCursor",             emou_freeCursor },
{ SDL_ShowCursor_ENUM,             "SDL_ShowCursor",             emou_showCursor },
