#!/usr/bin/env bash

set -e

docker pull mokowz/flask-app-one:latest

docker run -d -p 5000:5000 mokowz/flask-app-one:latest