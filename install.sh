#!/bin/bash

echo "Installing daemonize"
if [ ! -f daemonize/daemonize ]; then
    git clone git://github.com/bmc/daemonize.git
    cd daemonize
    sh configure
    make
    sudo make install 
    cd ..
fi

echo "Building the app"
go build hiworld.go
