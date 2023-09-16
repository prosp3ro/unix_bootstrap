#!/usr/bin/env bash

sudo pacman -Syy
sudo pacman -S archlinux-keyring
sudo pacman -Syy

packages=(
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
)

sudo pacman -S "${packages[*]}"

systemctl enable --now NetworkManager
systemctl enable --now bluetooth
systemctl enable --now cups

sudo pacman -S xorg-server xorg-xwininfo xorg-setxkbmap i3-wm i3blocks i3lock i3status \
    polkit ttf-font-awesome ttf-dejavu xcompmgr xorg-xprop arandr \
    exfat-utils python-qdarkstyle openssh noto-fonts noto-fonts-emoji \
    ntfs-3g pulsemixer pavucontrol maim unclutter unzip xcape xclip \
    yt-dlp zathura zathura-pdf-mupdf poppler fzf \
    xorg-xbacklight firefox zsh system-config-printer gparted \
    ueberzug mediainfo bat ffmpeg ffmpegthumbnailer \
    odt2txt atool zsh-autosuggestions mpd mpv mpc \
    ncmpcpp dunst libnotify python python-pip libreoffice skim \
    socat moreutils alacritty blueman cmake findutils gawk \
    ripgrep gimp gtk2 gtk3 gtk4 highlight less lxappearance lynx \
    lua pinentry qt5ct tar smbclient sed unrar zip unzip tzdata wget whois \
    xwallpaper ninja curl ttf-linux-libertine ttf-font-awesome ttf-dejavu

mkdir "$HOME/.cache"
mkdir -p "$HOME/.local/share"
mkdir "$HOME/tmp"
# mkdir "$HOME/doc"
# mkdir "$HOME/img"
# mkdir "$HOME/.config"

sudo chsh
chsh

sudo pacman -S signal-desktop
