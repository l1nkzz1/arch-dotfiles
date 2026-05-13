#!/bin/bash

if yay --version; then
  printf 'yay OK\n'
else
  printf 'yay not installed\n'
fi 


yay -S wlogout waybar alacritty ttf-hack-nerd hyprlock-git hyprpaper-git

cd
git clone --recurse-submodules https://github.com/l1nkzz1/arch-dotfiles
cd arch-dotfiles

[ ! -d ~/.config/hypr ] && cp -r hyprland ~/.config/. || rm -rf ~/.config/hyprland && cp -r hyprland ~/.config/.
[ ! -d ~/.config/waybar ] && cp -r waybar ~/.config/. || rm -rf ~/.config/waybar && cp -r waybar ~/.config/.
[ ! -d ~/.config/wlogout ] && cp -r wlogout ~/.config/. || rm -rf ~/.config/wlogout && cp -r wlogout ~/.config/.
[ ! -d ~/.config/alacritty/ ] && cp -r alacritty ~/.config/. || rm -rf ~/.config/wlogout && cp -r wlogout ~/.config/.
