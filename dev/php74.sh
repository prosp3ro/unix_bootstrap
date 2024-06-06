#!/usr/bin/env bash

paru -S php74
paru -S php74-mbstring
paru -S php74-phar
paru -S php74-iconv
paru -S php74-gd
paru -S php74-pgsql

sudo sed -i 's/;\(extension=gd\)/\1/' /etc/php/php.ini
