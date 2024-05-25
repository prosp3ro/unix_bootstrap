#!/usr/bin/env bash

GIT_DIR="$HOME/.local/git"
GIT_USERNAME="prosp3ro"

[ ! -d "$GIT_DIR" ] && mkdir -p "$GIT_DIR"

echo "Build dmenu? [y/N]"
read -rp "Choice: " answer

if [ "$answer" == "y" ]; then
    git clone "git@github.com:$GIT_USERNAME/dmenu.git" "$GIT_DIR"
    cd "$GIT_DIR/dmenu" || exit 1
    sudo make install || exit 1
fi

echo "Build dwm? [y/N]"
read -rp "Choice: " answer

if [ "$answer" == "y" ]; then
    git clone "git@github.com:$GIT_USERNAME/moonwm.git" "$GIT_DIR"
    cd "$GIT_DIR/moonwm" || exit 1
    sudo make install || exit 1
fi

echo "Build dwmblocks-async? [y/N]"
read -rp "Choice: " answer

if [ "$answer" == "y" ]; then
    git clone "git@github.com:$GIT_USERNAME/dwmblocks-async.git" "$GIT_DIR"
    cd "$GIT_DIR/dwmblocks-async" || exit 1
    sudo make install || exit 1
fi
