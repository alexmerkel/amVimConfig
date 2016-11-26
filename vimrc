" amVimConfig

set number    " Show line numbers

set linebreak    " Break lines at word (requires Wrap lines)
set showbreak=+++    " Wrap-broken line prefix
set textwidth=100    " Line wrap (number of cols)
set showmatch    " Highlight matching brace

"" Advanced
set ruler    " Show row and column ruler information

set undolevels=1000    " Number of undo levels
set backspace=indent,eol,start    " Backspace behaviour

" Disable arrow keys
no <up> <Nop>
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>

ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

let $LANG='en'
set langmenu=en

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

colorscheme spacegray

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use macOS Clipboard
set clipboard=unnamed

" Use Unix as the standard file type
set ffs=unix,dos,mac

set wrap "Wrap lines

" Change esc to ii
imap ;; <Esc>


" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


if has("mac") || has("macunix")
    nnoremap <D-J> <C-J>
    nnoremap <D-K> <C-K>
    nnoremap <D-L> <C-L>
    nnoremap <D-H> <C-H>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()



" Turn backup off, since most stuff is in SVN, git etc anyway...
set nobackup
set nowb
set noswapfile

" Wrap search
set wrapscan

" Show whitespace
set listchars=tab:▸\ ,eol:¬,space:·
set list

" Set tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" syntax checking
Plugin 'scrooloose/syntastic'

" Function tags
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" Indent lines
Plugin 'Yggdroot/indentLine'
"let g:indentLine_setColors = 0
let g:indentLine_char = '¦'
let g:indentLine_enabled = 1

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='wombat'
set laststatus=2

" Finishing up
call vundle#end()            " required
filetype plugin indent on    " required
" END OF VUNDLE SETUP
