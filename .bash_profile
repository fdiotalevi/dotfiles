#Normal ubuntu stuff follows

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# history file
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PS1="\d \@ [\u]@\w\[$(tput sgr0)\] $ "

#Custom stuff here

#aliases
alias resource='source ~/.bash_profile'
alias mkdir="mkdir -pv"

#load all .bash_files
for f in ~/.bash_files/*; do source $f; done
