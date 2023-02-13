#!/bin/sh

rm -f Makefile
rm -Rf autom4te.cache

mkdir -vp m4

aclocal
autoconf -f
autoheader
automake --foreign --add-missing --force-missing --copy
