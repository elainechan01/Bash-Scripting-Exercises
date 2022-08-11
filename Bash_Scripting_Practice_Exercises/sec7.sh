#!/bin/bash

<<com
Create a startup script for an application called sleep-walking-server, which is provided below.
The script should be named sleep-walking and accept "start" and "stop" as arguments. If
anything other than "start" or "stop" is provided as an argument, display a usage statement:
"Usage sleep-walking start|stop" and terminate the script with an exit status of 1.
com

read -p "Start sleep-walking-server? " VAL

case "$VAL" in
    start)
        ./tmp/sleep-walking-server &
        ;;
    stop)
        kill $(cat ./tmp/sleep-walking-server.pid)
        ;;
    *)
        echo "Usage sleep-walking start|stop"
        exit 1
        ;;
esac