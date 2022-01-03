"==========================="
"=======Basic setting======="
"==========================="
set foldlevelstart=99
set norelativenumber
set relativenumber
set clipboard=unnamedplus
set cursorline
set wrap
set showcmd
set wildmenu
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
" set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set virtualedit=all   " 允许光标出现在最后一个字符的后面
filetype indent on       " 自适应不同语言的智能缩进
set smarttab             " 在行和段开始处使用制表符
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
set mouse=a
" let netrw_i='T'

set scrolloff=8
set sidescrolloff=8

set viminfo='1000
set pastetoggle=<F2>
set nu
set hls
set ignorecase
set smartcase


filetype on
filetype indent on
set autoindent
filetype plugin on
filetype plugin indent on
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h11
set termguicolors
let $COLORTERM="truecolor"
