FROM flow123d:base
MAINTAINER Jan Hybs

# install basic set of tools
RUN sudo apt-get update && sudo apt-get install -y  \
    make \
    cmake \
    git \
    wget  \
    openssh-client \
    python \
    python-dev \
    python-pip

# install compilation and other tools
RUN sudo apt-get update && sudo apt-get install -y  \
    man \
    valgrind \
    perl \
    gfortran \
    gcc \
    g++ \
    libboost-program-options-dev \
    libboost-serialization-dev \
    libboost-regex-dev \
    libboost-filesystem-dev 

# install python basic tools
RUN sudo pip install \
    pyyaml \
    markdown \
    psutil

# install petsc    
RUN mkdir -p /usr/share/petsc
COPY install_petsc.sh /usr/share/install_petsc.sh
RUN /usr/share/install_petsc.sh 3.6.1