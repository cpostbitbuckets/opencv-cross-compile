#!/bin/bash

cd {{ opencv_build_folder }}/opencv-{{ opencv_version }}/build
sudo make install
cd /opt
tar -cjvf {{ opencv_build_folder }}/dist/opencv-{{ opencv_version }}-armhf.tar.bz2 opencv-{{ opencv_version }}
