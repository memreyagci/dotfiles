syntax on

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
set termguicolors
set background=dark

call plug#begin()

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-python/python-syntax'
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter'
Plug 'joshdick/onedark.vim'

call plug#end()

colorscheme onedark

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

let python_highlight_all=1

let g:ale_fixers = {'python': ['black', 'isort']}
let g:ale_fix_on_save = 1

let mapleader = " "

filetype plugin on

"let g:NERDCreateDefaultMappings = 1 " Create default mappings
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1 " Set a language to use its alternate delimiters by default
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } } " Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1 " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1 " Enable NERDCommenterToggle to check all selected lines is commented or not 

map <leader>ic <plug>NERDCommenterComment
map <leader>uc <plug>NERDCommenterUncomment

" Shortcuts for window operations.
nnoremap <silent> <leader>h :wincmd h<CR> 
nnoremap <silent> <leader>j :wincmd j<CR> 
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR> 

nnoremap <silent> <leader>n :wincmd n<CR> 
nnoremap <silent> <leader>v :wincmd v<CR> 

nnoremap <silent> <leader>c :wincmd c<CR> 
nnoremap <silent> <leader>o :wincmd o<CR> 

nnoremap <silent> <leader>+ :vertical resize +5<CR> 
nnoremap <silent> <leader>- :vertical resize -5<CR> 
nnoremap <silent> <leader>= :wincmd =<CR> 

nnoremap <C-p> :GFiles<CR>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)


" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
