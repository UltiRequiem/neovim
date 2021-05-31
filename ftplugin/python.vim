command! -buffer -bar PyRun :w !python3 %
nnoremap <Leader>rp :PyRun<CR>
setl si ts=4 sts=4 sw=4 et ai wig=*/__pycache__/*,*.pyc
