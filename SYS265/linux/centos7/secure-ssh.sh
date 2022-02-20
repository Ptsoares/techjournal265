#!/bin/sh
#secure-ssh.sh
#author Ptsoares
#creates a new ssh user using $1 parameter
sudo useradd -m -d /home/$1 -s /bin/bash $1
sudo mkdir /home/$1/.ssh
#adds a public key from the local repo or curled from the remote repo
sudo cp /home/parker/techjournal265/SYS265/linux/public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown -R $1:$1 /home/$1/.ssh
#removes roots ability to ssh in
#sudo sed -i "s/PermitRootLogin yes/PermitRootLogin no" /etc/ssh/sshd.config
#sudo systemctl restart sshd
#echo "ALL YOUR CODE GOES HERE"
