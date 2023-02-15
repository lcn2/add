#!/usr/bin/make
#
# add - add column of numbers
#
# Copyright (c) 1999,2014,2023 by Landon Curt Noll.  All Rights Reserved.
#
# Permission to use, copy, modify, and distribute this software and
# its documentation for any purpose and without fee is hereby granted,
# provided that the above copyright, this permission notice and text
# this comment, and the disclaimer below appear in all of the following:
#
#       supporting documentation
#       source copies
#       source works derived from this source
#       binaries derived from this source or from derived source
#
# LANDON CURT NOLL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
# INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO
# EVENT SHALL LANDON CURT NOLL BE LIABLE FOR ANY SPECIAL, INDIRECT OR
# CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
#
# chongo <was here> /\oo/\
#
# Share and enjoy!

SHELL= bash
BINMODE= 0555
DESTBIN= /usr/local/bin
INSTALL= install

TARGETS= add

all: ${TARGETS}

add: add.sh
	-rm -f $@
	cp $@.sh $@
	chmod +x $@

install: all
	${INSTALL} -c -m ${BINMODE} ${TARGETS} ${DESTBIN}

clean:

clobber: clean
	-rm -f add

# help
#
help:
	@echo make all
	@echo make install
	@echo make clobber
