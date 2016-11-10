#!/bin/bash

case $1 in
  toggle)
    command="toggle"
    ;;
  stop)
    command="stop"
    ;;
  prev)
    command="prev"
    ;;
  next)
    command="next"
    ;;
  *)
    exit 0
    ;;

mpc -h "\$mpd\$1337@127.0.0.1" $command
