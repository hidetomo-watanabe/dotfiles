colorscheme darkblue
syntax on
set number
set clipboard=unnamed,autoselect
set showmatch
set fileencodings=ja_JP,utf-8,iso-2022-jp,cp932,euc-jp
set laststatus=2
set statusline=%f\ [%{&fenc==''?&enc:&fenc}][%{&ff}]%=%8l:%c%8P
set splitright
set incsearch
set tabstop=4
set cindent
" set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L]
set statusline=%F%m%r%h%w\%=[ENC=%{&fileencoding}]\[LOW=%l/%L]
set backspace=indent,eol,start
set whichwrap=b,s,[,],,~
set mouse=a
set ttymouse=xterm2
set ignorecase
set wildmenu

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap <Down> gj
nnoremap <Up> gk

"set rtp+=~/.vim/vundle.git/
"call vundle#rc()

"Bundle 'thinca/vim-quickrun'
"let g:quickrun_config={'*': {'vsplit': ''}}
