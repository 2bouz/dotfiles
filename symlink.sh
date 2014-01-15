#!/bin/bash

DIRS=`ls -F | grep /`

for DIR in $DIRS
do
    DOTFILES=`ls $HOME/dotfiles/$DIR`
    for DOTFILE in $DOTFILES
    do
        if [ ! -e $HOME/.$DOTFILE ]; then
            ln -s $HOME/dotfiles/$DIR/$DOTFILE $HOME/.$DOTFILE
            echo "$HOME/.$DOTFILE created"
        else
            echo "$HOME/.$DOTFILE already exists"
        fi
    done
done

