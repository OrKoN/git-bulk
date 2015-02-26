#!/bin/bash

for DIR in `find .  -maxdepth 1 -mindepth 1 -type d`
do
  if [ -d "$DIR" ]; then
    DIR=${DIR:2}
    echo "$DIR"
    mv "$DIR/src/js/"* "$DIR/"
    mv "$DIR/src/templates" "$DIR/"
    touch "$DIR/main.js"
    touch "$DIR/package.json"
    rm "$DIR/yajspm.json"
    rm -rf "$DIR/src"
  fi
done
