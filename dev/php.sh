#!/usr/bin/env bash

sudo pacman -S composer php php-gd

sudo sed -i 's/;\(extension=gd\)/\1/' /etc/php/php.ini
