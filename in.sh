#!/bin/bash
# Update upgrade
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y terminator
sudo apt-get install -y openssh-server
sudo apt-get install -y vim
sudo apt-get install -y libi2c-dev
sudo apt-get install -y i2c-tools
sudo apt-get install -y chromium-browser
sudo apt-get install -y make
sudo apt-get install -y make-guile
sudo apt-get install -y cmake
sudo apt-get install -y xfce4 xfce4-goodies tightvncserver
sudo apt-get install -y spyder3
sudo apt-get install -y python 3.8
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1

