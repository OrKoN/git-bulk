#!/bin/bash

MESSAGE=$1

if [ -z "$1" ]
  then
    MESSAGE="Minor Update"
fi

for DIR in `find .  -maxdepth 1 -mindepth 1 -type d`
do
  if [ -d "$DIR" ]; then
    DIR=${DIR:2}
    echo "$DIR"
    (cd "./$DIR" && pwd &&  git add . && git commit -m "$MESSAGE" -a  && git push origin master)
  fi
done
