"install vim-plug
"https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'nightsense/snow'
"Plug 'neutaaaaan/iosvkem'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
call plug#end()


filetype on
filetype plugin on
filetype indent on
:set nu
:set hlsearch
:set incsearch
"search visually highlithed part
:vnoremap // y/<C-R>"<CR>
:imap jj <ESC>
:set autoindent
:set cindent
:set expandtab
:set tabstop=2
:set softtabstop=2
" when identing with '>'
:set shiftwidth=2
" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magneta
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif
"""""""""""""""""""""""""""""""""""
" Not all terminals support this
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
"""""""""""""""""""""""""""""""""""
colorscheme snow
set background=dark
