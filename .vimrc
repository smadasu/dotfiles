execute pathogen#infect()
syntax on
filetype plugin indent on
set background=dark
set t_Co=256
:autocmd BufEnter,FileType *
			\   if &ft ==# 'html' |
			\   colorscheme default |
			\   else | colorscheme solarized |
			\   endif
"colorscheme solarized
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
syntax enable
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>
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
set relativenumber
nmap <F2> :nohl<CR>
nmap <F3> :%Eval<CR>
