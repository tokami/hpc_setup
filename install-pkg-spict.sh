#!/bin/sh


#!/bin/sh

if [ ! -d adcomp ]; then
    git clone https://github.com/mawp/spict
fi

cd spict; git pull

make install
## echo "devtools::install_github('mawp/spict/spict')" | R --vanilla
