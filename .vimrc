set nocompatible              " be iMproved, required
filetype off

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Format git pulls to use SSH instead of HTTPS
let g:plug_url_format = 'git@github.com:%s.git'

" Let the plugins begin!
Plug 'dart-lang/dart-vim-plugin'
"Plug 'dracula/vim', {'as': 'dracula'}
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'hashivim/vim-terraform'
Plug 'LokiChaos/vim-tintin'
Plug 'nvie/vim-flake8'
Plug 'powerline/powerline'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'

" You should only use one of: Ale, CoC, or YouCompleteMe
Plug 'ycm-core/YouCompleteMe', {'do': './install.py --all'}
" CoC handles its own LSP adapters :CocInstall coc-flutter coc-go coc-jedi
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'w0rp/ale'           (pacman -S vim-ale)

" Handled by OS
" Plug 'pearofducks/ansible-vim' (AUR ansible-vim-get)
" Plug 'vim-syntastic/syntastic' (pacman -S vim-syntastic)
" Plug 'tpope/vim-fugitive'      (pacman -S vim-fugitive)

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
noremap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" YouCompleteMe stuffs
let g:ycm_autoclose_preview_window_after_insertion = 1
nmap <C-d> :YcmCompleter GoToDefinition<CR>
nmap <C-k> :YcmCompleter GetDoc<CR>

" coc shortcuts
"nmap <C-d> :call CocAction('jumpDefinition', 'drop')

" ale stuff
"packloadall
"silent! helptags ALL

" powerline stuff
let g:powerline_pycmd="py3"
set laststatus=2

" General Vim settings
colo industry
syntax enable
set number
set encoding=utf8
set smarttab
"set background=dark

" Tab settings for file types that don't want to play nice
autocmd FileType dart setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType make setlocal ts=2 sw=2 noexpandtab
autocmd FileType go setlocal ts=2 sw=2 noexpandtab
autocmd FileType json,toml,yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType jinja,jinja2 setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType lpc setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType tt setlocal ts=4 sts=4 sw=4 expandtab

" Increase buffer size
set viminfo='20,<1000,s1000

" Ignoring Python 80 rule
let g:pep8_ignore="E501"

" Foldlevel is annoying...
set foldlevelstart=99

" SUPER ANNOYING tabbing on colon fix (sorta)
autocmd FileType * setlocal indentkeys-=<:>
autocmd FileType * setlocal indentkeys-=:
autocmd FileType yaml.ansible setlocal indentkeys-=*<Return>
