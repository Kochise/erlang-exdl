/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_gen.c,v 1.1 2004/03/30 07:49:22 bjorng Exp $
 */

/* 
 * General SDL functions.
 */

#include "exdl.h"

#include <string.h>

EXDL_API(egen_init)
{
  /* int SDL_Init(Uint32 flags) */

  /* exp : Initializes SDL. This should be called before all other SDL functions */
  /* inp : flags = part(s) of SDL to initialize. */
  /*               SDL_INIT_TIMER       - Initializes the timer subsystem. */
  /*               SDL_INIT_AUDIO       - Initializes the audio subsystem. */
  /*               SDL_INIT_VIDEO       - Initializes the video subsystem. */
  /*               SDL_INIT_CDROM       - Initializes the cdrom subsystem. */
  /*               SDL_INIT_JOYSTICK    -Initializes the joystick subsystem. */
  /*               SDL_INIT_EVERYTHING  - Initialize all of the above. */
  /*               SDL_INIT_NOPARACHUTE - Prevents SDL from catching fatal signals. */
  /*               SDL_INIT_EVENTTHREAD	*/
  /* ret : -1 on an error or 0 on success. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint32, flags)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_Init
    ( STACK_GET_DATA(flags)
    );

  THROW_RESULT(int)

  /*  
  if(0 > exdl_res)
  {
    fprintf
    ( stderr
    , "Couldn't initialize SDL : %d\n\r"
    , exdl_res
    );
  }
  */
}

EXDL_API(egen_initSubSystem)
{
  /* int SDL_InitSubSystem(Uint32 flags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint32, flags)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_InitSubSystem
    ( STACK_GET_DATA(flags)
    );

  THROW_RESULT(int)
}

EXDL_API(egen_quitSubSystem)
{
  /* void SDL_QuitSubSystem(Uint32 flags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint32, flags)
  STACK_FMT_END()

    SDL_QuitSubSystem
    ( STACK_GET_DATA(flags)
    );
}

EXDL_API(egen_wasInit)
{
  /* Uint32 SDL_WasInit(Uint32 flags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint32, flags)
  STACK_FMT_END()

  CATCH_RESULT(Uint32)

    SDL_WasInit
    ( STACK_GET_DATA(flags)
    );

  THROW_RESULT(Uint32)
}

EXDL_API(egen_quit)
{
  /* void SDL_Quit(void) */

  /* exp : SDL_Quit shuts down all SDL subsystems and frees the resources */
  /*       allocated to them. This should always be called before you exit. */
  /* inp :  */
  /* ret :  */

  SDL_Quit
  (
  );
}

