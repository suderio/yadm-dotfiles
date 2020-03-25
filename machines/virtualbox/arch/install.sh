#!/bin/sh

ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

hwclock --systohc

cat > /etc/locale.gen << EOF
de_DE.UTF8 UTF8
en_US.UTF8 UTF8
es_ES.UTF8 UTF8
fr_FR.UTF8 UTF8
ja_JP.UTF8 UTF8
pt_BR.UTF8 UTF8

EOF

locale-gen

cat > /etc/locale.conf << EOF
LANG=pt_BR.UTF8

EOF

cat < /etc/vconsole.conf << EOF
KEYMAP=br-abnt2

EOF

cat < /etc/hostname << EOF
arch

EOF

cat < /etc/hosts << EOF
127.0.0.1	localhost arch
::1		localhost arch

EOF

cat > /etc/systemd/network/20-wired.network << EOF
[Match]
Name=$NIC

[Network]
DHCP=yes
DNS=$DNS

EOF

systemctl enable systemd-networkd.service
systemctl enable systemd-resolved.service #?
systemctl enable dhcpcd.service #?

timedatectl set-ntp true

grub-install --target=i386-pc /dev/sda

grub-mkconfig -o /boot/grub/grub.cfg

passwd

exit

reboot
