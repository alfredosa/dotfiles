#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status.

# Backup and update the .zshrc file
if [ -f ~/.zshrc ]; then
    cp ~/.zshrc ~/.zshrc.backup
    echo "Backed up the original .zshrc to .zshrc.backup"
fi
cp .zshrc ~/.zshrc
echo "Updated .zshrc file with the correct paths"

# Update Neovim configuration
if [ -d ~/.config/nvim ]; then
    rm -rf ~/.config/nvim.backup
    mv ~/.config/nvim ~/.config/nvim.backup
    echo "Backed up the original Neovim config to nvim.backup"
fi
mkdir -p ~/.config
cp -r nvim ~/.config/
echo "Updated Neovim configuration"

# Update tmux configuration
if [ -f ~/.tmux.conf ]; then
    cp ~/.tmux.conf ~/.tmux.conf.backup
    echo "Backed up the original .tmux.conf to .tmux.conf.backup"
fi
cp .tmux.conf ~/.tmux.conf
echo "Updated tmux configuration"

echo "Please remember to 'exec zsh' or start a new shell session to apply the updated configurations. Thanks and goodbye!"

