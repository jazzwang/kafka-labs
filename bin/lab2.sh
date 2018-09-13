#!/bin/bash
start() {
  docker-compose -f docker/lab1.yml up -d kafka-manager
}

stop() {
  docker-compose -f docker/lab1.yml down
}

status() {
  docker-compose -f docker/lab1.yml ps
}

logs() {
  docker-compose -f docker/lab1.yml logs
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  restart)
    stop
    start
    ;;
  status)
    status
    ;;
  logs)
    logs
    ;;
  *)
    echo "Usage: $0 [ start | stop | restart | status | logs ]"
    ;;
esac
