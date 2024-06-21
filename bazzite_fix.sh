#!/usr/bin/env bash
echo "Unlocking install"
sudo rpm-ostree usroverlay --hotfix
curr_gamescope=$(which gamescope)
path=$(echo "$curr_gamescope" | sed 's/\/gamescope//')
cmd=$(echo "cp ./gamescope ${path}/")
echo "Replacing gamescope to working one v43-1"
sudo $cmd
echo "Getting nbfc from official github repo"
wget https://github.com/nbfc-linux/nbfc-linux/releases/download/0.2.7/nbfc-linux-0.2.7-1.x86_64.rpm
command -v nbfc1 && echo "nbfc already installed on the system" || sudo rpm -i ./nbfc-linux-0.2.7-1.x86_64.rpm
sudo cp WIN2.json /usr/share/nbfc/configs/
sudo cp  nbfc.json /etc/nbfc/
echo "nbfc has been downloaded and installed"
sudo systemctl enable nbfc_service.service
sudo systemctl start nbfc_service.service
