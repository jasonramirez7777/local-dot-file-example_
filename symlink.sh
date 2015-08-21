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
    read -p "Delete ~/.$file and create new symlink for $file? [y/n]" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      rm ~/.$file
      ln -s $PWD/$file ~/.$file
    fi
  fi

  if [ ! -e ~/.$file ]
  then
    echo ~/.$file does not exist. Creating new symlink.
    ln -s $PWD/$file ~/.$file
  fi
done
