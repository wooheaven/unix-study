#!/bin/bash

LAST_PATH="outdated_tail_deps_tail.txt"

# brew upgrade $1
cat $LAST_PATH | xargs -rn1 echo "#05 1 CMD : brew upgrade"
cat $LAST_PATH | xargs -rn1 brew upgrade
