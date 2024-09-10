set number
set nowrap 
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set mouse=a
set clipboard=unnamedplus

let mapleader = " "
inoremap jk <ESC>
nnoremap <leader>e :Explore<CR>
vnoremap > >gv
vnoremap < <gv

au BufReadPost *.v,*.sv,*.svh set syntax=verilog

