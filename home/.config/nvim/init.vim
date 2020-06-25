call plug#begin('~/.config/nvim/plugged')

Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'

call plug#end()
colorscheme noctu

set number
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_automatic=0
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
map <C-o> :NERDTreeToggle<CR>
nnoremap <CR> G
set title
