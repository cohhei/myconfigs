#!/bin/bash
set -Ceu
for file in `\find . -maxdepth 1 -type f ! -name '*.sh'`; do
  ln -f $file ~/
  echo $file
done
git config --global core.excludesfile ~/.gitignore_global
