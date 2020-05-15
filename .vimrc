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
    " Auto pep8
Plug 'tell-k/vim-autopep8'
    " Autocomplete
Plug 'Valloric/YouCompleteMe'
"Plug 'maralla/completor.vim'
    " Latex tools
Plug 'vim-latex/vim-latex'
    " Git mergetool
"Plug 'whiteinge/diffconflicts'
    " Git commands
Plug 'tpope/vim-fugitive'
    " Better statusline and tabline
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

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
Plug 'sjl/badwolf'

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

" Always show tabline
set showtabline=2

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
" => Statusline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show statusline
set laststatus=2

" Get current git branch
function! GitBranch(git)
  if a:git == ""
    return '-'
  else
    return a:git
  endif
endfunction

" If file is a tex file, run texcount on save and output to statusline
let g:latex_wc=""
augroup latexstatus
    autocmd!
    " Whenever a tex file is written, Read or entered (e.g. when switching to
    " tab) count the words
    autocmd BufWritePost,BufRead,BufEnter *.tex :let g:latex_wc=GetWC()." words"
    " Whenever tex file is left, do not display a wordcount
    autocmd BufLeave *.tex :let g:latex_wc=""
augroup END

" Get the texcount wordcount for current file
function! GetWC()
    let l:tmp=system("texcount"." ".expand('%'))
    let l:tmp1=system("grep 'Words in text'", l:tmp)
    let l:tmp2=system("egrep -o -e '[0-9]+'", l:tmp1)
    let l:tmp3=system("tr -d '\n'", l:tmp2)
    return l:tmp3
endfunction

" Define some highlight groups to display nice colors
hi Base ctermbg=238 ctermfg=208 guibg=#444444 guifg=#ff8700
"hi ColCol ctermbg=235 ctermfg=245
hi SepCol ctermbg=238 ctermfg=39 cterm=bold gui=bold guibg=#444444 guifg=#00afff
hi GitCol ctermbg=235 ctermfg=35 guibg=#262626 guifg=#00af5f

" Create the statusline
set statusline=""
set statusline+=%#LineNr#
set statusline+=%3c
set statusline+=%#SepCol#%{'\ «\ '}%#Base#
set statusline+=%t      " Filename
set statusline+=%1m     " Modified flag
set statusline+=%1r     " Read-Only flag
set statusline+=%#SepCol#%{'\ »\ \ \ '}%#Base#

set statusline+=%= " Left - Right separation
set statusline+=%{g:latex_wc} " Latex wordcount
set statusline+=%#SepCol#%{'\ \ \ «\ '}%#Base#
set statusline+=%#GitCol#
set statusline+=\ 
set statusline+=%{GitBranch(fugitive#head())}
set statusline+=\ 


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

set autoindent "Auto indent
filetype plugin indent on
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

"Makes the autocomplete window go away after completion
let g:ycm_autoclose_preview_window_after_completion=0

"Makes the autocomplete window go away after exited insert mode
let g:ycm_autoclose_preview_window_after_insertion=1

"Define shorcut for goto definition
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic customization
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_python_checkers = ['flake8']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-autopep8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disabel show diff window
let g:autopep8_disabe_show_diff=0

" Map it to the f8 key
augroup Autopep8cmds
    autocmd!
    autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
augroup END

" Do not format on save 
let g:autopep8_on_save = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:airline_section_z = ''
"let g:airline_section_b = ''
"let g:airline_section_c = ''
"let g:airline_section_y = ''
"let g:airline_section_x = ''
"let g:airline_section_error = airline#section#create_right(['syntastic-warn'])
"let g:airline_section_warning = ''
"let g:airline#extensions#wordcount#enabled = 0
