#!/bin/bash

# Function to display error message and exit
display_error() {
    echo "Error: $1"
    exit 1
}

# Create directories if they don't exist
mkdir -p ~/.config/picom ~/.config/kitty ~/.config/alacritty || display_error "Failed to create directories"

# Clone the dotfiles repository
git clone https://github.com/Arc-V1/dotfiles.git || display_error "Failed to clone dotfiles repository"

# Copy config files to appropriate directories
cp dotfiles/picom.conf ~/.config/picom/picom.conf || display_error "Failed to copy picom.conf"
cp dotfiles/config ~/.config/i3/config || display_error "Failed to copy i3 config"
cp dotfiles/kitty.conf ~/.config/kitty/kitty.conf || display_error "Failed to copy kitty.conf"
cp dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml || display_error "Failed to copy alacritty.yml"

# Set permissions
sudo chown -R $USER:$USER ~/.config || display_error "Failed to set permissions"

echo "Configuration files copied successfully"
