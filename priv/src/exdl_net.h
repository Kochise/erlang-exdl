/*  
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_net.h,v 1.0 2008/12/30 07:49:22 kochise Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_NET

  enum
  { SDLNet_Linked_Version_ENUM = EXDL_NET_H
  , SDLNet_Init_ENUM
  , SDLNet_Quit_ENUM
  , SDLNet_ResolveHost_ENUM
  , SDLNet_ResolveIP_ENUM
  , SDLNet_TCP_Open_ENUM
  , SDLNet_TCP_Accept_ENUM
  , SDLNet_TCP_GetPeerAddress_ENUM
  , SDLNet_TCP_Send_ENUM
  , SDLNet_TCP_Recv_ENUM
  , SDLNet_TCP_Close_ENUM
  , SDLNet_AllocPacket_ENUM
  , SDLNet_ResizePacket_ENUM
  , SDLNet_FreePacket_ENUM
  , SDLNet_AllocPacketV_ENUM
  , SDLNet_FreePacketV_ENUM
  , SDLNet_UDP_Open_ENUM
  , SDLNet_UDP_Bind_ENUM
  , SDLNet_UDP_Unbind_ENUM
  , SDLNet_UDP_GetPeerAddress_ENUM
  , SDLNet_UDP_SendV_ENUM
  , SDLNet_UDP_Send_ENUM
  , SDLNet_UDP_RecvV_ENUM
  , SDLNet_UDP_Recv_ENUM
  , SDLNet_UDP_Close_ENUM
  , SDLNet_AllocSocketSet_ENUM
  , SDLNet_AddSocket_ENUM
  , SDLNet_DelSocket_ENUM
  , SDLNet_CheckSockets_ENUM
  , SDLNet_FreeSocketSet_ENUM
  , SDLNet_Write16_ENUM
  , SDLNet_Write32_ENUM
  , SDLNet_Read16_ENUM
  , SDLNet_Read32_ENUM
  , _ENUM_EXDL_NET
  };


EXDL_API(enet_linked_Version);
EXDL_API(enet_init);
EXDL_API(enet_quit);
EXDL_API(enet_resolveHost);
EXDL_API(enet_resolveIP);
EXDL_API(enet_tcpOpen);
EXDL_API(enet_tcpAccept);
EXDL_API(enet_tcpGetPeerAddress);
EXDL_API(enet_tcpSend);
EXDL_API(enet_tcpRecv);
EXDL_API(enet_tcpClose);
EXDL_API(enet_allocPacket);
EXDL_API(enet_resizePacket);
EXDL_API(enet_freePacket);
EXDL_API(enet_allocPacketV);
EXDL_API(enet_freePacketV);
EXDL_API(enet_udpOpen);
EXDL_API(enet_udpBind);
EXDL_API(enet_udpUnbind);
EXDL_API(enet_udpGetPeerAddress);
EXDL_API(enet_udpSendV);
EXDL_API(enet_udpSend);
EXDL_API(enet_udpRecvV);
EXDL_API(enet_udpRecv);
EXDL_API(enet_udpClose);
EXDL_API(enet_allocSocketSet);
EXDL_API(enet_addSocket);
EXDL_API(enet_delSocket);
EXDL_API(enet_checkSockets);
EXDL_API(enet_freeSocketSet);
EXDL_API(enet_write16);
EXDL_API(enet_write32);
EXDL_API(enet_read16);
EXDL_API(enet_read32);

#else // COMPILE_NET

  enum { _ENUM_EXDL_NET = EXDL_NET_H };

#endif // COMPILE_NET

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
