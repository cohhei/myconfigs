#!/bin/bash
set -Ceu
configs_dir=~/Library/Application\ Support/Code/User
for file in `\find . -type f ! -name '*.sh'`; do
  echo $file
  sub_dir=$(basename $(dirname $file))
  if [ $sub_dir = '.' ]; then
    ln -f $file ~/Library/Application\ Support/Code/User
  else
    ln -f $file ~/Library/Application\ Support/Code/User/$sub_dir
  fi
done
