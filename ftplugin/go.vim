command! -buffer -bar GoRun :w !go run %
nnoremap <Leader>gr :GoRun<CR>
setl noet sw=4 sts=4 ts=4
setl com=s1:/*,mb:*,ex:*/,:// cms=//\ %s isk+="
