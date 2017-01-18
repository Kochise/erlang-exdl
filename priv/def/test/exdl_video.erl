%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_video.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_video).

-include("exdl.hrl").

%% 1- EXPORT

%-compile(export_all).

-export( [ videoInit/2
         , videoQuit/0
         , videoDriverName/2
         , getVideoSurface/0
         , getVideoInfo/0
         , videoModeOK/4
         , listModes/2
         , setVideoMode/4
         , updateRects/3
         , updateRect/5
         , flip/1
         , setGamma/3
         , setGammaRamp/3
         , getGammaRamp/3
         , setColors/4
         , setPalette/5
         , mapRGB/4
         , mapRGBA/5
         , getRGB/1
         , getRGBA/1
         , createRGBSurface/8
         , createRGBSurfaceFrom/9
         , freeSurface/1
         , lockSurface/1
         , unlockSurface/1
         , loadBMPRW/2
         , saveBMPRW/3
         , setColorKey/3
         , setAlpha/3
         , setClipRect/2
         , getClipRect/0
         , convertSurface/3
         , upperBlit/4
         , lowerBlit/4
         , fillRect/3
         , displayFormat/1
         , displayFormatAlpha/1
         , createYUVOverlay/4
         , lockYUVOverlay/1
         , unlockYUVOverlay/1
         , displayYUVOverlay/2
         , freeYUVOverlay/1
         , glLoadLibrary/1
         , glGetProcAddress/1
         , glSetAttribute/2
         , glGetAttribute/2
         , glSwapBuffers/0
         , glUpdateRects/2
         , glLock/0
         , glUnlock/0
         , wmSetCaption/2
         , wmGetCaption/0
         , wmSetIcon/2
         , wmIconifyWindow/0
         , wmToggleFullScreen/1
         , wmGrabInput/1
         , softStretch/4
         , getWMInfo/1
         , wmIsMaximized/0
         ]
       ).

%% 2- INCLUDE

