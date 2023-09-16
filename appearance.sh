#!/usr/bin/env bash

paruPackages=(
    "gtk-theme-arc-gruvbox-git"
    "artix-dark-theme-git"
)

for package in "${paruPackages[@]}"; do
    # paru -S "$package" --noconfirm
    paru -S "$package"
done
