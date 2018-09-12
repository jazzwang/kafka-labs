#!/bin/bash
if [ ! -f /etc/debian_version ]; then
  echo "[32;1m ### Sorry that this script is only test on Ubuntu 18.04 ### [0m"
  exit 1
fi
if [ ! -x /usr/bin/docker ]; then
  echo "[32;1m ### Install Docker CE ### [0m"
  sudo apt-get update
  sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo apt-key fingerprint 0EBFCD88
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  sudo apt-get update
  sudo apt-get -y install docker-ce
  echo "[32;1m ### Starting Docker Daemon ### [0m"
  sudo /etc/init.d/docker start
  sudo usermod -G docker -a ${USER}
  sudo docker ps -a
  if [ $? ]; then
    echo "[32;1m ... [OK] [0m"
  else
    echo "[31;1m ... [ERR] something wrong with docker, please check again.[0m"
    exit 1
  fi
fi
if [ ! -x /usr/bin/java ]; then
  echo "[32;1m ### Install OpenJDK 8 ### [0m"
  sudo apt-get -y install openjdk-8-jdk-headless
fi
if [ ! -x /usr/bin/docker-compose ]; then
  echo "[32;1m ### Install Docker Compose ### [0m"
  sudo apt-get -y install docker-compose
fi
if [ ! -x /usr/bin/kafkacat ]; then
  echo "[32;1m ### Install kafkacat ### [0m"
  sudo apt-get -y install kafkacat
fi
