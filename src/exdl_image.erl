%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_image.erl,v 1.0 2008/12/30 07:46:20 kochise Exp $
%%

-module(exdl_image).

-include("exdl.hrl").

-ifdef(COMPILE_IMAGE).

%% 1- EXPORT

%-compile(export_all).

-export( [ linkedVersion/0
         , init/1
         , quit/0
         , loadTypedRW/3
         , load/1
         , loadRW/2
         , invertAlpha/1
         , isICO/1
         , isCUR/1
         , isBMP/1
         , isGIF/1
         , isJPG/1
         , isLBM/1
         , isPCX/1
         , isPNG/1
         , isPNM/1
         , isTIF/1
         , isXCF/1
         , isXPM/1
         , isXV/1
         , loadICORW/1
         , loadCURRW/1
         , loadBMPRW/1
         , loadGIFRW/1
         , loadJPGRW/1
         , loadLBMRW/1
         , loadPCXRW/1
         , loadPNGRW/1
         , loadPNMRW/1
         , loadTGARW/1
         , loadTIFRW/1
         , loadXCFRW/1
         , loadXPMRW/1
         , loadXVRW/1
         , readXPMFromArray/1
         ]
       ).

%% 2- INCLUDE

-include("exdl_image.hrl").

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
%% C-API func: const SDL_version* IMG_Linked_Version(void)

