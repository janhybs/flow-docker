FROM ubuntu:14.04
MAINTAINER Jan Hybs

# fix bash
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# install basic set of tools
RUN sudo apt-get update && sudo apt-get install -y  \
    make \
    wget  \
    openssh-client \
    python 
