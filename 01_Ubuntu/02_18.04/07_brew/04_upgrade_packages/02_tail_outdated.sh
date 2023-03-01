#!/bin/bash

BASE_PATH="outdated.txt"
TAIL_PATH="outdated_tail.txt"

echo "#02 1 CMD : rm $TAIL_PATH"
if [ -f $TAIL_PATH ]; then
  rm $TAIL_PATH
fi

echo "#02 2 CMD : tail -1 $BASE_PATH"
tail -1 $BASE_PATH > $TAIL_PATH

echo "#02 3 CMD : cat $TAIL_PATH"
cat $TAIL_PATH
