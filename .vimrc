syntax on
set number
set encoding=utf-8
set tabstop=4
" set paste
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
imap <D-v> ^O:set paste<Enter>^R+^O:set nopaste<Enter>
nnoremap <space> za
set nocompatible              " required
filetype off                  " required
let python_highlight_all=1

set pastetoggle=<F10>

" set PEP8 indents
au BufNewFile, BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" mark unnecessary whitespaces
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
