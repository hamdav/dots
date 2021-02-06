" Set indentation to 4
set sw=4

" Enable spellcheck
set spell
set spelllang=sv

" Enable spell fixing with CTRL+s
" <c-g>u make undo block, lasts untill next <c-g>u, exit insert mode, 
" [s go to last misspelled word
" 1z= replace with first suggestion, `] go to the end of the last changed text
imap <c-s> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-s> [s1z=<c-o>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-latex
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set pdfviewer to skim 
let g:Tex_ViewRule_pdf = 'open -a Skim'

" Compile pdf
let g:Tex_DefaultTargetFormat = 'pdf'

" Compile as many times as needed when compiling pdf
let g:Tex_MultipleCompileFormats = 'dvi,pdf'

" Set compile rule.
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'

" Create mapping to toggle compiling with shell escape or not
nnoremap <F12> :call ShellEscape()<CR>
function! ShellEscape()
  if g:Tex_CompileRule_pdf == 'pdflatex -interaction=nonstopmode $*'
    let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode -shell-escape $*'
    echo "shell escape enabled"
  else
    let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
    echo "shell escape disabled"
  endif
endfunction


" Set bibliography backend to biber (default is bibtex)
let g:Tex_BibtexFlavor = 'biber'

" Set leaderkey to §, (was originally ` (backtick))
let g:Tex_Leader = '§'

" Enable alt-key bindings in vim latex.
let g:Tex_AdvancedMath = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tex-conceal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Conceal fractions (½ ⅓ ⅔ ¼ ⅕ ⅖ ⅗ ⅘ ⅙ ⅚ ⅛ ⅜ ⅝ ⅞)
let g:tex_conceal_frac = 1

set conceallevel=2
let g:tex_conceal="abdgm"
