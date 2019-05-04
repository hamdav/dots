#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
PS1='[\u@\h \W]\$ '

# For the tracking of dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.myconf --work-tree=$HOME'
