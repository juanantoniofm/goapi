#!/bin/bash

echo "Use daemonize to run the app"

WORKPATH=$(pwd)
PID=$(cat /var/run/goapp)

if ps -p $PID >/dev/null
then
    daemonize/daemonize -a -p /var/run/goapp -l lock -u nobody $WORKPATH/hiworld
fi

