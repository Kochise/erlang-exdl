/*
 *  Copyright (c) 2010 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_cdrom.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

EXDL_API(ecdr_numDrives)
{
  /* int SDL_CDNumDrives(void) */

  /* exp : Returns the number of CD-ROM drives on the system. */
  /* inp :  */
  /* ret : the number of CD-ROM drives on the system. */

  CATCH_RESULT(int)

    SDL_CDNumDrives
    (
    );

  THROW_RESULT(int)
}

EXDL_API(ecdr_name)
{
  /* const char* SDL_CDName(int drive) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, drive)
  STACK_FMT_END()

  CATCH_RESULT(const char*)

    SDL_CDName
    ( STACK_GET_DATA(drive)
    );

  THROW_STRING()
}

EXDL_API(ecdr_open)
{
  /* SDL_CD* SDL_CDOpen(int drive) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, drive)
  STACK_FMT_END()

  CATCH_RESULT(SDL_CD*)

    SDL_CDOpen
    ( STACK_GET_DATA(drive)
    );

  THROW_POINTER()
}

EXDL_API(ecdr_status)
{
  /* CDstatus SDL_CDStatus(SDL_CD* cdrom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_CD, cdrom[])
  STACK_FMT_END()

  CATCH_RESULT(CDstatus)

    SDL_CDStatus
    ( STACK_GET_ADDR(cdrom)
    );

  THROW_RESULT(CDstatus)
}

EXDL_API(ecdr_playTracks)
{
  /* int SDL_CDPlayTracks(SDL_CD* cdrom, int start_track, int start_frame, int ntracks, int nframes) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_CD*, cdrom)
    STACK_FMT_DATA(int,     start_track)
    STACK_FMT_DATA(int,     start_frame)
    STACK_FMT_DATA(int,     ntracks)
    STACK_FMT_DATA(int,     nframes)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_CDPlayTracks
    ( STACK_GET_DATA(cdrom)
    , STACK_GET_DATA(start_track)
    , STACK_GET_DATA(start_frame)
    , STACK_GET_DATA(ntracks)
    , STACK_GET_DATA(nframes)
    );

  THROW_RESULT(int)
}

EXDL_API(ecdr_play)
{
  /* int SDL_CDPlay(SDL_CD* cdrom, int start, int length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(SDL_CD*, cdrom)
    STACK_FMT_DATA(int,     start)
    STACK_FMT_DATA(int,     length)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_CDPlay
    ( STACK_GET_DATA(cdrom)
    , STACK_GET_DATA(start)
    , STACK_GET_DATA(length)
    );

  THROW_RESULT(int)
}

EXDL_API(ecdr_pause)
{
  /* int SDL_CDPause(SDL_CD* cdrom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_CD, cdrom[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_CDPause
    ( STACK_GET_ADDR(cdrom)
    );

  THROW_RESULT(int)
}

EXDL_API(ecdr_resume)
{
  /* int SDL_CDResume(SDL_CD* cdrom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_CD, cdrom[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_CDResume
    ( STACK_GET_ADDR(cdrom)
    );

  THROW_RESULT(int)
}

EXDL_API(ecdr_stop)
{
  /* int SDL_CDStop(SDL_CD* cdrom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_CD, cdrom[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_CDStop
    ( STACK_GET_ADDR(cdrom)
    );

  THROW_RESULT(int)
}

EXDL_API(ecdr_eject)
{
  /* int SDL_CDEject(SDL_CD* cdrom) */

  /* exp : Ejects the given cdrom. */
  /* inp :  */
  /* ret : 0 on success, or -1 on an error. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_CD, cdrom[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDL_CDEject
    ( STACK_GET_ADDR(cdrom)
    );

  THROW_RESULT(int)
}

EXDL_API(ecdr_close)
{
  /* void SDL_CDClose(SDL_CD* cdrom) */

  /* exp : Closes the given cdrom handle. */
  /* inp : cdrom = handle of the CD unit to close */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDL_CD, cdrom[])
  STACK_FMT_END()

    SDL_CDClose
    ( STACK_GET_ADDR(cdrom)
    );
}

