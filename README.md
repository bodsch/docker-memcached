docker-memcached
=================

A Docker container for an complete memcached Stack.


# Status

[![Docker Pulls](https://img.shields.io/docker/pulls/bodsch/docker-memcached.svg?branch=1705-03)][hub]
[![Image Size](https://images.microbadger.com/badges/image/bodsch/docker-memcached.svg?branch=1705-03)][microbadger]
[![Build Status](https://travis-ci.org/bodsch/docker-memcached.svg?branch=1705-03)][travis]

[hub]: https://hub.docker.com/r/bodsch/docker-memcached/
[microbadger]: https://microbadger.com/images/bodsch/docker-memcached
[travis]: https://travis-ci.org/bodsch/docker-memcached


# Build
Your can use the included Makefile.

To build the Container: `make build`

To remove the builded Docker Image: `make clean`

Starts the Container: `make run`

Starts the Container with Login Shell: `make shell`

Entering the Container: `make exec`

Stop (but **not kill**): `make stop`

History `make history`


# Docker Hub

You can find the Container also at  [DockerHub](https://hub.docker.com/r/bodsch/docker-memcached/)

## get

    docker pull bodsch/docker-memcached

## run

    docker run \
      --rm \
      --interactive \
      --publish=11211 \
      --tty \
      --hostname=memcached \
      --name=memcached \
      bodsch/docker-memcached


# Ports
 - 11211: standard Port for Memcached

