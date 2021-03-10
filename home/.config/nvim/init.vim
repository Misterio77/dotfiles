call plug#begin('~/.config/nvim/plugged')

Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'cespare/vim-toml'
Plug 'vim-scripts/restore_view.vim'
Plug 'tpope/vim-surround'
Plug 'tonyseek/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'branch': 'feat/dark-mode-background' }
Plug 'plasticboy/vim-markdown'
Plug 'rust-lang/rust.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'KabbAmine/vCoolor.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

call plug#end()

"Color scheme
colorscheme base16
set termguicolors

"Enable rainbow parenthesis
let g:rainbow_active = 1

"Markdown preview title
let g:mkdp_page_title = '${name}'

"Vimtex use zathura
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_automatic=0

"Suda plugin
let g:suda_smart_edit = 1
"Use clippy with ale
let g:ale_rust_cargo_use_clippy = 1
"Nerdtree plugin
map <C-o> :NERDTreeToggle<CR>

"Folding
set foldmethod=syntax
let g:rust_fold = 1
"Set fold level to highest in file
"so everything starts out unfolded at just the right level
autocmd BufWinEnter * let &foldlevel = max(map(range(1, line('$')), 'foldlevel(v:val)'))

"Conceal
set conceallevel=2

"Fix nvim size according to terminal
"(https://github.com/neovim/neovim/issues/11330)
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

"Tabs
set tabstop=4 "How many spaces equals a tab
set softtabstop=4 "How many columns when you hit tab
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
