#!/bin/dash
# opencv
mkdir opencv_build && cd opencv_build
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
# git checkout <opencv-version> # OPTIONAL
mkdir opencv/build && cd opencv/build

# if using python, turn flag on
# might want build type of DEBUG
cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D INSTALL_C_EXAMPLES=ON \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D OPENCV_EXTRAMODULES_PATH=~/opencv_build/opencv_contrib/modules \
-D BUILD_EXAMPLES=ON ..

# Build with maximum cores available
lscpu # To check number of cores
make -j`nproc`
sudo make install

