/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_wrapper.c,v 1.5 2005/06/29 14:45:39 dgud Exp $
 */

/*    
   Command Handler
   Dispatch the work on the functions   
*/

#include <stdlib.h>
#include <string.h>

#include "exdl.h"

static struct
{ int      op
; char*    name
; exdl_fun fun
;}

code_fns[] =
{ // TABLE INCLUSION HERE
  #include "exdl_gen_fp.h"

  #include "exdl_active_fp.h"
  #include "exdl_audio_fp.h"
  #include "exdl_cdrom_fp.h"
  #include "exdl_error_fp.h"
  #include "exdl_events_fp.h"
  #include "exdl_gfx_fp.h"
  #include "exdl_image_fp.h"
  #include "exdl_joystick_fp.h"
  #include "exdl_keyboard_fp.h"
  #include "exdl_mixer_fp.h"
  #include "exdl_mouse_fp.h"
  #include "exdl_net_fp.h"
  #include "exdl_oglblit_fp.h"
  #include "exdl_rtf_fp.h"
  #include "exdl_svg_fp.h"
  #include "exdl_thread_fp.h"
  #include "exdl_ttf_fp.h"
  #include "exdl_util_fp.h"
  #include "exdl_video_fp.h"
  #include "exdl_vnc_fp.h"

  #include "exdl_al_fp.h"
  #include "exdl_alc_fp.h"
//  #include "exdl_alext_fp.h" // included below
  #include "exdl_alut_fp.h"

  #include "exdl_gl_fp.h"
//  #include "exdl_glext_fp.h" // included below
  #include "exdl_glu_fp.h"
  #include "exdl_glut_fp.h"
  
  #include "exdl_de_fp.h"
  #include "exdl_pal_fp.h"

  { 0, "LastFunction", NULL}
};

static
EXDL_API(undefined_function)
{
  sd->len = -2;
}

static
EXDL_API(undefined_extension)
{
  sd->len = -3;
}

void
init_fps
EXDL_DRIVAPI_1
{   
  static int already_fps = 0;

  if(0 == already_fps)
  {
    int i;
    int op;

    already_fps = 1;

/*
    // Do NOT use anymore, static alloc is safer and more... direct :)

    sdl_fun* fun_tab;
    char**   str_tab;

    fun_tab = sd->fun_tab = malloc((MAX_FUNCTIONS_H+1) * sizeof(sdl_fun));
    str_tab = sd->str_tab = malloc((MAX_FUNCTIONS_H+1) * sizeof(char*));
*/

    for
    ( i  = 0
    ; i <  EXDL_EXTENSION
    ; i += 1
    )
    { /* DLL */
      fun_tab[i] = undefined_function;
      str_tab[i] = "unknown FUNction";
    }

    for
    (
    ; i <  MAX_FUNCTIONS_H
    ; i += 1
    )
    { /* ELL */
      fun_tab[i] = undefined_extension;
      str_tab[i] = "unknown EXTension";
    }

    for
    ( i  = 0
    ; 0 != (op = code_fns[i].op)
    ; i += 1
    )
    {
      if(undefined_function == fun_tab[op])
      {
        fun_tab[op] = code_fns[i].fun;
        str_tab[op] = code_fns[i].name;
      }
      else
      {
        fprintf
        ( stderr
        , "FParray mismatch in initialization: %d '%s' %d '%s'\r\n"
        , i
        , str_tab[op]
        , op
        , code_fns[i].name
        );
      }
    }
  }

#ifdef COMPILE_GLU
  eglu_etess_init();
#endif // COMPILE_GLU
}

/* Extension Loaded Library */

static struct
{ int      op
; char*    name
; exdl_fun fun
; void*    ext_fun
;}

ext_fns[] =
{ // TABLE INCLUSION HERE
  #include "exdl_alext_fp.h"
  #include "exdl_glext_fp.h"

  { 0, "LastFunction", NULL, NULL}
};

