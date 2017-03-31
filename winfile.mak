# Microsoft Developer Studio Generated NMAKE File, Based on winfile.dsp
!IF "$(CFG)" == ""
CFG=winfile - Win32 Debug
!MESSAGE Keine Konfiguration angegeben. winfile - Win32 Debug wird als Standard verwendet.
!ENDIF 

!IF "$(CFG)" != "winfile - Win32 Release" && "$(CFG)" != "winfile - Win32 Debug"
!MESSAGE UngÅltige Konfiguration "$(CFG)" angegeben.
!MESSAGE Sie kînnen beim AusfÅhren von NMAKE eine Konfiguration angeben
!MESSAGE durch Definieren des Makros CFG in der Befehlszeile. Zum Beispiel:
!MESSAGE 
!MESSAGE NMAKE /f "winfile.mak" CFG="winfile - Win32 Debug"
!MESSAGE 
!MESSAGE FÅr die Konfiguration stehen zur Auswahl:
!MESSAGE 
!MESSAGE "winfile - Win32 Release" (basierend auf  "Win32 (x86) Application")
!MESSAGE "winfile - Win32 Debug" (basierend auf  "Win32 (x86) Application")
!MESSAGE 
!ERROR Eine ungÅltige Konfiguration wurde angegeben.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "winfile - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\winfile.exe"


CLEAN :
	-@erase "$(INTDIR)\dbg.obj"
	-@erase "$(INTDIR)\fontsel.obj"
	-@erase "$(INTDIR)\largeic.obj"
	-@erase "$(INTDIR)\lfn.obj"
	-@erase "$(INTDIR)\lfnmisc.obj"
	-@erase "$(INTDIR)\lstrfns.obj"
	-@erase "$(INTDIR)\numfmt.obj"
	-@erase "$(INTDIR)\psdocurd.obj"
	-@erase "$(INTDIR)\res.res"
	-@erase "$(INTDIR)\suggest.obj"
	-@erase "$(INTDIR)\tbar.obj"
	-@erase "$(INTDIR)\treectl.obj"
	-@erase "$(INTDIR)\utilnt.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\wfassoc.obj"
	-@erase "$(INTDIR)\wfchgnot.obj"
	-@erase "$(INTDIR)\wfcomman.obj"
	-@erase "$(INTDIR)\wfcopy.obj"
	-@erase "$(INTDIR)\wfdir.obj"
	-@erase "$(INTDIR)\wfdirrd.obj"
	-@erase "$(INTDIR)\wfdirsrc.obj"
	-@erase "$(INTDIR)\wfdlgs.obj"
	-@erase "$(INTDIR)\wfdlgs2.obj"
	-@erase "$(INTDIR)\wfdlgs3.obj"
	-@erase "$(INTDIR)\wfdos.obj"
	-@erase "$(INTDIR)\wfdrives.obj"
	-@erase "$(INTDIR)\wfext.obj"
	-@erase "$(INTDIR)\wffile.obj"
	-@erase "$(INTDIR)\wfinfo.obj"
	-@erase "$(INTDIR)\wfinit.obj"
	-@erase "$(INTDIR)\wfmem.obj"
	-@erase "$(INTDIR)\wfprint.obj"
	-@erase "$(INTDIR)\wfsearch.obj"
	-@erase "$(INTDIR)\wftree.obj"
	-@erase "$(INTDIR)\wfutil.obj"
	-@erase "$(INTDIR)\winfile.obj"
	-@erase "$(INTDIR)\wnetcaps.obj"
	-@erase "$(OUTDIR)\winfile.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Gz /MT /W3 /GX /O2 /I "c:\nt4\public\sdk\inc" /I "c:\nt4\private\inc" /I "C:\nt4\private\mvdm\inc" /I "C:\nt4\private\windows\inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_X86_" /D "LFN" /D "STRICT" /D "FASTMOVE" /D "LFNCLIPBOARD" /D "W3" /D "UNICODE" /D "_UNICODE" /D "USELASTDOT" /D "MEMDOUBLE" /D WINVER=0x0400 /Fp"$(INTDIR)\winfile.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x407 /fo"$(INTDIR)\res.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\winfile.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ntdll.lib comctl32.lib Shlwapi.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\winfile.pdb" /machine:I386 /out:"$(OUTDIR)\winfile.exe" /FORCE:MULTIPLE 
