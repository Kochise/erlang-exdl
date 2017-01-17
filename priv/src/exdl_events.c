/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_events.c,v 1.2 2005/06/29 14:45:38 dgud Exp $
 */

/* 
 * Map erl exdl_events calls to C sdl calls      
 */

#include "exdl.h"

#include <sdl\SDL_events.h>

#define MAX_EVENT_SIZE 13

/* Internals */

static char*
encode_event
( const SDL_Event* ev
, char*            buff
)
{ 
  switch(ev->type)
  {
    case SDL_ACTIVEEVENT :
      /* Application loses/gains visibility */
      *((SDL_ActiveEvent*) buff) = ev->active;
      buff  += sizeof(SDL_ActiveEvent);
      break;
    case SDL_KEYDOWN :
    case SDL_KEYUP :
      /* Keys pressed or released */
      *((SDL_KeyboardEvent*) buff) = ev->key;
      buff  += sizeof(SDL_KeyboardEvent);
      break;
    case SDL_MOUSEMOTION :
      /* Mouse moved */
      *((SDL_MouseMotionEvent*) buff) = ev->motion;
      buff += sizeof(SDL_MouseMotionEvent);
/*
      put16be(buff, SDL_GetModState());
*/
      break;
    case SDL_MOUSEBUTTONDOWN :
    case SDL_MOUSEBUTTONUP :
      /* Mouse button pressed or released */
      *((SDL_MouseButtonEvent*) buff) = ev->button;
      buff += sizeof(SDL_MouseButtonEvent);
/*
      put16be(buff, SDL_GetModState());
*/  
      break;
    case SDL_JOYAXISMOTION :
      /* Joystick axis motion */
      *((SDL_JoyAxisEvent*) buff) = ev->jaxis;
      buff += sizeof(SDL_JoyAxisEvent);
      break;
    case SDL_JOYBALLMOTION :
      /* Joystick trackball motion */
      *((SDL_JoyBallEvent*) buff) = ev->jball;
      buff += sizeof(SDL_JoyBallEvent);
      break;
    case SDL_JOYHATMOTION :
      /* Joystick hat position change */
      *((SDL_JoyHatEvent*) buff) = ev->jhat;
      buff += sizeof(SDL_JoyHatEvent);
      break;
    case SDL_JOYBUTTONDOWN :
    case SDL_JOYBUTTONUP :
      /* Joystick button pressed or released */
      *((SDL_JoyButtonEvent*) buff) = ev->jbutton;
      buff += sizeof(SDL_JoyButtonEvent);
      break;
    case SDL_VIDEORESIZE:  
      /* Video resize request */
      *((SDL_ResizeEvent*) buff) = ev->resize;
      buff += sizeof(SDL_ResizeEvent);
      break;
    case SDL_VIDEOEXPOSE:  
      /* Video expose request */
      *((SDL_ExposeEvent*) buff) = ev->expose;
      buff += sizeof(SDL_ExposeEvent);
      break;
    case SDL_QUIT :
      /* User-requested quit */
      *((SDL_QuitEvent*) buff) = ev->quit;
      buff += sizeof(SDL_QuitEvent);
      break;
    case SDL_USEREVENT :
      /* User defined event, through SDL_NUMEVENTS-1 */
      break;
    case SDL_SYSWMEVENT :
      /* System specific event */
      break;
    default :
      /* Forward compatible */
      ((SDL_QuitEvent*) buff)->type = SDL_NOEVENT;
      buff += sizeof(SDL_QuitEvent);
      fprintf
      ( stderr
      , "EXDL received unsupported event type %x \n"
      , ev->type
      );
      break;
  }

  return buff;/* buffer end address */
}

/* API */

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

  SDL_Event events_tmp[256];

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint32, mask)
    STACK_FMT_DATA(int,    numevents)
  STACK_FMT_END()

  SDL_PumpEvents();
  
  {
    CATCH_RESULT(int)

      SDL_PeepEvents
      ( &events_tmp
      , (0 == len)
      ? 16
      : STACK_GET_DATA(numevents) & 0x0FF /* 0x0FF to prevent 'events' buffer overflow */
      , SDL_GETEVENT
      , (0 == len)
      ? SDL_ALLEVENTS
      : STACK_GET_DATA(mask)
      );
  
    if(0 < exdl_res)
    {
      int i;

      FRAME_FMT_BEGIN()
        FRAME_FMT_DATA(SDL_Event, events_out[1]) // fake size
      FRAME_FMT_SIZE(exdl_res * MAX_EVENT_SIZE)

        for
        ( i  = 0
        ; i <  exdl_res
        ; i += 1
        )
        {
          buff = encode_event
          ( &events_tmp[i]
          , (char*) FRAME_GET_ADDR(events_out[i])
          );
        }
    
      THROW_FRAME()
    }else{}
  }
}

EXDL_API(eevt_pollEvent)
{
  /* int SDL_PollEvent(SDL_Event* event) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_Event event;
  
  if(0 != SDL_PollEvent(&event))
  {
    FRAME_FMT_BEGIN()
      FRAME_FMT_DATA(SDL_Event, buffer)
    FRAME_FMT_END()

      encode_event
      ( &event
      , (char*) FRAME_GET_ADDR(buffer)
      );

    THROW_FRAME()

/*
    GETTEMP_BUFFER(MAX_EVENT_SIZE)

      buff = encode_event
      ( &event
      , buff
      );
    
    SDLSEND_BUFFER()
*/
  }else{}
}

EXDL_API(eevt_waitEvent)
{
  /* int SDL_WaitEvent(SDL_Event* event) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_Event event;

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(SDL_Event, buffer)
  FRAME_FMT_END()

  SDL_WaitEvent
  ( &event
  );

  { /* Isolate the mess for lazy compiler */
    CATCH_RESULT(char*)

      encode_event
      ( &event
      , (char*) FRAME_GET_ADDR(buffer)
      );

    if
    (
         (exdl_res    != start) /* end pointer has moved from start */
      && (SDL_NOEVENT != FRAME_SET_DATA(buffer.type))
    )
    {
      THROW_FRAME()
    }else{}
  }

/*
  GETTEMP_BUFFER(MAX_EVENT_SIZE)

    buff = encode_event
    ( &event
    , buff
    );
  
  if(SDL_NOEVENT != *start)
  {
    SDLSEND_BUFFER()
  }
*/
}

  /* int SDL_PushEvent(SDL_Event* event); */
  /* void SDL_SetEventFilter(SDL_EventFilter filter); */
  /* SDL_EventFilter SDL_GetEventFilter(void); */

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

