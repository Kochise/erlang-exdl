%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_vnc_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_VNC).
  -define(vncConnect,             ?EXDL_VNC_HRL           + 0).
  -define(vncBlitFramebuffer,     ?vncConnect             + 1).
  -define(vncBlitCursor,          ?vncBlitFramebuffer     + 1).
  -define(vncCursorHotspot,       ?vncBlitCursor          + 1).
  -define(vncClientKeyevent,      ?vncCursorHotspot       + 1).
  -define(vncClientPointerevent,  ?vncClientKeyevent      + 1).
  -define(vncDisconnect,          ?vncClientPointerevent  + 1).

  %% EXDL_VNC C SRC ENUM CHECK
  -define(_ENUM_EXDL_VNC,         ?vncDisconnect          + 1).

-else. % COMPILE_VNC

  -define(_ENUM_EXDL_VNC,         ?EXDL_VNC_HRL).

-endif. % COMPILE_VNC
