# Dotfiles Repository

This repository contains my dotfiles, including configurations for various applications and utilities customized to my preferences. These dotfiles are designed to work on both VMware virtual machines and the base system.

## Included Configurations

### Kitty Terminal

The `.config/kitty/kitty.conf` file contains my customized configuration for the Kitty terminal emulator. It includes settings for transparency, color themes, and other tweaks for a personalized experience.

### Alacritty Terminal

The `.config/alacritty/alacritty.yml` file contains my customized configuration for the Alacritty terminal emulator, optimized for performance and aesthetics.

### i3 Window Manager

The `.config/i3/config` file is my customized configuration for the i3 window manager. It includes tweaks for transparency, gaps, and stacking mode, among other settings, to enhance my workflow and visual experience.

### Picom Compositor

The `.config/picom/picom.conf` file contains my customized configuration for the Picom compositor. It includes settings for transparency, shadows, and other visual effects to improve the appearance of windows and UI elements.

### Synthwave Theme

The Synthwave theme is applied to both the Kitty and Alacritty terminal emulators to give them a retro-futuristic look and feel. This theme is designed to evoke nostalgia for the 80s aesthetic with vibrant colors and neon accents.

## Setup Script

The `setup.sh` script included in this repository automates the installation and configuration process. It downloads the necessary configuration files and copies them to the appropriate locations on your system. The script is designed to be compatible with various Linux distributions, automatically detecting the package manager to use for installation.

To use the setup script:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/Arc-V1/dotfiles.git


Navigate to the cloned repository directory:
cd dotfiles


Run the setup script:
./setup.sh



Notes

    Make sure to backup your existing configuration files before running the setup script.
    Feel free to customize the configurations further to suit your preferences.
    Contributions and feedback are welcome! If you have any suggestions or improvements, please open an issue or pull request on GitHub.


    
