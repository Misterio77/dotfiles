call plug#begin('~/.config/nvim/plugged')

Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'lambdalisue/suda.vim'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'cespare/vim-toml'
Plug 'zxqfl/tabnine-vim'
Plug 'vim-scripts/restore_view.vim'

call plug#end()
colorscheme noctu

"Vimtex use zathura
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_automatic=0

"Suda plugin
let g:suda_smart_edit = 1
"Use clippy with ale
let g:ale_rust_cargo_use_clippy = 1
"Nerdtree plugin
map <C-o> :NERDTreeToggle<CR>

"Sensible defaults
set autoindent
set autoread
set backspace=indent,eol,start
set complete-=1
set smarttab
set nocompatible
set ruler
set wildmenu
set laststatus=2
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options
set viewoptions-=options
if empty(mapcheck('<C-U>', 'i'))
  inoremap <C-U> <C-G>u<C-U>
endif
if empty(mapcheck('<C-W>', 'i'))
  inoremap <C-W> <C-G>u<C-W>
endif

"Tabs
set tabstop=4 "How many spaces equals a tab
set softtabstop=4 "How manu columns when you hit tab
set shiftwidth=4 "How many to indent with reindent ops

set expandtab "Use spaces
"set noexpandtab "Use tabs

"Line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set number norelativenumber
augroup END

set <up>=^[OA
set <down>=^[OB
set <right>=^[OC
set <left>=^[OD
nnoremap <CR> G
syntax match Tab /\t/
set title
set clipboard+=unnamedplus
