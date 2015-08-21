#!/bin/bash

Files=(
  "tmux.conf.local"
  "vimrc.bundles.local"
  "vimrc.local"
  "zshrc.local"
  "gitconfig.local"
)

for file in "${Files[@]}"
do
  if [ -h ~/.$file ]
  then
    read -p "Delete ~/.$file? [y/n]" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      rm ~/.$file
      ln -s $PWD/$file ~/.$file
    fi
  fi
done
