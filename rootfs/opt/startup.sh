#!/bin/sh
#


if [ ${DEBUG} ]
then
  set -x
fi

MEMCACHED_MEMORY=${MEMCACHED_MEMORY:-8}

# -------------------------------------------------------------------------------------------------

cfgFile="/etc/supervisor.d/memcached.ini"

createConfig() {

  sed -i \
    -e "s/%MEMORY%/${MEMCACHED_MEMORY}/" \
    ${cfgFile}
}


startSupervisor() {

  echo -e "\n Starting Supervisor.\n\n"

  if [ -f /etc/supervisord.conf ]
  then
    /usr/bin/supervisord -c /etc/supervisord.conf >> /dev/null
  fi
}

# -------------------------------------------------------------------------------------------------

run() {

  createConfig

  startSupervisor

}

run

# EOF
