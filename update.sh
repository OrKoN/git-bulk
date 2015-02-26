#!/bin/bash

for DIR in `find .  -maxdepth 1 -mindepth 1 -type d`
do
  if [ -d "$DIR" ]; then
    DIR=${DIR:2}
    echo "$DIR"
    (cd "./$DIR" && pwd &&  git pull)
  fi
done
