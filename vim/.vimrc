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
colorscheme gruvbox 

" mappings
let mapleader = "\<Space>"

" vimwiki
set nocompatible
filetype plugin on
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]
