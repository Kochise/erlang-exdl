/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_active.c,v 1.2 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

EXDL_API(eact_getAppState)
{
  /* Uint8 SDL_GetAppState(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(Uint8)

    SDL_GetAppState
    (
    );

  THROW_RESULT(Uint8)
}

