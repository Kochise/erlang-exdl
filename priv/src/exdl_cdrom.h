/*
 *  Copyright (c) 2010 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_cdrom.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

  enum
  { SDL_CDNumDrives_ENUM = EXDL_CDROM_H
  , SDL_CDName_ENUM
  , SDL_CDOpen_ENUM
  , SDL_CDStatus_ENUM
  , SDL_CDPlayTracks_ENUM
  , SDL_CDPlay_ENUM
  , SDL_CDPause_ENUM
  , SDL_CDResume_ENUM
  , SDL_CDStop_ENUM
  , SDL_CDEject_ENUM
  , SDL_CDClose_ENUM
  , _ENUM_EXDL_CDROM
  };


EXDL_API(ecdr_numDrives);
EXDL_API(ecdr_name);
EXDL_API(ecdr_open);
EXDL_API(ecdr_status);
EXDL_API(ecdr_playTracks);
EXDL_API(ecdr_play);
EXDL_API(ecdr_pause);
EXDL_API(ecdr_resume);
EXDL_API(ecdr_stop);
EXDL_API(ecdr_eject);
EXDL_API(ecdr_close);

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
