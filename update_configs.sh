#!/bin/bash

# Update the .zshrc file with the correct paths
rm -rf ~/.zshrc
cp .zshrc ~/.zshrc
source ~/.zshrc
echo "Updated .zshrc file with the correct paths"

# update neovim configuration
rm -rf ~/.config/nvim/
cp -r nvim ~/.config/
echo "Updated neovim configuration"

# update tmux configuration
rm -rf ~/.tmux.conf
cp .tmux.conf ~/.tmux.conf
echo "Updated tmux configuration"
