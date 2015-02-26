#!/bin/bash

T=$1

for DIR in `find .  -maxdepth 1 -mindepth 1 -type d`
do
  if [ -d "$DIR" ]; then
    DIR=${DIR:2}
    echo "$DIR : TAG $T"
    (cd "./$DIR" && git tag -d $T && git push origin :refs/tags/$T)
  fi
done
