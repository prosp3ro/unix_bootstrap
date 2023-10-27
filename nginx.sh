#!/usr/bin/env bash

sudo pacman -S nginx

sudo systemctl enable --now nginx
sudo systemctl enable --now php-fpm
