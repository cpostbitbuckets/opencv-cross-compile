# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
BOX_NAME = "debian/stretch64"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = BOX_NAME
  config.vm.box_check_update = true

  # define an infrared that is used by ansible
  config.vm.define :debian do |debian|
    debian.vm.hostname = "debian"
    debian.vm.network :private_network, ip: "192.168.11.11"

    # this provisioner only does the vagrant stuff, it doesn't do the other provisioning. You'll need
    # to call ansible directly to do that
   debian.vm.provision :ansible do |ansible|
     ansible.playbook = "ansible/vagrant.yml"
     ansible.verbose = true
     ansible.limit = "all"
     ansible.verbose = "v"
     ansible.inventory_path = "ansible/inventory/vagrant"
     ansible.tags = "opencv"
   end
  end

end
