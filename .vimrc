"""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""
set nocompatible
syntax on
set encoding=utf8
set number

"""""""""""""""""""""""""""""""""
" Pluggins
"""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
" Utility
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf'
Plug 'moll/vim-bbye'
Plug 'itchyny/lightline.vim'
Plug 'moll/vim-bbye'

" PHP Support
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

call plug#end()

"""""""""""""""""""""""""""""""""
" Pluggins configuration
"""""""""""""""""""""""""""""""""

" lightline
set laststatus=2
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'deus',
	\}

" vim-bbye
nnoremap <Leader>q :Bdelete<CR>

set backspace=indent,eol,start
