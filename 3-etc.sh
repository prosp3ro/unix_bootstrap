#!/usr/bin/env bash

echo "Install i3? [y/N]"
read -rp "Choice: " answer

if [ "$answer" == "y" ]; then
    sudo pacman -S i3-wm i3status
fi

pacman_packages=(
    "polkit"
    "xcompmgr"
    "arandr"
    "exfat-utils"
    "ntfs-3g"
    "pulsemixer"
    "pavucontrol"
    "maim"
    "unclutter"
    "unzip"
    "xcape"
    "xclip"
    "yt-dlp"
    "zathura"
    "zathura-pdf-mupdf"
    "poppler"
    "fzf"
    # "gparted"
    "ueberzug"
    "mediainfo"
    "bat"
    "ffmpeg"
    "ffmpegthumbnailer"
    "odt2txt"
    "atool"
    "mpd"
    "mpv"
    "mpc"
    "ncmpcpp"
    "dunst"
    "libnotify"
    # "libreoffice"
    "moreutils"
    "findutils"
    "gawk"
    "ripgrep"
    # "gimp"
    "highlight"
    "less"
    "lua"
    "pinentry"
    "tar"
    "sed"
    "unrar"
    "zip"
    "unzip"
    "tzdata"
    "whois"
    "xwallpaper"
    "ninja"
    "direnv"
    "nodejs"
    "npm"
    "tmux"
    "wmname"
    # "go"
    # "csvlens"

    "chromium"

    "gtk2"
    "gtk3"
    # "gtk4"
    "lxappearance"
    "qt5ct"
    "python-qdarkstyle"

    # "ttf-linux-libertine"
    # "ttf-font-awesome"
    # "ttf-dejavu"
    # "noto-fonts"
    # "noto-fonts-emoji"

    "python"
    "python-pip"

    "lazygit"
    "btop"
    "keepassxc"
    "fd"
    "ttf-jetbrains-mono"
    "ttf-hack-nerd"
    "dust"
    "github-cli"
    "xdotool"
)

sudo pacman -S ${pacman_packages[*]} || exit 1

paru_packages=(
    "gtk-theme-arc-gruvbox-git"

    "lf-git"
    "zsh-fast-syntax-highlighting"
    "zsh-system-clipboard-git"
    # "simple-mtpfs"
    "htop-vim"
    # "task-spooler"
    # "abook"
    "nsxiv"
    "mmv"

    # "burpsuite"
    # "postman-bin"
    "brave-nightly-bin"
    "obsidian-bin"
    "betterlockscreen"
)

for paru_package in "${paru_packages[@]}"; do
    # paru -S "$paru_package" --noconfirm
    paru -S "$paru_package"
done

echo -e "\nSuccess"
