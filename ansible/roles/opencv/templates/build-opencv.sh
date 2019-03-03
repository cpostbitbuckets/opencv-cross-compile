#!/bin/bash

export PKG_CONFIG_PATH=/usr/lib/arm-linux-gnueabihf/pkgconfig:/usr/share/pkgconfig
export PKG_CONFIG_LIBDIR=/usr/lib/arm-linux-gnueabihf/pkgconfig:/usr/share/pkgconfig

mkdir -p {{ opencv_build_folder }}/opencv-{{ opencv_version }}/build
cd {{ opencv_build_folder }}/opencv-{{ opencv_version }}/build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX={{ opencv_install_folder }} \
    -D CMAKE_TOOLCHAIN_FILE=../platforms/linux/arm-gnueabi.toolchain.cmake \
    -D OPENCV_EXTRA_MODULES_PATH={{ opencv_build_folder }}/opencv_contrib-{{ opencv_version }}/modules \
    -D ENABLE_NEON=ON \
    -D ENABLE_VFPV3=ON \
    -D PYTHON2_INCLUDE_PATH=/usr/include/python2.7 \
    -D PYTHON2_LIBRARIES=/usr/lib/arm-linux-gnueabihf/libpython2.7.so \
    -D PYTHON2_NUMPY_INCLUDE_DIRS=/usr/lib/python2/dist-packages/numpy/core/include \
    -D PYTHON3_INCLUDE_PATH=/usr/include/python3.5m \
    -D PYTHON3_LIBRARIES=/usr/lib/arm-linux-gnueabihf/libpython3.5m.so \
    -D PYTHON3_NUMPY_INCLUDE_DIRS=/usr/lib/python3/dist-packages/numpy/core/include \
    -D BUILD_OPENCV_PYTHON2=ON \
    -D BUILD_OPENCV_PYTHON3=ON \
    -D WITH_GTK=ON \
    -D WITH_FFMPEG=ON \
    -D INSTALL_PYTHON_EXAMPLES=OFF \
    -D BUILD_TESTS=OFF \
    -D BUILD_DOCS=OFF \
    -D BUILD_EXAMPLES=OFF ..

make -j6
