#!/bin/bash

# Function to display error message and exit
display_error() {
    echo "Error: $1"
    exit 1
}

# Clone the dotfiles repository
git clone https://github.com/Arc-V1/dotfiles.git || display_error "Failed to clone dotfiles repository"

# Check if the dotfiles directory exists
DOTFILES_DIR="$PWD/dotfiles"
if [ ! -d "$DOTFILES_DIR" ]; then
    display_error "Dotfiles directory not found"
fi

# Create directories if they don't exist
mkdir -p ~/.config/picom ~/.config/kitty ~/.config/alacritty || display_error "Failed to create directories"

# Copy config files to appropriate directories
cp "$DOTFILES_DIR/picom.conf" ~/.config/picom/picom.conf || display_error "Failed to copy picom.conf"
cp "$DOTFILES_DIR/config" ~/.config/i3/config || display_error "Failed to copy i3 config"
cp "$DOTFILES_DIR/kitty.conf" ~/.config/kitty/kitty.conf || display_error "Failed to copy kitty.conf"
cp "$DOTFILES_DIR/alacritty.yml" ~/.config/alacritty/alacritty.yml || display_error "Failed to copy alacritty.yml"

# Set permissions
chmod -R 755 ~/.config || display_error "Failed to set permissions"

echo "Configuration files copied successfully"
