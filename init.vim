"  _____ _             ____            _           _
" |_   _| |__   ___   / ___|___   ___ | | ___  ___| |_
"   | | | '_ \ / _ \ | |   / _ \ / _ \| |/ _ \/ __| __|
"   | | | | | |  __/ | |__| (_) | (_) | |  __/\__ \ |_
"   |_| |_| |_|\___|  \____\___/ \___/|_|\___||___/\__|
"  _       _ _         _           
" (_)_ __ (_) |___   _(_)_ __ ___  
" | | '_ \| | __\ \ / / | '_ ` _ \ 
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|


" Move fast and efficiently!
let mapleader = ' '
nmap <Leader>w :w<CR> " Fast Saving
nmap <Leader>q :q<CR> " Exit
nmap <Leader>qq :q!<CR> " Fast exit
nmap <Leader>tt :t.<CR> " Duplicate Line

map <C-N> :bnext<CR>
map <C-M> :bprev<CR>

"Show line numbers on the sidebar
set relativenumber number
" Autoindent when starting new line
set autoindent
" Enable highlighted case-insensitive incremential search.
set incsearch
" Always show window statuses
set laststatus=2
" Show the line and column number of the cursor position.
set ruler
set wildmenu

" When 'wrap' is on, display last line even if it doesn't fit.
set display+=lastline
" Delete comment character when joining commented lines
set formatoptions+=j

" Improve displayed color if supported by terminal
set termguicolors

" Hide buffers instead of asking if to save them.
set hidden

" For autocompletion, complete as much as you can.
set wildmode=longest,full

" Disable any annoying beeps on errors.
set noerrorbells
set visualbell

" Don't parse modelines
set nomodeline

" Do not fold by default. But if, do it up to 3 levels.
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Enable mouse for scrolling and window resizing.
set mouse=a

" Avoid swapfile warning when auto-reloading
set shortmess+=A

" Save up to 100 marks, enable capital marks.
set viminfo='100,f1

" Enable search highlighting.
set hlsearch

" Ignore case when searching.
set ignorecase

" Show mode in statusbar, not separately.
set noshowmode

" Don't ignore case when search has capital letter
" (although also don't ignore case by default).
set smartcase

" Use dash as word separator.
set iskeyword+=-

" Disable output, vcs, archive, rails, temp and backup files.
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

" Always focus on splited window.
set splitright
set splitbelow

" Allow for easy copying and pasting
vnoremap <silent> y y`]
nnoremap <silent> p p`]

" Prevent common mistake of pressing q: instead :q
map q: :q
map w: :w
map :Q :q
map :W :w

" Disable writebackup because coc.nvim have issues with it
set nowritebackup
set noswapfile

" Reduce updatetime from 4000 to 300 to avoid issues with coc.nvim
set updatetime=300

" Auto reload if file was changed somewhere else (for autoread)
au CursorHold * checktime

" Persist undo history between file editing sessions.
set undofile
set undodir=$HOME/.config/nvim/undodir 

set guifont=Fira\ Code:h12

packloadall
runtime! plugins/*.vim

set shell=/usr/bin/zsh

" Author and Maintainer:  Eliaz Bobadilla <eliaz.bobadilladev@gmail.com>
" Git Repository: https://github.com/UltiRequiem/UltiVim