LINK32_OBJS= \
	"$(INTDIR)\dbg.obj" \
	"$(INTDIR)\fontsel.obj" \
	"$(INTDIR)\largeic.obj" \
	"$(INTDIR)\lfn.obj" \
	"$(INTDIR)\lfnmisc.obj" \
	"$(INTDIR)\lstrfns.obj" \
	"$(INTDIR)\numfmt.obj" \
	"$(INTDIR)\psdocurd.obj" \
	"$(INTDIR)\suggest.obj" \
	"$(INTDIR)\tbar.obj" \
	"$(INTDIR)\treectl.obj" \
	"$(INTDIR)\utilnt.obj" \
	"$(INTDIR)\wfassoc.obj" \
	"$(INTDIR)\wfchgnot.obj" \
	"$(INTDIR)\wfcomman.obj" \
	"$(INTDIR)\wfcopy.obj" \
	"$(INTDIR)\wfdir.obj" \
	"$(INTDIR)\wfdirrd.obj" \
	"$(INTDIR)\wfdirsrc.obj" \
	"$(INTDIR)\wfdlgs.obj" \
	"$(INTDIR)\wfdlgs2.obj" \
	"$(INTDIR)\wfdlgs3.obj" \
	"$(INTDIR)\wfdos.obj" \
	"$(INTDIR)\wfdrives.obj" \
	"$(INTDIR)\wfext.obj" \
	"$(INTDIR)\wffile.obj" \
	"$(INTDIR)\wfinfo.obj" \
	"$(INTDIR)\wfinit.obj" \
	"$(INTDIR)\wfmem.obj" \
	"$(INTDIR)\wfprint.obj" \
	"$(INTDIR)\wfsearch.obj" \
	"$(INTDIR)\wftree.obj" \
	"$(INTDIR)\wfutil.obj" \
	"$(INTDIR)\winfile.obj" \
	"$(INTDIR)\wnetcaps.obj" \
	"$(INTDIR)\res.res" \
	"C:\Program Files (x86)\Microsoft Visual Studio\VC98\Lib\NTDLL.LIB"

"$(OUTDIR)\winfile.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\winfile.exe" "$(OUTDIR)\winfile.bsc"


