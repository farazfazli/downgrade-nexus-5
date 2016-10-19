# Modified shell script to downgrade Nexus to 4.4
echo "-- Custom downgrade tool by Faraz for Nexus 5 --"
echo "Ensure USB debugging is on and bootloader is unlocked."
echo "Press enter to continue..."
read
adb reboot-bootloader
sleep 10
fastboot erase boot
fastboot erase cache
fastboot erase recovery
fastboot erase system
####
fastboot flash bootloader bootloader.img
fastboot reboot-bootloader
sleep 5
fastboot flash radio radio.img
fastboot reboot-bootloader
sleep 5
fastboot flash boot boot.img
fastboot reboot-bootloader
sleep 5
fastboot flash system system.img
fastboot reboot-bootloader
sleep 5
fastboot flash cache cache.img
fastboot reboot-bootloader
sleep 5
fastboot flash recovery recovery.img
fastboot reboot-bootloader
echo "Launch recovery -> tap Sideload, then press enter to continue."
read
adb sideload supersu.zip
echo "SuperSU currently flashing. After completion, reboot device."
echo "First boot will take a WHILE, don't panic."