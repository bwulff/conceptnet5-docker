#!/bin/bash

CONCEPTNET_ENTRYPOINT=build docker-compose up -d
docker logs -f conceptnet


