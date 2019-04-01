"show numbers
set number
"set tab size
set tabstop=4
set shiftwidth=4
set expandtab

"shortcut for saveing
map <C-s> <ESC>:w<CR>
inoremap <C-s> <ESC>:w<CR>

call plug#begin('~/.config/nvim/plugged')
"close brackets
Plug 'jiangmiao/auto-pairs'
"ident lines
Plug 'thaerkh/vim-indentguides'
"nerdtree
Plug 'scrooloose/nerdtree'
"status line
Plug 'itchyny/lightline.vim'
"surround https://github.com/tpope/vim-surround 
Plug 'tpope/vim-surround'
"gitgutter
Plug 'airblade/vim-gitgutter'
"multiple cursors
Plug 'terryma/vim-multiple-cursors'
"autocomplete
Plug 'Shougo/deoplete.nvim', {'do':':UpdateRemotePlugins'}
Plug 'ternjs/tern_for_vim', { 'do': 'yarn global add tern' }
Plug 'carlitux/deoplete-ternjs'
"javscript syntax
Plug 'pangloss/vim-javascript'
" Javascript lint
Plug 'w0rp/ale'
"colorschemes
Plug 'flazz/vim-colorschemes'
"startfy
Plug 'mhinz/vim-startify'
call plug#end()

" Plugin Config

"IDENTLINE

"NERDTREE
"shortcut to open NERDTree
map <C-t> :NERDTreeToggle<CR>
inoremap <C-t> <ESC>:NERDTreeToggle<CR>

"LIGHTLINE
set noshowmode
let g:lightline = {'colorscheme': 'one',}

"DEOPLETE
"start when open
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = [" — persistent"]
"<TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"Javascript Syntax
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" JS pretier
autocmd FileType javascript set formatprg=prettier\ --stdin

"ALE
" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1
" when lint
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_change = 0

" Colors
colorscheme molokai
