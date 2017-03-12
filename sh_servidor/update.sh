#!/bin/bash
#
# Hora Certa - WHMSonic (Ninjas Host)
#

echo "Iniciando a atualizacao"
cd /usr/local/cpanel/3rdparty/csonic/
rm -f menu.php
wget http://webradio.ninjashost.com.br/sh_servidor/menu.txt
mv -f menu.txt menu.php
cd /usr/local/cpanel/3rdparty/csonic/tools
wget http://webradio.ninjashost.com.br/sh_servidor/tools/horacerta.txt
mv -f horacerta.txt horacerta.php

echo "Atualizacao concluida"
