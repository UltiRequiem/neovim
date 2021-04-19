if has('python3.8')
	let g:python3_host_prog = '/usr/bin/python3.8'
	nnoremap <Leader>rp :!python3.8 %<CR>
elseif has('python3')
	let g:python3_host_prog = '/usr/bin/python3'
	nnoremap <Leader>rp :!python3 %<CR>
endif

if has('python2.7')
	let g:python_host_prog = '/usr/bin/python2.7'
	nnoremap <Leader>rp :!python2.7 %<CR>
elseif has('python2')
	let g:python_host_prog = '/usr/bin/python2'
	nnoremap <Leader>rp :!python2 %<CR>
endif
