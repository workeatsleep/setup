syntax on
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set autoindent

set rtp+=/usr/local/opt/fzf

inoremap jk <esc>

"fzf bindings
map <C-f> :Files!<CR>
inoremap <C-f> :BLines!<CR>
map <C-g> :BCommits!<CR>

" Paste from system clipboard with Control-P
nmap <silent> <c-P> "+p
" " Copy to system clipboard with Control-Y in visual mode
vmap <silent> <c-Y> "+y


"use tab to replace %
nnoremap <Tab> %

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

