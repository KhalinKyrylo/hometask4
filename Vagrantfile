Vagrant.configure("2") do |config|

        config.vm.box = "ubuntu/focal64"
        config.vm.network "private_network", ip: "192.168.33.10"
        config.vm.network "forwarded_port", guest: 80, host: 8888

        config.vm.provider "virtualbox" do |vb|
            vb.name = "config"
            vb.gui = false
            vb.memory = "1024"
        end

        config.vm.provision "shell", run: "always", path: "script.sh"
end