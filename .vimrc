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
:set termguicolors
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif
