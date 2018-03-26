#!/bin/bash

set -x
set -e

# Configure the Python path.
export PYTHONPATH=$PWD/robokop-interfaces:$PWD/robokop-build

if [ "x$GIT_PULL" == "xtrue" ]; then
    echo pulling latest source.
    cd robokop-interfaces
    git pull
    cd ..
fi

ontologies=$(find $DATA_DIR -name "*.obo" -print | wc -l)
if [ "$ontologies" == "0" ]; then

    # Reject empty ontology store.
    echo Configure the data directory via the DATA_DIR environment setting to be a directory containing obo ontologies.
    exit 1
    
else

    # Execute the smartAPI application.
    echo Starting app with ontologies:
    find $DATA_DIR -name "*.obo" -print
    ls $PWD/robokop-interfaces
    ls $PWD/robokop-interfaces/greent
    ls $PWD/robokop-interfaces/greent/api
    ls $PWD/robokop-interfaces/greent/api/onto.py
    python $PWD/robokop-interfaces/greent/api/onto.py \
           --port=$APP_PORT \
           --data=$DATA_DIR
fi

echo Exiting.
exit 0
