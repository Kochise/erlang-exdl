/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_driver.c,v 1.2 2006/05/15 14:45:44 dgud Exp $
 */

#ifdef HAVE_CONFIG_H
  #include "config.h"
#endif

/*
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
*/

/*
#ifdef _WIN32
  #include <windows.h>
  #include <io.h>
#else
  #include <unistd.h>
#endif

#include <errno.h>
#include <sys/types.h>
#include <fcntl.h>
*/

#include "exdl.h"

#define TEMP_BINARY_SIZE 512

/*
** The driver struct
*/

static ErlDrvData
exdl_driver_start
( ErlDrvPort port
, char*      buff
)
{      
  /* static ErlDrvData exdl_driver_start(ErlDrvPort port, char* buff) */

#ifdef _WIN32
  if
  (
      0
    > SDL_RegisterApp
      ( "Erlang SDL"
      , CS_BYTEALIGNCLIENT
      , GetModuleHandle(NULL)
      )
  )
  {
    fprintf
    ( stderr
    , "WinMain() error %s \n"
    , SDL_GetError()
    );

    return(ERL_DRV_ERROR_GENERAL);
  }
  else
#endif /* _WIN32 */
  {
    exdl_data* data = malloc(sizeof(exdl_data)); /* MEMALLOC */

    if(NULL == data)
    {
      fprintf
      ( stderr
      , " Couldn't alloc mem\r\n"
      );

      return(ERL_DRV_ERROR_GENERAL); /* ENOMEM */      
    }
    else
    { // The following frame is used to check if the C and the Erlang drivers matches
      int test_frame[][2] =
      { { EXDL_GEN_H,       _ENUM_EXDL_GEN }

      , { EXDL_ACTIVE_H,    _ENUM_EXDL_ACTIVE }
      , { EXDL_AUDIO_H,     _ENUM_EXDL_AUDIO }
      , { EXDL_EVENTS_H,    _ENUM_EXDL_EVENTS }
      , { EXDL_GFX_H,       _ENUM_EXDL_GFX }
      , { EXDL_IMAGE_H,     _ENUM_EXDL_IMAGE }
      , { EXDL_JOYSTICK_H,  _ENUM_EXDL_JOYSTICK }
      , { EXDL_KEYBOARD_H,  _ENUM_EXDL_KEYBOARD }
      , { EXDL_MIXER_H,     _ENUM_EXDL_MIXER }
      , { EXDL_MOUSE_H,     _ENUM_EXDL_MOUSE }
      , { EXDL_NET_H,       _ENUM_EXDL_NET }
      , { EXDL_OGLBLIT_H,   _ENUM_EXDL_OGLBLIT }
      , { EXDL_RTF_H,       _ENUM_EXDL_RTF }
      , { EXDL_SVG_H,       _ENUM_EXDL_SVG }
      , { EXDL_THREAD_H,    _ENUM_EXDL_THREAD }
      , { EXDL_TTF_H,       _ENUM_EXDL_TTF }
      , { EXDL_UTIL_H,      _ENUM_EXDL_UTIL }
      , { EXDL_VIDEO_H,     _ENUM_EXDL_VIDEO }
      , { EXDL_VNC_H,       _ENUM_EXDL_VNC }

      ,   { EXDL_SFML_H,    _ENUM_EXDL_SFML }

      ,   { EXDL_AL_H,      _ENUM_EXDL_AL }
      ,   { EXDL_ALC_H,     _ENUM_EXDL_ALC }
      ,   { EXDL_ALUT_H,    _ENUM_EXDL_ALUT }

      ,   { EXDL_GL_H,      _ENUM_EXDL_GL }
      ,   { EXDL_GLU_H,     _ENUM_EXDL_GLU }
      ,   { EXDL_GLUT_H,    _ENUM_EXDL_GLUT }

      ,   { EXDL_DE_H,      _ENUM_EXDL_DE }
      ,   { EXDL_PAL_H,     _ENUM_EXDL_PAL }

      , { EXDL_EXTENSION,   0 }

      ,   { EXDL_ALEXT_H,   _ENUM_EXDL_ALEXT }
      ,   { EXDL_GLEXT_H,   _ENUM_EXDL_GLEXT }

      , { MAX_FUNCTIONS_H, -1 }
      };

      set_port_control_flags
      ( port
      , PORT_CONTROL_FLAG_BINARY
      );

      data->driver_data = port;
      data->op          = 0;
      data->len         = 0;
      data->buff        = NULL; 
      data->temp_bin    = driver_alloc_binary(TEMP_BINARY_SIZE);
      data->next_bin    = 0;

      init_fps(data);

      return (ErlDrvData) data;
    }
  }
}

