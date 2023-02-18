!/bin/bash
# Created by Franki S.
# Install docker in centos

# Remove any old versions
sudo yum remove docker docker-common docker-selinux docker-engine
echo

# Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
echo

# Configure docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
echo

# Install Docker-ce
sudo yum install docker-ce -y
echo

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker
echo