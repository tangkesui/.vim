" Portable, plugin-free Vim configuration.
" Mirrors the editing habits from ~/.config/nvim without requiring Neovim.

set nocompatible
let mapleader = " "

syntax enable
filetype plugin indent on

set mouse=a
set number
set wrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set hlsearch
set ignorecase
set smartcase
set wildmenu
set completeopt=menu,menuone,noselect
set autoread
set nobackup
set noswapfile
set backspace=indent,eol,start
set ruler

" Use the system clipboard when this Vim build provides one.
if has('unnamedplus')
  set clipboard=unnamedplus
elseif has('clipboard')
  set clipboard=unnamed
endif

" Movement: i=up, k=down, j=left, l=right.
nnoremap i k
xnoremap i k
onoremap i k
nnoremap k j
xnoremap k j
onoremap k j
nnoremap j h
xnoremap j h
onoremap j h

" Insert mode: h replaces the original i key.
nnoremap h i
nnoremap H I
nnoremap I <Nop>

" Search and reload.
nnoremap <silent> <Leader>- Nzz
xnoremap <silent> <Leader>- Nzz
nnoremap <silent> <Leader>= nzz
xnoremap <silent> <Leader>= nzz
nnoremap <silent> <Leader>r :edit<CR>
nnoremap <silent> <Leader><CR> :nohlsearch<CR>

" Five-line movement, centered after each jump.
nnoremap <silent> <M-i> 5kzz
nnoremap <silent> <M-k> 5jzz
nnoremap <silent> <Up> 5kzz
nnoremap <silent> <Down> 5jzz

" Open a new tab. Use Vim's built-in gt/gT to switch tabs.
nnoremap <silent> mm :tabedit<CR>
