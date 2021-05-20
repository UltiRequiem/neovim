command! -buffer -bar JSRun :w !node %
nnoremap <Leader>nd :JSRun<CR>
setl ts=2
setl sw=2
setlocal isk+=$ sua+=.js
