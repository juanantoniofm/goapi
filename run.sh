#!/bin/bash

echo "daemonize to run the app"

WORKPATH=$(pwd)

if [ -f /var/run/goapp ]
then
        PID=$(cat /var/run/goapp)
        if ps -p $PID >/dev/null
        then
            echo "The app is already running"
            ps -ef | grep -v grep | grep hiworld
        else
            echo "The app was interrupted in a previous run. Please clean your environment"
        fi
else
    echo "Starting hiworld app"
    daemonize/daemonize -a -p /var/run/goapp -l lock -u nobody $WORKPATH/hiworld
fi

