#!/bin/bash
start() {
  docker-compose -f docker/lab3.yml up -d
}

stop() {
  docker-compose -f docker/lab3.yml down
}

status() {
  docker-compose -f docker/lab3.yml ps
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
  *)
    echo "Usage: $0 [ start | stop | restart | status ]"
    ;;
esac
