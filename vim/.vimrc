set relativenumber

set noexpandtab
set tabstop=2
set shiftwidth=2

set cursorline
:highlight Cursorline cterm=bold ctermbg=black

set hlsearch
set smartcase
set showmatch

if !has('gui_running')
	set t_Co=256
endif
syntax on
set termguicolors
set background=dark
colorscheme tokyonight 

" mappings
let mapleader = "\<Space>"

" vimwiki
set nocompatible
filetype plugin on
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]


" cursor settings
let &t_EI = "\e[1 q"
let &t_SI = "\e[5 q"

" timeout settings
set timeout
set ttimeout
set timeoutlen=3000
set ttimeoutlen=10
