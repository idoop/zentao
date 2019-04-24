FROM buildpack-deps:18.04-curl 
MAINTAINER Swire Chen <idoop@msn.cn>

ENV ZENTAO_VER=8.3
ARG ZENTAO_URL=http://dl.cnezsoft.com/zentao/pro${ZENTAO_VER}/ZenTaoPMS.pro${ZENTAO_VER}.zbox_64.tar.gz

COPY docker-entrypoint /usr/local/bin/docker-entrypoint

RUN apt-get update \
    && apt-get install -y wget php-ldap --no-install-recommends \
    && rm -r /var/lib/apt/lists/* \
    && wget -q ${ZENTAO_URL} -O zbox.tar.gz && mv zbox.tar.gz /tmp \
    && chmod +x           /usr/local/bin/docker-entrypoint

HEALTHCHECK --start-period=20s --interval=45s --timeout=3s CMD wget http://localhost/ -O /dev/null || exit 1

EXPOSE 80 3306

ENTRYPOINT ["docker-entrypoint"]
