# chimeraOS-win2
ChimeraOS - Win2 

This script replaces the chimeraOS gamescope version to a working one from chimeraOS v43-1.
It also adds a fan profile (WIN2.xml) using nbfc (installed during the call of the script)


BazziteOS - Win2
bazzite_fix.sh replaces the gamescope version to a working one comming from chimeraOS v43-1.
It downloads the latest nbfc rpm package from the official repo and installs a working profile for it.



# Note: 
 - nbfc requires secure boot to be disabled at BIOS, if you need to reboot directly to BIOS you can run
`sudo systemctl reboot --firmware-setup`

