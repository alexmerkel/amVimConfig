"--------- Mappings -----------"
let mapleader = "," " Change leader to ,

" Change arrow key functionality
no <up> ddkP
no <down> ddp
ino <up> <ESC>
ino <down> <ESC>:w

" Tab naviagation
no <left> :tabprevious<CR>
no <right> :tabnext<CR>
ino <left> <ESC>:tabprevious<CR>
ino <right> <ESC>:tabnext<CR>

" Center jumps
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

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


