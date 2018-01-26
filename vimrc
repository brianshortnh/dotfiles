set nocompatible
filetype off
"Below depends on your Vundle installation
"set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

"Plugins
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Buffergator'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'vim-scripts/indentpython.vim'

filetype plugin indent on
syntax on
colorscheme afterglow

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
set noshowmode
set t_ut=

if !has('gui_running')
  set t_Co=256
endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
nnoremap <Leader>f :NERDTreeToggle<CR>

highlight BadWhiteSpace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhiteSpace /\s\+$/

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
