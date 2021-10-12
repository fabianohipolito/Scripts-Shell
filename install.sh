#!/bin/bash

cd /home/fabianohipolito
mkdir Repositório

cd

apt-get update -y
apt install -f 
apt-get install wget -y
apt-get install vim -y
apt-get install remmina -y
apt-get install openvpn -y
apt-get install vagrant -y
apt-get install git -y
apt-get install gpg -y
apt-get install openssh-server -y
apt install terminator -y

#Instalação do Ansile
echo deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt update -y
apt install ansible -y


#Instalação do Virtualbox
echo deb https://download.virtualbox.org/virtualbox/debian buster contrib >> /etc/apt/sources.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
apt-get install -y gnupg2 gnupg gnupg1 -y
apt-get update -y
apt-get install virtualbox-5.2 -y

#Configuração do Vagrant para VirtualBox

sudo apt-get install linux-headers-4.19.0-16-amd64 build-essential dkms
vagrant package --base my-virtual-machine
# Instalação do plugin para criação de disco nas Vms do vagrant.
vagrant plugin install vagrant-disksize 

#Instalação do teams
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.7556_amd64.deb
dpkg -i teams_1.4.00.7556_amd64.deb
rm -rf teams_1.4.00.7556_amd64.deb

#Instalação do Skype
wget wget https://repo.skype.com/latest/skypeforlinux-64.deb
dpkg -i skypeforlinux-64.deb
rm -rf skypeforlinux-64.deb

#Instalação do Chrome
apt install fonts-liberation -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

#Instalação do Docker
echo deb https://download.docker.com/linux/debian buster stable >> /etc/apt/sources.list
apt update -y
apt-key adv --keyserver hkp://pool.sks-keyservers.net:80 --recv-keys 7EA0A9C3F273FCD8
apt update -y
apt install docker-ce -y

#Instalação do Workspaces
wget https://d3nt0h4h6pmmc4.cloudfront.net/workspacesclient_amd64.deb
dpkg -i workspacesclient_amd64.deb
rm -rf workspacesclient_amd64.deb
