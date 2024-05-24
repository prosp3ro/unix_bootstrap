#!/usr/bin/env bash

[ ! -d "$HOME/.local/git" ] && mkdir -p "$HOME/.local/git"

git clone "git@github.com:prosp3ro/dmenu.git" "$HOME/.local/git"
cd "$HOME/.local/git/dmenu" || exit 1
sudo make install || exit 1

# git clone "git@github.com:prosp3ro/moonwm.git" "$HOME/.local/git"
# cd "$HOME/.local/git/moonwm" || exit 1
# sudo make install || exit 1

# git clone "git@github.com:prosp3ro/dwmblocks-async.git" "$HOME/.local/git"
# cd "$HOME/.local/git/dwmblocks-async" || exit 1
# sudo make install || exit 1
