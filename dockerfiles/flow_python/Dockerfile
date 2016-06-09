FROM flow/base:latest
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

# install python basic tools
RUN sudo pip install \
    pyyaml \
    markdown \
    psutil
    