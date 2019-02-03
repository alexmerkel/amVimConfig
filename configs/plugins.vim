" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
command PluginUpgrade PluginUpdate

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

" NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
map <C-n> :NERDTreeToggle<CR>

" EasyMotion
Plugin 'easymotion/vim-easymotion'

" Latex
Plugin 'lervag/vimtex'
let g:vimtex_compiler_latexmk = {'callback' : 0}
let maplocalleader = ','
let g:tex_conceal = ''
let g:tex_flavor='latex'

" Emmet Plugin
Plugin 'mattn/emmet-vim'

" CSS3 Highlighting
Plugin 'hail2u/vim-css3-syntax'

" NGINX Syntax
Plugin 'chr4/nginx.vim'

" Delphi Syntax
Plugin 'rkennedy/vim-delphi'

" Cheat.sh
Plugin 'dbeniamine/cheat.sh-vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

" Finishing up
call vundle#end()            " required
filetype plugin indent on    " required
" END OF VUNDLE SETUP
