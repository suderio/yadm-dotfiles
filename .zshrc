# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/snap/bin:$PATH

find $HOME/bin -iname "*.sh" | while read shell_script; do echo "Executando $shell_script"; source $shell_script; done

export LANG=pt_BR.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='emacs'
fi


