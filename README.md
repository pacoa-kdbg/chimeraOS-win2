# Overview

This script replaces the chimeraOS gamescope version to a working one from chimeraOS v43-1.
It also adds a fan profile  using nbfc


## Overall instructions for usage : 
  1. Grab the latest install ISO from the main chimeraOS or Bazzite pages.
  2. Go through the install process.
  3. After full install, when booting to gamepadUI mode (steam big picture through gamescope) all you will get is a black screen.
  4. Press 'alt + Ctrl + F2' to switch to TTY
  5. introduce username/password (chimeraOS has default ones to be gamer/gamer)
  6. clone this github repo.  `git clone https://github.com/pacoa-kdbg/chimeraOS-win2/tree/main`
  7. `cd chimeraOS-win`
  8. Allow the scripts to be executed using 
      `sudo chmod +x *_fix.sh`
  9. Call the corresponding script
  10. Disable secure boot (check Note)
  11. Boot and enjoy
   
# Note: 
 - nbfc requires secure boot to be disabled at BIOS, if you need to reboot directly to BIOS you can run
`sudo systemctl reboot --firmware-setup`

