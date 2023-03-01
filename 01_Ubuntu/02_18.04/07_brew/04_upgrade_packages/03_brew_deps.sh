#!/bin/bash

TAIL_PATH="outdated_tail.txt"
DEPS_PATH="outdated_tail_deps.txt"

echo "#03 1 CMD : rm $DEPS_PATH"
if [ -f $DEPS_PATH ]; then
  rm $DEPS_PATH
fi

echo "#03 2 CMD : brew deps $BASE_PATH"
cat $TAIL_PATH | xargs -rn1 echo "#2-1 CMD : brew deps --tree"
cat $TAIL_PATH | xargs -rn1 brew deps --tree > $DEPS_PATH
# cat $TAIL_PATH | xargs -rn1 brew deps --include-build --tree > $DEPS_PATH

echo "#03 3 CMD : remove empty line $DEPS_PATH"
sed -i '/^$/d' $DEPS_PATH

echo "#03 4 CMD : tail $DEPS_PATH"
cat -n $DEPS_PATH | tail
