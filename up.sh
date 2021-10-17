#!/bin/sh
set -e

docker-compose -p spaceage pull
docker-compose -p spaceage up -d --build --remove-orphans
