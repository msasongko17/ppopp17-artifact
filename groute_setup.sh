#!/bin/sh

# Sets up environment for artifact evaluation

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
AEROOT=$SCRIPTPATH

################################################
# BUILD PROJECT

echo "==== Building Groute ===="

cd $AEROOT/code/groute
mkdir build
cd build && cmake .. && make -j8 && echo "1" >> $AEROOT/groute.exists

echo "==== Build Complete ===="

