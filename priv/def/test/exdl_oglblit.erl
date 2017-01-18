%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_oglblit.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_oglblit).

-include("exdl.hrl").

-ifdef(COMPILE_OGLBLIT).

%% 1- EXPORT

%-compile(export_all).

-export( [ init/4
         , freeTexture/1
         , flip/0
         , clear/0
         , blit/7
         , fromSurface/1
         , fromSurfaceFree/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_oglblit.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       init
%% Args:       W, H, Bpp, Flags
%% Returns:    Exdl
%% C-API func: int OGL_Init(int w, int h, int bpp, Uint32 flags)

init(W, H, Bpp, Flags)
 -> case
      call
      ( ?OGL_Init
      , <<W:?Int
        , H:?Int
        , Bpp:?Int
        , Flags:?Uint32
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

%% Func:       freeTexture
%% Args:       Texture
%% Returns:    ok
%% C-API func: void OGL_FreeTexture(OGL_Texture* texture)

freeTexture(Texture)
 -> cast
    ( ?OGL_FreeTexture
    , <<Texture:?_PTR
      >>
    )
.

%% Func:       flip
%% Args:       none
%% Returns:    ok
%% C-API func: void OGL_Flip()

flip()
 -> cast
    ( ?OGL_Flip
    , [
      ]
    )
.

%% Func:       clear
%% Args:       none
%% Returns:    ok
%% C-API func: void OGL_Clear()

clear()
 -> cast
    ( ?OGL_Clear
    , [
      ]
    )
.

%% Func:       blit
%% Args:       Texture, Clipping, X, Y, VZoom, HZoom, Rotation
%% Returns:    ok
%% C-API func: void OGL_Blit(OGL_Texture* texture, SDL_Rect* clipping, int x, int y, GLfloat vZoom, GLfloat hZoom, GLfloat rotation)

blit(Texture, Clipping, X, Y, VZoom, HZoom, Rotation)
 -> cast
    ( ?OGL_Blit
    , <<Texture:?_PTR
      , Clipping:?_PTR
      , X:?Int
      , Y:?Int
      , VZoom:?GLfloat
      , HZoom:?GLfloat
      , Rotation:?GLfloat
      >>
    )
.

%% Func:       fromSurface
%% Args:       Surface
%% Returns:    Exdl
%% C-API func: OGL_Texture* OGL_FromSurface(SDL_Surface* surface)

fromSurface(Surface)
 -> case
      call
      ( ?OGL_FromSurface
      , <<Surface:?_PTR
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

%% Func:       fromSurfaceFree
%% Args:       Surface
%% Returns:    Exdl
%% C-API func: OGL_Texture* OGL_FromSurfaceFree(SDL_Surface* surface)

fromSurfaceFree(Surface)
 -> case
      call
      ( ?OGL_FromSurfaceFree
      , <<Surface:?_PTR
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


-endif. % COMPILE_OGLBLIT
