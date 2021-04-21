nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)

command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 GoAutoTest :CocCommand go.test.generate.file
command! -nargs=0 MdFix :CocCommand markdownlint.fixAll
