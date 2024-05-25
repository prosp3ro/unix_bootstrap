#!/usr/bin/env bash

sudo pacman -Sy
sudo pacman -S archlinux-keyring
sudo pacman -Su

corePackages=(
    # "linux"
    # "linux-firmware"
    # "linux-headers"
    "vim"

    "intel-ucode"
    "xf86-input-libinput"
    "xf86-video-intel"

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
    "curl"
    "wget"
    "cmake"
    "socat"
    "openssh"
    "zsh"
    "zsh-autosuggestions"

    "bluez"
    "bluez-utils"
    # "pulseaudio"
    # "pulseaudio-bluetooth"
    # "cups"

    "xdg-utils"
    "xdg-user-dirs"
    "xorg-server"
    "xorg-xwininfo"
    "xorg-setxkbmap"
    "xorg-xprop"
    "xorg-xbacklight"

    "rustup"
)

sudo pacman -S ${corePackages[*]} || exit 1

sudo systemctl enable --now NetworkManager || exit 1
sudo systemctl enable --now bluetooth || exit 1
# sudo systemctl enable --now cups || exit 1

echo -e "\n/bin/zsh"
echo "For root:"
sudo chsh
echo -e "\nFor user:"
chsh

if [ ! "$HOME" ]; then
    echo "HOME variable isn't set!"
    exit
fi

[ ! -d "$HOME/.cache" ] && mkdir "$HOME/.cache"
[ ! -d "$HOME/.local/share" ] && mkdir -p "$HOME/.local/share"
[ ! -d "$HOME/tmp" ] && mkdir "$HOME/tmp"
# mkdir "$HOME/doc"
# mkdir "$HOME/img"
# mkdir "$HOME/.config"

echo -e "\nSuccess."
