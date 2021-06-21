" Sets
set nocompatible                  " Vim won't try to be compatible with older Vi
set autoindent                    " Copy indent from current line when creating a new one below.
set cursorline                    " Highlight current line.
set expandtab                     " Tabs are 'expanded' into spaces.
set ignorecase smartcase          " Search ignores case if lowercase, doesn't if uppercase.
set incsearch                     " Show matches to search while typing.
set noswapfile                    " Don't create swap (backup/auto-save) files.
set number relativenumber         " Line numbers are absolute on current line, relative on others.
set wildmenu                      " Better commandline completion.
set showcmd                       " Show partial command on last line of the screen.
set showmatch                     " Cursor visually jumps to matching pair (brackets, parens...)
set showmode                      " Shows if in Insert, Visual or Replace mode in the last line.
set smarttab                      " Insert and delete tabs (including expanded tabs) in one go.
set ttyfast                       " Smoother redrawing of the windows.
set wrap                          " Lines will wrap when longer than width of the window (visual lines).
set path+=**                      " :find looks through all files in cwd and its subfolders.
let mapleader=" "                 " <Leader> key
set statusline=%F[%{&ff}]%h%r%y%m%=%c,%l/%L\ %P

language en_US.UTF-8

" Enables
syntax enable
filetype plugin indent on

" Colors
set termguicolors                         " Necessary for getting pretty colors.
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"    " Taken from :h xterm-true-color. Without it,
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"    "   I only get black and white when termguicolors
                                          "   is set.

" Mappings
nnoremap <Leader>h :set hls!<cr>
nnoremap <Leader>l :set cursorline!<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>r :set relativenumber!<cr>
nnoremap <Leader>s :%s/
nnoremap <Leader>w :w<cr>
map : q:i

" Plugins
call plug#begin('~/.vim/plugged')
	 Plug 'scrooloose/nerdcommenter'         " Commenting becomes a Vim 'verb'
	 Plug 'tpope/vim-surround'               " Surrounding characters become a vim 'Object'
	 Plug 'joshdick/onedark.vim'             " \
         Plug 'dracula/vim', {'as':'dracula'}    " -\ More colorschemes
	 Plug 'colepeters/spacemacs-theme.vim'   " --\
	 Plug 'pangloss/vim-javascript'          " Better JS sytax highlighting
call plug#end()

" Colorscheme
colorscheme dracula

" Different cursor appearance per mode
let &t_SI="\e[6 q"                      " Insert mode  = line
let &t_SR="\e[4 q"                      " Replace mode = underline
let &t_EI="\e[2 q"                      " Other modes  = bar

