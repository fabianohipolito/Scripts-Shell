#!/bin/bash

apt-get upgrade -y
cd /home/fabianohipolito
mkdir Repositório


apt install fonts-liberation -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

echo deb https://download.docker.com/linux/debian buster stable >> /etc/apt/sources.list
apt update -y
apt-key adv --keyserver hkp://pool.sks-keyservers.net:80 --recv-keys 7EA0A9C3F273FCD8
apt update -y
apt install docker-ce -y

wget https://d3nt0h4h6pmmc4.cloudfront.net/workspacesclient_amd64.deb
dpkg -i workspacesclient_amd64.deb
rm -rf workspacesclient_amd64.deb
