#!/usr/bin/env bash

git clone "https://github.com/pr0sp3ro/dmenu" "$HOME/tmp/dmenu"
cd "$HOME/tmp/dmenu" || exit
sudo make install
