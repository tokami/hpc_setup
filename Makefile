.PHONY: all install-pkg

all:
	./set_local_bin.sh
	./build_R_MKL.sh
	./set_R_MKL.sh
	make install-pkg
	./set_Makevars.sh

install-pkg:
	R CMD INSTALL --preclean Matrix
	./install-pkg-TMB.sh
	./install-pkg-rgdal.sh
	./install-pkg-DATRAS.sh  
	./install-common-pkg.sh
