%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_rtf.hrl,v 1.0 2008/12/30 07:50:46 kochise Exp $
%%

%%%----------------------------------------------------------------------
%%% File    : exdl_rtf.hrl
%%% Author  : David Koch <david.koch@libertysurf.fr>
%%% Purpose : defines from SDL_rtf.h
%%% Created : 30 Dec 2008 by David Koch <david.koch@libertysurf.fr>
%%%----------------------------------------------------------------------

%% RTF_FontFamily

-define(RTF_FontDefault,   0). % Unknown or default font
-define(RTF_FontRoman,     1). % Proportionally spaced serif fonts, e.g. Times New Roman, Palatino
-define(RTF_FontSwiss,     2). % Proportionally spaced sans serif fonts, e.g. Arial
-define(RTF_FontModern,    3). % Fixed pitch serif and sans serif fonts, e.g. Courier New, Pica
-define(RTF_FontScript,    4). % Script fonts, e.g. Cursive
-define(RTF_FontDecor,     5). % Decorative fonts, e.g. Zapf Chancery
-define(RTF_FontTech,      6). % Technical, symbol, and math fonts, e.g. Symbol
-define(RTF_FontBidi,      7). % Bidirectional fonts, like Arabic or Hebrew

%% RTF_FontStyle

-define(RTF_FontNormal,    16#00).
-define(RTF_FontBold,      16#01).
-define(RTF_FontItalic,    16#02).
-define(RTF_FontUnderline, 16#04).

