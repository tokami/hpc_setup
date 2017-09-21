#!/bin/sh

VERSION=3.4.1
RVERSION=R-$VERSION
TARBALL=$RVERSION.tar.gz

INCLUDES=/appl/R/$VERSION/include
LIBS=/appl/R/$VERSION/lib

./modules.sh

wget https://mirrors.dotsrc.org/cran/src/base/R-3/$TARBALL
tar zxf $TARBALL

MKL="-fopenmp -m64 -I$MKLROOT/include -L$MKLROOT/lib/intel64 -lmkl_gf_lp64 -lmkl_gnu_thread -lmkl_core -lpthread -lm"

mkdir build
cd build; ../$RVERSION/configure CPPFLAGS="-I$INCLUDES -I/usr/local/include" LDFLAGS="-L$LIBS -L/usr/local/lib64" --with-blas="$MKL" --with-lapack

make -j 4
