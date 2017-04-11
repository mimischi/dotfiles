#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lah'
PS1='[\u@\h \W]\$ '

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

eval "$(dircolors -b $HOME/.dir_colors/dircolors.256dark)"

export EDITOR="emacsclient -nc"
export VISUAL="$EDITOR"
export ALTERNATE_EDITOR="vim"

alias emacsc='emacsclient -nc'
alias vpnmpi='sudo vpnc vpnmpibp'
