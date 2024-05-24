#!/usr/bin/env bash

# before install git

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
    "reflector"
    "bluez"
    "bluez-utils"
    "pulseaudio"
    "pulseaudio-bluetooth"
    "cups"
    "xdg-utils"
    "xdg-user-dirs"
    "xf86-input-libinput"
    "xf86-video-intel"
    "xorg-server"
    "xorg-xwininfo"
    "xorg-setxkbmap"
    "xorg-xprop"
    "xorg-xbacklight"
    "openssh"
    "zsh"
    "zsh-autosuggestions"
    "curl"
    "wget"
    "cmake"
    "socat"
)

sudo pacman -S ${corePackages[*]}

systemctl enable --now NetworkManager
systemctl enable --now bluetooth
systemctl enable --now cups

echo -e "\n/bin/zsh"
sudo chsh
chsh

if [ ! "$HOME" ]; then
    echo "HOME variable isn't set!"
    exit
fi

mkdir "$HOME/.cache"
mkdir -p "$HOME/.local/share"
mkdir "$HOME/tmp"
# mkdir "$HOME/doc"
# mkdir "$HOME/img"
# mkdir "$HOME/.config"

echo -e "\nSuccess."
