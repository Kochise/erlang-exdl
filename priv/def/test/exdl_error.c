/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_error.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
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

