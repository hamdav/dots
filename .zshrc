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

# Git branch in prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{red}%b'
# Bold working dir prompt
PROMPT+='%B%F{green} %1~ %F{blue}%# %f%b'

########################
#        Aliases
########################

# For todolist
alias t='todo.sh'

# Colorful ls
alias ls='ls --color=auto'
alias la='ls -a'

# For the tracking of dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.myconf --work-tree=$HOME'

# For running matlab without gui
alias natlab='/usr/local/bin/matlab -nodesktop'

########################
#        Plugins
########################

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
#
zinit load 'softmoth/zsh-vim-mode'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/david/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/david/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/david/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/david/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# This is for some wierd reason needed for the python prompt making backspace work as it should
export TERMINFO=/usr/share/terminfo
