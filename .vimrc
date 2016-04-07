set nocompatible
set encoding=utf-8
call plug#begin('~/.vim/plugged')
Plug 'valloric/youcompleteme' " buat bantu ngehemat ngetik
Plug 'git@github.com:ctrlpvim/ctrlp.vim.git' "butuh Ctrl+P nya sublim jadi pake ini ^_^
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'raimondi/delimitmate' "auto close tag,dan kawan2 nya
Plug 'scrooloose/nerdtree' "kadang sya butuh buka folder kalau belajar framework baru :/
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
" backup rules
set backup " enable backup files (.txt~)
set undofile " enable persistent undo

silent execute '!mkdir -p $HOME/.vim/tmp/backup'
set backupdir=$HOME/.vim/tmp/backup " where to store backup
silent execute '!mkdir -p $HOME/.vim/tmp/swap'
set directory=$HOME/.vim/tmp/swap " where to store swap
silent execute '!mkdir -p $HOME/.vim/tmp/views'
set viewdir=$HOME/.vim/tmp/views " where to store view
silent execute '!mkdir -p $HOME/.vim/tmp/undo'
set undodir=$HOME/.vim/tmp/undo " where to store undo 
set timeoutlen=1000 ttimeoutlen=0 "biar lebih cepet ketika mencet capslock yang jadi esc
" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"snipet biar kaya sublim :/
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["plugged/vim-snippets/UltiSnips"]

"Nerdtree
map <C-n> :NERDTreeToggle<CR>
