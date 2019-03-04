#!/bin/bash

set -x
set -e

# Configure the Python path.
export PYTHONPATH=$PWD/reasoner-tools

if [ "x$GIT_PULL" == "xtrue" ]; then
    echo pulling latest source.
    cd reasoner-tools
    git pull
    cd ..
fi

python $PWD/reasoner-tools/greent/api/uberonto.py \
        --port=$APP_PORT \
        --data=$DATA_DIR

echo Exiting.
exit 0
