#!/bin/sh
set -ex
cd "$(dirname "$0")"
git pull

compose_file_args=('-f' 'docker-compose.yml')
local_file="docker-compose.$(hostname).yml"
if [ -f "$local_file" ]; then
    compose_file_args+=('-f' "$local_file")
fi

run_compose() {
    docker compose -p spaceage "${compose_file_args[@]}" "$@"
}

run_compose pull "$@"
run_compose build "$@"
run_compose up -d --remove-orphans "$@"
