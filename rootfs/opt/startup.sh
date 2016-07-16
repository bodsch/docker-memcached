#!/bin/sh
#


if [ ${DEBUG} ]
then
  set -x
fi

# -------------------------------------------------------------------------------------------------

startSupervisor() {

  echo -e "\n Starting Supervisor.\n\n"

  if [ -f /etc/supervisord.conf ]
  then
    /usr/bin/supervisord -c /etc/supervisord.conf >> /dev/null
  fi
}

# -------------------------------------------------------------------------------------------------

run() {

  startSupervisor

}

run

# EOF
