call plug#begin('~/.config/nvim/plugged')

Plug 'dense-analysis/ale'

Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/restore_view.vim'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'scrooloose/nerdtree'
Plug 'gregsexton/MatchTag'

Plug 'jvirtanen/vim-octave'
Plug 'plasticboy/vim-markdown'
Plug 'lervag/vimtex'
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'
Plug 'hjson/vim-hjson'

call plug#end()

"Tabs
set tabstop=4 "How many spaces equals a tab
set softtabstop=4 "How many columns when you hit tab
set shiftwidth=4 "How many to indent with reindent ops

set expandtab "Use spaces
"set noexpandtab "Use tabs

"Two spaces tab when editing html
autocmd FileType html setlocal ts=2 sts=2 sw=2


"Alias unnamed clipboard to system clibpoard
set clipboard=unnamedplus


"Mermaid filetype
autocmd BufNewFile,BufReadPost *.mmd,*.mermaid set filetype=mermaid

"Mermaid auto build
"Initial auto state (false)
let b:MermaidBuild = 0
"Register build command
autocmd FileType mermaid command MmdBuild silent exec "!mmdc -i % -o /tmp/%.pdf"
"Register open command
autocmd FileType mermaid command MmdOpen silent exec "!xdg-open /tmp/%.pdf"
"Register toggle command
autocmd FileType mermaid command MmdBuildToggle :call ToggleMmdcBuild()
"Automatically call auto build when writing mermaid file
autocmd FileType mermaid autocmd BufWritePost * :call MmdcBuildAuto()

function! MmdcBuildAuto()
    if b:MermaidBuild
        MmdBuild
    endif
endfunction

function! ToggleMmdcBuild()
    if b:MermaidBuild
        let b:MermaidBuild = 0
    else
        let b:MermaidBuild = 1
    endif
endfunction
         
"Options when composing mutt mail
autocmd FileType mail set noautoindent wrapmargin=0 textwidth=0 linebreak wrap

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

"Go to definition binding
map <C-l> :ALEGoToDefinition<CR>
"Enable completions
let g:ale_completion_enabled = 1
"C
let g:ale_linters = {"c": ["clang"]}
let g:ale_c_parse_makefile = 1
"Rust
let g:ale_linters = {'rust': ['analyzer', 'cargo']}
let g:ale_fixers = {'rust': ['rustfmt']}
let g:ale_rust_analyzer_config = {'checkOnSave': {'command': 'clippy', 'enable': v:true}}
"Nerdtree binding
map <Leader><Tab> :NERDTreeToggle<CR>

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

"============================="
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
