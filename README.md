# Docker Image for Zentao
[![Docker Build Status](https://img.shields.io/docker/build/idoop/zentao.svg)](https://hub.docker.com/r/idoop/zentao/)
[![Docker Pulls](https://img.shields.io/docker/pulls/idoop/zentao.svg)](https://hub.docker.com/r/idoop/zentao/)
[![Docker Automated build](https://img.shields.io/docker/automated/idoop/zentao.svg)](https://hub.docker.com/r/idoop/zentao/)
[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/idoop/zentao/latest.svg)](https://hub.docker.com/r/idoop/zentao/)
[![ImageLayers Layers](https://img.shields.io/imagelayers/layers/idoop/zentao/latest.svg)](https://hub.docker.com/r/idoop/zentao/)

Auto build docker image for zentao(禅道),include open source edition and pro edition.

DockerHub:[https://hub.docker.com/r/idoop/zentao/](https://hub.docker.com/r/idoop/zentao/)

Office Support:[http://www.zentao.net/](http://www.zentao.net/)
### Tags

**Open soure edition**

- `10.5`,`latest`
- `10.4`
- `10.3`
- `10.1`
- `10.0`
- `9.8.3`,`9.8`
- `9.7`
- `9.6.3`

**Pro edition**

- `pro-7.3`,`pro`
- `pro-7.1`
- `pro-6.7.3`

### QuickStart

open soure edition:
``` bash
mkdir -p /data/zbox && docker run -d -p 80:80 -p 3306:3306 \
        -e USER="root" -e PASSWD="password" \
        -e BIND_ADDRESS="false" \
        -e SMTP_HOST="163.177.90.125 smtp.exmail.qq.com" \
        -v /data/zbox/:/opt/zbox/ \
        --name zentao-server \
        idoop/zentao:latest
```

pro edition:
``` bash
mkdir -p /data/zbox && docker run -d -p 80:80 -p 3306:3306 \
        -e USER="root" -e PASSWD="password" \
        -e BIND_ADDRESS="false" \
        -e SMTP_HOST="163.177.90.125 smtp.exmail.qq.com" \
        -v /data/zbox/:/opt/zbox/ \
        --name zentao-server-pro \
        idoop/zentao:pro
```

Note: Make sure your Host feed available on either port `80` or `3306`.

### Environment configuration

* `USER` : set the web login database Adminer account.
* `PASSWD` : set the web login database Adminer password. 
* `BIND_ADDRESS` : if set value with false,the Mysql server will not bind-address.
* `SMTP_HOST` : set the smtp server IP and host.(If can't send mail,it will be helpful.)

Note: The zentao administrator account is **admin**,and init password is **123456**.
      And MySQL root account password is **123456**,please change password when you first login.

### Upgrade Version

> If you want upgrade the zbox version, just use the newest code to cover the zbox source code under the path `$volume/zbox/app/zentao/`,instead of useing latest docker image.
> [See Detail](https://www.zentao.net/book/zentaopmshelp/67.html)

### Building the image

Clone this git,modify `Dockerfile` or `docker-entrypoint` if you want.
Then execute the following command:

```bash
docker build -t zentao .
```
