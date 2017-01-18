%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_rtf_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_RTF).
  -define(RTF_Linked_Version,  ?EXDL_RTF_HRL        + 0).
  -define(RTF_CreateContext,   ?RTF_Linked_Version  + 1).
  -define(RTF_Load,            ?RTF_CreateContext   + 1).
  -define(RTF_Load_RW,         ?RTF_Load            + 1).
  -define(RTF_GetTitle,        ?RTF_Load_RW         + 1).
  -define(RTF_GetSubject,      ?RTF_GetTitle        + 1).
  -define(RTF_GetAuthor,       ?RTF_GetSubject      + 1).
  -define(RTF_GetHeight,       ?RTF_GetAuthor       + 1).
  -define(RTF_Render,          ?RTF_GetHeight       + 1).
  -define(RTF_FreeContext,     ?RTF_Render          + 1).

  %% EXDL_RTF C SRC ENUM CHECK
  -define(_ENUM_EXDL_RTF,      ?RTF_FreeContext     + 1).

-else. % COMPILE_RTF

  -define(_ENUM_EXDL_RTF,      ?EXDL_RTF_HRL).

-endif. % COMPILE_RTF
