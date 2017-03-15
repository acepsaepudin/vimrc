set nocompatible
set encoding=utf-8

syntax on "buat deteksi sintak
filetype plugin indent on
set tabstop =4 "tab indent pake 4
set expandtab       " use spaces instead of tabs
set autoindent      " autoindent based on line above, works most of the time
set smartindent     " smarter indent for C-like languages
set shiftwidth=4    " when reading, tabs are 4 spaces
set softtabstop=4   " in insert mode, tabs are 4 spaces
set number
set autoindent
set smartindent
set nowrap
set ignorecase "fungsina buat nyari kata biar gampang
set hlsearch "buat hightlight nyari kata, terus di :noh deh
set pastetoggle=<f5> "to stop indeting when pasting with the mouse, then try hitting F5 while in insert mode or :set paste
set cursorline
if has('mouse')
    set mouse=a
endif
set rnu "pake relative number, kerasa kalo udah memaksimalkan fungsi hjkl
vmap <C-c> "+y"
set showmatch
colorscheme Monokai
set term=screen-256color
"backup rules
set backup "enable backup files (.Txt)
set undofile "enable persistent undo
silent execute '!mkdir -p $HOME/.vim/tmp/backup'
set backupdir=$HOME/.vim/tmp/backup " where to store backup
silent execute '!mkdir -p $HOME/.vim/tmp/swap'
set directory=$HOME/.vim/tmp/swap " where to store swap
silent execute '!mkdir -p $HOME/.vim/tmp/views'
set viewdir=$HOME/.vim/tmp/views " where to store view
silent execute '!mkdir -p $HOME/.vim/tmp/undo'
set undodir=$HOME/.vim/tmp/undo " where to store undo 
set timeoutlen=1000 ttimeoutlen=0 "biar lebih cepet ketika mencet capslock yang jadi esc
nnoremap <C-l> gt
nnoremap <C-h> gT
set omnifunc=phpcomplete#CompletePHP
set omnifunc=csscomplete#CompleteCSS
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=javascriptcomplete#CompleteJS
"moal aya EOL pas nga-write
set noeol
"supaya ada word wrap
set wrap
"supaya wrapnya match dengan line
set linebreak

"buat config plugin
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/majutsushi/tagbar.git'
call plug#end()

"tagbar
nmap <F8> :TagbarToggle<CR>
"end config plugin
