#!/usr/bin/env bash

PARU_TMP_DIR="$HOME/tmp/paru"

[ ! -d "$HOME/tmp" ] && mkdir -p "$HOME/tmp"
[ -d "$PARU_TMP_DIR" ] && rm -rf "$PARU_TMP_DIR"

git clone https://aur.archlinux.org/paru.git "$PARU_TMP_DIR" || exit 1
cd "$PARU_TMP_DIR" || exit 1
makepkg -si
[ -d "$PARU_TMP_DIR" ] && rm -rf "$PARU_TMP_DIR"

paru -S veracrypt-console-bin

echo -e "\nlsblk"
echo "sudo mount -t vfat /dev/sdb2 /mnt/second-usb -o rw,umask=0000"
echo -e "git@github.com:<username>/<repo>\n"

echo -e "\nSuccess"
