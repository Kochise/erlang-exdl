# Microsoft Developer Studio Project File - Name="exdl_driver" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=exdl_driver - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "exdl_driver.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "exdl_driver.mak" CFG="exdl_driver - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "exdl_driver - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "exdl_driver - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "exdl_driver - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "output/Release"
# PROP Intermediate_Dir "output/Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SDL_DRIVER_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "__WIN32__" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SDL_DRIVER_EXPORTS" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x40c /d "NDEBUG"
# ADD RSC /l 0x40c /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib SDL.lib /nologo /dll /machine:I386 /out:"priv/exdl_driver.dll"

!ELSEIF  "$(CFG)" == "exdl_driver - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "output/Debug"
# PROP Intermediate_Dir "output/Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SDL_DRIVER_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "__WIN32__" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SDL_DRIVER_EXPORTS" /FR /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x40c /d "_DEBUG"
# ADD RSC /l 0x40c /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib SDL.lib /nologo /dll /debug /machine:I386 /out:"priv/exdl_driver.dll" /pdbtype:sept

!ENDIF 

# Begin Target

# Name "exdl_driver - Win32 Release"
# Name "exdl_driver - Win32 Debug"
# Begin Group "C Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\src\exdl_active.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_al.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_alc.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_alext.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_alut.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_audio.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_cdrom.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_de.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_driver.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_error.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_events.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_gen.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_gfx.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_gl.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glcorearb.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glext.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glu.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glut.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glxext.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_image.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_joystick.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_keyboard.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_mixer.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_mouse.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_net.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_oglblit.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_pal.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_rtf.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_sfml.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_spec.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_svg.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_thread.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_ttf.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_util.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_video.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_vnc.c
# End Source File
# Begin Source File

SOURCE=.\src\exdl_wrapper.c
# End Source File
# End Group
# Begin Group "C Include Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\src\exdl.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_active.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_al.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_alc.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_alext.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_alut.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_audio.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_cdrom.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_de.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_error.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_events.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_gen.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_gfx.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_gl.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glcorearb.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glext.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glu.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glut.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glxext.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_image.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_joystick.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_keyboard.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_mixer.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_mouse.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_net.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_oglblit.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_pal.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_rtf.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_sfml.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_svg.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_thread.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_tools.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_ttf.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_util.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_video.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_vnc.h
# End Source File
# End Group
# Begin Group "C Function Pointer Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\exdl_active_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_al_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_alc_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_alext_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_alut_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_audio_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_cdrom_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_de_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_error_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_events_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_gen_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_gfx_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_gl_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glcorearb_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glext_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glu_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glut_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_glxext_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_image_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_joystick_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_keyboard_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_mixer_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_mouse_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_net_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_oglblit_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_pal_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_rtf_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_sfml_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_svg_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_thread_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_ttf_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_util_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_video_fp.h
# End Source File
# Begin Source File

SOURCE=.\src\exdl_vnc_fp.h
# End Source File
# End Group
# Begin Group "C Definition Files"

# PROP Default_Filter "def"
# Begin Source File

SOURCE=.\def\exdl_active.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_al.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_alc.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_alext.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_alut.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_audio.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_cdrom.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_de.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_error.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_events.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_gen.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_gfx.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_gl.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_glcorearb.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_glext.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_glu.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_glut.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_glxext.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_image.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_joystick.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_keyboard.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_mixer.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_mouse.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_net.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_oglblit.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_pal.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_rtf.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_sfml.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_spec.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_svg.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_thread.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_ttf.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_util.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_video.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\def\exdl_vnc.def
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "E Source Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\exdl_active.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_al.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_alc.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_alext.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_alut.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_audio.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_cdrom.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_de.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_driver.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_error.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_events.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_gen.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_gfx.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_gl.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_glcorearb.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_glext.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_glu.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_glut.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_glxext.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_image.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_joystick.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_keyboard.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_mixer.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_mouse.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_net.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_oglblit.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_pal.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_rtf.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_sfml.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_svg.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_thread.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_ttf.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_util.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_video.erl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_vnc.erl
# End Source File
# End Group
# Begin Group "E Function Pointer Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\exdl_active_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_al_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_alc_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_alext_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_alut_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_audio_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_cdrom_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_de_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_error_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_events_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_gen_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_gfx_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_gl_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_glcorearb_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_glext_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_glu_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_glut_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_glxext_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_image_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_joystick_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_keyboard_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_mixer_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_mouse_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_net_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_oglblit_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_pal_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_rtf_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_sfml_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_svg_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_thread_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_ttf_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_util_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_video_fp.hrl
# End Source File
# Begin Source File

SOURCE=..\src\exdl_vnc_fp.hrl
# End Source File
# End Group
# Begin Group "E Include Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\include\exdl.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_active.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_al.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_alc.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_alext.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_alut.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_audio.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_cdrom.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_de.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_define.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_error.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_events.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_gen.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_gfx.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_gl.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_glcorearb.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_glext.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_glu.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_glxext.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_image.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_joystick.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_keyboard.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_mixer.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_mouse.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_net.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_oglblit.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_pal.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_rtf.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_sfml.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_svg.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_thread.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_ttf.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_util.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_video.hrl
# End Source File
# Begin Source File

SOURCE=..\include\exdl_vnc.hrl
# End Source File
# End Group
# Begin Group "E Test Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\test\erldemo.erl
# End Source File
# Begin Source File

SOURCE=..\test\testaudio.erl
# End Source File
# Begin Source File

SOURCE=..\test\testbin.erl
# End Source File
# Begin Source File

SOURCE=..\test\testgl.erl
# End Source File
# Begin Source File

SOURCE=..\test\testglutess.erl
# End Source File
# Begin Source File

SOURCE=..\test\testjoy.erl
# End Source File
# Begin Source File

SOURCE=..\test\testsprite.erl
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\rsc\exdl.ico
# End Source File
# Begin Source File

SOURCE=.\exdl.pub
# End Source File
# Begin Source File

SOURCE=.\rsc\exdl_driver.rc
# End Source File
# Begin Source File

SOURCE=.\vsn
# End Source File
# End Group
# End Target
# End Project
