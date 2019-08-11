" 关闭兼容vi模式
set nocompatible

filetype on

"==============================================================================
" 插件配置 
"==============================================================================

" 插件开始的位置
call plug#begin('~/.vim/plugged')

" 用来提供一个导航目录的侧边栏
Plug 'scrooloose/nerdtree'

" 目录树
Plug 'scrooloose/nerdtree'

" 文件搜索
Plug 'kien/ctrlp.vim'

" 状态栏
Plug 'Lokaltog/vim-powerline'

" 文件大纲
Plug 'majutsushi/tagbar'

" 代码补全
Plug 'Valloric/YouCompleteMe'

" 括号补全
Plug 'jiangmiao/auto-pairs'

" 人工智能代码补全
" Plug 'zxqfl/tabnine-vim'

" golang插件
Plug 'fatih/vim-go'

call plug#end()


" nerdtree 配置
map <C-n> :NERDTreeToggle<CR>

" molokai背景色配置
let g:rehash256 = 1
let g:molokai_original = 1

" vim-powerline配置
set laststatus=2

" tagbar配置
nmap <F8> :TagbarToggle<CR>

" vim-go配置
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>t <Plug>(go-test)
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_list_type = "quickfix"

" 高亮显示
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

" 保存时自动调用check
let g:go_metalinter_autosave=1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"


" 个性化映射
let mapleader=","
nmap <C-j> 10j
nmap <C-k> 10k
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
inoremap <esc> <esc><esc>

" tab 标签页切换快捷键
:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
:nn <Leader>7 7gt
:nn <Leader>8 8gt
:nn <Leader>9 8gt
:nn <Leader>0 :tablast<CR>


" 常规配置
syntax enable
syntax on               " 开启语法高亮
colorscheme molokai     " 设置颜色类型
set number              " 显示行号
set relativenumber      " 相对行号"
set tabstop=4           " 设置table长度"
set shiftwidth=4        " 同上"
set hlsearch            " 高亮搜索项"
set cursorline          " 突出显示当前行"
set cursorcolumn        " 突出显示当前列"
set incsearch           " 开启实时搜索
set ignorecase          " 搜索时大小写不敏感
set colorcolumn=120     " 设置超过79长度提示
set autowrite           " 自动保存
set encoding=utf-8
set noswapfile
set nobackup            " Don't create annoying backup files

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p
