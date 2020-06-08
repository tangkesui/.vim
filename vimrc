let mapleader=" "

" 改变键位
noremap k j
noremap i k
noremap j h
noremap \ i
noremap s i
noremap S I
" 语法高亮
syntax on 
" Tab键的宽度为4
set tabstop=4
" 统一缩进为4
set softtabstop=4
" 自动缩进
set autoindent
" 代码补全
set completeopt=preview,menu
" 不需要备份
set nobackup
" 禁止生成临时文件
set noswapfile
" 显示行号
set number
set wrap
set cursorline
set wrap
set wildmenu
set hlsearch
set ignorecase
set smartcase
noremap - Nzz
noremap = nzz
noremap <LEADER><CR> :noh<CR> 
noremap <LEADER>n :vsplit<CR> 
noremap <LEADER>N :split<CR>
noremap <LEADER>j <C-w>h
noremap <LEADER>l <C-w>l
noremap <LEADER>k <C-w>j
noremap <LEADER>i <C-w>k

noremap <UP> :res +5<CR>
noremap <DOWN> :res -5<CR>
noremap <LEFT> :vertical resize +5<CR>
noremap <RIGHT> :vertical resize -5<CR>
noremap t :tabe<CR>
noremap [ :-tabnext<CR>
noremap ] :+tabnext<CR>

" vim-plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')


Plug 'Valloric/YouCompleteMe'

" Initialize plugin system
call plug#end()
