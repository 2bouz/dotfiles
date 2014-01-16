#!/bin/bash

DIRS=`ls -F | grep /`
PWD=`pwd`

for DIR in $DIRS
do
    DOTFILES=`ls $DIR`
    for DOTFILE in $DOTFILES
    do
        if [ ! -e $HOME/.$DOTFILE ]; then
            ln -s $PWD/$DIR$DOTFILE $HOME/.$DOTFILE
            echo "$HOME/.$DOTFILE created"
        else
            echo "$HOME/.$DOTFILE already exists"
        fi
    done
done

