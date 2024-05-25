#!/usr/bin/env bash

# before install git

sudo pacman -Sy
sudo pacman -S archlinux-keyring
sudo pacman -Su

corePackages=(
    # "linux"
    # "linux-firmware"
    # "linux-headers"
    # "reflector"
    "vim"
    "intel-ucode"
    # "grub"
    # "efibootmgr"
    "networkmanager"
    "network-manager-applet"
    "wireless_tools"
    "wpa_supplicant"
    "dialog"
    "mtools"
    "dosfstools"
    "base"
    "base-devel"
    "bluez"
    "bluez-utils"
    # "pulseaudio"
    # "pulseaudio-bluetooth"
    # "cups"
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

sudo pacman -S ${corePackages[*]} || exit 1

systemctl enable --now NetworkManager || exit 1
systemctl enable --now bluetooth || exit 1
# systemctl enable --now cups || exit 1

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
