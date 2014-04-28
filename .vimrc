syntax enable
set nocompatible
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set path=$PWD/**
set wildmenu
set wildmode=list:longest,full
set wildignore=*.class,bin/**
execute pathogen#infect()
syntax on
filetype plugin indent on
set background=light
set incsearch
set t_Co=256
colorscheme distinguished
set clipboard=unnamedplus
set hidden
let g:CommandTCancelMap=['<ESC>','<C-c>']
au VimEnter * RainbowParenthesesToggle
nmap <leader>s :w<CR>
nmap <leader>q :q<CR>
set relativenumber
