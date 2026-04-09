#!/bin/bash

# Get the directory where this script lives (your .dotfiles folder)
DOTFILES_DIR=$(pwd)

echo "Linking dotfiles from $DOTFILES_DIR..."

# 1. Ensure the ~/.config directory exists
mkdir -p ~/.config

# Link Kitty 
ln -sfn "$DOTFILES_DIR/kitty" ~/.config/
echo "✓ Kitty configs linked to ~/.config/kitty"

# Link Starship 
ln -sfn "$DOTFILES_DIR/starship.toml" ~/.config/
echo "✓ Starship configs linked to ~/.config/starship.toml"

# Link Neovim 
ln -sfn "$DOTFILES_DIR/nvim" ~/.config/
echo "✓ Neovim linked to ~/.config/nvim"

# Link Yazi 
ln -sfn "$DOTFILES_DIR/yazi" ~/.config/
echo "✓ Yazi linked to ~/.config/yazi"

# Link Github extensions 
ln -sfn "$DOTFILES_DIR/gh-dash" ~/.config/
ln -sfn "$DOTFILES_DIR/diffnav" ~/.config/
echo "✓ Git and Github extensions linked to ~/.config/..."

ln -sfn "$DOTFILES_DIR/lazygit" ~/.config/
echo "✓ Lazygit configs linked to ~/.config/lazygit"

# Link Tmux 
ln -sf "$DOTFILES_DIR/.tmux.conf" ~/.tmux.conf
echo "✓ Tmux linked to ~/.tmux.conf"

# Link Zshrc 
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
echo "✓ Zshrc linked to ~/.zshrc"

# Link Aliases 
ln -sf "$DOTFILES_DIR/.aliases" ~/.aliases
echo "✓ Aliases linked to ~/.aliases"

echo "Done! Restart your terminal or source your configs."
