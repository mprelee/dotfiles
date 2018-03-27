#!/bin/bash

# .makesymlinks.sh
# This script creates symlinks from the home directory to any desired dotfiles 
# in ~/dotfiles.
# Modified from
# https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh

# Variables

dotfiles_dir=~/dotfiles # dotfiles directory
backup_dir=~/backup_dotfiles # old dotfiles backup directory
files="bashrc vimrc dircolors tmux.conf atom/config.cson" # list of files/folders to symlink in homedir
folders="atom"

# create dotfiles_old in homedir
echo -n "Creating $backup_dir for backup of any existing dotfiles in ~ ..."
mkdir -p $backup_dir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dotfiles_dir directory ..."
cd $dotfiles_dir
echo "done"

for folder in $folders; do
    mkdir -p "$dotfiles_dir/$folder"
    mkdir -p "$backup_dir/$folder"
done

for file in $files; do
  echo "Moving any existing dotfiles from ~ to $backup_dir"
  mv ~/.$file $backup_dir/
  echo "Creating symlink to $file in home directory."
  ln -s $dotfiles_dir/$file ~/.$file
done
