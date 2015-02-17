#!/bin/bash

set -e

mkdir -p ~/.dotfiles
rm -f ~/.bash_profile
touch ~/.bash_profile

dir="$(dirname $0)"

cat $dir/../src/profile/autocomplete.sh >> ~/.bash_profile
cat $dir/../src/profile/autocomplete/git.sh >> ~/.bash_profile
cat $dir/../src/profile/terminal.sh >> ~/.bash_profile
cat $dir/../src/profile/alias.sh >> ~/.bash_profile
cat $dir/../src/profile/path.sh >> ~/.bash_profile

rm -f ~/.gitconfig
rm -f ~/.gitignore
cp -f $dir/../etc/.gitconfig ~/.gitconfig
cp -f $dir/../etc/.gitignore ~/.gitignore

mkdir -p ~/Library/LaunchAgents