command! -buffer -bar LuaRun :w !lua %
nnoremap <Leader>lr :LuaRun<CR>
packadd luadev
