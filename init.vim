" Color scheme
hi! Normal ctermbg=NONE guibg=NONE
highlight clear LineNr

" Spaces are better than tabs
set tabstop=4                   " a tab is four spaces
set shiftwidth=4                " number of spaces to use for autoindenting
set expandtab

" Basic stuff
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set number relativenumber       " always show hybrid line numbers
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo

" Plugins
call plug#begin('~/.local/share/plugged')
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Open at the last known position
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Golang
let g:go_fmt_command="gopls"
let g:go_gopls_gofumpt=1
let g:go_highlight_build_constraints = 1

