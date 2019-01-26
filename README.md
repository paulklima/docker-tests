# docker-files

installed under:

`/opt/docker/docker-files`

#####Installed:
- [nginx-proxy](#nginx-proxy)
- [php-fpm-test](php-fpm-test)


## nginx-proxy

The default proxy for all services. \
Test with http://whoami.localhost

Use external network:
```bash
docker network create nginx-proxy-network
```

To use declare:
```
version: '3'

services:
  db:
    [...]
    
    networks: 
      - default
      
  nginx:
    [...]
    
    environment:
      - VIRTUAL_HOST=php-fpm-test.localhost
    networks: 
      - default
      - nginx-proxy-network

networks:
  default:
  nginx-proxy-network:
    external: true
```

## php-fpm-test

Testing the setup for php-fpm and nginx. \
Link: http://php-fpm-test.localhost            

