"""""""""""""""""""""""""""
" VIM General Configuration
"""""""""""""""""""""""""""

" Set color scheme
"colorscheme solarized
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"set background=dark

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
"let base16colorspace=256
"set t_Co=256

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

" Easier split management
nnoremap <leader>w= <c-w>=
nnoremap <leader>w> 5<c-w>>
nnoremap <leader>w< 5<c-w><
nnoremap <leader>w+ 5<c-w>+
nnoremap <leader>w- 5<c-w>-

""""""""""""""""""""""""""
" Navigation Configuration
""""""""""""""""""""""""""

" Move between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Move between tabs
nnoremap <c-[> :tabprevious<cr>
nnoremap <c-]> :tabnext<cr>
nnoremap <c-t> :tabnew<cr>
"inoremap <c-[> <esc>:tabprevious<cr>i
"inoremap <c-]> <esc>:tabnext<cr>i
"inoremap <c-t> <esc>:tabnew<cr>i

" Move between buffers
nnoremap ] :bn<cr>
nnoremap [ :bp<cr>
nnoremap <leader>/b :buffers<cr>

" Easier way to switch between open/closing brace
map <tab> %

""""""""""""""""""""""
" Search Configuration
""""""""""""""""""""""

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight the search results
set nohlsearch

" Highlight chars as you type search
set incsearch

" Set magic on for regex
set magic

" Clear search
nnoremap <leader><space> :noh<cr>

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

""""""""""""""""""""
" Fold Configuration
""""""""""""""""""""

set foldmethod=syntax
set foldnestmax=3
"set nofoldenable
set foldlevel=1

nnoremap <space> za
