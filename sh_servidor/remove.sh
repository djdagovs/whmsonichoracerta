#!/bin/bash
#
# Hora Certa - WHMSonic (Ninjas Host)
#

echo "Removendo a instalação"
cd /usr/local/cpanel/3rdparty/csonic/

echo "Alterando arquivo menu.php"
rm -f menu.php
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/menu_original.txt
mv -f menu_original.txt menu.php

echo "Removendo imagem clock.png"
cd /usr/local/cpanel/3rdparty/csonic/images
rm -f clock.png

echo "Removendo Hora Certa"
cd /usr/local/cpanel/3rdparty/csonic/tools
rm -f xmlapi.php
rm -f horacerta.php
rm -f horacerta_config.php
rm -f update.sh

echo "Instalacao removida"

rm -f remove.sh
