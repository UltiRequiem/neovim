command! -buffer -bar GoRun :w !go run %
nnoremap <Leader>gr :GoRun<CR>
setl isk+="
setl noet
setl sw=4
setl sts=4
setl ts=4
setl com=s1:/*,mb:*,ex:*/,://
setl cms=//\ %s
