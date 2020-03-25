#!/bin/sh

#conf

KEYBOARD=br-abnt2
NIC=enp0s3
DNS=8.8.8.8

loadkeys $KEYBOARD

cat > /etc/systemd/network/20-wired.network << EOF
[Match]
Name=$NIC

[Network]
DHCP=yes
DNS=$DNS

EOF

systemctl start systemd-networkd.service
systemctl start systemd-resolved.service #?

timedatectl set-ntp true

parted /dev/sda mklabel msdos 
parted /dev/sda mkpart primary ext4 1MB 100%
parted /dev/sda set 1 boot on
parted /dev/sdb mklabel msdos
parted /dev/sdb mkpart primary linux-swap 0% 100%

mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt

mkswap /dev/sdb1
swapon /dev/sdb1

pacstrap /mnt base linux-zen linux-firmware vim grub os-prober man-db man-pages texinfo dhcpcd

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt

