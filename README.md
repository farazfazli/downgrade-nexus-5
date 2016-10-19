# downgrade-nexus-5
Downgrade Nexus 5 to 4.4.4

To aquire files needed:

```
git clone https://github.com/farazfazli/downgrade-nexus-5.git && cd downgrade-nexus-5 && wget https://github.com/farazfazli/downgrade-nexus-5/releases/download/4.4.4/system.img
```

This assumes you have an unlocked bootloader, if you don't run ```fastboot oem unlock```. Ensure your phone is not on the lock screen and USB debugging is enabled. Then run:

```
./downgrade.sh
```

Flashes custom 4.4.4 ROM + Radio + Bootloader as well as custom TWRP recovery. Opens recovery and prompts you to sideload the included SuperSU. From there, you can flash Ubuntu Touch via MultiROM or whatever else you'd like.
