#!/usr/bin/env bash

[ ! -d "$HOME/tmp" ] && mkdir "$HOME/tmp"

git clone "https://github.com/neovim/neovim/" "$HOME/tmp/neovim"
cd "$HOME/tmp/neovim" || exit
make CMAKE_BUILD_TYPE=RelWithDebInfo
# git checkout stable
sudo make install
