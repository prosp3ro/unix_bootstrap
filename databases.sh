#!/usr/bin/env bash

sudo pacman -S mariadb sqlite
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

echo "running command: CREATE USER '$USER'@'localhost' IDENTIFIED BY '$USER'..."
sudo mysql -e "CREATE USER '$USER'@'localhost' IDENTIFIED BY '$USER';" || exit 1

sudo systemctl enable --now mariadb
