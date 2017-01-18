/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_gen.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

EXDL_API(egen_init)
{
  /* int SDL_Init(Uint32 flags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint32, flags)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_Init
    ( STACK_GET_DATA(flags)
    );

  THROW_RESULT(int)
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

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_Quit
  (
  );
}

