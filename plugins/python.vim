if has('python3')
	let g:python3_host_prog = '/bin/python3.8'
	nnoremap <Leader>rp :!python3 %<CR>
	
	let g:formatters_python3 = ['autopep8', 'black']
	let g:run_all_formatters_python3 = 1
endif

if has('python')
	let g:python_host_prog = '/bin/python2.7'
	nnoremap <Leader>r2 :!python2.7 %<CR>
	let g:loaded_python_provider = 0
endif
