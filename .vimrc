filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-projectionist'
Plugin 'honza/vim-snippets'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'tfnico/vim-gradle'
Plugin 'tpope/vim-classpath'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'wikitopian/hardmode'
call vundle#end()
filetype plugin indent on
syntax enable
let mapleader = ","
syntax on
set title
set background=dark
let g:Powerline_symbols = 'fancy'
colorscheme solarized
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set path=$PWD/**
set wildmenu
set wildmode=list:longest,full
set wildignore=*.class,bin/**
set clipboard=unnamedplus
set hidden
nmap <leader>s :w<CR>
nmap <leader>q :q<CR>
set foldmethod=syntax
set nofoldenable
set relativenumber
nmap <F2> :nohl<CR>
nmap <F3> :Eval<CR>
nmap <F4> :%Eval<CR>
nmap <F5> :!/usr/src/linux/scripts/checkpatch.pl -f %<CR>
nmap <F6> :!javac %<CR>
nmap <F7> :!java %<CR>

"UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"let $PYTHONPATH="/usr/lib/python3.3/site-packages"


"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set rtp+=/usr/lib64/python3.4/site-packages/powerline/bindings/vim
set bt=
set cursorline
set t_Co=256
"set colorcolumn=80
set mouse=
nmap <F8> :TagbarToggle<CR>

" s: Find this C symbol
nnoremap  <leader>fs :cs find s <cword><CR>
" g: Find this definition
nnoremap  <leader>fg :cs find g <cword><CR>
" d: Find functions called by this function
nnoremap  <leader>fd :cs find d <cword><CR>
" c: Find functions calling this function
nnoremap  <leader>fc :cs find c <cword><CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>
set mouse=v
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
