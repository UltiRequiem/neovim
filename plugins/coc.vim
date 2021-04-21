    nmap <silent> <leader>dd <Plug>(coc-definition)
    nmap <silent> <leader>dr <Plug>(coc-references)
    nmap <silent> <leader>dj <Plug>(coc-implementation)

    command! -nargs=0 Prettier :CocCommand prettier.formatFile