-include("exdl_video.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Func:       videoInit
%% Args:       DriverName, Flags
%% Returns:    Exdl
%% C-API func: int SDL_VideoInit(const char* driver_name, Uint32 flags)

videoInit(DriverName, Flags)
 -> case
      call
      ( ?SDL_VideoInit
      , <<DriverName:?_PTR
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

%% Func:       videoQuit
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_VideoQuit(void)

videoQuit()
 -> cast
    ( ?SDL_VideoQuit
    , [
      ]
    )
.

%% Func:       videoDriverName
%% Args:       Namebuf, Maxlen
%% Returns:    Exdl
%% C-API func: char* SDL_VideoDriverName(char* namebuf, int maxlen)

videoDriverName(Namebuf, Maxlen)
 -> case
      call
      ( ?SDL_VideoDriverName
      , <<Namebuf:?_PTR
        , Maxlen:?Int
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

%% Func:       getVideoSurface
%% Args:       none
%% Returns:    Exdl
%% C-API func: SDL_Surface* SDL_GetVideoSurface(void)

getVideoSurface()
 -> case
      call
      ( ?SDL_GetVideoSurface
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

%% Func:       getVideoInfo
%% Args:       none
%% Returns:    Exdl
%% C-API func: const SDL_VideoInfo* SDL_GetVideoInfo(void)

getVideoInfo()
 -> case
      call
      ( ?SDL_GetVideoInfo
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

%% Func:       videoModeOK
%% Args:       Width, Height, Bpp, Flags
%% Returns:    Exdl
%% C-API func: int SDL_VideoModeOK(int width, int height, int bpp, Uint32 flags)

videoModeOK(Width, Height, Bpp, Flags)
 -> case
      call
      ( ?SDL_VideoModeOK
      , <<Width:?Int
        , Height:?Int
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

%% Func:       listModes
%% Args:       Format, Flags
%% Returns:    Exdl
%% C-API func: SDL_Rect** SDL_ListModes(SDL_PixelFormat* format, Uint32 flags)

listModes(Format, Flags)
 -> case
      call
      ( ?SDL_ListModes
      , <<Format:?_PTR
        , Flags:?Uint32
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

%% Func:       setVideoMode
%% Args:       Width, Height, Bpp, Flags
%% Returns:    Exdl
%% C-API func: SDL_Surface* SDL_SetVideoMode(int width, int height, int bpp, Uint32 flags)

setVideoMode(Width, Height, Bpp, Flags)
 -> case
      call
      ( ?SDL_SetVideoMode
      , <<Width:?Int
        , Height:?Int
        , Bpp:?Int
        , Flags:?Uint32
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

%% Func:       updateRects
%% Args:       Screen, Numrects, Rects
%% Returns:    ok
%% C-API func: void SDL_UpdateRects(SDL_Surface* screen, int numrects, SDL_Rect* rects)

updateRects(Screen, Numrects, Rects)
 -> cast
    ( ?SDL_UpdateRects
    , <<Screen:?_PTR
      , Numrects:?Int
      , Rects:?_PTR
      >>
    )
.

%% Func:       updateRect
%% Args:       Screen, X, Y, W, H
%% Returns:    ok
%% C-API func: void SDL_UpdateRect(SDL_Surface* screen, Sint32 x, Sint32 y, Uint32 w, Uint32 h)

updateRect(Screen, X, Y, W, H)
 -> cast
    ( ?SDL_UpdateRect
    , <<Screen:?_PTR
      , X:?Sint32
      , Y:?Sint32
      , W:?Uint32
      , H:?Uint32
      >>
    )
.

%% Func:       flip
%% Args:       Screen
%% Returns:    Exdl
%% C-API func: int SDL_Flip(SDL_Surface* screen)

flip(Screen)
 -> case
      call
      ( ?SDL_Flip
      , <<Screen:?_PTR
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

%% Func:       setGamma
%% Args:       Red, Green, Blue
%% Returns:    Exdl
%% C-API func: int SDL_SetGamma(float red, float green, float blue)

setGamma(Red, Green, Blue)
 -> case
      call
      ( ?SDL_SetGamma
      , <<Red:?Float
        , Green:?Float
        , Blue:?Float
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

%% Func:       setGammaRamp
%% Args:       Red, Green, Blue
%% Returns:    Exdl
%% C-API func: int SDL_SetGammaRamp(const Uint16* red, const Uint16* green, const Uint16* blue)

setGammaRamp(Red, Green, Blue)
 -> case
      call
      ( ?SDL_SetGammaRamp
      , <<Red:?_PTR
        , Green:?_PTR
        , Blue:?_PTR
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

%% Func:       getGammaRamp
%% Args:       Red, Green, Blue
%% Returns:    Exdl
%% C-API func: int SDL_GetGammaRamp(Uint16* red, Uint16* green, Uint16* blue)

getGammaRamp(Red, Green, Blue)
 -> case
      call
      ( ?SDL_GetGammaRamp
      , <<Red:?_PTR
        , Green:?_PTR
        , Blue:?_PTR
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

%% Func:       setColors
%% Args:       Surface, Colors, Firstcolor, Ncolors
%% Returns:    Exdl
%% C-API func: int SDL_SetColors(SDL_Surface* surface, SDL_Color* colors, int firstcolor, int ncolors)

setColors(Surface, Colors, Firstcolor, Ncolors)
 -> case
      call
      ( ?SDL_SetColors
      , <<Surface:?_PTR
        , Colors:?_PTR
        , Firstcolor:?Int
        , Ncolors:?Int
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

%% Func:       setPalette
%% Args:       Surface, Flags, Colors, Firstcolor, Ncolors
%% Returns:    Exdl
%% C-API func: int SDL_SetPalette(SDL_Surface* surface, int flags, SDL_Color* colors, int firstcolor, int ncolors)

setPalette(Surface, Flags, Colors, Firstcolor, Ncolors)
 -> case
      call
      ( ?SDL_SetPalette
      , <<Surface:?_PTR
        , Flags:?Int
        , Colors:?_PTR
        , Firstcolor:?Int
        , Ncolors:?Int
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

%% Func:       mapRGB
%% Args:       Format, R, G, B
%% Returns:    Exdl
%% C-API func: Uint32 SDL_MapRGB(const SDL_PixelFormat* const format, const Uint8 r, const Uint8 g, const Uint8 b)

mapRGB(Format, R, G, B)
 -> case
      call
      ( ?SDL_MapRGB
      , <<Format:?_PTR
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
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

%% Func:       mapRGBA
%% Args:       Format, R, G, B, A
%% Returns:    Exdl
%% C-API func: Uint32 SDL_MapRGBA(const SDL_PixelFormat* const format, const Uint8 r, const Uint8 g, const Uint8 b, const Uint8 a)

mapRGBA(Format, R, G, B, A)
 -> case
      call
      ( ?SDL_MapRGBA
      , <<Format:?_PTR
        , R:?Uint8
        , G:?Uint8
        , B:?Uint8
        , A:?Uint8
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

%% Func:       getRGB
%% Args:       Pixel
%% Returns:    { Fmt, R, G, B }
%% C-API func: void SDL_GetRGB(Uint32 pixel, SDL_PixelFormat* fmt, Uint8* r, Uint8* g, Uint8* b)

getRGB(Pixel)
 -> case
      call
      ( ?SDL_GetRGB
      , <<Pixel:?Uint32
        >>
      )
    of
      <<Fmt:?_PTR
      , R:?_PTR
      , G:?_PTR
      , B:?_PTR
      >>
        -> { Fmt, R, G, B }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getRGBA
%% Args:       Pixel
%% Returns:    { Fmt, R, G, B, A }
%% C-API func: void SDL_GetRGBA(Uint32 pixel, SDL_PixelFormat* fmt, Uint8* r, Uint8* g, Uint8* b, Uint8* a)

getRGBA(Pixel)
 -> case
      call
      ( ?SDL_GetRGBA
      , <<Pixel:?Uint32
        >>
      )
    of
      <<Fmt:?_PTR
      , R:?_PTR
      , G:?_PTR
      , B:?_PTR
      , A:?_PTR
      >>
        -> { Fmt, R, G, B, A }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createRGBSurface
%% Args:       Flags, Width, Height, Depth, Rmask, Gmask, Bmask, Amask
%% Returns:    Exdl
%% C-API func: SDL_Surface* SDL_CreateRGBSurface(Uint32 flags, int width, int height, int depth, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)

createRGBSurface(Flags, Width, Height, Depth, Rmask, Gmask, Bmask, Amask)
 -> case
      call
      ( ?SDL_CreateRGBSurface
      , <<Flags:?Uint32
        , Width:?Int
        , Height:?Int
        , Depth:?Int
        , Rmask:?Uint32
        , Gmask:?Uint32
        , Bmask:?Uint32
        , Amask:?Uint32
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

%% Func:       createRGBSurfaceFrom
%% Args:       Pixels, Width, Height, Depth, Pitch, Rmask, Gmask, Bmask, Amask
%% Returns:    Exdl
%% C-API func: SDL_Surface* SDL_CreateRGBSurfaceFrom(void* pixels, int width, int height, int depth, int pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)

createRGBSurfaceFrom(Pixels, Width, Height, Depth, Pitch, Rmask, Gmask, Bmask, Amask)
 -> case
      call
      ( ?SDL_CreateRGBSurfaceFrom
      , <<Pixels:?_PTR
        , Width:?Int
        , Height:?Int
        , Depth:?Int
        , Pitch:?Int
        , Rmask:?Uint32
        , Gmask:?Uint32
        , Bmask:?Uint32
        , Amask:?Uint32
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

%% Func:       freeSurface
%% Args:       Surface
%% Returns:    ok
%% C-API func: void SDL_FreeSurface(SDL_Surface* surface)

freeSurface(Surface)
 -> cast
    ( ?SDL_FreeSurface
    , <<Surface:?_PTR
      >>
    )
.

%% Func:       lockSurface
%% Args:       Surface
%% Returns:    Exdl
%% C-API func: int SDL_LockSurface(SDL_Surface* surface)

lockSurface(Surface)
 -> case
      call
      ( ?SDL_LockSurface
      , <<Surface:?_PTR
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

%% Func:       unlockSurface
%% Args:       Surface
%% Returns:    ok
%% C-API func: void SDL_UnlockSurface(SDL_Surface* surface)

unlockSurface(Surface)
 -> cast
    ( ?SDL_UnlockSurface
    , <<Surface:?_PTR
      >>
    )
.

%% Func:       loadBMPRW
%% Args:       Src, Freesrc
%% Returns:    Exdl
%% C-API func: SDL_Surface* SDL_LoadBMP_RW(SDL_RWops* src, int freesrc)

loadBMPRW(Src, Freesrc)
 -> case
      call
      ( ?SDL_LoadBMP_RW
      , <<Src:?_PTR
        , Freesrc:?Int
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

%% Func:       saveBMPRW
%% Args:       Surface, Dst, Freedst
%% Returns:    Exdl
%% C-API func: int SDL_SaveBMP_RW(SDL_Surface* surface, SDL_RWops* dst, int freedst)

saveBMPRW(Surface, Dst, Freedst)
 -> case
      call
      ( ?SDL_SaveBMP_RW
      , <<Surface:?_PTR
        , Dst:?_PTR
        , Freedst:?Int
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

%% Func:       setColorKey
%% Args:       Surface, Flag, Key
%% Returns:    Exdl
%% C-API func: int SDL_SetColorKey(SDL_Surface* surface, Uint32 flag, Uint32 key)

setColorKey(Surface, Flag, Key)
 -> case
      call
      ( ?SDL_SetColorKey
      , <<Surface:?_PTR
        , Flag:?Uint32
        , Key:?Uint32
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

%% Func:       setAlpha
%% Args:       Surface, Flag, Alpha
%% Returns:    Exdl
%% C-API func: int SDL_SetAlpha(SDL_Surface* surface, Uint32 flag, Uint8 alpha)

setAlpha(Surface, Flag, Alpha)
 -> case
      call
      ( ?SDL_SetAlpha
      , <<Surface:?_PTR
        , Flag:?Uint32
        , Alpha:?Uint8
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

%% Func:       setClipRect
%% Args:       Surface, Rect
%% Returns:    Exdl
%% C-API func: SDL_bool SDL_SetClipRect(SDL_Surface* surface, const SDL_Rect* rect)

setClipRect(Surface, Rect)
 -> case
      call
      ( ?SDL_SetClipRect
      , <<Surface:?_PTR
        , Rect:?_PTR
        >>
      )
    of
      <<Exdl:?SDL_bool
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getClipRect
%% Args:       none
%% Returns:    { Surface, Rect }
%% C-API func: void SDL_GetClipRect(SDL_Surface* surface, SDL_Rect* rect)

getClipRect()
 -> case
      call
      ( ?SDL_GetClipRect
      , [
        ]
      )
    of
      <<Surface:?_PTR
      , Rect:?_PTR
      >>
        -> { Surface, Rect }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       convertSurface
%% Args:       Src, Fmt, Flags
%% Returns:    Exdl
%% C-API func: SDL_Surface* SDL_ConvertSurface(SDL_Surface* src, SDL_PixelFormat* fmt, Uint32 flags)

convertSurface(Src, Fmt, Flags)
 -> case
      call
      ( ?SDL_ConvertSurface
      , <<Src:?_PTR
        , Fmt:?_PTR
        , Flags:?Uint32
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

%% Func:       upperBlit
%% Args:       Src, Srcrect, Dst, Dstrect
%% Returns:    Exdl
%% C-API func: int SDL_UpperBlit(SDL_Surface* src, SDL_Rect* srcrect, SDL_Surface* dst, SDL_Rect* dstrect)

upperBlit(Src, Srcrect, Dst, Dstrect)
 -> case
      call
      ( ?SDL_UpperBlit
      , <<Src:?_PTR
        , Srcrect:?_PTR
        , Dst:?_PTR
        , Dstrect:?_PTR
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

%% Func:       lowerBlit
%% Args:       Src, Srcrect, Dst, Dstrect
%% Returns:    Exdl
%% C-API func: int SDL_LowerBlit(SDL_Surface* src, SDL_Rect* srcrect, SDL_Surface* dst, SDL_Rect* dstrect)

lowerBlit(Src, Srcrect, Dst, Dstrect)
 -> case
      call
      ( ?SDL_LowerBlit
      , <<Src:?_PTR
        , Srcrect:?_PTR
        , Dst:?_PTR
        , Dstrect:?_PTR
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

%% Func:       fillRect
%% Args:       Dst, Dstrect, Color
%% Returns:    Exdl
%% C-API func: int SDL_FillRect(SDL_Surface* dst, SDL_Rect* dstrect, Uint32 color)

fillRect(Dst, Dstrect, Color)
 -> case
      call
      ( ?SDL_FillRect
      , <<Dst:?_PTR
        , Dstrect:?_PTR
        , Color:?Uint32
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

%% Func:       displayFormat
%% Args:       Surface
%% Returns:    Exdl
%% C-API func: SDL_Surface* SDL_DisplayFormat(SDL_Surface* surface)

displayFormat(Surface)
 -> case
      call
      ( ?SDL_DisplayFormat
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

%% Func:       displayFormatAlpha
%% Args:       Surface
%% Returns:    Exdl
%% C-API func: SDL_Surface* SDL_DisplayFormatAlpha(SDL_Surface* surface)

displayFormatAlpha(Surface)
 -> case
      call
      ( ?SDL_DisplayFormatAlpha
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

%% Func:       createYUVOverlay
%% Args:       Width, Height, Format, Display
%% Returns:    Exdl
%% C-API func: SDL_Overlay* SDL_CreateYUVOverlay(int width, int height, Uint32 format, SDL_Surface* display)

createYUVOverlay(Width, Height, Format, Display)
 -> case
      call
      ( ?SDL_CreateYUVOverlay
      , <<Width:?Int
        , Height:?Int
        , Format:?Uint32
        , Display:?_PTR
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

%% Func:       lockYUVOverlay
%% Args:       Overlay
%% Returns:    Exdl
%% C-API func: int SDL_LockYUVOverlay(SDL_Overlay* overlay)

lockYUVOverlay(Overlay)
 -> case
      call
      ( ?SDL_LockYUVOverlay
      , <<Overlay:?_PTR
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

%% Func:       unlockYUVOverlay
%% Args:       Overlay
%% Returns:    ok
%% C-API func: void SDL_UnlockYUVOverlay(SDL_Overlay* overlay)

unlockYUVOverlay(Overlay)
 -> cast
    ( ?SDL_UnlockYUVOverlay
    , <<Overlay:?_PTR
      >>
    )
.

%% Func:       displayYUVOverlay
%% Args:       Overlay, Dstrect
%% Returns:    Exdl
%% C-API func: int SDL_DisplayYUVOverlay(SDL_Overlay* overlay, SDL_Rect* dstrect)

displayYUVOverlay(Overlay, Dstrect)
 -> case
      call
      ( ?SDL_DisplayYUVOverlay
      , <<Overlay:?_PTR
        , Dstrect:?_PTR
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

%% Func:       freeYUVOverlay
%% Args:       Overlay
%% Returns:    ok
%% C-API func: void SDL_FreeYUVOverlay(SDL_Overlay* overlay)

freeYUVOverlay(Overlay)
 -> cast
    ( ?SDL_FreeYUVOverlay
    , <<Overlay:?_PTR
      >>
    )
.

%% Func:       glLoadLibrary
%% Args:       Path
%% Returns:    Exdl
%% C-API func: int SDL_GL_LoadLibrary(const char* path)

glLoadLibrary(Path)
 -> case
      call
      ( ?SDL_GL_LoadLibrary
      , <<Path:?_PTR
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

%% Func:       glGetProcAddress
%% Args:       Proc
%% Returns:    Exdl
%% C-API func: void* SDL_GL_GetProcAddress(const char* proc)

glGetProcAddress(Proc)
 -> case
      call
      ( ?SDL_GL_GetProcAddress
      , <<Proc:?_PTR
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

%% Func:       glSetAttribute
%% Args:       Attr, Value
%% Returns:    Exdl
%% C-API func: int SDL_GL_SetAttribute(SDL_GLattr attr, int value)

glSetAttribute(Attr, Value)
 -> case
      call
      ( ?SDL_GL_SetAttribute
      , <<Attr:?SDL_GLattr
        , Value:?Int
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

%% Func:       glGetAttribute
%% Args:       Attr, Value
%% Returns:    Exdl
%% C-API func: int SDL_GL_GetAttribute(SDL_GLattr attr, int* value)

glGetAttribute(Attr, Value)
 -> case
      call
      ( ?SDL_GL_GetAttribute
      , <<Attr:?SDL_GLattr
        , Value:?_PTR
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

%% Func:       glSwapBuffers
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_GL_SwapBuffers(void)

glSwapBuffers()
 -> cast
    ( ?SDL_GL_SwapBuffers
    , [
      ]
    )
.

%% Func:       glUpdateRects
%% Args:       Numrects, Rects
%% Returns:    ok
%% C-API func: void SDL_GL_UpdateRects(int numrects, SDL_Rect* rects)

glUpdateRects(Numrects, Rects)
 -> cast
    ( ?SDL_GL_UpdateRects
    , <<Numrects:?Int
      , Rects:?_PTR
      >>
    )
.

%% Func:       glLock
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_GL_Lock(void)

glLock()
 -> cast
    ( ?SDL_GL_Lock
    , [
      ]
    )
.

%% Func:       glUnlock
%% Args:       none
%% Returns:    ok
%% C-API func: void SDL_GL_Unlock(void)

glUnlock()
 -> cast
    ( ?SDL_GL_Unlock
    , [
      ]
    )
.

%% Func:       wmSetCaption
%% Args:       Title, Icon
%% Returns:    ok
%% C-API func: void SDL_WM_SetCaption(const char* title, const char* icon)

wmSetCaption(Title, Icon)
 -> cast
    ( ?SDL_WM_SetCaption
    , <<Title:?_PTR
      , Icon:?_PTR
      >>
    )
.

%% Func:       wmGetCaption
%% Args:       none
%% Returns:    { Title, Icon }
%% C-API func: void SDL_WM_GetCaption(char** title, char** icon)

wmGetCaption()
 -> case
      call
      ( ?SDL_WM_GetCaption
      , [
        ]
      )
    of
      <<Title:?_PTR
      , Icon:?_PTR
      >>
        -> { Title, Icon }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       wmSetIcon
%% Args:       Icon, Mask
%% Returns:    ok
%% C-API func: void SDL_WM_SetIcon(SDL_Surface* icon, Uint8* mask)

wmSetIcon(Icon, Mask)
 -> cast
    ( ?SDL_WM_SetIcon
    , <<Icon:?_PTR
      , Mask:?_PTR
      >>
    )
.

%% Func:       wmIconifyWindow
%% Args:       none
%% Returns:    Exdl
%% C-API func: int SDL_WM_IconifyWindow(void)

wmIconifyWindow()
 -> case
      call
      ( ?SDL_WM_IconifyWindow
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

%% Func:       wmToggleFullScreen
%% Args:       Surface
%% Returns:    Exdl
%% C-API func: int SDL_WM_ToggleFullScreen(SDL_Surface* surface)

wmToggleFullScreen(Surface)
 -> case
      call
      ( ?SDL_WM_ToggleFullScreen
      , <<Surface:?_PTR
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

%% Func:       wmGrabInput
%% Args:       Mode
%% Returns:    Exdl
%% C-API func: SDL_GrabMode SDL_WM_GrabInput(SDL_GrabMode mode)

wmGrabInput(Mode)
 -> case
      call
      ( ?SDL_WM_GrabInput
      , <<Mode:?SDL_GrabMode
        >>
      )
    of
      <<Exdl:?SDL_GrabMode
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       softStretch
%% Args:       Src, Srcrect, Dst, Dstrect
%% Returns:    Exdl
%% C-API func: int SDL_SoftStretch(SDL_Surface* src, SDL_Rect* srcrect, SDL_Surface* dst, SDL_Rect* dstrect)

softStretch(Src, Srcrect, Dst, Dstrect)
 -> case
      call
      ( ?SDL_SoftStretch
      , <<Src:?_PTR
        , Srcrect:?_PTR
        , Dst:?_PTR
        , Dstrect:?_PTR
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

%% Func:       getWMInfo
%% Args:       Info
%% Returns:    Exdl
%% C-API func: int SDL_GetWMInfo(SDL_SysWMinfo* info)

getWMInfo(Info)
 -> case
      call
      ( ?SDL_GetWMInfo
      , <<Info:?_PTR
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

%% Func:       wmIsMaximized
%% Args:       none
%% Returns:    Exdl
%% C-API func: int SDL_WM_IsMaximized(void)

wmIsMaximized()
 -> case
      call
      ( ?SDL_WM_IsMaximized
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

