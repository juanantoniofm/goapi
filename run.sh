#!/bin/bash

echo "Use daemonize to run the app"

WORKPATH=$(pwd)

if [ $(ps -ef | grep -v grep | grep hiworld) -eq 0 ]; then
    daemonize/daemonize -p /var/run/goapp -l lock -u nobody $WORKPATH/hiworld
fi

