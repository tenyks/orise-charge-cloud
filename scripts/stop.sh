#!/bin/bash

cd $(dirname "$0") || exit
location=$(pwd)
id=$(cat service.pid)
kill -9 "$id"
echo "stop service with pid $id"
rm -rf service.pid