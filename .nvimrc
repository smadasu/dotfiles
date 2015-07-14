call plug#begin('~/.nvim/plugged')
" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'
Plug 'kien/rainbow_parentheses.vim.git'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-classpath'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-fugitive', { 'for': 'clojure' }
Plug 'tpope/vim-dispatch', { 'for': 'clojure' }
Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
call plug#end()
let mapleader = ","
syntax on
set title
set background=dark
colorscheme solarized
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set clipboard=unnamedplus
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
set cursorline
"set rtp+=/usr/lib64/python3.3/site-packages/powerline/bindings/vim
let $PYTHONPATH="/usr/lib/python3.3/site-packages"
set laststatus=2
let g:airline_powerline_fonts = 1
set mouse=
