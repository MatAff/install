# Update upgrade
sudo apt-get update
sudo apt-get upgrade

# Update Up board kernel
sudo add-apt-repository ppa:ubilinux/up
sudo apt-get autoremove --purge 'linux-.*generic'
sudo apt-get install linux-image-generic-hwe-16.04-upboard
sudo apt dist-upgrade -y
sudo reboot
