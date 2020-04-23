#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -GFh'
alias la='ls -a'
PS1='\[\e[1;32m\]\u\[\e[1;34m\] \W\[\e[1;0m\]\$ '

# For the tracking of dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.myconf --work-tree=$HOME'

# For running matlab without gui
alias natlab='/Applications/MATLAB_R2019b.app/bin/matlab -nodesktop'

alias please='sudo "$BASH" -c "$(history -p !!)"'

alias npltpy="python3 -i -c 'import numpy as np; import matplotlib.pyplot as plt; plt.style.use(\"fivethirtyeight\")'"

# Add ghcup to path
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# Set locale because qalc was complaining
export LC_ALL=en_US.UTF-8
