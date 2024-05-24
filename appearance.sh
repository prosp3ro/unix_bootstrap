#!/usr/bin/env bash

packages=(
    "gtk2"
    "gtk3"
    # "gtk4"
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

paru_packages=(
    "gtk-theme-arc-gruvbox-git"
)

for paru_package in "${paru_packages[@]}"; do
    # paru -S "$paru_package" --noconfirm
    paru -S "$paru_package"
done
