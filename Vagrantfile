Vagrant.configure("2") do |config|
  config.ssh.insert_key=false
  config.vm.define "web1" do |web1|
    web1.vm.box = "bento/centos-6.7"
    web1.vm.hostname = 'web1'
    web1.vm.network :private_network, ip: "192.168.56.101"
	web1.vm.provision :shell, path: "bootstrap_web.sh"
  end
  config.vm.define "web2" do |web2|
    web2.vm.box = "bento/centos-6.7"
    web2.vm.hostname = 'web2'
	web2.vm.provision :shell, path: "bootstrap_web.sh"
    web2.vm.network :private_network, ip: "192.168.56.102"
  end
  config.vm.define "third" do |third|
    third.vm.box = "bento/centos-6.7"
    third.vm.hostname = 'third'
    third.vm.network :private_network, ip: "192.168.56.103"
	third.vm.provision :shell, path: "bootstrap_haproxy.sh"
  end
end