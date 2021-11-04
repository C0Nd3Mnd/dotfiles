#!/bin/bash

files=".bashrc .toprc .gitconfig"

cd "$(dirname "$0")"

for file in files
do
  rm -f $HOME/$file
  ln -s ./$file $HOME/$file
done
