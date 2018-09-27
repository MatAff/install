#!/bin/bash
# Update Up board kernel
sudo add-apt-repository ppa:ubilinux/up
sudo apt update
sudo apt -f install
sudo apt-get autoremove --purge 'linux-.*generic'
sudo apt-get install -y linux-image-generic-hwe-16.04-upboard
sudo apt dist-upgrade -y
#sudo reboot
echo "MA: Reboot suggested"
echo "After which use uname -a, to check if kernel update was succesful"

