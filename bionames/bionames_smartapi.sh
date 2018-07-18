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

#ontologies=$(find $DATA_DIR -name "*.obo" -print | wc -l)
#if [ "$ontologies" == "0" ]; then

    # Reject empty ontology store.
    #echo Configure the data directory via the DATA_DIR environment setting to be a directory containing obo ontologies.
    #exit 1
    
#else

    # Execute the smartAPI application.
  #  echo Starting app with ontologies:
  #  python $PWD/reasoner-tools/greent/api/onto.py \
 #          --port=$APP_PORT \
  #         --data=$DATA_DIR
#fi

echo Exiting.
exit 0
