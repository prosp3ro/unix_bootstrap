#!/usr/bin/env bash

sudo pacman -S composer php php-apache php-gd

# sudo sed -i 's/;\(extension=gd\)/\1/' /etc/php/php.ini

composer global require
