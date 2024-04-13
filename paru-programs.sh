#!/usr/bin/env bash

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
    "task-spooler"
    "abook"
    "nsxiv"
    "mmv"
    "tmux-mem-cpu-load"
    "activitywatch-bin"
)

for package in "${packages[@]}"; do
    # paru -S "$package" --noconfirm
    paru -S "$package"
done
