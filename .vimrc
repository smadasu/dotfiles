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
call vundle#end() 
filetype plugin indent on
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

"let $PYTHONPATH="/usr/lib/python3.3/site-packages" 


"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set bt=
set cursorline
