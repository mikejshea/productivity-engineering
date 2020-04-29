cd /data

# Install Ansible
apt-add-repository --yes --update ppa:ansible/ansible
apt-get update
apt-get install -y software-properties-common
apt-get install -y ansible

## Set up Docker
sudo apt install -y python-pip python3-pip

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER

## Set up common developer tools
sudo snap install postman
sudo snap install atom --classic
sudo snap install code --classic
sudo snap install pycharm-professional --classic
sudo snap install gnome-system-monitor

# gsettings get org.gnome.shell favorite-apps
gsettings set org.gnome.shell favorite-apps "['ubiquity.desktop', 'firefox.desktop', 'terminator.desktop', 'atom_atom.desktop', 'code_code.desktop', 'pycharm-professional_pycharm-professional.desktop', 'org.gnome.Nautilus.desktop', 'postman_postman.desktop']"
