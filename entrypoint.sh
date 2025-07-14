#!/usr/bin/dumb-init /bin/bash

echo "Removing previous configuration (if any)"
./config.sh remove

/entrypoint-base.sh $*
