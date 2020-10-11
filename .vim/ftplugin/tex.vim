" Set indentation to 2 
set sw=2

" Set pdfviewer to zathura 
let g:Tex_ViewRule_pdf = 'zathura'

" Compile pdf
let g:Tex_DefaultTargetFormat = 'pdf'

" Compile as many times as needed when compiling pdf
let g:Tex_MultipleCompileFormats = 'dvi,pdf'

" Set biblatex flavour to biber
let g:Tex_BibtexFlavor = 'biber'

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

" Set leaderkey to §, (was originally ` (backtick))
let g:Tex_Leader = '§'

" Enable alt-key bindings in vim latex.
let g:Tex_AdvancedMath = 1

