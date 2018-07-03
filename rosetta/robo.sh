#!/bin/bash

#set -e
set -x 

cd /code
export PYTHONPATH=$PWD/reasoner-tools:$PWD/robokop-build

#seriously?
while [ ! "$(echo exit | telnet neo4j 7687 2>&1 | grep -c "Connected to")" == "1" ]; do
    echo exit | telnet neo4j 7687
    echo waiting for database ready state...
    sleep 1
done

python $PWD/reasoner-tools/greent/rosetta.py \
       --debug \
       --delete-type-graph \
       --initialize-type-graph \
       --conf=greent-compose.conf

python $PWD/reasoner-tools/greent/rosetta.py \
       --debug \
       --test \
       --conf=greent-compose.conf

exit 0
