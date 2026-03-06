#!/bin/bash

# Get the directory where this script lives (your .dotfiles folder)
DOTFILES_DIR=$(pwd)

echo "Linking dotfiles from $DOTFILES_DIR..."

# 1. Ensure the ~/.config directory exists
mkdir -p ~/.config

# 2. Link Neovim 
ln -sfn "$DOTFILES_DIR/nvim" ~/.config/nvim
echo "✓ Neovim linked to ~/.config/nvim"

# 3. Link Tmux 
ln -sf "$DOTFILES_DIR/.tmux.conf" ~/.tmux.conf
echo "✓ Tmux linked to ~/.tmux.conf"

echo "Done! Restart your terminal or source your configs."
