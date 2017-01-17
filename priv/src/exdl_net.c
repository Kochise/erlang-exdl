/*
 *  Copyright (c) 2008 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_net.c,v 1.0 2008/12/29 14:45:38 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_NET

#include <string.h>
#include <stdlib.h>

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

  /* exp : Initialize the network API. This must be called before using other */
  /*       functions in this library. SDL must be initialized before this call. */
  /* inp :  */
  /* ret : 0 on success, -1 on errors */

  CATCH_RESULT(int)

    SDLNet_Init
    (
    );

  THROW_RESULT(int)
}

EXDL_API(enet_quit)
{
  /* void SDLNet_Quit(void) */

  /* exp : Shutdown and cleanup the network API. After calling this all sockets */
  /*       are closed, and the SDL net functions should not be used. You may, of */
  /*       course, use SDLNet Init to use the functionality again. */
  /* inp :  */
  /* ret :  */

  SDLNet_Quit
  (
  );
}

EXDL_API(enet_resolveHost)
{
  /* int SDLNet_ResolveHost(IPaddress* address, const char* host, Uint16 port) */

  /* exp : Resolve the string host, and fill in the IPaddress pointed to by address */
  /*       with the resolved IP and the port number passed in through port. This is */
  /*       the best way to fill in the IPaddress struct for later use. This function */
  /*       does not actually open any sockets, it is used to prepare the arguments for */
  /*       the socket opening functions. */
  /*     > this function will put the host and port into Network Byte Order into the */
  /*       address fields, so make sure you pass in the data in your hosts byte order. */
  /*       (normally not an issue) */
  /* inp : address = This points to the IPaddress that will be filled in. It doesn’t */
  /*                 need to be set before calling this, but it must be allocated in */
  /*                 memory. */
  /* inp : host =    For connecting to a server, this is the hostname or IP in a string. */
  /*                 For becoming a server, this is NULL. If you do use NULL, all */
  /*                 network interfaces would be listened to for incoming connections, */
  /*                 using the INADDR_ANY address. */
  /* inp : port =    For connecting to a server, this is the the servers listening port */
  /*                 number. For becoming a server, this is the port to listen on. */
  /*                 If you are just doing Domain Name Resolution functions, this can be 0. */
  /* ret : 0 on success. -1 on errors, plus address.host will be INADDR_NONE. */
  /*       An error would likely be that the address could not be resolved. */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(IPaddress*, address)
    STACK_FMT_DATA(Uint16,     port)
    STACK_FMT_DATA(char,       host[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_ResolveHost
    ( STACK_GET_DATA(address)
    , STACK_GET_ADDR(host)
    , STACK_GET_DATA(port)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_resolveIP)
{
  /* const char* SDLNet_ResolveIP(IPaddress* ip) */

  /* exp : Resolve the IPv4 numeric address in address->host, and return the hostname */
  /*       as a string. */
  /* inp : address = This points to the IPaddress that will be resolved to a host name. */
  /*                 The address->port is ignored. */
  /* ret : a valid char pointer (string) on success. the returned hostname will have */
  /*       host and domain, as in "host.domain.ext". NULL is returned on errors, such */
  /*       as when it’s not able to resolve the host name. The returned pointer is not */
  /*       to be freed. Each time you call this function the previous pointer’s data */
  /*       will change to the new value, so you may have to copy it into a local buffer */
  /*       to keep it around longer. */

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

  /* exp : Connect to the host and port contained in ip using a TCP connection. */
  /*       If the host is INADDR ANY, then only the port number is used, and a socket */
  /*       is created that can be used to later accept incoming TCP connections. */
  /* inp : ip = This points to the IPaddress that contains the resolved IP address and */
  /*            port number to use. */
  /* ret : a valid TCPsocket on success, which indicates a successful connection has */
  /*       been established, or a socket has been created that is valid to accept */
  /*       incoming TCP connections. NULL is returned on errors, such as when it’s not */
  /*       able to create a socket, or it cannot connect to host and/or port contained */
  /*       in ip. */

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

  /* exp : Accept an incoming connection on the server TCPsocket. Do not use this */
  /*       function on a connected socket. Server sockets are never connected to a */
  /*       remote host. What you get back is a new TCPsocket that is connected to the */
  /*       remote host. This is a non-blocking call, so if no connections are there */
  /*       to be accepted, you will get a NULL TCPsocket and the program will continue */
  /*       going. */
  /* inp : server = This is the server TCPsocket which was previously created by */
  /*                SDLNet_TCP_Open. */
  /* ret : a valid TCPsocket on success, which indicates a successful connection has */
  /*       been established. NULL is returned on errors, such as when it’s not able */
  /*       to create a socket, or it cannot finish connecting to the originating host */
  /*       and port. There also may not be a connection attempt in progress, so of */
  /*       course you cannot accept nothing, and you get a NULL in this case as well. */

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

  /* exp : Get the Peer’s (the other side of the connection, the remote side, not */
  /*       the local side) IP address and port number. */
  /* inp : sock = This is a valid TCPsocket. */
  /* ret : an IPaddress. NULL is returned on errors, or when sock is a server socket. */

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

  /* exp : Send data of length len over the socket sock. This routine is not used */
  /*       for server sockets. */
  /* inp : sock = This is a valid, connected, TCPsocket. */
  /* inp : data = This is a pointer to the data to send over sock. */
  /* inp : len  = This is the length (in bytes) if the data. */
  /* ret : the number of bytes sent. If the number returned is less than len, then */
  /*       an error occured, such as the client disconnecting. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TCPsocket, sock)
    STACK_FMT_DATA(void*,     data)
    STACK_FMT_DATA(int,       len)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_TCP_Send
    ( STACK_GET_DATA(sock)
    , (sd->next_bin == 0)
    ? STACK_GET_DATA(data)
    : (void*) sd->bin[0].base
    , STACK_GET_DATA(len)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_tcpRecv)
{
  /* int SDLNet_TCP_Recv(TCPsocket sock, void* data, int maxlen) */

  /* exp : Receive data of exactly length maxlen bytes from the socket sock, into the */
  /*       memory pointed to by data. This routine is not used for server sockets. */
  /*       Unless there is an error, or the connection is closed, the buffer will */
  /*       read maxlen bytes. If you read more than is sent from the other end, then */
  /*       it will wait until the full requested length is sent, or until the */
  /*       connection is closed from the other end. You may have to read 1 byte at a */
  /*       time for some applications, for instance, text applications where blocks */
  /*       of text are sent, but you want to read line by line. In that case you may */
  /*       want to find the newline characters yourself to break the lines up, */
  /*       instead of reading some inordinate amount of text which may contain many */
  /*       lines, or not even a full line of text. */
  /* inp : sock   = This is a valid, connected, TCPsocket. */
  /* inp : data   = This is a pointer to the buffer that receives the data from sock. */
  /* inp : maxlen = This is the maximum length (in bytes) that will be read into data. */
  /* ret : the number of bytes received. If the number returned is less than or */
  /*       equal to zero, then an error occured, or the remote host has closed */
  /*       the connection. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(TCPsocket, sock)
    STACK_FMT_DATA(void*,     data)
    STACK_FMT_DATA(int,       maxlen)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_TCP_Recv
    ( STACK_GET_DATA(sock)
    , (sd->next_bin == 0)
    ? STACK_GET_DATA(data)
    : (void*) sd->bin[0].base
    , STACK_GET_DATA(maxlen)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_tcpClose)
{
  /* void SDLNet_TCP_Close(TCPsocket sock) */

  /* exp : This shutsdown, disconnects, and closes the TCPsocket sock. After this, */
  /*       you can be assured that this socket is not in use anymore. You can reuse */
  /*       the sock variable after this to open a new connection with SDLNet TCP Open. */
  /*       Do not try to use any other functions on a closed socket, as it is now invalid. */
  /* inp : sock = A valid TCPsocket. This can be a server or client type socket. */
  /* ret : nothing, this always succeeds for all we need to know. */

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

  /* exp : Create (via malloc) a new UDPpacket with a data buffer of size bytes. */
  /*       The new packet should be freed using SDLNet FreePacket when you are  */
  /*       done using it. */
  /* inp : size = Size, in bytes, of the data buffer to be allocated in the new */
  /*              UDPpacket. Zero is invalid. */
  /* ret : a pointer to a new empty UDPpacket. NULL is returned on errors, such */
  /*       as out-of-memory. */

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

  /* exp : Resize a UDPpackets data buffer to size bytes. The old data buffer will */
  /*       not be retained, so the new buffer is invalid after this call. */
  /* inp : packet = A pointer to the UDPpacket to be resized. */
  /* inp : size   = The new desired size, in bytes, of the data buffer to be */
  /*                allocated in the UDPpacket. Zero is invalid. */
  /* ret : the new size of the data in the packet. If the number returned is less */
  /*       than what you asked for, that’s an error. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPpacket*, packet)
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

  /* exp : Free a UDPpacket from memory. Do not use this UDPpacket after this */
  /*       function is called on it. */
  /* inp : packet = A pointer to the UDPpacket to be freed from memory. */
  /* ret : nothing, this always succeeds. */

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

  /* exp : Create (via malloc) a vector of new UDPpackets, each with data buffers */
  /*       of size bytes. The new packet vector should be freed using SDLNet FreePacketV */
  /*       when you are done using it. The returned vector is one entry longer than */
  /*       requested, for a terminating NULL. */
  /* inp : howmany = The number of UDPpackets to allocate. */
  /* inp : size    = Size, in bytes, of the data buffers to be allocated in the */
  /*                 new UDPpackets. Zero is invalid. */
  /* ret : a pointer to a new empty UDPpacket vector. NULL is returned on errors, */
  /*       such as out-of-memory. */

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

  /* exp : Free a UDPpacket vector from memory. Do not use this UDPpacket vector, */
  /*       or any UDPpacket in it, after this function is called on it. */
  /* inp : packetV = A pointer to the UDPpacket vector to be freed from memory. */
  /* ret : nothing, this always succeeds. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPpacket**, packetV)
  STACK_FMT_END()

    SDLNet_FreePacketV
    ( STACK_GET_DATA(packetV)
    );
}

EXDL_API(enet_udpOpen)
{
  /* UDPsocket SDLNet_UDP_Open(Uint16 port) */

  /* exp : Open a socket to be used for UDP packet sending and/or receiving. */
  /*       If a non-zero port is given it will be used, otherwise any open port */
  /*       number will be used automatically. Unlike TCP sockets, this socket does */
  /*       not require a remote host IP to connect to, this is because UDP ports are */
  /*       never actually connected like TCP ports are. This socket is able to send */
  /*       and receive directly after this simple creation. */
  /* inp : port = This is the port number (in native byte order) on which to receive */
  /*              UDP packets. Most servers will want to use a known port number here */
  /*              so that clients can easily communicate with the server. This can */
  /*              also be zero, which then opens an anonymous unused port number, */
  /*              to most likely be used to send UDP packets from. */
  /* ret : a valid UDPsocket on success. NULL is returned on errors, such as when */
  /*       it’s not able to create a socket, or it cannot assign the non-zero port */
  /*       as requested. */

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

  /* exp : Bind an address to a channel on a socket. Incoming packets are only */
  /*       allowed from bound addresses for the socket channel. All outgoing packets */
  /*       on that channel, regardless of the packets internal address, will attempt */
  /*       to send once on each bound address on that channel. You may assign up to */
  /*       SDLNET MAX UDPADDRESSES to each channel. */
  /* inp : sock    = the UDPsocket on which to assign the address. */
  /* inp : channel = The channel to assign address to. This should be less than */
  /*                 SDLNET MAX UDPCHANNELS. If -1 is used, then the first unbound */
  /*                 channel will be used, this should only be used for incomming */
  /*                 packet filtering, as it will find the first channel with less */
  /*                 than SDLNET MAX UDPADDRESSES assigned to it and use that one. */
  /* inp : address = The resolved IPaddress to assign to the socket’s channel. The */
  /*                 host and port are both used. It is not helpful to bind 0.0.0.0 */
  /*                 to a channel. */
  /* ret : The channel number that was bound. -1 is returned on errors, such as  */
  /*       no free channels, or this channel has SDLNET MAX UDPADDRESSES already */
  /*       assigned to it, or you have used a channel higher or equal to */
  /*       SDLNET MAX UDPCHANNELS, or lower than -1. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket, sock)
    STACK_FMT_DATA(int,       channel)
    STACK_FMT_DATA(IPaddress, address[])
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

  /* exp : This removes all previously assigned (bound) addresses from a socket */
  /*       channel. After this you may bind new addresses to the socket channel. */
  /* inp : sock    = A valid UDPsocket to unbind addresses from. */
  /* inp : channel = The channel to unbind the addresses from in the UDPsocket. */
  /* ret : nothing, this always succeeds. */

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

  /* exp : Get the primary address assigned to this channel. Only the first bound */
  /*       address is returned. When channel is -1, get the port that this socket */
  /*       is bound to on the local computer, this only means something if you */
  /*       opened the socket with a specific port number. Do not free the returned */
  /*       IPaddress pointer. */
  /* inp : sock    = A valid UDPsocket that probably has an address assigned to the */
  /*                 channel. */
  /* inp : channel = The channel to get the primary address from in the socket. This */
  /*                 may also be -1 to get the port which this socket is bound to on */
  /*                 the local computer. */
  /* ret : a pointer to an IPaddress. NULL is returned for unbound channels and */
  /*       on any errors. */

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

  /* exp : Send npackets of packetV using the specified sock socket. Each packet */
  /*       is sent in the same way as in SDLNet UDP Send (see SDLNet UDP Send). */
  /*       Don’t forget to set the length of the packets in the len element of */
  /*       the packets you are sending! */
  /* inp : sock = A valid UDPsocket. */
  /* inp : packetV = The vector of packets to send. */
  /* inp : npackets = number of packets in the packetV vector to send. */
  /* ret : The number of destinations sent to that worked, for each packet in the */
  /*       vector, all summed up. 0 is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket,   sock)
    STACK_FMT_DATA(UDPpacket**, packets)
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

  /* exp : Send packet using the specified socket sock, use ing the specified channel */
  /*       or else the packet’s address. If channel is not -1 then the packet is sent */
  /*       to all the socket channels bound addresses. If socket sock’s channel is not */
  /*       bound to any destinations, then the packet is not sent at all! If the */
  /*       channel is -1, then the packet’s address is used as the destination. */
  /*     > Don’t forget to set the length of the packet in the len element of the */
  /*       packet you are sending! */
  /* inp : sock    = A valid UDPsocket. */
  /* inp : channel = what channel to send packet on. */
  /* inp : packet  = The packet to send. */
  /*               > the packet->channel will be set to the channel passed in to */
  /*                 this function. */
  /* ret : The number of destinations sent to that worked. 0 is returned on errors. */
  /*     > Note that since a channel can point to multiple destinations, there */
  /*       should be just as many packets sent, so dont assume it will always return */
  /*       1 on success. Unfortunately there’s no way to get the number of */
  /*       destinations bound to a channel, so either you have to remember the number */
  /*       bound, or just test for the zero return value indicating all channels failed. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket, sock)
    STACK_FMT_DATA(int,       channel)
    STACK_FMT_DATA(UDPpacket, packet[])
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

  /* exp : Receive into a packet vector on the specified socket sock. packetV is a */
  /*       NULL terminated array. Packets will be received until the NULL is */
  /*       reached, or there are none ready to be received. This call is otherwise */
  /*       the same as SDLNet UDP Recv (see SDLNet UDP Recv). */
  /* inp : sock   = A valid UDPsocket. */
  /* inp : packet = The packet to receive into. */
  /* ret : the number of packets received. 0 is returned when no packets are */
  /*       received. -1 is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket,   sock)
    STACK_FMT_DATA(UDPpacket**, packet)
  STACK_FMT_END()

  CATCH_RESULT(int)

    SDLNet_UDP_RecvV
    ( STACK_GET_DATA(sock)
    , STACK_GET_DATA(packet)
    );

  THROW_RESULT(int)
}

EXDL_API(enet_udpRecv)
{
  /* int SDLNet_UDP_Recv(UDPsocket sock, UDPpacket* packet) */

  /* exp : Receive a packet on the specified sock socket. The packet you pass in */
  /*       must have enough of a data size allocated for the incoming packet */
  /*       data to fit into. This means you should have knowledge of your size */
  /*       needs before trying to receive UDP packets. The packet will have it’s */
  /*       address set to the remote sender’s address. The socket’s channels are */
  /*       checked in highest to lowest order, so if an address is bound to multiple */
  /*       channels, the highest channel with the source address bound will be */
  /*       retreived before the lower bound channels. So, the packets channel will */
  /*       also be set to the highest numbered channel that has the remote address */
  /*       and port assigned to it. Otherwise the channel will -1, which you can */
  /*       filter out easily if you want to ignore unbound source address. */
  /*       Note that the local and remote channel numbers do not have to, and */
  /*       probably won’t, match, as they are only local settings, they are not */
  /*       sent in the packet. This is a non-blocking call, meaning if there’s no */
  /*       data ready to be received the function will return. */
  /* inp : sock   = A valid UDPsocket. */
  /* inp : packet = The packet to receive into. */
  /* ret : 1 is returned when a packet is received. 0 is returned when no packets */
  /*       are received. -1 is returned on errors. */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(UDPsocket, sock)
    STACK_FMT_DATA(UDPpacket, packet[])
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

  /* exp : Shutdown, close, and free a UDPsocket. Don’t use the UDPsocket after */
  /*       calling this, except to open a new one. */
  /* inp : sock = A valid UDPsocket to shutdown, close, and free. */
  /* ret : nothing, this always succeeds. */

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

  /* exp : Create a socket set that will be able to watch up to maxsockets number */
  /*       of sockets. The same socket set can be used for both UDP and TCP sockets. */
  /* inp : maxsockets = The maximum number of sockets you will want to watch. */
  /* ret : A new, empty, SDLNet SocketSet. NULL is returned on errors, such as */
  /*       out-ofmemory. */

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

  /* exp : Add a socket to a socket set that will be watched. */
  /* inp : set  = The socket set to add this socket to */
  /* inp : sock the socket to add to the socket set */
  /* ret : the number of sockets used in the set on success. -1 is returned on errors. */

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

  /* exp : Remove a socket from a socket set. Use this before closing a socket that */
  /*       you are watching with a socket set. This doesn’t close the socket. */
  /* inp : set  = The socket set to remove this socket from */
  /* inp : sock = the socket to remove from the socket set */
  /* ret : the number of sockets used in the set on success. -1 is returned on errors. */

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

  /* exp : Check all sockets in the socket set for activity. If a non-zero timeout */
  /*       is given then this function will wait for activity, or else it will wait */
  /*       for timeout milliseconds. */
  /*     > "activity" also includes disconnections and other errors, which would be */
  /*       determined by a failed read/write attempt. */
  /* inp : set     = The socket set to check */
  /* inp : timeout = The amount of time (in milliseconds). 0 means no waiting. */
  /*                 -1 means to wait over 49 days! (think about it) */
  /* ret : the number of sockets with activity. -1 is returned on errors, and you */
  /*       may not get a meaningful error message. -1 is also returned for an empty */
  /*       set (nothing to check). */

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

  /* exp : Free the socket set from memory. Do not reference the set after this */
  /*       call, except to allocate a new one. */
  /* inp : set = The socket set to free from memory */
  /* ret : nothing, this call always succeeds. */

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

  /* exp : Put the 16bit (a short on 32bit systems) value into the data buffer area */
  /*       in network byte order. This helps avoid byte order differences between */
  /*       two systems that are talking over the network. The value can be a signed */
  /*       number, the unsigned parameter type doesn’t affect the data. The area */
  /*       pointer need not be at the beginning of a buffer, but must have at least */
  /*       2 bytes of space left, including the byte currently pointed at. */
  /* inp : value = The 16bit number to put into the area buffer */
  /* inp : area  = The pointer into a data buffer, at which to put the number */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint16, value)
    STACK_FMT_DATA(void,   area[])
  STACK_FMT_END()

    SDLNet_Write16
    ( STACK_GET_DATA(value)
    , (sd->next_bin == 0)
    ? STACK_GET_ADDR(area)
    : (void*) sd->bin[0].base
    );
}

EXDL_API(enet_write32)
{
  /* void SDLNet_Write32(Uint32 value, void* area) */

  /* exp : Put the 32bit (a long on 32bit systems) value into the data buffer area */
  /*       in network byte order. This helps avoid byte order differences between */
  /*       two systems that are talking over the network. The value can be a signed */
  /*       number, the unsigned parameter type doesn’t affect the data. The area */
  /*       pointer need not be at the beginning of a buffer, but must have at least */
  /*       4 bytes of space left, including the byte currently pointed at. */
  /* inp : value = The 32bit number to put into the area buffer */
  /* inp : area  = The pointer into a data buffer, at which to put the number */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(Uint32, value)
    STACK_FMT_DATA(void,   area[])
  STACK_FMT_END()

    SDLNet_Write32
    ( STACK_GET_DATA(value)
    , (sd->next_bin == 0)
    ? STACK_GET_ADDR(area)
    : (void*) sd->bin[0].base
    );
}

EXDL_API(enet_read16)
{
  /* Uint16 SDLNet_Read16(void* area) */

  /* exp : Get a 16bit (a short on 32bit systems) value from the data buffer area */
  /*       which is in network byte order. This helps avoid byte order differences */
  /*       between two systems that are talking over the network. The returned value */
  /*       can be a signed number, the unsigned parameter type doesn’t affect the */
  /*       data. The area pointer need not be at the beginning of a buffer, but must */
  /*       have at least 2 bytes of space left, including the byte currently pointed at. */
  /* inp : area = The pointer into a data buffer, at which to get the number from */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(void, area[])
  STACK_FMT_END()

  CATCH_RESULT(Uint16)

    SDLNet_Read16
    ( (sd->next_bin == 0)
    ? STACK_GET_ADDR(area)
    : (void*) sd->bin[0].base
    );

  THROW_RESULT(Uint16)
}

EXDL_API(enet_read32)
{
  /* Uint32 SDLNet_Read32(void* area) */

  /* exp : Get a 32bit (a long on 32bit systems) value from the data buffer area */
  /*       which is in network byte order. This helps avoid byte order differences */
  /*       between two systems that are talking over the network. The returned value */
  /*       can be a signed number, the unsigned parameter type doesn’t affect the */
  /*       data. The area pointer need not be at the beginning of a buffer, but must */
  /*       have at least 4 bytes of space left, including the byte currently pointed at. */
  /* inp : area = The pointer into a data buffer, at which to get the number from */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(void, area[])
  STACK_FMT_END()

  CATCH_RESULT(Uint32)

    SDLNet_Read32
    ( (sd->next_bin == 0)
    ? STACK_GET_ADDR(area)
    : (void*) sd->bin[0].base
    );

  THROW_RESULT(Uint32)
}

#endif // COMPILE_NET
