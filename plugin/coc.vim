nmap <leader>gd <Plug>(coc-definition)
nmap <leader>ge <Plug>(coc-declaration)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>lt <Plug>(coc-refactor)
nmap <leader>lg <Plug>(coc-implementation)
nmap <leader>f <Plug>(coc-fix-current)


nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Formate in visual mode
vmap <leader>lf <Plug>(coc-format-selected)
" Format all the buffer
nmap <leader>lf <Plug>(coc-format)

" Snippets stuff
imap <C-l> <Plug>(coc-snippets-expand)
nmap <C-b> <Plug>(coc-snippets-expand)
imap <C-j> <Plug>(coc-snippets-expand-jump)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

command! -nargs=0 Format :call CocAction('format')
