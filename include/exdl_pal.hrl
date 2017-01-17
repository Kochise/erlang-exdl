%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_pal.hrl,v 1.0 2008/12/30 07:49:22 kochise Exp $
%%

#include <ode/common.h>

#define M_PI      REAL(3.1415926535897932384626433832795029)
#define M_SQRT1_2 REAL(0.7071067811865475244008443621048490)

#include <ode/odeinit.h>
#include <ode/contact.h>
#include <ode/error.h>
#include <ode/memory.h>
#include <ode/odemath.h>
#include <ode/matrix.h>
#include <ode/timer.h>
#include <ode/rotation.h>
#include <ode/mass.h>
#include <ode/misc.h>
#include <ode/objects.h>
#include <ode/odecpp.h>
#include <ode/collision_space.h>
#include <ode/collision.h>
#include <ode/odecpp_collision.h>
#include <ode/export-dif.h>












%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




-define(ALUT_API_MAJOR_VERSION,               1).
-define(ALUT_API_MINOR_VERSION,               1).

-define(ALUT_WAVEFORM_SINE,                   16#100).
-define(ALUT_WAVEFORM_SQUARE,                 16#101).
-define(ALUT_WAVEFORM_SAWTOOTH,               16#102).
-define(ALUT_WAVEFORM_WHITENOISE,             16#103).
-define(ALUT_WAVEFORM_IMPULSE,                16#104).

-define(ALUT_ERROR_NO_ERROR,                  0).
-define(ALUT_ERROR_OUT_OF_MEMORY,             16#200).
-define(ALUT_ERROR_INVALID_ENUM,              16#201).
-define(ALUT_ERROR_INVALID_VALUE,             16#202).
-define(ALUT_ERROR_INVALID_OPERATION,         16#203).
-define(ALUT_ERROR_NO_CURRENT_CONTEXT,        16#204).
-define(ALUT_ERROR_AL_ERROR_ON_ENTRY,         16#205).
-define(ALUT_ERROR_ALC_ERROR_ON_ENTRY,        16#206).
-define(ALUT_ERROR_OPEN_DEVICE,               16#207).
-define(ALUT_ERROR_CLOSE_DEVICE,              16#208).
-define(ALUT_ERROR_CREATE_CONTEXT,            16#209).
-define(ALUT_ERROR_MAKE_CONTEXT_CURRENT,      16#20A).
-define(ALUT_ERROR_DESTROY_CONTEXT,           16#20B).
-define(ALUT_ERROR_GEN_BUFFERS,               16#20C).
-define(ALUT_ERROR_BUFFER_DATA,               16#20D).
-define(ALUT_ERROR_IO_ERROR,                  16#20E).
-define(ALUT_ERROR_UNSUPPORTED_FILE_TYPE,     16#20F).
-define(ALUT_ERROR_UNSUPPORTED_FILE_SUBTYPE,  16#210).
-define(ALUT_ERROR_CORRUPT_OR_TRUNCATED_DATA, 16#211).

-define(ALUT_LOADER_BUFFER,                   16#300).
-define(ALUT_LOADER_MEMORY,                   16#301).
