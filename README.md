# docker-test files

installed under:

`/opt/docker/docker-files`

##### Installed:
- [nginx-proxy](#2-nginx-proxy)- [[http://whoami.localhost]](http://whoami.localhost)
- [portainer](#2-portainer) - [[http://portainer.localhost]](http://portainer.localhost)
- [php-fpm-test](#2-php-fpm-test) - [[http://php-fpm-test.localhost]](http://php-fpm-test.localhost) 


## nginx-proxy

The default proxy for all services. Test with [http://whoami.localhost](http://whoami.localhost)

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

## portainer

Link: [http://portainer.localhost](http://portainer.localhost)

## php-fpm-test

Testing the setup for php-fpm and nginx. \
Link: [http://php-fpm-test.localhost](http://php-fpm-test.localhost)            

