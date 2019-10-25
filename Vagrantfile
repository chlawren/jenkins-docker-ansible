# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.define "master" do |vbox|
    config.vm.hostname = "master"
    vbox.vm.network :forwarded_port, host: 11022, guest: 22, auto_correct: true
    vbox.vm.network :forwarded_port, host: 8080, guest: 8080, auto_correct: true
    vbox.vm.network :forwarded_port, host: 5000, guest: 5000, auto_correct: true
    vbox.vm.network "private_network", ip: "172.35.100.11"
    vbox.vm.hostname = "master"

  end
  config.vm.provider "virtualbox" do |size|
    size.memory = 4096
    size.cpus = 2
  end

  config.vm.provision :ansible_local do |ansible|
    ansible.become = true
    ansible.playbook = 'ansible/02_install.yml'
  end
end
