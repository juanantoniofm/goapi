#!/bin/bash

kill -15 $(cat /var/run/goapp)

rm hiworld
