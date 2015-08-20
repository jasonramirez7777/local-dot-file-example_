#!/usr/bin/env bash

tmuxConf=".tmux.conf.local"
vimrcBundles=".vimrc.bundles.local"
vimrc=".vimrc.local"
zshrc=".zshrc.local"

for file in $tmuxConf $vimrcBundles $vimrc $zshrc
do
  if [ -e ~/$file ]
  then
    #delete path_file if it exists
    read -p "Delete ~/$file? [y/n]" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      rm ~/$file
    fi

    #symbolic link source_file to path_file
    ln -s $PWD/$file ~/$file
  fi
done
