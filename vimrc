" 关闭兼容vi模式
set nocompatible

" Plugin 调用开始
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manage Vundle 需要手动安装到~/.vim/bundle/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" 目录树
Plugin 'scrooloose/nerdtree'

" 文件搜索
Plugin 'kien/ctrlp.vim'

" 状态栏
Plugin 'Lokaltog/vim-powerline'

" 文件大纲
Plugin 'majutsushi/tagbar'

" 代码补全
Plugin 'Valloric/YouCompleteMe'

" 人工智能代码补全
" Plugin 'zxqfl/tabnine-vim'

" golang插件
Plugin 'fatih/vim-go'

" Plugin 调用结束
call vundle#end()
filetype plugin indent on



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
let g:go_fmt_command = "goimports"


" 个性化映射
let mapleader=","
nmap <C-j> 10j
nmap <C-k> 10k
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

" golang 命令map
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)


" 常规配置
set number              " 显示行号
syntax on               " 开启语法高亮
colorscheme molokai     " 设置颜色类型
set tabstop=4           " 设置table长度"
set shiftwidth=4        " 同上"
set hlsearch            " 高亮搜索项"
set cursorline          " 突出显示当前行"
set cursorcolumn        " 突出显示当前列"

