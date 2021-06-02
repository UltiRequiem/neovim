command! -buffer -bar GoRun :w !go run %
nnoremap <Leader>gr :GoRun<CR>
nnoremap <Leader>gl s:GoLint<CR>
setl noet sw=4 sts=4 ts=4 fo-=t com=s1:/*,mb:*,ex:*/,:// cms=//\ %s isk+=" 

command! -buffer GoLint call s:GoLint()

function! s:GoLint() abort
    cexpr system('golint ' . shellescape(expand('%')))
endfunction
