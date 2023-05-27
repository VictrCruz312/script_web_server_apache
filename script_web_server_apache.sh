#!/bin/bash

echo "Script iniciado."
echo "Atualizando o sistema..."


apt-get update
apt-get upgrade -y

echo "Instalando pacotes..."

apt-get install unzip -y
apt-get install apache2 -y

echo "Baixando arquivos da aplicação e adicionando a pasta do apache..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/