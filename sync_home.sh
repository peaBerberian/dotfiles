#!/bin/bash

cd _home_
for f in `find . -mindepth 1 ! -type d`; do
  if [[ -f $f ]]; then
    if [[ -f ~/$f ]]; then
      cp -v ~/$f ./$f
    fi
  fi
done
cd ..
