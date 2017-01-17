%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_net.erl,v 1.0 2008/12/30 07:46:20 kochise Exp $
%%

-module(exdl_net).

-include("exdl.hrl").

-ifdef(COMPILE_NET).

%% 1- EXPORT

%-compile(export_all).

-export( [ linkedVersion/0
         , init/0
         , quit/0
         , resolveHost/3
         , resolveIP/1
         , tcpOpen/1
         , tcpAccept/1
         , tcpGetPeerAddress/1
         , tcpSend/3
         , tcpRecv/3
         , tcpClose/1
         , allocPacket/1
         , resizePacket/2
         , freePacket/1
         , allocPacketV/2
         , freePacketV/1
         , udpOpen/1
         , udpBind/3
         , udpUnbind/2
         , udpGetPeerAddress/2
         , udpSendV/3
         , udpSend/3
         , udpRecvV/2
         , udpRecv/2
         , udpClose/1
         , allocSocketSet/1
         , addSocket/2
         , delSocket/2
         , checkSockets/2
         , freeSocketSet/1
         , write16/2
         , write32/2
         , read16/1
         , read32/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_net.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       linkedVersion
%% Args:       none
%% Returns:    Exdl
%% C-API func: const SDL_version* SDLNet_Linked_Version(void)

linkedVersion()
 -> case
      call
      ( ?SDLNet_Linked_Version
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       init
%% Args:       none
%% Returns:    Exdl
%% C-API func: int SDLNet_Init(void)

init()
 -> case
      call
      ( ?SDLNet_Init
      , [
        ]
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       quit
%% Args:       none
%% Returns:    ok
%% C-API func: void SDLNet_Quit(void)

quit()
 -> cast
    ( ?SDLNet_Quit
    , [
      ]
    )
.

%% Func:       resolveHost
%% Args:       Address, Host, Port
%% Returns:    Exdl
%% C-API func: int SDLNet_ResolveHost(IPaddress* address, const char* host, Uint16 port)

resolveHost(Address, Host, Port)
 -> case
      call
      ( ?SDLNet_ResolveHost
      , <<Address:?_PTR
        , Host:?_PTR
        , Port:?Uint16
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       resolveIP
%% Args:       Ip
%% Returns:    Exdl
%% C-API func: const char* SDLNet_ResolveIP(IPaddress* ip)

resolveIP(Ip)
 -> case
      call
      ( ?SDLNet_ResolveIP
      , <<Ip:?_PTR
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?String
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       tcpOpen
%% Args:       Ip
%% Returns:    Exdl
%% C-API func: TCPsocket SDLNet_TCP_Open(IPaddress* ip)

tcpOpen(Ip)
 -> case
      call
      ( ?SDLNet_TCP_Open
      , <<Ip:?_PTR
        >>
      )
    of
      <<Exdl:?TCPsocket
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       tcpAccept
%% Args:       Server
%% Returns:    Exdl
%% C-API func: TCPsocket SDLNet_TCP_Accept(TCPsocket server)

tcpAccept(Server)
 -> case
      call
      ( ?SDLNet_TCP_Accept
      , <<Server:?TCPsocket
        >>
      )
    of
      <<Exdl:?TCPsocket
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       tcpGetPeerAddress
%% Args:       Sock
%% Returns:    Exdl
%% C-API func: IPaddress* SDLNet_TCP_GetPeerAddress(TCPsocket sock)

tcpGetPeerAddress(Sock)
 -> case
      call
      ( ?SDLNet_TCP_GetPeerAddress
      , <<Sock:?TCPsocket
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       tcpSend
%% Args:       Sock, Data, Len
%% Returns:    Exdl
%% C-API func: int SDLNet_TCP_Send(TCPsocket sock, const void* data, int len)

tcpSend(Sock, Data, Len)
 -> case
      call
      ( ?SDLNet_TCP_Send
      , <<Sock:?TCPsocket
        , Data:?_PTR
        , Len:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       tcpRecv
%% Args:       Sock, Data, Maxlen
%% Returns:    Exdl
%% C-API func: int SDLNet_TCP_Recv(TCPsocket sock, void* data, int maxlen)

tcpRecv(Sock, Data, Maxlen)
 -> case
      call
      ( ?SDLNet_TCP_Recv
      , <<Sock:?TCPsocket
        , Data:?_PTR
        , Maxlen:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       tcpClose
%% Args:       Sock
%% Returns:    ok
%% C-API func: void SDLNet_TCP_Close(TCPsocket sock)

tcpClose(Sock)
 -> cast
    ( ?SDLNet_TCP_Close
    , <<Sock:?TCPsocket
      >>
    )
.

%% Func:       allocPacket
%% Args:       Size
%% Returns:    Exdl
%% C-API func: UDPpacket* SDLNet_AllocPacket(int size)

allocPacket(Size)
 -> case
      call
      ( ?SDLNet_AllocPacket
      , <<Size:?Int
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       resizePacket
%% Args:       Packet, Newsize
%% Returns:    Exdl
%% C-API func: int SDLNet_ResizePacket(UDPpacket* packet, int newsize)

resizePacket(Packet, Newsize)
 -> case
      call
      ( ?SDLNet_ResizePacket
      , <<Packet:?_PTR
        , Newsize:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       freePacket
%% Args:       Packet
%% Returns:    ok
%% C-API func: void SDLNet_FreePacket(UDPpacket* packet)

freePacket(Packet)
 -> cast
    ( ?SDLNet_FreePacket
    , <<Packet:?_PTR
      >>
    )
.

%% Func:       allocPacketV
%% Args:       Howmany, Size
%% Returns:    Exdl
%% C-API func: UDPpacket** SDLNet_AllocPacketV(int howmany, int size)

allocPacketV(Howmany, Size)
 -> case
      call
      ( ?SDLNet_AllocPacketV
      , <<Howmany:?Int
        , Size:?Int
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       freePacketV
%% Args:       PacketV
%% Returns:    ok
%% C-API func: void SDLNet_FreePacketV(UDPpacket** packetV)

freePacketV(PacketV)
 -> cast
    ( ?SDLNet_FreePacketV
    , <<PacketV:?_PTR
      >>
    )
.

%% Func:       udpOpen
%% Args:       Port
%% Returns:    Exdl
%% C-API func: UDPsocket SDLNet_UDP_Open(Uint16 port)

udpOpen(Port)
 -> case
      call
      ( ?SDLNet_UDP_Open
      , <<Port:?Uint16
        >>
      )
    of
      <<Exdl:?UDPsocket
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       udpBind
%% Args:       Sock, Channel, Address
%% Returns:    Exdl
%% C-API func: int SDLNet_UDP_Bind(UDPsocket sock, int channel, IPaddress* address)

udpBind(Sock, Channel, Address)
 -> case
      call
      ( ?SDLNet_UDP_Bind
      , <<Sock:?UDPsocket
        , Channel:?Int
        , Address:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       udpUnbind
%% Args:       Sock, Channel
%% Returns:    ok
%% C-API func: void SDLNet_UDP_Unbind(UDPsocket sock, int channel)

udpUnbind(Sock, Channel)
 -> cast
    ( ?SDLNet_UDP_Unbind
    , <<Sock:?UDPsocket
      , Channel:?Int
      >>
    )
.

%% Func:       udpGetPeerAddress
%% Args:       Sock, Channel
%% Returns:    Exdl
%% C-API func: IPaddress* SDLNet_UDP_GetPeerAddress(UDPsocket sock, int channel)

udpGetPeerAddress(Sock, Channel)
 -> case
      call
      ( ?SDLNet_UDP_GetPeerAddress
      , <<Sock:?UDPsocket
        , Channel:?Int
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       udpSendV
%% Args:       Sock, Packets, Npackets
%% Returns:    Exdl
%% C-API func: int SDLNet_UDP_SendV(UDPsocket sock, UDPpacket** packets, int npackets)

udpSendV(Sock, Packets, Npackets)
 -> case
      call
      ( ?SDLNet_UDP_SendV
      , <<Sock:?UDPsocket
        , Packets:?_PTR
        , Npackets:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       udpSend
%% Args:       Sock, Channel, Packet
%% Returns:    Exdl
%% C-API func: int SDLNet_UDP_Send(UDPsocket sock, int channel, UDPpacket* packet)

udpSend(Sock, Channel, Packet)
 -> case
      call
      ( ?SDLNet_UDP_Send
      , <<Sock:?UDPsocket
        , Channel:?Int
        , Packet:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       udpRecvV
%% Args:       Sock, Packets
%% Returns:    Exdl
%% C-API func: int SDLNet_UDP_RecvV(UDPsocket sock, UDPpacket** packets)

udpRecvV(Sock, Packets)
 -> case
      call
      ( ?SDLNet_UDP_RecvV
      , <<Sock:?UDPsocket
        , Packets:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       udpRecv
%% Args:       Sock, Packet
%% Returns:    Exdl
%% C-API func: int SDLNet_UDP_Recv(UDPsocket sock, UDPpacket* packet)

udpRecv(Sock, Packet)
 -> case
      call
      ( ?SDLNet_UDP_Recv
      , <<Sock:?UDPsocket
        , Packet:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       udpClose
%% Args:       Sock
%% Returns:    ok
%% C-API func: void SDLNet_UDP_Close(UDPsocket sock)

udpClose(Sock)
 -> cast
    ( ?SDLNet_UDP_Close
    , <<Sock:?UDPsocket
      >>
    )
.

%% Func:       allocSocketSet
%% Args:       Maxsockets
%% Returns:    Exdl
%% C-API func: SDLNet_SocketSet SDLNet_AllocSocketSet(int maxsockets)

allocSocketSet(Maxsockets)
 -> case
      call
      ( ?SDLNet_AllocSocketSet
      , <<Maxsockets:?Int
        >>
      )
    of
      <<Exdl:?SDLNet_SocketSet
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%#define SDLNet_TCP_AddSocket(set, sock) SDLNet_AddSocket(set, (SDLNet_GenericSocket) sock)
%#define SDLNet_UDP_AddSocket(set, sock) SDLNet_AddSocket(set, (SDLNet_GenericSocket) sock)

%% Func:       addSocket
%% Args:       Set, Sock
%% Returns:    Exdl
%% C-API func: int SDLNet_AddSocket(SDLNet_SocketSet set, SDLNet_GenericSocket sock)

addSocket(Set, Sock)
 -> case
      call
      ( ?SDLNet_AddSocket
      , <<Set:?SDLNet_SocketSet
        , Sock:?SDLNet_GenericSocket
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%#define SDLNet_TCP_DelSocket(set, sock) \
%         SDLNet_DelSocket(set, (SDLNet_GenericSocket)sock)
%#define SDLNet_UDP_DelSocket(set, sock) \
%         SDLNet_DelSocket(set, (SDLNet_GenericSocket)sock)

%% Func:       delSocket
%% Args:       Set, Sock
%% Returns:    Exdl
%% C-API func: int SDLNet_DelSocket(SDLNet_SocketSet set, SDLNet_GenericSocket sock)

delSocket(Set, Sock)
 -> case
      call
      ( ?SDLNet_DelSocket
      , <<Set:?SDLNet_SocketSet
        , Sock:?SDLNet_GenericSocket
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       checkSockets
%% Args:       Set, Timeout
%% Returns:    Exdl
%% C-API func: int SDLNet_CheckSockets(SDLNet_SocketSet set, Uint32 timeout)

checkSockets(Set, Timeout)
 -> case
      call
      ( ?SDLNet_CheckSockets
      , <<Set:?SDLNet_SocketSet
        , Timeout:?Uint32
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%#define SDLNet_SocketReady(sock) \
%      ((sock != NULL) && ((SDLNet_GenericSocket)sock)->ready)

%% Func:       freeSocketSet
%% Args:       Set
%% Returns:    ok
%% C-API func: void SDLNet_FreeSocketSet(SDLNet_SocketSet set)

freeSocketSet(Set)
 -> cast
    ( ?SDLNet_FreeSocketSet
    , <<Set:?SDLNet_SocketSet
      >>
    )
.

%% Func:       write16
%% Args:       Value, Area
%% Returns:    ok
%% C-API func: void SDLNet_Write16(Uint16 value, void* area)

write16(Value, Area)
 -> cast
    ( ?SDLNet_Write16
    , <<Value:?Uint16
      , Area:?_PTR
      >>
    )
.

%% Func:       write32
%% Args:       Value, Area
%% Returns:    ok
%% C-API func: void SDLNet_Write32(Uint32 value, void* area)

write32(Value, Area)
 -> cast
    ( ?SDLNet_Write32
    , <<Value:?Uint32
      , Area:?_PTR
      >>
    )
.

%% Func:       read16
%% Args:       Area
%% Returns:    Exdl
%% C-API func: Uint16 SDLNet_Read16(void* area)

read16(Area)
 -> case
      call
      ( ?SDLNet_Read16
      , <<Area:?_PTR
        >>
      )
    of
      <<Exdl:?Uint16
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       read32
%% Args:       Area
%% Returns:    Exdl
%% C-API func: Uint32 SDLNet_Read32(void* area)

read32(Area)
 -> case
      call
      ( ?SDLNet_Read32
      , <<Area:?_PTR
        >>
      )
    of
      <<Exdl:?Uint32
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%#define SDLNet_SetError SDL_SetError
%#define SDLNet_GetError SDL_GetError

-endif. % COMPILE_NET
