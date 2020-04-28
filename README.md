# ProdEng Virtual Machine

## Prerequites
1. Turn off Hyper-V
  ```dos
  bcdedit /set hypervisorlaunchtype off
  ```
1. Install Virtual Box
1. Download Ubuntu ISO and place in `C:\Source\iso`
  1. [ubuntu-18.04.4-server-amd64.iso](http://cdimage.ubuntu.com/releases/18.04.4/release/ubuntu-18.04.4-server-amd64.iso)
1. Download and unzip Packer.
  1. [packer-1.5.4](https://releases.hashicorp.com/packer/1.5.4/packer_1.5.4_windows_amd64.zip)
  1. Place the packer.exe file somewhere convenient and add it to your PATH.

## Create the VM (about 20 mins)
1. Configure files in `ubuntu=vms` folder
1. Create folder `C:\Source\prodeng\`
1. Run `./prodeng-vbox.sh`

## Post VM
1. Start VM
  1. You may want to take a snaphot of the VM before staring it.
1. Follow prompts
1. Log in with your new username/password
1. Launch `terminator`, press windows key, type terminator, click icon
1. Run setup scripts
```
cd /data
sudo chown -R $USER:$USER /data
sudo chmod 755 /data/dev-setup.sh
```
1. Wait for "Software Updater" to pop-up. Then install updates. Reboot VM.
1. After updates finish and VM is rebooted, in new Terminator shell:
```
./data/dev_setup.sh
```
  This might take a while to complete. Reboot your VM.
1. This is a good time to consider taking another snapshot.


## ToDo: Choose your application platform
1. In the `/data/devenv/` folder you will find folders that continue the process for specific languages and projects.
