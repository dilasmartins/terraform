resource "virtualbox_vm" "node" {
    count = 1
    name = "${format("node-%02d", count.index+1)}"
    //url = "https://app.vagrantup.com/centos/boxes/7/versions/2004.01/providers/virtualbox.box"
    //image = "./virtualbox.box"
    image = "https://app.vagrantup.com/centos/boxes/7/versions/2004.01/providers/virtualbox.box"
    cpus = 2
    memory = "4096 mib"
   // user_data = "${file("user_data")}"


     network_adapter {
       type = "bridged"
       host_interface = "enp0s3"
    }
}

