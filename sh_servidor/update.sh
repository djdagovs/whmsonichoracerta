#!/bin/bash
#
# Hora Certa - WHMSonic (Ninjas Host)
#

echo "Iniciando a atualizacao"
cd /usr/local/cpanel/3rdparty/csonic/
rm -f menu.php
wget https://ninjashost.github.io/whmsonichoracerta/menu.txt
mv -f menu.txt menu.php
cd /usr/local/cpanel/3rdparty/csonic/tools
wget https://ninjashost.github.io/whmsonichoracerta/tools/horacerta.txt
mv -f horacerta.txt horacerta.php

echo "Atualizacao concluida"
