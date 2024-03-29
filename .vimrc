"""""""""""""""""""""""""""
" VIM General Configuration
"""""""""""""""""""""""""""

" Set mapleader to ,
let mapleader = ","

" Turn on syntax highlighting
syntax enable

" Hide buffers in the background
set hidden

" Remap escape key to jj
inoremap jj <esc>

" Remap ':' to ';'
nnoremap ; :

" Make history larger
set history=1000

" Terminal settings
set encoding=utf8

" Fix backspace
set backspace=2

" Line numbering
set number
"set relativenumber

" Faster redrawing
set ttyfast

" Easy Edit/Source $MYVIMRC
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Shortcut to Explore
nnoremap <leader>e :Explore<cr>

" Wildmenu
set wildmenu
set wildmode=list:longest

""""""""""""""""""""""""""""
" Window Split Configuration
""""""""""""""""""""""""""""

" Split windows
nnoremap <leader>s :split<cr><c-w>l
nnoremap <leader>vs :vsplit<cr><c-w>j
nnoremap <leader>cs <c-w>c

" Split order
set splitbelow
set splitright

""""""""""""""""""""""""""
" Navigation Configuration
""""""""""""""""""""""""""

" Move between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Move between tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>te :tabedit<space>
nnoremap <leader>tc :tabc<cr>

" Move between buffers
nnoremap ] :bn<cr>
nnoremap [ :bp<cr>
nnoremap <leader>b :buffers<cr>:buffer<space>
nnoremap <leader>/ <c-^>

" Easier way to switch between open/closing brace
map <tab> %

""""""""""""""""""""""
" Search Configuration
""""""""""""""""""""""

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Disable search results highlight
set nohlsearch

" Highlight chars as you type search
set incsearch

" Set magic on for regex
set magic

"""""""""""""""""""
" Tab Configuration
"""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces
set smarttab
set shiftwidth=4
set tabstop=4

" Override tab spacing based on filetype
autocmd FileType rst setlocal ts=3 sw=3 

"""""""""""""""""""""""""
" Text Wrap Configuration
"""""""""""""""""""""""""

set wrap
set linebreak
set nolist
set textwidth=120
set formatoptions=tcroq