static void
exdl_driver_stop
( ErlDrvData handle
) 
{  
  /* static void exdl_driver_stop(ErlDrvData handle) */

/*
  exdl_data* sd = (exdl_data*) handle;

  free(sd->fun_tab);
  free(sd->str_tab);
*/

#ifdef _WIN32
  UnregisterClass
  ( "Erlang SDL"
  , GetModuleHandle(NULL)
  );
#endif /* _WIN32 */

/*
  SDL_Quit(); // Already done in 'quit/0' of exdl_driver.erl
*/

  free(handle); /* see MEMALLOC ~50 lines above */
}

static void
exdl_driver_finish
( void
)
{
  /* static void exdl_driver_finish(void) */
  ;
}

static ErlDrvSSizeT
exdl_driver_control
( ErlDrvData   handle
, unsigned int op
, char*        buf
, ErlDrvSizeT  count
, char**       res
, ErlDrvSizeT  res_size
)
{
  /* static int exdl_driver_control(ErlDrvData handle, unsigned int command, char* buf, int count, char** res, int res_size) */

  exdl_data* sd = (exdl_data*) handle;
  exdl_fun   func;

  sd->buff = NULL;
  sd->len  = 0;
  sd->op   = op;

//func = sd->fun_tab[op];
  func = fun_tab[op];

  func
  ( sd
  , count
  , buf
  );
  
  (*res) = sd->buff;
  
  return sd->len;
}

static ErlDrvSSizeT
exdl_driver_control_debug
( ErlDrvData   handle
, unsigned int op
, char*        buf
, ErlDrvSizeT  count
, char**       res
, ErlDrvSizeT  res_size
)
{
  exdl_data*  sd = (exdl_data*) handle;
  exdl_fun    func;
  ErlDrvSizeT len;

  sd->buff = NULL;
  sd->len  = 0;
  sd->op   = op;

  fprintf
  ( stderr
  , "Command:%d:%s: "
  , op
//  , sd->str_tab[op]
  , str_tab[op]
  );
  
//  func = sd->fun_tab[op];
  func = fun_tab[op];

  func
  ( sd
  , count
  , buf
  );

  if(0 <= (len = sd->len))
  {
    fprintf(stderr, "ok\r\n");

    (*res) = sd->buff;

    return len;
  }
  else
  {
    fprintf(stderr, "error\r\n");

    *res = 0;

    return -1;
  }
}

void
exdl_send
EXDL_DRIVAPI_2
{
  if(NULL == sd->buff)
  {
    fprintf
    ( stderr
    , "EXDL INTERNAL ERROR: 'exdl_send' in '%s' sent NULL buffer: %d\r\n"
//    , sd->str_tab[sd->op]
    , str_tab[sd->op]
    , len
    );

    abort();
  }

  if(len > sd->len)
  {
    fprintf
    ( stderr
    , "EXDL INTERNAL ERROR: 'exdl_send' in '%s' allocated %d sent %d\r\n"
//    , sd->str_tab[sd->op]
    , str_tab[sd->op]
    , sd->len
    , len
    );

    abort();
  }

  /* Workaround that driver_control doesn't check length */
  ((ErlDrvBinary *) sd->buff)->orig_size = len;

  sd->len = len;
}

