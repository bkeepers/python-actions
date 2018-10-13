#!/bin/bash

set -e

if [ -z "$TWINE_USERNAME" ]; then
    if [ -z "$TWINE_PASSWORD" ]; then
      echo "\$TWINE_USERNAME and \$TWINE_PASSWORD must be defined"
      exit 1
    else
      echo "\$TWINE_USERNAME must be defined"
      exit 1
    fi
elif [ -z "$TWINE_PASSWORD" ]; then
    echo "\$TWINE_PASSWORD must be defined"
    exit 1
fi

bash -c "twine $*"
