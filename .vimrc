set nocompatible              " be iMproved, required
filetype off

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Format git pulls to use SSH instead of HTTPS
let g:plug_url_format = 'git@github.com:%s.git'

" Let the plugins begin!
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'fatih/vim-go'
Plug 'udalov/kotlin-vim'
Plug 'hashivim/vim-terraform'

" Plugins handled by OS
" Plugin 'pearofducks/ansible-vim'
" Plugin 'raimondi/delimitmate'
" Plugin 'scrooloose/nerdtree'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call plug#end()            " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
filetype plugin indent on    " required
"
" Brief help on vim-plug
" :PlugInstall [name ...] [# threads]   " Installs plugins
" :PlugUpdate [name ...] [# threads]    " Install or update plugins
" :PlugClean[!]                         " Remove unused directories (bang is without prompts)
" :PlugUpgrade                          " Upgrades vim-plug
" :PlugStatus                           " Check the status of plugins
" :PlugDiff                             " Examines diff between previous and pending changes
" :PlugSnapshot[!] [output path]        " Generate script for restoring the current snapshot of plugins

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
" set expandtab
set smarttab

" 1 tab == 4 spaces
"set shiftwidth=4
"set tabstop=4

" Makefile exception
"autocmd FileType make set noexpandtab
"autocmd FileType make set tabstop=8

" Increase buffer size
set viminfo='20,<1000,s1000

" Ignoring 80 rule
let g:pep8_ignore="E501"

" Foldlevel is annoying...
set foldlevelstart=99

" SUPER ANNOYING tabbing on colon fix (sorta)
autocmd FileType python setlocal indentkeys-=<:>
autocmd FileType python setlocal indentkeys-=:
