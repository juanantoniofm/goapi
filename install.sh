#!/bin/bash

if [ ! -f daemonize/daemonize ]; then
    echo "Installing daemonize"
    git clone git://github.com/bmc/daemonize.git
    cd daemonize
    sh configure
    make
    sudo make install 
    cd ..
fi

if [ ! -f hiworld ]; then
    echo "Building the app"
    go build hiworld.go
fi
