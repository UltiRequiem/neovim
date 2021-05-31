command! -buffer -bar NodeRun :w !node %
nnoremap <Leader>nd :NodeRun<CR>
command! -buffer -bar EslintAutoFix :CocCommand eslint.executeAutofix
nnoremap <Leader>el :EslintAutoFix<CR>

setl ts=2 sw=2 isk+=$ sua+=.js