CLEAN :
	-@erase "$(INTDIR)\dbg.obj"
	-@erase "$(INTDIR)\dbg.sbr"
	-@erase "$(INTDIR)\fontsel.obj"
	-@erase "$(INTDIR)\fontsel.sbr"
	-@erase "$(INTDIR)\largeic.obj"
	-@erase "$(INTDIR)\largeic.sbr"
	-@erase "$(INTDIR)\lfn.obj"
	-@erase "$(INTDIR)\lfn.sbr"
	-@erase "$(INTDIR)\lfnmisc.obj"
	-@erase "$(INTDIR)\lfnmisc.sbr"
	-@erase "$(INTDIR)\lstrfns.obj"
	-@erase "$(INTDIR)\lstrfns.sbr"
	-@erase "$(INTDIR)\numfmt.obj"
	-@erase "$(INTDIR)\numfmt.sbr"
	-@erase "$(INTDIR)\psdocurd.obj"
	-@erase "$(INTDIR)\psdocurd.sbr"
	-@erase "$(INTDIR)\res.res"
	-@erase "$(INTDIR)\suggest.obj"
	-@erase "$(INTDIR)\suggest.sbr"
	-@erase "$(INTDIR)\tbar.obj"
	-@erase "$(INTDIR)\tbar.sbr"
	-@erase "$(INTDIR)\treectl.obj"
	-@erase "$(INTDIR)\treectl.sbr"
	-@erase "$(INTDIR)\utilnt.obj"
	-@erase "$(INTDIR)\utilnt.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\wfassoc.obj"
	-@erase "$(INTDIR)\wfassoc.sbr"
	-@erase "$(INTDIR)\wfchgnot.obj"
	-@erase "$(INTDIR)\wfchgnot.sbr"
	-@erase "$(INTDIR)\wfcomman.obj"
	-@erase "$(INTDIR)\wfcomman.sbr"
	-@erase "$(INTDIR)\wfcopy.obj"
	-@erase "$(INTDIR)\wfcopy.sbr"
	-@erase "$(INTDIR)\wfdir.obj"
	-@erase "$(INTDIR)\wfdir.sbr"
	-@erase "$(INTDIR)\wfdirrd.obj"
	-@erase "$(INTDIR)\wfdirrd.sbr"
	-@erase "$(INTDIR)\wfdirsrc.obj"
	-@erase "$(INTDIR)\wfdirsrc.sbr"
	-@erase "$(INTDIR)\wfdlgs.obj"
	-@erase "$(INTDIR)\wfdlgs.sbr"
	-@erase "$(INTDIR)\wfdlgs2.obj"
	-@erase "$(INTDIR)\wfdlgs2.sbr"
	-@erase "$(INTDIR)\wfdlgs3.obj"
	-@erase "$(INTDIR)\wfdlgs3.sbr"
	-@erase "$(INTDIR)\wfdos.obj"
	-@erase "$(INTDIR)\wfdos.sbr"
	-@erase "$(INTDIR)\wfdrives.obj"
	-@erase "$(INTDIR)\wfdrives.sbr"
	-@erase "$(INTDIR)\wfext.obj"
	-@erase "$(INTDIR)\wfext.sbr"
	-@erase "$(INTDIR)\wffile.obj"
	-@erase "$(INTDIR)\wffile.sbr"
	-@erase "$(INTDIR)\wfinfo.obj"
	-@erase "$(INTDIR)\wfinfo.sbr"
	-@erase "$(INTDIR)\wfinit.obj"
	-@erase "$(INTDIR)\wfinit.sbr"
	-@erase "$(INTDIR)\wfmem.obj"
	-@erase "$(INTDIR)\wfmem.sbr"
	-@erase "$(INTDIR)\wfprint.obj"
	-@erase "$(INTDIR)\wfprint.sbr"
	-@erase "$(INTDIR)\wfsearch.obj"
	-@erase "$(INTDIR)\wfsearch.sbr"
	-@erase "$(INTDIR)\wftree.obj"
	-@erase "$(INTDIR)\wftree.sbr"
	-@erase "$(INTDIR)\wfutil.obj"
	-@erase "$(INTDIR)\wfutil.sbr"
	-@erase "$(INTDIR)\winfile.obj"
	-@erase "$(INTDIR)\winfile.sbr"
	-@erase "$(INTDIR)\wnetcaps.obj"
	-@erase "$(INTDIR)\wnetcaps.sbr"
	-@erase "$(OUTDIR)\winfile.bsc"
	-@erase "$(OUTDIR)\winfile.exe"
	-@erase "$(OUTDIR)\winfile.ilk"
	-@erase "$(OUTDIR)\winfile.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Gz /MLd /W3 /Gm /GX /ZI /Od /I "F:\NT4\public\sdk\inc" /I "F:\NT4\private\inc" /I "F:\NT4\private\mvdm\inc" /I "F:\NT4\private\windows\inc" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_X86_" /D "LFN" /D "STRICT" /D "FASTMOVE" /D "LFNCLIPBOARD" /D "W3" /D "UNICODE" /D "_UNICODE" /D "USELASTDOT" /D "MEMDOUBLE" /D WINVER=0x0400 /FR"$(INTDIR)\\" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x407 /fo"$(INTDIR)\res.res" /i "F:\NT4\public\sdk\inc" /i "F:\NT4\private\inc" /i "F:\NT4\private\mvdm\inc" /i "F:\NT4\private\windows\inc" /d "_DEBUG" /d "WIN32" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\winfile.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\dbg.sbr" \
	"$(INTDIR)\fontsel.sbr" \
	"$(INTDIR)\largeic.sbr" \
	"$(INTDIR)\lfn.sbr" \
	"$(INTDIR)\lfnmisc.sbr" \
	"$(INTDIR)\lstrfns.sbr" \
	"$(INTDIR)\numfmt.sbr" \
	"$(INTDIR)\psdocurd.sbr" \
	"$(INTDIR)\suggest.sbr" \
	"$(INTDIR)\tbar.sbr" \
	"$(INTDIR)\treectl.sbr" \
	"$(INTDIR)\utilnt.sbr" \
	"$(INTDIR)\wfassoc.sbr" \
	"$(INTDIR)\wfchgnot.sbr" \
	"$(INTDIR)\wfcomman.sbr" \
	"$(INTDIR)\wfcopy.sbr" \
	"$(INTDIR)\wfdir.sbr" \
	"$(INTDIR)\wfdirrd.sbr" \
	"$(INTDIR)\wfdirsrc.sbr" \
	"$(INTDIR)\wfdlgs.sbr" \
	"$(INTDIR)\wfdlgs2.sbr" \
	"$(INTDIR)\wfdlgs3.sbr" \
	"$(INTDIR)\wfdos.sbr" \
	"$(INTDIR)\wfdrives.sbr" \
	"$(INTDIR)\wfext.sbr" \
	"$(INTDIR)\wffile.sbr" \
	"$(INTDIR)\wfinfo.sbr" \
	"$(INTDIR)\wfinit.sbr" \
	"$(INTDIR)\wfmem.sbr" \
	"$(INTDIR)\wfprint.sbr" \
	"$(INTDIR)\wfsearch.sbr" \
	"$(INTDIR)\wftree.sbr" \
	"$(INTDIR)\wfutil.sbr" \
	"$(INTDIR)\winfile.sbr" \
	"$(INTDIR)\wnetcaps.sbr"

