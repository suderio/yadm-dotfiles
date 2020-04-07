# music
pacman -S mpv youtube-dl alsa-utils
yay -Syu mps-youtube-git
alsactl store
systemctl start alsa-restore.service
amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

# time
systemctl enable systemd-timesyncd
systemctl start systemd-timesyncd

# cli
yay -Syu autojump-git
pacman -S htop shellcheck tree

# containers
pacman -Syu docker docker-compose




