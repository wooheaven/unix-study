#!/bin/bash

BASE_PATH="outdated.txt"

echo "#01 1 CMD : rm $BASE_PATH"
if [ -f $BASE_PATH ]; then
  rm $BASE_PATH
fi

echo "#01 2 CMD : brew outdated > $BASE_PATH"
brew outdated > $BASE_PATH

echo "#01 3 CMD : cat $BASE_PATH"
cat $BASE_PATH
