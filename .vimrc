"########## for Vundle ##############
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'morhetz/gruvbox'
Plugin 'hdima/python-syntax'
Plugin 'vim-latex/vim-latex'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"########### End of Vundle customization ##########

"Show line number (set nonumber to not show them)

set number

"show relative numbers (if both this and number is on, show number on cursur and relative elsewhere)

set relativenumber

"Shows the commands as you type them in vim

set showcmd

"highlight search results

set hlsearch

"Enable folding

set foldmethod=indent
set foldlevel=99

"Enabel folding with the spacebar

nnoremap <space> za

"Get proper PEP 8 indentation on tab press

"Autocomplete customizations
"Makes the autocomplete window go away when you are done with it
let g:wcm_autoclose_preview_window_after_completion=1

"Define shorcut for goto definition
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Make code look pretty
let python_highlight_all=1
syntax on

"set dark mode for gruvbox
set background=dark

colorscheme gruvbox

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    "\ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"Colour bad whitespace red

"highlight BadWhitespace ctermbg=red guibg=darkred
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

"Enable enter to make new line and shft enter to make new line below

map <Enter> o<ESC>
map <S-Enter> O<ESC>

