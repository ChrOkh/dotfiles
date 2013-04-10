let mapleader=","

" Indentation
set tabstop=2
set shiftwidth=2
set ts=2 sts=2 sw=2 " 2 spaces tabs
set expandtab " Tabs -> Spaces
set autoindent " Follow indent on next line
set cindent " Auto indent braces

" Required for running custom aliases
" http://stackoverflow.com/questions/8841116/vim-not-recognizing-aliases-when-in-interactive-mode
set shell=/bin/bash\ --rcfile\ ~/.bash_profile\ -i

" Pathogen, for handling the runtime path
set nocp
call pathogen#infect()
call pathogen#helptags()

" Map NERDTree to leader-n
map <Leader>n :NERDTreeToggle<CR>

" Cycle through buffers
map <Tab> :bnext<CR>
map <S-Tab> :bprevious<CR>

map <C-Left> :wincmd h<CR>
map <C-Down> :wincmd j<CR>
map <C-Up> :wincmd k<CR>
map <C-Right> :wincmd l<CR>

" Vundle package manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'jcf/vim-latex'
Bundle 'altercation/vim-colors-solarized'
Bundle 'danro/rename.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/BufOnly.vim'

" Required for Vundle and for vim-latex
filetype indent on
filetype plugin on

" Required for vim-latex
" grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite.
" Set your grep program to always generate a file-name.
" set grepprg=grep\ -nH\ $*
let g:Tex_ViewRule_pdf = 'Preview'
let g:Tex_DefaultTargetFormat = 'pdf'
