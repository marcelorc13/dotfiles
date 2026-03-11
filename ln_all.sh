#!/bin/bash

# Get the directory where this script lives (your .dotfiles folder)
DOTFILES_DIR=$(pwd)

echo "Linking dotfiles from $DOTFILES_DIR..."

# 1. Ensure the ~/.config directory exists
mkdir -p ~/.config

# Link Neovim 
ln -sfn "$DOTFILES_DIR/nvim" ~/.config/
echo "✓ Neovim linked to ~/.config/nvim"

# Link Tmux 
ln -sf "$DOTFILES_DIR/.tmux.conf" ~/.tmux.conf
echo "✓ Tmux linked to ~/.tmux.conf"

# Link Zshrc 
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
echo "✓ Zshrc linked to ~/.zshrc"

# Link Aliases 
ln -sf "$DOTFILES_DIR/.aliases" ~/.aliases
echo "✓ Aliases linked to ~/.aliases"

if [[ ! -f ~/.secrets ]]; then
    echo "⚠️  ~/.secrets not found! Create it with your API keys:"
    echo "echo 'export GEMINI_API_KEY=your_key_here' >> ~/.secrets"
    echo "chmod 600 ~/.secrets"
fi

echo "Done! Restart your terminal or source your configs."
