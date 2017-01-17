%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_net_fp.hrl,v 1.1 2008/11/06 07:49:22 kochise Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_NET).

  -define(SDLNet_Linked_Version,      ?EXDL_NET_HRL               + 0).
  -define(SDLNet_Init,                ?SDLNet_Linked_Version      + 1).
  -define(SDLNet_Quit,                ?SDLNet_Init                + 1).
  -define(SDLNet_ResolveHost,         ?SDLNet_Quit                + 1).
  -define(SDLNet_ResolveIP,           ?SDLNet_ResolveHost         + 1).
  -define(SDLNet_TCP_Open,            ?SDLNet_ResolveIP           + 1).
  -define(SDLNet_TCP_Accept,          ?SDLNet_TCP_Open            + 1).
  -define(SDLNet_TCP_GetPeerAddress,  ?SDLNet_TCP_Accept          + 1).
  -define(SDLNet_TCP_Send,            ?SDLNet_TCP_GetPeerAddress  + 1).
  -define(SDLNet_TCP_Recv,            ?SDLNet_TCP_Send            + 1).
  -define(SDLNet_TCP_Close,           ?SDLNet_TCP_Recv            + 1).
  -define(SDLNet_AllocPacket,         ?SDLNet_TCP_Close           + 1).
  -define(SDLNet_ResizePacket,        ?SDLNet_AllocPacket         + 1).
  -define(SDLNet_FreePacket,          ?SDLNet_ResizePacket        + 1).
  -define(SDLNet_AllocPacketV,        ?SDLNet_FreePacket          + 1).
  -define(SDLNet_FreePacketV,         ?SDLNet_AllocPacketV        + 1).
  -define(SDLNet_UDP_Open,            ?SDLNet_FreePacketV         + 1).
  -define(SDLNet_UDP_Bind,            ?SDLNet_UDP_Open            + 1).
  -define(SDLNet_UDP_Unbind,          ?SDLNet_UDP_Bind            + 1).
  -define(SDLNet_UDP_GetPeerAddress,  ?SDLNet_UDP_Unbind          + 1).
  -define(SDLNet_UDP_SendV,           ?SDLNet_UDP_GetPeerAddress  + 1).
  -define(SDLNet_UDP_Send,            ?SDLNet_UDP_SendV           + 1).
  -define(SDLNet_UDP_RecvV,           ?SDLNet_UDP_Send            + 1).
  -define(SDLNet_UDP_Recv,            ?SDLNet_UDP_RecvV           + 1).
  -define(SDLNet_UDP_Close,           ?SDLNet_UDP_Recv            + 1).
  -define(SDLNet_AllocSocketSet,      ?SDLNet_UDP_Close           + 1).
  -define(SDLNet_AddSocket,           ?SDLNet_AllocSocketSet      + 1).
  -define(SDLNet_DelSocket,           ?SDLNet_AddSocket           + 1).
  -define(SDLNet_CheckSockets,        ?SDLNet_DelSocket           + 1).
  -define(SDLNet_FreeSocketSet,       ?SDLNet_CheckSockets        + 1).
  -define(SDLNet_Write16,             ?SDLNet_FreeSocketSet       + 1).
  -define(SDLNet_Write32,             ?SDLNet_Write16             + 1).
  -define(SDLNet_Read16,              ?SDLNet_Write32             + 1).
  -define(SDLNet_Read32,              ?SDLNet_Read16              + 1).

  %% EXDL_NET C SRC ENUM CHECK
  -define(_ENUM_EXDL_NET,             ?SDLNet_Read32              + 1).

-else. % COMPILE_NET

  -define(_ENUM_EXDL_NET,             ?EXDL_NET_HRL).

-endif. % COMPILE_NET
