#!/usr/bin/env bash

echo "Make sure you have composer config dotfile first."
read -rp "Continue? [y/N] " answer

if [ "$answer" != "y" ]; then
   exit 
fi

composer global require
