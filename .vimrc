syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set incsearch
set relativenumber
set background=dark

call plug#begin('~/.vim/plugged')

Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'flrnd/candid.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
execute pathogen#infect()

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

let python_highlight_all=1


"Comment line
