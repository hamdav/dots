# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd nomatch
unsetopt beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/david/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

########################
#        ZSH Options
########################

# Case insensitive globbin 
# (doc* will glob to Documents)
setopt nocaseglob

# share history across multiple zsh sessions
setopt NO_SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY

# Enable corrections
setopt correct
setopt correctall

########################
#        Prompt
########################

PATH=$PATH":/home/david/.local/bin"

# Bold working dir prompt
PROMPT='%B%F{green} %1~ %F{blue}%# %f%b'
# Git branch on right side
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{green}%b'

########################
#        Aliases
########################

alias ls='ls --color=auto'
alias la='ls -a'

# For the tracking of dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.myconf --work-tree=$HOME'

# For running matlab without gui
alias natlab='/usr/local/bin/matlab -nodesktop'


