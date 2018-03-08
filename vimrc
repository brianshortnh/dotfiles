set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Buffergator'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-surround.git'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'linediff.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript.git'
Plugin 'joonty/vdebug'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'gregsexton/gitv'
Bundle 'joonty/vim-phpqa.git'
Bundle 'stephpy/vim-php-cs-fixer'

filetype plugin indent on
syntax on
colorscheme afterglow

"Settings
set guifont=DejaVuSansMono
set colorcolumn=90
set number
set hidden
set history=100
set nowrap
set tabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set smartindent
set autoindent
set fileformat=unix
set hlsearch
set showmatch
set showcmd
set laststatus=2
set splitright
set splitbelow
set ignorecase
set smartcase
set noshowmode
set t_ut=
set backspace=indent,eol,start

if !has('gui_running')
  set t_Co=256
endif

autocmd StdinReadPre * let s:std_in=1

"Set spelling and syntax for git commits
syntax on
autocmd Filetype gitcommit setlocal spell textwidth=72
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Map leader to space
let mapleader=" "

"Map leader combos
map <leader>s :source ~/.vimrc<CR>
nnoremap <leader>f :NERDTreeToggle<CR>

"Better pane mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Vimux nnoremappings
nnoremap <leader>vp :VimuxPromptCommand<CR>
nnoremap <leader>vl :VimuxRunLastCommand<CR>
nnoremap <leader>vi :VimuxInspectRunner<CR>
nnoremap <leader>vz :VimuxZoomRunner<CR>
let g:VimuxUseNearest = 0

"New vertical split map
nnoremap <silent> vv <C-w>v

"YAML config
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"Whitespace highlighting
highlight BadWhiteSpace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhiteSpace /\s\+$/

"NERDTree settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"VDebug and PHPQA settings
let g:vdebug_features = { 'max_children': 128 }
let g:phpqa_messdetector_ruleset = '/Applications/MAMP/bin/php/php7.0.16/lib/php/data/PHP_PMD/resources/rulesets/cleancode.xml'
let g:phpqa_codesniffer_args = '--standard=Zend'
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0
let g:phpqa_codecoverage_autorun = 1

"CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_switch_buffer = 'et'
set wildignore+=*/devops/*,*/node_modules/*,*.swp

"Vim-php-cs-fixer settings
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_php_path = "php"
let g:php_cs_fixer_verbose = 1

nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

call vundle#end()
