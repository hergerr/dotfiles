syntax on
set number
set encoding=utf-8
set tabstop=2
" set paste
set foldmethod=indent
" Enable folding with the spacebar
imap <D-v> ^O:set paste<Enter>^R+^O:set nopaste<Enter>
nnoremap <space> za
