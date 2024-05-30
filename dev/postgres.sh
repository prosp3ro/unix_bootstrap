#!/usr/bin/env bash

sudo pacman -S postgres php-pgsql
su -l postgres -c "initdb --locale=C.UTF-8 --encoding=UTF8 -D '/var/lib/postgres/data'"
su -l postgres -c "createuser --interactive"
