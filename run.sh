#!/bin/bash

echo "Use daemonize to run the app"

WORKPATH=$(pwd)

daemonize/daemonize -p /var/run/goapp -l lock -u nobody $WORKPATH/hiworld

