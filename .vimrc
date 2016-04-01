set nocompatible
call plug#begin('~/.vim/plugged')
call plug#end()
" butuh sudo ? pake aja ini
cmap w!! w !sudo tee > /dev/null %<CR>

syntax on "buat deteksi syntax 
filetype plugin indent on
set tabstop =4 "tab indent
set shiftwidth=4
set expandtab
set number " show line number on left
set autoindent
set nowrap
colorscheme Monokai
set term=screen-256color
