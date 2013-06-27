#!/recovery/sbin/busybox sh

export PATH=/recovery/sbin

mkdir /proc
mkdir /sys
mount -t proc proc /proc
mount -t sysfs sys /sys

mkdir /dev
mknod /dev/null c 1 3
mknod /dev/zero c 1 5
mknod /dev/urandom c 1 9
mkdir /dev/block
mkdir /dev/input
mknod /dev/input/event0 c 13 64
mknod /dev/block/mmcblk0p13 b 179 13

mkdir /cache
mount -t ext4 -o nodev,nosuid /dev/block/mmcblk0p13 /cache

if [ ! -f /cache/recovery/boot ] || [ ! -f /cache/recovery/command ]; then
        # Trigger blue LED
        echo '255' > /sys/devices/i2c-3/3-0040/leds/blue/brightness
        # Trigger button-backlight
        echo '255' > /sys/class/leds/button-backlight/brightness
        cat /dev/input/event0 > /dev/keycheck&
        sleep 3

        # Trigger blue LED
        echo '0' > /sys/devices/i2c-3/3-0040/leds/blue/brightness
        # Trigger button-backlight
        echo '0' > /sys/class/leds/button-backlight/brightness
fi

if [ -s /dev/keycheck ] || [ -e /cache/recovery/boot ] || [ -e /cache/recovery/command ]
then
        # *** Enter recovery mode
        # ** Step 1. Remove unnecessary files and unmount block
        rm /cache/recovery/boot
        umount /cache

        # ** Step 2. Prepare to launch recovery
        ln -s /recovery/sbin/busybox /sbin/sh

        rm /init.rc
        rm /init.semc.rc
        rm /init.usbmode.sh
        cp /recovery/init.rc /init.rc

        mkdir /etc
        cp /recovery/recovery.fstab /etc/recovery.fstab

        mv /recovery/res /res
        mv /recovery/charger /charger

        # ** Step 3. Boot the init binary
        ln -s /init_ics /sbin/ueventd
        /init_ics


else
        # *** Enter normal mode
        # ** Step 1. Unmount block
        umount /cache

        # ** Step 2. Boot init binary
        ln -s /init_ics /sbin/ueventd

        /init_ics
fi
