#!/bin/bash
echo "Unlocking install"
sudo frzr-unlock
curr_gamescope=$(which gamescope)
path=$(echo "$curr_gamescope" | sed 's/\/gamescope//')
cmd=$(echo "cp ./gamescope ${path}/")
echo "Replacing gamescope to working one v43-1"
sudo $cmd
git clone https://github.com/ruineka/chimeraos-hack-tools.git
sudo bash ./chimeraos-hack-tools/hacks/prep-devmode.sh
sudo rm -rf /etc/mono/
sudo pikaur -Sy nbfc 
sudo cp WIN2.xml /opt/nbfc/Configs/
sudo systemctl enable nbfc --now
sudo nbfc config -a WIN2
