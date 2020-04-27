# dots
Dotfiles: system based on [this article](https://www.atlassian.com/git/tutorials/dotfiles) 
and [this thread](https://news.ycombinator.com/item?id=11071754)


## Setup
To set up the system, simply run
```sh
git init --bare $HOME/.myconf
alias config='git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config remote add origin git@github.com:hamdav/dots.git
config config status.showUntrackedFiles no
```

## Usage
Simply use `config` instead of `git`
```sh
mydotfiles status
mydotfiles add .vimrc
mydotfiles commit -m 'Add vimrc'
mydotfiles push
```
and so on.
