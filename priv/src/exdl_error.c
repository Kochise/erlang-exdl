/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_error.c,v 1.1 2004/03/30 07:49:22 bjorng Exp $
 */

/* 
 * Error handling.
 */

#include "exdl.h"

EXDL_API(eerr_getError)
{
  /* char* SDL_GetError(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(char*)

    SDL_GetError
    (
    );

  THROW_STRING()
}

EXDL_API(eerr_clearError)
{
  /* void SDL_ClearError(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDL_ClearError
  (
  );
}

