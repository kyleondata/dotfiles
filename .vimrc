set nocompatible              " be iMproved, required
filetype off                  " required

set clipboard=unnamed

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " alternatively, pass a path where Vundle should install plugins
" " call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'wesQ3/vim-windowswap'

call vundle#end()            " required
filetype plugin indent on    " required

set number
syntax enable
set background=dark
colorscheme solarized

let g:solarized_termcolors = 256

" Tabs
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"*Read-Only*":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ }

set laststatus=2

au VimEnter * NERDTree

let mapleader=","
