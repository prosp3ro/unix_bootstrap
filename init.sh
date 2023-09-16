#!/usr/bin/env bash

sudo pacman -Sy
sudo pacman -S archlinux-keyring

corePackages=(
    "linux"
    "linux-firmware"
    "vim"
    "intel-ucode"
    "grub"
    "efibootmgr"
    "networkmanager"
    "network-manager-applet"
    "wireless_tools"
    "wpa_supplicant"
    "dialog"
    "mtools"
    "dosfstools"
    "base"
    "base-devel"
    "linux-headers"
    "git"
    "reflector"
    "bluez"
    "bluez-utils"
    "pulseaudio-bluetooth"
    "pulseaudio"
    "cups"
    "xdg-utils"
    "xdg-user-dirs"
    "xf86-input-libinput"
    "xf86-video-intel"
    "xorg-server"
    "xorg-xwininfo"
    "xorg-setxkbmap"
    "openssh"
    "zsh"
    "zsh-autosuggestions"
)

sudo pacman -S ${corePackages[*]}

systemctl enable --now NetworkManager
systemctl enable --now bluetooth
systemctl enable --now cups

sudo chsh
chsh

mkdir "$HOME/.cache"
mkdir -p "$HOME/.local/share"
mkdir "$HOME/tmp"
# mkdir "$HOME/doc"
# mkdir "$HOME/img"
# mkdir "$HOME/.config"
