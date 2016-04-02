# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
  end
  # mount the current dir into VM
  config.vm.synced_folder ".", "/pelican" 

  config.vm.define "pelican" do |box|
    box.vm.network "private_network", ip: "192.168.11.15"
    box.vm.network "forwarded_port", guest: 8888, host: 8888
    box.vm.network "forwarded_port", guest: 9200, host: 9200
    box.vm.hostname = "vm-pelican"
    box.vm.synced_folder "../../notebooks", "/notebooks"
    box.vm.provider "virtualbox" do |vbb|
      vbb.customize ["modifyvm", :id, "--name", "pelican"]
    end
    box.vm.provision "shell", inline: <<-SHELL
      # provision VM with required packages
      /pelican/setup/provision_pelican_vm.sh
    SHELL
  end

end
