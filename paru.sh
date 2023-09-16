#!/usr/bin/env bash

git clone https://aur.archlinux.org/paru.git "$HOME/tmp/paru"
makepkg -si

packages=(
    "lf-git"
    "zsh-fast-syntax-highlighting"
    "zsh-system-clipboard-git"
    "veracrypt-console-bin"
    "simple-mtpfs"
    "postman-bin"
    "htop-vim"
    "burpsuite"
    "brave-nightly-bin"
    "vscodium-bin"
    "task-spooler"
    "abook"
    "nsxiv"
)

for package in "${packages[@]}"; do
    # paru -S "$package" --noconfirm
    paru -S "$package"
done
