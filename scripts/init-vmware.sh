#!/bin/bash -eux

cd /data
mkdir -p /data/winshare
cp "/media/$USER/VMware Tools/"VMwareTools-*.tar.gz /data/vmwaretools.tar.gz
tar xvzf /data/vmwaretools.tar.gz
sudo /data/vmware-tools-distrib/vmware-install.pl -f -d

sudo /usr/bin/vmhgfs-fuse .host:prodeng /data/winshare -o subtype=vmhgfs-fuse,allow_other
sudo apt-get install -y sshpass
