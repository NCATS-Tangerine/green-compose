#!/bin/bash

set -x
set -e

# Configure the Python path.
export PYTHONPATH=$PWD/reasoner-tools

if [ "x$GIT_PULL" == "xtrue" ]; then
    echo pulling latest source.
    cd reasoner-tools
    git pull
    cd greent/api
fi

gunicorn \
        --port=$APP_PORT \
        --workers=$NUM_WORKERS \
        uberonto_wsgi:app

echo Exiting.
exit 0
