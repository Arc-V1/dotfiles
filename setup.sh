#!/bin/bash

# Function to display error message and exit
display_error() {
    echo "Error: $1"
    exit 1
}

# Get the directory of the script
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
dotfiles_dir="$script_dir/dotfiles"

# Create directories if they don't exist
mkdir -p ~/.config/picom ~/.config/kitty ~/.config/alacritty || display_error "Failed to create directories"

# Copy config files to appropriate directories
cp "$dotfiles_dir/picom.conf" ~/.config/picom/picom.conf || display_error "Failed to copy picom.conf"
cp "$dotfiles_dir/config" ~/.config/i3/config || display_error "Failed to copy i3 config"
cp "$dotfiles_dir/kitty.conf" ~/.config/kitty/kitty.conf || display_error "Failed to copy kitty.conf"
cp "$dotfiles_dir/alacritty.yml" ~/.config/alacritty/alacritty.yml || display_error "Failed to copy alacritty.yml"

# Set permissions
sudo chown -R $USER:$USER ~/.config || display_error "Failed to set permissions"

echo "Configuration files copied successfully"
