Vagrant.configure("2") do |config|
        config.vm.box = "ubuntu/trusty32"
        config.vm.hostname = "web.dev"
        config.vm.network :private_network, ip: "192.168.55.1"
        config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true
	config.vm.network "forwarded_port", guest: 22, host: 2222, id: "ssh", disabled: false
        config.vm.provider "virtualbox" do |vb|
          vb.memory = "256"
        end
        config.vm.provision  "shell", path: "provision_apache.sh"
	config.vm.provision  "shell", path: "provision_php.sh"
    end
