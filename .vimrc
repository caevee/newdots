set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Townk/vim-autoclose'
Plugin 'mattn/emmet-vim'
Plugin 'dracula/vim', { 'name': 'dracula' }

call vundle#end()
filetype plugin indent on

" Fix autoclose
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

inoremap jk <Esc>

colorscheme dracula

let mapleader="ü"
syntax on
set relativenumber
set backspace=indent,eol,start
set shiftwidth=4
set tabstop=4
"set expandtab
set scrolloff=6

nnoremap J gj
nnoremap K gk

nnoremap <silent> <leader><CR> :noh<CR>

set incsearch hlsearch

autocmd FileType python map <buffer> <F3> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

