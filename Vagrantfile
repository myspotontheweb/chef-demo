# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_plugin "vagrant-omnibus"
Vagrant.require_plugin "vagrant-berkshelf"
Vagrant.require_plugin "vagrant-chef-zero"

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Box config
  config.vm.box = "Berkshelf-CentOS-6.3-x86_64-minimal"
  config.vm.box_url = "https://dl.dropbox.com/u/31081437/Berkshelf-CentOS-6.3-x86_64-minimal.box"

  # Virtualbox config
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 4096]
  end

  # Networking config
  config.vm.network "private_network", ip: "10.0.0.10"

  # Plugin config
  config.omnibus.chef_version = :latest
  config.chef_zero.enabled = true
  config.berkshelf.enabled = true

  # Chef config
  config.vm.provision :chef_client do |chef|
    chef.add_recipe "demo"
  end
end
