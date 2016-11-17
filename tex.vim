let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'
let g:Tex_MultipleCompileFormats = 'pdf'

if has('mac')
    let g:Tex_ViewRule_pdf = 'open -a texshop'
    let g:Tex_TreatMacViewerAsUNIX = 1
elseif has('unix')
    let g:Tex_ViewRule_pdf = 'evince'
endif

imap <c-j> <Plug>IMAP_DeleteAndJumpBack       
