if has('python3.8')
	let g:python3_host_prog = '/usr/bin/python3.8'
elseif has('python3')
	let g:python3_host_prog = '/usr/bin/python3'
endif

if has('python2.7')
	let g:python_host_prog = '/usr/bin/python2.7'
elseif has('python2')
	let g:python_host_prog = '/usr/bin/python2'
endif
