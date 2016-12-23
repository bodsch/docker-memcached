
FROM bodsch/docker-alpine-base:1612-01

MAINTAINER Bodo Schulz <bodo@boone-schulz.de>

LABEL version="1.1.2"

EXPOSE 11211

# ---------------------------------------------------------------------------------------

RUN \
  apk --no-cache update && \
  apk --no-cache upgrade && \
  apk --no-cache add \
    memcached && \
  rm -rf \
    /tmp/* \
    /var/cache/apk/*

COPY rootfs/ /

CMD /opt/startup.sh

# EOF
