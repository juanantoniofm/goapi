#!/bin/bash

echo "Installing daemonize"
git clone git://github.com/bmc/daemonize.git
cd daemonize
sh configure
make
sudo make install 
cd ..

echo "Building the app"
go build hiworld.go
