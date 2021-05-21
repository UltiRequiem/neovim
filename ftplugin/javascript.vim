command! -buffer -bar NodeRun :w !node %
nnoremap <Leader>nd :NodeRun<CR>
setl ts=2
setl sw=2
setlocal isk+=$ sua+=.js
