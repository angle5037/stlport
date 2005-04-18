#!ifndef MSVC_DIR
#MSVC_DIR = c:\Program Files\Microsoft Visual Studio 8\VC
#!endif

CFLAGS_COMMON = /nologo /W4 /GR /EHsc
CXXFLAGS_COMMON = /nologo /W4 /GR /EHsc

#DEFS_DBG = /RTC1 /GS
DEFS_STLDBG = /RTC1 /GS
#DEFS_STATIC_DBG = /RTC1 /GS
DEFS_STATIC_STLDBG = /RTC1 /GS

OPT_REL = $(OPT_REL) /GL

!include $(RULESBASE)/$(USE_MAKE)/vc-common.mak
