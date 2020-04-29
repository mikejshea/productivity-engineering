#!/bin/bash -eux

echo "prodeng        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

apt-get update
apt-get install -y ubuntu-desktop
apt-get install -y terminator git
locale-gen --purge

sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
