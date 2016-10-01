FROM bodsch/docker-alpine-base:1610-01

MAINTAINER Bodo Schulz <bodo@boone-schulz.de>

LABEL version="1.1.0"

EXPOSE 11211

# ---------------------------------------------------------------------------------------

RUN \
  apk --quiet --no-cache update && \
  apk --quiet --no-cache upgrade && \
  apk --quiet --no-cache add \
    memcached && \
  rm -rf \
    /tmp/* \
    /var/cache/apk/*

COPY rootfs/ /

CMD [ "/opt/startup.sh" ]

# EOF
