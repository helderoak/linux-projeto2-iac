#!/bin/bash

echo "Atualiza o sistema"
apt-get update
apt-get upgrade -y

echo "Instala o apache"
apt-get install apache2 -y

echo "Instala o unzip"
apt-get install unzip -y

echo "Download do repositorio na pasta tmp"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactar"
unzip  main.zip
cd linux-site-dio-main

echo "Copiar arquivos para pasta do apache"
cp -R * /var/www/html/

echo "Fim!"


