%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl.hrl,v 1.1 2004/03/30 07:50:46 bjorng Exp $
%%

%%%----------------------------------------------------------------------
%%% File     : exdl.hrl
%%% Author   : Dan Gudmundsson <dgud@erix.ericsson.se>
%%% Purpose  : 
%%% Created  :  6 Oct 2000 by Dan Gudmundsson <dgud@erix.ericsson.se>
%%% Modified :  6 Nov 2008 by David Koch <david.koch@libertysurf.fr>
%%%----------------------------------------------------------------------

-include("exdl_define.hrl").

%%%% SDL add-on, uncomment to activate, rebuild and reflect the changes in the Erlang version

%-define(COMPILE_GFX, 1).
%-define(COMPILE_IMAGE, 1).
%-define(COMPILE_MIXER, 1).
%-define(COMPILE_NET, 1).
%-define(COMPILE_OGLBLIT, 1).
%-define(COMPILE_RTF, 1).
%-define(COMPILE_SVG, 1).
%-define(COMPILE_TTF, 1).
%-define(COMPILE_VNC, 1).

%%%% SFML library (good SDL opponent)

%-define(COMPILE_SFML, 1).

%%%% Audio libraries

%-define(COMPILE_AL, 1).
%-define(COMPILE_GLU, 1).
%-define(COMPILE_ALUT, 1).

%%%% OpenGL libraries

%-define(COMPILE_GL, 1).
%-define(COMPILE_ALEXT, 1).
%-define(COMPILE_GLUT, 1).

%%%% Physic libraries

%-define(COMPILE_ODE, 1).
%-define(COMPILE_OPAL, 1).

-define(REF_ALIGN, +8 band -4).

-ifndef(EXDL_GEN_HRL).  %% These MUST exactly MATCH those in c_src/exdl.h

  -define(EXDL_GEN_HRL,      10).
  -include("exdl_gen_fp.hrl").
  -define(EXDL_ACTIVE_HRL,   ?_ENUM_EXDL_GEN ?REF_ALIGN).
  -include("exdl_active_fp.hrl").
  -define(EXDL_AUDIO_HRL,    ?_ENUM_EXDL_ACTIVE ?REF_ALIGN).
  -include("exdl_audio_fp.hrl").
  -define(EXDL_CDROM_HRL,    ?_ENUM_EXDL_AUDIO ?REF_ALIGN).
  -include("exdl_cdrom_fp.hrl").
  -define(EXDL_ERROR_HRL,    ?_ENUM_EXDL_CDROM ?REF_ALIGN).
  -include("exdl_error_fp.hrl").
  -define(EXDL_EVENTS_HRL,   ?_ENUM_EXDL_ERROR ?REF_ALIGN).
  -include("exdl_events_fp.hrl").
  -define(EXDL_GFX_HRL,      ?_ENUM_EXDL_EVENTS ?REF_ALIGN).
  -include("exdl_gfx_fp.hrl").
  -define(EXDL_IMAGE_HRL,    ?_ENUM_EXDL_GFX ?REF_ALIGN).
  -include("exdl_image_fp.hrl").
  -define(EXDL_JOYSTICK_HRL, ?_ENUM_EXDL_IMAGE ?REF_ALIGN).
  -include("exdl_joystick_fp.hrl").
  -define(EXDL_KEYBOARD_HRL, ?_ENUM_EXDL_JOYSTICK ?REF_ALIGN).
  -include("exdl_keyboard_fp.hrl").
  -define(EXDL_MIXER_HRL,    ?_ENUM_EXDL_KEYBOARD ?REF_ALIGN).
  -include("exdl_mixer_fp.hrl").
  -define(EXDL_MOUSE_HRL,    ?_ENUM_EXDL_MIXER ?REF_ALIGN).
  -include("exdl_mouse_fp.hrl").
  -define(EXDL_NET_HRL,      ?_ENUM_EXDL_MOUSE ?REF_ALIGN).
  -include("exdl_net_fp.hrl").
  -define(EXDL_OGLBLIT_HRL,  ?_ENUM_EXDL_NET ?REF_ALIGN).
  -include("exdl_oglblit_fp.hrl").
  -define(EXDL_RTF_HRL,      ?_ENUM_EXDL_OGLBLIT ?REF_ALIGN).
  -include("exdl_rtf_fp.hrl").
  -define(EXDL_SVG_HRL,      ?_ENUM_EXDL_RTF ?REF_ALIGN).
  -include("exdl_svg_fp.hrl").
  -define(EXDL_THREAD_HRL,   ?_ENUM_EXDL_SVG ?REF_ALIGN).
  -include("exdl_thread_fp.hrl").
  -define(EXDL_TTF_HRL,      ?_ENUM_EXDL_THREAD ?REF_ALIGN).
  -include("exdl_ttf_fp.hrl").
  -define(EXDL_UTIL_HRL,     ?_ENUM_EXDL_TTF ?REF_ALIGN).
  -include("exdl_util_fp.hrl").
  -define(EXDL_VIDEO_HRL,    ?_ENUM_EXDL_UTIL ?REF_ALIGN).
  -include("exdl_video_fp.hrl").
  -define(EXDL_VNC_HRL,      ?_ENUM_EXDL_VIDEO ?REF_ALIGN).
  -include("exdl_vnc_fp.hrl").

  -define(EXDL_SFML_HRL,     ?_ENUM_EXDL_VNC ?REF_ALIGN).
  -include("exdl_sfml_fp.hrl").

  -define(EXDL_AL_HRL,       ?_ENUM_EXDL_SFML ?REF_ALIGN).
  -include("exdl_al_fp.hrl").
  -define(EXDL_ALC_HRL,      ?_ENUM_EXDL_AL ?REF_ALIGN).
  -include("exdl_alc_fp.hrl").
  -define(EXDL_ALUT_HRL,     ?_ENUM_EXDL_ALC ?REF_ALIGN).
  -include("exdl_alut_fp.hrl").

  -define(EXDL_GL_HRL,       ?_ENUM_EXDL_ALUT ?REF_ALIGN).
  -include("exdl_gl_fp.hrl").
  -define(EXDL_GLU_HRL,      ?_ENUM_EXDL_GL ?REF_ALIGN).
  -include("exdl_glu_fp.hrl").
  -define(EXDL_GLUT_HRL,     ?_ENUM_EXDL_GLU ?REF_ALIGN).
  -include("exdl_glut_fp.hrl").
  -define(EXDL_GLXEXT_HRL,   ?_ENUM_EXDL_GLUT ?REF_ALIGN).
  -include("exdl_glxext_fp.hrl").

  -define(EXDL_DE_HRL,       ?_ENUM_EXDL_GLXEXT ?REF_ALIGN).
  -include("exdl_de_fp.hrl").
  -define(EXDL_PAL_HRL,      ?_ENUM_EXDL_DE ?REF_ALIGN).
  -include("exdl_pal_fp.hrl").

  -define(EXDL_EXTENSION,    ?_ENUM_EXDL_PAL ?REF_ALIGN).

  -define(EXDL_ALEXT_HRL,    ?EXDL_EXTENSION ?REF_ALIGN).
  -include("exdl_alext_fp.hrl").
  -define(EXDL_GLEXT_HRL,    ?_ENUM_EXDL_ALEXT ?REF_ALIGN).
  -include("exdl_glext_fp.hrl").

  -define(MAX_FUNCTIONS_HRL, ?_ENUM_EXDL_GLEXT ?REF_ALIGN).

-endif.
