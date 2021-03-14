"  _____ _             ____            _           _
" |_   _| |__   ___   / ___|___   ___ | | ___  ___| |_
"   | | | '_ \ / _ \ | |   / _ \ / _ \| |/ _ \/ __| __|
"   | | | | | |  __/ | |__| (_) | (_) | |  __/\__ \ |_
"   |_| |_| |_|\___|  \____\___/ \___/|_|\___||___/\__|

" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

" Move fast and efficiently!
let mapleader = ' ' " Change it to how you feel most comfortable
nmap <Leader>w :w<CR> " Fast Saving
nmap <Leader>q :q<CR> " Exit
nmap <Leader>qq :q!<CR> " Fast exit
nmap <Leader>tt :source %<CR> "Reload

map <C-N> :bnext<CR>
map <C-P> :bprev<CR>

" General

set encoding=utf-8 " Always use unicode
set relativenumber number " Show line numbers
syntax on
set clipboard=unnamedplus
set hidden
set nowrap " Don't wrap long lines
set showmatch " Higlight matching parentheses and brackets
filetype indent plugin on

set autowrite
set incsearch
set smartcase
set noerrorbells

set nocompatible " Disable vi compatibility mode
set history=1000 " Increase history size

set autoindent " Autoindent always ON

set noswapfile " Annoying
set nobackup
set nowritebackup

set updatetime=300

" Persist undo history between file editing sessions.
set undofile
set undodir=~/.vim/undodir

set shell=/bin/bash

packloadall

" Author and Maintainer:  Eliaz Bobadilla <eliaz.bobadilladev@gmail.com>
" Git Repository: https://github.com/UltiRequiem/vimrc
