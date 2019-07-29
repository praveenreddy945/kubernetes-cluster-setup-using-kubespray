yum install -y gcc openssl-devel bzip2-devel

cd /usr/src

yum install -y wget

wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz

tar xzf Python-3.6.4.tgz

cd Python-3.6.4

./configure --enable-optimizations

make altinstall

yes | rm /usr/src/Python-3.6.4.tgz

cd /usr/local/bin/

./pip3.6 install virtualenv

./virtualenv -p /usr/local/bin/python3.6 /python3-kubernetes

cd /python3-kubernetes/bin

source activate

cd /kubernetes/kubernetes-cluster-setup-using-kubespray

pip3.6 install -r requirements.txt

#yum install -y http://opensource.wandisco.com/centos/6/git/x86_64/wandisco-git-release-6-1.noarch.rpm

#yum install -y git

git clone https://github.com/praveenreddy945/kubespray.git

yes | cp -f hosts.ini kubespray/inventory/mycluster/hosts.ini

cd kubespray

ansible-playbook -i inventory/mycluster/hosts.ini cluster.yml  --private-key=/root/ec2-user.pem -su --su-user-=ec2-user -u ec2-user
