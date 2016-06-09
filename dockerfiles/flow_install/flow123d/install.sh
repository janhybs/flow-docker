#!/bin/bash
#

BRANCH=${1:-master}

# clone and install flow123d
cd /home/flow123d
if [ ! -d "flow123d" ]; then
    git clone https://github.com/flow123d/flow123d.git -b ${BRANCH}
    cd /home/flow123d/flow123d
    wget http://hybs.nti.tul.cz/test/flow123d/standalone_petsc_3.6.1/config.cmake
else
    cd /home/flow123d/flow123d
    git fetch
    git checkout -b ${BRANCH}
fi

# run make
make -j 4 all

# create dummy pdf so package step works
touch /home/flow123d/flow123d/build_tree/doc/reference_manual/flow123d_doc.pdf