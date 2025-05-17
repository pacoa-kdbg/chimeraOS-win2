# Overview

This script replaces the chimeraOS gamescope version to a working one from chimeraOS v43-1.
It also adds a fan profile using nbfc

# Bazzite instructions

Bazzite doesn't need custom gamescope, tested in Bazzite v41 on a GPD Win 2 m3-7y30. However, nbfc does need to be manually installed.

You may encounter a bug where the screen is blank/black during the install process. Workaround is to plug in an external monitor while booting the installer, display via usb-c adapter should work fine too.

```bash
# installs nbfc
curl -L https://github.com/pacoa-kdbg/chimeraOS-win2/raw/main/bazzite_fix.sh | sh
```

You can use [SimpleDeckyTDP](https://github.com/aarron-lee/SimpleDeckyTDP) for EPP and power governor controls, unfortunately TDP controls currently don't work. You can disable TDP controls in SDTDP's settings.

You can also use [steam-powerbuttond](https://github.com/ShadowBlip/steam-powerbuttond) for to get the power button to sleep the device.

```bash
# install steam-powerbuttond
curl -L https://github.com/ShadowBlip/steam-powerbuttond/raw/main/bazzite_install.sh | sh
```

# ChimeraOS instructions:
  1. Grab the latest install ISO from the main chimeraOS pages.
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
