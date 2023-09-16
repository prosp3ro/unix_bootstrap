#!/usr/bin/env bash

[ ! -d "$HOME/.local/git" ] && mkdir -p "$HOME/.local/git"

git clone "git@github.com:prosp3ro/dmenu.git" "$HOME/.local/git"
cd "$HOME/.local/git/dmenu" || exit 1
sudo make install

# git clone "git@github.com:prosp3ro/dwm.git" "$HOME/.local/git"
# cd "$HOME/.local/git/dwm" || exit 1
# sudo make install

# git clone "git@github.com:prosp3ro/dwmblocks.git" "$HOME/.local/git"
# cd "$HOME/.local/git/dwmblocks" || exit 1
# sudo make install
