#!/usr/bin/env bash

packages=(
    "gtk2"
    "gtk3"
    "gtk4"
    "lxappearance"
    "ttf-linux-libertine"
    "ttf-font-awesome"
    "ttf-dejavu"
    "noto-fonts"
    "noto-fonts-emoji"
    "python-qdarkstyle"
    "qt5ct"
)

sudo pacman -S ${packages[*]}

paruPackages=(
    "gtk-theme-arc-gruvbox-git"
)

for package in "${paruPackages[@]}"; do
    # paru -S "$package" --noconfirm
    paru -S "$package"
done
