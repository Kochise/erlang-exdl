%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_vnc.hrl,v 1.0 2008/12/30 07:50:46 kochise Exp $
%%

%%%----------------------------------------------------------------------
%%% File    : exdl_vnc.hrl
%%% Author  : David Koch <david.koch@libertysurf.fr>
%%% Purpose : defines from SDL_vnc.h
%%% Created : 30 Dec 2008 by David Koch <david.koch@libertysurf.fr>
%%%----------------------------------------------------------------------

-record( pixelformat
       , { bpp             %% unsigned char
         , depth           %% unsigned char
         , bigendian       %% unsigned char
         , truecolor       %% unsigned char
         , redmax          %% unsigned short
         , greenmax        %% unsigned short
         , bluemax         %% unsigned short
         , redshift        %% unsigned char
         , greenshift      %% unsigned char
         , blueshift       %% unsigned char
         }
       ).

-record( serverformat
       , { width           %% unsigned short
         , height          %% unsigned short
         , pixel_format    %% tSDL_vnc_pixelFormat
         , namelength      %% unsigned int
         , name            %% char[VNC_BUFSIZE]
         }
       ).

%%%% Server messages

-record( updaterequest
       , { messagetype     %% unsigned char
         , incremental     %% unsigned char
         , x               %% unsigned short
         , y               %% unsigned short
         , w               %% unsigned short
         , h               %% unsigned short
         }
       ).

-record( servermessage
       , { messagetype     %% unsigned char
         }
       ).

-record( serverupdate
       , { padding         %% unsigned char
         , rectangles      %% unsigned short
         }
       ).

-record( serverrectangle
       , { x               %% unsigned short
         , y               %% unsigned short
         , width           %% unsigned short
         , height          %% unsigned short
         , encoding        %% unsigned int
         }
       ).

-record( servercolormap
       , { padding         %% unsigned char
         , first           %% unsigned short
         , number          %% unsigned short
         }
       ).

-record( servertext
       , { length          %% unsigned int
         }
       ).

-record( servercopyrect
       , { x               %% unsigned short
         , y               %% unsigned short
         }
       ).

-record( serverrre
       , { number          %% unsigned int
         , background      %% unsigned int
         }
       ).

-record( serverrredata
       , { color           %% unsigned int
         , x               %% unsigned short
         , y               %% unsigned short
         , width           %% unsigned short
         , height          %% unsigned short
         }
       ).

-record( servercorre
       , { number          %% unsigned int
         , background      %% unsigned int
         }
       ).

-record( servercorredata
       , { color           %% unsigned int
         , x               %% unsigned char
         , y               %% unsigned char
         , width           %% unsigned char
         , height          %% unsigned char
         }
       ).

-record( serverhextile
       , { mode            %% unsigned char
         }
       ).

-record( serverhextilebg
       , { color           %% unsigned int
         }
       ).

-record( serverhextilefg
       , { color           %% unsigned int
         }
       ).

-record( serverhextilesubrects
       , { number          %% unsigned char
         }
       ).

-record( serverhextilecolored
       , { color           %% unsigned int
         , xy              %% unsigned char
         , wh              %% unsigned char
         }
       ).

-record( serverhextilerect
       , { xy              %% unsigned char
         , wh              %% unsigned char
         }
       ).

%%%% Client messages

-record( clientkeyevent
       , { messagetype     %% unsigned char
         , downflag        %% unsigned char
         , key             %% unsigned int
         }
       ).

-record( clientpointerevent
       , { messagetype     %% unsigned char
         , buttonmask      %% unsigned char
         , x               %% unsigned short
         , y               %% unsigned short
         }
       ).

%%%% Main SDL_vnc structure

-record( vnc
       , { socket          %% int 				           socket to server
         , version         %% int 				           current VNC version
         , security_type   %% unsigned int 		       current security type
         , serverFormat    %% tSDL_vnc_serverFormat  current server format
         , updateRequest   %% tSDL_vnc_updateRequest standard update request for full screen 
         , reading         %% int 				           flag indicating we are reading
         , framerate       %% int 				           current framerate for update requests
         , rmask           %% Uint32 	               current RGBA mask   
         , gmask           %% Uint32   
         , bmask           %% Uint32   
         , amask           %% Uint32
         , thread          %% SDL_Thread* 			     VNC client thread
         , mutex           %% SDL_mutex* 			       thread mutex
%% Variables below are accessed by the Thread and need to be mutex locked if accessed externally
         , buffer          %% char* 				         general IO buffer
         , clientbuffer    %% char* 			           buffer for client-to-server data
         , clientbufferpos %% int 			             current position in buffer
         , fbupdated       %% int 				           flag indicating that the framebuffer was updated
         , updatedRect     %% SDL_Rect 			         rectangle that was updated
         , framebuffer     %% SDL_Surface* 		       RGB surface of framebuffer
         , scratchbuffer   %% SDL_Surface* 		       workbuffer for encodings
         , tilebuffer      %% SDL_Surface* 		       workbuffer for encodings
         , gotcursor       %% int 				           flag indicating that the cursor was updated
         , cursorbuffer    %% SDL_Surface* 		       RGBA surface of cursor (fixed at 32x32)
         , cursorhotspot   %% SDL_Rect 			         hotspot location of cursor (only .x and .y are used)
         }
       ).
