FROM ubuntu:xenial
MAINTAINER Swire Chen <idoop@msn.cn>

ARG ZENTAO_URL=http://dl.cnezsoft.com/zentao/10.3/ZenTaoPMS.10.3.stable.zbox_64.tar.gz

COPY docker-entrypoint /usr/local/bin/docker-entrypoint

RUN apt-get update \
    && apt-get install -y wget php-ldap --no-install-recommends \
    && rm -r /var/lib/apt/lists/* \
    && wget ${ZENTAO_URL} -O zbox.tar.gz && mv zbox.tar.gz /tmp \
    && chmod +x           /usr/local/bin/docker-entrypoint

EXPOSE 80 3306

ENTRYPOINT ["docker-entrypoint"]
