%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_net.hrl,v 1.0 2008/12/30 07:50:46 kochise Exp $
%%

%%%----------------------------------------------------------------------
%%% File    : exdl_net.hrl
%%% Author  : David Koch <david.koch@libertysurf.fr>
%%% Purpose : defines from SDL_net.h
%%% Created : 30 Dec 2008 by David Koch <david.koch@libertysurf.fr>
%%%----------------------------------------------------------------------

-record( ipaddress
       , { host %% Uint32  32-bit IPv4 host address
	       , port %% Uint16  16-bit protocol port
         }
       ).   

-define(INADDR_ANY,       16#00000000).
-define(INADDR_NONE,      16#FFFFFFFF).
-define(INADDR_BROADCAST, 16#FFFFFFFF).

-define(SDLNET_MAX_UDPCHANNELS,  32). % The maximum channels on a a UDP socket
-define(SDLNET_MAX_UDPADDRESSES, 4).  % The maximum addresses bound to a single UDP socket channel

-record( udppacket
       , { channel %% int        The src/dst channel of the packet
         , data    %% Uint8*     The packet data
         , len     %% int        The length of the packet data
         , maxlen  %% int        The size of the data buffer
         , status  %% int        packet status after sending
         , address %% IPaddress  The source/dest address of an incoming/outgoing packet
         }
       ).   

-record( gensocket
       , { ready   %% int
         }
       ).   
