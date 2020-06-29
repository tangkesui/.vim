let mapleader=" "



" 改变键位
noremap k j
noremap i k
noremap j h
noremap \ i
noremap s i
noremap S I
noremap K 5j
noremap I 5k
" 语法高亮
syntax on 
" Tab键的宽度为2
set tabstop=2
" 统一缩进为2
set softtabstop=2
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

noremap <DOWN> :res +5<CR>
noremap <UP> :res -5<CR>
noremap <LEFT> :vertical resize +5<CR>
noremap <RIGHT> :vertical resize -5<CR>
noremap	mm :tabe<CR>
noremap [ :-tabnext<CR>
noremap ] :+tabnext<CR>

" NERDTree
let NERDTreeMapOpenInTab = "t"
let NERDTreeMapOpenSplit = ""

noremap tt :NERDTreeToggle<CR>





" vim-plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'dense-analysis/ale'



" Initialize plugin system
call plug#end()





" Compatible with ranger 1.4.2 through 1.7.*
"
" Add ranger as a file chooser in vim
"
" If you add this code to the .vimrc, ranger can be started using the command
" ":RangerChooser" or the keybinding "<leader>r".  Once you select one or more
" files, press enter and ranger will quit again and vim will open the selected
" files.

function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    if has("gui_running")
        exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
    else
        exec 'silent !ranger --choosefiles=' . shellescape(temp)
    endif
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>
