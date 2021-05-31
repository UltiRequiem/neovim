command! -buffer -bar NodeRun :w !node %
nnoremap <Leader>nd :NodeRun<CR>
setl ts=2 sw=2 isk+=$ sua+=.js
