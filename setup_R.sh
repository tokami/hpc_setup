#!/bin/sh

RVERSION=R-3.4.1
TARBALL=$RVERSION.tar.gz

wget https://mirrors.dotsrc.org/cran/src/base/R-3/$TARBALL
tar zxf $TARBALL

mkdir build
cd build; ../$RVERSION/configure


