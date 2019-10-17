" 关闭兼容vi模式
set nocompatible

filetype on
let mapleader=","

"==============================================================================
" 插件配置 
"==============================================================================

" 插件开始的位置
call plug#begin('~/.vim/plugged')

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

" golang插件
Plug 'fatih/vim-go'

" 全局搜索ag
Plug 'dyng/ctrlsf.vim'

" git 每行提交
Plug 'zivyangll/git-blame.vim'

call plug#end()


" nerdtree 配置
map <C-n> :NERDTreeToggle<CR>

" molokai背景色配置
let g:rehash256 = 1
let g:molokai_original = 1

" vim-powerline配置
set laststatus=2

" tagbar配置
nmap <C-m> :TagbarToggle<CR>


" vim-go配置
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
" let g:go_metalinter_autosave=1
" let g:go_metalinter_command = "golangci-lint"
" let g:go_metalinter_autosave_enabled = ['vet']
" let g:go_metalinter_deadline = "5s"


" 个性化映射
nmap <C-j> 10j
nmap <C-k> 10k
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>n :set number<CR> :set relativenumber<CR>
nmap <leader>m :set nonumber<CR> :set norelativenumber<CR>
inoremap <esc> <esc><esc>
" golang 测试
au FileType go nmap <leader>r <Plug>(go-run)
" golang增加标签
nmap <leader>t :GoAddTags 
" 文件跳转
nmap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 文件ag搜索
nmap <leader>f :CtrlSF 
" 文件git行提交
nmap <Leader>s :<C-u>call gitblame#echo()<CR>

" 常规配置
syntax enable
syntax on               " 开启语法高亮
colorscheme molokai     " 设置颜色类型
set number              " 设置行号
set relativenumber      " 相对行号
set noic                " 大小写敏感
set tabstop=4           " 设置table长度
set shiftwidth=4        " 同上
set hlsearch            " 高亮搜索项
set cursorline          " 突出显示当前行
set cursorcolumn        " 突出显示当前列
set incsearch           " 开启实时搜索
set ignorecase          " 搜索时大小写不敏感
set colorcolumn=120     " 设置超过79长度提示
set autowrite           " 自动保存
set encoding=utf-8      " 编码方式
set nowrap              " 不折行
set noswapfile          " 不要文件缓存
set nobackup            " 不要备份
set foldenable          " 开始折叠
set foldmethod=indent   " 设置语法折叠
set foldlevelstart=99   " 打开文件是默认不折叠代码

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p
