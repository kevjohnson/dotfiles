"Plugin section
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'jalvesaq/Nvim-R'
Plug 'neomake/neomake'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim'
Plug 'tomasr/molokai'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
call plug#end()

"Required
filetype plugin on
filetype indent on

"Encoding
set encoding=utf-8

"Fix backspace indent
set backspace=indent,eol,start

"Tab options
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"Search options
set hlsearch
set incsearch
set ignorecase
set smartcase

"Visual settings
colorscheme molokai
syntax on
set ruler
set number
set scrolloff=1
set colorcolumn=80

"Make cursor pipe when editing
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

"Enable autocompletion
let g:deoplete#enable_at_startup=1

"Map key to enable nerdtree
map <C-n> :NERDTreeToggle<CR>

"Nvim-R options
let R_assign=0

"Airline options
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'serene'

"Shortcuts
let mapleader="\<SPACE>"
" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>
" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"Git shortcuts
nnoremap <Leader>ga :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gp :Git push<CR>
