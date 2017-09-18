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

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  augroup plug_install
    autocmd VimEnter * PlugInstall
  augroup END
endif

" 插件管理  -----------------------------------------------------------------------{{{
call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }     " 补全插件
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'
Plug 'Raimondi/delimitMate'                                       " 自动关闭括号
Plug 'vim-airline/vim-airline'                                    " 状态栏
Plug 'editorconfig/editorconfig-vim'                              " EditorConfig
Plug 'tmux-plugins/vim-tmux'

Plug 'othree/html5.vim'
"Plug 'cakebaker/scss-syntax.vim'
"Plug 'lilydjwg/colorizer', { 'for': ['css', 'sass', 'scss', 'html', 'javascript', 'javascript.jsx'] }

"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
"Plug 'sheerun/vim-json'
"Plug 'heavenshell/vim-jsdoc', { 'on': ['JsDoc'] }
"Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'tomasr/molokai'
Plug 'dracula/vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()
" }}}

" 系统设置  -----------------------------------------------------------------------{{{
syntax enable                                                     " 开启语法高亮功能
syntax on                                                         " 允许用指定语法高亮配色方案替换默认方案

set guifont=<FONT_NAME>:h<FONT_SIZE>
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set mouse=a                                                       " 启用鼠标
set termguicolors
set encoding=utf-8                                                " 编码
set shell=/bin/zsh                                                " 将shell设置为zsh
set textwidth=80                                                  " 文本宽度
set wildmenu                                                      " vim 自身命令行模式智能补全
set laststatus=2                                                  " 总是显示状态栏

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

set background=dark
colorscheme molokai                                               " 主题设置
" }}}



" Neovim 具体设置  ----------------------------------------------------------------{{{
if has('nvim')
  let g:loaded_python_provider=1                                  " 禁用 python2
  let g:python_host_skip_check=1                                  " 跳过 python2 检查
  let g:python3_host_prog='/usr/local/bin/python3'                " 设置 python3
  set inccommand=nosplit                                          " 替代品和其他类似命令的实时预览
endif
" }}}



" 快捷键设置  ----------------------------------------------------------------------{{{
let mapleader=","                                                  " 定义快捷键前缀

" NERDTree
nmap <Leader>fl :NERDTreeToggle<CR>                                " 打开目录树
" }}}



" 插件设置  -----------------------------------------------------------------------{{{

" molokai {{{
" ------------------------------
let g:molokai_original = 1
let g:rehash256 = 1
" }}}

" vim-airline {{{
" ------------------------------
let g:airline#extensions#tabline#enabled = 1                        " 启用扩展
" }}}

" devicons {{{
" ------------------------------
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
" }}}

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


" 自动补全  -----------------------------------------------------------------------{{{

" }}}

