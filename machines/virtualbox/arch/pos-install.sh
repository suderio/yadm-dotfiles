#!/bin/sh

useradd -m -G adm paulo

#passwd paulo

pacman -Sy pacman-contrib sudo openssh aurphan git pkgfile git base-devel

pkgfile -u

#visudo

#rankmirrors

#sshd_config

systemctl enable sshd

### X
# lspci | grep -e VGA -e 3D
pacman -Sy xf86-video-vmware
pacman -Sy xorg-server xorg-apps xorg

# yay
mkdir ~/repos
cd repos
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si


pacman -Sy byobu neovim ripgrep clang tar fd pandoc emacs powerline terminator rxvt-unicode powerline-fonts elinks

yadm clone git@github.com:suderio/dotfiles.git
