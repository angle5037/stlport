# -*- Makefile -*- Time-stamp: <03/10/26 18:54:04 ptr>
# $Id$

SRCROOT := ../../../src/explore
COMPILER_NAME := icc

ALL_TAGS := release-shared stldbg-shared
STLPORT_DIR := ../../..
include Makefile.inc
include ${SRCROOT}/Makefiles/top.mak


INCLUDES += -I${STLPORT_INCLUDE_DIR}

release-shared:	LDSEARCH = -L${STLPORT_LIB_DIR} -Wl,-R${STLPORT_LIB_DIR}
stldbg-shared:	LDSEARCH = -L${STLPORT_LIB_DIR} -Wl,-R${STLPORT_LIB_DIR}
dbg-shared:	LDSEARCH = -L${STLPORT_LIB_DIR} -Wl,-R${STLPORT_LIB_DIR}

ifeq ($(OSNAME),linux)
release-shared : LDLIBS = -lpthread -lstlport_gcc
stldbg-shared  : LDLIBS = -lpthread -lstlport_gcc_stldebug
dbg-shared     : LDLIBS = -lpthread -lstlport_gcc_debug
endif
