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