char*
exdl_getbuff
EXDL_DRIVAPI_2
{  
  ErlDrvBinary* bin = driver_alloc_binary(len); 

  sd->len  = len; 
  sd->buff = bin;

  /* And return the pointer to the bytes */
  return bin->orig_bytes;
}

char*
exdl_get_temp_buff
EXDL_DRIVAPI_2
{
  if(TEMP_BINARY_SIZE < len)
  { /* Realloc */
    return exdl_getbuff(sd, len);
  }
  else
  {
    ErlDrvBinary* bin = (ErlDrvBinary*) sd->temp_bin;

    driver_binary_inc_refc(bin);
    
    sd->len  = len;
    sd->buff = bin;
    
    return bin->orig_bytes;
  }
}

static void
exdl_driver_outputv
( ErlDrvData drv_data
, ErlIOVec*  ev
)
{
  /* static void standard_outputv(ErlDrvData drv_data, ErlIOVec *ev) */

  exdl_data*    sd = (exdl_data*) drv_data;
  ErlDrvBinary* bin;

  if(2 == ev->vsize)
  {
    int i = sd->next_bin;

    sd->bin[i].base = ev->iov[1].iov_base;
    sd->bin[i].size = ev->iov[1].iov_len;

    bin = ev->binv[1];

    /* Otherwise it could get deallocated */
    driver_binary_inc_refc(bin);
    
    sd->bin[i].bin = bin;

    sd->next_bin += 1;
  }
}

/* */

static ErlDrvEntry
exdl_driver_entry =
{     NULL                       /* F_PTR init, N/A */
, exdl_driver_start              /* L_PTR start, called when port is opened */
, exdl_driver_stop               /* F_PTR stop, called when port is closed */
,     NULL                       /* F_PTR output, called when erlang has sent */
,     NULL                       /* F_PTR ready_input, called when input descriptor ready */          
,     NULL                       /* F_PTR ready_output, called when output descriptor ready */
, "exdl_driver"                  /* char* driver_name, the argument to open_port */
, exdl_driver_finish             /* F_PTR finish, called when unloaded */
,     NULL                       /* void*, handle that is not used (BC) */
, exdl_driver_control            /* F_PTR control, port_command callback */
,     NULL                       /* F_PTR timeout, reserved */
, exdl_driver_outputv            /* F_PTR outputv, reserved */

,     NULL                       /* F_PTR ready_async, reserved */
,     NULL                       /* F_PTR flush, reserved */
,     NULL                       /* F_PTR call, reserved */
,     NULL                       /* F_PTR event, reserved */
, ERL_DRV_EXTENDED_MARKER        /* extended_marker */
, ERL_DRV_EXTENDED_MAJOR_VERSION /* major_version */
, ERL_DRV_EXTENDED_MINOR_VERSION /* minor_version */
, ERL_DRV_FLAG_USE_PORT_LOCKING  /* driver_flags */
,     NULL                       /* void*, handle2 that is not used (BC) */
,     NULL                       /* F_PTR process_exit, reserved */
,     NULL                       /* F_PTR stop_select, reserved */
};

DRIVER_INIT
(exdl_driver)
{
  return &exdl_driver_entry;
}

/* */

EXDL_API(exdl_util_debug)
{
  if(*buff)
  {
    exdl_driver_entry.control = exdl_driver_control_debug;
  }
  else
  {
    exdl_driver_entry.control = exdl_driver_control;
  }
}

/* */

void
exdl_free_binaries
EXDL_DRIVAPI_1
{
  int i;

  for
  ( i  = sd->next_bin - 1
  ; i >= 0
  ; i -= 1
  )
  {
    driver_free_binary(sd->bin[i].bin);
  }

  sd->next_bin = 0;
}
