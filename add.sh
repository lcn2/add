#!/bin/sh -
#
# add - add column of numbers
#
# usage:
#	add [col]
#
# @(#) $Revision: 1.3 $
# @(#) $Id: add.sh,v 1.3 1999/09/26 21:16:52 chongo Exp $
# @(#) $Source: /usr/local/src/bin/add/RCS/add.sh,v $
#
# Copyright (c) 1999 by Landon Curt Noll.  All Rights Reserved.
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

if [ "$#" -eq 1 ]; then
	col="$1";
elif [ "$#" -eq 0 ]; then
	col=1;
else
	echo "$0: usage: $0 [col]" 1>&2
	exit 1
fi
awk 'NF >= '$col' && $'$col' ~ /[0-9 	.+-]*/ {x += $'$col'} END {print x}' -
