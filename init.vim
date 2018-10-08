"""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""
set nocompatible
syntax on
set encoding=utf8
set number
set timeoutlen=50
let mapleader='\'
"""""""""""""""""""""""""""""""""
" Pluggins
"""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')
" themes
Plug 'flazz/vim-colorschemes'

" Utility
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'moll/vim-bbye'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'
Plug 'itchyny/lightline.vim'
Plug 'taohexxx/lightline-buffer'
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

" Project 
"Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'
call plug#end()

" themes
colorscheme molokai

"""""""""""""""""""""""""""""""""
" Pluggins configuration
"""""""""""""""""""""""""""""""""

"NERDTree
map <C-n> :NERDTreeToggle<CR>
inoremap <C-n> <ESC>:NERDTreeToggle<CR>

" bbey
nnoremap <Leader>q :Bdelete<CR>

" lightline
set laststatus=2
let g:lightline = { 'colorscheme': 'deus' }
set noshowmode
"show open buffers
set hidden  " allow buffer switching without saving
set showtabline=2  " always show tabline
"use lightline-buffer in lightline
let g:lightline = {
    \ 'tabline': {
    \   'left': [ [ 'bufferinfo' ],
    \             [ 'separator' ],
    \             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
    \   'right': [ [ 'close' ], ],
    \ },
    \ 'component_expand': {
    \   'buffercurrent': 'lightline#buffer#buffercurrent',
    \   'bufferbefore': 'lightline#buffer#bufferbefore',
    \   'bufferafter': 'lightline#buffer#bufferafter',
    \ },
    \ 'component_type': {
    \   'buffercurrent': 'tabsel',
    \   'bufferbefore': 'raw',
    \   'bufferafter': 'raw',
    \ },
    \ 'component_function': {
    \   'bufferinfo': 'lightline#buffer#bufferinfo',
    \ },
    \ 'component': {
    \   'separator': '',
    \ },
    \ }
" remap arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>
" lightline-buffer ui settings
" replace these symbols with ascii characters if your environment does not support unicode
let g:lightline_buffer_logo = ' '
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '✭'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = '  '
" enable devicons, only support utf-8
" require <https://github.com/ryanoasis/vim-devicons>
let g:lightline_buffer_enable_devicons = 1
" lightline-buffer function settings
let g:lightline_buffer_show_bufnr = 1
" :help filename-modifiers
let g:lightline_buffer_fname_mod = ':t'
" hide buffer list
let g:lightline_buffer_excludes = ['vimfiler']
" max file name length
let g:lightline_buffer_maxflen = 30
" max file extension length
let g:lightline_buffer_maxfextlen = 3
" min file name length
let g:lightline_buffer_minflen = 16
" min file extension length
let g:lightline_buffer_minfextlen = 3
" reserve length for other component (e.g. info, close)
let g:lightline_buffer_reservelen = 20

" deoplete
let g:deoplete#enable_at_startup = 1
" phpcd deoplete
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']

" Trigger startify in every tab
if has('nvim')                                                                                                                      
	autocmd TabNewEntered * Startify                                                                                        
else
	autocmd VimEnter * let t:startify_new_tab = 1
	autocmd BufEnter *                                                                                                          
            \ if !exists('t:startify_new_tab') && empty(expand('%')) |                                                              
            \   let t:startify_new_tab = 1 |                                                                                        
            \   Startify |                                                                                                          
	    \ endif                                                                                 
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Project Managment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_lists = [
	  \ { 'type': 'bookmarks', 'header': ['   Bookmarks'] },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'commands',  'header': ['   Commands']       },
	  \ ]
let g:startify_bookmarks	= ['~/.config/nvim/init.vim', '~/Projects/bitbucket/sysadmin']
