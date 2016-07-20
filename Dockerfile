FROM bodsch/docker-alpine-base:3.4

MAINTAINER Bodo Schulz <bodo@boone-schulz.de>

LABEL version="1.0.0"

EXPOSE 11211

# ---------------------------------------------------------------------------------------

RUN \
  apk --quiet --no-cache update && \
  apk --quiet --no-cache add \
    memcached && \
  rm -rf \
    /var/cache/apk/*

ADD rootfs/ /

CMD [ "/opt/startup.sh" ]

# EOF
