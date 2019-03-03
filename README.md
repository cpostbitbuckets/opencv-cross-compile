# debian vagrant box to cross compile opencv

This was inspired by:

[Cross Compile opencv to raspberry pi](https://solarianprogrammer.com/2018/12/18/cross-compile-opencv-raspberry-pi-raspbian/)

[Optimizing opencv on the raspberry pi](https://www.pyimagesearch.com/2017/10/09/optimizing-opencv-on-the-raspberry-pi/)

This project is a simple vagrant/ansible project to 
* bring up a debian VM
* install opencv required dev libraries
* download opencv binaries

## Bring up the VM
Bring up the vagrant box. This will create a new debian/stretch VM, install all the arm development libraries on it and compile/install/package opencv

```bash
vagrant up
```

## Copy the dist
Once the vagrant build is complete, copy the ~/opencv-build/dist folder off the vagrant vm. You will probably have to add vagrant ssh-config to your ~/.ssh/config file

```bash
vagrant ssh-config >> ~/.ssh/config
```

```bash
mkdir -p dist
scp vagrant@debian:/home/vagrant/opencv-build/dist/* dist/
```

## Install on the pi
Follow the instructions to install the libraries on the pi: [Cross Compile opencv to raspberry pi](https://solarianprogrammer.com/2018/12/18/cross-compile-opencv-raspberry-pi-raspbian/)
