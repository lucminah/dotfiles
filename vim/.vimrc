" Sets
set ai
set cursorline
"set expandtab
set foldenable
set foldlevelstart=100
set foldmethod=indent
set ignorecase smartcase
set incsearch
set nocompatible
set noswapfile
set number relativenumber
set showcmd
set showmatch
set showmode
set smarttab
set splitright splitbelow
set statusline=%F[%{&ff}]%h%r%y%m%=%c,%l/%L\ %P
set ttyfast
set wildmenu
set wrap
let mapleader=" "

language en_US.UTF-8

" Enables
syntax on
filetype plugin indent on

" Functions
function! BetterCommandMode ()
	normal! q:i
endfunction

" Mappings
nnoremap <Leader>c :<c-f>k<cr>
nnoremap <Leader>h :set hls!<cr>
nnoremap <Leader>l :set cursorline!<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>r :set relativenumber!<cr>
nnoremap <Leader>s :%s/
nnoremap <Leader>w :w<cr>
nnoremap <Leader>y :sort i<cr>:sort n/(/<cr>
map : q:i

" Plugins
call plug#begin('~/.vim/plugged')
         Plug 'flazz/vim-colorschemes'
	 Plug 'scrooloose/nerdcommenter'
	 Plug 'tpope/vim-surround'
	 Plug 'joshdick/onedark.vim'
	 Plug 'colepeters/spacemacs-theme.vim'
	 Plug 'pangloss/vim-javascript'
call plug#end()

" Colorscheme and beautification
let &t_SI="\e[6 q"
let &t_SR="\e[4 q"
let &t_EI="\e[2 q"
colorscheme codedark

