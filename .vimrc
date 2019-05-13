set nocompatible              " be iMproved, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Let the plugins begin!
Plugin 'neoclide/coc.nvim.git'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go.git'
Plugin 'udalov/kotlin-vim.git'
Plugin 'hashivim/vim-terraform.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" :PluginUpdate     - updates configured plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set YCM to autoclose preview pane when done
let g:ycm_autoclose_preview_window_after_completion = 1

" Nerdtree stuffs
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Turn on syntax highlighting
syntax enable

" Show line number
set number

" Set UTF8 as standard encoding
set encoding=utf8

" Use spaces instead of tabs, enable smart tabbing
set expandtab
set smarttab

" 1 tab == 4 spaces
"set shiftwidth=4
"set tabstop=4

" Makefile exception
"autocmd FileType make set noexpandtab
"autocmd FileType make set tabstop=8

" Increase buffer size
set viminfo='20,<1000,s1000

" Forcing python 3 for now
let g:ycm_python_binary_path = "/usr/bin/python3"

" Ignoring 80 rule
let g:pep8_ignore="E501"

" Foldlevel is annoying...
set foldlevelstart=99

" SUPER ANNOYING tabbing on colon fix
autocmd FileType python setlocal indentkeys-=<:>
autocmd FileType python setlocal indentkeys-=:
