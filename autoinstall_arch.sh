#!/bin/bash

echo " "
echo "    ___   __  ____________  _____   ________________    __    __ "
echo "   /   | / / / /_  __/ __ \/  _/ | / / ___/_  __/   |  / /   / / "
echo "  / /| |/ / / / / / / / / // //  |/ /\__ \ / / / /| | / /   / /  "
echo " / ___ / /_/ / / / / /_/ // // /|  /___/ // / / ___ |/ /___/ /___ "
echo "/_/  |_\____/ /_/  \____/___/_/ |_//____//_/ /_/  |_/_____/_____/ "


command -v yay &> /dev/null || { printf "yay is not installed, please install before running the autoinstaller\n"; exit 1; }

yay -S wlogout waybar alacritty hyprlock-git hyprpaper-git
sudo pacman -S ttf-hack-nerd

cd
git clone --recurse-submodules https://github.com/l1nkzz1/arch-dotfiles
cd arch-dotfiles

[ ! -d ~/.config/hypr ] && cp -r hypr ~/.config/. || rm -rf ~/.config/hypr && cp -r hypr ~/.config/.
[ ! -d ~/.config/waybar ] && cp -r waybar ~/.config/. || rm -rf ~/.config/waybar && cp -r waybar ~/.config/.
[ ! -d ~/.config/wlogout ] && cp -r wlogout ~/.config/. || rm -rf ~/.config/wlogout && cp -r wlogout ~/.config/.
[ ! -d ~/.config/alacritty/ ] && cp -r alacritty ~/.config/. || rm -rf ~/.config/alacritty && cp -r alacritty ~/.config/.
