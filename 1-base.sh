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

echo -e "\n===========\n\n=> Installing pacman packages..."
sudo pacman -S ${corePackages[*]} || exit 1

echo -e "\n=> Enabling systemd units..."
sudo systemctl enable --now NetworkManager || exit 1
sudo systemctl enable --now bluetooth || exit 1
# sudo systemctl enable --now cups || exit 1

echo -e "\n=> Changing default shell. /bin/zsh"
echo "For root:"
sudo chsh
echo -e "\nFor user:"
chsh

if [ ! "$HOME" ]; then
    echo "HOME variable isn't set!"
    exit
fi

echo -e "\n=> Creating dirs..."
[ ! -d "$HOME/.cache" ] && mkdir -v "$HOME/.cache"
[ ! -d "$HOME/tmp" ] && mkdir -v "$HOME/tmp"
[ ! -d "$HOME/.local/share" ] && mkdir -vp "$HOME/.local/share"
[ ! -d "$HOME/.local/git" ] && mkdir -v "$HOME/.local/git"
# [ ! -d "$HOME/.local/scripts" ] && mkdir -v "$HOME/.local/scripts"

echo -e "\n=> Rust init..."
if [ "$(command -v rustup)" ]; then
    rustup default stable || exit 1
fi

echo -e "\nSuccess."
