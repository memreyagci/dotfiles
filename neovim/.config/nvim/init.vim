syntax on
filetype plugin on

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
set tabstop=4 
set softtabstop=4
set termguicolors
set background=dark

call plug#begin()
Plug 'iamcco/markdown-preview.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'

Plug 'preservim/nerdcommenter'
Plug 'joshdick/onedark.vim'
Plug 'Yggdroot/indentLine'
call plug#end()

colorscheme onedark

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

let mapleader = " "

" Shortcuts for window operations.
nnoremap <silent> <leader>h :wincmd h<CR> 
nnoremap <silent> <leader>j :wincmd j<CR> 
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR> 

nnoremap <silent> <leader>H :wincmd H<CR> 
nnoremap <silent> <leader>J :wincmd J<CR> 
nnoremap <silent> <leader>K :wincmd K<CR>
nnoremap <silent> <leader>L :wincmd L<CR> 

nnoremap <silent> <leader>n :wincmd n<CR> 
nnoremap <silent> <leader>v :wincmd v<CR> 

"nnoremap <silent> <leader>| :wincmd |<CR>
nnoremap <silent> <leader>_ :wincmd _<CR>

nnoremap <silent> <leader>c :wincmd c<CR> 
nnoremap <silent> <leader>o :wincmd o<CR> 

" rotate downwards/rightwards
nnoremap <silent> <leader>r :wincmd r<CR>
" rotate upwards/leftwards
nnoremap <silent> <leader>R :wincmd R<CR> 

nnoremap <silent> <leader>= :vertical resize +10<CR> 
nnoremap <silent> <leader>- :vertical resize -10<CR> 

nnoremap <silent> <leader>> :resize +10<CR>
nnoremap <silent> <leader>< :resize -10<CR>

nnoremap <silent> <leader>+ :wincmd =<CR> 

nnoremap <C-p> :Files<CR>

nnoremap <leader>ic <plug>NERDCommenterComment
nnoremap <leader>uc <plug>NERDCommenterUncomment

let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1 " Set a language to use its alternate delimiters by default
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } } " Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1 " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1 " Enable NERDCommenterToggle to check all selected lines is commented or not 
