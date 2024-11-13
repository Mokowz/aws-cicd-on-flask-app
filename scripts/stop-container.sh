#!/usr/bin/env bash
set -e

# Stop the running docker container
containerId=`sudo docker ps | awk -F " " '{ print $1 }'`

sudo docker rm -f "$containerId"
