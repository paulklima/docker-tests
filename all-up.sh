#!/usr/bin/env bash


docker-compose --file ./traefik/docker-compose.yml up -d
docker-compose --file ./portainer/docker-compose.yml up -d
docker-compose --file ./php-fpm-test/docker-compose.yml up -d
docker-compose --file ./dokuwiki/docker-compose.yml up -d
docker-compose --file ./xwiki/docker-compose.yml up -d
docker-compose --file ./vaultier/docker-compose.yml up -d
