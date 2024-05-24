#!/usr/bin/env bash

[ ! -d "$HOME/tmp/paru" ] && mkdir -p "$HOME/tmp/paru"

git clone https://aur.archlinux.org/paru.git "$HOME/tmp/paru" || exit 1
cd "$HOME/tmp/paru" || exit 1
makepkg -si
rm -rf "$HOME/tmp/paru"

paru -S veracrypt-console-bin

echo -e "\nlsblk"
echo "sudo mount -t vfat /dev/sdb2 /mnt/second-usb -o rw,umask=0000"
echo -e "git@github.com:<username>/<repo>\n"

echo -e "\nSuccess"
