## ToDo:
wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.14.2.linux-amd64.tar.gz

echo "export PATH=$PATH:/usr/local/go/bin" | sudo tee -a /etc/profile

sudo snap install goland --classic

gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'goland_goland.desktop']"
## https://confluence.jetbrains.com/display/IDEADEV/Inotify+Watches+Limit
sudo echo "fs.inotify.max_user_watches = 524288" | tee -a /etc/sysctl.conf
sudo sysctl -p --system
