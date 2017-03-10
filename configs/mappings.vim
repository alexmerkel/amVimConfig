    "--------- Mappings -----------"
let mapleader = "," " Change leader to ,

" Move line
no K ddkP
no J ddp

" Buffer navigation
no <up> :up<CR>:bp<CR>
no <down> :up<CR>:bn<CR>
no <C-W> :up<CR>:bd<CR>
if has("mac") || has("macunix")
    no <D-W> <C-W>
endif

" Insert up/down keys as esc (down with save)
ino <up> <ESC>
ino <down> <ESC>:up<CR>

" Tab naviagation
no <left> :tabprevious<CR>
no <right> :tabnext<CR>
no <C-S-W> :wa<CR>:tabclose<CR>
if has("mac") || has("macunix")
    no <D-S-W> <C-S-W>
endif

" Redo on Mac
if has("mac") || has("macunix")
    no <D-r> <C-r>
endif

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


