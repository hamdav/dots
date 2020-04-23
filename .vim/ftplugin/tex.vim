" Set indentation to 2 
set sw=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-latex
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set pdfviewer to skim 
let g:Tex_ViewRule_pdf = 'open -a Skim'

" Compile pdf
let g:Tex_DefaultTargetFormat = 'pdf'

" Compile as many times as needed when compiling pdf
let g:Tex_MultipleCompileFormats = 'dvi,pdf'

" Set compile rule. OBS option -shell-escape lets latex run commands in
" terminal
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode -shell-escape $*'

" Set bibliography backend to biber (default is bibtex)
let g:Tex_BibtexFlavor = 'biber'

" Set leaderkey to §, (was originally ` (backtick))
let g:Tex_Leader = '§'

" Enable alt-key bindings in vim latex.
let g:Tex_AdvancedMath = 1
