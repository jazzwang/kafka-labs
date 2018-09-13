#!/bin/bash
if [ ! -f /etc/debian_version ]; then
  echo "[32;1m ### Sorry that this script is only test on Ubuntu 18.04 ### [0m"
  exit 1
fi
if [ ! -x /usr/bin/make ]; then
  echo "[32;1m ### Install Make ### [0m"
  sudo apt-get -y install make
fi
if [ ! -x /usr/bin/pandoc ]; then
  echo "[32;1m ### Install Pandoc ### [0m"
  sudo apt-get -y install pandoc
fi
