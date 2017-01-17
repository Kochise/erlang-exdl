/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_net_fp.h,v 1.0 2008/12/25 09:17:43 kochise Exp $
 */

/* File included in "exdl_wrapper.c" */

#ifdef COMPILE_NET

{ SDLNet_Linked_Version_ENUM,      "SDLNet_Linked_Version",      enet_linked_Version },
{ SDLNet_Init_ENUM,                "SDLNet_Init",                enet_init },
{ SDLNet_Quit_ENUM,                "SDLNet_Quit",                enet_quit },
{ SDLNet_ResolveHost_ENUM,         "SDLNet_ResolveHost",         enet_resolveHost },
{ SDLNet_ResolveIP_ENUM,           "SDLNet_ResolveIP",           enet_resolveIP },
{ SDLNet_TCP_Open_ENUM,            "SDLNet_TCP_Open",            enet_tcpOpen },
{ SDLNet_TCP_Accept_ENUM,          "SDLNet_TCP_Accept",          enet_tcpAccept },
{ SDLNet_TCP_GetPeerAddress_ENUM,  "SDLNet_TCP_GetPeerAddress",  enet_tcpGetPeerAddress },
{ SDLNet_TCP_Send_ENUM,            "SDLNet_TCP_Send",            enet_tcpSend },
{ SDLNet_TCP_Recv_ENUM,            "SDLNet_TCP_Recv",            enet_tcpRecv },
{ SDLNet_TCP_Close_ENUM,           "SDLNet_TCP_Close",           enet_tcpClose },
{ SDLNet_AllocPacket_ENUM,         "SDLNet_AllocPacket",         enet_allocPacket },
{ SDLNet_ResizePacket_ENUM,        "SDLNet_ResizePacket",        enet_resizePacket },
{ SDLNet_FreePacket_ENUM,          "SDLNet_FreePacket",          enet_freePacket },
{ SDLNet_AllocPacketV_ENUM,        "SDLNet_AllocPacketV",        enet_allocPacketV },
{ SDLNet_FreePacketV_ENUM,         "SDLNet_FreePacketV",         enet_freePacketV },
{ SDLNet_UDP_Open_ENUM,            "SDLNet_UDP_Open",            enet_udpOpen },
{ SDLNet_UDP_Bind_ENUM,            "SDLNet_UDP_Bind",            enet_udpBind },
{ SDLNet_UDP_Unbind_ENUM,          "SDLNet_UDP_Unbind",          enet_udpUnbind },
{ SDLNet_UDP_GetPeerAddress_ENUM,  "SDLNet_UDP_GetPeerAddress",  enet_udpGetPeerAddress },
{ SDLNet_UDP_SendV_ENUM,           "SDLNet_UDP_SendV",           enet_udpSendV },
{ SDLNet_UDP_Send_ENUM,            "SDLNet_UDP_Send",            enet_udpSend },
{ SDLNet_UDP_RecvV_ENUM,           "SDLNet_UDP_RecvV",           enet_udpRecvV },
{ SDLNet_UDP_Recv_ENUM,            "SDLNet_UDP_Recv",            enet_udpRecv },
{ SDLNet_UDP_Close_ENUM,           "SDLNet_UDP_Close",           enet_udpClose },
{ SDLNet_AllocSocketSet_ENUM,      "SDLNet_AllocSocketSet",      enet_allocSocketSet },
{ SDLNet_AddSocket_ENUM,           "SDLNet_AddSocket",           enet_addSocket },
{ SDLNet_DelSocket_ENUM,           "SDLNet_DelSocket",           enet_delSocket },
{ SDLNet_CheckSockets_ENUM,        "SDLNet_CheckSockets",        enet_checkSockets },
{ SDLNet_FreeSocketSet_ENUM,       "SDLNet_FreeSocketSet",       enet_freeSocketSet },
{ SDLNet_Write16_ENUM,             "SDLNet_Write16",             enet_write16 },
{ SDLNet_Write32_ENUM,             "SDLNet_Write32",             enet_write32 },
{ SDLNet_Read16_ENUM,              "SDLNet_Read16",              enet_read16 },
{ SDLNet_Read32_ENUM,              "SDLNet_Read32",              enet_read32 },

#endif // COMPILE_NET
