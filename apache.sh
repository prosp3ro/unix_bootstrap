#!/usr/bin/env bash

sudo pacman -S apache php-fpm

sudo systemctl enable --now httpd
sudo systemctl enable --now php-fpm

# sudo sed -i 's/#\(LoadModule rewrite_module modules\/mod_rewrite\.so\)/\1/' /etc/httpd/conf/httpd.conf
# sudo sed -i '/^LoadModule mpm_event_module modules\/mod_mpm_event\.so/s/^/#/' /etc/httpd/conf/httpd.conf
# sudo sed -i '/^#LoadModule mpm_prefork_module modules\/mod_mpm_prefork.so\.so/s/^#//' /etc/httpd/conf/httpd.conf
