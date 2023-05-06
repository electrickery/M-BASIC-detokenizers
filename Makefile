# Copyright (C) 1994,1995,1996 Free Software Foundation, Inc.
# Written by Christian A. Ratliff
#
# This file is part of the gwbasic translator.
#
# The gwbasic translator is free software; you can redistribute it
# and/or modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 1, or
# (at your option) any later version.
#
# The gwbasic translator is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty
# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with gwb; see the file COPYING.  If not, write to the Free
# Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
#
# $Id: Makefile,v 1.2 1995/02/10 22:38:24 ratlifc Exp ratlifc $
#

CC	= cc
CFLAGS	= -g -DNO_UTYPES
#LIBS	= -lcurses -ltermcap
# If on a NeXT use -lncurses
LIBS	= -lncurses -ltermcap

#ARCH	= next_mach20
INSTDIR = /usr/local/bin/ 

MISCFILES= README README.2 TODO COPYRIGHT CHANGES 
MAN	= trs80ascii.1 msxascii.1 gwascii.1 cpmascii.1 trsm4ascii.1\
	cocoascii.1 drascii.1 
HEADERS	= gwbasic.h trs80.h cpm_interpreter.h  msx_interpreter.h gwb_commands.h\
	gwb_executor.h gwb_interpreter.h coco.h dragon32.h osi.h exidy.h\
	model4.h nascom.h xtal.h compucolor.h   
SOURCE	= gwb_enviroment.c trs_interpreter.c gwb_commands.c gwb_executor.c \
	gwb_operands.c cpm_interpreter.c msx_interpreter.c gwb_interpreter.c\
	coco.c dragon.c trsm4.c sorcerer.c osi.c nascom.c xtal.c compucolor.c 
OBJECTS	= gwb_enviroment.o gwb_commands.o gwb_executor.o \
	gwb_operands.o
MSX	= msx_interpreter.o 
GW	= gwb_interpreter.o
CPM	= cpm_interpreter.o
TRS	= trs_interpreter.o
MOD4	= trsm4.o 
COCO	= coco.o 
DRAG	= dragon.o    
SOR	= sorcerer.o 
OSI	= osi.o 
NSC	= nascom.o
XTL	= xtal.o 
CMPCLR	= compucolor.o

OBJECTS2 = $(MSX) $(GW) $(CPM) $(TRS) $(MOD4) $(COCO) $(DRAG)

BINARY1	= trs80ascii
BINARY2	= msxascii
BINARY3 = gwascii  
BINARY4	= cpmascii  
BINARY5 = cocoascii
BINARY6	= drascii
BINARY7 = trsm4ascii


UNTST1	= osiascii
UNTST2	= sorcascii
UNTST3	= nscmascii
UNTST4	= xtalascii 
UNTST5	= compucolorascii 

all:	$(BINARY1) $(BINARY2) $(BINARY3) $(BINARY4) $(BINARY5) $(BINARY6) \
	$(BINARY7) 

untst:	$(UNTST1) $(UNTST2) $(UNTST3) $(UNTST4) $(UNTST5)  

$(BINARY1): $(HEADERS) $(OBJECTS) $(TRS) 
	$(CC) $(CFLAGS) -o $(BINARY1) $(OBJECTS) $(TRS) $(LIBS)

$(BINARY2): $(HEADERS) $(OBJECTS) $(MSX) 
	$(CC) $(CFLAGS) -o $(BINARY2) $(OBJECTS) $(MSX) $(LIBS)

$(BINARY3): $(HEADERS) $(OBJECTS) $(GW) 
	$(CC) $(CFLAGS) -o $(BINARY3) $(OBJECTS) $(GW) $(LIBS)

$(BINARY4): $(HEADERS) $(OBJECTS) $(CPM) 
	$(CC) $(CFLAGS) -o $(BINARY4) $(OBJECTS) $(CPM) $(LIBS)

$(BINARY5): $(HEADERS) $(OBJECTS) $(COCO) 
	$(CC) $(CFLAGS) -o $(BINARY5) $(OBJECTS) $(COCO) $(LIBS)

$(BINARY6): $(HEADERS) $(OBJECTS) $(DRAG) 
	$(CC) $(CFLAGS) -o $(BINARY6) $(OBJECTS) $(DRAG) $(LIBS)

$(BINARY7): $(HEADERS) $(OBJECTS) $(MOD4) 
	$(CC) $(CFLAGS) -o $(BINARY7) $(OBJECTS) $(MOD4) $(LIBS)

# Untested Basics: Ohio Scientific, Exidy Sorcerer, Nascom, Crystal, Compucolor  

$(UNTST1): $(HEADERS) $(OBJECTS) $(OSI) 
	$(CC) $(CFLAGS) -o $(UNTST1) $(OBJECTS) $(OSI) $(LIBS)

$(UNTST2): $(HEADERS) $(OBJECTS) $(SORC) 
	$(CC) $(CFLAGS) -o $(UNTST2) $(OBJECTS) $(SORC) $(LIBS)

$(UNTST3): $(HEADERS) $(OBJECTS) $(NSC) 
	$(CC) $(CFLAGS) -o $(UNTST3) $(OBJECTS) $(NSC) $(LIBS)

$(UNTST4): $(HEADERS) $(OBJECTS) $(XTL) 
	$(CC) $(CFLAGS) -o $(UNTST4) $(OBJECTS) $(XTL) $(LIBS)

$(UNTST5): $(HEADERS) $(OBJECTS) $(CMPCLR) 
	$(CC) $(CFLAGS) -o $(UNTST5) $(OBJECTS) $(CMPCLR) $(LIBS) 

clean:
	rm -f $(OBJECTS) $(BINARY) $(OBJECTS2) *~

tests:	$(BINARY)
	echo "Under version 2.0 simple tests are not possible"

install: $(BINARY)
	cp -f $(BINARY1) $(INSTDIR)/$(BINARY1)
	cp -f $(BINARY2) $(INSTDIR)/$(BINARY2)
	cp -f $(BINARY3) $(INSTDIR)/$(BINARY3)
	cp -f $(BINARY4) $(INSTDIR)/$(BINARY4)
	cp -f $(BINARY5) $(INSTDIR)/$(BINARY5)
	cp -f $(BINARY6) $(INSTDIR)/$(BINARY6)
	cp -f $(BINARY7) $(INSTDIR)/$(BINARY7)
dist:
	-mkdir /tmp/msbasic2ascii-0.2
	-cp $(SOURCE) $(HEADERS) $(MISCFILES) $(MAN) Makefile /tmp/msbasic2ascii-0.2
	-(cd /tmp ; tar cvf - msbasic2ascii-0.2 | gzip ) > msbasic2ascii-0.2.tar.gz
	-rm -rf /tmp/msbasic2ascii-0.2

#
# $Log: Makefile,v $
# Revision 1.2  1995/02/10  22:38:24  ratlifc
# added lots of headers, sources, and objects; removed link to math lib
#
# Revision 1.1  1995/02/08  23:02:19  ratlifc
# initial transfer to gwbasic 2.0
#
