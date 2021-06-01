set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<Enter>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

command! -nargs=0 Format :call CocAction('format')

nmap <F3>f :Format<CR>

xmap <leader>a  <Plug>(coc-codeaction-selected)<Enter>
nmap <leader>a  <Plug>(coc-codeaction-selected)<Enter>
nmap <leader>d :CocDiagnostics<CR>

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ca  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

command! -nargs=? Fold :call CocAction('fold', <f-args>)

nnoremap <silent><nowait> <space>r  :<C-u>CocList diagnostics<cr>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

nnoremap <silent><nowait> <leader>t :CocCommand terminal.Toggle<CR> 
nnoremap <silent><nowait> <leader>r :CocCommand terminal.REPL<CR> 

inoremap <C-c> <Esc>
hi CocCodeLens guifg=White


nnoremap <silent><nowait> <leader>b :Buffers<CR> 

command! -nargs=0 C             CocConfig
command! -nargs=0 L             CocListResume
command! -nargs=0 -range D      CocCommand
command! -nargs=0 Prettier      CocCommand prettier.formatFile
command! -nargs=0 CocOutput     CocCommand workspace.showOutput

command! -nargs=0 Todos         CocList -A --normal grep -e TODO|FIXME
command! -nargs=0 Status        CocList -A --normal gstatus
command! -nargs=0 Buffers       CocList -A --normal buffers
command! -nargs=+ Find          exe 'CocList -A --normal grep --smart-case '.<q-args>
command! -nargs=0 Fold          call CocAction('fold')
command! -nargs=0 GitChunkUndo  call CocAction('runCommand', 'git.chunkUndo')
command! -nargs=0 OR            call CocAction('runCommand', 'editor.action.organizeImport')
command! -nargs=0 Tsc           call CocAction('runCommand', 'tsserver.watchBuild')
