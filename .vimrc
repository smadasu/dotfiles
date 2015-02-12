let mapleader = ","
execute pathogen#infect()
syntax on
filetype plugin indent on
set background=dark
let g:Powerline_symbols = 'fancy'
colorscheme solarized
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
syntax enable
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

let $PYTHONPATH="/usr/lib/python3.3/site-packages" 


set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set bt=
