# %W% %G% %U%
#
# add - double space compression

SHELL=/bin/sh
BINMODE=0555
DESTBIN=/usr/local/bin
DESTLIB=/usr/local/lib
INSTALL=bsdinst

all: add

add: add.sh
	-rm -f $@
	cp $@.sh $@
	chmod +x $@

install: all
	${INSTALL} -c -m ${BINMODE} add ${DESTBIN}/add

clean:

clobber: clean
	-rm -f add
