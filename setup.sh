#!/bin/bash

files=".bashrc .toprc .gitconfig"

cd "$(dirname "$0")"

echo Setting up dotfiles in $HOME...

for file in $files; do
  rm -f $HOME/$file
  ln -s $PWD/$file $HOME/$file
done
