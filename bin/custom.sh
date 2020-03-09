#!/bin/sh

# Instala o vim-plug para carregar os plugins do nvim
[[ -f ~/.local/share/nvim/site/autoload/plug.vim ]] || curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

google_drive() {
  mount | grep "${HOME}/gdrive" >/dev/null || /usr/bin/google-drive-ocamlfuse "${HOME}/gdrive"
}

test_iso_2022_locking_scape() {
  echo -e "\033(0"
}

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

function fawk {
    first="awk '{print "
    last="}'"
    cmd="${first}\$${1}${last}"
    eval $cmd
}

function start {
    export ECLIPSE_HOME=/home/hoot/eclipse-workspace
    export XAUTHORITY=/home/hoot/.Xauthority
    menu.py $1
}

[[ -f /usr/share/virtualenvwrapper/virtualenvwrapper.sh ]] && source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# por algum motivo isso não é carregado pelo bash do rhel
[[ -f /etc/os-release ]] && grep -qi rhel /etc/os-release && source ~/.bash_completion

