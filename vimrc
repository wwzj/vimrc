" 关闭兼容vi模式
set nocompatible

filetype on
let mapleader=","


" =============================================插件配置=============================================================
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

" py 代码检查
Plug 'w0rp/ale'

" py 格式化
Plug 'Chiel92/vim-autoformat'

call plug#end()

" nerdtree 配置
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<cr>
let NERDTreeShowHidden=1

" molokai背景色配置
let g:rehash256 = 1
let g:molokai_original = 1

" vim-powerline配置
set laststatus=2

" tagbar配置
nmap <C-m> :TagbarToggle<CR>




" =============================================golang 配置=============================================================
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
let g:go_version_warning = 0




" ==============================================个性化映射=============================================================
nmap <C-j> 10j
nmap <C-k> 10k
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>n :set number<CR> :set relativenumber<CR>
nmap <leader>m :set nonumber<CR> :set norelativenumber<CR>

" golang增加标签
nmap <leader>t :GoAddTags 
" 文件跳转
nmap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 文件ag搜索
nmap <leader>f :CtrlSF 
" 打开shell终端
nmap <leader><leader> :term<CR>
" 文件git行提交
nmap <leader>s :<C-u>call gitblame#echo()<CR>
" 输入当前时间
nmap <leader>x a<C-r>=strftime("%Y-%m-%d %H:%M:%S")<CR><ESC>

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



" =============================================python 配置=============================================================
" ale
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

" python vim-autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

let python_highlight_all=1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99

" 保存时自动格式化
au BufWrite *.py :Autoformat





" ==============================================自动执行=============================================================
nmap <leader>r  :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
        if &filetype == 'c'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'cpp'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'sh'
                :!time bash %
        elseif &filetype == 'python'
                exec "!python %"
        elseif &filetype == 'html'
                exec "!firefox % &"
        elseif &filetype == 'go'
                exec "!go run %"
        elseif &filetype == 'php'
                exec "!php %"
        endif
endfunc

