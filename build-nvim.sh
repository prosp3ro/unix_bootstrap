#!/usr/bin/env bash

[ ! -d "$HOME/tmp" ] && mkdir "$HOME/tmp"

git clone "https://github.com/neovim/neovim/" "$HOME/tmp/neovim"
cd "$HOME/tmp/neovim" || exit 1
make CMAKE_BUILD_TYPE=RelWithDebInfo
# git checkout stable
sudo make install
sudo rm -rf "$HOME/tmp/neovim"
