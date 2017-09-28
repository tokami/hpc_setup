#!/bin/sh

REPOS="https://cloud.r-project.org"


echo "install.packages(c(
'devtools',
'raster',
'maps',
'mapdata',
'rgeos',
'geosphere',
'maptools',
'plyr',
'fields',
'rstan',
'knitr',
'ggplot2',
'curl',
'digest'
),repos='$REPOS')" | R --vanilla


## devtools dependent packages

echo "
devtools::install_github('kaskr/gridConstruct',subdir='gridConstruct')
" | R --vanilla

echo "
devtools::install_github('glmmTMB/glmmTMB/glmmTMB')
" | R --vanilla
