#!/bin/bash

#Configuração e instalação do virtual box.

echo deb https://download.virtualbox.org/virtualbox/debian buster contrib >> /etc/apt/sources.list

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo apt-get install -y gnupg2 gnupg gnupg1 -y

sudo apt-get update -y

sudo apt-get install virtualbox-5.2 -y

#Configuração do vagrant para criar Vms no virtualbox.

sudo apt-get install linux-headers-4.19.0-16-amd64 build-essential dkms
vagrant package --base my-virtual-machine

#Instalação do plugin para criação de disco nas vms do vangrant.

vagrant plugin install vagrant-disksize
