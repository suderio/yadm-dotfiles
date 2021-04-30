# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# some modifications
HISTCONTROL=ignoreboth
export HISTFILESIZE=20000
export HISTSIZE=10000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Isso e para resolver o bug de acentos no alacritty em wayland
export LC_ALL=pt_BR.UTF-8

