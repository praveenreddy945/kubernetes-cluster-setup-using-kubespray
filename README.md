# kubernetes-cluster-setup-using-kubespray

Setup has been tried and tested on CentOs7 Digital Ocean Machines.

## SetUp

* 3 CentOs Machines (2GB RAM)
  
  3 Cluster Node  (node1,node2,node3) and one of the node will also work as ansible-master let say (node1)
  
* Login to Ansible Master Machine (node1) 

* Create Empty Directory
```$xslt
mkdir /kubernetes
cd /kubernetes
```

* Clone Repository
```
git clone https://github.com/manishjindal/kubernetes-cluster-setup-using-kubespray.git
```

Make Sure Ansible master has access to all three node for controlling the machine.

You need not to install anything on this machine (including ansible) everything will be install automatically


* Modify Hosts File

After Cloning the Repo modify hosts.ini file 

```$xslt
node1 ansible_ssh_host=**139.59.6.140**  # ip=10.3.0.1
node2 ansible_ssh_host=**159.65.159.161**  # ip=10.3.0.2
node3 ansible_ssh_host=**159.65.159.170**  # ip=10.3.0.3
```

Update ip address for node1,node2,node3.

* Run install.sh script

All you are all set to setup Kubernetes cluster
```$xslt
source install.sh
```
