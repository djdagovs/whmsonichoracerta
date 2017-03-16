#!/bin/bash
#
# Hora Certa - WHMSonic (Ninjas Host)
#
echo "Iniciando a instalacao"
cd /usr/local/cpanel/3rdparty/csonic/

echo "Alterando arquivo menu.php"
rm -f menu.php
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/menu.txt
mv -f menu.txt menu.php

echo "Criando imagem clock.png"
cd /usr/local/cpanel/3rdparty/csonic/images
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/images/clock.png

echo "Instalando Hora Certa"
cd /usr/local/cpanel/3rdparty/csonic/tools
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/tools/xmlapi.txt
mv -f xmlapi.txt xmlapi.php
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/tools/horacerta.txt
mv -f horacerta.txt horacerta.php
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/update.sh
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/remove.sh
chmod +x update.sh
chmod +x remove.sh

echo "Instalacao concluida"

cd ~
rm -f install-hc.sh
