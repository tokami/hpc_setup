#!/bin/sh

VERSION=3.4.1
RVERSION=R-$VERSION
TARBALL=$RVERSION.tar.gz

INCLUDES=/appl/R/$VERSION/include
LIBS=/appl/R/$VERSION/lib

##export LD_LIBRARY_PATH=$LIBS:$LD_LIBRARY_PATH
##export CPATH=$INCLUDES:$CPATH

./modules.sh

wget https://mirrors.dotsrc.org/cran/src/base/R-3/$TARBALL
tar zxf $TARBALL

## MKL="-lmkl_intel_lp64 -lmkl_intel_thread  -lmkl_core -liomp5 -lpthread"
## MKL_LIB_PATH=$MKLROOT/lib/intel64
##export LD_LIBRARY_PATH=$MKL_LIB_PATH:$LD_LIBRARY_PATH
##MKL="-L${MKL_LIB_PATH} -lmkl_gf_lp64 -lmkl_gnu_thread -lmkl_core -dl -lpthread"
## MKL="-L${MKL_LIB_PATH} -lmkl_gf_lp64 -lmkl_gnu_thread -lmkl_core -dl -lpthread"
##MKL="-L${MKL_LIB_PATH} -lmkl_intel_lp64 -lmkl_intel_thread  -lmkl_core -liomp5 -lpthread"

MKL="-fopenmp -m64 -I$MKLROOT/include -L$MKLROOT/lib/intel64 -lmkl_gf_lp64 -lmkl_gnu_thread -lmkl_core -lpthread -lm"

mkdir build
cd build; ../$RVERSION/configure CPPFLAGS="-I$INCLUDES -I/usr/local/include" LDFLAGS="-L$LIBS -L/usr/local/lib64" --with-blas="$MKL" --with-lapack
