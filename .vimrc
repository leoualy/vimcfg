let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
" 关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_key_invoke_completion='<C-Space>'
call pathogen#infect()
set ff=unix
" 显示行号
set number
" 显示标尺
set ruler
" 历史记录
set history=1000
" 输入的命令显示出来
set showcmd
"设置背景色
set bg=light 
" 语法高亮显示
syntax on
" 去掉有关vi一致性模式,解决退格键不能使用的问题
set nocompatible
set backspace=indent,eol,start
set backspace=2
" 用空格代替tab
set expandtab
" 设置显示制表符的空格字符个数，默认为8，改为4
set tabstop=4
" 统一缩进为4，方便在开启了et后使用退格键，每次退格删除X个空格
set softtabstop=4
" 设定自动缩进为4个字符，程序中自动缩进所使用的空白长度
set shiftwidth=4
" 显示匹配的括号
set showmatch
" C风格缩进
set cindent
set completeopt=longest,menu

" 配置vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin on 
filetype plugin indent on
"ctags 设置
set tags=~/include/tags


map <C-n> :NERDTreeToggle<CR>
vmap "+y :w!pbcopy<CR><CR>
nmap "+p :r!pbpaste<CR><CR>
"vim-go
