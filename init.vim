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

map <C-N> :bnext<CR>
map <C-M> :bprev<CR>

" Disable Vi defaults.
if &compatible
  " `:set nocompatible` has many side effects. Therefore this should be done only when 'compatible' is set.
  set nocompatible
endif
" Set utf-8 encoding
set encoding=utf-8
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
set spelllang=en_us


if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif

" Reload unchanged files automatically.
set autoread
" When 'wrap' is on, display last line even if it doesn't fit.
set display+=lastline
" Delete comment character when joining commented lines
set formatoptions+=j

" Increase history size to 1000 items.
if &history < 1000
  set history=1000
endif

" Allow for up to 50 opened tabs on Vim start.
if &tabpagemax < 50
  set tabpagemax=50
endif

" Always save upper case variables to viminfo file.
if !empty(&viminfo)
  set viminfo^=!
endif

" Improve displayed color if supported by terminal
if &t_Co >= 256
  set termguicolors
end

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

"Disable output, vcs, archive, rails, temp and backup files.
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

"Set window title by default.
set title

"Always focus on splited window.
set splitright
set splitbelow

"Allow for easy copying and pasting
vnoremap <silent> y y`]
nnoremap <silent> p p`]

"Prevent common mistake of pressing q: instead :q
map q: :q
map w: :w

"Disable writebackup because coc.nvim have issues with it
set nowritebackup
set noswapfile

"Reduce updatetime from 4000 to 300 to avoid issues with coc.nvim
set updatetime=300

"Auto reload if file was changed somewhere else (for autoread)
au CursorHold * checktime

" Persist undo history between file editing sessions.
set undofile
if has('nvim')
   set undodir=$HOME/.config/nvim/undodir 
elseif has('vim')
   set undodir=~/.vim/undodir
endif

set background=dark
colorscheme gotham

set guifont=Fira\ Code:h12

packloadall
runtime! plugins/*.vim

set shell=/usr/bin/zsh

" Author and Maintainer:  Eliaz Bobadilla <eliaz.bobadilladev@gmail.com>
" Git Repository: https://github.com/UltiRequiem/UltiVim
