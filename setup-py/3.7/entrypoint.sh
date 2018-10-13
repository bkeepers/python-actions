#!/bin/bash

set -e

if [ -n "$APT_PACKAGES" ]; then
  apt-get install -yy $APT_PACKAGES
fi

if [ -n "$WORKDIR" ]; then
  cd $WORKDIR
fi

bash -c "python setup.py $*"
