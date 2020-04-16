"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" add all your plugins here 
" Plug 'monkey/bananas' is shorthand for 
" Plug 'https://github.com/monkey/bananas'
    " No BS code folding for python
Plug 'tmhedberg/SimpylFold'
    " Better python indentation
Plug 'vim-scripts/indentpython.vim'
    " Autocomplete
Plug 'Valloric/YouCompleteMe'
    " Latex tools
Plug 'vim-latex/vim-latex'
    " Git mergetool
Plug 'whiteinge/diffconflicts'

" Syntax error checking. 
Plug 'vim-syntastic/syntastic'
    " The plugin needs external syntax checkers
    " Checker for python syntax and style
" Plug 'nvie/vim-flake8'


" Color schemes
Plug 'nanotech/jellybeans.vim'
Plug 'jnurmine/Zenburn'
Plug 'morhetz/gruvbox'
Plug 'ciaranm/inkpot'
Plug 'xiaody/thornbird.vim'

" Syntax highlighting
    " Python
Plug 'hdima/python-syntax'
    " Syntax highlighting and indentation for haskell
Plug 'neovimhaskell/haskell-vim'

" Concealment for haskell
" Plug enomsg/vim-haskellConcealPlus

" All of your Plugins must be added before the following line
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set leader
let mapleader = ","

" Set encoding
set encoding=utf-8


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set n lines to the cursor - when moving vertically using j/k
set scrolloff=3

" Set n characters to the cursor when moving right and left
set sidescrolloff=5

"Always show current position
set ruler

" Set row numbers and relative numbers
set number
set relativenumber

" Height of the command bar
set cmdheight=1

" Show commands as they are typed
set showcmd

" Display command line’s tab complete options as a menu.
set wildmenu

" A buffer becomes hidden when it is abandoned
" set hid

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Incremental search
set incsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Make code look pretty
let python_highlight_all=1
syntax on

" Set colorscheme
colorscheme gruvbox

"set dark mode for gruvbox
set background=dark


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

"Let enter make empty line below and shift enter empty line above
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" Let backspace remove indents and eols
set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe customization
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Makes the autocomplete window go away when you are done with it
let g:wcm_autoclose_preview_window_after_completion=1

"Define shorcut for goto definition
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic customization
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_python_checkers = ['flake8']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual style
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


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


