## Install VBox Guest Additions
sudo mount /dev/cdrom /media/cdrom
sudo /media/cdrom/VBoxLinuxAdditions.run
sudo apt-get install -y sshpass

## Set up Mapped Drive
sudo echo "prodeng  /data/winshare vboxsf  defaults    0   0" | sudo tee -a  /etc/fstab
sudo echo "vboxsf" | sudo tee -a /etc/modules
mkdir /data/winshare
