FROM flow/python:latest
MAINTAINER Jan Hybs

# install basic set of tools
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

# install petsc    
RUN mkdir -p /usr/share/petsc
COPY petsc/install.sh /usr/share/petsc/install.sh
RUN /usr/share/petsc/install.sh 3.6.1

# copy flow123d install script
RUN mkdir -p /home/flow123d
COPY flow123d/install.sh /home/flow123d/install.sh