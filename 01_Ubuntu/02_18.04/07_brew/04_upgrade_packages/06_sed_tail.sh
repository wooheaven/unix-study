#!/bin/bash

BASE_PATH="outdated.txt"
TAIL_PATH="outdated_tail.txt"
DEPS_PATH="outdated_tail_deps.txt"
LAST_PATH="outdated_tail_deps_tail.txt"

echo "#06 1 CMD : cat $LAST_PATH to WORD"
WORD=$(cat $LAST_PATH)

echo "#06 2 CMD : sed -i '/$WORD/d' $DEPS_PATH"
sed -i "/$WORD/d" "$BASE_PATH"
sed -i "/$WORD/d" "$TAIL_PATH"
sed -i "/$WORD/d" "$DEPS_PATH"

echo "#06 3 CMD : remove empty line $DEPS_PATH"
sed -i '/^$/d' $BASE_PATH
sed -i '/^$/d' $TAIL_PATH
sed -i '/^$/d' $DEPS_PATH

echo "#06 4 CMD : check tail -5 $DEPS_PATH"
cat -n $DEPS_PATH | tail -5

echo "#06 5 CMD : rm $LAST_PATH"
if [ -f $LAST_PATH ]; then
  rm $LAST_PATH
fi