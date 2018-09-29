#!/bin/dash
# prerequisites
sudo apt-get install git g++ vim make cmake terminator
sudo apt-get install build-essential pkg-config libgtk-3-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install libv4l-dev libxvidcore-dev libx264-dev -y
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev gfortran openexr -y
sudo apt-get install libtbb2 libtbb-dev libdc1394-22-dev -y
sudo apt-get install python3-dev python3-numpy -y # OPTIONAL

# wiringPi
git clone git://git.drogon.net/wiringPi
./wiringPi/build

