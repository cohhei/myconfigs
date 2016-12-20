#!/bin/bash
cd files
for file in `\find . -maxdepth 1 -type f`; do
  ln $file ~/
  echo $file
done
git config --global core.excludesfile ~/.gitignore_global
