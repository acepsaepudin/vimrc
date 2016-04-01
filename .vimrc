set nocompatible
call plug#begin('~/.vim/plugged')
call plug#end()
" butuh sudo ? pake aja ini
cmap w!! w !sudo tee > /dev/null %<CR>

syntax on "buat deteksi syntax 
filetype plugin indent on
set tabstop =4 "tab indent
set shiftwidth=4 "indent pake 4 space
set expandtab "don't use actual tab carachter bro (ctrl-v)
set number " show line number on left
set autoindent
set smartindent 
set nowrap
set ignorecase "jadi kalau mau nyari huruf/kata dibuat gak case sensitive
set hlsearch "ketika mencari huruf/kata bakal ada highlight nya gan, kalau mau hilangin highlight pake :noh 
set pastetoggle=<f5> "to stop indeting when pasting with the mouse, then try hitting F5 while in insert mode or :set paste
set backup
set mouse=a "biar gak lupa sama mouse saat coding
set showmatch
colorscheme Monokai
set term=screen-256color
