#!/bin/bash
#
# debian docker install script
# from https://docs.docker.com/engine/install/debian/
#
# updated 2022-06-20 20:44
#

apt remove -y \
  docker \
  docker-engine \
  docker.io \
  containerd \
  runc

apt update  

apt install -y \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

mkdir -p /etc/apt/keyrings

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

apt update

apt install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-compose-plugin