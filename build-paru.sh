#!/usr/bin/env bash

[ ! -d "$HOME/tmp/paru" ] && mkdir -p "$HOME/tmp/paru"

git clone https://aur.archlinux.org/paru.git "$HOME/tmp/paru"
cd "$HOME/tmp/paru" || exit 1
makepkg -si
rm -rf "$HOME/tmp/paru"
