call plug#begin('~/.config/nvim/plugged')

Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'lambdalisue/suda.vim'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'cespare/vim-toml'

call plug#end()
colorscheme noctu

set number
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_automatic=0
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
map <C-o> :NERDTreeToggle<CR>
nnoremap <CR> G
set title
set clipboard+=unnamedplus
let g:suda_smart_edit = 1
let g:ale_rust_cargo_use_clippy = 1
