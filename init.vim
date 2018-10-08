"""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""
syntax on
set encoding=utf8
set number
set timeoutlen=50

" tabs configuration
noremap <C-up> :tabnew<CR>
noremap <C-left> :tabprevious<CR>
noremap <C-right> :tabnext<CR>

"""""""""""""""""""""""""""""""""
" Pluggins
"""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')
" themes
Plug 'flazz/vim-colorschemes'

" Utility
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'moll/vim-bbye'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'
Plug 'itchyny/lightline.vim'
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
colorscheme molokai

"""""""""""""""""""""""""""""""""
" Pluggins configuration
"""""""""""""""""""""""""""""""""

"NERDTree
map <C-n> :NERDTreeToggle<CR>
inoremap <C-n> <ESC>:NERDTreeToggle<CR>

nnoremap <Leader>q :Bdelete<CR>

" lightline
set laststatus=2
let g:lightline = { 'colorscheme': 'deus' }
set noshowmode
"show open buffers

" deoplete
let g:deoplete#enable_at_startup = 1
" phpcd deoplete
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']

" vim-javascript
let g:javascript_plugin_jsdoc = 1

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
