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

" 智能补全
Plugin 'zxqfl/tabnine-vim'

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


" 个性化映射


set number              " 显示行号
syntax on               " 开启语法高亮
colorscheme molokai     " 设置颜色类型
set tabstop=4           " 设置table长度"
set shiftwidth=4        " 同上"
set hlsearch            "高亮搜索项"
set cursorline          "突出显示当前行"
set cursorcolumn        "突出显示当前列"