"$(OUTDIR)\winfile.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib Shlwapi.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\winfile.pdb" /debug /machine:I386 /out:"$(OUTDIR)\winfile.exe" /pdbtype:sept /FORCE:MULTIPLE 
LINK32_OBJS= \
	"$(INTDIR)\dbg.obj" \
	"$(INTDIR)\fontsel.obj" \
	"$(INTDIR)\largeic.obj" \
	"$(INTDIR)\lfn.obj" \
	"$(INTDIR)\lfnmisc.obj" \
	"$(INTDIR)\lstrfns.obj" \
	"$(INTDIR)\numfmt.obj" \
	"$(INTDIR)\psdocurd.obj" \
	"$(INTDIR)\suggest.obj" \
	"$(INTDIR)\tbar.obj" \
	"$(INTDIR)\treectl.obj" \
	"$(INTDIR)\utilnt.obj" \
	"$(INTDIR)\wfassoc.obj" \
	"$(INTDIR)\wfchgnot.obj" \
	"$(INTDIR)\wfcomman.obj" \
	"$(INTDIR)\wfcopy.obj" \
	"$(INTDIR)\wfdir.obj" \
	"$(INTDIR)\wfdirrd.obj" \
	"$(INTDIR)\wfdirsrc.obj" \
	"$(INTDIR)\wfdlgs.obj" \
	"$(INTDIR)\wfdlgs2.obj" \
	"$(INTDIR)\wfdlgs3.obj" \
	"$(INTDIR)\wfdos.obj" \
	"$(INTDIR)\wfdrives.obj" \
	"$(INTDIR)\wfext.obj" \
	"$(INTDIR)\wffile.obj" \
	"$(INTDIR)\wfinfo.obj" \
	"$(INTDIR)\wfinit.obj" \
	"$(INTDIR)\wfmem.obj" \
	"$(INTDIR)\wfprint.obj" \
	"$(INTDIR)\wfsearch.obj" \
	"$(INTDIR)\wftree.obj" \
	"$(INTDIR)\wfutil.obj" \
	"$(INTDIR)\winfile.obj" \
	"$(INTDIR)\wnetcaps.obj" \
	"$(INTDIR)\res.res" \
	"C:\Program Files (x86)\Microsoft Visual Studio\VC98\Lib\NTDLL.LIB"

