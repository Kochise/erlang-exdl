/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_net.c,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

#include "exdl.h"

#ifdef COMPILE_NET

EXDL_API(enet_linked_Version)
{
  /* const SDL_version* SDLNet_Linked_Version(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(const SDL_version*)

    SDLNet_Linked_Version
    (
    );

  THROW_POINTER()
}

EXDL_API(enet_init)
{
  /* int SDLNet_Init(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    SDLNet_Init
    (
    );

  THROW_RESULT(int)
}

EXDL_API(enet_quit)
{
  /* void SDLNet_Quit(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  SDLNet_Quit
  (
  );
}

EXDL_API(enet_resolveHost)
{
  /* int SDLNet_ResolveHost(IPaddress* address, const char* host, Uint16 port) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(IPaddress*,  address)
    STACK_FMT_LPTR(char*,       host)
    STACK_FMT_DATA(Uint16,      port)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_ResolveHost
    ( STACK_GET_DATA(address)
    , STACK_GET_DATA(host)
    , STACK_GET_DATA(port)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_resolveIP)
{
  /* const char* SDLNet_ResolveIP(IPaddress* ip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(IPaddress, ip[])
  STACK_FMT_END()

  CATCH_RESULT(const char*)

    SDLNet_ResolveIP
    ( STACK_GET_ADDR(ip)
    );

  THROW_STRING()
}

EXDL_API(enet_tcpOpen)
{
  /* TCPsocket SDLNet_TCP_Open(IPaddress* ip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(IPaddress, ip[])
  STACK_FMT_END()

  CATCH_RESULT(TCPsocket)

    SDLNet_TCP_Open
    ( STACK_GET_ADDR(ip)
    );

  THROW_RESULT(TCPsocket)
}

EXDL_API(enet_tcpAccept)
{
  /* TCPsocket SDLNet_TCP_Accept(TCPsocket server) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TCPsocket, server)
  STACK_FMT_END()

  CATCH_RESULT(TCPsocket)

    SDLNet_TCP_Accept
    ( STACK_GET_DATA(server)
    );

  THROW_RESULT(TCPsocket)
}

EXDL_API(enet_tcpGetPeerAddress)
{
  /* IPaddress* SDLNet_TCP_GetPeerAddress(TCPsocket sock) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TCPsocket, sock)
  STACK_FMT_END()

  CATCH_RESULT(IPaddress*)

    SDLNet_TCP_GetPeerAddress
    ( STACK_GET_DATA(sock)
    );

  THROW_POINTER()
}

EXDL_API(enet_tcpSend)
{
  /* int SDLNet_TCP_Send(TCPsocket sock, const void* data, int len) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TCPsocket,   sock)
    STACK_FMT_LPTR(void*,       data)
    STACK_FMT_DATA(int,         len)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_TCP_Send
    ( STACK_GET_DATA(sock)
    , STACK_GET_DATA(data)
    , STACK_GET_DATA(len)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_tcpRecv)
{
  /* int SDLNet_TCP_Recv(TCPsocket sock, void* data, int maxlen) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TCPsocket, sock)
    STACK_FMT_LPTR(void*,     data)
    STACK_FMT_DATA(int,       maxlen)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_TCP_Recv
    ( STACK_GET_DATA(sock)
    , STACK_GET_DATA(data)
    , STACK_GET_DATA(maxlen)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_tcpClose)
{
  /* void SDLNet_TCP_Close(TCPsocket sock) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TCPsocket, sock)
  STACK_FMT_END()

    SDLNet_TCP_Close
    ( STACK_GET_DATA(sock)
    );
}

EXDL_API(enet_allocPacket)
{
  /* UDPpacket* SDLNet_AllocPacket(int size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, size)
  STACK_FMT_END()

  CATCH_RESULT(UDPpacket*)

    SDLNet_AllocPacket
    ( STACK_GET_DATA(size)
    );

  THROW_POINTER()
}

EXDL_API(enet_resizePacket)
{
  /* int SDLNet_ResizePacket(UDPpacket* packet, int newsize) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(UDPpacket*, packet)
    STACK_FMT_DATA(int,        newsize)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_ResizePacket
    ( STACK_GET_DATA(packet)
    , STACK_GET_DATA(newsize)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_freePacket)
{
  /* void SDLNet_FreePacket(UDPpacket* packet) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPpacket, packet[])
  STACK_FMT_END()

    SDLNet_FreePacket
    ( STACK_GET_ADDR(packet)
    );
}

EXDL_API(enet_allocPacketV)
{
  /* UDPpacket** SDLNet_AllocPacketV(int howmany, int size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, howmany)
    STACK_FMT_DATA(int, size)
  STACK_FMT_END()

  CATCH_RESULT(UDPpacket**)

    SDLNet_AllocPacketV
    ( STACK_GET_DATA(howmany)
    , STACK_GET_DATA(size)
    );

  THROW_POINTER()
}

EXDL_API(enet_freePacketV)
{
  /* void SDLNet_FreePacketV(UDPpacket** packetV) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPpacket , packetV[])
  STACK_FMT_END()

    SDLNet_FreePacketV
    ( STACK_GET_ADDR(packetV)
    );
}

EXDL_API(enet_udpOpen)
{
  /* UDPsocket SDLNet_UDP_Open(Uint16 port) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint16, port)
  STACK_FMT_END()

  CATCH_RESULT(UDPsocket)

    SDLNet_UDP_Open
    ( STACK_GET_DATA(port)
    );

  THROW_RESULT(UDPsocket)
}

EXDL_API(enet_udpBind)
{
  /* int SDLNet_UDP_Bind(UDPsocket sock, int channel, IPaddress* address) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket,  sock)
    STACK_FMT_DATA(int,        channel)
    STACK_FMT_DATA(IPaddress,  address[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_UDP_Bind
    ( STACK_GET_DATA(sock)
    , STACK_GET_DATA(channel)
    , STACK_GET_ADDR(address)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_udpUnbind)
{
  /* void SDLNet_UDP_Unbind(UDPsocket sock, int channel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket, sock)
    STACK_FMT_DATA(int,       channel)
  STACK_FMT_END()

    SDLNet_UDP_Unbind
    ( STACK_GET_DATA(sock)
    , STACK_GET_DATA(channel)
    );
}

EXDL_API(enet_udpGetPeerAddress)
{
  /* IPaddress* SDLNet_UDP_GetPeerAddress(UDPsocket sock, int channel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket, sock)
    STACK_FMT_DATA(int,       channel)
  STACK_FMT_END()

  CATCH_RESULT(IPaddress*)

    SDLNet_UDP_GetPeerAddress
    ( STACK_GET_DATA(sock)
    , STACK_GET_DATA(channel)
    );

  THROW_POINTER()
}

EXDL_API(enet_udpSendV)
{
  /* int SDLNet_UDP_SendV(UDPsocket sock, UDPpacket** packets, int npackets) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket,   sock)
    STACK_FMT_LPTR(UDPpacket**, packets)
    STACK_FMT_DATA(int,         npackets)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_UDP_SendV
    ( STACK_GET_DATA(sock)
    , STACK_GET_DATA(packets)
    , STACK_GET_DATA(npackets)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_udpSend)
{
  /* int SDLNet_UDP_Send(UDPsocket sock, int channel, UDPpacket* packet) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket,  sock)
    STACK_FMT_DATA(int,        channel)
    STACK_FMT_DATA(UDPpacket,  packet[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_UDP_Send
    ( STACK_GET_DATA(sock)
    , STACK_GET_DATA(channel)
    , STACK_GET_ADDR(packet)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_udpRecvV)
{
  /* int SDLNet_UDP_RecvV(UDPsocket sock, UDPpacket** packets) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket,   sock)
    STACK_FMT_DATA(UDPpacket ,  packets[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_UDP_RecvV
    ( STACK_GET_DATA(sock)
    , STACK_GET_ADDR(packets)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_udpRecv)
{
  /* int SDLNet_UDP_Recv(UDPsocket sock, UDPpacket* packet) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket,  sock)
    STACK_FMT_DATA(UDPpacket,  packet[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_UDP_Recv
    ( STACK_GET_DATA(sock)
    , STACK_GET_ADDR(packet)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_udpClose)
{
  /* void SDLNet_UDP_Close(UDPsocket sock) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket, sock)
  STACK_FMT_END()

    SDLNet_UDP_Close
    ( STACK_GET_DATA(sock)
    );
}

EXDL_API(enet_allocSocketSet)
{
  /* SDLNet_SocketSet SDLNet_AllocSocketSet(int maxsockets) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, maxsockets)
  STACK_FMT_END()

  CATCH_RESULT(SDLNet_SocketSet)

    SDLNet_AllocSocketSet
    ( STACK_GET_DATA(maxsockets)
    );

  THROW_RESULT(SDLNet_SocketSet)
}

EXDL_API(enet_addSocket)
{
  /* int SDLNet_AddSocket(SDLNet_SocketSet set, SDLNet_GenericSocket sock) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDLNet_SocketSet,     set)
    STACK_FMT_DATA(SDLNet_GenericSocket, sock)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_AddSocket
    ( STACK_GET_DATA(set)
    , STACK_GET_DATA(sock)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_delSocket)
{
  /* int SDLNet_DelSocket(SDLNet_SocketSet set, SDLNet_GenericSocket sock) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDLNet_SocketSet,     set)
    STACK_FMT_DATA(SDLNet_GenericSocket, sock)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_DelSocket
    ( STACK_GET_DATA(set)
    , STACK_GET_DATA(sock)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_checkSockets)
{
  /* int SDLNet_CheckSockets(SDLNet_SocketSet set, Uint32 timeout) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDLNet_SocketSet, set)
    STACK_FMT_DATA(Uint32,           timeout)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_CheckSockets
    ( STACK_GET_DATA(set)
    , STACK_GET_DATA(timeout)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_freeSocketSet)
{
  /* void SDLNet_FreeSocketSet(SDLNet_SocketSet set) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(SDLNet_SocketSet, set)
  STACK_FMT_END()

    SDLNet_FreeSocketSet
    ( STACK_GET_DATA(set)
    );
}

EXDL_API(enet_write16)
{
  /* void SDLNet_Write16(Uint16 value, void* area) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint16, value)
    STACK_FMT_DATA(void,   area[])
  STACK_FMT_END()

    SDLNet_Write16
    ( STACK_GET_DATA(value)
    , STACK_GET_ADDR(area)
    );
}

EXDL_API(enet_write32)
{
  /* void SDLNet_Write32(Uint32 value, void* area) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint32, value)
    STACK_FMT_DATA(void,   area[])
  STACK_FMT_END()

    SDLNet_Write32
    ( STACK_GET_DATA(value)
    , STACK_GET_ADDR(area)
    );
}

EXDL_API(enet_read16)
{
  /* Uint16 SDLNet_Read16(void* area) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(void, area[])
  STACK_FMT_END()

  CATCH_RESULT(Uint16)

    SDLNet_Read16
    ( STACK_GET_ADDR(area)
    );

  THROW_RESULT(Uint16)
}

EXDL_API(enet_read32)
{
  /* Uint32 SDLNet_Read32(void* area) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(void, area[])
  STACK_FMT_END()

  CATCH_RESULT(Uint32)

    SDLNet_Read32
    ( STACK_GET_ADDR(area)
    );

  THROW_RESULT(Uint32)
}

#endif // COMPILE_NET
