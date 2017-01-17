/* 
 *  Copyright (c) 2001 Dan Gudmundsson
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl.h,v 1.4 2005/06/29 14:45:38 dgud Exp $
 */

/* BEWARE : this is a unfinished and untested exdl driver version */
/* NOTICE : Kochise would like to thanks every of his followers ! */

/* Define function's */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifndef SDL_H
  #pragma warning(disable : 4024 4047) /* catch spurious cast warnings, at least in Visual Studio */

  #include <erl_driver.h>
// #include <erl_fixed_size_int_types.h>
// #define SIZEOF_LONG 8
// #define HAVE_INT_64 1

  #ifdef WIN32
    #include <windows.h>  /* needed by Windows' gl.h etc */
  #endif

  /* SDL core */

  #include <sdl\SDL.h> // "1.2.13" under a sub-dir to avoid making the main include dir a big mess

/* - - - EXDL ADD-ON (uncomment to activate module, then re-compile) - - - - - */

  /* SDL add-on, uncomment to activate, rebuild and reflect the changes in the Erlang version */

//#define COMPILE_GFX "2.0.19"   // 111
//#define COMPILE_IMAGE "1.2.10" // 000
//#define COMPILE_MIXER "1.2.11" // 333
//#define COMPILE_NET "1.2.7"    // 444
//#define COMPILE_OGLBLIT "0.5"  // 111
//#define COMPILE_RTF "0.1.0"    // 111
//#define COMPILE_SVG "1.2.0"    // 333
//#define COMPILE_TTF "2.0.9"    // AAA
//#define COMPILE_VNC "1.0.0"    // 111

  /* SFML library (good SDL opponent) */

//#define COMPILE_SFML "1.6"

  /* Audio libraries */

//#define COMPILE_AL "1.1"
//#define COMPILE_ALEXT "1.1"
//#define COMPILE_ALUT "1.1.0"

  /* OpenGL libraries */

//#define COMPILE_GL "4.3"
//#define COMPILE_GLU "1.3"
//#define COMPILE_GLUT "3.7.6"

  /* Physic libraries */

//#define COMPILE_DE "0.11"      // 444
//#define COMPILE_PAL "0.4.0"    // eh.h is only for C++!

/* - - - INCLUDE SECTION (no use to change your project's options) - - - - - - */

#ifdef COMPILE_GFX
  #pragma comment(lib, "SDL_gfx.lib")
  #include <sdl\SDL_gfx.h>
#endif // COMPILE_GFX
#ifdef COMPILE_IMAGE
  #pragma comment(lib, "SDL_image.lib")
  #include <sdl\SDL_image.h>
#endif // COMPILE_IMAGE
#ifdef COMPILE_MIXER
  #pragma comment(lib, "SDL_mixer.lib")
  #include <sdl\SDL_mixer.h>
#endif // COMPILE_MIXER
#ifdef COMPILE_NET
  #pragma comment(lib, "SDL_net.lib")
  #include <sdl\SDL_net.h>
#endif // COMPILE_NET
#ifdef COMPILE_OGLBLIT
  #pragma comment(lib, "SDL_oglblit.lib")
  #include <sdl\SDL_oglblit.h>
#endif // COMPILE_OGLBLIT
#ifdef COMPILE_RTF
  #pragma comment(lib, "SDL_rtf.lib")
  #include <sdl\SDL_rtf.h>
#endif // COMPILE_RTF
#ifdef COMPILE_SVG
  #pragma comment(lib, "SDL_svg.lib")
  #include <sdl\SDL_svg.h>
#endif // COMPILE_SVG
#ifdef COMPILE_TTF
  #pragma comment(lib, "SDL_ttf.lib")
  #include <sdl\SDL_ttf.h>
#endif // COMPILE_TTF
#ifdef COMPILE_VNC
  #pragma comment(lib, "SDL_vnc.lib")
  #include <sdl\SDL_vnc.h>
