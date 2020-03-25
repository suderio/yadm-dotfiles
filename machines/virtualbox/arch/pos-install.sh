#!/bin/sh

useradd -m -G adm paulo

#passwd paulo

#visudo

pacman -Sy pacman-contrib
#rankmirrors

pacman -Sy openssh
systemctl enable sshd

###

pacman -Sy aurphan

### X
# lspci | grep -e VGA -e 3D
pacman -Sy xf86-video-vmware
pacman -Sy xorg-server xorg-apps xorg
#pacman -Sy awesome

### basics

pacman -Sy git pkgfile


Server = https://mirror.osbeck.com/archlinux/
Server = http://ftp.sh.cvut.cz/arch/
Server = http://arch.jensgutermuth.de/
Server = http://mirror.cyberbits.eu/archlinux/
Server = http://mirror.ubrco.de/archlinux/

