#!/bin/dash
sudo apt-get purge librealsense2
sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo xenial main" -u
sudo rm -f /etc/apt/sources.list.d/realsense-public.list.
sudo apt-get update
sudo apt-get install -y librealsense2-dkms
sudo apt-get install -y librealsense2-utils
sudo apt-get install -y librealsense2-dev
sudo apt-get install -y librealsense2-dbg
# realsense-viewer to test
# include lrealsense2 in makefile
# Based on installation 20181217
