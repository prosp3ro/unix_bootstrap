#!/usr/bin/env bash

sudo pacman -S postgresql php-pgsql
sudo su -l postgres -c "initdb --locale=C.UTF-8 --encoding=UTF8 -D '/var/lib/postgres/data'"
sudo systemctl enable --now postgresql
sudo su -l postgres -c "createuser --interactive"

sudo sed -i 's/;\(extension=pdo_pgsql\)/\1/' /etc/php/php.ini
sudo sed -i 's/;\(extension=pgsql\)/\1/' /etc/php/php.ini
