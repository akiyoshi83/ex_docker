yum install -y vim git tree
yum groupinstall -y 'Development tools'
curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chefdk -c stable
