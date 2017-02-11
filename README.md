docker-memcached
=================

A Docker container for an complete memcached Stack. Usable in combination with Grafana.

# Status

[![Build Status](https://travis-ci.org/bodsch/docker-memcached.svg?branch=1702-02)](https://travis-ci.org/bodsch/docker-memcached)

# Build
Your can use the included Makefile.

To build the Container: ```make build```

To remove the builded Docker Image: ```make clean```

Starts the Container: ```make run```

Starts the Container with Login Shell: ```make shell```

Entering the Container: ```make exec```

Stop (but **not kill**): ```make stop```

History ```make history```

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

# supported Environment Vars

MEMCACHED_MEMORY - in MiB (default: ```8```)

# Ports
 - 11211: standard Port for Memcached

