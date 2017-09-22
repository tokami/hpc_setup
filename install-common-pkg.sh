#!/bin/sh

REPOS="https://mirrors.dotsrc.org/cran/"


echo "install.packages(c(
'devtools',
'glmmTMB',
'raster',
'maps',
'mapdata',
'rgeos',
'geosphere',
'maptools',
'plyr',
'fields'
),repos='$REPOS')" | R --vanilla


## devtools dependent packages

echo "
devtools::install_github('kaskr/gridConstruct',subdir='gridConstruct')
" | R --vanilla