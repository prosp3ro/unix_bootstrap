#!/usr/bin/env bash

# paru -S mailhog-bin
# paru -S mailpit
paru -S mailpit-bin

# sudo systemctl enable --now mailhog
sudo systemctl enable --now mailpit

# go install github.com/mailhog/MailHog@latest
# go install github.com/axllent/mailpit@latest
