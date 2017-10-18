#!/bin/bash

docker build -f Dockerfile_10.0 --rm -t seges/postgresql:10.0 .
docker build -f Dockerfile_10.0-alpine --rm -t seges/postgresql:10.0-alpine .

