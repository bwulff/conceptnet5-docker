#!/bin/bash

docker build -t bwulff/conceptnet-runtime:latest .
echo "CONCEPTNET_ENTRYPOINT=build" > .env
docker-compose up
echo "CONCEPTNET_ENTRYPOINT=server" > .env