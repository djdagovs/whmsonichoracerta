#!/bin/bash
#
# Hora Certa - WHMSonic (Ninjas Host)
#
echo "Iniciando a instalacao"
cd /usr/local/cpanel/3rdparty/csonic/

echo "Alterando arquivo menu.php"
rm -f menu.php
wget http://webradio.ninjashost.com.br/sh_servidor/menu.txt
mv -f menu.txt menu.php

echo "Criando imagem clock.png"
cd /usr/local/cpanel/3rdparty/csonic/images
wget http://webradio.ninjashost.com.br/sh_servidor/images/clock.png

echo "Instalando Hora Certa"
cd /usr/local/cpanel/3rdparty/csonic/tools
wget http://webradio.ninjashost.com.br/sh_servidor/tools/xmlapi.txt
mv -f xmlapi.txt xmlapi.php
wget http://webradio.ninjashost.com.br/sh_servidor/tools/horacerta.txt
mv -f horacerta.txt horacerta.php
wget http://webradio.ninjashost.com.br/sh_servidor/update.sh
wget http://webradio.ninjashost.com.br/sh_servidor/remove.sh
chmod +x update.sh
chmod +x remove.sh

echo "Instalacao concluida"

cd ~
rm -f install-hc.sh
