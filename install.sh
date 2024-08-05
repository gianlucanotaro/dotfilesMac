#!/bin/bash

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Install yabai using Homebrew
echo "Installing yabai..."
brew install koekeishiya/formulae/yabai

# Start yabai service
echo "Starting yabai service..."
brew services start yabai

echo "yabai installation complete."

# Install sketchybar using Homebrew
echo "Installing sketchybar..."
brew tap FelixKratz/formulae
brew install sketchybar

# Start sketchybar service
echo "Starting sketchybar service..."
brew services start sketchybar

echo "sketchybar installation complete."

# Install skhd using Homebrew
echo "Installing skhd..."
brew install koekeishiya/formulae/skhd

# Start skhd service
echo "Starting skhd service..."
brew services start skhd

echo "skhd installation complete."

