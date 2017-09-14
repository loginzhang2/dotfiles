"
"     /)          /)       ,                  /) ,
"  _ (/      __  (/              _  _/_     _(/    ___
" (__/ )_(_(_/ (_/ )_(_(__(_ o  /_)_(__(_(_(_(__(_(_)
"
" @description: neovim 前端开发配置
" @author: Ren Chunhui
"
" Copyright (c) 2017 Ren Chunhui. All rights reserved.
"

" 插件管理  -----------------------------------------------------------------------{{{
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'
Plug 'Raimondi/delimitMate'                                       " 自动关闭括号
Plug 'vim-airline/vim-airline'                                    " 状态栏
Plug 'editorconfig/editorconfig-vim'                              " EditorConfig
Plug ''tmux-plugins/vim-tmux'
call plug#end()
" }}}

" 系统设置  -----------------------------------------------------------------------{{{
syntax enable                                                     " 开启语法高亮功能
syntax on                                                         " 允许用指定语法高亮配色方案替换默认方案
" }}}

" 快捷键设置  ----------------------------------------------------------------------{{{
 let mapleader=","                                                  " 定义快捷键前缀

 " NERDTree
 nmap <Leader>fl :NERDTreeToggle<CR>                                " 打开目录树
" }}}