void
init_alexts
EXDL_DRIVAPI_1
{
  static int already_alexts = 0;

#ifdef COMPILE_OAL

  if(0 == already_alexts)
  {
    int i;
    int op;

    already_alexts = 1;

/*
    sdl_fun* fun_tab = sd->fun_tab;
    char**   str_tab = sd->str_tab;
*/

    for
    ( i  = 0
    ; 0 != ext_fns[i].op
    ; i += 1
    )
    {
      op = ext_fns[i].op;

      if
      (
           (OPENAL_EXTS_H <= op)
        && (OPENGL_EXTS_H >  op)
      )
      {
        if(undefined_extension == fun_tab[op])
        {
          ALCdevice* device = NULL;

          void* ext_ptr
          = (NULL == (ext_ptr = alGetProcAddress(ext_fns[i].name)))
            ? alcGetProcAddress(device, ext_fns[i].name)
            : ext_ptr
          ;

          if(NULL != ext_ptr)
          {
/*
            fprintf
            ( stderr
            , "Success '%s' \r\n"
            , ext_fns[i].name
            );

            *(void**) (ext_fns[i].ext_fun) = ext_ptr;
*/ 

            fun_tab[op] = ext_fns[i].fun = ext_ptr;
            str_tab[op] = ext_fns[i].name;
          }
        }
        else
        {   
          fprintf
          ( stderr
          , "Exiting AL EXTENSION array mismatch in initialization %d %d '%s'\r\n"
          , i
          , ext_fns[i].op
          , ext_fns[i].name
          );
        }
      }
    }
  }
#endif // COMPILE_OAL
}

void
init_glexts
EXDL_DRIVAPI_1
{ /* Must be done after creating a rendering context */
  static int already_glexts = 0;

#ifdef COMPILE_OGL

  if(0 == already_glexts)
  {
    int i;
    int op;

    already_glexts = 1;

/*
    sdl_fun* fun_tab = sd->fun_tab;
    char**   str_tab = sd->str_tab;
*/

    for
    ( i  = 0
    ; 0 != ext_fns[i].op
    ; i += 1
    )
    {
      op = ext_fns[i].op;

      if
      (
           (OPENGL_EXTS_H   <= op)
        && (MAX_FUNCTIONS_H >  op)
      )
      {
        if(undefined_extension == fun_tab[op])
        {
          void* ext_ptr = 
#ifdef GLX_GLXEXT_PROTOTYPES
  #ifdef GLX_ARB_get_proc_address
          glXGetProcAddressARB
  #else
          glXGetProcAddress
  #endif
#else
          SDL_GL_GetProcAddress
#endif
          (ext_fns[i].name);
        
          if(NULL != ext_ptr)
          {
/*
            fprintf
            ( stderr
            , "Success %s \r\n"
            , ext_fns[i].name
            );

            *(void**) (ext_fns[i].ext_fun) = ext_ptr;
*/ 

            fun_tab[op] = ext_fns[i].fun = ext_ptr;
            str_tab[op] = ext_fns[i].name;
          }
          else
          {
/*
            char  arbname[256];     
            char* tmp;

            strcpy(arbname, ext_fns[i].name);
          
            tmp = arbname + strlen(arbname);
          
            strncpy(tmp, "ARB", 4);
          
            ext_ptr = SDL_GL_GetProcAddress(arbname);
          
            if(ext_ptr)
            {
              fprintf
              ( stderr
              , "Success '%s' \r\n"
              , ext_fns[i].name
              );

              *(void**) (ext_fns[i].ext_fun) = ext_ptr;

              fun_tab[op] = ext_fns[i].fun;
            }
*/
/*
            else
            {            
              fprintf
              ( stderr
              , "Failed '%s' \r\n"
              , ext_fns[i].name
              );

              fun_tab[op] = undefined_extension;
            }
*/
          }
        }
        else
        {   
          fprintf
          ( stderr
          , "Exiting GL EXTENSION array mismatch in initialization %d %d '%s'\r\n"
          , i
          , ext_fns[i].op
          , ext_fns[i].name
          );
        }
      }
    }
  }
#endif // COMPILE_OGL
}
