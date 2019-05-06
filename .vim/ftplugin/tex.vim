" Set indentation to 2 
set sw=2

" Set pdfviewer to zathura 
let g:Tex_ViewRule_pdf = 'zathura'

" Compile pdf
let g:Tex_DefaultTargetFormat = 'pdf'

" Compile as many times as needed when compiling pdf
let g:Tex_MultipleCompileFormats = 'dvi,pdf'

" Don't output shit in the terminal
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $* > /dev/null &'
