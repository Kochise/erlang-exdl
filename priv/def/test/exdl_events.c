/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_events.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

EXDL_API(eevt_pumpEvents)
{
  /* void SDL_PumpEvents(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_PumpEvents
  (
  );
}

EXDL_API(eevt_peepEvents)
{
  /* int SDL_PeepEvents(SDL_Event* events, int numevents, SDL_eventaction action, Uint32 mask) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_Event*,      events)
    STACK_FMT_DATA(int,             numevents)
    STACK_FMT_DATA(SDL_eventaction, action)
    STACK_FMT_DATA(Uint32,          mask)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_PeepEvents
    ( STACK_GET_DATA(events)
    , STACK_GET_DATA(numevents)
    , STACK_GET_DATA(action)
    , STACK_GET_DATA(mask)
    );

  THROW_RESULT(int)
}

EXDL_API(eevt_pollEvent)
{
  /* int SDL_PollEvent(SDL_Event* event) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Event, event[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_PollEvent
    ( STACK_GET_ADDR(event)
    );

  THROW_RESULT(int)
}

EXDL_API(eevt_waitEvent)
{
  /* int SDL_WaitEvent(SDL_Event* event) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_Event, event[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_WaitEvent
    ( STACK_GET_ADDR(event)
    );

  THROW_RESULT(int)
}

EXDL_API(eevt_eventState)
{
  /* Uint8 SDL_EventState(Uint8 type, int state) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint8, type)
    STACK_FMT_DATA(int,   state)
  STACK_FMT_END()

  CATCH_RESULT(Uint8)

    SDL_EventState
    ( STACK_GET_DATA(type)
    , STACK_GET_DATA(state)
    );

  THROW_RESULT(Uint8)
}

