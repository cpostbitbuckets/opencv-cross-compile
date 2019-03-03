#!/bin/bash -ex
# this script installs all the cross compiler dev libraries to build
# opencv on a debian box

sudo apt -y update
sudo apt -y upgrade

sudo dpkg --add-architecture armhf
sudo apt -y update

sudo apt -y install qemu-user-static

sudo apt-get -y install python3 python3-dev python3-numpy
sudo apt-get -y install python python-dev python-numpy

sudo apt -y install libgtk-3-dev:armhf libcanberra-gtk3-dev:armhf libcanberra-gtk-dev:armhf
sudo apt -y install libtiff-dev:armhf zlib1g-dev:armhf
sudo apt -y install libjpeg-dev:armhf libpng-dev:armhf
sudo apt -y install libavcodec-dev:armhf libavformat-dev:armhf libswscale-dev:armhf libv4l-dev:armhf

sudo apt-get -y install libxvidcore-dev:armhf libx264-dev:armhf
sudo apt -y install crossbuild-essential-armhf
sudo apt -y install gfortran-arm-linux-gnueabihf
sudo apt -y install cmake git pkg-config unzip

sudo apt-get -y install python3:armhf python3-dev:armhf python3-numpy:armhf
sudo apt-get -y install python:armhf python-dev:armhf python-numpy:armhf
