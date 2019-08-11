"==============================================================================
" vim 内置配置 
"==============================================================================

" 设置 vimrc 修改保存后立刻生效，不用在重新打开
" 建议配置完成后将这个关闭，否则配置多了之后会很卡
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 关闭兼容模式
set nocompatible

colorscheme molokai     " 设置颜色类型
set number              " 显示行号
set hlsearch            " 高亮搜索项"
set cursorline          " 突出显示当前行"
set cursorcolumn        " 突出显示当前列"

" tab 缩进
set tabstop=4 " 设置Tab长度为4空格
set shiftwidth=4 " 设置自动缩进长度为4空格
set autoindent " 继承前一行的缩进方式，适用于多行注释

" 定义快捷键的前缀，即<Leader>
let mapleader=";" 

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p

" 开启实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase
syntax enable
syntax on                    " 开启文件类型侦测
filetype plugin indent on    " 启用自动补全

" 退出插入模式指定类型的文件自动保存
au InsertLeave *.go,*.sh,*.php write


" ==== 个性化配置 ====
nmap <C-j> 10j
nmap <C-k> 10k
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
inoremap <esc> <esc><esc>

"==============================================================================
" 插件配置 
"==============================================================================

" 插件开始的位置
call plug#begin('~/.vim/plugged')

" 用来提供一个导航目录的侧边栏
Plug 'scrooloose/nerdtree'

" 文件搜索
Plug 'kien/ctrlp.vim'

" 状态栏
Plug 'vim-airline/vim-airline'

" 文件大纲
Plug 'majutsushi/tagbar'

" 代码自动完成
Plug 'Valloric/YouCompleteMe'

" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

" go 主要插件
Plug 'fatih/vim-go', { 'tag': '*' }

" 可以快速对齐的插件
" Plug 'junegunn/vim-easy-align'

" markdown 插件
" Plug 'iamcco/mathjax-support-for-mkdp'
" Plug 'iamcco/markdown-preview.vim'

" 可以使 nerdtree Tab 标签的名称更友好些
" Plug 'jistr/vim-nerdtree-tabs'

" 可以在导航目录中看到 git 版本信息
" Plug 'Xuyuanp/nerdtree-git-plugin'


" 有道词典在线翻译
" Plug 'ianva/vim-youdao-translater'

" 可以在文档中显示 git 信息
" Plug 'airblade/vim-gitgutter'

" 下面两个插件要配合使用，可以自动生成代码块
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" 配色方案
" colorscheme neodark
" Plug 'KeitaNakamura/neodark.vim'
" colorscheme monokai
" Plug 'crusoexia/vim-monokai'
" colorscheme github 
" Plug 'acarapetis/vim-colors-github'
" colorscheme one 
" Plug 'rakr/vim-one'
"
" go 中的代码追踪，输入 gd 就可以自动跳转
" Plug 'dgryski/vim-godef'

" 插件结束的位置，插件全部放在此行上面
call plug#end()

"==============================================================================
" 主题配色 
"==============================================================================

" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
" 配色方案, 可以从上面插件安装中的选择一个使用 
colorscheme molokai " 主题
set background=dark " 主题背景 dark-深色; light-浅色

"==============================================================================
" vim-go 插件
"==============================================================================
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2


"==============================================================================
"  其他插件配置
"==============================================================================

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

