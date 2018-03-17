# kubernetes-cluster-setup-using-kubespray

Setup has been tried on CentOs7 Digital Ocean Machines.

##SetUp

* 3 CentOs Machines (2GB RAM) 1 CentOs Machine (1GB RAM)
  
  3 Cluster Node  (node1,node2,node3).
  
  1 Node For ansible operation (Ansible-master)
  
* Login to Ansible Master Machine (Ansible-master) 

* Create Empty Directory
```$xslt
mkdir /kubernetes
cd /kubernetes
```

* Install Git if not present 
```
yum install -y http://opensource.wandisco.com/centos/6/git/x86_64/wandisco-git-release-6-1.noarch.rpm

yum install -y git
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