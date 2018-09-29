#!/bin/dash
# realsense (from source)
sudo apt-get install libssl-dev libusb-1.0-0-dev
sudo apt-get install libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev # Ubuntu 18
git clone https://github.com/IntelRealSense/librealsense
cd librealsense
sudo cp config/99-realsense-libusb.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && udevadm trigger
./scripts/patch-realsense-ubuntu-lts.sh # Ubuntu 14/16/18
# failed?
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-5 g++-5
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 60 --slave /usr/bin/g++ g++ /usr/bin/g++-5
sudo update-alternatives --set gcc "/usr/bin/gcc-5"
mkdir build && cd build
cmake .. -DBUILD_EXAMPLES=true
sudo make uninstall && make clean && make -j`nproc` && sudo make install

