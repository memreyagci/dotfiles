syntax on

set background=dark
set clipboard+=unnamedplus
set expandtab
set incsearch
set noerrorbells
set noswapfile
set nu
set relativenumber
set shiftwidth=4
set smartcase
set smartindent
set tabstop=4 softtabstop=4

call plug#begin()

Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'flrnd/candid.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

let g:airline_powerline_fonts = 1
let python_highlight_all=1

let mapleader = " "

" Shortcuts for window operations.
nnoremap <leader>h :wincmd h<CR> 
nnoremap <leader>j :wincmd j<CR> 
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR> 

nnoremap <leader>n :wincmd n<CR> 
nnoremap <leader>v :wincmd v<CR> 

nnoremap <leader>c :wincmd c<CR> 
nnoremap <leader>o :wincmd o<CR> 

nnoremap <silent> <leader>+ :vertical resize +5<CR> 
nnoremap <silent> <leader>- :vertical resize -5<CR> 
nnoremap <silent> <leader>= :wincmd =<CR> 

"Comment line

" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

