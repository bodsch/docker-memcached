#!/bin/sh
#

MEMCACHED_MEMORY=${MEMCACHED_MEMORY:-8}

/usr/bin/memcached -l 0.0.0.0 -m ${MEMCACHED_MEMORY} -u memcached

# EOF
