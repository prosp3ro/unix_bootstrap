#!/usr/bin/env bash

echo "Make sure you have composer config dotfile first."
read -rp "Continue? [y/N] " answer

if [ "$answer" != "y" ]; then
   exit 
fi

sudo pacman -S composer php php-gd

sudo sed -i 's/;\(extension=gd\)/\1/' /etc/php/php.ini

composer global require
