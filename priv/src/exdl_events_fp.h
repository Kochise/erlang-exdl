/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_events_fp.h,v 1.2 2004/10/25 09:17:43 dgud Exp $
 */

/* File included in "exdl_wrapper.c" */

{ SDL_PumpEvents_ENUM,  "SDL_PumpEvents",  eevt_pumpEvents },
{ SDL_PeepEvents_ENUM,  "SDL_PeepEvents",  eevt_peepEvents },
{ SDL_PollEvent_ENUM,   "SDL_PollEvent",   eevt_pollEvent },
{ SDL_WaitEvent_ENUM,   "SDL_WaitEvent",   eevt_waitEvent },
{ SDL_EventState_ENUM,  "SDL_EventState",  eevt_eventState },
