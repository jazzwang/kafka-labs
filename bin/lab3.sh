#!/bin/bash
start() {
  docker-compose -f docker/lab3.yml up -d kafka1 kafka2 kafka3
}

stop() {
  docker-compose -f docker/lab3.yml down
}

status() {
  docker-compose -f docker/lab3.yml ps
}

logs() {
  docker-compose -f docker/lab3.yml logs
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