linkedVersion()
 -> case
      call
      ( ?IMG_Linked_Version
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
%% Args:       Flags
%% Returns:    Exdl
%% C-API func: int IMG_Init(int flags)

init(Flags)
 -> case
      call
      ( ?IMG_Init
      , <<Flags:?Int
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

%% Func:       quit
%% Args:       none
%% Returns:    ok
%% C-API func: void IMG_Quit(void)

quit()
 -> cast
    ( ?IMG_Quit
    , [
      ]
    )
.

%% Func:       loadTypedRW
%% Args:       Src, Freesrc, Type
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadTyped_RW(SDL_RWops* src, int freesrc, char* type)

loadTypedRW(Src, Freesrc, Type)
 -> case
      call
      ( ?IMG_LoadTyped_RW
      , <<Src:?_PTR
        , Freesrc:?Int
        , Type:?_PTR
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

%% Func:       load
%% Args:       File
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_Load(const char* file)

load(File)
 -> case
      call
      ( ?IMG_Load
      , <<File:?_PTR
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

%% Func:       loadRW
%% Args:       Src, Freesrc
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_Load_RW(SDL_RWops* src, int freesrc)

loadRW(Src, Freesrc)
 -> case
      call
      ( ?IMG_Load_RW
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

%% Func:       invertAlpha
%% Args:       On
%% Returns:    Exdl
%% C-API func: int IMG_InvertAlpha(int on)

invertAlpha(On)
 -> case
      call
      ( ?IMG_InvertAlpha
      , <<On:?Int
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

%% Func:       isICO
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isICO(SDL_RWops* src)

isICO(Src)
 -> case
      call
      ( ?IMG_isICO
      , <<Src:?_PTR
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

%% Func:       isCUR
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isCUR(SDL_RWops* src)

isCUR(Src)
 -> case
      call
      ( ?IMG_isCUR
      , <<Src:?_PTR
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

%% Func:       isBMP
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isBMP(SDL_RWops* src)

isBMP(Src)
 -> case
      call
      ( ?IMG_isBMP
      , <<Src:?_PTR
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

%% Func:       isGIF
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isGIF(SDL_RWops* src)

isGIF(Src)
 -> case
      call
      ( ?IMG_isGIF
      , <<Src:?_PTR
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

%% Func:       isJPG
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isJPG(SDL_RWops* src)

isJPG(Src)
 -> case
      call
      ( ?IMG_isJPG
      , <<Src:?_PTR
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

%% Func:       isLBM
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isLBM(SDL_RWops* src)

isLBM(Src)
 -> case
      call
      ( ?IMG_isLBM
      , <<Src:?_PTR
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

%% Func:       isPCX
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isPCX(SDL_RWops* src)

isPCX(Src)
 -> case
      call
      ( ?IMG_isPCX
      , <<Src:?_PTR
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

%% Func:       isPNG
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isPNG(SDL_RWops* src)

isPNG(Src)
 -> case
      call
      ( ?IMG_isPNG
      , <<Src:?_PTR
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

%% Func:       isPNM
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isPNM(SDL_RWops* src)

isPNM(Src)
 -> case
      call
      ( ?IMG_isPNM
      , <<Src:?_PTR
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

%% Func:       isTIF
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isTIF(SDL_RWops* src)

isTIF(Src)
 -> case
      call
      ( ?IMG_isTIF
      , <<Src:?_PTR
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

%% Func:       isXCF
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isXCF(SDL_RWops* src)

isXCF(Src)
 -> case
      call
      ( ?IMG_isXCF
      , <<Src:?_PTR
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

%% Func:       isXPM
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isXPM(SDL_RWops* src)

isXPM(Src)
 -> case
      call
      ( ?IMG_isXPM
      , <<Src:?_PTR
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

%% Func:       isXV
%% Args:       Src
%% Returns:    Exdl
%% C-API func: int IMG_isXV(SDL_RWops* src)

isXV(Src)
 -> case
      call
      ( ?IMG_isXV
      , <<Src:?_PTR
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

%% Func:       loadICORW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadICO_RW(SDL_RWops* src)

loadICORW(Src)
 -> case
      call
      ( ?IMG_LoadICO_RW
      , <<Src:?_PTR
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

%% Func:       loadCURRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadCUR_RW(SDL_RWops* src)

loadCURRW(Src)
 -> case
      call
      ( ?IMG_LoadCUR_RW
      , <<Src:?_PTR
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

%% Func:       loadBMPRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadBMP_RW(SDL_RWops* src)

loadBMPRW(Src)
 -> case
      call
      ( ?IMG_LoadBMP_RW
      , <<Src:?_PTR
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

%% Func:       loadGIFRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadGIF_RW(SDL_RWops* src)

loadGIFRW(Src)
 -> case
      call
      ( ?IMG_LoadGIF_RW
      , <<Src:?_PTR
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

%% Func:       loadJPGRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadJPG_RW(SDL_RWops* src)

loadJPGRW(Src)
 -> case
      call
      ( ?IMG_LoadJPG_RW
      , <<Src:?_PTR
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

%% Func:       loadLBMRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadLBM_RW(SDL_RWops* src)

loadLBMRW(Src)
 -> case
      call
      ( ?IMG_LoadLBM_RW
      , <<Src:?_PTR
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

%% Func:       loadPCXRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadPCX_RW(SDL_RWops* src)

loadPCXRW(Src)
 -> case
      call
      ( ?IMG_LoadPCX_RW
      , <<Src:?_PTR
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

%% Func:       loadPNGRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadPNG_RW(SDL_RWops* src)

loadPNGRW(Src)
 -> case
      call
      ( ?IMG_LoadPNG_RW
      , <<Src:?_PTR
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

%% Func:       loadPNMRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadPNM_RW(SDL_RWops* src)

loadPNMRW(Src)
 -> case
      call
      ( ?IMG_LoadPNM_RW
      , <<Src:?_PTR
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

%% Func:       loadTGARW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadTGA_RW(SDL_RWops* src)

loadTGARW(Src)
 -> case
      call
      ( ?IMG_LoadTGA_RW
      , <<Src:?_PTR
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

%% Func:       loadTIFRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadTIF_RW(SDL_RWops* src)

loadTIFRW(Src)
 -> case
      call
      ( ?IMG_LoadTIF_RW
      , <<Src:?_PTR
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

%% Func:       loadXCFRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadXCF_RW(SDL_RWops* src)

loadXCFRW(Src)
 -> case
      call
      ( ?IMG_LoadXCF_RW
      , <<Src:?_PTR
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

%% Func:       loadXPMRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadXPM_RW(SDL_RWops* src)

loadXPMRW(Src)
 -> case
      call
      ( ?IMG_LoadXPM_RW
      , <<Src:?_PTR
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

%% Func:       loadXVRW
%% Args:       Src
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_LoadXV_RW(SDL_RWops* src)

loadXVRW(Src)
 -> case
      call
      ( ?IMG_LoadXV_RW
      , <<Src:?_PTR
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

%% Func:       readXPMFromArray
%% Args:       Xpm
%% Returns:    Exdl
%% C-API func: SDL_Surface* IMG_ReadXPMFromArray(char** xpm)

readXPMFromArray(Xpm)
 -> case
      call
      ( ?IMG_ReadXPMFromArray
      , <<Xpm:?_PTR
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

%%#define IMG_SetError SDL_SetError
%%#define IMG_GetError SDL_GetError

-endif. % COMPILE_IMAGE
