#!/bin/bash
#
# Hora Certa - WHMSonic (Ninjas Host)
#

echo "Iniciando a atualizacao"
cd /usr/local/cpanel/3rdparty/csonic/
rm -f menu.php
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/menu.txt
mv -f menu.txt menu.php
cd /usr/local/cpanel/3rdparty/csonic/tools
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/tools/horacerta.txt
mv -f horacerta.txt horacerta.php
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/tools/programetes.txt
mv -f programetes.txt programetes.php
wget https://ninjashost.github.io/whmsonichoracerta/sh_servidor/tools/player_topo.txt
mv -f player_topo.txt player_topo.php

echo "Atualizacao concluida"
