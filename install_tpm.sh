#!/bin/bash

TPM_DIR="$HOME/.tmux/plugins/tpm"

if [ -d "$TPM_DIR" ]; then
    rm -rf "$TPM_DIR"
fi

mkdir -p "$HOME/.tmux/plugins"

git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"

if [ $? -eq 0 ]; then
    echo "✅ TPM successfully installed to $TPM_DIR"
    echo "Next steps:"
    echo "1. Start a fresh tmux session (or run 'tmux source ~/.tmux.conf')"
    echo "2. Press your prefix (Ctrl-b) + capital 'I' to install your plugins."
else
    echo "❌ Error: Failed to clone TPM. Please check your internet connection."
    exit 1
fi