#endif // COMPILE_VNC

  /* SFML headers */

#ifdef COMPILE_SFML
// Right now (as of 1.10.2.20) do *NOT* include this into the main tree
//  #pragma comment(lib, "sfml.lib ")
//  #include <sfml.h>
#endif // COMPILE_SFML

  /* OpenAL headers */

#ifdef COMPILE_AL
  #pragma comment(lib, "openal32.lib")
  #include <al\al.h>
  #include <al\alc.h>
  #include <al\alext.h>
#endif // COMPILE_AL
#ifdef COMPILE_ALUT
  #pragma comment(lib, "alut.lib ")
  #include <al\alut.h>
#endif // COMPILE_ALUT
     
  /* OpenGL headers */

#ifdef COMPILE_GL
  #pragma comment(lib, "opengl32.lib")
  #include <gl\gl.h>
  #include <gl\glext.h> /* ALWAYS make SURE you have the LATEST up-to-date version of thess files ! */
  #include <gl\glxext.h>
  #include <gl\glcorearb.h>
#endif // COMPILE_GL
#ifdef COMPILE_GLU
  #pragma comment(lib, "glu32.lib")
  #include <gl\glu.h>
#endif // COMPILE_GLU
#ifdef COMPILE_GLUT
  #pragma comment(lib, "glut32.lib")
//  #include <gl\glut.h> /* Beware, alloc definition trouble */
#endif // COMPILE_GLUT

  /* OpenDE - OpenPAL headers */

#ifdef COMPILE_DE
  #pragma comment(lib, "ode.lib")
  #include <ode\ode.h>
#endif // COMPILE_DE
#ifdef COMPILE_PAL
  #pragma comment(lib, "opal-ode.lib")
  #include <opal\opal.h>
#endif // COMPILE_PAL

/* - - - THE EXDL TOOL-BOX (the one that makes all of this possible !) - - - - */
  #include "exdl_tools.h" // Beware, unrevealed coder's secret and magic inside
/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  /*   These MUST exactly MATCH those in src/exdl.hrl */