"$(OUTDIR)\winfile.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("winfile.dep")
!INCLUDE "winfile.dep"
!ELSE 
!MESSAGE Warning: cannot find "winfile.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "winfile - Win32 Release" || "$(CFG)" == "winfile - Win32 Debug"
SOURCE=.\dbg.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\dbg.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\dbg.obj"	"$(INTDIR)\dbg.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\fontsel.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\fontsel.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\fontsel.obj"	"$(INTDIR)\fontsel.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\largeic.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\largeic.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\largeic.obj"	"$(INTDIR)\largeic.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\lfn.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\lfn.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\lfn.obj"	"$(INTDIR)\lfn.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\lfnmisc.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\lfnmisc.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\lfnmisc.obj"	"$(INTDIR)\lfnmisc.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\lstrfns.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\lstrfns.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\lstrfns.obj"	"$(INTDIR)\lstrfns.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\numfmt.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\numfmt.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\numfmt.obj"	"$(INTDIR)\numfmt.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\psdocurd.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\psdocurd.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\psdocurd.obj"	"$(INTDIR)\psdocurd.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\res.rc

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\res.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x407 /fo"$(INTDIR)\res.res" /i "c:\nt4\public\sdk\inc" /i "c:\nt4\private\inc" /i "C:\nt4\private\mvdm\inc" /i "C:\nt4\private\windows\inc" /d "NDEBUG" $(SOURCE)


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\res.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x407 /fo"$(INTDIR)\res.res" /i "F:\NT4\public\sdk\inc" /i "F:\NT4\private\inc" /i "F:\NT4\private\mvdm\inc" /i "F:\NT4\private\windows\inc" /d "_DEBUG" /d "WIN32" $(SOURCE)


!ENDIF 

SOURCE=.\suggest.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\suggest.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\suggest.obj"	"$(INTDIR)\suggest.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\tbar.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\tbar.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\tbar.obj"	"$(INTDIR)\tbar.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\treectl.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\treectl.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\treectl.obj"	"$(INTDIR)\treectl.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\utilnt.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\utilnt.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\utilnt.obj"	"$(INTDIR)\utilnt.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfassoc.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfassoc.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfassoc.obj"	"$(INTDIR)\wfassoc.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfchgnot.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfchgnot.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfchgnot.obj"	"$(INTDIR)\wfchgnot.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfcomman.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfcomman.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfcomman.obj"	"$(INTDIR)\wfcomman.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfcopy.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfcopy.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfcopy.obj"	"$(INTDIR)\wfcopy.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfdir.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfdir.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfdir.obj"	"$(INTDIR)\wfdir.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfdirrd.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfdirrd.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfdirrd.obj"	"$(INTDIR)\wfdirrd.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfdirsrc.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfdirsrc.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfdirsrc.obj"	"$(INTDIR)\wfdirsrc.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfdlgs.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfdlgs.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfdlgs.obj"	"$(INTDIR)\wfdlgs.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfdlgs2.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfdlgs2.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfdlgs2.obj"	"$(INTDIR)\wfdlgs2.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfdlgs3.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfdlgs3.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfdlgs3.obj"	"$(INTDIR)\wfdlgs3.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfdos.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfdos.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfdos.obj"	"$(INTDIR)\wfdos.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfdrives.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfdrives.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfdrives.obj"	"$(INTDIR)\wfdrives.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfext.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfext.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfext.obj"	"$(INTDIR)\wfext.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wffile.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wffile.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wffile.obj"	"$(INTDIR)\wffile.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfinfo.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfinfo.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfinfo.obj"	"$(INTDIR)\wfinfo.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfinit.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfinit.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfinit.obj"	"$(INTDIR)\wfinit.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfmem.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfmem.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfmem.obj"	"$(INTDIR)\wfmem.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfprint.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfprint.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfprint.obj"	"$(INTDIR)\wfprint.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfsearch.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfsearch.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfsearch.obj"	"$(INTDIR)\wfsearch.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wftree.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wftree.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wftree.obj"	"$(INTDIR)\wftree.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wfutil.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wfutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wfutil.obj"	"$(INTDIR)\wfutil.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\winfile.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\winfile.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\winfile.obj"	"$(INTDIR)\winfile.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\wnetcaps.c

!IF  "$(CFG)" == "winfile - Win32 Release"


"$(INTDIR)\wnetcaps.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winfile - Win32 Debug"


"$(INTDIR)\wnetcaps.obj"	"$(INTDIR)\wnetcaps.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 


!ENDIF 

