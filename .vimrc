"""""""""""""""""""""""""""""""""""""
" Let Vundle handle plugin management
"""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" List of Plugins
Plugin 'tpope/vim-surround'
"Plugin 'sjbach/lusty'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'benmills/vimux'

" All of your plugins must be added before the following line
call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList	    - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean	    - confirms removal of unused plugins; append `!` to auto-approve removal

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

""""""""""""""""""""""
" Plugin Configuration
""""""""""""""""""""""

" Unite
nnoremap <leader>/f :Unite -start-insert file file_rec/async<cr>
nnoremap <leader>/b :Unite buffer<cr>
nnoremap <leader>/g :Unite grep:.<cr>

" Vimux
map <leader>vr :call VimuxRunCommand("clear; python -m unittest discover tests")<cr>
map <leader>vp :VimuxPromptCommand<cr>
map <leader>vl :VimuxRunLastCommand<cr>
map <leader>vq :VimuxCloseRunner<cr>
map <leader>vi :VimuxInspectRunner<cr>
map <leader>vx :VimuxInterruptRunner<cr>
