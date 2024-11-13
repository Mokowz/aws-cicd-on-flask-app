#!/usr/bin/env bash
set -e

# Stop the running docker container
containerId=`docker ps | awk -F " " '{ print $1 }'`

docker rm -f "$containerId"