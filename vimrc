set nocompatible

"Vundle

"VUNDLE FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/bin/bash\ -l
endif

"Vundle Main
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tikhomirov/vim-glsl'
Plugin 'dag/vim2hs'
" Plugin 'fountain.vim'
Plugin 'mattn/emmet-vim'
Plugin 'sickill/vim-monokai'
Plugin 'eagletmt/neco-ghc'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'godlygeek/tabular'
Plugin 'shougo/vimproc.vim'
Plugin 'aperezdc/vim-template'

call vundle#end()
filetype plugin indent on

"My Config
syntax on
set number
set backspace=indent,eol,start
let g:haskell_conceal_wide = 1
let g:templates_directory = '~/.vim/templates/'

"Formatting stuff

set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent


"Stuff for mvim.
if has("gui_running")
    set gfn=Monaco:h14
    colorscheme Monokai
endif
