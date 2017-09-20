#!/bin/sh

RVERSION=R-3.4.1
TARBALL=$RVERSION.tar.gz

mkdir -f $HOME/Rsource
cd $HOME/Rsource
wget https://mirrors.dotsrc.org/cran/src/base/R-3/$TARBALL
tar zxfv $TARBALL

BUILD_DIR=build_$RVERSION
cd $BUILD_DIR
../$RVERSION/configure

