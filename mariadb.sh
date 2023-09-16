#!/usr/bin/env bash

sudo pacman -S mariadb
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo mysql -e "CREATE USER 'prospero'@'localhost' IDENTIFIED BY 'prospero';" || exit 1

sudo systemctl enable --now mariadb
