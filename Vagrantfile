# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "debian/stretch64"
  config.vm.box_check_update = true
  config.vm.provider "virtualbox" do |v|
    v.memory = 8192
    v.cpus = 6
  end
  
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
    #  ansible.tags = "opencv"
   end
  end

end
