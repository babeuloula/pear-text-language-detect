#!/usr/bin/env bash

set -e

readonly DOCKER_PATH=$(dirname $(realpath $0))
cd ${DOCKER_PATH};

. ./lib/functions.sh

block_info "Welcome to PEAR Text Language Detect!"

check_requirements
parse_env ".env.dist" ".env"
. ./.env
echo -e "${GREEN}Configuration done!${RESET}" > /dev/tty

block_info "Build Docker"
# Pull all container in parallel to optimize your time
docker-compose pull
docker-compose build
echo -e "${GREEN}Docker is built with success!${RESET}" > /dev/tty

block_info "Install dependencies"
install_composer
echo -e "${GREEN}Dependencies installed with success!${RESET}" > /dev/tty
