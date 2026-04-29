let mapleader=" "
set nocompatible

syntax on
set mouse=a
set number
set wrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set completeopt=menu,menuone
set nobackup
set noswapfile
set wildmenu
set hlsearch
set ignorecase
set smartcase

" Movement: i=up  k=down  j=left  l=right
noremap k j
noremap i k
noremap j h
noremap K 5j
noremap I 5k

" Insert mode (h replaces i)
noremap h i
noremap H I

" Search navigation
noremap <Leader>- Nzz
noremap <Leader>= nzz
noremap <Leader><CR> :noh<CR>

" Window splits
noremap <Leader>n :vsplit<CR>
noremap <Leader>N :split<CR>

" Window navigation (remapped directions)
noremap <Leader>j <C-w>h
noremap <Leader>l <C-w>l
noremap <Leader>k <C-w>j
noremap <Leader>i <C-w>k

" Window resize with arrow keys
noremap <DOWN>  :res +5<CR>
noremap <UP>    :res -5<CR>
noremap <LEFT>  :vertical resize +5<CR>
noremap <RIGHT> :vertical resize -5<CR>

" Tab management
noremap mm :tabe<CR>
noremap [ :-tabnext<CR>
noremap ] :+tabnext<CR>

" ── Sane defaults (from Arch /etc/vimrc) ──────────────────────────────────────
if &compatible
  set nocompatible
endif

set backspace=indent,eol,start
set ruler
set suffixes+=.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set suffixes-=.h
set suffixes-=.obj

if exists('$XDG_CACHE_HOME')
  let &g:directory=$XDG_CACHE_HOME
else
  let &g:directory=$HOME . '/.cache'
endif
let &g:undodir=&g:directory . '/vim/undo//'
let &g:backupdir=&g:directory . '/vim/backup//'
let &g:directory.='/vim/swap//'
if ! isdirectory(expand(&g:directory))
  silent! call mkdir(expand(&g:directory), 'p', 0700)
endif
if ! isdirectory(expand(&g:backupdir))
  silent! call mkdir(expand(&g:backupdir), 'p', 0700)
endif
if ! isdirectory(expand(&g:undodir))
  silent! call mkdir(expand(&g:undodir), 'p', 0700)
endif
