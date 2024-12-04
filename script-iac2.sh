#!/bin/bash

echo "Atualizar update/upgrade"

apt-get updade
apt-get upgrade -y

echo "Instalando apache2 e unzip"
apt-get install apache2 -y
apt-get install unzip -y

echo "Abrindo pasta tmp"
cd /tmp

echo "Download e Unzip"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

