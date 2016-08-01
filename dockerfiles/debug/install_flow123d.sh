#!/bin/bash
#

# grab branch name (by default use master)
BRANCH=${1:-master}
FLOW123D_LOCATION="/home/flow123d"

# clone and install flow123d
cd ${FLOW123D_LOCATION}
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
make -j 2 all

# create dummy pdf so package step works
touch ${FLOW123D_LOCATION}/flow123d/build_tree/doc/reference_manual/flow123d_doc.pdf