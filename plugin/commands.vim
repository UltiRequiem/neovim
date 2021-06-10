command! -nargs=0 Q     q
command! -nargs=0 W     w

nmap gx :silent exec '!brave <c-r><c-a>'<CR>
nmap gt :silent exec '!brave "https://www.google.com/search?q=<c-r><c-a>"'<CR>
