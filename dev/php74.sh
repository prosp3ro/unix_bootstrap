#!/usr/bin/env bash

sudo id

paru -S php74
paru -S php74-mbstring
paru -S php74-phar
paru -S php74-iconv
paru -S php74-gd
paru -S php74-pgsql
paru -S php74-openssl
paru -S php74-json
paru -S php74-fileinfo
paru -S php74-tokenizer
paru -S php74-dom
paru -S php74-pdo
paru -S php74-pear
paru -S php74-xmlwriter
paru -S php74-ctype
paru -S php74-simplexml
paru -S php74-xmlreader
paru -S php74-zip

sudo sed -i 's/;\(extension=gd\)/\1/' /etc/php74/php.ini
