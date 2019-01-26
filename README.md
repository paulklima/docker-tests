# docker-files

installed under:

`/opt/docker/docker-files`

#####Installed:
- nginx-proxy


## nginx-proxy

The default proxy for all services

use with 
```
  environment:
    - VIRTUAL_HOST=<subdomain>.localhost

networks:
  default:
    external:
      name: nginx-proxy-net
```
                