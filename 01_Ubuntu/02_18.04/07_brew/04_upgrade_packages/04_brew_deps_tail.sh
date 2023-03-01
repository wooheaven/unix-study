#!/bin/bash

DEPS_PATH="outdated_tail_deps.txt"
LAST_PATH="outdated_tail_deps_tail.txt"

echo "#04 1 CMD : rm $LAST_PATH"
if [ -f $LAST_PATH ]; then
  rm $LAST_PATH
fi

echo "#04 2 CMD : tail -1 $DEPS_PATH"
tail -1 $DEPS_PATH | awk 'BEGIN{FS=OFS=" "} {print $NF}' > $LAST_PATH
# tail -1 $DEPS_PATH | awk 'BEGIN{FS=OFS=" "} $NF ~ /[:alnum:]/ {print $NF}' > $LAST_PATH


echo "#04 3 CMD : cat $LAST_PATH"
cat $LAST_PATH
