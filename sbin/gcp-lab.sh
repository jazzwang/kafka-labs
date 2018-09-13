#!/bin/bash
if [ ! -f /etc/debian_version ]; then
  echo "[32;1m ### Sorry that this script is only test on Debian ### [0m"
  exit 1
fi
if [ ! -x /usr/bin/kafkacat ]; then
  echo "[32;1m ### Install kafkacat ### [0m"
  sudo apt-get -y install kafkacat
fi
