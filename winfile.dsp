# Microsoft Developer Studio Project File - Name="winfile" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** NICHT BEARBEITEN **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=winfile - Win32 Debug
!MESSAGE Dies ist kein gültiges Makefile. Zum Erstellen dieses Projekts mit NMAKE
!MESSAGE verwenden Sie den Befehl "Makefile exportieren" und führen Sie den Befehl
!MESSAGE 
!MESSAGE NMAKE /f "winfile.mak".
!MESSAGE 
!MESSAGE Sie können beim Ausführen von NMAKE eine Konfiguration angeben
!MESSAGE durch Definieren des Makros CFG in der Befehlszeile. Zum Beispiel:
!MESSAGE 
!MESSAGE NMAKE /f "winfile.mak" CFG="winfile - Win32 Debug"
!MESSAGE 
!MESSAGE Für die Konfiguration stehen zur Auswahl:
!MESSAGE 
!MESSAGE "winfile - Win32 Release" (basierend auf  "Win32 (x86) Application")
!MESSAGE "winfile - Win32 Debug" (basierend auf  "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "winfile - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /Gz /MT /W3 /GX /O2 /I "c:\nt4\public\sdk\inc" /I "c:\nt4\private\inc" /I "C:\nt4\private\mvdm\inc" /I "C:\nt4\private\windows\inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_X86_" /D "LFN" /D "STRICT" /D "FASTMOVE" /D "LFNCLIPBOARD" /D "W3" /D "UNICODE" /D "_UNICODE" /D "USELASTDOT" /D "MEMDOUBLE" /D WINVER=0x0400 /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x407 /d "NDEBUG"
# ADD RSC /l 0x407 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ntdll.lib comctl32.lib Shlwapi.lib /nologo /subsystem:windows /machine:I386 /FORCE:MULTIPLE
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /Gz /W3 /Gm /GX /ZI /Od /I "F:\NT4\public\sdk\inc" /I "F:\NT4\private\inc" /I "F:\NT4\private\mvdm\inc" /I "F:\NT4\private\windows\inc" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_X86_" /D "LFN" /D "STRICT" /D "FASTMOVE" /D "LFNCLIPBOARD" /D "W3" /D "UNICODE" /D "_UNICODE" /D "USELASTDOT" /D "MEMDOUBLE" /D WINVER=0x0400 /FR /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x407 /i "F:\NT4\public\sdk\inc" /i "F:\NT4\private\inc" /i "F:\NT4\private\mvdm\inc" /i "F:\NT4\private\windows\inc" /d "_DEBUG" /d "WIN32"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib Shlwapi.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept /FORCE:MULTIPLE
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "winfile - Win32 Release"
# Name "winfile - Win32 Debug"
# Begin Group "Quellcodedateien"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\dbg.c
# End Source File
# Begin Source File

SOURCE=.\fontsel.c
# End Source File
# Begin Source File

SOURCE=.\largeic.c
# End Source File
# Begin Source File

SOURCE=.\lfn.c
# End Source File
# Begin Source File

SOURCE=.\lfnmisc.c
# End Source File
# Begin Source File

SOURCE=.\lstrfns.c
# End Source File
# Begin Source File

SOURCE=.\numfmt.c
# End Source File
# Begin Source File

SOURCE=.\psdocurd.c
# End Source File
# Begin Source File

SOURCE=.\res.rc

!IF  "$(CFG)" == "winfile - Win32 Release"

# ADD BASE RSC /l 0x407
# ADD RSC /l 0x407 /i "c:\nt4\public\sdk\inc" /i "c:\nt4\private\inc" /i "C:\nt4\private\mvdm\inc" /i "C:\nt4\private\windows\inc"

!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\suggest.c
# End Source File
# Begin Source File

SOURCE=.\tbar.c
# End Source File
# Begin Source File

SOURCE=.\treectl.c
# End Source File
# Begin Source File

SOURCE=.\utilnt.c
# End Source File
# Begin Source File

SOURCE=.\wfassoc.c
# End Source File
# Begin Source File

SOURCE=.\wfchgnot.c
# End Source File
# Begin Source File

SOURCE=.\wfcomman.c
# End Source File
# Begin Source File

SOURCE=.\wfcopy.c
# End Source File
# Begin Source File

SOURCE=.\wfdir.c
# End Source File
# Begin Source File

SOURCE=.\wfdirrd.c
# End Source File
# Begin Source File

SOURCE=.\wfdirsrc.c
# End Source File
# Begin Source File

SOURCE=.\wfdlgs.c
# End Source File
# Begin Source File

SOURCE=.\wfdlgs2.c
# End Source File
# Begin Source File

SOURCE=.\wfdlgs3.c
# End Source File
# Begin Source File

SOURCE=.\wfdos.c
# End Source File
# Begin Source File

SOURCE=.\wfdrives.c
# End Source File
# Begin Source File

SOURCE=.\wfext.c
# End Source File
# Begin Source File

SOURCE=.\wffile.c
# End Source File
# Begin Source File

SOURCE=.\wfinfo.c
# End Source File
# Begin Source File

SOURCE=.\wfinit.c
# End Source File
# Begin Source File

SOURCE=.\wfmem.c
# End Source File
# Begin Source File

SOURCE=.\wfprint.c
# End Source File
# Begin Source File

SOURCE=.\wfsearch.c
# End Source File
# Begin Source File

SOURCE=.\wftree.c
# End Source File
# Begin Source File

SOURCE=.\wfutil.c
# End Source File
# Begin Source File

SOURCE=.\winfile.c
# End Source File
# Begin Source File

SOURCE=.\wnetcaps.c
# End Source File
# Begin Source File

SOURCE="C:\Program Files (x86)\Microsoft Visual Studio\VC98\Lib\NTDLL.LIB"
# End Source File
# End Group
# Begin Group "Header-Dateien"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\dbg.h
# End Source File
# Begin Source File

SOURCE=.\dosfunc.h
# End Source File
# Begin Source File

SOURCE=.\fontsel.h
# End Source File
# Begin Source File

SOURCE=.\lfn.h
# End Source File
# Begin Source File

SOURCE=.\lstrfns.h
# End Source File
# Begin Source File

SOURCE=.\numfmt.h
# End Source File
# Begin Source File

SOURCE=.\suggest.h
# End Source File
# Begin Source File

SOURCE=.\treectl.h
# End Source File
# Begin Source File

SOURCE=.\wfcopy.h
# End Source File
# Begin Source File

SOURCE=.\wfdisk.h
# End Source File
# Begin Source File

SOURCE=.\wfdlgs.h
# End Source File
# Begin Source File

SOURCE=.\wfexti.h
# End Source File
# Begin Source File

SOURCE=.\wfgwl.h
# End Source File
# Begin Source File

SOURCE=.\wfhelp.h
# End Source File
# Begin Source File

SOURCE=.\wfinfo.h
# End Source File
# Begin Source File

SOURCE=.\wfmem.h
# End Source File
# Begin Source File

SOURCE=.\winexp.h
# End Source File
# Begin Source File

SOURCE=.\winfile.h
# End Source File
# Begin Source File

SOURCE=.\wnetcaps.h
# End Source File
# End Group
# Begin Group "Ressourcendateien"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\mcopy.cur
# End Source File
# Begin Source File

SOURCE=.\mmove.cur
# End Source File
# Begin Source File

SOURCE=.\scopy.cur
# End Source File
# Begin Source File

SOURCE=.\smove.cur
# End Source File
# Begin Source File

SOURCE=.\split.cur
# End Source File
# Begin Source File

SOURCE=.\wbbitmap.bmp
# End Source File
# Begin Source File

SOURCE=.\wfdir.ico
# End Source File
# Begin Source File

SOURCE=.\wftrdir.ico
# End Source File
# Begin Source File

SOURCE=.\wftree.ico
# End Source File
# Begin Source File

SOURCE=.\winfile.ico
# End Source File
# End Group
# End Target
# End Project
