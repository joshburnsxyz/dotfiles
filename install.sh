#!/bin/sh

# Install for $HOME
for entry in `ls $HOME`; do
    linkTarget="~/$entry"
    echo $linkTarget
    ln -s "$(pwd)/home/$entry" "$linkTarget"
done


# Install for ~/.config
mkdir -pv ~/.config
for entry in `ls .config`; do
    linkTarget="~/.config/$entry"
    echo $linkTarget
    ln -s "$(pwd)/.config/$entry" "$linkTarget"
done