/* The next define ensure a correct array alignment/resizing even upon libraries' updates */
#define REF_ALIGN(r) (r+8)&(-4)

  enum{ EXDL_GEN_H       =  10};
  #include "exdl_gen.h"

  /* Using enum ensure the aligment calculation is resolved at compile time */
  /* Yeah, because the original esdl project had to touch the enum for each source file modification */
  enum { EXDL_ACTIVE_H   = REF_ALIGN(_ENUM_EXDL_GEN) };
  #include "exdl_active.h"
  enum { EXDL_AUDIO_H    = REF_ALIGN(_ENUM_EXDL_ACTIVE) };
  #include "exdl_audio.h"
  enum { EXDL_CDROM_H    = REF_ALIGN(_ENUM_EXDL_AUDIO) };
  #include "exdl_cdrom.h"
  enum { EXDL_ERROR_H    = REF_ALIGN(_ENUM_EXDL_CDROM) };
  #include "exdl_error.h"
  enum { EXDL_EVENTS_H   = REF_ALIGN(_ENUM_EXDL_ERROR) };
  #include "exdl_events.h"
  enum { EXDL_GFX_H      = REF_ALIGN(_ENUM_EXDL_EVENTS) };
  #include "exdl_gfx.h"
  enum { EXDL_IMAGE_H    = REF_ALIGN(_ENUM_EXDL_GFX) };
  #include "exdl_image.h"
  enum { EXDL_JOYSTICK_H = REF_ALIGN(_ENUM_EXDL_IMAGE) };
  #include "exdl_joystick.h"
  enum { EXDL_KEYBOARD_H = REF_ALIGN(_ENUM_EXDL_JOYSTICK) };
  #include "exdl_keyboard.h"
  enum { EXDL_MIXER_H    = REF_ALIGN(_ENUM_EXDL_KEYBOARD) };
  #include "exdl_mixer.h"
  enum { EXDL_MOUSE_H    = REF_ALIGN(_ENUM_EXDL_MIXER) };
  #include "exdl_mouse.h"
  enum { EXDL_NET_H      = REF_ALIGN(_ENUM_EXDL_MOUSE) };
  #include "exdl_net.h"
  enum { EXDL_OGLBLIT_H  = REF_ALIGN(_ENUM_EXDL_NET) };
  #include "exdl_oglblit.h"
  enum { EXDL_RTF_H      = REF_ALIGN(_ENUM_EXDL_OGLBLIT) };
  #include "exdl_rtf.h"
  enum { EXDL_SVG_H      = REF_ALIGN(_ENUM_EXDL_RTF) };
  #include "exdl_svg.h"
  enum { EXDL_THREAD_H   = REF_ALIGN(_ENUM_EXDL_SVG) };
  #include "exdl_thread.h"
  enum { EXDL_TTF_H      = REF_ALIGN(_ENUM_EXDL_THREAD) };
  #include "exdl_ttf.h"
  enum { EXDL_UTIL_H     = REF_ALIGN(_ENUM_EXDL_TTF) };
  #include "exdl_util.h"
  enum { EXDL_VIDEO_H    = REF_ALIGN(_ENUM_EXDL_UTIL) };
  #include "exdl_video.h"
  enum { EXDL_VNC_H      = REF_ALIGN(_ENUM_EXDL_VIDEO) };
  #include "exdl_vnc.h"

  /* SFML headers */

  enum { EXDL_SFML_H     = REF_ALIGN(_ENUM_EXDL_VNC) };
  #include "exdl_sfml.h"

  /* OpenAL headers */

  enum { EXDL_AL_H       = REF_ALIGN(_ENUM_EXDL_SFML) };
  #include "exdl_al.h"
  enum { EXDL_ALC_H      = REF_ALIGN(_ENUM_EXDL_AL) };
  #include "exdl_alc.h"
  enum { EXDL_ALUT_H     = REF_ALIGN(_ENUM_EXDL_ALC) };
  #include "exdl_alut.h"

  /* OpenGL headers */

  enum { EXDL_GL_H       = REF_ALIGN(_ENUM_EXDL_ALUT) };
  #include "exdl_gl.h"
  enum { EXDL_GLU_H      = REF_ALIGN(_ENUM_EXDL_GL) };
  #include "exdl_glu.h"
  enum { EXDL_GLUT_H     = REF_ALIGN(_ENUM_EXDL_GLU) };
  #include "exdl_glut.h"
  enum { EXDL_GLXEXT_H   = REF_ALIGN(_ENUM_EXDL_GLUT) };
  #include "exdl_glxext.h"

  /* OpenDE - OpenPAL headers */

  enum { EXDL_DE_H       = REF_ALIGN(_ENUM_EXDL_GLXEXT) };
  #include "exdl_de.h"
  enum { EXDL_PAL_H      = REF_ALIGN(_ENUM_EXDL_DE) };
  #include "exdl_pal.h"

#define EXDL_DEFINE_EXTS

  /* Extension section */

  enum { EXDL_EXTENSION  = REF_ALIGN(_ENUM_EXDL_PAL) }; // Used in exdl_wrapper.c

  enum { EXDL_ALEXT_H    = EXDL_EXTENSION };
  #include "exdl_alext.h" // included in exdl_wrapper.c
  enum { EXDL_GLEXT_H    = REF_ALIGN(_ENUM_EXDL_ALEXT) };
  #include "exdl_glext.h" // included in exdl_wrapper.c


  enum { MAX_FUNCTIONS_H = REF_ALIGN(_ENUM_EXDL_GLEXT) };


  /* Static alloc makes the lib file bigger, yet prevent for further mem alloc */
  static exdl_fun fun_tab[MAX_FUNCTIONS_H];
  static char*    str_tab[MAX_FUNCTIONS_H];

#endif /* SDL_H */

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
