#!/bin/bash

set -x
set -e

# Configure the Python path.
export PYTHONPATH=$PWD/reasoner-tools

if [ "x$GIT_PULL" == "xtrue" ]; then
    echo pulling latest source.
    cd reasoner-tools
    git pull
    git checkout Phil_onto_update
    cd greent/api
fi

cd /code/reasoner-tools/greent/api

gunicorn \
        --bind=0.0.0.0:$APP_PORT \
        --workers=$NUM_WORKERS \
        uberonto_wsgi:app

echo Exiting.
exit 0
