call plug#begin('~/.vim/plugged')
Plug 'nightsense/snow'
call plug#end()


filetype on
filetype plugin on
filetype indent on
:set number
:set hlsearch
:set incsearch
:imap jj <ESC>
:set autoindent
:set cindent
:set expandtab
:set tabstop=2
:set softtabstop=2
" when identing with '>'
:set shiftwidth=2
colorscheme snow
set background=dark
