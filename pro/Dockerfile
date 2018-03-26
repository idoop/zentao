FROM ubuntu:latest
MAINTAINER Swire Chen <idoop@msn.cn>

ENV ZENTAO_URL http://dl.cnezsoft.com/zentao/pro6.7.1/ZenTaoPMS.pro6.7.1.zbox_64.tar.gz

RUN apt-get update && apt-get install -y wget php-ldap \
    --no-install-recommends && rm -r /var/lib/apt/lists/*

RUN wget ${ZENTAO_URL} -O zbox.tar.gz && mv zbox.tar.gz /tmp 

COPY docker-entrypoint /usr/local/bin/docker-entrypoint

RUN chmod +x           /usr/local/bin/docker-entrypoint

EXPOSE 80 3306

ENTRYPOINT ["docker-entrypoint"]
