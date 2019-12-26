#!/usr/bin/env bash


docker-compose --file ./php-fpm-test/docker-compose.yml down
docker-compose --file ./dokuwiki/docker-compose.yml down
docker-compose --file ./xwiki/docker-compose.yml down
docker-compose --file ./vaultier/docker-compose.yml down

docker-compose --file ./portainer/docker-compose.yml down
docker-compose --file ./traefik/docker-compose.yml down
