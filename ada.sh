#!/bin/bash
cd ..
git clone https://github.com/adafruit/Adafruit-Motor-HAT-Python-Library.git
cd Adafruit-Motor-HAT-Python-Library
sudo apt-get update
sudo apt-get install build-essential python-dev python-pip
sudo python setup.py install

