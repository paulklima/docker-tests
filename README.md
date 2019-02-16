# docker-test files

installed under:

`/opt/docker/docker-files`

##### Installed:
- [traefik-proxy](#2-traefik-proxy) - [[http://localhost:8080]](http://localhost:8080)
- [~~nginx-proxy~~](#2-nginx-proxy)- [[http://whoami.localhost]](http://whoami.localhost)
- [portainer](#2-portainer) - [[http://portainer.localhost]](http://portainer.localhost)
- [php-fpm-test](#2-php-fpm-test) - [[http://php-fpm-test.localhost]](http://php-fpm-test.localhost) 


## traefik-proxy

Find the documentation at: https://docs.traefik.io/configuration/backends/docker/

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
    
    labels:
      - traefik.enable=true                         # enabele or disable
      - traefik.frontend.rule=Host:nginx.localhost  # subdomain
      - traefik.port=80                             # the port of the container
      - traefik.docker.network=proxy-network        # the traefik network
      # if the container should be saved by basic auth
      # - traefik.frontend.auth.basic.users=info:{SHA}eoX0dku9ba8cNUXvu/DyeabcC+s=
      
    networks: 
      - default
      - proxy-network

networks:
  default:
  proxy-network:
    external: true
```


## ~~nginx-proxy~~
**Not used @see traefik-proxy**

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
 
 user: admin  
 pass: asdfghjk

## php-fpm-test

Testing the setup for php-fpm and nginx. \
Link: [http://php-fpm-test.localhost](http://php-fpm-test.localhost)            

