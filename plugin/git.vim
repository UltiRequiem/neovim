" Some shortcuts
nnoremap <Leader>gg :!git add .<CR>
nnoremap <Leader>gc :!git commit -m ""
nnoremap <Leader>gp :!git push<CR>

map <C-M> :bnext<CR>
map <C-N> :bprev<CR>

nnoremap <Leader>p :lua require('telescope').extensions.media_files.media_files()<CR>
