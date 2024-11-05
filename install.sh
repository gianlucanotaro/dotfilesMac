#!/bin/bash

# Remove existing Neovim and tmux configurations, if any, and create symlinks
echo "Setting up Neovim configuration..."
rm -rf ~/.config/nvim
ln -s "$(pwd)/nvim" ~/.config/nvim
echo "Neovim configuration linked."

echo "Setting up tmux configuration..."
rm -f ~/.tmux.conf
ln -s "$(pwd)/tmux.conf" ~/.tmux.conf
echo "tmux configuration linked."

echo "Dotfiles installation complete."

