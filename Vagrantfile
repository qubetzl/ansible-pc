
Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  # config.vm.box = "generic/debian11"

  $script = <<-SCRIPT
    # Set http caching proxy to speed-up process.
    echo 'Acquire::http { Proxy "http://10.11.0.1:3128"; }' | sudo tee /etc/apt/apt.conf.d/proxy
    echo 'export http_proxy="http://10.11.0.1:3128"' | sudo tee /etc/profile.d/proxy.sh
    sudo -i
    cd /root/
    wget -qO- https://raw.githubusercontent.com/qubetzl/ansible-pc/master/bootstrap.bash | bash
SCRIPT

  config.vm.provision "shell", inline: $script
  # wget -qO- https://raw.githubusercontent.com/qubetzl/ansible-pc/master/bootstrap.bash | bash

  # Sync a folder in order to presist pip's cache directory.
  config.vm.synced_folder ".vagrant-pip-cache/", "/root/.cache/pip/",
    owner: "root", group: "root", create: true

  config.ssh.insert_key = false
  # Give the VM a little bit more _umpf_
  config.vm.provider :virtualbox do |vbox|
    vbox.gui = true
    vbox.memory = 4096
    vbox.cpus = 4
  end
end
