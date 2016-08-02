#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
# additional install jenkins
#

# Pull base image.
FROM ubuntu:14.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]

# ------------------------------------------------------------------------------
# install jenkins

RUN apt-get update && apt-get install -y git curl zip wget && rm -rf /var/lib/apt/lists/*

RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN sudo apt-get update
RUN sudo apt-get install jenkins

# for main web interface:
EXPOSE 8080

# will be used by attached slave agents:
EXPOSE 50000