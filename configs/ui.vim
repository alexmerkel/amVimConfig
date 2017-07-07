"------- User Interface --------"
" UI
set number    " Show line numbers
set ruler    " Show row and column ruler information
set showbreak=+++    " Wrap-broken line prefix
set so=7    "7 lines to the cursor
set linebreak    " Break lines at word
set cursorline

" Whitespace
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:· " Set characters
set list " Show whitespace

" Search
set showmatch    " Highlight matching brace
set hlsearch "Highlight search results
set incsearch " Makes search act like search in modern browsers
set wrapscan

" No error bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Colors
colorscheme spacegray
set background=dark
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Syntax
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif
