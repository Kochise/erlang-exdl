/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_events.h,v 1.1 2004/03/30 07:49:22 bjorng Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

  enum
  { SDL_PumpEvents_ENUM = EXDL_EVENTS_H
  , SDL_PeepEvents_ENUM
  , SDL_PollEvent_ENUM
  , SDL_WaitEvent_ENUM
  , SDL_EventState_ENUM
  , _ENUM_EXDL_EVENTS
  };


EXDL_API(eevt_pumpEvents);
EXDL_API(eevt_peepEvents);
EXDL_API(eevt_pollEvent);
EXDL_API(eevt_waitEvent);
EXDL_API(eevt_eventState);

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
