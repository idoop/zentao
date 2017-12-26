# Docker Image for Zentao

Auto build docker image for zentao(禅道).

Zentao
- Version: `9.7` *Linux_X64*


### QuickStart

```bash
docker run -d -p 80:80 -p 3306:3306 \
        -e USER="root" -e PASSWD="password" \
        -e BIND_ADDRESS="false" \
        -v /opt/zbox/:/opt/zbox/ \
        --name zentao-server \
        idoop/zentao
```

Note: Make sure your Host feed available on either port `80` or `3306`.

### Environment configuration

* `USER` : sets the web login database Adminer account.
* `PASSWD` : sets the web login database Adminer password. 
* `BIND_ADDRESS` : if set value with false,the Mysql server will not bind-address.

### Building the image

Clone this git,modify `Dockerfile` or `docker-entrypoint` if you want.
Then execute the following command:

```bash
docker build -t zentao .
```
        
        
