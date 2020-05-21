#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
PS1='\[\e[1;32m\]\u\[\e[1;34m\] \W\[\e[1;0m\]\$ '

# For the tracking of dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.myconf --work-tree=$HOME'

# For running matlab without gui
alias natlab='/usr/local/bin/matlab -nodesktop'

alias please='sudo "$BASH" -c "$(history -p !!)"'

# Get the right vim
alias vim='~/vim/src/vim'
export VIMRUNTIME=~/vim/runtime
