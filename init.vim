"""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""
syntax on
set encoding=utf8
set number
set timeoutlen=50

" enable mouse
set mouse=a

" disable compatible mode
if &compatible
    set nocompatible
endif

" tabs configuration
nnoremap <C-up> :bnew<CR>
nnoremap <C-left> :bprevious<CR>
nnoremap <C-right> :bnext<CR>

" tabs spaces
set tabstop=4
set softtabstop=0
set shiftwidth=4

" all copy content go to clipboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p
nnoremap <C-v> "+p

if exists("g:did_load_filetypes")
  filetype off
  filetype plugin indent off
endif

nnoremap <C-q> :Bdelete<CR>

"statusline
set noshowmode
set hidden

"""""""""""""""""""""""""""""""""
" Pluggins
"""""""""""""""""""""""""""""""""
call plug#begin('~/vimconf/plugged')

" themes
Plug 'flazz/vim-colorschemes'

" Utility
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'moll/vim-bbye'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'ryanoasis/vim-devicons'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" PHP Support
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'StanAngeloff/php.vim'
Plug 'arnaud-lb/vim-php-namespace'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'leshill/vim-json'
Plug 'wokalski/autocomplete-flow'
" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Project 
"Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'
call plug#end()

" themes
" colorscheme molokai

"""""""""""""""""""""""""""""""""
" Pluggins configuration
"""""""""""""""""""""""""""""""""
for file in split(glob("~/vimconf/plugconf/*.vimconf"), '\n')
  exe 'source' file
endfor
