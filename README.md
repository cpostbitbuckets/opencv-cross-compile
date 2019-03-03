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

