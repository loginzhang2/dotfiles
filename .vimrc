"
"     /)          /)       ,                  /) ,    
"  _ (/      __  (/              _  _/_     _(/    ___
" (__/ )_(_(_/ (_/ )_(_(__(_ o  /_)_(__(_(_(_(__(_(_) 
"
" @description: Vim 前端开发配置
" @author: Ren Chunhui
"
" Copyright (c) 2017 Ren Chunhui. All rights reserved.
"



" 安装 Vundle 管理工具  -------------------------------------------------------------{{{
 set number                                                         " 开启行号显示        
 set nocompatible                                                   " 关闭兼容模式
 filetype off			                                            " required

 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 Plugin 'gmarik/Vundle.vim'
 Plugin 'tomasr/molokai'                                            " molokai 主题
 Plugin 'Valloric/YouCompleteMe'                                    " 自动补全
 Plugin 'marijnh/tern_for_vim'                                      " ------
 Plugin 'majutsushi/tagbar'
 Plugin 'Lokaltog/vim-powerline'                                    " 状态栏
 Plugin 'vim-airline/vim-airline'                                   " 状态栏美化
 Plugin 'scrooloose/nerdtree'                                       " 目录树
 Plugin 'Xuyuanp/nerdtree-git-plugin'                               " git 插件
 Plugin 'ryanoasis/vim-devicons'                                    " 图标 icon
 Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'                   " 图标自定义颜色
 Plugin 'honza/vim-snippets'                                        " 代码片段

 Plugin 'posva/vim-vue'                                             " Vue

 call vundle#end()
 filetype plugin indent on 
" }}}    



" 系统设置  -----------------------------------------------------------------------{{{
 syntax enable                                                      " 开启语法高亮功能
 syntax on                                                          " 允许用指定语法高亮配色方案替换默认方案
   
 filetype indent on                                                 " 自适应不同语言的智能缩进

 set guifont=<FONT_NAME>:h<FONT_SIZE>
 set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
 set mouse=a                                                        " 启用鼠标
 set encoding=utf8                                                  " 编码
 set termguicolors
 set wildmenu                                                       " vim 自身命令行模式智能补全
 set laststatus=2                                                   " 总是显示状态栏
 set ruler                                                          " 显示光标当前位置
 set foldmethod=syntax                                              " 代码折叠

 " 禁止显示滚动条
 set guioptions-=l
 set guioptions-=L
 set guioptions-=r
 set guioptions-=R

 " 禁止显示菜单和工具条
 set guioptions-=m
 set guioptions-=T

 " 主题
 set background=dark
 colorscheme molokai
" }}}



" 快捷键设置  ----------------------------------------------------------------------{{{
 let mapleader=","                                                  " 定义快捷键前缀

 " NERDTree
 nmap <Leader>fl :NERDTreeToggle<CR>                                " 打开目录树
 " Tagbar
 nmap <F8> :TagbarToggle<CR>
" }}}



" 插件设置  -----------------------------------------------------------------------{{{
 " NERDTree
 let NERDTreeShowHidden=1                                           " 显示隐藏文件
 let NERDTreeAutoDeleteBuffer=1                                     " 删除文件时自动删除文件对应 buffer

 " Powerline
 let g:Powerline_colorscheme='solarized256'                         " 设置状态栏主题风格
 let g:airline_powerline_fonts = 1

 " molokai
 let g:molokai_original = 1
 let g:rehash256 = 1
 
 " devicons
 "let g:WebDevIconsUnicodeDecorateFolderNodes = 1
 let g:NERDTreeDirArrowExpandable = ''
 let g:NERDTreeDirArrowCollapsible = ''
 "let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
 "let g:DevIconsDefaultFolderOpenSymbol = ''

 let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} 
 let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
 let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
 let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
" }}}



" 代码折叠  -----------------------------------------------------------------------{{{
 " manual       手工定义折叠
 " indent       用缩进表示折叠
 " expr         用表达式来定义折叠
 " syntax       用语法高亮表示折叠
 " diff         对没有更改的文本进行折叠
 " marker       用标志折叠

 autocmd FileType vim setlocal fdc=1
 set foldlevel=99

 autocmd FileType vim setlocal foldmethod=marker
 autocmd FileType vim setlocal foldlevel=0

 autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99

 autocmd FileType css,scss,json setlocal foldmethod=marker
 autocmd FileType css,scss,json setlocal foldmarker={,}

 autocmd FileType javascript,typescript,json setl foldmethod=syntax
" }}}



" 代码片段  -----------------------------------------------------------------------{{{
    
" }}}
